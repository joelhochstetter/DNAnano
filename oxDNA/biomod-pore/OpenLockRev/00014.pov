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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.018639, 33.126041, 49.538029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139061, 33.231686, 49.171509>,  <40.211315, 33.295071, 48.951595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139061, 33.231686, 49.171509>,  <40.018639, 33.126041, 49.538029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139061, 33.231686, 49.171509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952882, -0.120777, 0.278263,
		-0.037176, -0.956901, -0.288025,
		0.301057, 0.264109, -0.916303,
		40.229378, 33.310917, 48.896618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551144, 32.734058, 49.379768>,  <40.018639, 33.126041, 49.538029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551144, 32.734058, 49.379768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600868, 33.048573, 49.137680>,  <40.630703, 33.237282, 48.992428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600868, 33.048573, 49.137680>,  <40.551144, 32.734058, 49.379768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600868, 33.048573, 49.137680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983412, -0.016431, 0.180643,
		0.132093, -0.617639, -0.775289,
		0.124311, 0.786290, -0.605223,
		40.638161, 33.284458, 48.956112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156990, 32.546562, 49.081776>,  <40.551144, 32.734058, 49.379768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156990, 32.546562, 49.081776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114902, 32.936810, 49.004730>,  <41.089649, 33.170959, 48.958504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114902, 32.936810, 49.004730>,  <41.156990, 32.546562, 49.081776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114902, 32.936810, 49.004730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992063, 0.116385, 0.047599,
		0.068856, -0.186080, -0.980119,
		-0.105214, 0.975617, -0.192617,
		41.083340, 33.229496, 48.946945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753326, 32.644329, 48.607128>,  <41.156990, 32.546562, 49.081776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753326, 32.644329, 48.607128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618172, 32.992416, 48.750549>,  <41.537079, 33.201267, 48.836601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618172, 32.992416, 48.750549>,  <41.753326, 32.644329, 48.607128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618172, 32.992416, 48.750549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925708, 0.376076, -0.040400,
		-0.170001, 0.318267, -0.932634,
		-0.337883, 0.870214, 0.358555,
		41.516808, 33.253479, 48.858116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143364, 33.152481, 48.277805>,  <41.753326, 32.644329, 48.607128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143364, 33.152481, 48.277805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013100, 33.348701, 48.601112>,  <41.934940, 33.466434, 48.795097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013100, 33.348701, 48.601112>,  <42.143364, 33.152481, 48.277805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013100, 33.348701, 48.601112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931319, 0.313868, 0.184750,
		-0.163061, 0.812924, -0.559075,
		-0.325663, 0.490552, 0.808271,
		41.915401, 33.495869, 48.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633175, 33.686600, 48.337402>,  <42.143364, 33.152481, 48.277805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633175, 33.686600, 48.337402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454487, 33.686352, 48.695271>,  <42.347275, 33.686203, 48.909992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454487, 33.686352, 48.695271>,  <42.633175, 33.686600, 48.337402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454487, 33.686352, 48.695271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846269, 0.324165, 0.422782,
		-0.290285, 0.946000, -0.144285,
		-0.446724, -0.000624, 0.894671,
		42.320469, 33.686165, 48.963673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868469, 34.333393, 48.722359>,  <42.633175, 33.686600, 48.337402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868469, 34.333393, 48.722359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742847, 34.099720, 49.021717>,  <42.667473, 33.959515, 49.201332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742847, 34.099720, 49.021717>,  <42.868469, 34.333393, 48.722359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742847, 34.099720, 49.021717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816199, 0.236528, 0.527137,
		-0.484961, 0.776393, 0.402526,
		-0.314057, -0.584182, 0.748398,
		42.648632, 33.924465, 49.246235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946751, 34.677544, 49.309978>,  <42.868469, 34.333393, 48.722359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946751, 34.677544, 49.309978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948257, 34.316380, 49.481907>,  <42.949162, 34.099682, 49.585064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948257, 34.316380, 49.481907>,  <42.946751, 34.677544, 49.309978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948257, 34.316380, 49.481907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844363, 0.233156, 0.482378,
		-0.535758, 0.361103, 0.763262,
		0.003771, -0.902908, 0.429817,
		42.949390, 34.045506, 49.610851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877384, 34.758427, 50.094273>,  <42.946751, 34.677544, 49.309978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877384, 34.758427, 50.094273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049313, 34.419147, 49.970455>,  <43.152470, 34.215580, 49.896164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049313, 34.419147, 49.970455>,  <42.877384, 34.758427, 50.094273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049313, 34.419147, 49.970455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809153, 0.209718, 0.548899,
		-0.400657, -0.486396, 0.776462,
		0.429820, -0.848197, -0.309543,
		43.178257, 34.164688, 49.877594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382080, 34.545769, 50.610424>,  <42.877384, 34.758427, 50.094273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382080, 34.545769, 50.610424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503368, 34.313694, 50.308048>,  <43.576141, 34.174450, 50.126625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503368, 34.313694, 50.308048>,  <43.382080, 34.545769, 50.610424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503368, 34.313694, 50.308048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937472, 0.039357, 0.345827,
		-0.170894, -0.813529, 0.555847,
		0.303217, -0.580191, -0.755935,
		43.594334, 34.139637, 50.081268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754711, 34.023708, 50.947475>,  <43.382080, 34.545769, 50.610424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754711, 34.023708, 50.947475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858070, 34.055607, 50.562378>,  <43.920086, 34.074745, 50.331322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858070, 34.055607, 50.562378>,  <43.754711, 34.023708, 50.947475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858070, 34.055607, 50.562378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964539, -0.076811, 0.252518,
		-0.053812, -0.993851, -0.096766,
		0.258398, 0.079746, -0.962741,
		43.935589, 34.079529, 50.273556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157917, 33.442799, 50.828911>,  <43.754711, 34.023708, 50.947475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157917, 33.442799, 50.828911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278492, 33.696678, 50.544292>,  <44.350838, 33.849007, 50.373520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278492, 33.696678, 50.544292>,  <44.157917, 33.442799, 50.828911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278492, 33.696678, 50.544292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952607, -0.232511, 0.196158,
		-0.040942, -0.736953, -0.674703,
		0.301435, 0.634696, -0.711546,
		44.368923, 33.887085, 50.330830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812160, 33.145500, 50.518414>,  <44.157917, 33.442799, 50.828911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812160, 33.145500, 50.518414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838417, 33.517872, 50.374710>,  <44.854172, 33.741295, 50.288486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838417, 33.517872, 50.374710>,  <44.812160, 33.145500, 50.518414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838417, 33.517872, 50.374710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990096, -0.015987, 0.139482,
		0.124103, -0.364861, -0.922754,
		0.065643, 0.930925, -0.359263,
		44.858109, 33.797150, 50.266930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490429, 33.215469, 50.288734>,  <44.812160, 33.145500, 50.518414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490429, 33.215469, 50.288734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373196, 33.597775, 50.298717>,  <45.302856, 33.827156, 50.304707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373196, 33.597775, 50.298717>,  <45.490429, 33.215469, 50.288734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373196, 33.597775, 50.298717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952171, 0.294141, -0.082768,
		-0.086447, -0.000498, -0.996256,
		-0.293081, 0.955762, 0.024953,
		45.285271, 33.884502, 50.306202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989101, 33.578365, 49.810928>,  <45.490429, 33.215469, 50.288734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989101, 33.578365, 49.810928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834934, 33.862732, 50.046234>,  <45.742435, 34.033352, 50.187416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834934, 33.862732, 50.046234>,  <45.989101, 33.578365, 49.810928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834934, 33.862732, 50.046234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920873, 0.255779, 0.294227,
		0.058706, 0.655115, -0.753245,
		-0.385417, 0.710916, 0.588262,
		45.719311, 34.076008, 50.222713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351212, 34.242264, 49.686119>,  <45.989101, 33.578365, 49.810928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351212, 34.242264, 49.686119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210918, 34.247688, 50.060669>,  <46.126743, 34.250942, 50.285400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210918, 34.247688, 50.060669>,  <46.351212, 34.242264, 49.686119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210918, 34.247688, 50.060669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898347, 0.287287, 0.332324,
		-0.264502, 0.957748, -0.112946,
		-0.350731, 0.013565, 0.936378,
		46.105698, 34.251759, 50.341583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830730, 34.791248, 49.982056>,  <46.351212, 34.242264, 49.686119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830730, 34.791248, 49.982056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661453, 34.622757, 50.302921>,  <46.559887, 34.521660, 50.495441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661453, 34.622757, 50.302921>,  <46.830730, 34.791248, 49.982056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661453, 34.622757, 50.302921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823321, 0.190799, 0.534545,
		-0.378220, 0.886656, 0.266065,
		-0.423192, -0.421232, 0.802167,
		46.534496, 34.496387, 50.543571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110790, 35.155788, 50.459400>,  <46.830730, 34.791248, 49.982056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110790, 35.155788, 50.459400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966732, 34.852047, 50.676170>,  <46.880299, 34.669804, 50.806232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966732, 34.852047, 50.676170>,  <47.110790, 35.155788, 50.459400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966732, 34.852047, 50.676170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783852, 0.068673, 0.617139,
		-0.505840, 0.647050, 0.570485,
		-0.360143, -0.759349, 0.541929,
		46.858688, 34.624241, 50.838749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231903, 35.400963, 51.183434>,  <47.110790, 35.155788, 50.459400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231903, 35.400963, 51.183434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192406, 35.003170, 51.197590>,  <47.168709, 34.764496, 51.206085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192406, 35.003170, 51.197590>,  <47.231903, 35.400963, 51.183434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192406, 35.003170, 51.197590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685414, -0.042184, 0.726931,
		-0.721427, 0.096040, 0.685798,
		-0.098745, -0.994483, 0.035394,
		47.162781, 34.704826, 51.208210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.443966, 35.207985, 51.755898>,  <47.231903, 35.400963, 51.183434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.443966, 35.207985, 51.755898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474323, 34.853008, 51.574047>,  <47.492538, 34.640022, 51.464935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474323, 34.853008, 51.574047>,  <47.443966, 35.207985, 51.755898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474323, 34.853008, 51.574047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832161, -0.194806, 0.519190,
		-0.549315, -0.417728, 0.723710,
		0.075897, -0.887442, -0.454627,
		47.497093, 34.586777, 51.437660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.632309, 34.828491, 52.328197>,  <47.443966, 35.207985, 51.755898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.632309, 34.828491, 52.328197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764256, 34.642319, 51.999668>,  <47.843422, 34.530617, 51.802551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764256, 34.642319, 51.999668>,  <47.632309, 34.828491, 52.328197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.764256, 34.642319, 51.999668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841896, -0.248565, 0.478985,
		-0.427085, -0.849465, 0.309852,
		0.329862, -0.465430, -0.821320,
		47.863213, 34.502689, 51.753273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.203009, 35.183041, 51.394436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.283848, 35.120468, 51.781151>,  <24.332352, 35.082924, 52.013180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.283848, 35.120468, 51.781151>,  <24.203009, 35.183041, 51.394436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283848, 35.120468, 51.781151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970782, -0.098409, -0.218854,
		0.129377, 0.982774, 0.131971,
		0.202097, -0.156429, 0.966792,
		24.344477, 35.073540, 52.071190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799910, 35.714790, 51.613903>,  <24.203009, 35.183041, 51.394436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799910, 35.714790, 51.613903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.794815, 35.419365, 51.883526>,  <24.791759, 35.242107, 52.045300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.794815, 35.419365, 51.883526>,  <24.799910, 35.714790, 51.613903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794815, 35.419365, 51.883526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999091, -0.036823, -0.021471,
		0.040679, 0.673175, 0.738363,
		-0.012735, -0.738566, 0.674061,
		24.790995, 35.197796, 52.085743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290043, 35.833363, 52.236633>,  <24.799910, 35.714790, 51.613903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290043, 35.833363, 52.236633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.249521, 35.435425, 52.235195>,  <25.225208, 35.196663, 52.234333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.249521, 35.435425, 52.235195>,  <25.290043, 35.833363, 52.236633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249521, 35.435425, 52.235195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992759, -0.100855, -0.065259,
		0.064560, -0.010184, 0.997862,
		-0.101304, -0.994849, -0.003599,
		25.219130, 35.136971, 52.234116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793650, 35.654808, 52.645840>,  <25.290043, 35.833363, 52.236633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793650, 35.654808, 52.645840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.700937, 35.294853, 52.498062>,  <25.645309, 35.078880, 52.409397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.700937, 35.294853, 52.498062>,  <25.793650, 35.654808, 52.645840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700937, 35.294853, 52.498062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922222, -0.324104, 0.210864,
		-0.309490, -0.291835, 0.905013,
		-0.231781, -0.899883, -0.369444,
		25.631403, 35.024887, 52.387230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348179, 35.143120, 52.927952>,  <25.793650, 35.654808, 52.645840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348179, 35.143120, 52.927952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.189571, 34.921764, 52.634956>,  <26.094406, 34.788952, 52.459160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.189571, 34.921764, 52.634956>,  <26.348179, 35.143120, 52.927952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189571, 34.921764, 52.634956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910381, -0.339795, -0.236106,
		-0.118236, -0.760461, 0.638529,
		-0.396519, -0.553388, -0.732485,
		26.070616, 34.755749, 52.415211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685947, 34.549862, 52.955128>,  <26.348179, 35.143120, 52.927952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685947, 34.549862, 52.955128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.575146, 34.568569, 52.571236>,  <26.508665, 34.579796, 52.340900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.575146, 34.568569, 52.571236>,  <26.685947, 34.549862, 52.955128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575146, 34.568569, 52.571236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927322, -0.248603, -0.279768,
		-0.251678, -0.967475, 0.025487,
		-0.277005, 0.046777, -0.959729,
		26.492044, 34.582600, 52.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223352, 34.143970, 52.695477>,  <26.685947, 34.549862, 52.955128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223352, 34.143970, 52.695477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.075603, 34.288521, 52.353020>,  <26.986954, 34.375252, 52.147545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.075603, 34.288521, 52.353020>,  <27.223352, 34.143970, 52.695477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075603, 34.288521, 52.353020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873057, -0.180643, -0.452922,
		-0.318330, -0.914755, -0.248775,
		-0.369374, 0.361373, -0.856138,
		26.964792, 34.396935, 52.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492088, 33.696220, 52.232803>,  <27.223352, 34.143970, 52.695477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492088, 33.696220, 52.232803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.393139, 34.026394, 52.029842>,  <27.333769, 34.224499, 51.908066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.393139, 34.026394, 52.029842>,  <27.492088, 33.696220, 52.232803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393139, 34.026394, 52.029842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820064, -0.100546, -0.563370,
		-0.516044, -0.555468, -0.652039,
		-0.247374, 0.825437, -0.507405,
		27.318926, 34.274025, 51.877621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496494, 33.528656, 51.615574>,  <27.492088, 33.696220, 52.232803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496494, 33.528656, 51.615574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.551540, 33.924713, 51.625927>,  <27.584568, 34.162350, 51.632137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.551540, 33.924713, 51.625927>,  <27.496494, 33.528656, 51.615574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551540, 33.924713, 51.625927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743920, -0.086070, -0.662703,
		-0.653946, 0.110454, -0.748435,
		0.137617, 0.990147, 0.025884,
		27.592825, 34.221756, 51.633694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728754, 33.678013, 50.983589>,  <27.496494, 33.528656, 51.615574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728754, 33.678013, 50.983589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.872969, 33.982597, 51.199066>,  <27.959497, 34.165348, 51.328350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.872969, 33.982597, 51.199066>,  <27.728754, 33.678013, 50.983589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872969, 33.982597, 51.199066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836772, -0.008885, -0.547479,
		-0.412099, 0.648147, -0.640375,
		0.360536, 0.761464, 0.538689,
		27.981129, 34.211037, 51.360672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032335, 34.187702, 50.431931>,  <27.728754, 33.678013, 50.983589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032335, 34.187702, 50.431931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.178112, 34.314362, 50.782227>,  <28.265579, 34.390358, 50.992405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.178112, 34.314362, 50.782227>,  <28.032335, 34.187702, 50.431931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178112, 34.314362, 50.782227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855955, 0.256485, -0.448950,
		-0.366772, 0.913209, -0.177560,
		0.364444, 0.316646, 0.875737,
		28.287445, 34.409355, 51.044949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455406, 34.848217, 50.324173>,  <28.032335, 34.187702, 50.431931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455406, 34.848217, 50.324173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.585678, 34.718788, 50.679527>,  <28.663841, 34.641132, 50.892742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.585678, 34.718788, 50.679527>,  <28.455406, 34.848217, 50.324173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585678, 34.718788, 50.679527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945288, 0.092461, -0.312860,
		0.019091, 0.941675, 0.335981,
		0.325678, -0.323572, 0.888389,
		28.683382, 34.621716, 50.946045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855991, 35.394787, 50.648258>,  <28.455406, 34.848217, 50.324173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855991, 35.394787, 50.648258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.981285, 35.048344, 50.804077>,  <29.056461, 34.840477, 50.897568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.981285, 35.048344, 50.804077>,  <28.855991, 35.394787, 50.648258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981285, 35.048344, 50.804077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941770, 0.230473, -0.244849,
		0.122285, 0.443558, 0.887864,
		0.313233, -0.866105, 0.389546,
		29.075254, 34.788513, 50.920940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543524, 35.513924, 50.878674>,  <28.855991, 35.394787, 50.648258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543524, 35.513924, 50.878674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.503021, 35.116184, 50.891487>,  <29.478720, 34.877541, 50.899174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.503021, 35.116184, 50.891487>,  <29.543524, 35.513924, 50.878674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503021, 35.116184, 50.891487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992818, -0.103058, -0.060760,
		0.063717, 0.025651, 0.997638,
		-0.101256, -0.994345, 0.032033,
		29.472645, 34.817883, 50.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092880, 35.236916, 51.257202>,  <29.543524, 35.513924, 50.878674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092880, 35.236916, 51.257202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.979334, 34.899242, 51.075314>,  <29.911205, 34.696636, 50.966179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.979334, 34.899242, 51.075314>,  <30.092880, 35.236916, 51.257202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979334, 34.899242, 51.075314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958093, -0.230701, -0.169808,
		0.038445, -0.483868, 0.874296,
		-0.283866, -0.844185, -0.454722,
		29.894175, 34.645988, 50.938896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529587, 34.691349, 51.424648>,  <30.092880, 35.236916, 51.257202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529587, 34.691349, 51.424648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374268, 34.577824, 51.073952>,  <30.281076, 34.509708, 50.863533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374268, 34.577824, 51.073952>,  <30.529587, 34.691349, 51.424648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374268, 34.577824, 51.073952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908899, -0.274958, -0.313530,
		-0.152082, -0.918611, 0.364725,
		-0.388296, -0.283816, -0.876741,
		30.257778, 34.492680, 50.810928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927332, 34.111107, 51.248280>,  <30.529587, 34.691349, 51.424648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927332, 34.111107, 51.248280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.768595, 34.202629, 50.892715>,  <30.673353, 34.257542, 50.679379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.768595, 34.202629, 50.892715>,  <30.927332, 34.111107, 51.248280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768595, 34.202629, 50.892715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824059, -0.337733, -0.454822,
		-0.404281, -0.913008, -0.054523,
		-0.396842, 0.228806, -0.888912,
		30.649542, 34.271271, 50.626041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072840, 33.527508, 50.869492>,  <30.927332, 34.111107, 51.248280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072840, 33.527508, 50.869492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.993492, 33.825302, 50.614498>,  <30.945883, 34.003979, 50.461502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.993492, 33.825302, 50.614498>,  <31.072840, 33.527508, 50.869492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993492, 33.825302, 50.614498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852860, -0.189399, -0.486577,
		-0.482989, -0.640210, -0.597371,
		-0.198370, 0.744486, -0.637487,
		30.933981, 34.048649, 50.423252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041817, 33.244869, 50.157753>,  <31.072840, 33.527508, 50.869492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041817, 33.244869, 50.157753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.136488, 33.631630, 50.119606>,  <31.193291, 33.863686, 50.096718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.136488, 33.631630, 50.119606>,  <31.041817, 33.244869, 50.157753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136488, 33.631630, 50.119606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913968, -0.254864, -0.315762,
		-0.329614, -0.012426, -0.944034,
		0.236677, 0.966897, -0.095363,
		31.207491, 33.921700, 50.090996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567665, 33.283039, 49.682663>,  <31.041817, 33.244869, 50.157753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567665, 33.283039, 49.682663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.602512, 33.659016, 49.814674>,  <31.623421, 33.884602, 49.893883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.602512, 33.659016, 49.814674>,  <31.567665, 33.283039, 49.682663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602512, 33.659016, 49.814674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986082, -0.034273, -0.162685,
		-0.141604, 0.339607, -0.929847,
		0.087118, 0.939943, 0.330028,
		31.628649, 33.940998, 49.913681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809397, 33.658825, 49.155102>,  <31.567665, 33.283039, 49.682663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809397, 33.658825, 49.155102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913004, 33.864281, 49.482292>,  <31.975168, 33.987553, 49.678608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913004, 33.864281, 49.482292>,  <31.809397, 33.658825, 49.155102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913004, 33.864281, 49.482292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928663, 0.100364, -0.357087,
		-0.265509, 0.852118, -0.450999,
		0.259016, 0.513636, 0.817978,
		31.990709, 34.018372, 49.727684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.574648, 34.804020, 34.853497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.239120, 34.904957, 35.046455>,  <24.037804, 34.965519, 35.162231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.239120, 34.904957, 35.046455>,  <24.574648, 34.804020, 34.853497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239120, 34.904957, 35.046455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536902, 0.236805, 0.809728,
		0.090095, 0.938215, -0.334120,
		-0.838820, 0.252342, 0.482394,
		23.987474, 34.980659, 35.191174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622948, 35.498398, 35.191372>,  <24.574648, 34.804020, 34.853497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622948, 35.498398, 35.191372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.366898, 35.278576, 35.406120>,  <24.213268, 35.146683, 35.534969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.366898, 35.278576, 35.406120>,  <24.622948, 35.498398, 35.191372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.366898, 35.278576, 35.406120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623110, 0.037408, 0.781239,
		-0.449417, 0.834619, 0.318488,
		-0.640123, -0.549555, 0.536872,
		24.174860, 35.113708, 35.567181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529264, 35.942368, 35.778446>,  <24.622948, 35.498398, 35.191372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529264, 35.942368, 35.778446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.520384, 35.542706, 35.792236>,  <24.515057, 35.302906, 35.800510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.520384, 35.542706, 35.792236>,  <24.529264, 35.942368, 35.778446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520384, 35.542706, 35.792236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774071, 0.004647, 0.633082,
		-0.632710, 0.040742, 0.773316,
		-0.022199, -0.999159, 0.034477,
		24.513723, 35.242958, 35.802578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130461, 35.522282, 36.215687>,  <24.529264, 35.942368, 35.778446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130461, 35.522282, 36.215687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.487837, 35.368805, 36.122269>,  <24.702263, 35.276718, 36.066216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.487837, 35.368805, 36.122269>,  <24.130461, 35.522282, 36.215687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487837, 35.368805, 36.122269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369139, 0.330939, 0.868456,
		-0.255928, -0.862126, 0.437309,
		0.893441, -0.383690, -0.233548,
		24.755869, 35.253696, 36.052204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451393, 35.224014, 36.848114>,  <24.130461, 35.522282, 36.215687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451393, 35.224014, 36.848114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.774973, 35.274773, 36.618507>,  <24.969120, 35.305225, 36.480743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.774973, 35.274773, 36.618507>,  <24.451393, 35.224014, 36.848114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774973, 35.274773, 36.618507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528731, 0.269799, 0.804768,
		0.256977, -0.954521, 0.151170,
		0.808954, 0.126878, -0.574017,
		25.017658, 35.312840, 36.446301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030615, 34.738232, 37.099594>,  <24.451393, 35.224014, 36.848114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030615, 34.738232, 37.099594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.118526, 35.087631, 36.925838>,  <25.171274, 35.297272, 36.821587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.118526, 35.087631, 36.925838>,  <25.030615, 34.738232, 37.099594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118526, 35.087631, 36.925838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628329, 0.213874, 0.747971,
		0.746257, -0.437328, -0.501841,
		0.219778, 0.873500, -0.434391,
		25.184460, 35.349682, 36.795521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767717, 34.815182, 37.051079>,  <25.030615, 34.738232, 37.099594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767717, 34.815182, 37.051079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.605656, 35.180256, 37.072464>,  <25.508419, 35.399300, 37.085293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.605656, 35.180256, 37.072464>,  <25.767717, 34.815182, 37.051079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605656, 35.180256, 37.072464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668234, 0.255718, 0.698621,
		0.623950, 0.318772, -0.713492,
		-0.405154, 0.912684, 0.053458,
		25.484110, 35.454060, 37.088501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262676, 35.419189, 36.795403>,  <25.767717, 34.815182, 37.051079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262676, 35.419189, 36.795403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.993006, 35.546341, 37.062069>,  <25.831203, 35.622631, 37.222069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.993006, 35.546341, 37.062069>,  <26.262676, 35.419189, 36.795403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993006, 35.546341, 37.062069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734027, 0.188424, 0.652457,
		0.081786, 0.929220, -0.360362,
		-0.674178, 0.317877, 0.666662,
		25.790752, 35.641705, 37.262066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440647, 36.124905, 37.057228>,  <26.262676, 35.419189, 36.795403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440647, 36.124905, 37.057228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.231024, 35.909519, 37.321175>,  <26.105249, 35.780289, 37.479542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.231024, 35.909519, 37.321175>,  <26.440647, 36.124905, 37.057228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231024, 35.909519, 37.321175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646873, 0.252327, 0.719643,
		-0.554002, 0.803984, 0.216082,
		-0.524059, -0.538461, 0.659865,
		26.073807, 35.747982, 37.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128649, 36.456455, 37.587700>,  <26.440647, 36.124905, 37.057228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128649, 36.456455, 37.587700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.264542, 36.096260, 37.696293>,  <26.346077, 35.880142, 37.761448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.264542, 36.096260, 37.696293>,  <26.128649, 36.456455, 37.587700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264542, 36.096260, 37.696293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644902, 0.433142, 0.629674,
		-0.684604, -0.038841, 0.727879,
		0.339732, -0.900488, 0.271482,
		26.366461, 35.826115, 37.777737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110672, 36.354393, 38.251347>,  <26.128649, 36.456455, 37.587700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110672, 36.354393, 38.251347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.417175, 36.139496, 38.110367>,  <26.601078, 36.010559, 38.025780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.417175, 36.139496, 38.110367>,  <26.110672, 36.354393, 38.251347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417175, 36.139496, 38.110367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633359, 0.539176, 0.555109,
		-0.108194, -0.648584, 0.753414,
		0.766257, -0.537241, -0.352451,
		26.647053, 35.978325, 38.004631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007727, 36.706573, 38.789501>,  <26.110672, 36.354393, 38.251347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007727, 36.706573, 38.789501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.361177, 36.778732, 38.962318>,  <26.573248, 36.822029, 39.066010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.361177, 36.778732, 38.962318>,  <26.007727, 36.706573, 38.789501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361177, 36.778732, 38.962318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336446, -0.397059, 0.853902,
		0.325592, -0.899889, -0.290156,
		0.883626, 0.180402, 0.432043,
		26.626265, 36.832851, 39.091930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184843, 36.124771, 39.140907>,  <26.007727, 36.706573, 38.789501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184843, 36.124771, 39.140907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.353142, 36.409363, 39.366039>,  <26.454121, 36.580116, 39.501118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.353142, 36.409363, 39.366039>,  <26.184843, 36.124771, 39.140907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353142, 36.409363, 39.366039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318194, -0.465256, 0.826008,
		0.849543, -0.526629, 0.030632,
		0.420748, 0.711477, 0.562825,
		26.479366, 36.622807, 39.534885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663483, 35.888863, 39.652840>,  <26.184843, 36.124771, 39.140907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663483, 35.888863, 39.652840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.515999, 36.230614, 39.799320>,  <26.427509, 36.435665, 39.887207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.515999, 36.230614, 39.799320>,  <26.663483, 35.888863, 39.652840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515999, 36.230614, 39.799320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285340, -0.478962, 0.830167,
		0.884667, 0.201598, 0.420384,
		-0.368708, 0.854373, 0.366197,
		26.405386, 36.486927, 39.909180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373600, 35.880497, 39.336521>,  <26.663483, 35.888863, 39.652840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373600, 35.880497, 39.336521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488550, 35.940453, 38.958115>,  <27.557520, 35.976425, 38.731071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488550, 35.940453, 38.958115>,  <27.373600, 35.880497, 39.336521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488550, 35.940453, 38.958115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690385, -0.652199, -0.313056,
		-0.663914, 0.743081, -0.083949,
		0.287377, 0.149886, -0.946017,
		27.574764, 35.985416, 38.674309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818495, 35.624825, 39.791740>,  <27.373600, 35.880497, 39.336521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818495, 35.624825, 39.791740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934439, 35.984390, 39.923157>,  <28.004005, 36.200130, 40.002007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934439, 35.984390, 39.923157>,  <27.818495, 35.624825, 39.791740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934439, 35.984390, 39.923157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018096, -0.338065, 0.940949,
		0.956899, -0.278686, -0.081724,
		0.289858, 0.898914, 0.328538,
		28.021397, 36.254063, 40.021717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438076, 35.603226, 40.111153>,  <27.818495, 35.624825, 39.791740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438076, 35.603226, 40.111153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.219217, 35.896347, 40.272961>,  <28.087902, 36.072220, 40.370045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.219217, 35.896347, 40.272961>,  <28.438076, 35.603226, 40.111153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219217, 35.896347, 40.272961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056328, -0.514409, 0.855693,
		0.835140, 0.445403, 0.322734,
		-0.547145, 0.732803, 0.404515,
		28.055075, 36.116188, 40.394314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743410, 35.922329, 40.616936>,  <28.438076, 35.603226, 40.111153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743410, 35.922329, 40.616936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.359867, 35.952797, 40.726326>,  <28.129742, 35.971077, 40.791962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.359867, 35.952797, 40.726326>,  <28.743410, 35.922329, 40.616936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359867, 35.952797, 40.726326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201598, -0.495551, 0.844860,
		0.199879, 0.865232, 0.459806,
		-0.958857, 0.076174, 0.273479,
		28.072210, 35.975651, 40.808369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652174, 36.655704, 40.195923>,  <28.743410, 35.922329, 40.616936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652174, 36.655704, 40.195923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472853, 36.723961, 40.546902>,  <28.365259, 36.764915, 40.757488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472853, 36.723961, 40.546902>,  <28.652174, 36.655704, 40.195923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472853, 36.723961, 40.546902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816500, -0.321337, 0.479657,
		0.363802, 0.931464, 0.004732,
		-0.448304, 0.170636, 0.877443,
		28.338362, 36.775150, 40.810135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997173, 37.136753, 40.514214>,  <28.652174, 36.655704, 40.195923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997173, 37.136753, 40.514214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830000, 36.899544, 40.789505>,  <28.729696, 36.757217, 40.954678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830000, 36.899544, 40.789505>,  <28.997173, 37.136753, 40.514214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830000, 36.899544, 40.789505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908200, -0.291488, 0.300347,
		0.022496, 0.750571, 0.660407,
		-0.417932, -0.593024, 0.688226,
		28.704620, 36.721638, 40.995972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386705, 37.231213, 41.098644>,  <28.997173, 37.136753, 40.514214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386705, 37.231213, 41.098644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.209509, 36.873848, 41.128529>,  <29.103191, 36.659431, 41.146458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.209509, 36.873848, 41.128529>,  <29.386705, 37.231213, 41.098644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209509, 36.873848, 41.128529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813255, -0.365373, 0.452900,
		-0.377328, 0.261388, 0.888425,
		-0.442990, -0.893408, 0.074710,
		29.076612, 36.605827, 41.150940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489870, 36.974770, 41.812702>,  <29.386705, 37.231213, 41.098644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489870, 36.974770, 41.812702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426023, 36.636917, 41.608303>,  <29.387716, 36.434204, 41.485664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426023, 36.636917, 41.608303>,  <29.489870, 36.974770, 41.812702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426023, 36.636917, 41.608303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800741, -0.413516, 0.433381,
		-0.577354, -0.340005, 0.742333,
		-0.159615, -0.844631, -0.511001,
		29.378139, 36.383530, 41.455002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030735, 37.140594, 42.378681>,  <29.489870, 36.974770, 41.812702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030735, 37.140594, 42.378681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373135, 37.347214, 42.370251>,  <30.578575, 37.471184, 42.365192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373135, 37.347214, 42.370251>,  <30.030735, 37.140594, 42.378681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373135, 37.347214, 42.370251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336859, -0.526376, 0.780676,
		0.392158, -0.675359, -0.624581,
		0.856001, 0.516544, -0.021078,
		30.629934, 37.502178, 42.363926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696972, 36.775620, 42.246677>,  <30.030735, 37.140594, 42.378681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696972, 36.775620, 42.246677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.705946, 37.092144, 42.491081>,  <30.711330, 37.282059, 42.637722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.705946, 37.092144, 42.491081>,  <30.696972, 36.775620, 42.246677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705946, 37.092144, 42.491081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391536, -0.569295, 0.722912,
		0.919889, 0.223013, -0.322597,
		0.022434, 0.791308, 0.611007,
		30.712677, 37.329536, 42.674385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312082, 36.689972, 42.634399>,  <30.696972, 36.775620, 42.246677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312082, 36.689972, 42.634399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095123, 36.943413, 42.855076>,  <30.964949, 37.095478, 42.987480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095123, 36.943413, 42.855076>,  <31.312082, 36.689972, 42.634399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095123, 36.943413, 42.855076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460050, -0.325464, 0.826092,
		0.702964, 0.701873, -0.114956,
		-0.542398, 0.633598, 0.551687,
		30.932404, 37.133492, 43.020580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823366, 36.966686, 43.089268>,  <31.312082, 36.689972, 42.634399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823366, 36.966686, 43.089268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.461283, 37.022194, 43.249935>,  <31.244032, 37.055496, 43.346336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.461283, 37.022194, 43.249935>,  <31.823366, 36.966686, 43.089268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461283, 37.022194, 43.249935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390286, -0.102517, 0.914968,
		0.168146, 0.985004, 0.038640,
		-0.905209, 0.138767, 0.401671,
		31.189720, 37.063824, 43.370438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000431, 37.338684, 43.644100>,  <31.823366, 36.966686, 43.089268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000431, 37.338684, 43.644100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665031, 37.124226, 43.683033>,  <31.463793, 36.995552, 43.706390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665031, 37.124226, 43.683033>,  <32.000431, 37.338684, 43.644100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665031, 37.124226, 43.683033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300141, -0.305349, 0.903702,
		-0.454795, 0.786964, 0.416953,
		-0.838497, -0.536143, 0.097329,
		31.413483, 36.963383, 43.712231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553894, 37.512592, 44.193321>,  <32.000431, 37.338684, 43.644100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553894, 37.512592, 44.193321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517626, 37.123974, 44.105793>,  <31.495865, 36.890804, 44.053276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517626, 37.123974, 44.105793>,  <31.553894, 37.512592, 44.193321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517626, 37.123974, 44.105793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563072, -0.231244, 0.793395,
		-0.821419, -0.051272, 0.568016,
		-0.090672, -0.971544, -0.218818,
		31.490425, 36.832512, 44.040146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183754, 37.188728, 44.685753>,  <31.553894, 37.512592, 44.193321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183754, 37.188728, 44.685753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439096, 36.938766, 44.505978>,  <31.592302, 36.788788, 44.398113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439096, 36.938766, 44.505978>,  <31.183754, 37.188728, 44.685753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439096, 36.938766, 44.505978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362925, -0.270560, 0.891674,
		-0.678813, -0.732317, 0.054080,
		0.638356, -0.624907, -0.449436,
		31.630604, 36.751293, 44.371147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131210, 36.513447, 44.978107>,  <31.183754, 37.188728, 44.685753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131210, 36.513447, 44.978107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501680, 36.526466, 44.827831>,  <31.723963, 36.534279, 44.737667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501680, 36.526466, 44.827831>,  <31.131210, 36.513447, 44.978107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501680, 36.526466, 44.827831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341208, -0.496528, 0.798146,
		-0.160561, -0.867410, -0.470978,
		0.926173, 0.032550, -0.375690,
		31.779533, 36.536232, 44.715126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424683, 35.803448, 44.931023>,  <31.131210, 36.513447, 44.978107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424683, 35.803448, 44.931023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.713226, 36.074787, 44.986858>,  <31.886353, 36.237591, 45.020359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.713226, 36.074787, 44.986858>,  <31.424683, 35.803448, 44.931023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713226, 36.074787, 44.986858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265301, -0.456842, 0.849065,
		0.639730, -0.575449, -0.509514,
		0.721361, 0.678347, 0.139589,
		31.929634, 36.278290, 45.028736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181499, 35.676029, 44.690559>,  <31.424683, 35.803448, 44.931023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181499, 35.676029, 44.690559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158913, 35.868294, 45.040592>,  <32.145359, 35.983654, 45.250614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158913, 35.868294, 45.040592>,  <32.181499, 35.676029, 44.690559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158913, 35.868294, 45.040592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411580, -0.787336, 0.459025,
		0.909623, 0.386087, -0.153373,
		-0.056467, 0.480665, 0.875084,
		32.141972, 36.012493, 45.303116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870941, 35.624149, 45.026699>,  <32.181499, 35.676029, 44.690559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870941, 35.624149, 45.026699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584061, 35.691277, 45.297241>,  <32.411934, 35.731552, 45.459568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584061, 35.691277, 45.297241>,  <32.870941, 35.624149, 45.026699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584061, 35.691277, 45.297241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226543, -0.861704, 0.454032,
		0.659014, 0.478856, 0.579997,
		-0.717202, 0.167819, 0.676357,
		32.368900, 35.741623, 45.500149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168457, 35.551128, 45.725307>,  <32.870941, 35.624149, 45.026699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168457, 35.551128, 45.725307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772148, 35.499268, 45.741131>,  <32.534363, 35.468151, 45.750626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772148, 35.499268, 45.741131>,  <33.168457, 35.551128, 45.725307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772148, 35.499268, 45.741131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135478, -0.937299, 0.321116,
		-0.004553, 0.323511, 0.946213,
		-0.990770, -0.129653, 0.039561,
		32.474918, 35.460373, 45.752998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729748, 35.638145, 46.421101>,  <33.168457, 35.551128, 45.725307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729748, 35.638145, 46.421101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674385, 35.293167, 46.226353>,  <32.641167, 35.086182, 46.109505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674385, 35.293167, 46.226353>,  <32.729748, 35.638145, 46.421101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674385, 35.293167, 46.226353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146410, -0.504014, 0.851196,
		-0.979494, 0.046527, 0.196028,
		-0.138404, -0.862441, -0.486867,
		32.632862, 35.034435, 46.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057659, 35.350258, 46.555225>,  <32.729748, 35.638145, 46.421101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057659, 35.350258, 46.555225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367142, 35.103985, 46.495476>,  <32.552834, 34.956223, 46.459625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367142, 35.103985, 46.495476>,  <32.057659, 35.350258, 46.555225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367142, 35.103985, 46.495476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032154, -0.273631, 0.961297,
		-0.632725, -0.738961, -0.231507,
		0.773709, -0.615681, -0.149372,
		32.599255, 34.919281, 46.450665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451950, 34.901287, 47.037312>,  <32.057659, 35.350258, 46.555225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451950, 34.901287, 47.037312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733387, 34.795361, 47.301079>,  <32.902248, 34.731804, 47.459339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733387, 34.795361, 47.301079>,  <32.451950, 34.901287, 47.037312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733387, 34.795361, 47.301079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466869, 0.527314, 0.709911,
		-0.535715, -0.807349, 0.247379,
		0.703593, -0.264816, 0.659416,
		32.944466, 34.715916, 47.498905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279598, 34.387161, 47.601269>,  <32.451950, 34.901287, 47.037312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279598, 34.387161, 47.601269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495945, 34.718212, 47.661259>,  <32.625751, 34.916843, 47.697254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495945, 34.718212, 47.661259>,  <32.279598, 34.387161, 47.601269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495945, 34.718212, 47.661259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631873, 0.282115, 0.721906,
		0.555161, -0.485219, 0.675543,
		0.540863, 0.827631, 0.149977,
		32.658203, 34.966503, 47.706253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512161, 34.360832, 48.293900>,  <32.279598, 34.387161, 47.601269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512161, 34.360832, 48.293900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485569, 34.735806, 48.157192>,  <32.469612, 34.960789, 48.075169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485569, 34.735806, 48.157192>,  <32.512161, 34.360832, 48.293900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485569, 34.735806, 48.157192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757636, 0.175461, 0.628650,
		0.649283, 0.300725, 0.698567,
		-0.066480, 0.937432, -0.341764,
		32.465626, 35.017036, 48.054665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172596, 34.341484, 48.898476>,  <32.512161, 34.360832, 48.293900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172596, 34.341484, 48.898476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300488, 34.267666, 49.270222>,  <32.377220, 34.223377, 49.493271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300488, 34.267666, 49.270222>,  <32.172596, 34.341484, 48.898476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300488, 34.267666, 49.270222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947368, 0.045327, -0.316920,
		0.016360, 0.981779, 0.189322,
		0.319727, -0.184542, 0.929365,
		32.396404, 34.212303, 49.549030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522453, 34.873970, 48.968708>,  <32.172596, 34.341484, 48.898476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522453, 34.873970, 48.968708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.655071, 34.596203, 49.224167>,  <32.734642, 34.429543, 49.377441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.655071, 34.596203, 49.224167>,  <32.522453, 34.873970, 48.968708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655071, 34.596203, 49.224167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936407, 0.159715, -0.312462,
		0.114977, 0.701626, 0.703208,
		0.331544, -0.694415, 0.638644,
		32.754536, 34.387878, 49.415760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243992, 35.130764, 49.278889>,  <32.522453, 34.873970, 48.968708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243992, 35.130764, 49.278889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223934, 34.741722, 49.369686>,  <33.211899, 34.508297, 49.424164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223934, 34.741722, 49.369686>,  <33.243992, 35.130764, 49.278889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223934, 34.741722, 49.369686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924577, -0.131153, -0.357709,
		0.377680, 0.191932, 0.905826,
		-0.050146, -0.972605, 0.226990,
		33.208889, 34.449940, 49.437782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901173, 34.931183, 49.628654>,  <33.243992, 35.130764, 49.278889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901173, 34.931183, 49.628654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723423, 34.595509, 49.503242>,  <33.616776, 34.394104, 49.427994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723423, 34.595509, 49.503242>,  <33.901173, 34.931183, 49.628654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723423, 34.595509, 49.503242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885782, -0.359286, -0.293776,
		0.133886, -0.408265, 0.902992,
		-0.444370, -0.839186, -0.313530,
		33.590111, 34.343754, 49.409184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404247, 34.441505, 49.616287>,  <33.901173, 34.931183, 49.628654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404247, 34.441505, 49.616287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140812, 34.255932, 49.379299>,  <33.982750, 34.144588, 49.237106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140812, 34.255932, 49.379299>,  <34.404247, 34.441505, 49.616287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140812, 34.255932, 49.379299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736053, -0.233433, -0.635402,
		0.156482, -0.854560, 0.495217,
		-0.658589, -0.463935, -0.592473,
		33.943233, 34.116753, 49.201557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766216, 33.786491, 49.390350>,  <34.404247, 34.441505, 49.616287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766216, 33.786491, 49.390350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473740, 33.834999, 49.121826>,  <34.298252, 33.864105, 48.960712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473740, 33.834999, 49.121826>,  <34.766216, 33.786491, 49.390350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473740, 33.834999, 49.121826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572667, -0.425625, -0.700640,
		-0.370689, -0.896737, 0.241768,
		-0.731192, 0.121267, -0.671307,
		34.254383, 33.871380, 48.920433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716873, 33.177494, 49.005596>,  <34.766216, 33.786491, 49.390350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716873, 33.177494, 49.005596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562340, 33.468136, 48.778339>,  <34.469620, 33.642521, 48.641983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562340, 33.468136, 48.778339>,  <34.716873, 33.177494, 49.005596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562340, 33.468136, 48.778339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642094, -0.230338, -0.731204,
		-0.662163, -0.647293, -0.377561,
		-0.386337, 0.726606, -0.568144,
		34.446438, 33.686119, 48.607895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512051, 32.867546, 48.411549>,  <34.716873, 33.177494, 49.005596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512051, 32.867546, 48.411549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537624, 33.249950, 48.297031>,  <34.552967, 33.479393, 48.228321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537624, 33.249950, 48.297031>,  <34.512051, 32.867546, 48.411549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537624, 33.249950, 48.297031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441538, -0.284372, -0.850985,
		-0.894962, -0.072004, -0.440294,
		0.063933, 0.956006, -0.286295,
		34.556805, 33.536751, 48.211143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349327, 32.833092, 47.678440>,  <34.512051, 32.867546, 48.411549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349327, 32.833092, 47.678440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529148, 33.184937, 47.740650>,  <34.637039, 33.396042, 47.777977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529148, 33.184937, 47.740650>,  <34.349327, 32.833092, 47.678440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529148, 33.184937, 47.740650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602537, -0.170072, -0.779759,
		-0.659433, 0.444254, -0.606454,
		0.449553, 0.879610, 0.155528,
		34.664013, 33.448818, 47.787308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361050, 33.177624, 47.017929>,  <34.349327, 32.833092, 47.678440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361050, 33.177624, 47.017929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641087, 33.351330, 47.244659>,  <34.809109, 33.455555, 47.380695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641087, 33.351330, 47.244659>,  <34.361050, 33.177624, 47.017929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641087, 33.351330, 47.244659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684900, -0.183880, -0.705053,
		-0.201952, 0.881818, -0.426161,
		0.700091, 0.434264, 0.566822,
		34.851112, 33.481609, 47.414707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781971, 33.608250, 46.624264>,  <34.361050, 33.177624, 47.017929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781971, 33.608250, 46.624264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052948, 33.578659, 46.917004>,  <35.215534, 33.560905, 47.092648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052948, 33.578659, 46.917004>,  <34.781971, 33.608250, 46.624264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052948, 33.578659, 46.917004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716859, -0.156639, -0.679395,
		0.164897, 0.984881, -0.053080,
		0.677438, -0.073979, 0.731850,
		35.256180, 33.556465, 47.136559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436230, 33.961990, 46.474625>,  <34.781971, 33.608250, 46.624264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436230, 33.961990, 46.474625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550735, 33.688656, 46.743282>,  <35.619438, 33.524654, 46.904476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550735, 33.688656, 46.743282>,  <35.436230, 33.961990, 46.474625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550735, 33.688656, 46.743282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834018, -0.167354, -0.525744,
		0.471661, 0.710665, 0.522006,
		0.286268, -0.683336, 0.671642,
		35.636616, 33.483654, 46.944775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129566, 34.081230, 46.497528>,  <35.436230, 33.961990, 46.474625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129566, 34.081230, 46.497528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070736, 33.720459, 46.659954>,  <36.035439, 33.503994, 46.757408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070736, 33.720459, 46.659954>,  <36.129566, 34.081230, 46.497528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070736, 33.720459, 46.659954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876575, -0.309037, -0.368933,
		0.458241, 0.301685, 0.836063,
		-0.147073, -0.901932, 0.406063,
		36.026615, 33.449879, 46.781773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521393, 33.930809, 47.081955>,  <36.129566, 34.081230, 46.497528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521393, 33.930809, 47.081955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425510, 33.609985, 46.863140>,  <36.367981, 33.417492, 46.731850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425510, 33.609985, 46.863140>,  <36.521393, 33.930809, 47.081955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425510, 33.609985, 46.863140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965105, -0.135676, -0.223972,
		0.105419, -0.581635, 0.806590,
		-0.239705, -0.802055, -0.547037,
		36.353600, 33.369370, 46.699028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132702, 33.732185, 46.917183>,  <36.521393, 33.930809, 47.081955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132702, 33.732185, 46.917183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923851, 33.486027, 46.680992>,  <36.798542, 33.338329, 46.539276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923851, 33.486027, 46.680992>,  <37.132702, 33.732185, 46.917183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923851, 33.486027, 46.680992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852855, -0.380495, -0.357578,
		-0.004620, -0.690294, 0.723514,
		-0.522128, -0.615401, -0.590479,
		36.767212, 33.301407, 46.503849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676991, 33.222500, 46.786434>,  <37.132702, 33.732185, 46.917183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676991, 33.222500, 46.786434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407715, 33.182247, 46.493397>,  <37.246151, 33.158096, 46.317574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407715, 33.182247, 46.493397>,  <37.676991, 33.222500, 46.786434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407715, 33.182247, 46.493397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728101, -0.263278, -0.632893,
		-0.129186, -0.959457, 0.250505,
		-0.673186, -0.100632, -0.732594,
		37.205757, 33.152058, 46.273617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888672, 32.668213, 46.325470>,  <37.676991, 33.222500, 46.786434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888672, 32.668213, 46.325470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615620, 32.853771, 46.099617>,  <37.451790, 32.965107, 45.964104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615620, 32.853771, 46.099617>,  <37.888672, 32.668213, 46.325470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615620, 32.853771, 46.099617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562614, -0.159459, -0.811196,
		-0.466347, -0.871420, -0.152143,
		-0.682631, 0.463897, -0.564636,
		37.410831, 32.992939, 45.930225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183807, 32.226086, 46.911148>,  <37.888672, 32.668213, 46.325470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183807, 32.226086, 46.911148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291458, 32.610897, 46.929371>,  <38.356049, 32.841782, 46.940304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291458, 32.610897, 46.929371>,  <38.183807, 32.226086, 46.911148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291458, 32.610897, 46.929371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819151, 0.203770, 0.536163,
		0.506519, -0.181615, 0.842885,
		0.269130, 0.962026, 0.045556,
		38.372196, 32.899506, 46.943039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770664, 32.594299, 46.979660>,  <38.183807, 32.226086, 46.911148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770664, 32.594299, 46.979660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578312, 32.647690, 47.326286>,  <38.462902, 32.679726, 47.534264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578312, 32.647690, 47.326286>,  <38.770664, 32.594299, 46.979660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578312, 32.647690, 47.326286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098364, -0.990318, 0.097956,
		0.871252, -0.038134, 0.489352,
		-0.480878, 0.133479, 0.866568,
		38.434048, 32.687733, 47.586258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044228, 32.142670, 47.616280>,  <38.770664, 32.594299, 46.979660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044228, 32.142670, 47.616280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653996, 32.222229, 47.579006>,  <38.419857, 32.269962, 47.556641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653996, 32.222229, 47.579006>,  <39.044228, 32.142670, 47.616280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653996, 32.222229, 47.579006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190815, -0.977594, -0.088883,
		-0.108776, -0.068932, 0.991674,
		-0.975581, 0.198894, -0.093186,
		38.361320, 32.281898, 47.551052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699192, 31.762882, 48.117260>,  <39.044228, 32.142670, 47.616280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699192, 31.762882, 48.117260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464401, 31.836807, 47.801968>,  <38.323528, 31.881163, 47.612793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464401, 31.836807, 47.801968>,  <38.699192, 31.762882, 48.117260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464401, 31.836807, 47.801968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137484, -0.982210, -0.127914,
		-0.797847, 0.033287, 0.601940,
		-0.586973, 0.184813, -0.788230,
		38.288311, 31.892252, 47.565498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165154, 31.280554, 48.176182>,  <38.699192, 31.762882, 48.117260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165154, 31.280554, 48.176182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156849, 31.417589, 47.800480>,  <38.151867, 31.499811, 47.575058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156849, 31.417589, 47.800480>,  <38.165154, 31.280554, 48.176182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156849, 31.417589, 47.800480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129026, -0.932521, -0.337279,
		-0.991424, 0.114185, 0.063568,
		-0.020766, 0.342588, -0.939256,
		38.150620, 31.520365, 47.518703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750359, 30.904825, 48.798325>,  <38.165154, 31.280554, 48.176182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750359, 30.904825, 48.798325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.563957, 31.249035, 48.880630>,  <37.452114, 31.455561, 48.930012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.563957, 31.249035, 48.880630>,  <37.750359, 30.904825, 48.798325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563957, 31.249035, 48.880630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870650, 0.487389, -0.066494,
		-0.157505, 0.148159, -0.976341,
		-0.466006, 0.860524, 0.205761,
		37.424156, 31.507193, 48.942360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979454, 31.672562, 49.151699>,  <37.750359, 30.904825, 48.798325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979454, 31.672562, 49.151699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712254, 31.969831, 49.136356>,  <37.551933, 32.148193, 49.127151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712254, 31.969831, 49.136356>,  <37.979454, 31.672562, 49.151699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712254, 31.969831, 49.136356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032073, 0.022747, 0.999227,
		0.743470, 0.668713, 0.008640,
		-0.667999, 0.743173, -0.038359,
		37.511852, 32.192783, 49.124847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256668, 32.304729, 49.620705>,  <37.979454, 31.672562, 49.151699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256668, 32.304729, 49.620705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857941, 32.282207, 49.598145>,  <37.618706, 32.268696, 49.584610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857941, 32.282207, 49.598145>,  <38.256668, 32.304729, 49.620705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857941, 32.282207, 49.598145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058963, 0.044975, 0.997246,
		-0.053612, 0.997400, -0.048152,
		-0.996819, -0.056304, -0.056399,
		37.558895, 32.265316, 49.581226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046829, 32.796337, 50.065395>,  <38.256668, 32.304729, 49.620705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046829, 32.796337, 50.065395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716038, 32.576607, 50.017502>,  <37.517563, 32.444767, 49.988766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716038, 32.576607, 50.017502>,  <38.046829, 32.796337, 50.065395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716038, 32.576607, 50.017502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201075, 0.090097, 0.975424,
		-0.525041, 0.830735, -0.184965,
		-0.826983, -0.549329, -0.119736,
		37.467941, 32.411808, 49.981583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428738, 33.178841, 50.358429>,  <38.046829, 32.796337, 50.065395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428738, 33.178841, 50.358429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347862, 32.787205, 50.349419>,  <37.299339, 32.552223, 50.344013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347862, 32.787205, 50.349419>,  <37.428738, 33.178841, 50.358429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347862, 32.787205, 50.349419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076559, -0.007130, 0.997039,
		-0.976351, 0.203310, -0.073516,
		-0.202184, -0.979089, -0.022526,
		37.287209, 32.493477, 50.342659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989727, 33.201630, 50.888149>,  <37.428738, 33.178841, 50.358429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989727, 33.201630, 50.888149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048885, 32.807312, 50.856323>,  <37.084381, 32.570721, 50.837227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048885, 32.807312, 50.856323>,  <36.989727, 33.201630, 50.888149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048885, 32.807312, 50.856323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161027, -0.103378, 0.981521,
		-0.975806, -0.132350, -0.174029,
		0.147895, -0.985797, -0.079565,
		37.093254, 32.511574, 50.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293076, 32.794094, 51.031254>,  <36.989727, 33.201630, 50.888149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293076, 32.794094, 51.031254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619858, 32.578751, 51.113964>,  <36.815926, 32.449543, 51.163589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619858, 32.578751, 51.113964>,  <36.293076, 32.794094, 51.031254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619858, 32.578751, 51.113964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288588, -0.071198, 0.954802,
		-0.499306, -0.839701, -0.213530,
		0.816952, -0.538361, 0.206778,
		36.864944, 32.417244, 51.175999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933327, 32.170578, 51.230270>,  <36.293076, 32.794094, 51.031254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933327, 32.170578, 51.230270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310112, 32.180943, 51.364159>,  <36.536182, 32.187160, 51.444492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310112, 32.180943, 51.364159>,  <35.933327, 32.170578, 51.230270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310112, 32.180943, 51.364159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326388, -0.162731, 0.931123,
		0.078599, -0.986330, -0.144828,
		0.941962, 0.025915, 0.334717,
		36.592701, 32.188717, 51.464573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903854, 31.818558, 51.799061>,  <35.933327, 32.170578, 51.230270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903854, 31.818558, 51.799061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263073, 31.977156, 51.875278>,  <36.478603, 32.072315, 51.921009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263073, 31.977156, 51.875278>,  <35.903854, 31.818558, 51.799061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263073, 31.977156, 51.875278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259345, 0.127335, 0.957354,
		0.355326, -0.909162, 0.217183,
		0.898044, 0.396498, 0.190541,
		36.532486, 32.096104, 51.932442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143272, 31.407240, 52.405281>,  <35.903854, 31.818558, 51.799061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143272, 31.407240, 52.405281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361015, 31.742643, 52.395714>,  <36.491661, 31.943886, 52.389973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361015, 31.742643, 52.395714>,  <36.143272, 31.407240, 52.405281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361015, 31.742643, 52.395714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205648, 0.161042, 0.965285,
		0.813252, -0.520545, 0.260103,
		0.544362, 0.838509, -0.023918,
		36.524323, 31.994196, 52.388538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313797, 31.387993, 53.046799>,  <36.143272, 31.407240, 52.405281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313797, 31.387993, 53.046799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422752, 31.758411, 52.942303>,  <36.488125, 31.980661, 52.879604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422752, 31.758411, 52.942303>,  <36.313797, 31.387993, 53.046799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422752, 31.758411, 52.942303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132377, 0.304990, 0.943111,
		0.953038, -0.222311, 0.205663,
		0.272389, 0.926045, -0.261238,
		36.504471, 32.036224, 52.863930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802170, 31.699734, 53.605495>,  <36.313797, 31.387993, 53.046799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802170, 31.699734, 53.605495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633827, 31.993362, 53.392323>,  <36.532822, 32.169540, 53.264420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633827, 31.993362, 53.392323>,  <36.802170, 31.699734, 53.605495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633827, 31.993362, 53.392323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013390, 0.592455, 0.805492,
		0.907026, 0.331864, -0.259170,
		-0.420861, 0.734073, -0.532929,
		36.507568, 32.213585, 53.232445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245544, 32.250595, 53.746510>,  <36.802170, 31.699734, 53.605495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245544, 32.250595, 53.746510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880848, 32.376419, 53.640850>,  <36.662029, 32.451916, 53.577454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880848, 32.376419, 53.640850>,  <37.245544, 32.250595, 53.746510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880848, 32.376419, 53.640850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035009, 0.700238, 0.713051,
		0.409263, 0.640873, -0.649450,
		-0.911744, 0.314562, -0.264146,
		36.607323, 32.470787, 53.561607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262932, 32.943188, 53.924774>,  <37.245544, 32.250595, 53.746510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262932, 32.943188, 53.924774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875290, 32.849125, 53.894997>,  <36.642704, 32.792686, 53.877132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875290, 32.849125, 53.894997>,  <37.262932, 32.943188, 53.924774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875290, 32.849125, 53.894997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217259, 0.670887, 0.709020,
		-0.116791, 0.703286, -0.701248,
		-0.969102, -0.235159, -0.074441,
		36.584560, 32.778576, 53.872665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882030, 33.488811, 53.687653>,  <37.262932, 32.943188, 53.924774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882030, 33.488811, 53.687653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634476, 33.263474, 53.906601>,  <36.485943, 33.128269, 54.037971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634476, 33.263474, 53.906601>,  <36.882030, 33.488811, 53.687653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634476, 33.263474, 53.906601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102498, 0.748828, 0.654790,
		-0.778762, 0.349139, -0.521184,
		-0.618890, -0.563346, 0.547373,
		36.448811, 33.094471, 54.070812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275982, 33.923233, 53.905605>,  <36.882030, 33.488811, 53.687653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275982, 33.923233, 53.905605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.277363, 33.618507, 54.164719>,  <36.278191, 33.435673, 54.320187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.277363, 33.618507, 54.164719>,  <36.275982, 33.923233, 53.905605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277363, 33.618507, 54.164719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147979, 0.640270, 0.753762,
		-0.988984, -0.098458, -0.110524,
		0.003449, -0.761814, 0.647786,
		36.278397, 33.389965, 54.359055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691502, 34.053154, 54.418953>,  <36.275982, 33.923233, 53.905605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691502, 34.053154, 54.418953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940014, 33.804947, 54.610355>,  <36.089123, 33.656025, 54.725197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940014, 33.804947, 54.610355>,  <35.691502, 34.053154, 54.418953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940014, 33.804947, 54.610355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248116, 0.423461, 0.871275,
		-0.743267, -0.660033, 0.109130,
		0.621282, -0.620513, 0.478510,
		36.126400, 33.618793, 54.753910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383129, 33.709480, 55.053974>,  <35.691502, 34.053154, 54.418953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383129, 33.709480, 55.053974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778740, 33.684021, 55.107296>,  <36.016106, 33.668747, 55.139290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778740, 33.684021, 55.107296>,  <35.383129, 33.709480, 55.053974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778740, 33.684021, 55.107296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096771, 0.402611, 0.910242,
		-0.111604, -0.913156, 0.392035,
		0.989030, -0.063649, 0.133300,
		36.075447, 33.664925, 55.147285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466328, 33.464622, 55.719959>,  <35.383129, 33.709480, 55.053974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466328, 33.464622, 55.719959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826363, 33.625515, 55.652962>,  <36.042381, 33.722050, 55.612762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826363, 33.625515, 55.652962>,  <35.466328, 33.464622, 55.719959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826363, 33.625515, 55.652962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063729, 0.258749, 0.963840,
		0.431031, -0.878211, 0.207262,
		0.900084, 0.402236, -0.167496,
		36.096390, 33.746185, 55.602715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896877, 33.298771, 56.307442>,  <35.466328, 33.464622, 55.719959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896877, 33.298771, 56.307442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102440, 33.604980, 56.152584>,  <36.225777, 33.788704, 56.059669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102440, 33.604980, 56.152584>,  <35.896877, 33.298771, 56.307442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102440, 33.604980, 56.152584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213404, 0.323030, 0.922014,
		0.830880, -0.556446, 0.002641,
		0.513904, 0.765519, -0.387146,
		36.256611, 33.834637, 56.036442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368507, 33.433975, 56.868210>,  <35.896877, 33.298771, 56.307442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368507, 33.433975, 56.868210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441177, 33.760250, 56.648521>,  <36.484779, 33.956017, 56.516708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441177, 33.760250, 56.648521>,  <36.368507, 33.433975, 56.868210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441177, 33.760250, 56.648521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194591, 0.517649, 0.833171,
		0.963913, -0.258238, -0.064683,
		0.181673, 0.815691, -0.549220,
		36.495678, 34.004959, 56.483757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888073, 33.729481, 57.107986>,  <36.368507, 33.433975, 56.868210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888073, 33.729481, 57.107986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.700405, 34.040882, 56.941223>,  <36.587807, 34.227722, 56.841164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.700405, 34.040882, 56.941223>,  <36.888073, 33.729481, 57.107986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700405, 34.040882, 56.941223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196067, 0.552139, 0.810370,
		0.861070, 0.298455, -0.411683,
		-0.469166, 0.778503, -0.416913,
		36.559654, 34.274433, 56.816151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367210, 34.373165, 57.174656>,  <36.888073, 33.729481, 57.107986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367210, 34.373165, 57.174656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999668, 34.513512, 57.102432>,  <36.779144, 34.597721, 57.059097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999668, 34.513512, 57.102432>,  <37.367210, 34.373165, 57.174656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999668, 34.513512, 57.102432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179823, 0.779625, 0.599874,
		0.351244, 0.518728, -0.779454,
		-0.918853, 0.350866, -0.180559,
		36.724010, 34.618771, 57.048264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457432, 35.095711, 57.099064>,  <37.367210, 34.373165, 57.174656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457432, 35.095711, 57.099064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067379, 35.048424, 57.174049>,  <36.833347, 35.020050, 57.219040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067379, 35.048424, 57.174049>,  <37.457432, 35.095711, 57.099064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067379, 35.048424, 57.174049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025586, 0.780152, 0.625066,
		-0.220149, 0.614318, -0.757725,
		-0.975131, -0.118221, 0.187467,
		36.774841, 35.012959, 57.230289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255207, 35.744720, 57.187412>,  <37.457432, 35.095711, 57.099064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255207, 35.744720, 57.187412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.963631, 35.548702, 57.378620>,  <36.788685, 35.431091, 57.493343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.963631, 35.548702, 57.378620>,  <37.255207, 35.744720, 57.187412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963631, 35.548702, 57.378620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125903, 0.782327, 0.610010,
		-0.672899, 0.384478, -0.631968,
		-0.728941, -0.490042, 0.478020,
		36.744949, 35.401691, 57.522026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767593, 36.250500, 57.347771>,  <37.255207, 35.744720, 57.187412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767593, 36.250500, 57.347771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692108, 35.956371, 57.608135>,  <36.646816, 35.779896, 57.764355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692108, 35.956371, 57.608135>,  <36.767593, 36.250500, 57.347771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692108, 35.956371, 57.608135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214830, 0.677681, 0.703276,
		-0.958247, -0.007122, -0.285853,
		-0.188708, -0.735322, 0.650916,
		36.635494, 35.735775, 57.803410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219788, 36.513996, 57.774864>,  <36.767593, 36.250500, 57.347771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219788, 36.513996, 57.774864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346737, 36.211281, 58.003437>,  <36.422905, 36.029652, 58.140583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346737, 36.211281, 58.003437>,  <36.219788, 36.513996, 57.774864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346737, 36.211281, 58.003437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295211, 0.493800, 0.817931,
		-0.901180, -0.428283, -0.066696,
		0.317372, -0.756793, 0.571436,
		36.441948, 35.984241, 58.174870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645569, 36.321960, 58.207779>,  <36.219788, 36.513996, 57.774864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645569, 36.321960, 58.207779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009403, 36.259083, 58.361633>,  <36.227703, 36.221355, 58.453945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009403, 36.259083, 58.361633>,  <35.645569, 36.321960, 58.207779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009403, 36.259083, 58.361633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196132, 0.653642, 0.730947,
		-0.366309, -0.740299, 0.563715,
		0.909588, -0.157191, 0.384632,
		36.282280, 36.211926, 58.477024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563976, 35.971691, 58.844189>,  <35.645569, 36.321960, 58.207779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563976, 35.971691, 58.844189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886745, 36.207802, 58.835754>,  <36.080406, 36.349468, 58.830692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886745, 36.207802, 58.835754>,  <35.563976, 35.971691, 58.844189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886745, 36.207802, 58.835754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409377, 0.584658, 0.700418,
		0.425768, -0.556554, 0.713421,
		0.806927, 0.590274, -0.021089,
		36.128822, 36.384884, 58.829430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698444, 36.161366, 59.496250>,  <35.563976, 35.971691, 58.844189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698444, 36.161366, 59.496250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900208, 36.443176, 59.296566>,  <36.021267, 36.612263, 59.176754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900208, 36.443176, 59.296566>,  <35.698444, 36.161366, 59.496250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900208, 36.443176, 59.296566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430113, 0.706329, 0.562230,
		0.748717, -0.068873, 0.659302,
		0.504406, 0.704526, -0.499217,
		36.051529, 36.654533, 59.146801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857826, 36.584370, 59.997608>,  <35.698444, 36.161366, 59.496250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857826, 36.584370, 59.997608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916824, 36.829330, 59.686943>,  <35.952225, 36.976307, 59.500546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916824, 36.829330, 59.686943>,  <35.857826, 36.584370, 59.997608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916824, 36.829330, 59.686943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348316, 0.767108, 0.538721,
		0.925700, 0.191066, 0.326454,
		0.147494, 0.612404, -0.776664,
		35.961071, 37.013050, 59.453945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146343, 37.218037, 60.287422>,  <35.857826, 36.584370, 59.997608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146343, 37.218037, 60.287422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992973, 37.340714, 59.938957>,  <35.900951, 37.414318, 59.729877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992973, 37.340714, 59.938957>,  <36.146343, 37.218037, 60.287422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992973, 37.340714, 59.938957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469042, 0.747896, 0.469735,
		0.795603, 0.588720, -0.142912,
		-0.383425, 0.306691, -0.871163,
		35.877945, 37.432720, 59.677608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418335, 37.894539, 60.173870>,  <36.146343, 37.218037, 60.287422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418335, 37.894539, 60.173870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097862, 37.843327, 59.940044>,  <35.905579, 37.812599, 59.799747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097862, 37.843327, 59.940044>,  <36.418335, 37.894539, 60.173870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097862, 37.843327, 59.940044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431132, 0.800944, 0.415468,
		0.415012, 0.584891, -0.696899,
		-0.801180, -0.128032, -0.584566,
		35.857510, 37.804916, 59.764675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363319, 38.492119, 59.919960>,  <36.418335, 37.894539, 60.173870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363319, 38.492119, 59.919960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001560, 38.362072, 59.809429>,  <35.784504, 38.284042, 59.743111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001560, 38.362072, 59.809429>,  <36.363319, 38.492119, 59.919960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001560, 38.362072, 59.809429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382681, 0.904490, 0.188289,
		0.188715, 0.276033, -0.942440,
		-0.904401, -0.325121, -0.276324,
		35.730240, 38.264534, 59.726532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961300, 38.975533, 59.446247>,  <36.363319, 38.492119, 59.919960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961300, 38.975533, 59.446247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689400, 38.763733, 59.649250>,  <35.526260, 38.636654, 59.771053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689400, 38.763733, 59.649250>,  <35.961300, 38.975533, 59.446247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689400, 38.763733, 59.649250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463442, 0.846401, 0.262349,
		-0.568468, -0.056867, -0.820738,
		-0.679754, -0.529501, 0.507506,
		35.485474, 38.604881, 59.801502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210255, 39.248711, 59.244812>,  <35.961300, 38.975533, 59.446247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210255, 39.248711, 59.244812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200020, 39.067730, 59.601379>,  <35.193878, 38.959141, 59.815319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200020, 39.067730, 59.601379>,  <35.210255, 39.248711, 59.244812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200020, 39.067730, 59.601379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330765, 0.845321, 0.419555,
		-0.943366, -0.284115, -0.171287,
		-0.025591, -0.452450, 0.891423,
		35.192341, 38.931995, 59.868805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608486, 39.502964, 59.558666>,  <35.210255, 39.248711, 59.244812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608486, 39.502964, 59.558666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776394, 39.353237, 59.889404>,  <34.877140, 39.263401, 60.087849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776394, 39.353237, 59.889404>,  <34.608486, 39.502964, 59.558666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776394, 39.353237, 59.889404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430572, 0.719837, 0.544466,
		-0.799001, -0.584567, 0.140992,
		0.419768, -0.374321, 0.826848,
		34.902325, 39.240940, 60.137459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085815, 39.420479, 60.084023>,  <34.608486, 39.502964, 59.558666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085815, 39.420479, 60.084023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427601, 39.434040, 60.291386>,  <34.632671, 39.442177, 60.415802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427601, 39.434040, 60.291386>,  <34.085815, 39.420479, 60.084023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427601, 39.434040, 60.291386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382463, 0.716383, 0.583539,
		-0.351595, -0.696883, 0.625088,
		0.854460, 0.033904, 0.518409,
		34.683941, 39.444210, 60.446907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839123, 39.473709, 60.708076>,  <34.085815, 39.420479, 60.084023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839123, 39.473709, 60.708076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224144, 39.569489, 60.758926>,  <34.455158, 39.626957, 60.789436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224144, 39.569489, 60.758926>,  <33.839123, 39.473709, 60.708076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224144, 39.569489, 60.758926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241069, 0.541497, 0.805399,
		0.124013, -0.805883, 0.578942,
		0.962552, 0.239445, 0.127120,
		34.512909, 39.641323, 60.797062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019550, 39.323204, 61.463501>,  <33.839123, 39.473709, 60.708076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019550, 39.323204, 61.463501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293442, 39.584637, 61.334515>,  <34.457775, 39.741497, 61.257122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293442, 39.584637, 61.334515>,  <34.019550, 39.323204, 61.463501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293442, 39.584637, 61.334515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094192, 0.518114, 0.850109,
		0.722690, -0.551716, 0.416327,
		0.684725, 0.653580, -0.322468,
		34.498859, 39.780712, 61.237774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440071, 39.388111, 61.951439>,  <34.019550, 39.323204, 61.463501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440071, 39.388111, 61.951439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521660, 39.740707, 61.781090>,  <34.570614, 39.952267, 61.678879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521660, 39.740707, 61.781090>,  <34.440071, 39.388111, 61.951439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521660, 39.740707, 61.781090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090196, 0.416247, 0.904767,
		0.974814, -0.222955, 0.005394,
		0.203968, 0.881493, -0.425873,
		34.582851, 40.005154, 61.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188717, 39.595085, 62.049423>,  <34.440071, 39.388111, 61.951439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188717, 39.595085, 62.049423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978756, 39.933296, 62.010311>,  <34.852779, 40.136223, 61.986843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978756, 39.933296, 62.010311>,  <35.188717, 39.595085, 62.049423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978756, 39.933296, 62.010311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166163, 0.214464, 0.962494,
		0.834787, 0.488965, -0.253068,
		-0.524900, 0.845528, -0.097784,
		34.821285, 40.186954, 61.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143845, 39.918091, 62.722794>,  <35.188717, 39.595085, 62.049423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143845, 39.918091, 62.722794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917194, 40.179661, 62.522266>,  <34.781204, 40.336601, 62.401951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917194, 40.179661, 62.522266>,  <35.143845, 39.918091, 62.722794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917194, 40.179661, 62.522266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034570, 0.589010, 0.807386,
		0.823252, 0.474814, -0.311139,
		-0.566622, 0.653926, -0.501318,
		34.747208, 40.375839, 62.371872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434826, 40.738468, 62.677509>,  <35.143845, 39.918091, 62.722794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434826, 40.738468, 62.677509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037643, 40.691833, 62.669075>,  <34.799335, 40.663853, 62.664013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037643, 40.691833, 62.669075>,  <35.434826, 40.738468, 62.677509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037643, 40.691833, 62.669075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088466, 0.611203, 0.786514,
		-0.078811, 0.782840, -0.617212,
		-0.992956, -0.116588, -0.021086,
		34.739758, 40.656857, 62.662750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206173, 41.330776, 62.832550>,  <35.434826, 40.738468, 62.677509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206173, 41.330776, 62.832550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858807, 41.149052, 62.912003>,  <34.650387, 41.040016, 62.959675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858807, 41.149052, 62.912003>,  <35.206173, 41.330776, 62.832550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858807, 41.149052, 62.912003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133433, 0.599946, 0.788835,
		-0.477541, 0.658535, -0.581624,
		-0.868418, -0.454309, 0.198629,
		34.598282, 41.012760, 62.971592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686668, 41.849861, 62.713902>,  <35.206173, 41.330776, 62.832550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686668, 41.849861, 62.713902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616032, 41.564480, 62.985134>,  <34.573650, 41.393250, 63.147873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616032, 41.564480, 62.985134>,  <34.686668, 41.849861, 62.713902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616032, 41.564480, 62.985134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098224, 0.698243, 0.709090,
		-0.979372, 0.058613, -0.193380,
		-0.176588, -0.713457, 0.678083,
		34.563057, 41.350441, 63.188560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045631, 42.488564, 62.426338>,  <34.686668, 41.849861, 62.713902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045631, 42.488564, 62.426338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953995, 42.735298, 62.125134>,  <34.899014, 42.883339, 61.944408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953995, 42.735298, 62.125134>,  <35.045631, 42.488564, 62.426338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953995, 42.735298, 62.125134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571448, -0.711478, -0.408958,
		-0.788013, 0.336619, 0.515484,
		-0.229092, 0.616836, -0.753014,
		34.885265, 42.920349, 61.899231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336960, 42.545326, 62.419296>,  <35.045631, 42.488564, 62.426338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336960, 42.545326, 62.419296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496563, 42.610504, 62.058353>,  <34.592323, 42.649609, 61.841789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496563, 42.610504, 62.058353>,  <34.336960, 42.545326, 62.419296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496563, 42.610504, 62.058353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588196, -0.709455, -0.388199,
		-0.703435, 0.685655, -0.187233,
		0.399004, 0.162943, -0.902356,
		34.616264, 42.659386, 61.787647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794449, 42.575363, 61.821564>,  <34.336960, 42.545326, 62.419296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794449, 42.575363, 61.821564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151424, 42.487061, 61.664173>,  <34.365608, 42.434078, 61.569736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151424, 42.487061, 61.664173>,  <33.794449, 42.575363, 61.821564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151424, 42.487061, 61.664173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419012, -0.728928, -0.541381,
		-0.167303, 0.648020, -0.743021,
		0.892434, -0.220760, -0.393480,
		34.419155, 42.420834, 61.546127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700172, 43.162556, 61.379513>,  <33.794449, 42.575363, 61.821564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700172, 43.162556, 61.379513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099628, 43.172569, 61.397842>,  <34.339302, 43.178577, 61.408840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099628, 43.172569, 61.397842>,  <33.700172, 43.162556, 61.379513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099628, 43.172569, 61.397842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051416, -0.318742, -0.946446,
		-0.009092, 0.947511, -0.319594,
		0.998636, 0.025037, 0.045819,
		34.399220, 43.180080, 61.411587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868248, 43.348534, 60.718624>,  <33.700172, 43.162556, 61.379513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868248, 43.348534, 60.718624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172020, 43.155800, 60.893486>,  <34.354282, 43.040157, 60.998402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172020, 43.155800, 60.893486>,  <33.868248, 43.348534, 60.718624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172020, 43.155800, 60.893486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214686, -0.448695, -0.867515,
		0.614151, 0.752665, -0.237307,
		0.759427, -0.481838, 0.437153,
		34.399849, 43.011250, 61.024632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638340, 43.388718, 60.386078>,  <33.868248, 43.348534, 60.718624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638340, 43.388718, 60.386078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610249, 43.049358, 60.595951>,  <34.593395, 42.845745, 60.721874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610249, 43.049358, 60.595951>,  <34.638340, 43.388718, 60.386078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610249, 43.049358, 60.595951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308872, -0.518627, -0.797260,
		0.948508, 0.106074, 0.298465,
		-0.070224, -0.848395, 0.524685,
		34.589180, 42.794838, 60.753357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294788, 43.001740, 60.328842>,  <34.638340, 43.388718, 60.386078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294788, 43.001740, 60.328842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985378, 42.752296, 60.374046>,  <34.799732, 42.602631, 60.401169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985378, 42.752296, 60.374046>,  <35.294788, 43.001740, 60.328842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985378, 42.752296, 60.374046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219481, -0.430877, -0.875313,
		0.594544, -0.652275, 0.470165,
		-0.773528, -0.623604, 0.113013,
		34.753319, 42.565216, 60.407951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485046, 42.389423, 60.245636>,  <35.294788, 43.001740, 60.328842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485046, 42.389423, 60.245636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102257, 42.282188, 60.201221>,  <34.872581, 42.217850, 60.174572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102257, 42.282188, 60.201221>,  <35.485046, 42.389423, 60.245636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102257, 42.282188, 60.201221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250333, -0.569246, -0.783130,
		0.146739, -0.777232, 0.611864,
		-0.956975, -0.268085, -0.111037,
		34.815163, 42.201763, 60.167912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608135, 41.899632, 59.881950>,  <35.485046, 42.389423, 60.245636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608135, 41.899632, 59.881950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208584, 41.897850, 59.863136>,  <34.968853, 41.896782, 59.851849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208584, 41.897850, 59.863136>,  <35.608135, 41.899632, 59.881950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208584, 41.897850, 59.863136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042473, -0.520788, -0.852629,
		-0.020698, -0.853674, 0.520396,
		-0.998883, -0.004455, -0.047037,
		34.908920, 41.896515, 59.849026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407089, 41.171654, 59.783680>,  <35.608135, 41.899632, 59.881950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407089, 41.171654, 59.783680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126305, 41.421013, 59.645908>,  <34.957836, 41.570629, 59.563248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126305, 41.421013, 59.645908>,  <35.407089, 41.171654, 59.783680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126305, 41.421013, 59.645908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010267, -0.492404, -0.870306,
		-0.712146, -0.607381, 0.352046,
		-0.701956, 0.623399, -0.344428,
		34.915718, 41.608032, 59.542580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738575, 40.856930, 59.567402>,  <35.407089, 41.171654, 59.783680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738575, 40.856930, 59.567402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.729412, 41.182297, 59.334911>,  <34.723915, 41.377518, 59.195415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.729412, 41.182297, 59.334911>,  <34.738575, 40.856930, 59.567402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729412, 41.182297, 59.334911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185535, -0.574738, -0.797027,
		-0.982371, 0.089580, 0.164084,
		-0.022907, 0.813420, -0.581226,
		34.722538, 41.426323, 59.160545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310955, 40.686920, 59.030560>,  <34.738575, 40.856930, 59.567402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310955, 40.686920, 59.030560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444942, 41.040276, 58.899460>,  <34.525333, 41.252289, 58.820801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444942, 41.040276, 58.899460>,  <34.310955, 40.686920, 59.030560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444942, 41.040276, 58.899460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300844, -0.229367, -0.925680,
		-0.892912, 0.408672, 0.188933,
		0.334965, 0.883390, -0.327751,
		34.545433, 41.305294, 58.801136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755680, 40.986698, 58.637154>,  <34.310955, 40.686920, 59.030560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755680, 40.986698, 58.637154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088211, 41.155842, 58.492886>,  <34.287727, 41.257328, 58.406322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088211, 41.155842, 58.492886>,  <33.755680, 40.986698, 58.637154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088211, 41.155842, 58.492886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211921, -0.358742, -0.909062,
		-0.513797, 0.832160, -0.208618,
		0.831325, 0.422863, -0.360673,
		34.337608, 41.282700, 58.384686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622074, 41.117901, 57.896645>,  <33.755680, 40.986698, 58.637154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622074, 41.117901, 57.896645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021931, 41.107361, 57.898819>,  <34.261845, 41.101036, 57.900124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021931, 41.107361, 57.898819>,  <33.622074, 41.117901, 57.896645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021931, 41.107361, 57.898819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002921, -0.307066, -0.951684,
		0.026749, 0.951323, -0.307032,
		0.999638, -0.026353, 0.005435,
		34.321823, 41.099453, 57.900448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817081, 41.448082, 57.337727>,  <33.622074, 41.117901, 57.896645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817081, 41.448082, 57.337727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135124, 41.223034, 57.428291>,  <34.325951, 41.088005, 57.482632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135124, 41.223034, 57.428291>,  <33.817081, 41.448082, 57.337727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135124, 41.223034, 57.428291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083842, -0.267772, -0.959827,
		0.600646, 0.782148, -0.165736,
		0.795107, -0.562621, 0.226413,
		34.373657, 41.054249, 57.496216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264477, 41.595753, 56.817345>,  <33.817081, 41.448082, 57.337727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264477, 41.595753, 56.817345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403088, 41.252472, 56.968822>,  <34.486256, 41.046505, 57.059711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403088, 41.252472, 56.968822>,  <34.264477, 41.595753, 56.817345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403088, 41.252472, 56.968822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215009, -0.320295, -0.922596,
		0.913066, 0.401129, 0.073529,
		0.346529, -0.858200, 0.378697,
		34.507046, 40.995010, 57.082432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079151, 41.510277, 56.685955>,  <34.264477, 41.595753, 56.817345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079151, 41.510277, 56.685955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900143, 41.153545, 56.712372>,  <34.792736, 40.939507, 56.728222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900143, 41.153545, 56.712372>,  <35.079151, 41.510277, 56.685955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900143, 41.153545, 56.712372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566386, -0.339815, -0.750822,
		0.692048, -0.298604, 0.657195,
		-0.447523, -0.891831, 0.066043,
		34.765884, 40.885998, 56.732185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589607, 41.198387, 56.316612>,  <35.079151, 41.510277, 56.685955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589607, 41.198387, 56.316612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285347, 40.941166, 56.352139>,  <35.102791, 40.786835, 56.373455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285347, 40.941166, 56.352139>,  <35.589607, 41.198387, 56.316612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285347, 40.941166, 56.352139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442405, -0.613639, -0.654007,
		0.475060, -0.458182, 0.751257,
		-0.760655, -0.643053, 0.088814,
		35.057152, 40.748249, 56.378784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838585, 40.568218, 56.466843>,  <35.589607, 41.198387, 56.316612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838585, 40.568218, 56.466843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478405, 40.487778, 56.312569>,  <35.262299, 40.439514, 56.220005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478405, 40.487778, 56.312569>,  <35.838585, 40.568218, 56.466843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478405, 40.487778, 56.312569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428210, -0.565509, -0.704866,
		-0.076358, -0.799849, 0.595324,
		-0.900447, -0.201102, -0.385685,
		35.208271, 40.427448, 56.196861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671501, 39.839523, 56.388062>,  <35.838585, 40.568218, 56.466843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671501, 39.839523, 56.388062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505959, 40.079220, 56.113941>,  <35.406635, 40.223038, 55.949471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505959, 40.079220, 56.113941>,  <35.671501, 39.839523, 56.388062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505959, 40.079220, 56.113941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468016, -0.505636, -0.724771,
		-0.780825, -0.620680, -0.071195,
		-0.413852, 0.599240, -0.685301,
		35.381802, 40.258991, 55.908352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307388, 39.435711, 55.735573>,  <35.671501, 39.839523, 56.388062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307388, 39.435711, 55.735573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362812, 39.807747, 55.599491>,  <35.396065, 40.030968, 55.517841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362812, 39.807747, 55.599491>,  <35.307388, 39.435711, 55.735573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362812, 39.807747, 55.599491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447710, -0.365240, -0.816183,
		-0.883378, -0.039224, -0.467017,
		0.138559, 0.930087, -0.340206,
		35.404381, 40.086773, 55.497429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014336, 39.493084, 55.041679>,  <35.307388, 39.435711, 55.735573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014336, 39.493084, 55.041679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303116, 39.766842, 55.082443>,  <35.476383, 39.931099, 55.106903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303116, 39.766842, 55.082443>,  <35.014336, 39.493084, 55.041679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303116, 39.766842, 55.082443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304983, -0.182533, -0.934702,
		-0.621104, 0.705892, -0.340509,
		0.721952, 0.684397, 0.101913,
		35.519703, 39.972160, 55.113018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027950, 39.780560, 54.402378>,  <35.014336, 39.493084, 55.041679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027950, 39.780560, 54.402378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386562, 39.886395, 54.544487>,  <35.601730, 39.949894, 54.629753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386562, 39.886395, 54.544487>,  <35.027950, 39.780560, 54.402378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386562, 39.886395, 54.544487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386170, -0.073896, -0.919463,
		-0.217025, 0.961526, -0.168426,
		0.896534, 0.264587, 0.355275,
		35.655521, 39.965771, 54.651070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251610, 40.283188, 53.887455>,  <35.027950, 39.780560, 54.402378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251610, 40.283188, 53.887455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579765, 40.159885, 54.080097>,  <35.776657, 40.085903, 54.195683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579765, 40.159885, 54.080097>,  <35.251610, 40.283188, 53.887455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579765, 40.159885, 54.080097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514062, 0.028757, -0.857271,
		0.250413, 0.950867, 0.182057,
		0.820386, -0.308261, 0.481604,
		35.825882, 40.067406, 54.224579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696693, 40.631424, 53.586571>,  <35.251610, 40.283188, 53.887455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696693, 40.631424, 53.586571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932156, 40.358971, 53.760719>,  <36.073433, 40.195499, 53.865208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932156, 40.358971, 53.760719>,  <35.696693, 40.631424, 53.586571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932156, 40.358971, 53.760719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584983, -0.012787, -0.810945,
		0.557928, 0.732049, 0.390924,
		0.588652, -0.681132, 0.435370,
		36.108753, 40.154633, 53.891331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375057, 40.790211, 53.325474>,  <35.696693, 40.631424, 53.586571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375057, 40.790211, 53.325474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416775, 40.417667, 53.465012>,  <36.441803, 40.194141, 53.548737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416775, 40.417667, 53.465012>,  <36.375057, 40.790211, 53.325474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416775, 40.417667, 53.465012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571775, -0.230851, -0.787261,
		0.813755, 0.281566, 0.508452,
		0.104289, -0.931358, 0.348849,
		36.448063, 40.138260, 53.569668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148834, 40.554470, 53.245792>,  <36.375057, 40.790211, 53.325474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148834, 40.554470, 53.245792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897549, 40.243946, 53.266552>,  <36.746777, 40.057632, 53.279007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897549, 40.243946, 53.266552>,  <37.148834, 40.554470, 53.245792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897549, 40.243946, 53.266552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500867, -0.454561, -0.736550,
		0.595378, -0.436719, 0.674389,
		-0.628217, -0.776305, 0.051898,
		36.709084, 40.011055, 53.282120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561501, 39.960400, 53.224747>,  <37.148834, 40.554470, 53.245792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561501, 39.960400, 53.224747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200005, 39.820435, 53.126099>,  <36.983109, 39.736454, 53.066910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200005, 39.820435, 53.126099>,  <37.561501, 39.960400, 53.224747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200005, 39.820435, 53.126099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383424, -0.405422, -0.829831,
		0.190384, -0.844508, 0.500560,
		-0.903736, -0.349914, -0.246619,
		36.928883, 39.715462, 53.052113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686626, 39.325027, 53.132565>,  <37.561501, 39.960400, 53.224747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686626, 39.325027, 53.132565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.332829, 39.367161, 52.950764>,  <37.120548, 39.392441, 52.841682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.332829, 39.367161, 52.950764>,  <37.686626, 39.325027, 53.132565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332829, 39.367161, 52.950764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313181, -0.588026, -0.745750,
		-0.345811, -0.801954, 0.487118,
		-0.884496, 0.105332, -0.454503,
		37.067478, 39.398762, 52.814411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432358, 38.664928, 52.975666>,  <37.686626, 39.325027, 53.132565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432358, 38.664928, 52.975666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234787, 38.908054, 52.726959>,  <37.116245, 39.053928, 52.577736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234787, 38.908054, 52.726959>,  <37.432358, 38.664928, 52.975666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234787, 38.908054, 52.726959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310651, -0.544529, -0.779092,
		-0.812113, -0.577970, 0.080141,
		-0.493931, 0.607815, -0.621766,
		37.086609, 39.090397, 52.540428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907742, 38.236897, 52.540150>,  <37.432358, 38.664928, 52.975666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907742, 38.236897, 52.540150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982330, 38.569382, 52.330650>,  <37.027084, 38.768875, 52.204952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982330, 38.569382, 52.330650>,  <36.907742, 38.236897, 52.540150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982330, 38.569382, 52.330650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048900, -0.540289, -0.840058,
		-0.981243, 0.131034, -0.141394,
		0.186470, 0.831215, -0.523747,
		37.038273, 38.818745, 52.173527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498009, 38.234020, 51.973217>,  <36.907742, 38.236897, 52.540150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498009, 38.234020, 51.973217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763622, 38.506657, 51.850254>,  <36.922989, 38.670238, 51.776478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763622, 38.506657, 51.850254>,  <36.498009, 38.234020, 51.973217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763622, 38.506657, 51.850254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085687, -0.477796, -0.874282,
		-0.742779, 0.554209, -0.375674,
		0.664030, 0.681589, -0.307409,
		36.962830, 38.711132, 51.758030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248177, 38.468899, 51.332397>,  <36.498009, 38.234020, 51.973217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248177, 38.468899, 51.332397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628773, 38.589909, 51.309986>,  <36.857132, 38.662514, 51.296539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628773, 38.589909, 51.309986>,  <36.248177, 38.468899, 51.332397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628773, 38.589909, 51.309986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060384, -0.362185, -0.930148,
		-0.301688, 0.881646, -0.362884,
		0.951492, 0.302527, -0.056029,
		36.914219, 38.680668, 51.293179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308479, 38.643494, 50.628437>,  <36.248177, 38.468899, 51.332397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308479, 38.643494, 50.628437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686275, 38.607475, 50.754818>,  <36.912952, 38.585865, 50.830647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686275, 38.607475, 50.754818>,  <36.308479, 38.643494, 50.628437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686275, 38.607475, 50.754818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256814, -0.397395, -0.880979,
		0.204889, 0.913219, -0.352210,
		0.944493, -0.090051, 0.315949,
		36.969624, 38.580460, 50.849602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723186, 38.862411, 50.113476>,  <36.308479, 38.643494, 50.628437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723186, 38.862411, 50.113476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975662, 38.631096, 50.320236>,  <37.127148, 38.492306, 50.444294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975662, 38.631096, 50.320236>,  <36.723186, 38.862411, 50.113476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975662, 38.631096, 50.320236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131725, -0.576828, -0.806175,
		0.764363, 0.576936, -0.287912,
		0.631187, -0.578286, 0.516903,
		37.165020, 38.457611, 50.475307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386139, 38.755833, 49.744499>,  <36.723186, 38.862411, 50.113476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386139, 38.755833, 49.744499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357391, 38.454594, 50.006084>,  <37.340145, 38.273849, 50.163036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357391, 38.454594, 50.006084>,  <37.386139, 38.755833, 49.744499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357391, 38.454594, 50.006084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271604, -0.645662, -0.713689,
		0.959722, 0.126330, 0.250946,
		-0.071866, -0.753101, 0.653968,
		37.335831, 38.228664, 50.202274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921688, 38.366898, 49.494129>,  <37.386139, 38.755833, 49.744499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921688, 38.366898, 49.494129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722221, 38.116016, 49.733444>,  <37.602539, 37.965488, 49.877033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722221, 38.116016, 49.733444>,  <37.921688, 38.366898, 49.494129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722221, 38.116016, 49.733444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153647, -0.743261, -0.651119,
		0.853066, -0.232768, 0.467009,
		-0.498669, -0.627202, 0.598287,
		37.572620, 37.927856, 49.912930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242939, 37.785107, 49.422424>,  <37.921688, 38.366898, 49.494129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242939, 37.785107, 49.422424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889076, 37.659660, 49.560425>,  <37.676758, 37.584393, 49.643223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889076, 37.659660, 49.560425>,  <38.242939, 37.785107, 49.422424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889076, 37.659660, 49.560425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022647, -0.767996, -0.640054,
		0.465687, -0.558417, 0.686517,
		-0.884659, -0.313613, 0.345000,
		37.623680, 37.565578, 49.663925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344246, 37.006687, 49.645882>,  <38.242939, 37.785107, 49.422424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344246, 37.006687, 49.645882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950081, 37.071110, 49.623867>,  <37.713581, 37.109764, 49.610661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950081, 37.071110, 49.623867>,  <38.344246, 37.006687, 49.645882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950081, 37.071110, 49.623867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084805, -0.744964, -0.661692,
		-0.147567, -0.647371, 0.747753,
		-0.985410, 0.161057, -0.055032,
		37.654457, 37.119427, 49.607357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005688, 36.361950, 49.764122>,  <38.344246, 37.006687, 49.645882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005688, 36.361950, 49.764122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741489, 36.591087, 49.569973>,  <37.582970, 36.728569, 49.453484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741489, 36.591087, 49.569973>,  <38.005688, 36.361950, 49.764122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741489, 36.591087, 49.569973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091618, -0.703111, -0.705153,
		-0.745218, -0.421283, 0.516886,
		-0.660497, 0.572849, -0.485374,
		37.543339, 36.762939, 49.424362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523346, 35.932682, 49.611797>,  <38.005688, 36.361950, 49.764122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523346, 35.932682, 49.611797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511147, 36.229958, 49.344444>,  <37.503826, 36.408321, 49.184032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511147, 36.229958, 49.344444>,  <37.523346, 35.932682, 49.611797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511147, 36.229958, 49.344444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146244, -0.664819, -0.732549,
		-0.988778, 0.075404, 0.128964,
		-0.030501, 0.743189, -0.668386,
		37.501995, 36.452915, 49.143929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983597, 35.726471, 49.313393>,  <37.523346, 35.932682, 49.611797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983597, 35.726471, 49.313393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149010, 35.953011, 49.028229>,  <37.248257, 36.088936, 48.857132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149010, 35.953011, 49.028229>,  <36.983597, 35.726471, 49.313393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149010, 35.953011, 49.028229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371730, -0.609745, -0.700020,
		-0.831151, 0.554488, -0.041616,
		0.413528, 0.566352, -0.712909,
		37.273067, 36.122917, 48.814358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453728, 35.940460, 48.809616>,  <36.983597, 35.726471, 49.313393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453728, 35.940460, 48.809616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785172, 36.031326, 48.604950>,  <36.984039, 36.085846, 48.482151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785172, 36.031326, 48.604950>,  <36.453728, 35.940460, 48.809616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785172, 36.031326, 48.604950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363874, -0.476026, -0.800622,
		-0.425435, 0.849586, -0.311783,
		0.828613, 0.227163, -0.511661,
		37.033756, 36.099476, 48.451450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262218, 36.199081, 48.211079>,  <36.453728, 35.940460, 48.809616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262218, 36.199081, 48.211079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636726, 36.086575, 48.126907>,  <36.861431, 36.019070, 48.076405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636726, 36.086575, 48.126907>,  <36.262218, 36.199081, 48.211079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636726, 36.086575, 48.126907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309824, -0.378932, -0.872020,
		0.165535, 0.881645, -0.441928,
		0.936273, -0.281270, -0.210428,
		36.917610, 36.002193, 48.063778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440521, 36.269039, 47.427151>,  <36.262218, 36.199081, 48.211079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440521, 36.269039, 47.427151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651234, 35.988373, 47.619053>,  <36.777660, 35.819973, 47.734196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651234, 35.988373, 47.619053>,  <36.440521, 36.269039, 47.427151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651234, 35.988373, 47.619053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214182, -0.655783, -0.723930,
		0.822574, 0.278596, -0.495738,
		0.526781, -0.701664, 0.479760,
		36.809269, 35.777874, 47.762981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769066, 36.167915, 47.358749>,  <36.440521, 36.269039, 47.427151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769066, 36.167915, 47.358749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419495, 36.220715, 47.171635>,  <35.209751, 36.252392, 47.059364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419495, 36.220715, 47.171635>,  <35.769066, 36.167915, 47.358749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419495, 36.220715, 47.171635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370889, 0.440949, 0.817316,
		0.314154, 0.887773, -0.336402,
		-0.873927, 0.131995, -0.467791,
		35.157318, 36.260315, 47.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583042, 36.825531, 47.494793>,  <35.769066, 36.167915, 47.358749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583042, 36.825531, 47.494793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243156, 36.642456, 47.390095>,  <35.039227, 36.532612, 47.327274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243156, 36.642456, 47.390095>,  <35.583042, 36.825531, 47.494793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243156, 36.642456, 47.390095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485548, 0.485766, 0.726825,
		-0.205514, 0.744681, -0.634991,
		-0.849710, -0.457691, -0.261747,
		34.988243, 36.505150, 47.311569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091885, 37.303532, 47.618793>,  <35.583042, 36.825531, 47.494793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091885, 37.303532, 47.618793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.919178, 36.942947, 47.606457>,  <34.815556, 36.726597, 47.599056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.919178, 36.942947, 47.606457>,  <35.091885, 37.303532, 47.618793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919178, 36.942947, 47.606457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589266, 0.256020, 0.766302,
		-0.682893, 0.349039, -0.641739,
		-0.431767, -0.901457, -0.030843,
		34.789646, 36.672508, 47.597202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408451, 37.507893, 47.302086>,  <35.091885, 37.303532, 47.618793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408451, 37.507893, 47.302086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358925, 37.153156, 47.480156>,  <34.329208, 36.940315, 47.586998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358925, 37.153156, 47.480156>,  <34.408451, 37.507893, 47.302086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358925, 37.153156, 47.480156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679411, 0.402741, 0.613351,
		-0.723236, -0.226510, -0.652398,
		-0.123818, -0.886844, 0.445170,
		34.321781, 36.887104, 47.613708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775597, 37.367828, 47.467228>,  <34.408451, 37.507893, 47.302086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775597, 37.367828, 47.467228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914864, 37.100628, 47.730305>,  <33.998425, 36.940308, 47.888149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914864, 37.100628, 47.730305>,  <33.775597, 37.367828, 47.467228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914864, 37.100628, 47.730305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696840, 0.284867, 0.658228,
		-0.627050, -0.687480, -0.366305,
		0.348171, -0.667998, 0.657689,
		34.019314, 36.900227, 47.927612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137127, 37.099468, 47.861992>,  <33.775597, 37.367828, 47.467228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137127, 37.099468, 47.861992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443607, 37.000687, 48.099293>,  <33.627495, 36.941418, 48.241673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443607, 37.000687, 48.099293>,  <33.137127, 37.099468, 47.861992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443607, 37.000687, 48.099293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530399, 0.278166, 0.800812,
		-0.362784, -0.928245, 0.082150,
		0.766202, -0.246949, 0.593254,
		33.673470, 36.926601, 48.277267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850330, 36.733620, 48.459667>,  <33.137127, 37.099468, 47.861992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850330, 36.733620, 48.459667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204544, 36.863522, 48.592548>,  <33.417072, 36.941463, 48.672276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204544, 36.863522, 48.592548>,  <32.850330, 36.733620, 48.459667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204544, 36.863522, 48.592548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428669, 0.295555, 0.853751,
		0.179078, -0.898432, 0.400938,
		0.885536, 0.324758, 0.332202,
		33.470203, 36.960949, 48.692207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928604, 36.672543, 49.213543>,  <32.850330, 36.733620, 48.459667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928604, 36.672543, 49.213543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197994, 36.956402, 49.130772>,  <33.359631, 37.126717, 49.081108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197994, 36.956402, 49.130772>,  <32.928604, 36.672543, 49.213543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197994, 36.956402, 49.130772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400004, 0.585272, 0.705304,
		0.621631, -0.392235, 0.678032,
		0.673478, 0.709654, -0.206928,
		33.400040, 37.169296, 49.068695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341549, 36.831207, 49.834179>,  <32.928604, 36.672543, 49.213543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341549, 36.831207, 49.834179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381752, 37.161457, 49.612103>,  <33.405872, 37.359608, 49.478855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381752, 37.161457, 49.612103>,  <33.341549, 36.831207, 49.834179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381752, 37.161457, 49.612103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243671, 0.561448, 0.790823,
		0.964636, 0.055804, 0.257609,
		0.100503, 0.825628, -0.555191,
		33.411903, 37.409145, 49.445545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698059, 37.282795, 50.233402>,  <33.341549, 36.831207, 49.834179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698059, 37.282795, 50.233402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529495, 37.510372, 49.950920>,  <33.428356, 37.646919, 49.781429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529495, 37.510372, 49.950920>,  <33.698059, 37.282795, 50.233402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529495, 37.510372, 49.950920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255731, 0.672572, 0.694442,
		0.870068, 0.473240, -0.137931,
		-0.421406, 0.568938, -0.706205,
		33.403072, 37.681053, 49.739059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878036, 37.998173, 50.286011>,  <33.698059, 37.282795, 50.233402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878036, 37.998173, 50.286011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533756, 38.003952, 50.082447>,  <33.327187, 38.007420, 49.960308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533756, 38.003952, 50.082447>,  <33.878036, 37.998173, 50.286011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533756, 38.003952, 50.082447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392547, 0.617694, 0.681440,
		0.324194, 0.786286, -0.525978,
		-0.860700, 0.014448, -0.508907,
		33.275547, 38.008286, 49.929775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717155, 38.698475, 50.322632>,  <33.878036, 37.998173, 50.286011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717155, 38.698475, 50.322632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.369076, 38.527157, 50.225208>,  <33.160229, 38.424366, 50.166756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.369076, 38.527157, 50.225208>,  <33.717155, 38.698475, 50.322632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369076, 38.527157, 50.225208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475632, 0.601256, 0.642079,
		-0.128556, 0.674580, -0.726922,
		-0.870200, -0.428290, -0.243556,
		33.108017, 38.398670, 50.152142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307755, 39.208469, 50.185104>,  <33.717155, 38.698475, 50.322632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307755, 39.208469, 50.185104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076126, 38.891991, 50.263779>,  <32.937149, 38.702103, 50.310982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076126, 38.891991, 50.263779>,  <33.307755, 39.208469, 50.185104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076126, 38.891991, 50.263779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388190, 0.479721, 0.786878,
		-0.716931, 0.379303, -0.584926,
		-0.579066, -0.791200, 0.196685,
		32.902405, 38.654633, 50.322784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665623, 39.475498, 50.408096>,  <33.307755, 39.208469, 50.185104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665623, 39.475498, 50.408096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.651314, 39.098099, 50.539871>,  <32.642727, 38.871658, 50.618935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.651314, 39.098099, 50.539871>,  <32.665623, 39.475498, 50.408096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651314, 39.098099, 50.539871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358801, 0.319794, 0.876923,
		-0.932728, -0.086833, -0.349969,
		-0.035772, -0.943500, 0.329437,
		32.640583, 38.815048, 50.638702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044930, 39.496990, 50.779545>,  <32.665623, 39.475498, 50.408096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044930, 39.496990, 50.779545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.214966, 39.158775, 50.908764>,  <32.316990, 38.955845, 50.986294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.214966, 39.158775, 50.908764>,  <32.044930, 39.496990, 50.779545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214966, 39.158775, 50.908764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171339, 0.275278, 0.945973,
		-0.888784, -0.457478, -0.027855,
		0.425094, -0.845539, 0.323046,
		32.342495, 38.905113, 51.005676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501436, 39.179562, 51.302643>,  <32.044930, 39.496990, 50.779545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501436, 39.179562, 51.302643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875862, 39.063061, 51.381592>,  <32.100517, 38.993160, 51.428963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875862, 39.063061, 51.381592>,  <31.501436, 39.179562, 51.302643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875862, 39.063061, 51.381592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096386, 0.327242, 0.940012,
		-0.338365, -0.898937, 0.278247,
		0.936066, -0.291248, 0.197372,
		32.156681, 38.975685, 51.440804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451902, 38.678459, 51.944069>,  <31.501436, 39.179562, 51.302643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451902, 38.678459, 51.944069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826077, 38.819603, 51.935547>,  <32.050579, 38.904289, 51.930435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826077, 38.819603, 51.935547>,  <31.451902, 38.678459, 51.944069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826077, 38.819603, 51.935547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010619, 0.088287, 0.996038,
		0.353342, -0.931502, 0.086334,
		0.935434, 0.352859, -0.021304,
		32.106709, 38.925461, 51.929157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761856, 38.437469, 52.562595>,  <31.451902, 38.678459, 51.944069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761856, 38.437469, 52.562595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044708, 38.704567, 52.469574>,  <32.214420, 38.864826, 52.413761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044708, 38.704567, 52.469574>,  <31.761856, 38.437469, 52.562595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044708, 38.704567, 52.469574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142035, 0.188048, 0.971835,
		0.692672, -0.720244, 0.038130,
		0.707129, 0.667748, -0.232556,
		32.256847, 38.904892, 52.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530781, 38.201084, 52.737659>,  <31.761856, 38.437469, 52.562595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530781, 38.201084, 52.737659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541294, 38.598862, 52.696896>,  <32.547604, 38.837528, 52.672436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541294, 38.598862, 52.696896>,  <32.530781, 38.201084, 52.737659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541294, 38.598862, 52.696896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435857, 0.080345, 0.896423,
		0.899632, -0.067978, -0.431324,
		0.026283, 0.994446, -0.101910,
		32.549179, 38.897194, 52.666321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078465, 38.438358, 53.132889>,  <32.530781, 38.201084, 52.737659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078465, 38.438358, 53.132889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882900, 38.783012, 53.078407>,  <32.765560, 38.989803, 53.045719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882900, 38.783012, 53.078407>,  <33.078465, 38.438358, 53.132889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882900, 38.783012, 53.078407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205396, 0.265451, 0.941992,
		0.847806, 0.432578, -0.306759,
		-0.488914, 0.861633, -0.136201,
		32.736225, 39.041504, 53.037548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535503, 38.931190, 53.469784>,  <33.078465, 38.438358, 53.132889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535503, 38.931190, 53.469784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.174019, 39.100719, 53.445530>,  <32.957127, 39.202435, 53.430977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.174019, 39.100719, 53.445530>,  <33.535503, 38.931190, 53.469784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174019, 39.100719, 53.445530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118863, 0.384419, 0.915474,
		0.411303, 0.820121, -0.397782,
		-0.903715, 0.423819, -0.060630,
		32.902905, 39.227867, 53.427341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601913, 39.614326, 53.687641>,  <33.535503, 38.931190, 53.469784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601913, 39.614326, 53.687641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.211178, 39.545082, 53.737953>,  <32.976738, 39.503536, 53.768139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.211178, 39.545082, 53.737953>,  <33.601913, 39.614326, 53.687641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211178, 39.545082, 53.737953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023368, 0.498002, 0.866861,
		-0.212701, 0.849722, -0.482422,
		-0.976838, -0.173109, 0.125782,
		32.918125, 39.493149, 53.775688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207905, 40.267727, 53.977489>,  <33.601913, 39.614326, 53.687641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207905, 40.267727, 53.977489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957962, 39.968323, 54.066292>,  <32.807999, 39.788681, 54.119576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957962, 39.968323, 54.066292>,  <33.207905, 40.267727, 53.977489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957962, 39.968323, 54.066292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184334, 0.417758, 0.889662,
		-0.758669, 0.514985, -0.399014,
		-0.624854, -0.748511, 0.222010,
		32.770504, 39.743771, 54.132896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593979, 40.622471, 54.193886>,  <33.207905, 40.267727, 53.977489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593979, 40.622471, 54.193886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536716, 40.251675, 54.332565>,  <32.502357, 40.029198, 54.415775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536716, 40.251675, 54.332565>,  <32.593979, 40.622471, 54.193886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536716, 40.251675, 54.332565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209847, 0.370776, 0.904704,
		-0.967197, 0.056763, -0.247605,
		-0.143159, -0.926986, 0.346702,
		32.493767, 39.973579, 54.436577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960665, 40.589954, 54.539913>,  <32.593979, 40.622471, 54.193886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960665, 40.589954, 54.539913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164604, 40.283199, 54.695831>,  <32.286968, 40.099148, 54.789383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164604, 40.283199, 54.695831>,  <31.960665, 40.589954, 54.539913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164604, 40.283199, 54.695831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318136, 0.252908, 0.913689,
		-0.799277, -0.589851, -0.115029,
		0.509849, -0.766885, 0.389796,
		32.317558, 40.053135, 54.812771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576811, 40.414715, 55.018429>,  <31.960665, 40.589954, 54.539913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576811, 40.414715, 55.018429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899057, 40.199730, 55.118118>,  <32.092407, 40.070740, 55.177933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899057, 40.199730, 55.118118>,  <31.576811, 40.414715, 55.018429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899057, 40.199730, 55.118118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266914, 0.046288, 0.962608,
		-0.528902, -0.842016, -0.106166,
		0.805617, -0.537463, 0.249228,
		32.140743, 40.038490, 55.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301470, 39.844826, 55.294849>,  <31.576811, 40.414715, 55.018429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301470, 39.844826, 55.294849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.669842, 39.908005, 55.437366>,  <31.890865, 39.945911, 55.522877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.669842, 39.908005, 55.437366>,  <31.301470, 39.844826, 55.294849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669842, 39.908005, 55.437366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387717, 0.278457, 0.878714,
		0.039577, -0.947373, 0.317677,
		0.920929, 0.157945, 0.356292,
		31.946121, 39.955387, 55.544254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421167, 39.521645, 55.977581>,  <31.301470, 39.844826, 55.294849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421167, 39.521645, 55.977581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686239, 39.821087, 55.969135>,  <31.845284, 40.000751, 55.964066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686239, 39.821087, 55.969135>,  <31.421167, 39.521645, 55.977581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686239, 39.821087, 55.969135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372016, 0.353527, 0.858267,
		0.649968, -0.560901, 0.512768,
		0.662681, 0.748604, -0.021117,
		31.885044, 40.045670, 55.962799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652460, 39.506947, 56.572186>,  <31.421167, 39.521645, 55.977581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652460, 39.506947, 56.572186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737419, 39.880722, 56.457844>,  <31.788395, 40.104988, 56.389240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737419, 39.880722, 56.457844>,  <31.652460, 39.506947, 56.572186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737419, 39.880722, 56.457844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174776, 0.324140, 0.929724,
		0.961426, -0.147512, 0.232164,
		0.212399, 0.934438, -0.285855,
		31.801138, 40.161053, 56.372086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089958, 39.798981, 57.185951>,  <31.652460, 39.506947, 56.572186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089958, 39.798981, 57.185951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961393, 40.108521, 56.967651>,  <31.884254, 40.294247, 56.836670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961393, 40.108521, 56.967651>,  <32.089958, 39.798981, 57.185951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961393, 40.108521, 56.967651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068556, 0.555802, 0.828483,
		0.944454, 0.303701, -0.125590,
		-0.321414, 0.773854, -0.545750,
		31.864969, 40.340675, 56.803928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434563, 40.216755, 57.473362>,  <32.089958, 39.798981, 57.185951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434563, 40.216755, 57.473362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155434, 40.425762, 57.277397>,  <31.987955, 40.551167, 57.159817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155434, 40.425762, 57.277397>,  <32.434563, 40.216755, 57.473362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155434, 40.425762, 57.277397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087406, 0.616743, 0.782297,
		0.710916, 0.588727, -0.384707,
		-0.697825, 0.522521, -0.489911,
		31.946087, 40.582520, 57.130424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613770, 40.921329, 57.508965>,  <32.434563, 40.216755, 57.473362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613770, 40.921329, 57.508965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.224968, 40.926155, 57.415100>,  <31.991688, 40.929050, 57.358784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.224968, 40.926155, 57.415100>,  <32.613770, 40.921329, 57.508965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224968, 40.926155, 57.415100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153693, 0.722777, 0.673774,
		0.177732, 0.690976, -0.700688,
		-0.972003, 0.012060, -0.234659,
		31.933367, 40.929771, 57.344704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373867, 41.628048, 57.590950>,  <32.613770, 40.921329, 57.508965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373867, 41.628048, 57.590950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065136, 41.376785, 57.630348>,  <31.879898, 41.226028, 57.653988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065136, 41.376785, 57.630348>,  <32.373867, 41.628048, 57.590950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065136, 41.376785, 57.630348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284554, 0.479774, 0.829967,
		-0.568609, 0.612562, -0.549047,
		-0.771825, -0.628160, 0.098497,
		31.833588, 41.188335, 57.659897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871496, 42.013935, 57.737705>,  <32.373867, 41.628048, 57.590950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871496, 42.013935, 57.737705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757343, 41.657272, 57.878277>,  <31.688852, 41.443275, 57.962620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757343, 41.657272, 57.878277>,  <31.871496, 42.013935, 57.737705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757343, 41.657272, 57.878277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401176, 0.444145, 0.801120,
		-0.870412, 0.087638, -0.484462,
		-0.285380, -0.891658, 0.351431,
		31.671730, 41.389774, 57.983707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189657, 42.101368, 58.117851>,  <31.871496, 42.013935, 57.737705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189657, 42.101368, 58.117851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304678, 41.751179, 58.273216>,  <31.373690, 41.541065, 58.366436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304678, 41.751179, 58.273216>,  <31.189657, 42.101368, 58.117851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304678, 41.751179, 58.273216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412189, 0.252945, 0.875282,
		-0.864531, -0.411789, -0.288125,
		0.287552, -0.875471, 0.388413,
		31.390944, 41.488537, 58.389740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714981, 41.927872, 58.554638>,  <31.189657, 42.101368, 58.117851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714981, 41.927872, 58.554638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977961, 41.652359, 58.676846>,  <31.135748, 41.487053, 58.750172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977961, 41.652359, 58.676846>,  <30.714981, 41.927872, 58.554638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977961, 41.652359, 58.676846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522011, -0.123940, 0.843886,
		-0.543387, -0.714296, -0.441036,
		0.657446, -0.688782, 0.305522,
		31.175194, 41.445724, 58.768501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381241, 41.390362, 58.939217>,  <30.714981, 41.927872, 58.554638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381241, 41.390362, 58.939217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766394, 41.376945, 59.046352>,  <30.997484, 41.368896, 59.110634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766394, 41.376945, 59.046352>,  <30.381241, 41.390362, 58.939217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766394, 41.376945, 59.046352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268148, -0.005003, 0.963365,
		-0.030967, -0.999425, -0.013810,
		0.962880, -0.033536, 0.267839,
		31.055258, 41.366882, 59.126705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015989, 40.698509, 58.696796>,  <30.381241, 41.390362, 58.939217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015989, 40.698509, 58.696796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101616, 40.814430, 58.323662>,  <30.152992, 40.883984, 58.099781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101616, 40.814430, 58.323662>,  <30.015989, 40.698509, 58.696796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101616, 40.814430, 58.323662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501252, 0.852247, 0.149737,
		0.838404, 0.435535, 0.327702,
		0.214067, 0.289801, -0.932840,
		30.165836, 40.901371, 58.043808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024103, 40.766251, 59.474411>,  <30.015989, 40.698509, 58.696796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024103, 40.766251, 59.474411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667387, 40.600178, 59.546341>,  <29.453358, 40.500534, 59.589500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667387, 40.600178, 59.546341>,  <30.024103, 40.766251, 59.474411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667387, 40.600178, 59.546341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108238, -0.581674, -0.806188,
		0.439315, -0.699486, 0.563669,
		-0.891788, -0.415181, 0.179828,
		29.399851, 40.475624, 59.600288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184708, 40.136200, 59.489738>,  <30.024103, 40.766251, 59.474411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184708, 40.136200, 59.489738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794628, 40.156197, 59.403492>,  <29.560581, 40.168194, 59.351746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794628, 40.156197, 59.403492>,  <30.184708, 40.136200, 59.489738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794628, 40.156197, 59.403492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151220, -0.560864, -0.813980,
		-0.161620, -0.826397, 0.539395,
		-0.975198, 0.049988, -0.215615,
		29.502069, 40.171192, 59.338806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856180, 39.436157, 59.203144>,  <30.184708, 40.136200, 59.489738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856180, 39.436157, 59.203144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571911, 39.700764, 59.107365>,  <29.401348, 39.859528, 59.049896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571911, 39.700764, 59.107365>,  <29.856180, 39.436157, 59.203144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571911, 39.700764, 59.107365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150340, -0.475295, -0.866886,
		-0.687269, -0.580076, 0.437233,
		-0.710675, 0.661518, -0.239448,
		29.358707, 39.899220, 59.035530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240845, 39.007149, 58.936100>,  <29.856180, 39.436157, 59.203144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240845, 39.007149, 58.936100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.195625, 39.376522, 58.789410>,  <29.168493, 39.598145, 58.701393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.195625, 39.376522, 58.789410>,  <29.240845, 39.007149, 58.936100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195625, 39.376522, 58.789410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266288, -0.383752, -0.884209,
		-0.957241, -0.002303, 0.289282,
		-0.113049, 0.923433, -0.366729,
		29.161711, 39.653553, 58.679390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648943, 39.017403, 58.571739>,  <29.240845, 39.007149, 58.936100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648943, 39.017403, 58.571739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860497, 39.331219, 58.442265>,  <28.987429, 39.519508, 58.364578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860497, 39.331219, 58.442265>,  <28.648943, 39.017403, 58.571739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860497, 39.331219, 58.442265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107222, -0.316572, -0.942489,
		-0.841893, 0.533175, -0.083311,
		0.528886, 0.784542, -0.323688,
		29.019163, 39.566582, 58.345158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308342, 39.185116, 57.889614>,  <28.648943, 39.017403, 58.571739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308342, 39.185116, 57.889614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.638416, 39.411045, 57.892296>,  <28.836462, 39.546600, 57.893906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.638416, 39.411045, 57.892296>,  <28.308342, 39.185116, 57.889614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638416, 39.411045, 57.892296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006675, 0.002121, -0.999976,
		-0.564819, 0.825213, -0.002020,
		0.825188, 0.564819, 0.006706,
		28.885973, 39.580490, 57.894306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205732, 39.676380, 57.412468>,  <28.308342, 39.185116, 57.889614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205732, 39.676380, 57.412468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.600796, 39.620323, 57.440441>,  <28.837833, 39.586689, 57.457226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.600796, 39.620323, 57.440441>,  <28.205732, 39.676380, 57.412468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600796, 39.620323, 57.440441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048348, -0.151908, -0.987211,
		0.148972, 0.978409, -0.143258,
		0.987659, -0.140140, 0.069934,
		28.897093, 39.578281, 57.461422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470459, 40.059177, 56.856133>,  <28.205732, 39.676380, 57.412468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470459, 40.059177, 56.856133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.774937, 39.826443, 56.970711>,  <28.957624, 39.686802, 57.039459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.774937, 39.826443, 56.970711>,  <28.470459, 40.059177, 56.856133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774937, 39.826443, 56.970711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277771, -0.106624, -0.954712,
		0.586024, 0.806289, 0.080455,
		0.761195, -0.581832, 0.286448,
		29.003296, 39.651894, 57.056644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012142, 40.324028, 56.477444>,  <28.470459, 40.059177, 56.856133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012142, 40.324028, 56.477444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103148, 39.947853, 56.578491>,  <29.157751, 39.722149, 56.639118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103148, 39.947853, 56.578491>,  <29.012142, 40.324028, 56.477444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103148, 39.947853, 56.578491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291560, -0.181733, -0.939130,
		0.929102, 0.287318, 0.232847,
		0.227513, -0.940437, 0.252619,
		29.171402, 39.665722, 56.654278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562042, 40.188747, 56.047878>,  <29.012142, 40.324028, 56.477444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562042, 40.188747, 56.047878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.437738, 39.826679, 56.163876>,  <29.363155, 39.609440, 56.233475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.437738, 39.826679, 56.163876>,  <29.562042, 40.188747, 56.047878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437738, 39.826679, 56.163876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104223, -0.335713, -0.936181,
		0.944757, -0.260702, 0.198665,
		-0.310759, -0.905169, 0.289996,
		29.344511, 39.555130, 56.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981537, 39.676243, 55.802860>,  <29.562042, 40.188747, 56.047878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981537, 39.676243, 55.802860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664602, 39.443966, 55.877689>,  <29.474442, 39.304600, 55.922588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664602, 39.443966, 55.877689>,  <29.981537, 39.676243, 55.802860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664602, 39.443966, 55.877689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141297, -0.472967, -0.869676,
		0.593495, -0.662644, 0.456800,
		-0.792338, -0.580693, 0.187074,
		29.426901, 39.269756, 55.933811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115229, 39.024933, 55.569252>,  <29.981537, 39.676243, 55.802860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115229, 39.024933, 55.569252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715271, 39.029850, 55.566181>,  <29.475296, 39.032799, 55.564339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715271, 39.029850, 55.566181>,  <30.115229, 39.024933, 55.569252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715271, 39.029850, 55.566181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002612, -0.368012, -0.929817,
		-0.014253, -0.929740, 0.367941,
		-0.999895, 0.012292, -0.007674,
		29.415302, 39.033539, 55.563881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840906, 38.407566, 55.337906>,  <30.115229, 39.024933, 55.569252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840906, 38.407566, 55.337906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593019, 38.711239, 55.258320>,  <29.444288, 38.893444, 55.210567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593019, 38.711239, 55.258320>,  <29.840906, 38.407566, 55.337906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593019, 38.711239, 55.258320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174155, -0.114169, -0.978077,
		-0.765258, -0.640782, -0.061463,
		-0.619717, 0.759186, -0.198965,
		29.407104, 38.938995, 55.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292456, 38.167065, 54.838974>,  <29.840906, 38.407566, 55.337906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292456, 38.167065, 54.838974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.285406, 38.564472, 54.794071>,  <29.281176, 38.802917, 54.767132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.285406, 38.564472, 54.794071>,  <29.292456, 38.167065, 54.838974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285406, 38.564472, 54.794071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068878, -0.113210, -0.991181,
		-0.997469, -0.009737, 0.070427,
		-0.017625, 0.993523, -0.112253,
		29.280119, 38.862530, 54.760395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812912, 38.194309, 54.406303>,  <29.292456, 38.167065, 54.838974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812912, 38.194309, 54.406303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.977833, 38.557770, 54.379898>,  <29.076786, 38.775845, 54.364056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.977833, 38.557770, 54.379898>,  <28.812912, 38.194309, 54.406303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977833, 38.557770, 54.379898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070955, -0.104265, -0.992015,
		-0.908280, 0.404327, -0.107462,
		0.412303, 0.908652, -0.066013,
		29.101524, 38.830364, 54.360096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398758, 38.653309, 53.861877>,  <28.812912, 38.194309, 54.406303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398758, 38.653309, 53.861877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.776085, 38.781536, 53.896275>,  <29.002481, 38.858471, 53.916912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.776085, 38.781536, 53.896275>,  <28.398758, 38.653309, 53.861877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776085, 38.781536, 53.896275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136081, -0.137237, -0.981146,
		-0.302719, 0.937232, -0.173080,
		0.943315, 0.320564, 0.085995,
		29.059080, 38.877705, 53.922073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545313, 38.956078, 53.202553>,  <28.398758, 38.653309, 53.861877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545313, 38.956078, 53.202553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.914782, 38.881287, 53.336346>,  <29.136463, 38.836414, 53.416622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.914782, 38.881287, 53.336346>,  <28.545313, 38.956078, 53.202553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914782, 38.881287, 53.336346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328030, -0.065367, -0.942403,
		0.198068, 0.980188, 0.000955,
		0.923669, -0.186973, 0.334478,
		29.191883, 38.825195, 53.436687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917377, 39.104317, 52.713310>,  <28.545313, 38.956078, 53.202553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917377, 39.104317, 52.713310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198574, 38.906143, 52.917408>,  <29.367292, 38.787239, 53.039867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198574, 38.906143, 52.917408>,  <28.917377, 39.104317, 52.713310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198574, 38.906143, 52.917408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416840, -0.294262, -0.860032,
		0.576235, 0.817284, -0.000347,
		0.702992, -0.495436, 0.510241,
		29.409472, 38.757511, 53.070480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582306, 39.345989, 52.465981>,  <28.917377, 39.104317, 52.713310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582306, 39.345989, 52.465981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638636, 38.994717, 52.648827>,  <29.672434, 38.783951, 52.758533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638636, 38.994717, 52.648827>,  <29.582306, 39.345989, 52.465981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638636, 38.994717, 52.648827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356437, -0.385786, -0.850953,
		0.923646, 0.282769, 0.258691,
		0.140824, -0.878186, 0.457119,
		29.680883, 38.731262, 52.785961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291901, 39.200428, 52.460209>,  <29.582306, 39.345989, 52.465981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291901, 39.200428, 52.460209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134409, 38.835785, 52.507450>,  <30.039913, 38.617001, 52.535793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134409, 38.835785, 52.507450>,  <30.291901, 39.200428, 52.460209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134409, 38.835785, 52.507450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509939, -0.323507, -0.797061,
		0.764814, -0.253601, 0.592238,
		-0.393728, -0.911608, 0.118101,
		30.016291, 38.562302, 52.542881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776180, 38.667381, 52.342129>,  <30.291901, 39.200428, 52.460209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776180, 38.667381, 52.342129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435102, 38.464020, 52.294067>,  <30.230455, 38.342003, 52.265232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435102, 38.464020, 52.294067>,  <30.776180, 38.667381, 52.342129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435102, 38.464020, 52.294067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411560, -0.512097, -0.753907,
		0.321756, -0.692305, 0.645901,
		-0.852697, -0.508401, -0.120155,
		30.179293, 38.311501, 52.258022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022022, 37.979450, 52.213715>,  <30.776180, 38.667381, 52.342129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022022, 37.979450, 52.213715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650169, 37.996918, 52.067360>,  <30.427057, 38.007401, 51.979546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650169, 37.996918, 52.067360>,  <31.022022, 37.979450, 52.213715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650169, 37.996918, 52.067360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269513, -0.596543, -0.755976,
		-0.251281, -0.801392, 0.542797,
		-0.929635, 0.043672, -0.365886,
		30.371279, 38.010021, 51.957596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811699, 37.309238, 52.034241>,  <31.022022, 37.979450, 52.213715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811699, 37.309238, 52.034241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572039, 37.555546, 51.829559>,  <30.428242, 37.703331, 51.706749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572039, 37.555546, 51.829559>,  <30.811699, 37.309238, 52.034241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572039, 37.555546, 51.829559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063274, -0.600707, -0.796961,
		-0.798131, -0.509879, 0.320953,
		-0.599152, 0.615771, -0.511705,
		30.392292, 37.740276, 51.676048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427713, 36.889259, 51.698647>,  <30.811699, 37.309238, 52.034241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427713, 36.889259, 51.698647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.360821, 37.230808, 51.501495>,  <30.320684, 37.435738, 51.383205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.360821, 37.230808, 51.501495>,  <30.427713, 36.889259, 51.698647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360821, 37.230808, 51.501495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127890, -0.476911, -0.869598,
		-0.977588, -0.208459, -0.029448,
		-0.167232, 0.853874, -0.492882,
		30.310652, 37.486969, 51.353630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956440, 36.768719, 51.174347>,  <30.427713, 36.889259, 51.698647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956440, 36.768719, 51.174347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158043, 37.089233, 51.045399>,  <30.279005, 37.281540, 50.968029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158043, 37.089233, 51.045399>,  <29.956440, 36.768719, 51.174347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158043, 37.089233, 51.045399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115929, -0.432626, -0.894089,
		-0.855885, 0.413254, -0.310938,
		0.504006, 0.801284, -0.322369,
		30.309244, 37.329620, 50.948689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648064, 36.892120, 50.565853>,  <29.956440, 36.768719, 51.174347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648064, 36.892120, 50.565853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004658, 37.072910, 50.553402>,  <30.218615, 37.181385, 50.545929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004658, 37.072910, 50.553402>,  <29.648064, 36.892120, 50.565853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004658, 37.072910, 50.553402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176338, -0.409469, -0.895120,
		-0.417321, 0.792498, -0.444737,
		0.891486, 0.451976, -0.031132,
		30.272104, 37.208504, 50.544064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579201, 37.097103, 49.964905>,  <29.648064, 36.892120, 50.565853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579201, 37.097103, 49.964905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972050, 37.155312, 50.012676>,  <30.207758, 37.190239, 50.041340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972050, 37.155312, 50.012676>,  <29.579201, 37.097103, 49.964905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972050, 37.155312, 50.012676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172786, -0.445006, -0.878701,
		-0.074727, 0.883625, -0.462194,
		0.982121, 0.145523, 0.119424,
		30.266685, 37.198967, 50.048504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875713, 37.424431, 49.374031>,  <29.579201, 37.097103, 49.964905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875713, 37.424431, 49.374031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166840, 37.233109, 49.570602>,  <30.341515, 37.118313, 49.688545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166840, 37.233109, 49.570602>,  <29.875713, 37.424431, 49.374031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166840, 37.233109, 49.570602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153863, -0.584445, -0.796712,
		0.668291, 0.655472, -0.351773,
		0.727814, -0.478310, 0.491432,
		30.385183, 37.089615, 49.718033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347557, 37.332462, 48.860062>,  <29.875713, 37.424431, 49.374031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347557, 37.332462, 48.860062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.460173, 37.068951, 49.139130>,  <30.527742, 36.910843, 49.306572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.460173, 37.068951, 49.139130>,  <30.347557, 37.332462, 48.860062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460173, 37.068951, 49.139130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052419, -0.715439, -0.696706,
		0.958117, 0.232721, -0.166891,
		0.281538, -0.658778, 0.697673,
		30.544634, 36.871319, 49.348431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949862, 36.978519, 48.607533>,  <30.347557, 37.332462, 48.860062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949862, 36.978519, 48.607533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842510, 36.717274, 48.890774>,  <30.778099, 36.560528, 49.060719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842510, 36.717274, 48.890774>,  <30.949862, 36.978519, 48.607533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842510, 36.717274, 48.890774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178474, -0.756058, -0.629701,
		0.946636, -0.042619, 0.319474,
		-0.268378, -0.653116, 0.708105,
		30.761997, 36.521339, 49.103207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491503, 36.511864, 48.563648>,  <30.949862, 36.978519, 48.607533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491503, 36.511864, 48.563648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182295, 36.319595, 48.729248>,  <30.996769, 36.204235, 48.828609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182295, 36.319595, 48.729248>,  <31.491503, 36.511864, 48.563648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182295, 36.319595, 48.729248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140613, -0.766199, -0.627030,
		0.618600, -0.426494, 0.659876,
		-0.773021, -0.480668, 0.414000,
		30.950388, 36.175396, 48.853447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729012, 35.795204, 48.876293>,  <31.491503, 36.511864, 48.563648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729012, 35.795204, 48.876293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333635, 35.759014, 48.827629>,  <31.096409, 35.737301, 48.798431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333635, 35.759014, 48.827629>,  <31.729012, 35.795204, 48.876293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333635, 35.759014, 48.827629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129796, -0.919658, -0.370652,
		-0.078352, -0.382159, 0.920769,
		-0.988440, -0.090471, -0.121660,
		31.037104, 35.731873, 48.791130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660652, 35.034275, 49.001156>,  <31.729012, 35.795204, 48.876293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660652, 35.034275, 49.001156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315006, 35.151253, 48.837307>,  <31.107618, 35.221439, 48.738998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315006, 35.151253, 48.837307>,  <31.660652, 35.034275, 49.001156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315006, 35.151253, 48.837307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201058, -0.946682, -0.251730,
		-0.461395, -0.135167, 0.876838,
		-0.864113, 0.292442, -0.409618,
		31.055773, 35.238987, 48.714420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183914, 34.530506, 49.243473>,  <31.660652, 35.034275, 49.001156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183914, 34.530506, 49.243473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033875, 34.694763, 48.911045>,  <30.943851, 34.793320, 48.711590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033875, 34.694763, 48.911045>,  <31.183914, 34.530506, 49.243473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033875, 34.694763, 48.911045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324318, -0.898001, -0.297340,
		-0.868400, 0.157998, 0.470020,
		-0.375100, 0.410646, -0.831066,
		30.921345, 34.817959, 48.661724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636229, 34.005272, 49.121307>,  <31.183914, 34.530506, 49.243473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636229, 34.005272, 49.121307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695873, 34.225662, 48.792870>,  <30.731661, 34.357899, 48.595806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695873, 34.225662, 48.792870>,  <30.636229, 34.005272, 49.121307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695873, 34.225662, 48.792870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402411, -0.724689, -0.559368,
		-0.903234, 0.413824, 0.113660,
		0.149112, 0.550978, -0.821090,
		30.740606, 34.390957, 48.546543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039341, 34.016148, 48.749847>,  <30.636229, 34.005272, 49.121307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039341, 34.016148, 48.749847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327391, 34.068874, 48.477364>,  <30.500219, 34.100510, 48.313873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327391, 34.068874, 48.477364>,  <30.039341, 34.016148, 48.749847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327391, 34.068874, 48.477364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364964, -0.763036, -0.533457,
		-0.590106, 0.632772, -0.501373,
		0.720122, 0.131813, -0.681211,
		30.543427, 34.108418, 48.272999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723354, 33.797131, 48.164173>,  <30.039341, 34.016148, 48.749847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723354, 33.797131, 48.164173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108528, 33.804066, 48.056503>,  <30.339632, 33.808228, 47.991901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108528, 33.804066, 48.056503>,  <29.723354, 33.797131, 48.164173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108528, 33.804066, 48.056503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174603, -0.720581, -0.671026,
		-0.205595, 0.693154, -0.690847,
		0.962936, 0.017336, -0.269174,
		30.397409, 33.809265, 47.975750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663893, 33.526470, 47.517490>,  <29.723354, 33.797131, 48.164173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663893, 33.526470, 47.517490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.057755, 33.508080, 47.584831>,  <30.294071, 33.497047, 47.625237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.057755, 33.508080, 47.584831>,  <29.663893, 33.526470, 47.517490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057755, 33.508080, 47.584831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052984, -0.840388, -0.539389,
		0.166279, 0.540031, -0.825056,
		0.984654, -0.045975, 0.168352,
		30.353151, 33.494286, 47.635338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032839, 33.451744, 46.814693>,  <29.663893, 33.526470, 47.517490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032839, 33.451744, 46.814693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.256376, 33.315411, 47.117092>,  <30.390499, 33.233612, 47.298531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.256376, 33.315411, 47.117092>,  <30.032839, 33.451744, 46.814693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256376, 33.315411, 47.117092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116977, -0.870119, -0.478758,
		0.820982, 0.355984, -0.446390,
		0.558842, -0.340834, 0.755994,
		30.424028, 33.213161, 47.343891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654259, 33.209309, 46.563393>,  <30.032839, 33.451744, 46.814693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654259, 33.209309, 46.563393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569792, 33.010159, 46.899853>,  <30.519112, 32.890671, 47.101730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569792, 33.010159, 46.899853>,  <30.654259, 33.209309, 46.563393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569792, 33.010159, 46.899853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035425, -0.856092, -0.515609,
		0.976808, -0.138677, 0.163142,
		-0.211168, -0.497871, 0.841149,
		30.506441, 32.860798, 47.152199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165010, 32.630383, 46.795086>,  <30.654259, 33.209309, 46.563393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165010, 32.630383, 46.795086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789347, 32.574780, 46.920723>,  <30.563948, 32.541416, 46.996105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789347, 32.574780, 46.920723>,  <31.165010, 32.630383, 46.795086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789347, 32.574780, 46.920723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023219, -0.938046, -0.345733,
		0.342690, -0.317406, 0.884204,
		-0.939162, -0.139010, 0.314089,
		30.507599, 32.533077, 47.014950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133867, 31.925262, 47.015488>,  <31.165010, 32.630383, 46.795086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133867, 31.925262, 47.015488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757471, 32.029255, 46.928818>,  <30.531633, 32.091648, 46.876816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757471, 32.029255, 46.928818>,  <31.133867, 31.925262, 47.015488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757471, 32.029255, 46.928818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126086, -0.863446, -0.488429,
		-0.314072, -0.432286, 0.845273,
		-0.940989, 0.259979, -0.216679,
		30.475174, 32.107250, 46.863815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914795, 31.706085, 47.148724>,  <31.133867, 31.925262, 47.015488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914795, 31.706085, 47.148724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120884, 31.367249, 47.200851>,  <32.244537, 31.163946, 47.232128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120884, 31.367249, 47.200851>,  <31.914795, 31.706085, 47.148724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120884, 31.367249, 47.200851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803199, 0.424176, -0.418266,
		0.299028, 0.320176, 0.898927,
		0.515222, -0.847090, 0.130324,
		32.275452, 31.113121, 47.239948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704487, 31.836405, 47.421940>,  <31.914795, 31.706085, 47.148724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704487, 31.836405, 47.421940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724037, 31.500864, 47.205074>,  <32.735767, 31.299540, 47.074955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724037, 31.500864, 47.205074>,  <32.704487, 31.836405, 47.421940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724037, 31.500864, 47.205074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946189, 0.212737, -0.243862,
		0.319902, -0.501069, 0.804110,
		0.048872, -0.838852, -0.542161,
		32.738697, 31.249208, 47.042427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017220, 31.341002, 47.752621>,  <32.704487, 31.836405, 47.421940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017220, 31.341002, 47.752621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108044, 31.275459, 47.368622>,  <33.162537, 31.236134, 47.138222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108044, 31.275459, 47.368622>,  <33.017220, 31.341002, 47.752621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108044, 31.275459, 47.368622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970219, 0.123458, 0.208407,
		0.084371, -0.978729, 0.187008,
		0.227061, -0.163855, -0.959997,
		33.176163, 31.226303, 47.080624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518478, 30.753462, 47.639576>,  <33.017220, 31.341002, 47.752621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518478, 30.753462, 47.639576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555206, 31.035721, 47.358540>,  <33.577244, 31.205076, 47.189919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555206, 31.035721, 47.358540>,  <33.518478, 30.753462, 47.639576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555206, 31.035721, 47.358540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992042, -0.003787, 0.125851,
		0.086146, -0.708551, -0.700381,
		0.091824, 0.705649, -0.702586,
		33.582752, 31.247416, 47.147762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141632, 30.550829, 47.193981>,  <33.518478, 30.753462, 47.639576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141632, 30.550829, 47.193981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073563, 30.944847, 47.183174>,  <34.032722, 31.181257, 47.176689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073563, 30.944847, 47.183174>,  <34.141632, 30.550829, 47.193981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073563, 30.944847, 47.183174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985302, 0.169671, -0.019800,
		-0.014920, -0.029992, -0.999439,
		-0.170170, 0.985044, -0.027019,
		34.022511, 31.240360, 47.175068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437164, 30.980469, 46.548172>,  <34.141632, 30.550829, 47.193981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437164, 30.980469, 46.548172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413219, 31.146183, 46.911442>,  <34.398853, 31.245611, 47.129402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413219, 31.146183, 46.911442>,  <34.437164, 30.980469, 46.548172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413219, 31.146183, 46.911442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991215, -0.082822, 0.103116,
		0.117937, 0.906370, -0.405689,
		-0.059861, 0.414286, 0.908176,
		34.395260, 31.270470, 47.183895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957958, 31.550514, 46.554165>,  <34.437164, 30.980469, 46.548172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957958, 31.550514, 46.554165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860920, 31.414730, 46.917683>,  <34.802696, 31.333260, 47.135796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860920, 31.414730, 46.917683>,  <34.957958, 31.550514, 46.554165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860920, 31.414730, 46.917683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931358, 0.180687, 0.316108,
		-0.271514, 0.923104, 0.272323,
		-0.242595, -0.339458, 0.908799,
		34.788143, 31.312893, 47.190323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259769, 32.030804, 47.118065>,  <34.957958, 31.550514, 46.554165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259769, 32.030804, 47.118065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200066, 31.675249, 47.291321>,  <35.164242, 31.461918, 47.395275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200066, 31.675249, 47.291321>,  <35.259769, 32.030804, 47.118065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200066, 31.675249, 47.291321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885609, 0.074653, 0.458392,
		-0.439791, 0.452014, 0.776059,
		-0.149264, -0.888882, 0.433139,
		35.155285, 31.408585, 47.421261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359882, 32.107307, 47.827072>,  <35.259769, 32.030804, 47.118065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359882, 32.107307, 47.827072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416378, 31.722082, 47.735363>,  <35.450275, 31.490948, 47.680336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416378, 31.722082, 47.735363>,  <35.359882, 32.107307, 47.827072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416378, 31.722082, 47.735363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896906, 0.026444, 0.441429,
		-0.419060, -0.267984, 0.867510,
		0.141236, -0.963060, -0.229275,
		35.458748, 31.433165, 47.666580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795841, 31.937727, 48.306141>,  <35.359882, 32.107307, 47.827072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795841, 31.937727, 48.306141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824451, 31.600418, 48.093060>,  <35.841618, 31.398033, 47.965210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824451, 31.600418, 48.093060>,  <35.795841, 31.937727, 48.306141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824451, 31.600418, 48.093060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986071, -0.020623, 0.165038,
		-0.150157, -0.537092, 0.830051,
		0.071523, -0.843272, -0.532708,
		35.845909, 31.347437, 47.933247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137630, 31.389215, 48.721783>,  <35.795841, 31.937727, 48.306141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137630, 31.389215, 48.721783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187920, 31.317776, 48.331440>,  <36.218094, 31.274912, 48.097233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187920, 31.317776, 48.331440>,  <36.137630, 31.389215, 48.721783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187920, 31.317776, 48.331440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990589, 0.076234, 0.113670,
		0.054092, -0.980964, 0.186501,
		0.125724, -0.178597, -0.975857,
		36.225636, 31.264196, 48.038681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759136, 30.905010, 48.791393>,  <36.137630, 31.389215, 48.721783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759136, 30.905010, 48.791393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728481, 30.984354, 48.400543>,  <36.710087, 31.031960, 48.166031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728481, 30.984354, 48.400543>,  <36.759136, 30.905010, 48.791393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728481, 30.984354, 48.400543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987298, -0.121699, -0.102144,
		-0.139177, -0.972545, -0.186513,
		-0.076641, 0.198360, -0.977128,
		36.705490, 31.043861, 48.107407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075115, 30.318445, 48.349255>,  <36.759136, 30.905010, 48.791393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075115, 30.318445, 48.349255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089569, 30.635813, 48.106213>,  <37.098244, 30.826233, 47.960388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089569, 30.635813, 48.106213>,  <37.075115, 30.318445, 48.349255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089569, 30.635813, 48.106213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990005, -0.111362, -0.086537,
		-0.136324, -0.598400, -0.789514,
		0.036138, 0.793420, -0.607600,
		37.100410, 30.873838, 47.923931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513859, 30.149015, 47.735764>,  <37.075115, 30.318445, 48.349255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513859, 30.149015, 47.735764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502808, 30.543991, 47.797989>,  <37.496178, 30.780977, 47.835323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502808, 30.543991, 47.797989>,  <37.513859, 30.149015, 47.735764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502808, 30.543991, 47.797989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976408, 0.059996, -0.207431,
		-0.214159, 0.146162, -0.965802,
		-0.027626, 0.987440, 0.155563,
		37.494518, 30.840223, 47.844658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738117, 30.348162, 47.120243>,  <37.513859, 30.149015, 47.735764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738117, 30.348162, 47.120243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793243, 30.677233, 47.340862>,  <37.826321, 30.874676, 47.473232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793243, 30.677233, 47.340862>,  <37.738117, 30.348162, 47.120243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793243, 30.677233, 47.340862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906815, 0.119168, -0.404333,
		-0.398364, 0.555876, -0.729595,
		0.137815, 0.822679, 0.551549,
		37.834587, 30.924036, 47.506329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160282, 30.871075, 46.691940>,  <37.738117, 30.348162, 47.120243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160282, 30.871075, 46.691940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.210545, 31.011898, 47.062943>,  <38.240700, 31.096392, 47.285545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.210545, 31.011898, 47.062943>,  <38.160282, 30.871075, 46.691940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210545, 31.011898, 47.062943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917465, 0.314468, -0.243657,
		-0.377452, 0.881570, -0.283486,
		0.125653, 0.352057, 0.927506,
		38.248241, 31.117516, 47.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471718, 30.792023, 46.294010>,  <38.160282, 30.871075, 46.691940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471718, 30.792023, 46.294010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846409, 30.917753, 46.232376>,  <38.071224, 30.993191, 46.195396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846409, 30.917753, 46.232376>,  <37.471718, 30.792023, 46.294010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846409, 30.917753, 46.232376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058517, 0.574566, 0.816363,
		0.345134, -0.755694, 0.556606,
		0.936727, 0.314325, -0.154081,
		38.127426, 31.012051, 46.186153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180908, 31.049170, 45.707092>,  <37.471718, 30.792023, 46.294010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180908, 31.049170, 45.707092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202293, 31.448582, 45.710602>,  <37.215122, 31.688229, 45.712708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202293, 31.448582, 45.710602>,  <37.180908, 31.049170, 45.707092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202293, 31.448582, 45.710602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553229, -0.022305, -0.832731,
		-0.831312, 0.049368, -0.553609,
		0.053458, 0.998532, 0.008770,
		37.218330, 31.748140, 45.713234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797443, 31.252691, 45.106762>,  <37.180908, 31.049170, 45.707092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797443, 31.252691, 45.106762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128231, 31.441931, 45.228287>,  <37.326702, 31.555475, 45.301201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128231, 31.441931, 45.228287>,  <36.797443, 31.252691, 45.106762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128231, 31.441931, 45.228287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516090, -0.424285, -0.744065,
		-0.223113, 0.772112, -0.595032,
		0.826965, 0.473101, 0.303816,
		37.376320, 31.583860, 45.319431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108120, 31.679335, 44.562935>,  <36.797443, 31.252691, 45.106762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108120, 31.679335, 44.562935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375481, 31.549990, 44.830868>,  <37.535896, 31.472382, 44.991627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375481, 31.549990, 44.830868>,  <37.108120, 31.679335, 44.562935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375481, 31.549990, 44.830868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588507, -0.320800, -0.742123,
		0.454857, 0.890238, -0.024121,
		0.668404, -0.323365, 0.669829,
		37.576000, 31.452980, 45.031818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767403, 31.974358, 44.287800>,  <37.108120, 31.679335, 44.562935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767403, 31.974358, 44.287800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802467, 31.644411, 44.511196>,  <37.823505, 31.446444, 44.645233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802467, 31.644411, 44.511196>,  <37.767403, 31.974358, 44.287800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802467, 31.644411, 44.511196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483515, -0.454943, -0.747824,
		0.870935, 0.335595, 0.358953,
		0.087663, -0.824866, 0.558491,
		37.828766, 31.396952, 44.678741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397396, 32.099529, 44.271694>,  <37.767403, 31.974358, 44.287800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397396, 32.099529, 44.271694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.450268, 31.725834, 44.139191>,  <38.481991, 31.501617, 44.059689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.450268, 31.725834, 44.139191>,  <38.397396, 32.099529, 44.271694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450268, 31.725834, 44.139191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889639, 0.035560, -0.455278,
		0.437116, 0.354876, -0.826433,
		0.132180, -0.934237, -0.331256,
		38.489922, 31.445562, 44.039814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005783, 32.433926, 44.021065>,  <38.397396, 32.099529, 44.271694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005783, 32.433926, 44.021065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893269, 32.119923, 44.241844>,  <38.825760, 31.931520, 44.374310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893269, 32.119923, 44.241844>,  <39.005783, 32.433926, 44.021065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893269, 32.119923, 44.241844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787484, -0.517522, -0.334724,
		0.548404, 0.340494, 0.763751,
		-0.281286, -0.785006, 0.551945,
		38.808884, 31.884420, 44.407429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615017, 32.174580, 44.439369>,  <39.005783, 32.433926, 44.021065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615017, 32.174580, 44.439369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362610, 31.884905, 44.328110>,  <39.211166, 31.711100, 44.261353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362610, 31.884905, 44.328110>,  <39.615017, 32.174580, 44.439369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362610, 31.884905, 44.328110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769267, -0.537821, -0.344932,
		0.100201, -0.431629, 0.896469,
		-0.631022, -0.724186, -0.278148,
		39.173302, 31.667648, 44.244667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094143, 31.698923, 44.084103>,  <39.615017, 32.174580, 44.439369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094143, 31.698923, 44.084103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383854, 31.855139, 44.311398>,  <40.557682, 31.948868, 44.447777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383854, 31.855139, 44.311398>,  <40.094143, 31.698923, 44.084103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383854, 31.855139, 44.311398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362945, 0.484771, -0.795781,
		-0.586252, 0.782608, 0.209365,
		0.724279, 0.390540, 0.568241,
		40.601139, 31.972301, 44.481869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180244, 32.484634, 44.027660>,  <40.094143, 31.698923, 44.084103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180244, 32.484634, 44.027660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535786, 32.342693, 44.143604>,  <40.749111, 32.257526, 44.213169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535786, 32.342693, 44.143604>,  <40.180244, 32.484634, 44.027660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535786, 32.342693, 44.143604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451530, 0.570890, -0.685715,
		0.077852, 0.740380, 0.667665,
		0.888853, -0.354855, 0.289859,
		40.802441, 32.236237, 44.230560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599319, 33.065849, 44.293682>,  <40.180244, 32.484634, 44.027660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599319, 33.065849, 44.293682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743305, 32.739941, 44.111881>,  <40.829697, 32.544395, 44.002800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743305, 32.739941, 44.111881>,  <40.599319, 33.065849, 44.293682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743305, 32.739941, 44.111881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217511, 0.547026, -0.808364,
		0.907256, 0.192125, 0.374132,
		0.359967, -0.814771, -0.454503,
		40.851295, 32.495510, 43.975529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278996, 33.243526, 44.071304>,  <40.599319, 33.065849, 44.293682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278996, 33.243526, 44.071304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.090893, 32.978016, 43.838665>,  <40.978031, 32.818710, 43.699081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.090893, 32.978016, 43.838665>,  <41.278996, 33.243526, 44.071304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090893, 32.978016, 43.838665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248427, 0.532799, -0.808956,
		0.846841, -0.524904, -0.085653,
		-0.470259, -0.663779, -0.581596,
		40.949814, 32.778881, 43.664185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667706, 32.957561, 43.575825>,  <41.278996, 33.243526, 44.071304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667706, 32.957561, 43.575825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303429, 32.915886, 43.415932>,  <41.084862, 32.890881, 43.319996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303429, 32.915886, 43.415932>,  <41.667706, 32.957561, 43.575825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303429, 32.915886, 43.415932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312718, 0.458386, -0.831919,
		0.269907, -0.882625, -0.384867,
		-0.910691, -0.104186, -0.399734,
		41.030220, 32.884628, 43.296013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190819, 33.258720, 42.933365>,  <41.667706, 32.957561, 43.575825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190819, 33.258720, 42.933365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.502159, 33.111622, 43.136906>,  <42.688965, 33.023361, 43.259029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.502159, 33.111622, 43.136906>,  <42.190819, 33.258720, 42.933365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502159, 33.111622, 43.136906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336584, -0.439759, -0.832660,
		0.529979, 0.819375, -0.218511,
		0.778353, -0.367745, 0.508852,
		42.735664, 33.001297, 43.289562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852131, 33.429070, 42.551914>,  <42.190819, 33.258720, 42.933365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852131, 33.429070, 42.551914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884785, 33.096329, 42.771500>,  <42.904377, 32.896683, 42.903252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884785, 33.096329, 42.771500>,  <42.852131, 33.429070, 42.551914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884785, 33.096329, 42.771500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397255, -0.477997, -0.783395,
		0.914070, 0.282030, 0.291435,
		0.081636, -0.831852, 0.548961,
		42.909275, 32.846775, 42.936188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761948, 33.066807, 41.822910>,  <42.852131, 33.429070, 42.551914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761948, 33.066807, 41.822910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.060112, 33.295662, 41.686077>,  <43.239010, 33.432976, 41.603977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.060112, 33.295662, 41.686077>,  <42.761948, 33.066807, 41.822910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060112, 33.295662, 41.686077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170314, -0.332680, -0.927533,
		-0.644483, 0.749653, -0.150539,
		0.745409, 0.572140, -0.342083,
		43.283733, 33.467304, 41.583450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027050, 33.122044, 41.194180>,  <42.761948, 33.066807, 41.822910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027050, 33.122044, 41.194180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038399, 33.345741, 41.525585>,  <43.045208, 33.479961, 41.724430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038399, 33.345741, 41.525585>,  <43.027050, 33.122044, 41.194180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038399, 33.345741, 41.525585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099871, 0.823115, -0.559023,
		-0.994596, 0.098603, -0.032502,
		0.028368, 0.559248, 0.828515,
		43.046909, 33.513515, 41.774139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518608, 33.709148, 41.269802>,  <43.027050, 33.122044, 41.194180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518608, 33.709148, 41.269802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881149, 33.780342, 41.423084>,  <43.098675, 33.823059, 41.515053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881149, 33.780342, 41.423084>,  <42.518608, 33.709148, 41.269802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881149, 33.780342, 41.423084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110192, 0.775985, -0.621052,
		-0.407898, 0.605118, 0.683704,
		0.906354, 0.177987, 0.383202,
		43.153057, 33.833736, 41.538044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658012, 34.392971, 41.574253>,  <42.518608, 33.709148, 41.269802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658012, 34.392971, 41.574253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005539, 34.262943, 41.424866>,  <43.214054, 34.184925, 41.335232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005539, 34.262943, 41.424866>,  <42.658012, 34.392971, 41.574253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005539, 34.262943, 41.424866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082771, 0.839030, -0.537752,
		0.488162, 0.436297, 0.755872,
		0.868819, -0.325074, -0.373470,
		43.266186, 34.165421, 41.312824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327942, 34.878712, 41.693806>,  <42.658012, 34.392971, 41.574253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327942, 34.878712, 41.693806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.308899, 34.664795, 41.356350>,  <43.297474, 34.536446, 41.153877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.308899, 34.664795, 41.356350>,  <43.327942, 34.878712, 41.693806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308899, 34.664795, 41.356350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171608, 0.827660, -0.534349,
		0.984014, -0.170216, 0.052370,
		-0.047610, -0.534794, -0.843640,
		43.294617, 34.504356, 41.103256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902020, 34.778076, 41.376556>,  <43.327942, 34.878712, 41.693806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902020, 34.778076, 41.376556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.612755, 34.798092, 41.101009>,  <43.439198, 34.810101, 40.935680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.612755, 34.798092, 41.101009>,  <43.902020, 34.778076, 41.376556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612755, 34.798092, 41.101009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445653, 0.795780, -0.410033,
		0.527669, -0.603515, -0.597775,
		-0.723159, 0.050039, -0.688867,
		43.395805, 34.813103, 40.894348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978680, 34.675411, 40.618965>,  <43.902020, 34.778076, 41.376556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978680, 34.675411, 40.618965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.686283, 34.948368, 40.619236>,  <43.510845, 35.112141, 40.619400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.686283, 34.948368, 40.619236>,  <43.978680, 34.675411, 40.618965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686283, 34.948368, 40.619236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556693, 0.596916, -0.577741,
		-0.394651, -0.421942, -0.816220,
		-0.730988, 0.682390, 0.000681,
		43.466988, 35.153084, 40.619442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843025, 34.697029, 39.860786>,  <43.978680, 34.675411, 40.618965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843025, 34.697029, 39.860786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.796314, 35.060291, 40.021595>,  <43.768288, 35.278248, 40.118080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.796314, 35.060291, 40.021595>,  <43.843025, 34.697029, 39.860786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796314, 35.060291, 40.021595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652797, 0.375255, -0.658057,
		-0.748477, 0.185593, -0.636661,
		-0.116780, 0.908151, 0.402024,
		43.761280, 35.332737, 40.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523895, 34.892193, 39.545490>,  <43.843025, 34.697029, 39.860786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523895, 34.892193, 39.545490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.596050, 35.245724, 39.718147>,  <44.639343, 35.457840, 39.821739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.596050, 35.245724, 39.718147>,  <44.523895, 34.892193, 39.545490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596050, 35.245724, 39.718147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354070, 0.351071, -0.866824,
		-0.917656, 0.309199, -0.249605,
		0.180392, 0.883824, 0.431641,
		44.650169, 35.510872, 39.847641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319569, 35.390873, 39.019001>,  <44.523895, 34.892193, 39.545490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319569, 35.390873, 39.019001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.593018, 35.528992, 39.276196>,  <44.757088, 35.611862, 39.430511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.593018, 35.528992, 39.276196>,  <44.319569, 35.390873, 39.019001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593018, 35.528992, 39.276196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586744, 0.263925, -0.765556,
		-0.434045, 0.900618, -0.022177,
		0.683620, 0.345298, 0.642987,
		44.798103, 35.632580, 39.469093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672749, 34.976154, 38.526611>,  <44.319569, 35.390873, 39.019001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672749, 34.976154, 38.526611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.940544, 35.135326, 38.777508>,  <45.101223, 35.230831, 38.928047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.940544, 35.135326, 38.777508>,  <44.672749, 34.976154, 38.526611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940544, 35.135326, 38.777508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542081, 0.839051, 0.046282,
		-0.507873, -0.371002, 0.777446,
		0.669488, 0.397933, 0.627244,
		45.141392, 35.254707, 38.965679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275085, 34.328709, 38.808342>,  <44.672749, 34.976154, 38.526611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275085, 34.328709, 38.808342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.411777, 34.018570, 38.595905>,  <44.493793, 33.832485, 38.468445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.411777, 34.018570, 38.595905>,  <44.275085, 34.328709, 38.808342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411777, 34.018570, 38.595905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907064, 0.124272, 0.402232,
		-0.245870, -0.619188, 0.745757,
		0.341734, -0.775347, -0.531089,
		44.514297, 33.785965, 38.436577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569016, 33.917191, 39.217163>,  <44.275085, 34.328709, 38.808342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569016, 33.917191, 39.217163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.745201, 33.832592, 38.868160>,  <44.850914, 33.781834, 38.658760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.745201, 33.832592, 38.868160>,  <44.569016, 33.917191, 39.217163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745201, 33.832592, 38.868160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897450, 0.077751, 0.434211,
		-0.023995, -0.974282, 0.224053,
		0.440464, -0.211495, -0.872503,
		44.877342, 33.769142, 38.606411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029682, 33.400520, 39.427895>,  <44.569016, 33.917191, 39.217163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029682, 33.400520, 39.427895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.141132, 33.580288, 39.088394>,  <45.208004, 33.688148, 38.884693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.141132, 33.580288, 39.088394>,  <45.029682, 33.400520, 39.427895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141132, 33.580288, 39.088394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810055, 0.364775, 0.459076,
		0.515923, -0.815451, -0.262418,
		0.278630, 0.449421, -0.848756,
		45.224720, 33.715115, 38.833767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830330, 33.348736, 39.324345>,  <45.029682, 33.400520, 39.427895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830330, 33.348736, 39.324345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.643219, 33.678951, 39.198055>,  <45.530952, 33.877079, 39.122284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.643219, 33.678951, 39.198055>,  <45.830330, 33.348736, 39.324345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643219, 33.678951, 39.198055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699334, 0.564140, 0.438950,
		0.540479, -0.015463, -0.841216,
		-0.467776, 0.825534, -0.315720,
		45.502888, 33.926613, 39.103340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290775, 33.743011, 39.122841>,  <45.830330, 33.348736, 39.324345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290775, 33.743011, 39.122841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.004158, 34.012573, 39.194855>,  <45.832188, 34.174313, 39.238064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.004158, 34.012573, 39.194855>,  <46.290775, 33.743011, 39.122841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004158, 34.012573, 39.194855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656461, 0.564223, 0.500710,
		0.235851, 0.476969, -0.846685,
		-0.716542, 0.673909, 0.180039,
		45.789196, 34.214745, 39.248867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374569, 33.807224, 38.399281>,  <46.290775, 33.743011, 39.122841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374569, 33.807224, 38.399281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.326729, 34.203667, 38.375942>,  <46.298023, 34.441532, 38.361938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.326729, 34.203667, 38.375942>,  <46.374569, 33.807224, 38.399281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326729, 34.203667, 38.375942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926700, 0.090358, -0.364776,
		-0.356260, -0.097698, -0.929265,
		-0.119604, 0.991106, -0.058346,
		46.290848, 34.500999, 38.358440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515533, 34.152828, 37.747528>,  <46.374569, 33.807224, 38.399281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515533, 34.152828, 37.747528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.609863, 34.433945, 38.015995>,  <46.666462, 34.602615, 38.177074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.609863, 34.433945, 38.015995>,  <46.515533, 34.152828, 37.747528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609863, 34.433945, 38.015995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889204, 0.122577, -0.440786,
		-0.392052, 0.700752, -0.596022,
		0.235822, 0.702796, 0.671168,
		46.680611, 34.644783, 38.217346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506374, 34.879494, 37.578613>,  <46.515533, 34.152828, 37.747528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506374, 34.879494, 37.578613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.812607, 34.797215, 37.822441>,  <46.996346, 34.747849, 37.968739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.812607, 34.797215, 37.822441>,  <46.506374, 34.879494, 37.578613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812607, 34.797215, 37.822441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643289, 0.256159, -0.721500,
		-0.007737, 0.944496, 0.328433,
		0.765585, -0.205694, 0.609566,
		47.042282, 34.735508, 38.005310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044617, 35.529728, 37.849255>,  <46.506374, 34.879494, 37.578613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044617, 35.529728, 37.849255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.193687, 35.166210, 37.774208>,  <47.283131, 34.948101, 37.729179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.193687, 35.166210, 37.774208>,  <47.044617, 35.529728, 37.849255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193687, 35.166210, 37.774208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595709, 0.389325, -0.702535,
		0.711506, 0.150054, 0.686472,
		0.372679, -0.908796, -0.187619,
		47.305492, 34.893570, 37.717922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.383076, 35.695488, 37.304470>,  <47.044617, 35.529728, 37.849255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.383076, 35.695488, 37.304470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.416260, 35.296867, 37.304127>,  <47.436169, 35.057693, 37.303921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.416260, 35.296867, 37.304127>,  <47.383076, 35.695488, 37.304470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.416260, 35.296867, 37.304127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531099, 0.044943, -0.846117,
		0.843239, 0.069737, 0.532996,
		0.082960, -0.996553, -0.000860,
		47.441147, 34.997902, 37.303867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.085297, 35.416264, 37.166424>,  <47.383076, 35.695488, 37.304470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.085297, 35.416264, 37.166424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.791416, 35.183292, 37.027287>,  <47.615089, 35.043510, 36.943806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.791416, 35.183292, 37.027287>,  <48.085297, 35.416264, 37.166424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.791416, 35.183292, 37.027287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228958, 0.269777, -0.935307,
		0.638586, -0.766813, -0.064854,
		-0.734701, -0.582425, -0.347844,
		47.571007, 35.008564, 36.922932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.346989, 34.938049, 36.676517>,  <48.085297, 35.416264, 37.166424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.346989, 34.938049, 36.676517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.961254, 35.002903, 36.592831>,  <47.729813, 35.041813, 36.542618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.961254, 35.002903, 36.592831>,  <48.346989, 34.938049, 36.676517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.961254, 35.002903, 36.592831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226505, 0.096539, -0.969214,
		-0.136943, -0.982035, -0.129820,
		-0.964335, 0.162132, -0.209216,
		47.671955, 35.051540, 36.530067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.039703, 34.464016, 36.178185>,  <48.346989, 34.938049, 36.676517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.039703, 34.464016, 36.178185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.849339, 34.812920, 36.133167>,  <47.735119, 35.022263, 36.106155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.849339, 34.812920, 36.133167>,  <48.039703, 34.464016, 36.178185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.849339, 34.812920, 36.133167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014001, -0.135464, -0.990683,
		-0.879381, -0.469904, 0.076681,
		-0.475913, 0.872262, -0.112545,
		47.706566, 35.074596, 36.099403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.277317, 34.415600, 35.787468>,  <48.039703, 34.464016, 36.178185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.277317, 34.415600, 35.787468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.498436, 34.748371, 35.768238>,  <47.631107, 34.948032, 35.756699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.498436, 34.748371, 35.768238>,  <47.277317, 34.415600, 35.787468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498436, 34.748371, 35.768238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154392, -0.158942, -0.975141,
		-0.818887, 0.531635, -0.216305,
		0.552799, 0.831927, -0.048075,
		47.664276, 34.997948, 35.753815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066296, 34.866013, 35.250858>,  <47.277317, 34.415600, 35.787468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066296, 34.866013, 35.250858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.458187, 34.842960, 35.327595>,  <47.693321, 34.829128, 35.373638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.458187, 34.842960, 35.327595>,  <47.066296, 34.866013, 35.250858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.458187, 34.842960, 35.327595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179881, -0.168278, -0.969188,
		0.088137, 0.984053, -0.154501,
		0.979732, -0.057630, 0.191844,
		47.752106, 34.825672, 35.385147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535500, 35.442787, 34.951580>,  <47.066296, 34.866013, 35.250858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535500, 35.442787, 34.951580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.737232, 35.099026, 34.985226>,  <47.858273, 34.892769, 35.005413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.737232, 35.099026, 34.985226>,  <47.535500, 35.442787, 34.951580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.737232, 35.099026, 34.985226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140377, -0.014519, -0.989992,
		0.852022, 0.511095, 0.113318,
		0.504335, -0.859401, 0.084116,
		47.888531, 34.841206, 35.010460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.457214, 33.955078, 56.951504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855865, 33.929951, 56.930370>,  <33.095055, 33.914875, 56.917690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855865, 33.929951, 56.930370>,  <32.457214, 33.955078, 56.951504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855865, 33.929951, 56.930370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080317, -0.613528, -0.785578,
		0.016928, 0.787171, -0.616503,
		0.996626, -0.062814, -0.052837,
		33.154854, 33.911106, 56.914520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600384, 33.907013, 56.230179>,  <32.457214, 33.955078, 56.951504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600384, 33.907013, 56.230179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.937756, 33.781826, 56.404842>,  <33.140179, 33.706715, 56.509640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.937756, 33.781826, 56.404842>,  <32.600384, 33.907013, 56.230179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937756, 33.781826, 56.404842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165654, -0.621676, -0.765557,
		0.511056, 0.718031, -0.472497,
		0.843434, -0.312972, 0.436656,
		33.190784, 33.687935, 56.535839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207088, 34.102154, 55.811352>,  <32.600384, 33.907013, 56.230179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207088, 34.102154, 55.811352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.328106, 33.791130, 56.031849>,  <33.400719, 33.604515, 56.164146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.328106, 33.791130, 56.031849>,  <33.207088, 34.102154, 55.811352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328106, 33.791130, 56.031849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255320, -0.491096, -0.832848,
		0.918302, 0.392718, 0.049947,
		0.302546, -0.777559, 0.551243,
		33.418869, 33.557861, 56.197224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771694, 33.863659, 55.368626>,  <33.207088, 34.102154, 55.811352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771694, 33.863659, 55.368626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725616, 33.557659, 55.622082>,  <33.697971, 33.374058, 55.774155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725616, 33.557659, 55.622082>,  <33.771694, 33.863659, 55.368626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725616, 33.557659, 55.622082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453371, -0.608064, -0.651700,
		0.883847, 0.212204, 0.416874,
		-0.115192, -0.765002, 0.633643,
		33.691059, 33.328159, 55.812176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349350, 33.464706, 55.346973>,  <33.771694, 33.863659, 55.368626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349350, 33.464706, 55.346973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.066299, 33.220951, 55.490036>,  <33.896469, 33.074699, 55.575874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.066299, 33.220951, 55.490036>,  <34.349350, 33.464706, 55.346973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066299, 33.220951, 55.490036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374897, -0.752849, -0.540991,
		0.598933, -0.248733, 0.761190,
		-0.707624, -0.609386, 0.357656,
		33.854012, 33.038136, 55.597332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667641, 32.868153, 55.392288>,  <34.349350, 33.464706, 55.346973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667641, 32.868153, 55.392288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277039, 32.785706, 55.367157>,  <34.042675, 32.736237, 55.352077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277039, 32.785706, 55.367157>,  <34.667641, 32.868153, 55.392288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277039, 32.785706, 55.367157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191587, -0.697081, -0.690921,
		0.098613, -0.686728, 0.720195,
		-0.976509, -0.206114, -0.062827,
		33.984085, 32.723873, 55.348309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547054, 32.171574, 55.550713>,  <34.667641, 32.868153, 55.392288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547054, 32.171574, 55.550713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.238647, 32.303017, 55.332520>,  <34.053604, 32.381882, 55.201603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.238647, 32.303017, 55.332520>,  <34.547054, 32.171574, 55.550713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238647, 32.303017, 55.332520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220592, -0.665723, -0.712848,
		-0.597389, -0.669946, 0.440794,
		-0.771016, 0.328612, -0.545480,
		34.007343, 32.401600, 55.168877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236504, 31.540369, 55.238491>,  <34.547054, 32.171574, 55.550713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236504, 31.540369, 55.238491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.109417, 31.833504, 54.997822>,  <34.033165, 32.009384, 54.853420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.109417, 31.833504, 54.997822>,  <34.236504, 31.540369, 55.238491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109417, 31.833504, 54.997822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340481, -0.504051, -0.793729,
		-0.884947, -0.457036, -0.089373,
		-0.317714, 0.732837, -0.601670,
		34.014103, 32.053356, 54.817322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820881, 31.278952, 54.610886>,  <34.236504, 31.540369, 55.238491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820881, 31.278952, 54.610886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.946217, 31.634413, 54.476948>,  <34.021416, 31.847689, 54.396584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.946217, 31.634413, 54.476948>,  <33.820881, 31.278952, 54.610886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946217, 31.634413, 54.476948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018197, -0.358153, -0.933486,
		-0.949468, 0.286401, -0.128393,
		0.313335, 0.888651, -0.334843,
		34.040218, 31.901009, 54.376495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481049, 31.372677, 53.959244>,  <33.820881, 31.278952, 54.610886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481049, 31.372677, 53.959244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.775612, 31.643005, 53.946758>,  <33.952351, 31.805202, 53.939266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.775612, 31.643005, 53.946758>,  <33.481049, 31.372677, 53.959244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775612, 31.643005, 53.946758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075552, -0.127992, -0.988893,
		-0.672309, 0.725868, -0.145314,
		0.736405, 0.675820, -0.031209,
		33.996532, 31.845751, 53.937397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236183, 31.738495, 53.511509>,  <33.481049, 31.372677, 53.959244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236183, 31.738495, 53.511509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.625191, 31.830154, 53.494995>,  <33.858593, 31.885149, 53.485085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.625191, 31.830154, 53.494995>,  <33.236183, 31.738495, 53.511509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625191, 31.830154, 53.494995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000888, -0.180982, -0.983486,
		-0.232835, 0.956419, -0.176211,
		0.972516, 0.229147, -0.041289,
		33.916946, 31.898899, 53.482609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357124, 32.147678, 52.860279>,  <33.236183, 31.738495, 53.511509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357124, 32.147678, 52.860279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709694, 31.983435, 52.953659>,  <33.921234, 31.884890, 53.009686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709694, 31.983435, 52.953659>,  <33.357124, 32.147678, 52.860279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709694, 31.983435, 52.953659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106409, -0.308915, -0.945119,
		0.460187, 0.857889, -0.228592,
		0.881422, -0.410607, 0.233446,
		33.974121, 31.860252, 53.023693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794865, 32.271702, 52.358631>,  <33.357124, 32.147678, 52.860279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794865, 32.271702, 52.358631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.985764, 31.953699, 52.508404>,  <34.100304, 31.762897, 52.598267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.985764, 31.953699, 52.508404>,  <33.794865, 32.271702, 52.358631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985764, 31.953699, 52.508404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008622, -0.430304, -0.902643,
		0.878727, 0.427555, -0.212216,
		0.477247, -0.795007, 0.374433,
		34.128937, 31.715197, 52.620735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333858, 31.994440, 51.944298>,  <33.794865, 32.271702, 52.358631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333858, 31.994440, 51.944298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.274426, 31.671968, 52.173386>,  <34.238766, 31.478485, 52.310837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.274426, 31.671968, 52.173386>,  <34.333858, 31.994440, 51.944298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274426, 31.671968, 52.173386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005083, -0.578513, -0.815657,
		0.988888, -0.124100, 0.081856,
		-0.148578, -0.806177, 0.572716,
		34.229851, 31.430115, 52.345200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920929, 31.493393, 51.784149>,  <34.333858, 31.994440, 51.944298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920929, 31.493393, 51.784149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579647, 31.340933, 51.926563>,  <34.374878, 31.249456, 52.012012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579647, 31.340933, 51.926563>,  <34.920929, 31.493393, 51.784149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579647, 31.340933, 51.926563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022822, -0.654686, -0.755556,
		0.521072, -0.652772, 0.549885,
		-0.853208, -0.381149, 0.356036,
		34.323685, 31.226587, 52.033375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930836, 30.848547, 51.459335>,  <34.920929, 31.493393, 51.784149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930836, 30.848547, 51.459335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.552094, 30.886541, 51.582268>,  <34.324848, 30.909338, 51.656025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.552094, 30.886541, 51.582268>,  <34.930836, 30.848547, 51.459335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552094, 30.886541, 51.582268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311762, -0.506312, -0.804023,
		0.079231, -0.857103, 0.509016,
		-0.946851, 0.094988, 0.307328,
		34.268040, 30.915037, 51.674465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677349, 30.237888, 51.156673>,  <34.930836, 30.848547, 51.459335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677349, 30.237888, 51.156673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.347462, 30.442135, 51.253918>,  <34.149529, 30.564684, 51.312263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.347462, 30.442135, 51.253918>,  <34.677349, 30.237888, 51.156673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347462, 30.442135, 51.253918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500478, -0.458795, -0.734186,
		-0.263351, -0.727170, 0.633932,
		-0.824723, 0.510618, 0.243108,
		34.100044, 30.595320, 51.326851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108696, 29.729113, 51.174988>,  <34.677349, 30.237888, 51.156673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108696, 29.729113, 51.174988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.910183, 30.074553, 51.139442>,  <33.791077, 30.281816, 51.118114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.910183, 30.074553, 51.139442>,  <34.108696, 29.729113, 51.174988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910183, 30.074553, 51.139442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535625, -0.385136, -0.751516,
		-0.683235, -0.325366, 0.653703,
		-0.496281, 0.863602, -0.088864,
		33.761299, 30.333633, 51.112782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330318, 29.567678, 51.194885>,  <34.108696, 29.729113, 51.174988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330318, 29.567678, 51.194885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419838, 29.906870, 51.002701>,  <33.473549, 30.110386, 50.887390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419838, 29.906870, 51.002701>,  <33.330318, 29.567678, 51.194885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419838, 29.906870, 51.002701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486046, -0.330185, -0.809159,
		-0.844791, 0.414617, 0.338261,
		0.223802, 0.847981, -0.480460,
		33.486980, 30.161264, 50.858562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723980, 29.866409, 50.978859>,  <33.330318, 29.567678, 51.194885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723980, 29.866409, 50.978859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.996807, 30.031290, 50.737240>,  <33.160503, 30.130219, 50.592270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.996807, 30.031290, 50.737240>,  <32.723980, 29.866409, 50.978859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996807, 30.031290, 50.737240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539331, -0.274285, -0.796172,
		-0.493862, 0.868826, 0.035229,
		0.682072, 0.412199, -0.604044,
		33.201427, 30.154949, 50.556026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347603, 30.346401, 50.535759>,  <32.723980, 29.866409, 50.978859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347603, 30.346401, 50.535759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.686184, 30.287888, 50.330967>,  <32.889332, 30.252779, 50.208092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.686184, 30.287888, 50.330967>,  <32.347603, 30.346401, 50.535759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686184, 30.287888, 50.330967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531116, -0.163457, -0.831383,
		0.037932, 0.975645, -0.216052,
		0.846450, -0.146285, -0.511980,
		32.940121, 30.244001, 50.177372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166416, 30.539385, 49.850292>,  <32.347603, 30.346401, 50.535759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166416, 30.539385, 49.850292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.485962, 30.298872, 49.843624>,  <32.677689, 30.154564, 49.839622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.485962, 30.298872, 49.843624>,  <32.166416, 30.539385, 49.850292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485962, 30.298872, 49.843624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398607, -0.508424, -0.763294,
		0.450476, 0.616414, -0.645836,
		0.798864, -0.601280, -0.016674,
		32.725620, 30.118488, 49.838623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581627, 31.055445, 49.499004>,  <32.166416, 30.539385, 49.850292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581627, 31.055445, 49.499004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.240150, 31.181393, 49.333084>,  <32.035263, 31.256962, 49.233532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.240150, 31.181393, 49.333084>,  <32.581627, 31.055445, 49.499004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240150, 31.181393, 49.333084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229045, 0.488320, 0.842070,
		0.467699, 0.813879, -0.344758,
		-0.853696, 0.314870, -0.414802,
		31.984041, 31.275854, 49.208645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417999, 31.705460, 49.795925>,  <32.581627, 31.055445, 49.499004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417999, 31.705460, 49.795925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067013, 31.614365, 49.627075>,  <31.856421, 31.559708, 49.525764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067013, 31.614365, 49.627075>,  <32.417999, 31.705460, 49.795925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067013, 31.614365, 49.627075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479285, 0.450183, 0.753407,
		0.018457, 0.863407, -0.504170,
		-0.877465, -0.227735, -0.422127,
		31.803774, 31.546043, 49.500439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048325, 32.338963, 49.715656>,  <32.417999, 31.705460, 49.795925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048325, 32.338963, 49.715656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815231, 32.015675, 49.749584>,  <31.675375, 31.821701, 49.769939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815231, 32.015675, 49.749584>,  <32.048325, 32.338963, 49.715656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815231, 32.015675, 49.749584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430603, 0.395601, 0.811221,
		-0.689202, 0.436205, -0.578555,
		-0.582736, -0.808223, 0.084818,
		31.640411, 31.773207, 49.775028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412348, 32.580647, 49.939980>,  <32.048325, 32.338963, 49.715656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412348, 32.580647, 49.939980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.418707, 32.191879, 50.033897>,  <31.422522, 31.958620, 50.090248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.418707, 32.191879, 50.033897>,  <31.412348, 32.580647, 49.939980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418707, 32.191879, 50.033897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409896, 0.207847, 0.888136,
		-0.911994, -0.110357, -0.395080,
		0.015896, -0.971916, 0.234790,
		31.423475, 31.900305, 50.104336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691500, 32.445545, 50.195724>,  <31.412348, 32.580647, 49.939980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691500, 32.445545, 50.195724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.949835, 32.171650, 50.330795>,  <31.104836, 32.007313, 50.411839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.949835, 32.171650, 50.330795>,  <30.691500, 32.445545, 50.195724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949835, 32.171650, 50.330795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392465, 0.081624, 0.916138,
		-0.654878, -0.724203, -0.216020,
		0.645837, -0.684739, 0.337678,
		31.143585, 31.966228, 50.432098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252249, 32.000683, 50.625858>,  <30.691500, 32.445545, 50.195724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252249, 32.000683, 50.625858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.615107, 31.884363, 50.747528>,  <30.832821, 31.814571, 50.820530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.615107, 31.884363, 50.747528>,  <30.252249, 32.000683, 50.625858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615107, 31.884363, 50.747528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209252, 0.315422, 0.925593,
		-0.365105, -0.903297, 0.225284,
		0.907145, -0.290798, 0.304179,
		30.887251, 31.797123, 50.838783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099478, 31.554502, 51.172531>,  <30.252249, 32.000683, 50.625858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099478, 31.554502, 51.172531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.481991, 31.669712, 51.192780>,  <30.711498, 31.738838, 51.204929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.481991, 31.669712, 51.192780>,  <30.099478, 31.554502, 51.172531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481991, 31.669712, 51.192780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091613, 0.130686, 0.987182,
		0.277720, -0.948663, 0.151360,
		0.956284, 0.288027, 0.050616,
		30.768877, 31.756119, 51.207966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287676, 31.008461, 51.726505>,  <30.099478, 31.554502, 51.172531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287676, 31.008461, 51.726505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.541304, 31.317694, 51.733452>,  <30.693480, 31.503233, 51.737621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.541304, 31.317694, 51.733452>,  <30.287676, 31.008461, 51.726505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541304, 31.317694, 51.733452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325239, 0.246243, 0.913008,
		0.701555, -0.584557, 0.407571,
		0.634067, 0.773083, 0.017368,
		30.731524, 31.549618, 51.738663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684736, 30.933605, 52.341839>,  <30.287676, 31.008461, 51.726505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684736, 30.933605, 52.341839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.743692, 31.318712, 52.251194>,  <30.779066, 31.549776, 52.196808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.743692, 31.318712, 52.251194>,  <30.684736, 30.933605, 52.341839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743692, 31.318712, 52.251194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153765, 0.248636, 0.956314,
		0.977053, -0.106105, 0.184687,
		0.147390, 0.962768, -0.226615,
		30.787909, 31.607542, 52.183208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119680, 31.230156, 52.935429>,  <30.684736, 30.933605, 52.341839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119680, 31.230156, 52.935429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.996222, 31.549541, 52.728664>,  <30.922146, 31.741173, 52.604607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.996222, 31.549541, 52.728664>,  <31.119680, 31.230156, 52.935429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996222, 31.549541, 52.728664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214857, 0.587919, 0.779864,
		0.926593, 0.129642, -0.353014,
		-0.308647, 0.798464, -0.516907,
		30.903627, 31.789082, 52.573593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579229, 31.738955, 52.944729>,  <31.119680, 31.230156, 52.935429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579229, 31.738955, 52.944729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.224648, 31.920931, 52.910713>,  <31.011898, 32.030117, 52.890305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.224648, 31.920931, 52.910713>,  <31.579229, 31.738955, 52.944729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224648, 31.920931, 52.910713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197632, 0.538240, 0.819292,
		0.418501, 0.709457, -0.567035,
		-0.886453, 0.454939, -0.085042,
		30.958712, 32.057411, 52.885201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698662, 32.373169, 53.145710>,  <31.579229, 31.738955, 52.944729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698662, 32.373169, 53.145710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.300322, 32.345562, 53.169422>,  <31.061317, 32.328999, 53.183651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.300322, 32.345562, 53.169422>,  <31.698662, 32.373169, 53.145710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300322, 32.345562, 53.169422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000337, 0.654355, 0.756187,
		-0.090984, 0.753031, -0.651664,
		-0.995852, -0.069021, 0.059282,
		31.001566, 32.324856, 53.187206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337788, 33.035957, 53.036232>,  <31.698662, 32.373169, 53.145710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337788, 33.035957, 53.036232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.079222, 32.832325, 53.263561>,  <30.924082, 32.710144, 53.399960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.079222, 32.832325, 53.263561>,  <31.337788, 33.035957, 53.036232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079222, 32.832325, 53.263561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070970, 0.781750, 0.619541,
		-0.759679, 0.360146, -0.541463,
		-0.646414, -0.509080, 0.568320,
		30.885298, 32.679600, 53.434055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761183, 33.480961, 53.231384>,  <31.337788, 33.035957, 53.036232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761183, 33.480961, 53.231384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.758917, 33.192200, 53.508175>,  <30.757557, 33.018944, 53.674248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.758917, 33.192200, 53.508175>,  <30.761183, 33.480961, 53.231384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758917, 33.192200, 53.508175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104338, 0.688635, 0.717562,
		-0.994526, -0.068135, -0.079222,
		-0.005664, -0.721900, 0.691974,
		30.757217, 32.975628, 53.715767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230495, 33.678680, 53.728798>,  <30.761183, 33.480961, 53.231384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230495, 33.678680, 53.728798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.453331, 33.401402, 53.911716>,  <30.587032, 33.235035, 54.021469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.453331, 33.401402, 53.911716>,  <30.230495, 33.678680, 53.728798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453331, 33.401402, 53.911716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112101, 0.482853, 0.868497,
		-0.822852, -0.535094, 0.191284,
		0.557090, -0.693201, 0.457301,
		30.620459, 33.193443, 54.048908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905018, 33.496002, 54.300179>,  <30.230495, 33.678680, 53.728798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905018, 33.496002, 54.300179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.274836, 33.372990, 54.390194>,  <30.496727, 33.299183, 54.444202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.274836, 33.372990, 54.390194>,  <29.905018, 33.496002, 54.300179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274836, 33.372990, 54.390194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123009, 0.318068, 0.940054,
		-0.360675, -0.896803, 0.256238,
		0.924544, -0.307535, 0.225034,
		30.552198, 33.280731, 54.457703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785046, 33.321743, 54.951599>,  <29.905018, 33.496002, 54.300179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785046, 33.321743, 54.951599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.184191, 33.326385, 54.925877>,  <30.423677, 33.329170, 54.910442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.184191, 33.326385, 54.925877>,  <29.785046, 33.321743, 54.951599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184191, 33.326385, 54.925877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040952, 0.655854, 0.753776,
		0.050923, -0.754799, 0.653977,
		0.997863, 0.011603, -0.064309,
		30.483549, 33.329868, 54.906586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998907, 33.282471, 55.568527>,  <29.785046, 33.321743, 54.951599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998907, 33.282471, 55.568527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.327223, 33.434914, 55.398323>,  <30.524212, 33.526379, 55.296200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.327223, 33.434914, 55.398323>,  <29.998907, 33.282471, 55.568527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327223, 33.434914, 55.398323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098266, 0.639606, 0.762397,
		0.562711, -0.667583, 0.487534,
		0.820793, 0.381101, -0.425513,
		30.573460, 33.549244, 55.270668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.687613, 33.352196, 56.116905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732038, 33.607567, 55.812256>,  <30.758694, 33.760792, 55.629467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732038, 33.607567, 55.812256>,  <30.687613, 33.352196, 56.116905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732038, 33.607567, 55.812256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211168, 0.733705, 0.645821,
		0.971119, -0.232558, -0.053328,
		0.111064, 0.638431, -0.761624,
		30.765358, 33.799095, 55.583767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307150, 33.642178, 56.272949>,  <30.687613, 33.352196, 56.116905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307150, 33.642178, 56.272949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108669, 33.894241, 56.034058>,  <30.989582, 34.045479, 55.890720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108669, 33.894241, 56.034058>,  <31.307150, 33.642178, 56.272949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108669, 33.894241, 56.034058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237342, 0.760141, 0.604859,
		0.835137, 0.158382, -0.526745,
		-0.496199, 0.630159, -0.597232,
		30.959810, 34.083290, 55.854889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779510, 34.205685, 56.272858>,  <31.307150, 33.642178, 56.272949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779510, 34.205685, 56.272858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430725, 34.338612, 56.129051>,  <31.221455, 34.418365, 56.042767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430725, 34.338612, 56.129051>,  <31.779510, 34.205685, 56.272858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430725, 34.338612, 56.129051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114617, 0.852496, 0.510013,
		0.475968, 0.403506, -0.781433,
		-0.871962, 0.332316, -0.359512,
		31.169136, 34.438305, 56.021198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937063, 34.901150, 56.071705>,  <31.779510, 34.205685, 56.272858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937063, 34.901150, 56.071705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538652, 34.893379, 56.106461>,  <31.299606, 34.888718, 56.127316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538652, 34.893379, 56.106461>,  <31.937063, 34.901150, 56.071705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538652, 34.893379, 56.106461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025889, 0.870580, 0.491346,
		-0.085190, 0.491644, -0.866619,
		-0.996028, -0.019422, 0.086893,
		31.239843, 34.887554, 56.132530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703793, 35.507896, 55.949512>,  <31.937063, 34.901150, 56.071705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703793, 35.507896, 55.949512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412039, 35.340008, 56.165600>,  <31.236986, 35.239273, 56.295250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412039, 35.340008, 56.165600>,  <31.703793, 35.507896, 55.949512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412039, 35.340008, 56.165600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006872, 0.794125, 0.607715,
		-0.684069, 0.439546, -0.582107,
		-0.729385, -0.419720, 0.540216,
		31.193224, 35.214092, 56.327663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360708, 36.071304, 56.254448>,  <31.703793, 35.507896, 55.949512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360708, 36.071304, 56.254448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241806, 35.753571, 56.466358>,  <31.170464, 35.562931, 56.593506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241806, 35.753571, 56.466358>,  <31.360708, 36.071304, 56.254448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241806, 35.753571, 56.466358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015907, 0.558903, 0.829080,
		-0.954665, 0.238022, -0.178773,
		-0.297256, -0.794338, 0.529779,
		31.152630, 35.515270, 56.625294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818251, 36.306324, 56.660007>,  <31.360708, 36.071304, 56.254448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818251, 36.306324, 56.660007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968374, 35.987305, 56.848923>,  <31.058449, 35.795895, 56.962273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968374, 35.987305, 56.848923>,  <30.818251, 36.306324, 56.660007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968374, 35.987305, 56.848923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006231, 0.507355, 0.861715,
		-0.926878, -0.326353, 0.185446,
		0.375310, -0.797549, 0.472290,
		31.080967, 35.748039, 56.990608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454720, 36.268421, 57.281178>,  <30.818251, 36.306324, 56.660007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454720, 36.268421, 57.281178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784666, 36.056480, 57.360020>,  <30.982634, 35.929314, 57.407326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784666, 36.056480, 57.360020>,  <30.454720, 36.268421, 57.281178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784666, 36.056480, 57.360020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009490, 0.335623, 0.941949,
		-0.565248, -0.778852, 0.271816,
		0.824866, -0.529855, 0.197102,
		31.032125, 35.897522, 57.419151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269072, 35.816616, 57.792351>,  <30.454720, 36.268421, 57.281178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269072, 35.816616, 57.792351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665874, 35.854065, 57.826183>,  <30.903957, 35.876534, 57.846485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665874, 35.854065, 57.826183>,  <30.269072, 35.816616, 57.792351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665874, 35.854065, 57.826183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106555, 0.262644, 0.958991,
		0.067565, -0.960340, 0.270521,
		0.992009, 0.093620, 0.084584,
		30.963476, 35.882153, 57.851559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338064, 35.520988, 58.426727>,  <30.269072, 35.816616, 57.792351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338064, 35.520988, 58.426727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679491, 35.721897, 58.371384>,  <30.884346, 35.842442, 58.338177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679491, 35.721897, 58.371384>,  <30.338064, 35.520988, 58.426727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679491, 35.721897, 58.371384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098305, 0.416083, 0.903997,
		0.511627, -0.758019, 0.404531,
		0.853566, 0.502276, -0.138362,
		30.935560, 35.872581, 58.329876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802420, 35.391087, 58.996189>,  <30.338064, 35.520988, 58.426727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802420, 35.391087, 58.996189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955204, 35.727215, 58.842327>,  <31.046875, 35.928894, 58.750008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955204, 35.727215, 58.842327>,  <30.802420, 35.391087, 58.996189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955204, 35.727215, 58.842327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187586, 0.478047, 0.858069,
		0.904941, -0.255592, 0.340228,
		0.381961, 0.840324, -0.384659,
		31.069792, 35.979313, 58.726929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320795, 35.654419, 59.510670>,  <30.802420, 35.391087, 58.996189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320795, 35.654419, 59.510670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203892, 35.967747, 59.291218>,  <31.133749, 36.155743, 59.159546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203892, 35.967747, 59.291218>,  <31.320795, 35.654419, 59.510670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203892, 35.967747, 59.291218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058581, 0.557936, 0.827814,
		0.954543, 0.274075, -0.117174,
		-0.292259, 0.783320, -0.548630,
		31.116215, 36.202744, 59.126629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685366, 36.256012, 59.817390>,  <31.320795, 35.654419, 59.510670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685366, 36.256012, 59.817390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394623, 36.432625, 59.606968>,  <31.220177, 36.538593, 59.480717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394623, 36.432625, 59.606968>,  <31.685366, 36.256012, 59.817390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394623, 36.432625, 59.606968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075350, 0.710068, 0.700090,
		0.682644, 0.548503, -0.482848,
		-0.726856, 0.441530, -0.526053,
		31.176565, 36.565083, 59.449150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784996, 36.974087, 59.692097>,  <31.685366, 36.256012, 59.817390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784996, 36.974087, 59.692097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393551, 36.981941, 59.610191>,  <31.158684, 36.986656, 59.561047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393551, 36.981941, 59.610191>,  <31.784996, 36.974087, 59.692097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393551, 36.981941, 59.610191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081844, 0.876075, 0.475178,
		0.188719, 0.481775, -0.855732,
		-0.978615, 0.019638, -0.204762,
		31.099966, 36.987831, 59.548763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630682, 37.610638, 59.306351>,  <31.784996, 36.974087, 59.692097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630682, 37.610638, 59.306351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298948, 37.485023, 59.491215>,  <31.099909, 37.409653, 59.602131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298948, 37.485023, 59.491215>,  <31.630682, 37.610638, 59.306351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298948, 37.485023, 59.491215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025177, 0.847278, 0.530552,
		-0.558188, 0.428369, -0.710581,
		-0.829332, -0.314038, 0.462156,
		31.050148, 37.390812, 59.629860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231419, 38.196781, 59.437000>,  <31.630682, 37.610638, 59.306351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231419, 38.196781, 59.437000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062542, 37.938881, 59.691887>,  <30.961216, 37.784142, 59.844818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062542, 37.938881, 59.691887>,  <31.231419, 38.196781, 59.437000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062542, 37.938881, 59.691887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369142, 0.764296, 0.528759,
		-0.827941, -0.011985, -0.560686,
		-0.422193, -0.644754, 0.637216,
		30.935884, 37.745453, 59.883053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646849, 38.530502, 59.594936>,  <31.231419, 38.196781, 59.437000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646849, 38.530502, 59.594936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640799, 38.254436, 59.884335>,  <30.637169, 38.088799, 60.057972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640799, 38.254436, 59.884335>,  <30.646849, 38.530502, 59.594936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640799, 38.254436, 59.884335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408519, 0.664695, 0.625533,
		-0.912624, -0.286101, -0.291998,
		-0.015124, -0.690164, 0.723495,
		30.636261, 38.047386, 60.101383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956381, 38.386864, 60.052044>,  <30.646849, 38.530502, 59.594936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956381, 38.386864, 60.052044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231709, 38.268513, 60.316975>,  <30.396906, 38.197502, 60.475933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231709, 38.268513, 60.316975>,  <29.956381, 38.386864, 60.052044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231709, 38.268513, 60.316975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345024, 0.669617, 0.657702,
		-0.638102, -0.681227, 0.358825,
		0.688320, -0.295878, 0.662323,
		30.438204, 38.179749, 60.515671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580973, 38.227303, 60.708199>,  <29.956381, 38.386864, 60.052044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580973, 38.227303, 60.708199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960602, 38.321808, 60.791569>,  <30.188379, 38.378513, 60.841591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960602, 38.321808, 60.791569>,  <29.580973, 38.227303, 60.708199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960602, 38.321808, 60.791569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296212, 0.443756, 0.845777,
		0.107339, -0.864441, 0.491141,
		0.949072, 0.236267, 0.208426,
		30.245323, 38.392689, 60.854095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712315, 38.027424, 61.428173>,  <29.580973, 38.227303, 60.708199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712315, 38.027424, 61.428173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003557, 38.295139, 61.368950>,  <30.178303, 38.455769, 61.333416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003557, 38.295139, 61.368950>,  <29.712315, 38.027424, 61.428173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003557, 38.295139, 61.368950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343644, 0.543294, 0.765990,
		0.593108, -0.506838, 0.625570,
		0.728101, 0.669288, -0.148060,
		30.221989, 38.495926, 61.324532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095966, 38.083546, 61.993954>,  <29.712315, 38.027424, 61.428173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095966, 38.083546, 61.993954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165747, 38.433891, 61.813988>,  <30.207615, 38.644100, 61.706009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165747, 38.433891, 61.813988>,  <30.095966, 38.083546, 61.993954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165747, 38.433891, 61.813988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191841, 0.478396, 0.856933,
		0.965797, -0.063180, 0.251483,
		0.174450, 0.875868, -0.449913,
		30.218082, 38.696651, 61.679012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962467, 38.373749, 62.714535>,  <30.095966, 38.083546, 61.993954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962467, 38.373749, 62.714535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957956, 38.329437, 63.112045>,  <29.955250, 38.302849, 63.350552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957956, 38.329437, 63.112045>,  <29.962467, 38.373749, 62.714535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957956, 38.329437, 63.112045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204228, -0.972639, -0.110743,
		0.978858, -0.204207, -0.011655,
		-0.011279, -0.110782, 0.993781,
		29.954573, 38.296204, 63.410179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448750, 37.772659, 62.867462>,  <29.962467, 38.373749, 62.714535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448750, 37.772659, 62.867462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159124, 37.835907, 63.136009>,  <29.985350, 37.873856, 63.297138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159124, 37.835907, 63.136009>,  <30.448750, 37.772659, 62.867462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159124, 37.835907, 63.136009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256455, -0.965301, -0.049241,
		0.640285, -0.207829, 0.739487,
		-0.724061, 0.158117, 0.671367,
		29.941906, 37.883343, 63.337418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145248, 37.411530, 62.946835>,  <30.448750, 37.772659, 62.867462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145248, 37.411530, 62.946835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337259, 37.710640, 63.130314>,  <31.452465, 37.890106, 63.240402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337259, 37.710640, 63.130314>,  <31.145248, 37.411530, 62.946835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337259, 37.710640, 63.130314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621916, 0.078694, -0.779120,
		-0.618704, 0.659272, -0.427278,
		0.480028, 0.747776, 0.458699,
		31.481268, 37.934971, 63.267925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168829, 38.067039, 62.650848>,  <31.145248, 37.411530, 62.946835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168829, 38.067039, 62.650848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509430, 38.009377, 62.852509>,  <31.713791, 37.974777, 62.973503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509430, 38.009377, 62.852509>,  <31.168829, 38.067039, 62.650848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509430, 38.009377, 62.852509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499112, -0.071880, -0.863551,
		0.160724, 0.986941, 0.010744,
		0.851502, -0.144156, 0.504147,
		31.764881, 37.966129, 63.003754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590757, 38.437111, 62.243973>,  <31.168829, 38.067039, 62.650848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590757, 38.437111, 62.243973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842356, 38.187832, 62.429871>,  <31.993315, 38.038265, 62.541409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842356, 38.187832, 62.429871>,  <31.590757, 38.437111, 62.243973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842356, 38.187832, 62.429871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603452, 0.014505, -0.797267,
		0.490112, 0.781932, 0.385192,
		0.628996, -0.623196, 0.464749,
		32.031055, 38.000874, 62.569294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376904, 38.729412, 62.190575>,  <31.590757, 38.437111, 62.243973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376904, 38.729412, 62.190575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444839, 38.342453, 62.265728>,  <32.485600, 38.110279, 62.310822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444839, 38.342453, 62.265728>,  <32.376904, 38.729412, 62.190575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444839, 38.342453, 62.265728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504178, -0.078518, -0.860023,
		0.846734, 0.240796, 0.474403,
		0.169841, -0.967395, 0.187888,
		32.495792, 38.052235, 62.322094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953732, 38.633507, 61.874832>,  <32.376904, 38.729412, 62.190575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953732, 38.633507, 61.874832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843388, 38.250538, 61.908878>,  <32.777180, 38.020756, 61.929306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843388, 38.250538, 61.908878>,  <32.953732, 38.633507, 61.874832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843388, 38.250538, 61.908878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678097, -0.256610, -0.688720,
		0.681237, -0.132274, 0.720014,
		-0.275862, -0.957421, 0.085118,
		32.760628, 37.963310, 61.934414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553413, 38.177631, 61.810112>,  <32.953732, 38.633507, 61.874832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553413, 38.177631, 61.810112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243282, 37.934402, 61.741867>,  <33.057205, 37.788464, 61.700920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243282, 37.934402, 61.741867>,  <33.553413, 38.177631, 61.810112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243282, 37.934402, 61.741867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555711, -0.528490, -0.641781,
		0.300083, -0.592404, 0.747668,
		-0.775329, -0.608075, -0.170615,
		33.010685, 37.751980, 61.690681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903759, 37.636787, 61.888493>,  <33.553413, 38.177631, 61.810112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903759, 37.636787, 61.888493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567074, 37.580910, 61.679878>,  <33.365063, 37.547382, 61.554710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567074, 37.580910, 61.679878>,  <33.903759, 37.636787, 61.888493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567074, 37.580910, 61.679878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490111, -0.602926, -0.629501,
		-0.226511, -0.785471, 0.575958,
		-0.841715, -0.139695, -0.521538,
		33.314560, 37.539001, 61.523418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859451, 36.904961, 61.864662>,  <33.903759, 37.636787, 61.888493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859451, 36.904961, 61.864662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617157, 37.055347, 61.584167>,  <33.471779, 37.145580, 61.415871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617157, 37.055347, 61.584167>,  <33.859451, 36.904961, 61.864662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617157, 37.055347, 61.584167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347874, -0.667482, -0.658370,
		-0.715589, -0.642740, 0.273527,
		-0.605735, 0.375970, -0.701236,
		33.435436, 37.168137, 61.373798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581116, 36.337730, 61.531021>,  <33.859451, 36.904961, 61.864662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581116, 36.337730, 61.531021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561630, 36.641781, 61.271843>,  <33.549938, 36.824211, 61.116337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561630, 36.641781, 61.271843>,  <33.581116, 36.337730, 61.531021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561630, 36.641781, 61.271843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246045, -0.619594, -0.745362,
		-0.968034, -0.195730, -0.156845,
		-0.048710, 0.760127, -0.647946,
		33.547016, 36.869820, 61.077457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257965, 36.089001, 61.065117>,  <33.581116, 36.337730, 61.531021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257965, 36.089001, 61.065117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362427, 36.421314, 60.868507>,  <33.425102, 36.620701, 60.750542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362427, 36.421314, 60.868507>,  <33.257965, 36.089001, 61.065117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362427, 36.421314, 60.868507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113543, -0.532101, -0.839033,
		-0.958597, 0.163304, -0.233288,
		0.261150, 0.830783, -0.491528,
		33.440773, 36.670547, 60.721050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724083, 36.224449, 60.590660>,  <33.257965, 36.089001, 61.065117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724083, 36.224449, 60.590660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077965, 36.373035, 60.478008>,  <33.290295, 36.462185, 60.410416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077965, 36.373035, 60.478008>,  <32.724083, 36.224449, 60.590660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077965, 36.373035, 60.478008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033407, -0.552086, -0.833118,
		-0.464958, 0.746470, -0.476022,
		0.884702, 0.371462, -0.281634,
		33.343376, 36.484474, 60.393517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612534, 36.517117, 59.930965>,  <32.724083, 36.224449, 60.590660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612534, 36.517117, 59.930965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006641, 36.450035, 59.944347>,  <33.243107, 36.409786, 59.952377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006641, 36.450035, 59.944347>,  <32.612534, 36.517117, 59.930965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006641, 36.450035, 59.944347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037982, -0.405340, -0.913376,
		0.166741, 0.898651, -0.405739,
		0.985269, -0.167708, 0.033454,
		33.302223, 36.399723, 59.954384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783478, 36.745163, 59.213623>,  <32.612534, 36.517117, 59.930965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783478, 36.745163, 59.213623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057919, 36.504765, 59.377609>,  <33.222584, 36.360527, 59.476002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057919, 36.504765, 59.377609>,  <32.783478, 36.745163, 59.213623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057919, 36.504765, 59.377609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036237, -0.534588, -0.844335,
		0.726603, 0.594156, -0.345003,
		0.686102, -0.600994, 0.409964,
		33.263748, 36.324467, 59.500599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178085, 36.628323, 58.661064>,  <32.783478, 36.745163, 59.213623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178085, 36.628323, 58.661064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300323, 36.339588, 58.909439>,  <33.373665, 36.166348, 59.058464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300323, 36.339588, 58.909439>,  <33.178085, 36.628323, 58.661064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300323, 36.339588, 58.909439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065057, -0.634778, -0.769951,
		0.949936, 0.275690, -0.147025,
		0.305596, -0.721839, 0.620934,
		33.392002, 36.123035, 59.095718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732483, 36.248173, 58.404316>,  <33.178085, 36.628323, 58.661064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732483, 36.248173, 58.404316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593857, 35.988121, 58.674789>,  <33.510681, 35.832092, 58.837074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593857, 35.988121, 58.674789>,  <33.732483, 36.248173, 58.404316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593857, 35.988121, 58.674789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065812, -0.735939, -0.673842,
		0.935714, -0.189029, 0.297837,
		-0.346566, -0.650125, 0.676188,
		33.489887, 35.793083, 58.877647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210194, 35.709698, 58.423763>,  <33.732483, 36.248173, 58.404316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210194, 35.709698, 58.423763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840969, 35.607693, 58.538956>,  <33.619434, 35.546490, 58.608070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840969, 35.607693, 58.538956>,  <34.210194, 35.709698, 58.423763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840969, 35.607693, 58.538956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026047, -0.788370, -0.614650,
		0.383778, -0.559857, 0.734354,
		-0.923058, -0.255016, 0.287977,
		33.564053, 35.531189, 58.625347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305534, 34.932384, 58.509968>,  <34.210194, 35.709698, 58.423763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305534, 34.932384, 58.509968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916950, 35.018635, 58.470444>,  <33.683800, 35.070385, 58.446732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916950, 35.018635, 58.470444>,  <34.305534, 34.932384, 58.509968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916950, 35.018635, 58.470444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121193, -0.809359, -0.574674,
		-0.203885, -0.546301, 0.812396,
		-0.971465, 0.215624, -0.098808,
		33.625511, 35.083321, 58.440800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955235, 34.369701, 58.754864>,  <34.305534, 34.932384, 58.509968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955235, 34.369701, 58.754864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701794, 34.564793, 58.514641>,  <33.549728, 34.681847, 58.370506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701794, 34.564793, 58.514641>,  <33.955235, 34.369701, 58.754864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701794, 34.564793, 58.514641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110433, -0.825323, -0.553757,
		-0.765738, -0.284539, 0.576786,
		-0.633600, 0.487729, -0.600559,
		33.511715, 34.711113, 58.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599533, 33.847591, 58.480526>,  <33.955235, 34.369701, 58.754864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599533, 33.847591, 58.480526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463886, 34.125275, 58.226574>,  <33.382500, 34.291885, 58.074203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463886, 34.125275, 58.226574>,  <33.599533, 33.847591, 58.480526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463886, 34.125275, 58.226574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073991, -0.692465, -0.717647,
		-0.937830, -0.196390, 0.286191,
		-0.339116, 0.694207, -0.634884,
		33.362152, 34.333538, 58.036110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121483, 33.500313, 58.114182>,  <33.599533, 33.847591, 58.480526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121483, 33.500313, 58.114182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199924, 33.836002, 57.911301>,  <33.246990, 34.037415, 57.789574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199924, 33.836002, 57.911301>,  <33.121483, 33.500313, 58.114182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199924, 33.836002, 57.911301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115161, -0.533375, -0.838003,
		-0.973798, 0.105924, -0.201241,
		0.196102, 0.839221, -0.507201,
		33.258755, 34.087769, 57.759140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609547, 33.606228, 57.562820>,  <33.121483, 33.500313, 58.114182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609547, 33.606228, 57.562820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936317, 33.816914, 57.468838>,  <33.132381, 33.943325, 57.412449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936317, 33.816914, 57.468838>,  <32.609547, 33.606228, 57.562820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936317, 33.816914, 57.468838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022365, -0.436009, -0.899664,
		-0.576309, 0.729704, -0.367967,
		0.816926, 0.526714, -0.234956,
		33.181396, 33.974926, 57.398350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.111549, 33.822495, 50.594757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.031181, 33.979420, 50.953804>,  <47.982960, 34.073574, 51.169231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.031181, 33.979420, 50.953804>,  <48.111549, 33.822495, 50.594757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.031181, 33.979420, 50.953804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979420, -0.062584, -0.191882,
		-0.019101, -0.917701, 0.396813,
		-0.200925, 0.392312, 0.897619,
		47.970905, 34.097115, 51.223091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675167, 33.440735, 50.802197>,  <48.111549, 33.822495, 50.594757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675167, 33.440735, 50.802197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.630630, 33.783821, 51.002964>,  <47.603909, 33.989674, 51.123425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.630630, 33.783821, 51.002964>,  <47.675167, 33.440735, 50.802197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.630630, 33.783821, 51.002964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984731, -0.027208, -0.171942,
		-0.133821, -0.513402, 0.847650,
		-0.111338, 0.857717, 0.501922,
		47.597229, 34.041138, 51.153542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.130009, 33.377625, 51.236950>,  <47.675167, 33.440735, 50.802197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.130009, 33.377625, 51.236950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.140011, 33.774986, 51.192173>,  <47.146011, 34.013401, 51.165306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.140011, 33.774986, 51.192173>,  <47.130009, 33.377625, 51.236950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.140011, 33.774986, 51.192173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986868, 0.006659, -0.161393,
		-0.159583, 0.114506, 0.980521,
		0.025009, 0.993400, -0.111939,
		47.147514, 34.073006, 51.158592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547737, 33.624226, 51.568993>,  <47.130009, 33.377625, 51.236950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547737, 33.624226, 51.568993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.616817, 33.948071, 51.344601>,  <46.658264, 34.142376, 51.209965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.616817, 33.948071, 51.344601>,  <46.547737, 33.624226, 51.568993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.616817, 33.948071, 51.344601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952019, -0.008889, -0.305910,
		-0.252655, 0.586898, 0.769231,
		0.172700, 0.809612, -0.560983,
		46.668629, 34.190956, 51.176304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950363, 33.999912, 51.573887>,  <46.547737, 33.624226, 51.568993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950363, 33.999912, 51.573887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.133400, 34.169594, 51.261311>,  <46.243221, 34.271404, 51.073765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.133400, 34.169594, 51.261311>,  <45.950363, 33.999912, 51.573887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133400, 34.169594, 51.261311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873513, 0.050312, -0.484194,
		-0.166083, 0.904166, 0.393574,
		0.457593, 0.424208, -0.781445,
		46.270679, 34.296856, 51.026878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739704, 34.727688, 51.438190>,  <45.950363, 33.999912, 51.573887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739704, 34.727688, 51.438190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.835522, 34.559536, 51.088127>,  <45.893013, 34.458645, 50.878090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.835522, 34.559536, 51.088127>,  <45.739704, 34.727688, 51.438190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835522, 34.559536, 51.088127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948092, 0.092889, -0.304128,
		0.209142, 0.902580, -0.376310,
		0.239544, -0.420383, -0.875156,
		45.907387, 34.433422, 50.825581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228119, 35.012012, 50.978226>,  <45.739704, 34.727688, 51.438190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228119, 35.012012, 50.978226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.373573, 34.723602, 50.742298>,  <45.460846, 34.550556, 50.600742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.373573, 34.723602, 50.742298>,  <45.228119, 35.012012, 50.978226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373573, 34.723602, 50.742298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883554, -0.066355, -0.463605,
		0.295134, 0.689722, -0.661195,
		0.363632, -0.721028, -0.589823,
		45.482662, 34.507294, 50.565350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135746, 35.191048, 50.304241>,  <45.228119, 35.012012, 50.978226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135746, 35.191048, 50.304241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.167332, 34.792301, 50.305866>,  <45.186283, 34.553051, 50.306839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.167332, 34.792301, 50.305866>,  <45.135746, 35.191048, 50.304241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167332, 34.792301, 50.305866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932766, -0.075324, -0.352527,
		0.351729, 0.024051, -0.935793,
		0.078966, -0.996869, 0.004060,
		45.191021, 34.493240, 50.307083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870758, 34.997414, 49.729347>,  <45.135746, 35.191048, 50.304241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870758, 34.997414, 49.729347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.861229, 34.642052, 49.912727>,  <44.855511, 34.428837, 50.022755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.861229, 34.642052, 49.912727>,  <44.870758, 34.997414, 49.729347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861229, 34.642052, 49.912727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900246, -0.180349, -0.396271,
		0.434729, -0.422157, -0.795484,
		-0.023824, -0.888402, 0.458448,
		44.854080, 34.375530, 50.050262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763763, 34.464565, 49.226913>,  <44.870758, 34.997414, 49.729347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763763, 34.464565, 49.226913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.640068, 34.320644, 49.579029>,  <44.565849, 34.234291, 49.790298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.640068, 34.320644, 49.579029>,  <44.763763, 34.464565, 49.226913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640068, 34.320644, 49.579029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893405, -0.207287, -0.398572,
		0.325882, -0.909709, -0.257352,
		-0.309239, -0.359807, 0.880290,
		44.547295, 34.212704, 49.843117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657276, 33.738071, 49.206112>,  <44.763763, 34.464565, 49.226913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657276, 33.738071, 49.206112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.409794, 33.888393, 49.482075>,  <44.261307, 33.978588, 49.647652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.409794, 33.888393, 49.482075>,  <44.657276, 33.738071, 49.206112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409794, 33.888393, 49.482075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753090, -0.533807, -0.384586,
		0.223749, -0.757509, 0.613283,
		-0.618702, 0.375807, 0.689911,
		44.224182, 34.001137, 49.689049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990215, 33.513374, 49.027512>,  <44.657276, 33.738071, 49.206112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990215, 33.513374, 49.027512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856091, 33.675861, 49.367523>,  <43.775616, 33.773354, 49.571529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856091, 33.675861, 49.367523>,  <43.990215, 33.513374, 49.027512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856091, 33.675861, 49.367523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936734, -0.239982, -0.254828,
		0.100478, -0.881702, 0.460984,
		-0.335310, 0.406215, 0.850033,
		43.755497, 33.797726, 49.622532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565952, 33.004150, 49.417419>,  <43.990215, 33.513374, 49.027512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565952, 33.004150, 49.417419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.456116, 33.371571, 49.531162>,  <43.390213, 33.592022, 49.599407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.456116, 33.371571, 49.531162>,  <43.565952, 33.004150, 49.417419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456116, 33.371571, 49.531162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925914, -0.172814, -0.335886,
		-0.259388, -0.355523, 0.897954,
		-0.274594, 0.918553, 0.284358,
		43.373737, 33.647137, 49.616470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951988, 32.802509, 49.889408>,  <43.565952, 33.004150, 49.417419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951988, 32.802509, 49.889408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.961124, 33.190578, 49.792873>,  <42.966606, 33.423420, 49.734951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.961124, 33.190578, 49.792873>,  <42.951988, 32.802509, 49.889408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961124, 33.190578, 49.792873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917552, -0.075509, -0.390379,
		-0.396959, 0.230354, 0.888460,
		0.022839, 0.970173, -0.241336,
		42.967976, 33.481628, 49.720474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239296, 33.092724, 50.094704>,  <42.951988, 32.802509, 49.889408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239296, 33.092724, 50.094704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.361713, 33.364994, 49.828465>,  <42.435162, 33.528358, 49.668720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.361713, 33.364994, 49.828465>,  <42.239296, 33.092724, 50.094704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361713, 33.364994, 49.828465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864861, -0.093456, -0.493236,
		-0.397939, 0.726597, 0.560091,
		0.306039, 0.680679, -0.665595,
		42.453526, 33.569199, 49.628784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794209, 33.600079, 50.148071>,  <42.239296, 33.092724, 50.094704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794209, 33.600079, 50.148071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.962242, 33.633957, 49.786663>,  <42.063061, 33.654282, 49.569817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.962242, 33.633957, 49.786663>,  <41.794209, 33.600079, 50.148071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962242, 33.633957, 49.786663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897451, 0.186418, -0.399788,
		0.134574, 0.978814, 0.154318,
		0.420085, 0.084692, -0.903524,
		42.088268, 33.659363, 49.515606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440842, 34.060009, 49.866024>,  <41.794209, 33.600079, 50.148071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440842, 34.060009, 49.866024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596001, 33.891823, 49.537941>,  <41.689098, 33.790913, 49.341091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596001, 33.891823, 49.537941>,  <41.440842, 34.060009, 49.866024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596001, 33.891823, 49.537941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900709, 0.015916, -0.434131,
		0.195591, 0.907169, -0.372543,
		0.387901, -0.420465, -0.820209,
		41.712372, 33.765682, 49.291878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058216, 34.409142, 49.341827>,  <41.440842, 34.060009, 49.866024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058216, 34.409142, 49.341827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.226967, 34.085930, 49.177334>,  <41.328217, 33.892002, 49.078640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.226967, 34.085930, 49.177334>,  <41.058216, 34.409142, 49.341827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226967, 34.085930, 49.177334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797879, -0.115464, -0.591656,
		0.430593, 0.577716, -0.693422,
		0.421874, -0.808030, -0.411230,
		41.353531, 33.843521, 49.053967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072308, 34.505424, 48.585629>,  <41.058216, 34.409142, 49.341827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072308, 34.505424, 48.585629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063358, 34.121880, 48.698830>,  <41.057987, 33.891754, 48.766750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063358, 34.121880, 48.698830>,  <41.072308, 34.505424, 48.585629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063358, 34.121880, 48.698830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814455, -0.146679, -0.561382,
		0.579796, -0.243052, -0.777665,
		-0.022378, -0.958859, 0.282998,
		41.056644, 33.834221, 48.783730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841984, 34.107891, 48.042862>,  <41.072308, 34.505424, 48.585629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841984, 34.107891, 48.042862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.764324, 33.844841, 48.334019>,  <40.717728, 33.687012, 48.508713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.764324, 33.844841, 48.334019>,  <40.841984, 34.107891, 48.042862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764324, 33.844841, 48.334019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817959, -0.301084, -0.490195,
		0.541523, -0.690561, -0.479456,
		-0.194153, -0.657627, 0.727895,
		40.706078, 33.647552, 48.552387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688240, 33.546791, 47.726051>,  <40.841984, 34.107891, 48.042862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688240, 33.546791, 47.726051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.515812, 33.501675, 48.084148>,  <40.412354, 33.474606, 48.299007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.515812, 33.501675, 48.084148>,  <40.688240, 33.546791, 47.726051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515812, 33.501675, 48.084148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813007, -0.381819, -0.439583,
		0.391400, -0.917329, 0.072892,
		-0.431074, -0.112791, 0.895239,
		40.386490, 33.467838, 48.352718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336754, 32.944569, 47.772976>,  <40.688240, 33.546791, 47.726051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336754, 32.944569, 47.772976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137577, 33.139427, 48.059956>,  <40.018070, 33.256344, 48.232143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137577, 33.139427, 48.059956>,  <40.336754, 32.944569, 47.772976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137577, 33.139427, 48.059956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867058, -0.295089, -0.401415,
		0.016162, -0.821953, 0.569326,
		-0.497946, 0.487151, 0.717450,
		39.988194, 33.285572, 48.275192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927002, 32.393192, 48.160847>,  <40.336754, 32.944569, 47.772976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927002, 32.393192, 48.160847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778252, 32.764366, 48.150600>,  <39.689003, 32.987068, 48.144455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778252, 32.764366, 48.150600>,  <39.927002, 32.393192, 48.160847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778252, 32.764366, 48.150600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886964, -0.363324, -0.285116,
		-0.273873, -0.083311, 0.958151,
		-0.371872, 0.927930, -0.025611,
		39.666691, 33.042744, 48.142918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191959, 32.517262, 48.432339>,  <39.927002, 32.393192, 48.160847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191959, 32.517262, 48.432339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244747, 32.828396, 48.186554>,  <39.276421, 33.015076, 48.039085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244747, 32.828396, 48.186554>,  <39.191959, 32.517262, 48.432339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244747, 32.828396, 48.186554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612714, -0.423269, -0.667402,
		-0.779209, 0.464560, 0.420734,
		0.131965, 0.777835, -0.614458,
		39.284336, 33.061745, 48.002216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462753, 32.620029, 48.283741>,  <39.191959, 32.517262, 48.432339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462753, 32.620029, 48.283741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729164, 32.739475, 48.010323>,  <38.889011, 32.811142, 47.846272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729164, 32.739475, 48.010323>,  <38.462753, 32.620029, 48.283741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729164, 32.739475, 48.010323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564310, -0.397565, -0.723530,
		-0.487809, 0.867624, -0.096280,
		0.666030, 0.298613, -0.683546,
		38.928974, 32.829060, 47.805260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001682, 31.985264, 48.236153>,  <38.462753, 32.620029, 48.283741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001682, 31.985264, 48.236153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.938976, 31.674065, 47.992794>,  <37.901352, 31.487345, 47.846779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.938976, 31.674065, 47.992794>,  <38.001682, 31.985264, 48.236153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938976, 31.674065, 47.992794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981215, 0.052566, 0.185616,
		-0.112429, 0.626063, -0.771625,
		-0.156768, -0.777998, -0.608393,
		37.891945, 31.440664, 47.810276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421589, 32.186195, 47.922001>,  <38.001682, 31.985264, 48.236153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421589, 32.186195, 47.922001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.450027, 31.789793, 47.876663>,  <37.467091, 31.551950, 47.849461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.450027, 31.789793, 47.876663>,  <37.421589, 32.186195, 47.922001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450027, 31.789793, 47.876663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997467, -0.070894, -0.005853,
		-0.002235, 0.113472, -0.993539,
		0.071100, -0.991008, -0.113343,
		37.471359, 31.492491, 47.842659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032761, 31.982002, 47.271446>,  <37.421589, 32.186195, 47.922001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032761, 31.982002, 47.271446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081333, 31.647284, 47.484997>,  <37.110477, 31.446451, 47.613125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081333, 31.647284, 47.484997>,  <37.032761, 31.982002, 47.271446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081333, 31.647284, 47.484997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986707, -0.160287, -0.026797,
		0.107997, -0.523524, -0.845139,
		0.121436, -0.836798, 0.533874,
		37.117764, 31.396244, 47.645161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652332, 31.567549, 46.883137>,  <37.032761, 31.982002, 47.271446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652332, 31.567549, 46.883137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673866, 31.423641, 47.255733>,  <36.686787, 31.337297, 47.479290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673866, 31.423641, 47.255733>,  <36.652332, 31.567549, 46.883137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673866, 31.423641, 47.255733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985250, -0.170879, -0.009058,
		0.162430, -0.917261, -0.363660,
		0.053833, -0.359768, 0.931488,
		36.690018, 31.315710, 47.535179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300068, 30.951035, 46.778675>,  <36.652332, 31.567549, 46.883137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300068, 30.951035, 46.778675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.301392, 31.064381, 47.162277>,  <36.302185, 31.132389, 47.392437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.301392, 31.064381, 47.162277>,  <36.300068, 30.951035, 46.778675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301392, 31.064381, 47.162277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998568, -0.050269, 0.018304,
		0.053395, -0.957694, 0.282793,
		0.003314, 0.283365, 0.959007,
		36.302387, 31.149389, 47.449978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937569, 30.410355, 47.076035>,  <36.300068, 30.951035, 46.778675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937569, 30.410355, 47.076035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900604, 30.711143, 47.337109>,  <35.878426, 30.891617, 47.493752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900604, 30.711143, 47.337109>,  <35.937569, 30.410355, 47.076035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900604, 30.711143, 47.337109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984998, -0.164976, 0.050611,
		0.145736, -0.638216, 0.755937,
		-0.092410, 0.751973, 0.652684,
		35.872883, 30.936735, 47.532913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596024, 30.153563, 47.661041>,  <35.937569, 30.410355, 47.076035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596024, 30.153563, 47.661041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548424, 30.549994, 47.637020>,  <35.519863, 30.787851, 47.622608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548424, 30.549994, 47.637020>,  <35.596024, 30.153563, 47.661041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548424, 30.549994, 47.637020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977836, -0.106488, 0.180269,
		0.172266, 0.080171, 0.981783,
		-0.119000, 0.991077, -0.060050,
		35.512722, 30.847317, 47.619003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057007, 30.321032, 48.082920>,  <35.596024, 30.153563, 47.661041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057007, 30.321032, 48.082920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.088013, 30.661739, 47.875660>,  <35.106617, 30.866165, 47.751305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.088013, 30.661739, 47.875660>,  <35.057007, 30.321032, 48.082920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088013, 30.661739, 47.875660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996881, 0.073954, -0.027571,
		0.014835, 0.518667, 0.854847,
		0.077519, 0.851772, -0.518147,
		35.111267, 30.917271, 47.720215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498970, 30.633375, 48.310429>,  <35.057007, 30.321032, 48.082920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498970, 30.633375, 48.310429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.579918, 30.816277, 47.964027>,  <34.628487, 30.926018, 47.756187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.579918, 30.816277, 47.964027>,  <34.498970, 30.633375, 48.310429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579918, 30.816277, 47.964027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973807, 0.000343, -0.227378,
		-0.103672, 0.889337, 0.445344,
		0.202368, 0.457251, -0.866007,
		34.640629, 30.953451, 47.704224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084755, 31.109917, 48.336437>,  <34.498970, 30.633375, 48.310429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084755, 31.109917, 48.336437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.190067, 31.003593, 47.965488>,  <34.253254, 30.939798, 47.742920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.190067, 31.003593, 47.965488>,  <34.084755, 31.109917, 48.336437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190067, 31.003593, 47.965488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958963, 0.032736, -0.281635,
		0.105220, 0.963469, -0.246284,
		0.263284, -0.265810, -0.927376,
		34.269051, 30.923851, 47.687275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.717754, 32.150803, 53.290428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114338, 32.198734, 53.269836>,  <30.352287, 32.227493, 53.257481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114338, 32.198734, 53.269836>,  <29.717754, 32.150803, 53.290428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114338, 32.198734, 53.269836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034544, -0.139358, -0.989639,
		-0.125765, 0.982965, -0.134029,
		0.991459, 0.119832, -0.051482,
		30.411776, 32.234684, 53.254391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737411, 32.480469, 52.668247>,  <29.717754, 32.150803, 53.290428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737411, 32.480469, 52.668247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.109867, 32.352264, 52.737820>,  <30.333340, 32.275341, 52.779564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.109867, 32.352264, 52.737820>,  <29.737411, 32.480469, 52.668247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109867, 32.352264, 52.737820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144223, -0.114414, -0.982909,
		0.334936, 0.940309, -0.060310,
		0.931138, -0.320513, 0.173935,
		30.389208, 32.256111, 52.790001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134083, 32.767693, 52.170513>,  <29.737411, 32.480469, 52.668247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134083, 32.767693, 52.170513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371592, 32.474426, 52.303123>,  <30.514097, 32.298466, 52.382690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371592, 32.474426, 52.303123>,  <30.134083, 32.767693, 52.170513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371592, 32.474426, 52.303123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184726, -0.276809, -0.943002,
		0.783144, 0.621168, -0.028927,
		0.593770, -0.733163, 0.331527,
		30.549723, 32.254478, 52.402580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871105, 32.823650, 51.799995>,  <30.134083, 32.767693, 52.170513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871105, 32.823650, 51.799995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858889, 32.446232, 51.931927>,  <30.851559, 32.219780, 52.011086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858889, 32.446232, 51.931927>,  <30.871105, 32.823650, 51.799995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858889, 32.446232, 51.931927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363064, -0.317915, -0.875851,
		0.931264, 0.092999, 0.352277,
		-0.030540, -0.943547, 0.329827,
		30.849726, 32.163166, 52.030876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560568, 32.546154, 51.681057>,  <30.871105, 32.823650, 51.799995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560568, 32.546154, 51.681057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303352, 32.239994, 51.691372>,  <31.149023, 32.056297, 51.697559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303352, 32.239994, 51.691372>,  <31.560568, 32.546154, 51.681057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303352, 32.239994, 51.691372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390355, -0.356545, -0.848822,
		0.658880, -0.535762, 0.528049,
		-0.643040, -0.765399, 0.025783,
		31.110441, 32.010376, 51.699108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007996, 31.934412, 51.593971>,  <31.560568, 32.546154, 51.681057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007996, 31.934412, 51.593971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634563, 31.867266, 51.467327>,  <31.410503, 31.826979, 51.391342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634563, 31.867266, 51.467327>,  <32.007996, 31.934412, 51.593971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634563, 31.867266, 51.467327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353116, -0.280342, -0.892590,
		0.061076, -0.945108, 0.320999,
		-0.933584, -0.167866, -0.316610,
		31.354488, 31.816906, 51.372345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081352, 31.454952, 51.186584>,  <32.007996, 31.934412, 51.593971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081352, 31.454952, 51.186584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.716555, 31.581778, 51.082474>,  <31.497677, 31.657873, 51.020008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.716555, 31.581778, 51.082474>,  <32.081352, 31.454952, 51.186584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716555, 31.581778, 51.082474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157635, -0.314901, -0.935943,
		-0.378719, -0.894598, 0.237205,
		-0.911989, 0.317067, -0.260279,
		31.442957, 31.676897, 51.004391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779276, 30.870058, 50.878353>,  <32.081352, 31.454952, 51.186584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779276, 30.870058, 50.878353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583710, 31.193468, 50.747356>,  <31.466370, 31.387514, 50.668758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583710, 31.193468, 50.747356>,  <31.779276, 30.870058, 50.878353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583710, 31.193468, 50.747356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188666, -0.268523, -0.944617,
		-0.851684, -0.523625, -0.021256,
		-0.488917, 0.808525, -0.327487,
		31.437035, 31.436026, 50.649109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307493, 30.641928, 50.280891>,  <31.779276, 30.870058, 50.878353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307493, 30.641928, 50.280891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.319973, 31.039604, 50.239697>,  <31.327461, 31.278210, 50.214977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.319973, 31.039604, 50.239697>,  <31.307493, 30.641928, 50.280891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319973, 31.039604, 50.239697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094851, -0.105520, -0.989883,
		-0.995003, 0.021116, -0.097592,
		0.031200, 0.994193, -0.102989,
		31.329332, 31.337862, 50.208801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705914, 30.877962, 49.841881>,  <31.307493, 30.641928, 50.280891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705914, 30.877962, 49.841881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.993668, 31.151596, 49.793694>,  <31.166321, 31.315777, 49.764782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.993668, 31.151596, 49.793694>,  <30.705914, 30.877962, 49.841881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993668, 31.151596, 49.793694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061538, -0.235524, -0.969918,
		-0.691879, 0.690332, -0.211530,
		0.719387, 0.684083, -0.120472,
		31.209484, 31.356821, 49.757553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617500, 31.085945, 49.124596>,  <30.705914, 30.877962, 49.841881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617500, 31.085945, 49.124596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976055, 31.225637, 49.233799>,  <31.191187, 31.309454, 49.299320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976055, 31.225637, 49.233799>,  <30.617500, 31.085945, 49.124596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976055, 31.225637, 49.233799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288633, 0.007590, -0.957410,
		-0.336430, 0.937006, -0.093996,
		0.896385, 0.349232, 0.273004,
		31.244970, 31.330406, 49.315701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788733, 31.613211, 48.746815>,  <30.617500, 31.085945, 49.124596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788733, 31.613211, 48.746815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.142328, 31.476622, 48.874538>,  <31.354486, 31.394669, 48.951172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.142328, 31.476622, 48.874538>,  <30.788733, 31.613211, 48.746815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142328, 31.476622, 48.874538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381232, 0.131198, -0.915122,
		0.270599, 0.930689, 0.246159,
		0.883990, -0.341475, 0.319307,
		31.407526, 31.374180, 48.970329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121538, 31.699232, 48.574799>,  <30.788733, 31.613211, 48.746815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121538, 31.699232, 48.574799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.748875, 31.611576, 48.690723>,  <29.525276, 31.558983, 48.760277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.748875, 31.611576, 48.690723>,  <30.121538, 31.699232, 48.574799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748875, 31.611576, 48.690723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109060, 0.929526, 0.352262,
		-0.346581, 0.296581, -0.889899,
		-0.931659, -0.219139, 0.289811,
		29.469378, 31.545834, 48.777668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010569, 32.066502, 47.937580>,  <30.121538, 31.699232, 48.574799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010569, 32.066502, 47.937580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259811, 32.180344, 47.646175>,  <30.409357, 32.248650, 47.471333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259811, 32.180344, 47.646175>,  <30.010569, 32.066502, 47.937580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259811, 32.180344, 47.646175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150070, 0.870633, 0.468483,
		0.767602, -0.401244, 0.499789,
		0.623110, 0.284605, -0.728515,
		30.446745, 32.265724, 47.427620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687717, 32.137794, 48.194824>,  <30.010569, 32.066502, 47.937580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687717, 32.137794, 48.194824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630713, 32.383980, 47.884754>,  <30.596510, 32.531693, 47.698711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630713, 32.383980, 47.884754>,  <30.687717, 32.137794, 48.194824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630713, 32.383980, 47.884754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194155, 0.785334, 0.587839,
		0.970564, -0.066728, -0.231417,
		-0.142514, 0.615466, -0.775172,
		30.587959, 32.568619, 47.652203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133484, 32.675472, 48.371540>,  <30.687717, 32.137794, 48.194824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133484, 32.675472, 48.371540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954266, 32.822231, 48.045437>,  <30.846735, 32.910286, 47.849777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954266, 32.822231, 48.045437>,  <31.133484, 32.675472, 48.371540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954266, 32.822231, 48.045437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350067, 0.911092, 0.217635,
		0.822621, -0.187884, -0.536650,
		-0.448048, 0.366895, -0.815256,
		30.819851, 32.932301, 47.800861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572371, 33.186440, 47.948555>,  <31.133484, 32.675472, 48.371540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572371, 33.186440, 47.948555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193453, 33.290379, 47.873604>,  <30.966103, 33.352741, 47.828632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193453, 33.290379, 47.873604>,  <31.572371, 33.186440, 47.948555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193453, 33.290379, 47.873604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215556, 0.949681, 0.227248,
		0.237003, 0.174880, -0.955640,
		-0.947294, 0.259852, -0.187381,
		30.909266, 33.368336, 47.817390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628120, 33.747738, 47.610916>,  <31.572371, 33.186440, 47.948555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628120, 33.747738, 47.610916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240099, 33.782761, 47.701542>,  <31.007286, 33.803776, 47.755917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240099, 33.782761, 47.701542>,  <31.628120, 33.747738, 47.610916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240099, 33.782761, 47.701542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132302, 0.972725, 0.190530,
		-0.203701, 0.214799, -0.955179,
		-0.970053, 0.087561, 0.226563,
		30.949083, 33.809029, 47.769512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400669, 34.353333, 47.334354>,  <31.628120, 33.747738, 47.610916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400669, 34.353333, 47.334354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139843, 34.280144, 47.628654>,  <30.983347, 34.236229, 47.805237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139843, 34.280144, 47.628654>,  <31.400669, 34.353333, 47.334354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139843, 34.280144, 47.628654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011604, 0.967918, 0.250997,
		-0.758075, 0.172204, -0.629021,
		-0.652064, -0.182975, 0.735753,
		30.944223, 34.225250, 47.849380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971153, 34.916115, 47.351353>,  <31.400669, 34.353333, 47.334354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971153, 34.916115, 47.351353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888315, 34.765457, 47.712517>,  <30.838612, 34.675064, 47.929214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888315, 34.765457, 47.712517>,  <30.971153, 34.916115, 47.351353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888315, 34.765457, 47.712517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045362, 0.925626, 0.375711,
		-0.977269, 0.036850, -0.208777,
		-0.207095, -0.376641, 0.902914,
		30.826187, 34.652466, 47.983391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428864, 35.275978, 47.517349>,  <30.971153, 34.916115, 47.351353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428864, 35.275978, 47.517349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.583990, 35.149021, 47.863495>,  <30.677065, 35.072845, 48.071182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.583990, 35.149021, 47.863495>,  <30.428864, 35.275978, 47.517349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583990, 35.149021, 47.863495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079555, 0.923816, 0.374480,
		-0.918298, -0.214073, 0.333019,
		0.387814, -0.317391, 0.865369,
		30.700335, 35.053802, 48.123104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036753, 35.628269, 47.945934>,  <30.428864, 35.275978, 47.517349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036753, 35.628269, 47.945934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331432, 35.517067, 48.192505>,  <30.508240, 35.450348, 48.340446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331432, 35.517067, 48.192505>,  <30.036753, 35.628269, 47.945934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331432, 35.517067, 48.192505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084030, 0.866883, 0.491379,
		-0.670978, -0.413798, 0.615272,
		0.736700, -0.278003, 0.616431,
		30.552443, 35.433666, 48.377434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799232, 35.741604, 48.654186>,  <30.036753, 35.628269, 47.945934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799232, 35.741604, 48.654186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.197754, 35.724613, 48.684044>,  <30.436867, 35.714420, 48.701958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.197754, 35.724613, 48.684044>,  <29.799232, 35.741604, 48.654186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197754, 35.724613, 48.684044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021700, 0.716408, 0.697344,
		-0.083096, -0.696387, 0.712839,
		0.996305, -0.042478, 0.074642,
		30.496645, 35.711868, 48.706436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966999, 35.540394, 49.330879>,  <29.799232, 35.741604, 48.654186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966999, 35.540394, 49.330879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.292997, 35.740528, 49.213955>,  <30.488596, 35.860607, 49.143799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.292997, 35.740528, 49.213955>,  <29.966999, 35.540394, 49.330879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292997, 35.740528, 49.213955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083998, 0.601129, 0.794725,
		0.573341, -0.623147, 0.531947,
		0.814999, 0.500331, -0.292309,
		30.537497, 35.890629, 49.126263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279266, 35.701302, 49.929218>,  <29.966999, 35.540394, 49.330879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279266, 35.701302, 49.929218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.429693, 35.961380, 49.665150>,  <30.519949, 36.117428, 49.506710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.429693, 35.961380, 49.665150>,  <30.279266, 35.701302, 49.929218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429693, 35.961380, 49.665150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078654, 0.687496, 0.721916,
		0.923248, -0.323414, 0.207405,
		0.376068, 0.650193, -0.660167,
		30.542515, 36.156437, 49.467098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801338, 36.000851, 50.237717>,  <30.279266, 35.701302, 49.929218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801338, 36.000851, 50.237717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745121, 36.274254, 49.951202>,  <30.711391, 36.438297, 49.779293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745121, 36.274254, 49.951202>,  <30.801338, 36.000851, 50.237717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745121, 36.274254, 49.951202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268533, 0.722663, 0.636906,
		0.952963, -0.102835, -0.285108,
		-0.140541, 0.683508, -0.716285,
		30.702959, 36.479305, 49.736317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380545, 36.539814, 50.251575>,  <30.801338, 36.000851, 50.237717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380545, 36.539814, 50.251575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.052402, 36.704166, 50.092480>,  <30.855516, 36.802776, 49.997025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.052402, 36.704166, 50.092480>,  <31.380545, 36.539814, 50.251575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052402, 36.704166, 50.092480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070884, 0.763222, 0.642236,
		0.567442, 0.498670, -0.655239,
		-0.820357, 0.410878, -0.397736,
		30.806295, 36.827431, 49.973160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531103, 37.287457, 50.135109>,  <31.380545, 36.539814, 50.251575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531103, 37.287457, 50.135109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133320, 37.246952, 50.146385>,  <30.894650, 37.222649, 50.153152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133320, 37.246952, 50.146385>,  <31.531103, 37.287457, 50.135109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133320, 37.246952, 50.146385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059863, 0.766087, 0.639943,
		-0.086401, 0.634710, -0.767905,
		-0.994460, -0.101261, 0.028195,
		30.834982, 37.216576, 50.154842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935162, 37.888306, 49.802025>,  <31.531103, 37.287457, 50.135109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935162, 37.888306, 49.802025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294716, 38.025230, 49.911442>,  <32.510448, 38.107384, 49.977093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294716, 38.025230, 49.911442>,  <31.935162, 37.888306, 49.802025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294716, 38.025230, 49.911442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362794, -0.231310, -0.902705,
		-0.245733, 0.910669, -0.332109,
		0.898886, 0.342312, 0.273545,
		32.564381, 38.127922, 49.993504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232178, 38.047585, 49.184616>,  <31.935162, 37.888306, 49.802025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232178, 38.047585, 49.184616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546669, 38.039337, 49.431652>,  <32.735363, 38.034389, 49.579872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546669, 38.039337, 49.431652>,  <32.232178, 38.047585, 49.184616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546669, 38.039337, 49.431652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547754, -0.439341, -0.712001,
		0.286014, 0.898084, -0.334128,
		0.786233, -0.020623, 0.617586,
		32.782539, 38.033150, 49.616928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762703, 38.274647, 48.797993>,  <32.232178, 38.047585, 49.184616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762703, 38.274647, 48.797993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957031, 38.094318, 49.097523>,  <33.073627, 37.986122, 49.277241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957031, 38.094318, 49.097523>,  <32.762703, 38.274647, 48.797993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957031, 38.094318, 49.097523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691831, -0.325249, -0.644657,
		0.534179, 0.831248, 0.153879,
		0.485821, -0.450821, 0.748825,
		33.102776, 37.959072, 49.322170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471725, 38.325966, 48.604782>,  <32.762703, 38.274647, 48.797993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471725, 38.325966, 48.604782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478008, 38.046322, 48.890720>,  <33.481777, 37.878536, 49.062283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478008, 38.046322, 48.890720>,  <33.471725, 38.325966, 48.604782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478008, 38.046322, 48.890720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769121, -0.448383, -0.455418,
		0.638910, 0.556955, 0.530656,
		0.015710, -0.699110, 0.714842,
		33.482723, 37.836590, 49.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279301, 38.126022, 48.893131>,  <33.471725, 38.325966, 48.604782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279301, 38.126022, 48.893131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.011471, 37.833202, 48.943359>,  <33.850773, 37.657509, 48.973495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.011471, 37.833202, 48.943359>,  <34.279301, 38.126022, 48.893131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011471, 37.833202, 48.943359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589434, -0.626586, -0.509860,
		0.451927, -0.267371, 0.851043,
		-0.669574, -0.732053, 0.125573,
		33.810600, 37.613586, 48.981030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596901, 37.541969, 48.726299>,  <34.279301, 38.126022, 48.893131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596901, 37.541969, 48.726299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252556, 37.340191, 48.752960>,  <34.045948, 37.219124, 48.768955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252556, 37.340191, 48.752960>,  <34.596901, 37.541969, 48.726299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252556, 37.340191, 48.752960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408906, -0.763803, -0.499401,
		0.302833, -0.402661, 0.863803,
		-0.860865, -0.504449, 0.066654,
		33.994297, 37.188854, 48.772957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715965, 36.937504, 48.961990>,  <34.596901, 37.541969, 48.726299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715965, 36.937504, 48.961990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385059, 36.930946, 48.737358>,  <34.186516, 36.927013, 48.602581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385059, 36.930946, 48.737358>,  <34.715965, 36.937504, 48.961990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385059, 36.930946, 48.737358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442044, -0.635922, -0.632614,
		-0.346747, -0.771579, 0.533322,
		-0.827262, -0.016395, -0.561576,
		34.136879, 36.926029, 48.568886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617496, 36.219143, 48.834892>,  <34.715965, 36.937504, 48.961990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617496, 36.219143, 48.834892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416630, 36.416111, 48.550541>,  <34.296112, 36.534290, 48.379929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416630, 36.416111, 48.550541>,  <34.617496, 36.219143, 48.834892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416630, 36.416111, 48.550541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460925, -0.543137, -0.701819,
		-0.731697, -0.680091, 0.045773,
		-0.502162, 0.492421, -0.710883,
		34.265980, 36.563839, 48.337276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449753, 35.751335, 48.317684>,  <34.617496, 36.219143, 48.834892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449753, 35.751335, 48.317684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374725, 36.077206, 48.098190>,  <34.329708, 36.272728, 47.966492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374725, 36.077206, 48.098190>,  <34.449753, 35.751335, 48.317684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374725, 36.077206, 48.098190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429098, -0.434564, -0.791852,
		-0.883568, -0.383992, -0.268065,
		-0.187573, 0.814680, -0.548737,
		34.318455, 36.321609, 47.933571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205894, 35.562149, 47.665791>,  <34.449753, 35.751335, 48.317684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205894, 35.562149, 47.665791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361385, 35.925655, 47.605087>,  <34.454681, 36.143761, 47.568665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361385, 35.925655, 47.605087>,  <34.205894, 35.562149, 47.665791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361385, 35.925655, 47.605087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360097, -0.301466, -0.882864,
		-0.848068, 0.288548, -0.444433,
		0.388730, 0.908768, -0.151758,
		34.478004, 36.198284, 47.559559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022354, 35.702049, 47.024025>,  <34.205894, 35.562149, 47.665791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022354, 35.702049, 47.024025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310062, 35.968777, 47.102005>,  <34.482689, 36.128811, 47.148792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310062, 35.968777, 47.102005>,  <34.022354, 35.702049, 47.024025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310062, 35.968777, 47.102005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436782, -0.215830, -0.873292,
		-0.540248, 0.713285, -0.446493,
		0.719273, 0.666814, 0.194948,
		34.525845, 36.168819, 47.160488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028698, 36.191113, 46.481907>,  <34.022354, 35.702049, 47.024025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028698, 36.191113, 46.481907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396820, 36.233910, 46.632420>,  <34.617695, 36.259586, 46.722729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396820, 36.233910, 46.632420>,  <34.028698, 36.191113, 46.481907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396820, 36.233910, 46.632420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376796, 0.016186, -0.926155,
		-0.105179, 0.994128, -0.025417,
		0.920305, 0.106989, 0.376286,
		34.672913, 36.266006, 46.745304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.218712, 39.632336, 55.653923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870609, 39.771427, 55.514359>,  <32.661747, 39.854881, 55.430618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870609, 39.771427, 55.514359>,  <33.218712, 39.632336, 55.653923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870609, 39.771427, 55.514359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073364, -0.608920, -0.789832,
		-0.487107, -0.712953, 0.504405,
		-0.870255, 0.347727, -0.348914,
		32.609531, 39.875744, 55.409683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973038, 39.064247, 55.284031>,  <33.218712, 39.632336, 55.653923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973038, 39.064247, 55.284031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.746586, 39.367775, 55.155228>,  <32.610714, 39.549892, 55.077946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.746586, 39.367775, 55.155228>,  <32.973038, 39.064247, 55.284031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746586, 39.367775, 55.155228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031603, -0.410334, -0.911388,
		-0.823709, -0.505789, 0.256284,
		-0.566132, 0.758817, -0.322011,
		32.576748, 39.595421, 55.058624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502415, 38.726318, 54.813484>,  <32.973038, 39.064247, 55.284031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502415, 38.726318, 54.813484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.521538, 39.112988, 54.712883>,  <32.533012, 39.344990, 54.652523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.521538, 39.112988, 54.712883>,  <32.502415, 38.726318, 54.813484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521538, 39.112988, 54.712883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003851, -0.251613, -0.967820,
		-0.998849, 0.047239, -0.008307,
		0.047809, 0.966674, -0.251506,
		32.535881, 39.402988, 54.637432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929214, 38.805470, 54.349796>,  <32.502415, 38.726318, 54.813484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929214, 38.805470, 54.349796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203255, 39.089409, 54.284370>,  <32.367680, 39.259773, 54.245113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203255, 39.089409, 54.284370>,  <31.929214, 38.805470, 54.349796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203255, 39.089409, 54.284370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142008, -0.090088, -0.985758,
		-0.714471, 0.698573, 0.039084,
		0.685102, 0.709845, -0.163568,
		32.408787, 39.302364, 54.235298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659328, 39.300762, 53.905636>,  <31.929214, 38.805470, 54.349796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659328, 39.300762, 53.905636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056141, 39.334034, 53.867786>,  <32.294228, 39.353996, 53.845078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056141, 39.334034, 53.867786>,  <31.659328, 39.300762, 53.905636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056141, 39.334034, 53.867786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095726, 0.009358, -0.995364,
		-0.081911, 0.996490, 0.017246,
		0.992032, 0.083182, -0.094624,
		32.353752, 39.358990, 53.839397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744740, 39.787052, 53.439251>,  <31.659328, 39.300762, 53.905636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744740, 39.787052, 53.439251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093681, 39.591648, 53.431755>,  <32.303047, 39.474403, 53.427258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093681, 39.591648, 53.431755>,  <31.744740, 39.787052, 53.439251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093681, 39.591648, 53.431755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014863, 0.064825, -0.997786,
		0.488647, 0.870145, 0.063811,
		0.872355, -0.488513, -0.018743,
		32.355389, 39.445095, 53.426132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110199, 40.207623, 53.020081>,  <31.744740, 39.787052, 53.439251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110199, 40.207623, 53.020081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.291260, 39.850956, 53.022888>,  <32.399895, 39.636955, 53.024574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.291260, 39.850956, 53.022888>,  <32.110199, 40.207623, 53.020081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291260, 39.850956, 53.022888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093605, 0.039688, -0.994818,
		0.886763, 0.450959, 0.101429,
		0.452647, -0.891662, 0.007019,
		32.427055, 39.583458, 53.024994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831654, 40.121262, 52.622704>,  <32.110199, 40.207623, 53.020081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831654, 40.121262, 52.622704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692467, 39.748024, 52.659035>,  <32.608955, 39.524082, 52.680836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692467, 39.748024, 52.659035>,  <32.831654, 40.121262, 52.622704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692467, 39.748024, 52.659035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037566, -0.110685, -0.993145,
		0.936752, -0.342174, 0.073568,
		-0.347971, -0.933094, 0.090830,
		32.588074, 39.468094, 52.686283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264328, 39.678692, 52.274891>,  <32.831654, 40.121262, 52.622704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264328, 39.678692, 52.274891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.921444, 39.472866, 52.283085>,  <32.715714, 39.349369, 52.288002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.921444, 39.472866, 52.283085>,  <33.264328, 39.678692, 52.274891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921444, 39.472866, 52.283085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123906, -0.244699, -0.961650,
		0.499844, -0.821794, 0.273515,
		-0.857207, -0.514565, 0.020486,
		32.664284, 39.318497, 52.289230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364750, 39.178791, 51.764996>,  <33.264328, 39.678692, 52.274891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364750, 39.178791, 51.764996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973927, 39.115242, 51.821739>,  <32.739433, 39.077110, 51.855785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973927, 39.115242, 51.821739>,  <33.364750, 39.178791, 51.764996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973927, 39.115242, 51.821739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080032, -0.343363, -0.935787,
		0.197382, -0.925668, 0.322769,
		-0.977055, -0.158875, 0.141857,
		32.680809, 39.067581, 51.864296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294605, 38.430618, 51.787918>,  <33.364750, 39.178791, 51.764996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294605, 38.430618, 51.787918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.941345, 38.573486, 51.666279>,  <32.729389, 38.659206, 51.593296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.941345, 38.573486, 51.666279>,  <33.294605, 38.430618, 51.787918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941345, 38.573486, 51.666279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072964, -0.535784, -0.841197,
		-0.463382, -0.765091, 0.447116,
		-0.883150, 0.357172, -0.304097,
		32.676399, 38.680637, 51.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979156, 37.866344, 51.476006>,  <33.294605, 38.430618, 51.787918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979156, 37.866344, 51.476006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.786278, 38.181549, 51.322891>,  <32.670551, 38.370670, 51.231022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.786278, 38.181549, 51.322891>,  <32.979156, 37.866344, 51.476006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786278, 38.181549, 51.322891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100964, -0.384044, -0.917778,
		-0.870228, -0.481194, 0.105623,
		-0.482193, 0.788012, -0.382788,
		32.641621, 38.417953, 51.208054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462215, 37.624737, 51.087616>,  <32.979156, 37.866344, 51.476006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462215, 37.624737, 51.087616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.526505, 37.992382, 50.943729>,  <32.565079, 38.212971, 50.857399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.526505, 37.992382, 50.943729>,  <32.462215, 37.624737, 51.087616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526505, 37.992382, 50.943729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085525, -0.376052, -0.922643,
		-0.983286, 0.117529, -0.139049,
		0.160727, 0.919115, -0.359715,
		32.574722, 38.268116, 50.835815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070259, 37.571690, 50.529327>,  <32.462215, 37.624737, 51.087616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070259, 37.571690, 50.529327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.298981, 37.894665, 50.471260>,  <32.436214, 38.088451, 50.436420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.298981, 37.894665, 50.471260>,  <32.070259, 37.571690, 50.529327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298981, 37.894665, 50.471260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175763, -0.293416, -0.939689,
		-0.801338, 0.511807, -0.309696,
		0.571809, 0.807441, -0.145169,
		32.470524, 38.136898, 50.427708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383566, 37.884850, 50.514534>,  <32.070259, 37.571690, 50.529327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383566, 37.884850, 50.514534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037727, 37.684338, 50.500725>,  <30.830225, 37.564030, 50.492439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037727, 37.684338, 50.500725>,  <31.383566, 37.884850, 50.514534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037727, 37.684338, 50.500725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357008, 0.564499, 0.744235,
		-0.353582, 0.655788, -0.667025,
		-0.864595, -0.501281, -0.034525,
		30.778349, 37.533955, 50.490368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840584, 38.415062, 50.679668>,  <31.383566, 37.884850, 50.514534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840584, 38.415062, 50.679668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661226, 38.060837, 50.728195>,  <30.553612, 37.848301, 50.757313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661226, 38.060837, 50.728195>,  <30.840584, 38.415062, 50.679668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661226, 38.060837, 50.728195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440832, 0.337170, 0.831856,
		-0.777566, 0.319520, -0.541570,
		-0.448395, -0.885564, 0.121317,
		30.526709, 37.795166, 50.764591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224634, 38.675739, 50.800369>,  <30.840584, 38.415062, 50.679668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224634, 38.675739, 50.800369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220551, 38.304588, 50.949471>,  <30.218102, 38.081898, 51.038929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220551, 38.304588, 50.949471>,  <30.224634, 38.675739, 50.800369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220551, 38.304588, 50.949471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418821, 0.342463, 0.841016,
		-0.908011, -0.147530, -0.392110,
		-0.010208, -0.927876, 0.372749,
		30.217487, 38.026226, 51.061295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520531, 38.561405, 51.024563>,  <30.224634, 38.675739, 50.800369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520531, 38.561405, 51.024563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775156, 38.318684, 51.214962>,  <29.927931, 38.173050, 51.329201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775156, 38.318684, 51.214962>,  <29.520531, 38.561405, 51.024563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775156, 38.318684, 51.214962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363336, 0.308452, 0.879116,
		-0.680277, -0.732558, -0.024127,
		0.636561, -0.606809, 0.475997,
		29.966124, 38.136642, 51.357761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134590, 38.229141, 51.535435>,  <29.520531, 38.561405, 51.024563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134590, 38.229141, 51.535435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511969, 38.169888, 51.654072>,  <29.738396, 38.134335, 51.725254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511969, 38.169888, 51.654072>,  <29.134590, 38.229141, 51.535435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511969, 38.169888, 51.654072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264299, 0.203996, 0.942620,
		-0.200138, -0.967699, 0.153307,
		0.943446, -0.148135, 0.296590,
		29.795002, 38.125446, 51.743050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101307, 37.632023, 52.072346>,  <29.134590, 38.229141, 51.535435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101307, 37.632023, 52.072346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441877, 37.825214, 52.154133>,  <29.646219, 37.941132, 52.203205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441877, 37.825214, 52.154133>,  <29.101307, 37.632023, 52.072346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441877, 37.825214, 52.154133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267532, 0.064631, 0.961379,
		0.451113, -0.873242, 0.184241,
		0.851424, 0.482981, 0.204465,
		29.697304, 37.970108, 52.215473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250978, 37.565712, 52.790001>,  <29.101307, 37.632023, 52.072346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250978, 37.565712, 52.790001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508274, 37.857338, 52.696442>,  <29.662651, 38.032314, 52.640305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508274, 37.857338, 52.696442>,  <29.250978, 37.565712, 52.790001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508274, 37.857338, 52.696442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013808, 0.316479, 0.948499,
		0.765543, -0.606879, 0.213638,
		0.643236, 0.729067, -0.233898,
		29.701244, 38.076057, 52.626270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735205, 37.542606, 53.268890>,  <29.250978, 37.565712, 52.790001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735205, 37.542606, 53.268890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746386, 37.911556, 53.114777>,  <29.753094, 38.132927, 53.022308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746386, 37.911556, 53.114777>,  <29.735205, 37.542606, 53.268890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746386, 37.911556, 53.114777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171179, 0.384159, 0.907260,
		0.984843, 0.040592, 0.168629,
		0.027953, 0.922374, -0.385285,
		29.754772, 38.188267, 52.999191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285534, 38.009399, 53.625198>,  <29.735205, 37.542606, 53.268890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285534, 38.009399, 53.625198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024818, 38.264088, 53.460388>,  <29.868389, 38.416901, 53.361504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024818, 38.264088, 53.460388>,  <30.285534, 38.009399, 53.625198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024818, 38.264088, 53.460388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192855, 0.386269, 0.902000,
		0.733469, 0.667374, -0.128973,
		-0.651790, 0.636716, -0.412023,
		29.829281, 38.455101, 53.336781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330114, 38.692703, 53.935059>,  <30.285534, 38.009399, 53.625198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330114, 38.692703, 53.935059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.979900, 38.762085, 53.754681>,  <29.769772, 38.803715, 53.646454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.979900, 38.762085, 53.754681>,  <30.330114, 38.692703, 53.935059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979900, 38.762085, 53.754681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318723, 0.494092, 0.808881,
		0.363111, 0.851931, -0.377311,
		-0.875537, 0.173456, -0.450941,
		29.717239, 38.814121, 53.619400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186611, 39.438545, 54.014923>,  <30.330114, 38.692703, 53.935059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186611, 39.438545, 54.014923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838802, 39.242096, 53.994030>,  <29.630117, 39.124226, 53.981495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838802, 39.242096, 53.994030>,  <30.186611, 39.438545, 54.014923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838802, 39.242096, 53.994030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229057, 0.307309, 0.923631,
		-0.437566, 0.815082, -0.379707,
		-0.869522, -0.491124, -0.052232,
		29.577946, 39.094757, 53.978359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672106, 39.978832, 54.130314>,  <30.186611, 39.438545, 54.014923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672106, 39.978832, 54.130314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517324, 39.617840, 54.205997>,  <29.424456, 39.401245, 54.251408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517324, 39.617840, 54.205997>,  <29.672106, 39.978832, 54.130314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517324, 39.617840, 54.205997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315052, 0.322241, 0.892695,
		-0.866609, 0.285818, -0.409019,
		-0.386951, -0.902479, 0.189209,
		29.401239, 39.347095, 54.262760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243252, 40.129501, 54.692635>,  <29.672106, 39.978832, 54.130314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243252, 40.129501, 54.692635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234247, 39.729736, 54.702980>,  <29.228844, 39.489876, 54.709187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234247, 39.729736, 54.702980>,  <29.243252, 40.129501, 54.692635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234247, 39.729736, 54.702980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210481, 0.030029, 0.977137,
		-0.977339, 0.016553, -0.211033,
		-0.022511, -0.999412, 0.025864,
		29.227493, 39.429913, 54.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590538, 39.887482, 54.873009>,  <29.243252, 40.129501, 54.692635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590538, 39.887482, 54.873009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843538, 39.597988, 54.983391>,  <28.995338, 39.424294, 55.049618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843538, 39.597988, 54.983391>,  <28.590538, 39.887482, 54.873009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843538, 39.597988, 54.983391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417108, -0.018061, 0.908677,
		-0.652657, -0.689842, -0.313299,
		0.632502, -0.723735, 0.275951,
		29.033289, 39.380867, 55.066177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.937260, 35.076794, 58.888935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758602, 35.347698, 58.655067>,  <36.651409, 35.510239, 58.514748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758602, 35.347698, 58.655067>,  <36.937260, 35.076794, 58.888935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758602, 35.347698, 58.655067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194382, -0.711312, -0.675464,
		-0.873343, -0.188040, 0.449347,
		-0.446640, 0.677257, -0.584667,
		36.624611, 35.550877, 58.479668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410301, 34.769821, 58.629471>,  <36.937260, 35.076794, 58.888935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410301, 34.769821, 58.629471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471024, 35.074585, 58.377613>,  <36.507458, 35.257442, 58.226498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471024, 35.074585, 58.377613>,  <36.410301, 34.769821, 58.629471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471024, 35.074585, 58.377613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118555, -0.618394, -0.776874,
		-0.981274, 0.192582, -0.003549,
		0.151806, 0.761906, -0.629646,
		36.516567, 35.303158, 58.188721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810314, 34.814030, 58.111370>,  <36.410301, 34.769821, 58.629471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810314, 34.814030, 58.111370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117317, 34.993374, 57.928108>,  <36.301517, 35.100983, 57.818150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117317, 34.993374, 57.928108>,  <35.810314, 34.814030, 58.111370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117317, 34.993374, 57.928108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094628, -0.627632, -0.772737,
		-0.634020, 0.636434, -0.439283,
		0.767505, 0.448363, -0.458156,
		36.347569, 35.127884, 57.790661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540764, 34.770561, 57.439510>,  <35.810314, 34.814030, 58.111370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540764, 34.770561, 57.439510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919991, 34.887321, 57.388966>,  <36.147526, 34.957378, 57.358639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919991, 34.887321, 57.388966>,  <35.540764, 34.770561, 57.439510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919991, 34.887321, 57.388966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011778, -0.364784, -0.931018,
		-0.317863, 0.884152, -0.342400,
		0.948063, 0.291903, -0.126365,
		36.204411, 34.974892, 57.351055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494751, 35.029129, 56.784317>,  <35.540764, 34.770561, 57.439510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494751, 35.029129, 56.784317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860374, 34.902237, 56.885395>,  <36.079750, 34.826099, 56.946041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860374, 34.902237, 56.885395>,  <35.494751, 35.029129, 56.784317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860374, 34.902237, 56.885395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093550, -0.441342, -0.892449,
		0.394642, 0.839392, -0.373736,
		0.914060, -0.317235, 0.252697,
		36.134594, 34.807068, 56.961205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037296, 35.327896, 56.337524>,  <35.494751, 35.029129, 56.784317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037296, 35.327896, 56.337524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162319, 34.971962, 56.470493>,  <36.237331, 34.758400, 56.550274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162319, 34.971962, 56.470493>,  <36.037296, 35.327896, 56.337524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162319, 34.971962, 56.470493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157814, -0.296447, -0.941920,
		0.936698, 0.346863, 0.047773,
		0.312555, -0.889834, 0.332422,
		36.256084, 34.705013, 56.570221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471512, 35.130463, 55.851070>,  <36.037296, 35.327896, 56.337524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471512, 35.130463, 55.851070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430595, 34.782120, 56.043381>,  <36.406048, 34.573112, 56.158768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430595, 34.782120, 56.043381>,  <36.471512, 35.130463, 55.851070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430595, 34.782120, 56.043381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245978, -0.490442, -0.836039,
		0.963863, 0.032743, 0.264379,
		-0.102288, -0.870859, 0.480773,
		36.399910, 34.520863, 56.187611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972424, 34.753376, 55.540089>,  <36.471512, 35.130463, 55.851070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972424, 34.753376, 55.540089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743347, 34.469444, 55.704121>,  <36.605900, 34.299084, 55.802540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743347, 34.469444, 55.704121>,  <36.972424, 34.753376, 55.540089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743347, 34.469444, 55.704121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173804, -0.594003, -0.785463,
		0.801136, -0.378553, 0.463551,
		-0.572690, -0.709830, 0.410083,
		36.571541, 34.256496, 55.827145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315105, 34.122257, 55.350132>,  <36.972424, 34.753376, 55.540089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315105, 34.122257, 55.350132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935810, 34.025341, 55.432251>,  <36.708233, 33.967190, 55.481522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935810, 34.025341, 55.432251>,  <37.315105, 34.122257, 55.350132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935810, 34.025341, 55.432251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046893, -0.746197, -0.664071,
		0.314092, -0.620068, 0.718931,
		-0.948234, -0.242293, 0.205298,
		36.651340, 33.952652, 55.493839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335957, 33.365986, 55.274845>,  <37.315105, 34.122257, 55.350132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335957, 33.365986, 55.274845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950718, 33.462025, 55.226192>,  <36.719574, 33.519646, 55.196999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950718, 33.462025, 55.226192>,  <37.335957, 33.365986, 55.274845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950718, 33.462025, 55.226192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087457, -0.706573, -0.702215,
		-0.254543, -0.665665, 0.701497,
		-0.963099, 0.240095, -0.121636,
		36.661789, 33.534054, 55.189701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855007, 32.707378, 55.277458>,  <37.335957, 33.365986, 55.274845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855007, 32.707378, 55.277458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627361, 32.991333, 55.111481>,  <36.490772, 33.161705, 55.011894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627361, 32.991333, 55.111481>,  <36.855007, 32.707378, 55.277458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627361, 32.991333, 55.111481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205945, -0.611614, -0.763882,
		-0.796051, -0.349280, 0.494274,
		-0.569113, 0.709882, -0.414943,
		36.456627, 33.204296, 54.987000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198338, 32.355202, 55.166267>,  <36.855007, 32.707378, 55.277458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198338, 32.355202, 55.166267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233967, 32.671505, 54.924023>,  <36.255344, 32.861286, 54.778675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233967, 32.671505, 54.924023>,  <36.198338, 32.355202, 55.166267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233967, 32.671505, 54.924023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148925, -0.590624, -0.793085,
		-0.984829, 0.160833, 0.065156,
		0.089072, 0.790757, -0.605616,
		36.260689, 32.908733, 54.742336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567284, 32.318146, 54.752655>,  <36.198338, 32.355202, 55.166267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567284, 32.318146, 54.752655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825581, 32.544609, 54.547722>,  <35.980556, 32.680489, 54.424763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825581, 32.544609, 54.547722>,  <35.567284, 32.318146, 54.752655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825581, 32.544609, 54.547722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088571, -0.610916, -0.786725,
		-0.758405, 0.553397, -0.344347,
		0.645738, 0.566157, -0.512337,
		36.019302, 32.714455, 54.394020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380276, 32.401920, 54.107826>,  <35.567284, 32.318146, 54.752655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380276, 32.401920, 54.107826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759628, 32.501225, 54.028885>,  <35.987240, 32.560806, 53.981522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759628, 32.501225, 54.028885>,  <35.380276, 32.401920, 54.107826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759628, 32.501225, 54.028885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065317, -0.456040, -0.887559,
		-0.310345, 0.854631, -0.416282,
		0.948377, 0.248259, -0.197351,
		36.044140, 32.575703, 53.969681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841194, 32.795181, 53.823132>,  <35.380276, 32.401920, 54.107826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841194, 32.795181, 53.823132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574646, 32.499687, 53.863571>,  <34.414719, 32.322392, 53.887836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574646, 32.499687, 53.863571>,  <34.841194, 32.795181, 53.823132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574646, 32.499687, 53.863571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360089, 0.437569, 0.823935,
		-0.652911, 0.512638, -0.557594,
		-0.666366, -0.738739, 0.101098,
		34.374737, 32.278065, 53.893902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199039, 33.101070, 54.012741>,  <34.841194, 32.795181, 53.823132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199039, 33.101070, 54.012741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157959, 32.717411, 54.118187>,  <34.133312, 32.487217, 54.181454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157959, 32.717411, 54.118187>,  <34.199039, 33.101070, 54.012741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157959, 32.717411, 54.118187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412602, 0.282223, 0.866089,
		-0.905103, -0.019821, -0.424730,
		-0.102702, -0.959144, 0.263619,
		34.127148, 32.429668, 54.197273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533115, 33.044968, 54.163311>,  <34.199039, 33.101070, 54.012741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533115, 33.044968, 54.163311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709671, 32.739056, 54.351048>,  <33.815605, 32.555508, 54.463692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709671, 32.739056, 54.351048>,  <33.533115, 33.044968, 54.163311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709671, 32.739056, 54.351048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305003, 0.364039, 0.880028,
		-0.843887, -0.531589, -0.072576,
		0.441393, -0.764780, 0.469344,
		33.842091, 32.509621, 54.491852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920078, 32.792564, 54.571175>,  <33.533115, 33.044968, 54.163311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920078, 32.792564, 54.571175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256519, 32.661274, 54.743137>,  <33.458385, 32.582500, 54.846313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256519, 32.661274, 54.743137>,  <32.920078, 32.792564, 54.571175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256519, 32.661274, 54.743137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300023, 0.378216, 0.875750,
		-0.450039, -0.865576, 0.219643,
		0.841101, -0.328224, 0.429905,
		33.508850, 32.562805, 54.872108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731327, 32.432579, 55.244450>,  <32.920078, 32.792564, 54.571175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731327, 32.432579, 55.244450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122086, 32.510437, 55.279743>,  <33.356541, 32.557152, 55.300919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122086, 32.510437, 55.279743>,  <32.731327, 32.432579, 55.244450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122086, 32.510437, 55.279743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172410, 0.473862, 0.863556,
		0.126272, -0.858819, 0.496473,
		0.976898, 0.194640, 0.088234,
		33.415154, 32.568829, 55.306213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878700, 32.282757, 55.860443>,  <32.731327, 32.432579, 55.244450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878700, 32.282757, 55.860443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191689, 32.524124, 55.798965>,  <33.379482, 32.668945, 55.762077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191689, 32.524124, 55.798965>,  <32.878700, 32.282757, 55.860443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191689, 32.524124, 55.798965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101348, 0.366949, 0.924704,
		0.614383, -0.707977, 0.348283,
		0.782472, 0.603421, -0.153695,
		33.426430, 32.705151, 55.752857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170486, 32.404037, 56.501167>,  <32.878700, 32.282757, 55.860443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170486, 32.404037, 56.501167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366779, 32.696033, 56.310883>,  <33.484554, 32.871231, 56.196712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366779, 32.696033, 56.310883>,  <33.170486, 32.404037, 56.501167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366779, 32.696033, 56.310883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000841, 0.545577, 0.838061,
		0.871313, -0.411660, 0.267115,
		0.490727, 0.729988, -0.475714,
		33.513996, 32.915031, 56.168167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778576, 32.618736, 56.956921>,  <33.170486, 32.404037, 56.501167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778576, 32.618736, 56.956921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658794, 32.910130, 56.710461>,  <33.586926, 33.084965, 56.562584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658794, 32.910130, 56.710461>,  <33.778576, 32.618736, 56.956921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658794, 32.910130, 56.710461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064246, 0.628924, 0.774808,
		0.951944, 0.271608, -0.141534,
		-0.299458, 0.728481, -0.616150,
		33.568958, 33.128674, 56.525616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247387, 33.180538, 57.116589>,  <33.778576, 32.618736, 56.956921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247387, 33.180538, 57.116589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918579, 33.342484, 56.956406>,  <33.721294, 33.439651, 56.860298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918579, 33.342484, 56.956406>,  <34.247387, 33.180538, 57.116589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918579, 33.342484, 56.956406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018773, 0.722108, 0.691526,
		0.569147, 0.560931, -0.601189,
		-0.822022, 0.404866, -0.400455,
		33.671974, 33.463943, 56.836269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392857, 33.839733, 57.119049>,  <34.247387, 33.180538, 57.116589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392857, 33.839733, 57.119049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000916, 33.852684, 57.040218>,  <33.765751, 33.860455, 56.992920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000916, 33.852684, 57.040218>,  <34.392857, 33.839733, 57.119049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000916, 33.852684, 57.040218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085226, 0.824647, 0.559191,
		0.180626, 0.564721, -0.805273,
		-0.979852, 0.032374, -0.197081,
		33.706959, 33.862396, 56.981094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286808, 34.565662, 57.063007>,  <34.392857, 33.839733, 57.119049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286808, 34.565662, 57.063007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936527, 34.388565, 57.140083>,  <33.726360, 34.282307, 57.186329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936527, 34.388565, 57.140083>,  <34.286808, 34.565662, 57.063007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936527, 34.388565, 57.140083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255635, 0.763645, 0.592872,
		-0.409639, 0.469917, -0.781904,
		-0.875698, -0.442746, 0.192692,
		33.673817, 34.255741, 57.197891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812626, 35.040020, 57.062908>,  <34.286808, 34.565662, 57.063007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812626, 35.040020, 57.062908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637096, 34.738125, 57.257969>,  <33.531776, 34.556988, 57.375004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637096, 34.738125, 57.257969>,  <33.812626, 35.040020, 57.062908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637096, 34.738125, 57.257969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360409, 0.644964, 0.673889,
		-0.823126, 0.119967, -0.555042,
		-0.438827, -0.754737, 0.487650,
		33.505447, 34.511703, 57.404263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165676, 35.261662, 57.153179>,  <33.812626, 35.040020, 57.062908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165676, 35.261662, 57.153179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213116, 34.984509, 57.437672>,  <33.241581, 34.818218, 57.608368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213116, 34.984509, 57.437672>,  <33.165676, 35.261662, 57.153179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213116, 34.984509, 57.437672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294759, 0.659432, 0.691568,
		-0.948183, -0.291660, -0.126026,
		0.118597, -0.692881, 0.711232,
		33.248695, 34.776646, 57.651043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739334, 35.439228, 57.693253>,  <33.165676, 35.261662, 57.153179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739334, 35.439228, 57.693253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965744, 35.177418, 57.893734>,  <33.101589, 35.020332, 58.014023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965744, 35.177418, 57.893734>,  <32.739334, 35.439228, 57.693253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965744, 35.177418, 57.893734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227755, 0.460147, 0.858133,
		-0.792299, -0.599879, 0.111384,
		0.566030, -0.654530, 0.501200,
		33.135551, 34.981060, 58.044094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021255, 35.210541, 57.730164>,  <32.739334, 35.439228, 57.693253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021255, 35.210541, 57.730164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697639, 35.426739, 57.637798>,  <31.503469, 35.556458, 57.582378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697639, 35.426739, 57.637798>,  <32.021255, 35.210541, 57.730164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697639, 35.426739, 57.637798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103337, -0.517567, -0.849380,
		-0.578597, -0.663321, 0.474586,
		-0.809041, 0.540491, -0.230917,
		31.454927, 35.588886, 57.568523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527647, 34.729042, 57.678268>,  <32.021255, 35.210541, 57.730164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527647, 34.729042, 57.678268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416985, 35.045307, 57.459793>,  <31.350586, 35.235065, 57.328709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416985, 35.045307, 57.459793>,  <31.527647, 34.729042, 57.678268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416985, 35.045307, 57.459793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079784, -0.585306, -0.806878,
		-0.957651, -0.179652, 0.225011,
		-0.276657, 0.790659, -0.546185,
		31.333988, 35.282505, 57.295937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843561, 34.490681, 57.350994>,  <31.527647, 34.729042, 57.678268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843561, 34.490681, 57.350994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926662, 34.822487, 57.143631>,  <30.976524, 35.021572, 57.019215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926662, 34.822487, 57.143631>,  <30.843561, 34.490681, 57.350994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926662, 34.822487, 57.143631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513089, -0.358796, -0.779747,
		-0.832813, 0.427983, 0.351073,
		0.207755, 0.829516, -0.518403,
		30.988989, 35.071342, 56.988110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218231, 34.709839, 57.017429>,  <30.843561, 34.490681, 57.350994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218231, 34.709839, 57.017429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533274, 34.839928, 56.808086>,  <30.722300, 34.917980, 56.682480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533274, 34.839928, 56.808086>,  <30.218231, 34.709839, 57.017429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533274, 34.839928, 56.808086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400936, -0.374468, -0.836077,
		-0.467893, 0.868333, -0.164541,
		0.787608, 0.325224, -0.523357,
		30.769556, 34.937496, 56.651081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007235, 34.930805, 56.348904>,  <30.218231, 34.709839, 57.017429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007235, 34.930805, 56.348904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397644, 34.851715, 56.312504>,  <30.631889, 34.804260, 56.290665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397644, 34.851715, 56.312504>,  <30.007235, 34.930805, 56.348904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397644, 34.851715, 56.312504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181512, -0.508652, -0.841621,
		0.120119, 0.837961, -0.532346,
		0.976025, -0.197722, -0.091001,
		30.690451, 34.792397, 56.285202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056341, 34.979515, 55.645103>,  <30.007235, 34.930805, 56.348904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056341, 34.979515, 55.645103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401072, 34.821117, 55.771881>,  <30.607910, 34.726078, 55.847946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401072, 34.821117, 55.771881>,  <30.056341, 34.979515, 55.645103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401072, 34.821117, 55.771881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139268, -0.416108, -0.898587,
		0.487713, 0.818563, -0.303463,
		0.861824, -0.395990, 0.316941,
		30.659618, 34.702320, 55.866962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392567, 34.889771, 55.026508>,  <30.056341, 34.979515, 55.645103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392567, 34.889771, 55.026508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590723, 34.661819, 55.288754>,  <30.709616, 34.525047, 55.446102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590723, 34.661819, 55.288754>,  <30.392567, 34.889771, 55.026508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590723, 34.661819, 55.288754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163047, -0.680316, -0.714553,
		0.853233, 0.460877, -0.244103,
		0.495389, -0.569880, 0.655612,
		30.739340, 34.490856, 55.485435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981548, 34.644909, 54.605156>,  <30.392567, 34.889771, 55.026508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981548, 34.644909, 54.605156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914186, 34.386425, 54.902897>,  <30.873770, 34.231335, 55.081543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914186, 34.386425, 54.902897>,  <30.981548, 34.644909, 54.605156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914186, 34.386425, 54.902897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141873, -0.763163, -0.630439,
		0.975455, -0.000566, 0.220200,
		-0.168405, -0.646205, 0.744351,
		30.863665, 34.192562, 55.126202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543753, 34.085793, 54.628609>,  <30.981548, 34.644909, 54.605156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543753, 34.085793, 54.628609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239967, 33.924965, 54.833179>,  <31.057697, 33.828468, 54.955921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239967, 33.924965, 54.833179>,  <31.543753, 34.085793, 54.628609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239967, 33.924965, 54.833179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041746, -0.814645, -0.578456,
		0.649212, -0.417965, 0.635476,
		-0.759461, -0.402069, 0.511428,
		31.012129, 33.804344, 54.986607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769588, 33.508438, 54.929535>,  <31.543753, 34.085793, 54.628609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769588, 33.508438, 54.929535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373674, 33.477730, 54.881481>,  <31.136126, 33.459305, 54.852650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373674, 33.477730, 54.881481>,  <31.769588, 33.508438, 54.929535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373674, 33.477730, 54.881481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137157, -0.742769, -0.655349,
		-0.038923, -0.665132, 0.745711,
		-0.989784, -0.076771, -0.120138,
		31.076738, 33.454697, 54.845440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737761, 32.865837, 54.639820>,  <31.769588, 33.508438, 54.929535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737761, 32.865837, 54.639820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369221, 33.008183, 54.577240>,  <31.148098, 33.093590, 54.539692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369221, 33.008183, 54.577240>,  <31.737761, 32.865837, 54.639820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369221, 33.008183, 54.577240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119107, -0.641517, -0.757806,
		-0.370042, -0.679569, 0.633447,
		-0.921348, 0.355868, -0.156447,
		31.092815, 33.114944, 54.530304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328005, 32.252419, 54.541065>,  <31.737761, 32.865837, 54.639820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328005, 32.252419, 54.541065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.116169, 32.562328, 54.402927>,  <30.989067, 32.748272, 54.320045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.116169, 32.562328, 54.402927>,  <31.328005, 32.252419, 54.541065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116169, 32.562328, 54.402927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409863, -0.590169, -0.695495,
		-0.742662, -0.226783, 0.630098,
		-0.529591, 0.774771, -0.345346,
		30.957291, 32.794758, 54.299324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692696, 31.908981, 54.488232>,  <31.328005, 32.252419, 54.541065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692696, 31.908981, 54.488232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.734159, 32.229954, 54.253162>,  <30.759039, 32.422539, 54.112122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.734159, 32.229954, 54.253162>,  <30.692696, 31.908981, 54.488232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734159, 32.229954, 54.253162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153230, -0.570917, -0.806583,
		-0.982739, 0.173660, 0.063774,
		0.103661, 0.802432, -0.587672,
		30.765257, 32.470684, 54.076862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012453, 31.900822, 53.993301>,  <30.692696, 31.908981, 54.488232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012453, 31.900822, 53.993301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302504, 32.119606, 53.825958>,  <30.476534, 32.250877, 53.725552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302504, 32.119606, 53.825958>,  <30.012453, 31.900822, 53.993301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302504, 32.119606, 53.825958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140544, -0.477198, -0.867484,
		-0.674122, 0.687833, -0.269156,
		0.725125, 0.546962, -0.418361,
		30.520041, 32.283695, 53.700451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.107973, 39.041412, 55.763035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.498865, 39.035198, 55.678394>,  <28.733400, 39.031471, 55.627609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.498865, 39.035198, 55.678394>,  <28.107973, 39.041412, 55.763035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498865, 39.035198, 55.678394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212114, 0.094785, 0.972637,
		0.004949, -0.995377, 0.095922,
		0.977232, -0.015533, -0.211603,
		28.792034, 39.030537, 55.614914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480890, 38.503223, 56.190094>,  <28.107973, 39.041412, 55.763035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480890, 38.503223, 56.190094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.734200, 38.801487, 56.107185>,  <28.886185, 38.980446, 56.057438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.734200, 38.801487, 56.107185>,  <28.480890, 38.503223, 56.190094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734200, 38.801487, 56.107185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235661, 0.069317, 0.969360,
		0.737177, -0.662715, -0.131826,
		0.633272, 0.745657, -0.207275,
		28.924181, 39.025185, 56.045002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995090, 38.346821, 56.715248>,  <28.480890, 38.503223, 56.190094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995090, 38.346821, 56.715248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.097187, 38.708599, 56.578526>,  <29.158445, 38.925667, 56.496494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.097187, 38.708599, 56.578526>,  <28.995090, 38.346821, 56.715248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097187, 38.708599, 56.578526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368521, 0.235826, 0.899210,
		0.893893, -0.355476, -0.273115,
		0.255240, 0.904446, -0.341804,
		29.173759, 38.979935, 56.475983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546391, 38.440784, 57.004650>,  <28.995090, 38.346821, 56.715248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546391, 38.440784, 57.004650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.423826, 38.808018, 56.904064>,  <29.350288, 39.028358, 56.843712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.423826, 38.808018, 56.904064>,  <29.546391, 38.440784, 57.004650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423826, 38.808018, 56.904064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223478, 0.326166, 0.918517,
		0.925295, 0.225248, -0.305112,
		-0.306411, 0.918085, -0.251462,
		29.331903, 39.083443, 56.828625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001600, 38.917049, 57.351948>,  <29.546391, 38.440784, 57.004650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001600, 38.917049, 57.351948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685287, 39.141029, 57.253056>,  <29.495501, 39.275417, 57.193722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685287, 39.141029, 57.253056>,  <30.001600, 38.917049, 57.351948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685287, 39.141029, 57.253056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100619, 0.517320, 0.849857,
		0.603774, 0.647174, -0.465428,
		-0.790780, 0.559952, -0.247226,
		29.448053, 39.309013, 57.178886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203688, 39.617825, 57.367741>,  <30.001600, 38.917049, 57.351948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203688, 39.617825, 57.367741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807623, 39.597748, 57.419987>,  <29.569984, 39.585701, 57.451332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807623, 39.597748, 57.419987>,  <30.203688, 39.617825, 57.367741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807623, 39.597748, 57.419987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078166, 0.575814, 0.813836,
		-0.116053, 0.816039, -0.566226,
		-0.990163, -0.050188, 0.130611,
		29.510574, 39.582691, 57.459171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010609, 40.177982, 57.802231>,  <30.203688, 39.617825, 57.367741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010609, 40.177982, 57.802231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.664585, 39.980835, 57.839653>,  <29.456970, 39.862545, 57.862106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.664585, 39.980835, 57.839653>,  <30.010609, 40.177982, 57.802231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664585, 39.980835, 57.839653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096934, 0.347197, 0.932769,
		-0.492218, 0.797830, -0.348121,
		-0.865058, -0.492870, 0.093560,
		29.405067, 39.832973, 57.867722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682039, 40.691589, 58.008934>,  <30.010609, 40.177982, 57.802231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682039, 40.691589, 58.008934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.464602, 40.369308, 58.103043>,  <29.334139, 40.175941, 58.159508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.464602, 40.369308, 58.103043>,  <29.682039, 40.691589, 58.008934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464602, 40.369308, 58.103043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025007, 0.295721, 0.954947,
		-0.838977, 0.513219, -0.180899,
		-0.543592, -0.805702, 0.235269,
		29.301523, 40.127598, 58.173622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040279, 40.879639, 58.335850>,  <29.682039, 40.691589, 58.008934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040279, 40.879639, 58.335850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.055626, 40.488457, 58.417965>,  <29.064833, 40.253750, 58.467232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.055626, 40.488457, 58.417965>,  <29.040279, 40.879639, 58.335850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055626, 40.488457, 58.417965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117055, 0.199622, 0.972856,
		-0.992384, -0.061353, -0.106816,
		0.038365, -0.977950, 0.205283,
		29.067135, 40.195072, 58.479549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417149, 40.739231, 58.763592>,  <29.040279, 40.879639, 58.335850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417149, 40.739231, 58.763592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.706444, 40.473637, 58.839546>,  <28.880020, 40.314281, 58.885120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.706444, 40.473637, 58.839546>,  <28.417149, 40.739231, 58.763592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706444, 40.473637, 58.839546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151901, 0.115274, 0.981651,
		-0.673687, -0.738809, -0.017489,
		0.723237, -0.663982, 0.189885,
		28.923414, 40.274441, 58.896511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192814, 40.427505, 59.289612>,  <28.417149, 40.739231, 58.763592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192814, 40.427505, 59.289612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.581844, 40.336185, 59.307396>,  <28.815262, 40.281395, 59.318066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.581844, 40.336185, 59.307396>,  <28.192814, 40.427505, 59.289612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581844, 40.336185, 59.307396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055931, -0.044026, 0.997464,
		-0.225764, -0.972595, -0.055588,
		0.972575, -0.228300, 0.044459,
		28.873617, 40.267696, 59.320732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276974, 39.858536, 59.810181>,  <28.192814, 40.427505, 59.289612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276974, 39.858536, 59.810181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.640377, 40.022118, 59.775845>,  <28.858419, 40.120266, 59.755241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.640377, 40.022118, 59.775845>,  <28.276974, 39.858536, 59.810181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640377, 40.022118, 59.775845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077660, 0.036608, 0.996308,
		0.410588, -0.911820, 0.001499,
		0.908507, 0.408956, -0.085843,
		28.912930, 40.144806, 59.750092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850418, 39.538239, 60.262093>,  <28.276974, 39.858536, 59.810181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850418, 39.538239, 60.262093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.909033, 39.926601, 60.186333>,  <28.944202, 40.159618, 60.140877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.909033, 39.926601, 60.186333>,  <28.850418, 39.538239, 60.262093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909033, 39.926601, 60.186333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193526, 0.159632, 0.968021,
		0.970090, -0.178506, -0.164503,
		0.146537, 0.970904, -0.189403,
		28.952993, 40.217873, 60.129513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466949, 39.726196, 60.762402>,  <28.850418, 39.538239, 60.262093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466949, 39.726196, 60.762402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.266094, 40.052013, 60.646214>,  <29.145580, 40.247505, 60.576500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.266094, 40.052013, 60.646214>,  <29.466949, 39.726196, 60.762402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266094, 40.052013, 60.646214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204584, 0.438244, 0.875265,
		0.840240, 0.380077, -0.386702,
		-0.502138, 0.814545, -0.290472,
		29.115454, 40.296375, 60.559071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004431, 39.687550, 61.251919>,  <29.466949, 39.726196, 60.762402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004431, 39.687550, 61.251919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251957, 39.521122, 61.518440>,  <30.400473, 39.421265, 61.678352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251957, 39.521122, 61.518440>,  <30.004431, 39.687550, 61.251919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251957, 39.521122, 61.518440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033479, -0.833471, -0.551548,
		0.784822, 0.363614, -0.501836,
		0.618816, -0.416066, 0.666300,
		30.437601, 39.396301, 61.718330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723530, 39.657047, 61.019188>,  <30.004431, 39.687550, 61.251919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723530, 39.657047, 61.019188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.597824, 39.367870, 61.265308>,  <30.522400, 39.194363, 61.412979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.597824, 39.367870, 61.265308>,  <30.723530, 39.657047, 61.019188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597824, 39.367870, 61.265308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276737, -0.689752, -0.669073,
		0.908104, -0.039991, 0.416830,
		-0.314266, -0.722941, 0.615299,
		30.503544, 39.150990, 61.449898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266472, 39.233780, 61.007320>,  <30.723530, 39.657047, 61.019188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266472, 39.233780, 61.007320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.963341, 38.999844, 61.123016>,  <30.781462, 38.859482, 61.192432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.963341, 38.999844, 61.123016>,  <31.266472, 39.233780, 61.007320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963341, 38.999844, 61.123016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192860, -0.624290, -0.757012,
		0.623302, -0.517901, 0.585895,
		-0.757826, -0.584843, 0.289239,
		30.735992, 38.824390, 61.209789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498262, 38.572971, 61.164158>,  <31.266472, 39.233780, 61.007320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498262, 38.572971, 61.164158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.110920, 38.500687, 61.095310>,  <30.878513, 38.457317, 61.054001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.110920, 38.500687, 61.095310>,  <31.498262, 38.572971, 61.164158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110920, 38.500687, 61.095310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246222, -0.579294, -0.777041,
		0.040712, -0.794834, 0.605460,
		-0.968358, -0.180712, -0.172121,
		30.820412, 38.446472, 61.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433556, 37.828133, 61.191898>,  <31.498262, 38.572971, 61.164158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433556, 37.828133, 61.191898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108511, 37.934124, 60.984268>,  <30.913483, 37.997719, 60.859688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108511, 37.934124, 60.984268>,  <31.433556, 37.828133, 61.191898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108511, 37.934124, 60.984268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117940, -0.797465, -0.591726,
		-0.570744, -0.542065, 0.616779,
		-0.812614, 0.264981, -0.519079,
		30.864727, 38.013618, 60.828545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216318, 37.234974, 60.976261>,  <31.433556, 37.828133, 61.191898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216318, 37.234974, 60.976261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.030605, 37.505196, 60.747154>,  <30.919178, 37.667328, 60.609692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.030605, 37.505196, 60.747154>,  <31.216318, 37.234974, 60.976261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030605, 37.505196, 60.747154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026193, -0.656884, -0.753536,
		-0.885299, -0.334852, 0.322675,
		-0.464283, 0.675557, -0.572769,
		30.891319, 37.707863, 60.575325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485590, 36.874271, 60.743843>,  <31.216318, 37.234974, 60.976261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485590, 36.874271, 60.743843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.616776, 37.145199, 60.480427>,  <30.695486, 37.307755, 60.322376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.616776, 37.145199, 60.480427>,  <30.485590, 36.874271, 60.743843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616776, 37.145199, 60.480427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220813, -0.622824, -0.750554,
		-0.918521, 0.391569, -0.054703,
		0.327964, 0.677321, -0.658541,
		30.715164, 37.348396, 60.282864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975082, 36.986664, 60.195282>,  <30.485590, 36.874271, 60.743843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975082, 36.986664, 60.195282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316212, 37.117805, 60.032703>,  <30.520889, 37.196491, 59.935154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316212, 37.117805, 60.032703>,  <29.975082, 36.986664, 60.195282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316212, 37.117805, 60.032703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119962, -0.634524, -0.763537,
		-0.508233, 0.699921, -0.501807,
		0.852824, 0.327857, -0.406450,
		30.572060, 37.216164, 59.910770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861973, 36.933781, 59.539478>,  <29.975082, 36.986664, 60.195282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861973, 36.933781, 59.539478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.261879, 36.934887, 59.530918>,  <30.501823, 36.935551, 59.525780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.261879, 36.934887, 59.530918>,  <29.861973, 36.933781, 59.539478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261879, 36.934887, 59.530918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013884, -0.676747, -0.736084,
		-0.016524, 0.736210, -0.676551,
		0.999767, 0.002770, -0.021404,
		30.561810, 36.935719, 59.524498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159615, 37.016750, 58.805923>,  <29.861973, 36.933781, 59.539478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159615, 37.016750, 58.805923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.484592, 36.882748, 58.996796>,  <30.679579, 36.802345, 59.111320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.484592, 36.882748, 58.996796>,  <30.159615, 37.016750, 58.805923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484592, 36.882748, 58.996796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257105, -0.528709, -0.808928,
		0.523286, 0.779896, -0.343415,
		0.812446, -0.335007, 0.477181,
		30.728327, 36.782246, 59.139950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761459, 37.145187, 58.336002>,  <30.159615, 37.016750, 58.805923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761459, 37.145187, 58.336002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.888060, 36.859131, 58.585289>,  <30.964020, 36.687496, 58.734859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.888060, 36.859131, 58.585289>,  <30.761459, 37.145187, 58.336002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888060, 36.859131, 58.585289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421941, -0.482284, -0.767703,
		0.849584, 0.505940, 0.149104,
		0.316501, -0.715141, 0.623218,
		30.983009, 36.644588, 58.772255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417053, 37.025799, 58.113102>,  <30.761459, 37.145187, 58.336002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417053, 37.025799, 58.113102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319176, 36.694271, 58.314369>,  <31.260450, 36.495354, 58.435131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319176, 36.694271, 58.314369>,  <31.417053, 37.025799, 58.113102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319176, 36.694271, 58.314369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318840, -0.558866, -0.765513,
		0.915679, -0.026884, 0.401011,
		-0.244692, -0.828822, 0.503169,
		31.245768, 36.445625, 58.465321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018707, 36.588467, 58.062912>,  <31.417053, 37.025799, 58.113102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018707, 36.588467, 58.062912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695660, 36.366081, 58.141567>,  <31.501833, 36.232651, 58.188759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695660, 36.366081, 58.141567>,  <32.018707, 36.588467, 58.062912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695660, 36.366081, 58.141567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241471, -0.615980, -0.749840,
		0.538006, -0.558100, 0.631723,
		-0.807615, -0.555961, 0.196636,
		31.453375, 36.199291, 58.200558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209675, 35.881294, 58.046787>,  <32.018707, 36.588467, 58.062912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209675, 35.881294, 58.046787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819584, 35.903294, 57.961086>,  <31.585529, 35.916492, 57.909664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819584, 35.903294, 57.961086>,  <32.209675, 35.881294, 58.046787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819584, 35.903294, 57.961086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129471, -0.643413, -0.754491,
		-0.179351, -0.763541, 0.620354,
		-0.975229, 0.055001, -0.214253,
		31.527016, 35.919792, 57.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371826, 35.216805, 58.354969>,  <32.209675, 35.881294, 58.046787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371826, 35.216805, 58.354969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765408, 35.150581, 58.381599>,  <33.001556, 35.110847, 58.397579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765408, 35.150581, 58.381599>,  <32.371826, 35.216805, 58.354969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765408, 35.150581, 58.381599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027587, 0.509763, 0.859872,
		-0.176299, -0.844234, 0.506149,
		0.983950, -0.165557, 0.066581,
		33.060593, 35.100914, 58.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515762, 34.995724, 59.071396>,  <32.371826, 35.216805, 58.354969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515762, 34.995724, 59.071396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.875458, 35.114407, 58.942814>,  <33.091274, 35.185616, 58.865665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.875458, 35.114407, 58.942814>,  <32.515762, 34.995724, 59.071396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875458, 35.114407, 58.942814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089221, 0.594987, 0.798768,
		0.428262, -0.746964, 0.508564,
		0.899239, 0.296707, -0.321455,
		33.145229, 35.203419, 58.846378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116150, 34.889614, 59.696064>,  <32.515762, 34.995724, 59.071396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116150, 34.889614, 59.696064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218628, 35.161842, 59.421490>,  <33.280113, 35.325180, 59.256744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218628, 35.161842, 59.421490>,  <33.116150, 34.889614, 59.696064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218628, 35.161842, 59.421490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194555, 0.659298, 0.726274,
		0.946844, -0.319615, 0.036499,
		0.256192, 0.680567, -0.686436,
		33.295486, 35.366013, 59.215557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682720, 35.192848, 59.979385>,  <33.116150, 34.889614, 59.696064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682720, 35.192848, 59.979385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.596729, 35.471420, 59.705521>,  <33.545135, 35.638565, 59.541203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.596729, 35.471420, 59.705521>,  <33.682720, 35.192848, 59.979385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596729, 35.471420, 59.705521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166088, 0.716914, 0.677089,
		0.962393, 0.031845, -0.269790,
		-0.214978, 0.696434, -0.684664,
		33.532234, 35.680351, 59.500122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267445, 35.644993, 59.935459>,  <33.682720, 35.192848, 59.979385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267445, 35.644993, 59.935459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.955444, 35.852898, 59.796062>,  <33.768246, 35.977642, 59.712425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.955444, 35.852898, 59.796062>,  <34.267445, 35.644993, 59.935459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955444, 35.852898, 59.796062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249417, 0.768961, 0.588634,
		0.573931, 0.372211, -0.729425,
		-0.779996, 0.519766, -0.348495,
		33.721447, 36.008827, 59.691513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598770, 36.321690, 60.016071>,  <34.267445, 35.644993, 59.935459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598770, 36.321690, 60.016071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201576, 36.348232, 59.976925>,  <33.963261, 36.364159, 59.953438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201576, 36.348232, 59.976925>,  <34.598770, 36.321690, 60.016071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201576, 36.348232, 59.976925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010926, 0.772637, 0.634754,
		0.117738, 0.631370, -0.766492,
		-0.992985, 0.066360, -0.097867,
		33.903683, 36.368141, 59.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459881, 37.057587, 59.919380>,  <34.598770, 36.321690, 60.016071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459881, 37.057587, 59.919380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133167, 36.876495, 60.062435>,  <33.937138, 36.767841, 60.148266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133167, 36.876495, 60.062435>,  <34.459881, 37.057587, 59.919380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133167, 36.876495, 60.062435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095426, 0.717350, 0.690147,
		-0.568997, 0.529573, -0.629122,
		-0.816784, -0.452727, 0.357635,
		33.888134, 36.740677, 60.169727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535717, 37.814865, 59.572521>,  <34.459881, 37.057587, 59.919380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535717, 37.814865, 59.572521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914352, 37.937191, 59.613411>,  <35.141533, 38.010586, 59.637947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914352, 37.937191, 59.613411>,  <34.535717, 37.814865, 59.572521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914352, 37.937191, 59.613411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302334, -0.731532, -0.611110,
		-0.112103, 0.609375, -0.784917,
		0.946587, 0.305815, 0.102228,
		35.198330, 38.028934, 59.644081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780312, 37.649769, 58.928860>,  <34.535717, 37.814865, 59.572521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780312, 37.649769, 58.928860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.091949, 37.699570, 59.174629>,  <35.278931, 37.729450, 59.322090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.091949, 37.699570, 59.174629>,  <34.780312, 37.649769, 58.928860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091949, 37.699570, 59.174629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519899, -0.675987, -0.522252,
		0.350318, 0.726320, -0.591386,
		0.779091, 0.124506, 0.614423,
		35.325676, 37.736923, 59.358955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271252, 37.796906, 58.553078>,  <34.780312, 37.649769, 58.928860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271252, 37.796906, 58.553078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489399, 37.686836, 58.869774>,  <35.620285, 37.620796, 59.059792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489399, 37.686836, 58.869774>,  <35.271252, 37.796906, 58.553078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489399, 37.686836, 58.869774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639336, -0.474290, -0.605227,
		0.542057, 0.836259, -0.082733,
		0.545366, -0.275173, 0.791742,
		35.653008, 37.604282, 59.107296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011803, 37.785519, 58.387886>,  <35.271252, 37.796906, 58.553078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011803, 37.785519, 58.387886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985046, 37.538963, 58.701725>,  <35.968994, 37.391029, 58.890030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985046, 37.538963, 58.701725>,  <36.011803, 37.785519, 58.387886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985046, 37.538963, 58.701725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697110, -0.591465, -0.405225,
		0.713837, 0.519846, 0.469252,
		-0.066892, -0.616384, 0.784599,
		35.964977, 37.354050, 58.937103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678776, 37.569656, 58.410889>,  <36.011803, 37.785519, 58.387886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678776, 37.569656, 58.410889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.453171, 37.314960, 58.621201>,  <36.317806, 37.162144, 58.747387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.453171, 37.314960, 58.621201>,  <36.678776, 37.569656, 58.410889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453171, 37.314960, 58.621201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630378, -0.743288, -0.223934,
		0.533397, 0.205141, 0.820612,
		-0.564014, -0.636741, 0.525784,
		36.283966, 37.123940, 58.778934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179043, 37.198402, 58.579964>,  <36.678776, 37.569656, 58.410889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179043, 37.198402, 58.579964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.855656, 36.978230, 58.663300>,  <36.661625, 36.846127, 58.713303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.855656, 36.978230, 58.663300>,  <37.179043, 37.198402, 58.579964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855656, 36.978230, 58.663300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503189, -0.830068, -0.240392,
		0.305259, -0.089512, 0.948053,
		-0.808466, -0.550431, 0.208345,
		36.613117, 36.813099, 58.725803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326565, 36.769962, 59.066833>,  <37.179043, 37.198402, 58.579964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326565, 36.769962, 59.066833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048351, 36.629436, 58.816135>,  <36.881424, 36.545120, 58.665718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048351, 36.629436, 58.816135>,  <37.326565, 36.769962, 59.066833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048351, 36.629436, 58.816135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555316, -0.816366, -0.158654,
		-0.455916, -0.458391, 0.762901,
		-0.695532, -0.351318, -0.626746,
		36.839691, 36.524040, 58.628113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.644337, 41.925255, 59.680096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594696, 41.530033, 59.716640>,  <31.564911, 41.292900, 59.738567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594696, 41.530033, 59.716640>,  <31.644337, 41.925255, 59.680096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594696, 41.530033, 59.716640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517249, 0.142990, 0.843805,
		-0.846789, 0.057461, -0.528816,
		-0.124101, -0.988055, 0.091361,
		31.557467, 41.233616, 59.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200333, 41.306950, 59.524403>,  <31.644337, 41.925255, 59.680096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200333, 41.306950, 59.524403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825312, 41.269955, 59.390270>,  <31.600300, 41.247757, 59.309792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825312, 41.269955, 59.390270>,  <32.200333, 41.306950, 59.524403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825312, 41.269955, 59.390270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343316, -0.401188, -0.849225,
		-0.055991, -0.911315, 0.407885,
		-0.937550, -0.092485, -0.335331,
		31.544046, 41.242210, 59.289669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182022, 40.740765, 59.173153>,  <32.200333, 41.306950, 59.524403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182022, 40.740765, 59.173153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851891, 40.919384, 59.034924>,  <31.653811, 41.026558, 58.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851891, 40.919384, 59.034924>,  <32.182022, 40.740765, 59.173153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851891, 40.919384, 59.034924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218026, -0.312524, -0.924550,
		-0.520860, -0.838403, 0.160575,
		-0.825330, 0.446552, -0.345576,
		31.604292, 41.053349, 58.931252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877342, 40.329674, 58.706661>,  <32.182022, 40.740765, 59.173153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877342, 40.329674, 58.706661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742456, 40.694538, 58.613495>,  <31.661526, 40.913456, 58.557594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742456, 40.694538, 58.613495>,  <31.877342, 40.329674, 58.706661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742456, 40.694538, 58.613495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081963, -0.218023, -0.972496,
		-0.937853, -0.347031, -0.001243,
		-0.337215, 0.912160, -0.232917,
		31.641293, 40.968185, 58.543621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234529, 40.207932, 58.360939>,  <31.877342, 40.329674, 58.706661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234529, 40.207932, 58.360939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356281, 40.573997, 58.255238>,  <31.429333, 40.793636, 58.191818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356281, 40.573997, 58.255238>,  <31.234529, 40.207932, 58.360939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356281, 40.573997, 58.255238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018476, -0.283035, -0.958932,
		-0.952371, 0.286999, -0.103059,
		0.304381, 0.915163, -0.264252,
		31.447596, 40.848545, 58.175961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818914, 40.363873, 57.674206>,  <31.234529, 40.207932, 58.360939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818914, 40.363873, 57.674206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115932, 40.631603, 57.684292>,  <31.294144, 40.792240, 57.690342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115932, 40.631603, 57.684292>,  <30.818914, 40.363873, 57.674206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115932, 40.631603, 57.684292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095973, -0.069063, -0.992985,
		-0.662887, 0.739754, -0.115519,
		0.742543, 0.669323, 0.025216,
		31.338696, 40.832401, 57.691856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666304, 41.065201, 57.238144>,  <30.818914, 40.363873, 57.674206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666304, 41.065201, 57.238144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060585, 41.007256, 57.272568>,  <31.297153, 40.972488, 57.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060585, 41.007256, 57.272568>,  <30.666304, 41.065201, 57.238144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060585, 41.007256, 57.272568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067432, -0.128905, -0.989362,
		0.154413, 0.981019, -0.117294,
		0.985703, -0.144861, 0.086057,
		31.356297, 40.963799, 57.298386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063282, 41.364128, 56.574448>,  <30.666304, 41.065201, 57.238144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063282, 41.364128, 56.574448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333988, 41.114906, 56.731312>,  <31.496412, 40.965374, 56.825432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333988, 41.114906, 56.731312>,  <31.063282, 41.364128, 56.574448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333988, 41.114906, 56.731312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213363, -0.343830, -0.914471,
		0.704602, 0.702556, -0.099756,
		0.676766, -0.623054, 0.392163,
		31.537018, 40.927990, 56.848961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523022, 41.352516, 56.060844>,  <31.063282, 41.364128, 56.574448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523022, 41.352516, 56.060844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625257, 41.044727, 56.294971>,  <31.686598, 40.860054, 56.435448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625257, 41.044727, 56.294971>,  <31.523022, 41.352516, 56.060844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625257, 41.044727, 56.294971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447496, -0.442504, -0.777134,
		0.856984, 0.460552, 0.231236,
		0.255588, -0.769469, 0.585314,
		31.701933, 40.813885, 56.470566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263382, 41.307247, 55.935574>,  <31.523022, 41.352516, 56.060844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263382, 41.307247, 55.935574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105904, 40.967468, 56.076115>,  <32.011417, 40.763603, 56.160439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105904, 40.967468, 56.076115>,  <32.263382, 41.307247, 55.935574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105904, 40.967468, 56.076115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268804, -0.471896, -0.839678,
		0.879063, -0.236129, 0.414115,
		-0.393691, -0.849445, 0.351354,
		31.987797, 40.712635, 56.181522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804050, 40.955635, 55.941357>,  <32.263382, 41.307247, 55.935574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804050, 40.955635, 55.941357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514656, 40.680218, 55.961258>,  <32.341019, 40.514969, 55.973198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514656, 40.680218, 55.961258>,  <32.804050, 40.955635, 55.941357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514656, 40.680218, 55.961258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415534, -0.491907, -0.765087,
		0.551269, -0.532857, 0.642002,
		-0.723487, -0.688542, 0.049753,
		32.297611, 40.473656, 55.976185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185440, 40.351852, 55.844929>,  <32.804050, 40.955635, 55.941357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185440, 40.351852, 55.844929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806190, 40.248039, 55.771503>,  <32.578640, 40.185753, 55.727448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806190, 40.248039, 55.771503>,  <33.185440, 40.351852, 55.844929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806190, 40.248039, 55.771503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303961, -0.571109, -0.762524,
		0.093065, -0.778767, 0.620372,
		-0.948128, -0.259533, -0.183565,
		32.521751, 40.170181, 55.716434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997902, 40.211849, 55.904659>,  <33.185440, 40.351852, 55.844929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997902, 40.211849, 55.904659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389061, 40.235600, 55.984840>,  <34.623756, 40.249851, 56.032951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389061, 40.235600, 55.984840>,  <33.997902, 40.211849, 55.904659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389061, 40.235600, 55.984840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209057, 0.287299, 0.934748,
		-0.002088, -0.955999, 0.293364,
		0.977901, 0.059378, 0.200458,
		34.682430, 40.253414, 56.044979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160416, 39.804977, 56.473320>,  <33.997902, 40.211849, 55.904659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160416, 39.804977, 56.473320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433529, 40.097225, 56.472626>,  <34.597397, 40.272572, 56.472210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433529, 40.097225, 56.472626>,  <34.160416, 39.804977, 56.473320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433529, 40.097225, 56.472626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103313, 0.098905, 0.989719,
		0.723277, -0.675587, 0.143013,
		0.682786, 0.730617, -0.001739,
		34.638363, 40.316410, 56.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377361, 39.745117, 57.094841>,  <34.160416, 39.804977, 56.473320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377361, 39.745117, 57.094841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544056, 40.084278, 56.963760>,  <34.644073, 40.287773, 56.885113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544056, 40.084278, 56.963760>,  <34.377361, 39.745117, 57.094841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544056, 40.084278, 56.963760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054590, 0.336501, 0.940099,
		0.907385, -0.409667, 0.093947,
		0.416741, 0.847903, -0.327700,
		34.669079, 40.338650, 56.865452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101570, 39.914951, 57.502865>,  <34.377361, 39.745117, 57.094841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101570, 39.914951, 57.502865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915470, 40.243908, 57.371891>,  <34.803810, 40.441284, 57.293304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915470, 40.243908, 57.371891>,  <35.101570, 39.914951, 57.502865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915470, 40.243908, 57.371891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114012, 0.422504, 0.899162,
		0.877809, 0.380999, -0.290331,
		-0.465245, 0.822393, -0.327439,
		34.775898, 40.490627, 57.273659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350491, 40.313236, 58.011284>,  <35.101570, 39.914951, 57.502865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350491, 40.313236, 58.011284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094173, 40.551594, 57.817673>,  <34.940384, 40.694611, 57.701504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094173, 40.551594, 57.817673>,  <35.350491, 40.313236, 58.011284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094173, 40.551594, 57.817673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026942, 0.612644, 0.789900,
		0.767238, 0.519205, -0.376525,
		-0.640796, 0.595897, -0.484032,
		34.901936, 40.730362, 57.672462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598396, 41.061859, 57.866955>,  <35.350491, 40.313236, 58.011284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598396, 41.061859, 57.866955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199066, 41.081226, 57.879570>,  <34.959469, 41.092846, 57.887138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199066, 41.081226, 57.879570>,  <35.598396, 41.061859, 57.866955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199066, 41.081226, 57.879570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057257, 0.755071, 0.653138,
		0.007812, 0.653852, -0.756582,
		-0.998329, 0.048422, 0.031539,
		34.899567, 41.095753, 57.889030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379925, 41.834724, 57.828434>,  <35.598396, 41.061859, 57.866955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379925, 41.834724, 57.828434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087257, 41.629639, 58.008114>,  <34.911655, 41.506588, 58.115921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087257, 41.629639, 58.008114>,  <35.379925, 41.834724, 57.828434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087257, 41.629639, 58.008114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092852, 0.577879, 0.810823,
		-0.675302, 0.634966, -0.375212,
		-0.731673, -0.512712, 0.449201,
		34.867756, 41.475826, 58.142876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903328, 42.306587, 58.177708>,  <35.379925, 41.834724, 57.828434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903328, 42.306587, 58.177708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832577, 41.958691, 58.362000>,  <34.790127, 41.749954, 58.472572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832577, 41.958691, 58.362000>,  <34.903328, 42.306587, 58.177708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832577, 41.958691, 58.362000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128616, 0.484518, 0.865274,
		-0.975793, 0.093793, -0.197564,
		-0.176881, -0.869738, 0.460726,
		34.779514, 41.697769, 58.500217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426460, 42.519611, 58.597858>,  <34.903328, 42.306587, 58.177708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426460, 42.519611, 58.597858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531769, 42.167538, 58.755829>,  <34.594955, 41.956295, 58.850609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531769, 42.167538, 58.755829>,  <34.426460, 42.519611, 58.597858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531769, 42.167538, 58.755829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269107, 0.326112, 0.906219,
		-0.926427, -0.344861, -0.151006,
		0.263274, -0.880183, 0.394924,
		34.610752, 41.903484, 58.874306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885239, 42.247643, 59.017406>,  <34.426460, 42.519611, 58.597858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885239, 42.247643, 59.017406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195660, 42.071018, 59.197529>,  <34.381912, 41.965046, 59.305603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195660, 42.071018, 59.197529>,  <33.885239, 42.247643, 59.017406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195660, 42.071018, 59.197529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330258, 0.323760, 0.886628,
		-0.537288, -0.836784, 0.105426,
		0.776049, -0.441557, 0.450307,
		34.428474, 41.938553, 59.332623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628849, 41.952457, 59.595905>,  <33.885239, 42.247643, 59.017406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628849, 41.952457, 59.595905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020958, 41.969311, 59.673153>,  <34.256222, 41.979424, 59.719501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020958, 41.969311, 59.673153>,  <33.628849, 41.952457, 59.595905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020958, 41.969311, 59.673153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195525, 0.063259, 0.978656,
		0.029013, -0.997107, 0.070248,
		0.980269, 0.042129, 0.193124,
		34.315041, 41.981949, 59.731091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588184, 41.763824, 60.282978>,  <33.628849, 41.952457, 59.595905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588184, 41.763824, 60.282978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957722, 41.905464, 60.224842>,  <34.179443, 41.990448, 60.189960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957722, 41.905464, 60.224842>,  <33.588184, 41.763824, 60.282978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957722, 41.905464, 60.224842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058418, 0.244831, 0.967804,
		0.378288, -0.902590, 0.205499,
		0.923843, 0.354104, -0.145344,
		34.234875, 42.011696, 60.181240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900822, 41.647362, 60.827114>,  <33.588184, 41.763824, 60.282978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900822, 41.647362, 60.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166077, 41.909691, 60.682816>,  <34.325230, 42.067089, 60.596237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166077, 41.909691, 60.682816>,  <33.900822, 41.647362, 60.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166077, 41.909691, 60.682816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192148, 0.316647, 0.928878,
		0.723411, -0.685293, 0.083965,
		0.663141, 0.655827, -0.360744,
		34.365021, 42.106438, 60.574593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542152, 41.589310, 61.148605>,  <33.900822, 41.647362, 60.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542152, 41.589310, 61.148605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479153, 41.968334, 61.037376>,  <34.441353, 42.195747, 60.970638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479153, 41.968334, 61.037376>,  <34.542152, 41.589310, 61.148605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479153, 41.968334, 61.037376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035555, 0.286846, 0.957317,
		0.986879, 0.140889, -0.078868,
		-0.157498, 0.947560, -0.278073,
		34.431904, 42.252602, 60.953953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102055, 41.056812, 60.965878>,  <34.542152, 41.589310, 61.148605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102055, 41.056812, 60.965878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954788, 40.741203, 61.162609>,  <34.866428, 40.551838, 61.280647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954788, 40.741203, 61.162609>,  <35.102055, 41.056812, 60.965878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954788, 40.741203, 61.162609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266257, -0.596306, -0.757315,
		0.890820, -0.147865, 0.429622,
		-0.368167, -0.789021, 0.491832,
		34.844337, 40.504498, 61.310158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523529, 40.486046, 60.775719>,  <35.102055, 41.056812, 60.965878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523529, 40.486046, 60.775719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242290, 40.264797, 60.954475>,  <35.073547, 40.132046, 61.061729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242290, 40.264797, 60.954475>,  <35.523529, 40.486046, 60.775719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242290, 40.264797, 60.954475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208930, -0.761400, -0.613692,
		0.679711, -0.338114, 0.650900,
		-0.703094, -0.553126, 0.446890,
		35.031361, 40.098858, 61.088543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803036, 39.937828, 61.009663>,  <35.523529, 40.486046, 60.775719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803036, 39.937828, 61.009663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420502, 39.847015, 60.936043>,  <35.190979, 39.792526, 60.891869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420502, 39.847015, 60.936043>,  <35.803036, 39.937828, 61.009663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420502, 39.847015, 60.936043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290862, -0.800952, -0.523330,
		-0.028603, -0.554014, 0.832016,
		-0.956337, -0.227033, -0.184052,
		35.133602, 39.778904, 60.880829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904839, 39.286404, 60.803173>,  <35.803036, 39.937828, 61.009663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904839, 39.286404, 60.803173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508781, 39.313545, 60.754173>,  <35.271145, 39.329830, 60.724773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508781, 39.313545, 60.754173>,  <35.904839, 39.286404, 60.803173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508781, 39.313545, 60.754173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011419, -0.832746, -0.553537,
		-0.139570, -0.549482, 0.823766,
		-0.990146, 0.067850, -0.122501,
		35.211739, 39.333900, 60.717422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631329, 38.648872, 61.006943>,  <35.904839, 39.286404, 60.803173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631329, 38.648872, 61.006943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361942, 38.814316, 60.761868>,  <35.200310, 38.913582, 60.614822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361942, 38.814316, 60.761868>,  <35.631329, 38.648872, 61.006943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361942, 38.814316, 60.761868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017965, -0.819420, -0.572913,
		-0.739002, -0.396843, 0.544419,
		-0.673464, 0.413603, -0.612682,
		35.159904, 38.938396, 60.578064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968983, 38.194168, 60.982754>,  <35.631329, 38.648872, 61.006943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968983, 38.194168, 60.982754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031792, 38.419006, 60.657944>,  <35.069477, 38.553909, 60.463058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031792, 38.419006, 60.657944>,  <34.968983, 38.194168, 60.982754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031792, 38.419006, 60.657944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005523, -0.821715, -0.569871,
		-0.987580, 0.093965, -0.125920,
		0.157018, 0.562098, -0.812029,
		35.078896, 38.587635, 60.414333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600105, 37.879910, 60.437126>,  <34.968983, 38.194168, 60.982754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600105, 37.879910, 60.437126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868401, 38.104820, 60.243652>,  <35.029377, 38.239769, 60.127567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868401, 38.104820, 60.243652>,  <34.600105, 37.879910, 60.437126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868401, 38.104820, 60.243652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257293, -0.788032, -0.559290,
		-0.695635, 0.250690, -0.673235,
		0.670740, 0.562281, -0.483682,
		35.069622, 38.273506, 60.098549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043221, 37.627876, 60.054089>,  <34.600105, 37.879910, 60.437126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043221, 37.627876, 60.054089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846558, 37.358856, 60.275337>,  <33.728561, 37.197445, 60.408085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846558, 37.358856, 60.275337>,  <34.043221, 37.627876, 60.054089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846558, 37.358856, 60.275337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190573, 0.702904, 0.685279,
		-0.849679, 0.231513, -0.473759,
		-0.491659, -0.672553, 0.553123,
		33.699059, 37.157089, 60.441273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353313, 37.740635, 60.144249>,  <34.043221, 37.627876, 60.054089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353313, 37.740635, 60.144249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389507, 37.470093, 60.436649>,  <33.411224, 37.307766, 60.612087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389507, 37.470093, 60.436649>,  <33.353313, 37.740635, 60.144249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389507, 37.470093, 60.436649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597781, 0.550187, 0.583053,
		-0.796537, -0.489731, -0.354532,
		0.090481, -0.676356, 0.730997,
		33.416653, 37.267185, 60.655949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586971, 37.412395, 60.332630>,  <33.353313, 37.740635, 60.144249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586971, 37.412395, 60.332630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851589, 37.398106, 60.632252>,  <33.010361, 37.389530, 60.812023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851589, 37.398106, 60.632252>,  <32.586971, 37.412395, 60.332630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851589, 37.398106, 60.632252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675186, 0.406265, 0.615688,
		-0.326309, -0.913057, 0.244643,
		0.661548, -0.035725, 0.749051,
		33.050053, 37.387390, 60.856968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208843, 37.534824, 60.871395>,  <32.586971, 37.412395, 60.332630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208843, 37.534824, 60.871395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551479, 37.536358, 61.077793>,  <32.757061, 37.537277, 61.201630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551479, 37.536358, 61.077793>,  <32.208843, 37.534824, 60.871395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551479, 37.536358, 61.077793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499429, 0.257572, 0.827181,
		-0.129736, -0.966252, 0.222546,
		0.856586, 0.003831, 0.515990,
		32.808456, 37.537506, 61.232590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021046, 36.994152, 61.358551>,  <32.208843, 37.534824, 60.871395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021046, 36.994152, 61.358551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316483, 37.242447, 61.463753>,  <32.493744, 37.391422, 61.526875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316483, 37.242447, 61.463753>,  <32.021046, 36.994152, 61.358551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316483, 37.242447, 61.463753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386287, 0.069945, 0.919723,
		0.552506, -0.780896, 0.291442,
		0.738593, 0.620732, 0.263005,
		32.538059, 37.428665, 61.542656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309685, 36.720779, 62.080189>,  <32.021046, 36.994152, 61.358551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309685, 36.720779, 62.080189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411976, 37.102051, 62.015629>,  <32.473351, 37.330814, 61.976894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411976, 37.102051, 62.015629>,  <32.309685, 36.720779, 62.080189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411976, 37.102051, 62.015629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418075, 0.259570, 0.870538,
		0.871675, -0.155143, 0.464880,
		0.255727, 0.953181, -0.161400,
		32.488693, 37.388004, 61.967209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741665, 36.826065, 62.619385>,  <32.309685, 36.720779, 62.080189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741665, 36.826065, 62.619385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628761, 37.194141, 62.510883>,  <32.561020, 37.414986, 62.445782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628761, 37.194141, 62.510883>,  <32.741665, 36.826065, 62.619385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628761, 37.194141, 62.510883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231614, 0.209016, 0.950088,
		0.930958, 0.331000, 0.154131,
		-0.282263, 0.920191, -0.271250,
		32.544083, 37.470200, 62.429508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891319, 37.231659, 63.223270>,  <32.741665, 36.826065, 62.619385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891319, 37.231659, 63.223270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630302, 37.465508, 63.030434>,  <32.473694, 37.605816, 62.914734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630302, 37.465508, 63.030434>,  <32.891319, 37.231659, 63.223270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630302, 37.465508, 63.030434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431193, 0.236678, 0.870664,
		0.623107, 0.776018, 0.097641,
		-0.652542, 0.584619, -0.482089,
		32.434540, 37.640892, 62.885807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841232, 37.823696, 63.641647>,  <32.891319, 37.231659, 63.223270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841232, 37.823696, 63.641647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514503, 37.872238, 63.416058>,  <32.318466, 37.901363, 63.280704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514503, 37.872238, 63.416058>,  <32.841232, 37.823696, 63.641647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514503, 37.872238, 63.416058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537059, 0.196968, 0.820227,
		0.210625, 0.972870, -0.095713,
		-0.816826, 0.121357, -0.563975,
		32.269455, 37.908646, 63.246864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.152958, 32.022785, 46.626770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184074, 32.421516, 46.633488>,  <36.202744, 32.660755, 46.637516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184074, 32.421516, 46.633488>,  <36.152958, 32.022785, 46.626770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184074, 32.421516, 46.633488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511147, 0.025418, 0.859118,
		0.855966, -0.075414, 0.511503,
		0.077790, 0.996828, 0.016791,
		36.207413, 32.720566, 46.638523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926357, 32.255733, 47.259464>,  <36.152958, 32.022785, 46.626770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926357, 32.255733, 47.259464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944424, 32.626732, 47.111027>,  <35.955265, 32.849331, 47.021965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944424, 32.626732, 47.111027>,  <35.926357, 32.255733, 47.259464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944424, 32.626732, 47.111027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542723, 0.334654, 0.770363,
		0.838696, 0.166607, 0.518489,
		0.045167, 0.927496, -0.371094,
		35.957973, 32.904980, 46.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967323, 32.634033, 47.859997>,  <35.926357, 32.255733, 47.259464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967323, 32.634033, 47.859997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875233, 32.904213, 47.579777>,  <35.819981, 33.066322, 47.411644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875233, 32.904213, 47.579777>,  <35.967323, 32.634033, 47.859997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875233, 32.904213, 47.579777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564000, 0.494037, 0.661688,
		0.793033, 0.547444, 0.267215,
		-0.230223, 0.675450, -0.700546,
		35.806168, 33.106850, 47.369614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017120, 33.337448, 48.190063>,  <35.967323, 32.634033, 47.859997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017120, 33.337448, 48.190063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800888, 33.411335, 47.861759>,  <35.671146, 33.455666, 47.664776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800888, 33.411335, 47.861759>,  <36.017120, 33.337448, 48.190063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800888, 33.411335, 47.861759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721179, 0.400623, 0.565157,
		0.433210, 0.897430, -0.083356,
		-0.540583, 0.184717, -0.820762,
		35.638714, 33.466751, 47.615532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849426, 34.029346, 48.043690>,  <36.017120, 33.337448, 48.190063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849426, 34.029346, 48.043690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527851, 33.884533, 47.854961>,  <35.334908, 33.797646, 47.741722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527851, 33.884533, 47.854961>,  <35.849426, 34.029346, 48.043690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527851, 33.884533, 47.854961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594711, 0.486062, 0.640362,
		-0.002495, 0.795409, -0.606067,
		-0.803936, -0.362033, -0.471826,
		35.286671, 33.775925, 47.713413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299667, 34.603165, 47.834686>,  <35.849426, 34.029346, 48.043690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299667, 34.603165, 47.834686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126064, 34.243340, 47.854374>,  <35.021904, 34.027443, 47.866188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126064, 34.243340, 47.854374>,  <35.299667, 34.603165, 47.834686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126064, 34.243340, 47.854374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559151, 0.311802, 0.768199,
		-0.706390, 0.305884, -0.638317,
		-0.434008, -0.899563, 0.049218,
		34.995861, 33.973469, 47.869141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600334, 34.777714, 47.876751>,  <35.299667, 34.603165, 47.834686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600334, 34.777714, 47.876751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581196, 34.388145, 47.965466>,  <34.569714, 34.154404, 48.018692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581196, 34.388145, 47.965466>,  <34.600334, 34.777714, 47.876751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581196, 34.388145, 47.965466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744974, 0.182699, 0.641587,
		-0.665375, -0.134527, -0.734287,
		-0.047843, -0.973922, 0.221782,
		34.566845, 34.095970, 48.032001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857933, 34.601181, 47.852688>,  <34.600334, 34.777714, 47.876751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857933, 34.601181, 47.852688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048496, 34.332943, 48.080139>,  <34.162834, 34.172001, 48.216610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048496, 34.332943, 48.080139>,  <33.857933, 34.601181, 47.852688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048496, 34.332943, 48.080139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707044, 0.092221, 0.701131,
		-0.522614, -0.736070, -0.430205,
		0.476407, -0.670594, 0.568630,
		34.191418, 34.131763, 48.250729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421799, 33.999233, 47.957790>,  <33.857933, 34.601181, 47.852688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421799, 33.999233, 47.957790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669693, 33.974602, 48.270748>,  <33.818428, 33.959824, 48.458523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669693, 33.974602, 48.270748>,  <33.421799, 33.999233, 47.957790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669693, 33.974602, 48.270748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781846, 0.038149, 0.622303,
		-0.068174, -0.997372, -0.024509,
		0.619732, -0.061587, 0.782393,
		33.855614, 33.956127, 48.505466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088413, 33.555447, 48.402504>,  <33.421799, 33.999233, 47.957790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088413, 33.555447, 48.402504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345284, 33.742779, 48.645248>,  <33.499405, 33.855179, 48.790894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345284, 33.742779, 48.645248>,  <33.088413, 33.555447, 48.402504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345284, 33.742779, 48.645248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741665, 0.179477, 0.646314,
		0.193788, -0.865120, 0.462616,
		0.642168, 0.468354, 0.606848,
		33.537937, 33.883278, 48.827305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085068, 33.193581, 49.045059>,  <33.088413, 33.555447, 48.402504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085068, 33.193581, 49.045059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234516, 33.552731, 49.138206>,  <33.324184, 33.768219, 49.194096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234516, 33.552731, 49.138206>,  <33.085068, 33.193581, 49.045059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234516, 33.552731, 49.138206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730857, 0.130361, 0.669966,
		0.571189, -0.420505, 0.704924,
		0.373619, 0.897876, 0.232869,
		33.346603, 33.822094, 49.208069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057713, 33.197933, 49.749203>,  <33.085068, 33.193581, 49.045059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057713, 33.197933, 49.749203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.117569, 33.582855, 49.658360>,  <33.153481, 33.813808, 49.603855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.117569, 33.582855, 49.658360>,  <33.057713, 33.197933, 49.749203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117569, 33.582855, 49.658360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748221, 0.260361, 0.610227,
		0.646354, 0.078611, 0.758977,
		0.149638, 0.962306, -0.227104,
		33.162460, 33.871548, 49.590229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200600, 33.623955, 50.350567>,  <33.057713, 33.197933, 49.749203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200600, 33.623955, 50.350567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054749, 33.865936, 50.067417>,  <32.967239, 34.011124, 49.897530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054749, 33.865936, 50.067417>,  <33.200600, 33.623955, 50.350567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054749, 33.865936, 50.067417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809991, 0.168917, 0.561588,
		0.459305, 0.778140, 0.428413,
		-0.364628, 0.604951, -0.707870,
		32.945358, 34.047421, 49.855057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812248, 34.140125, 50.769596>,  <33.200600, 33.623955, 50.350567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812248, 34.140125, 50.769596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.680977, 34.161911, 50.392380>,  <32.602215, 34.174984, 50.166050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.680977, 34.161911, 50.392380>,  <32.812248, 34.140125, 50.769596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680977, 34.161911, 50.392380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925088, 0.183418, 0.332521,
		0.191082, 0.981525, -0.009810,
		-0.328177, 0.054464, -0.943045,
		32.582523, 34.178249, 50.109467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326542, 34.710087, 50.789032>,  <32.812248, 34.140125, 50.769596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326542, 34.710087, 50.789032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.235615, 34.497478, 50.462643>,  <32.181061, 34.369911, 50.266808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.235615, 34.497478, 50.462643>,  <32.326542, 34.710087, 50.789032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235615, 34.497478, 50.462643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969660, 0.200918, 0.139252,
		0.089928, 0.822870, -0.561068,
		-0.227315, -0.531523, -0.815973,
		32.167419, 34.338020, 50.217850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816141, 35.070263, 50.504684>,  <32.326542, 34.710087, 50.789032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816141, 35.070263, 50.504684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.744362, 34.722919, 50.319752>,  <31.701294, 34.514515, 50.208790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.744362, 34.722919, 50.319752>,  <31.816141, 35.070263, 50.504684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744362, 34.722919, 50.319752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982086, 0.185589, 0.032607,
		0.057490, 0.459905, -0.886105,
		-0.179447, -0.868357, -0.462336,
		31.690527, 34.462414, 50.181049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408754, 35.198589, 49.955181>,  <31.816141, 35.070263, 50.504684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408754, 35.198589, 49.955181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.341602, 34.806370, 49.995853>,  <31.301311, 34.571037, 50.020256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.341602, 34.806370, 49.995853>,  <31.408754, 35.198589, 49.955181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341602, 34.806370, 49.995853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971623, 0.182015, 0.151064,
		-0.166633, -0.073436, -0.983281,
		-0.167878, -0.980549, 0.101682,
		31.291239, 34.512203, 50.026360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759077, 35.078873, 49.676456>,  <31.408754, 35.198589, 49.955181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759077, 35.078873, 49.676456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.798809, 34.749199, 49.899475>,  <30.822647, 34.551395, 50.033287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.798809, 34.749199, 49.899475>,  <30.759077, 35.078873, 49.676456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798809, 34.749199, 49.899475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974193, 0.033588, 0.223205,
		-0.202688, -0.565330, -0.799575,
		0.099328, -0.824181, 0.557548,
		30.828608, 34.501945, 50.066738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160486, 34.614269, 49.493553>,  <30.759077, 35.078873, 49.676456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160486, 34.614269, 49.493553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321388, 34.509491, 49.844456>,  <30.417929, 34.446625, 50.054996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321388, 34.509491, 49.844456>,  <30.160486, 34.614269, 49.493553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321388, 34.509491, 49.844456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914946, -0.149174, 0.374995,
		0.032634, -0.953483, -0.299675,
		0.402255, -0.261949, 0.877253,
		30.442064, 34.430904, 50.107632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837320, 34.062599, 49.708111>,  <30.160486, 34.614269, 49.493553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837320, 34.062599, 49.708111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.971619, 34.185181, 50.064396>,  <30.052198, 34.258728, 50.278168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.971619, 34.185181, 50.064396>,  <29.837320, 34.062599, 49.708111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971619, 34.185181, 50.064396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938771, 0.031214, 0.343124,
		0.077347, -0.951376, 0.298164,
		0.335746, 0.306447, 0.890710,
		30.072342, 34.277115, 50.331608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505566, 33.682861, 50.230736>,  <29.837320, 34.062599, 49.708111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505566, 33.682861, 50.230736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.640038, 33.983261, 50.458065>,  <29.720720, 34.163502, 50.594463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.640038, 33.983261, 50.458065>,  <29.505566, 33.682861, 50.230736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640038, 33.983261, 50.458065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833140, -0.044243, 0.551290,
		0.439160, -0.658824, 0.610810,
		0.336179, 0.750995, 0.568322,
		29.740891, 34.208561, 50.628563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434055, 33.535580, 50.863365>,  <29.505566, 33.682861, 50.230736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434055, 33.535580, 50.863365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.461332, 33.932957, 50.900085>,  <29.477697, 34.171383, 50.922115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.461332, 33.932957, 50.900085>,  <29.434055, 33.535580, 50.863365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461332, 33.932957, 50.900085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826003, 0.004615, 0.563647,
		0.559526, -0.114260, 0.820899,
		0.068190, 0.993440, 0.091797,
		29.481789, 34.230988, 50.927624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436323, 33.701786, 51.585350>,  <29.434055, 33.535580, 50.863365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436323, 33.701786, 51.585350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.345648, 34.036640, 51.386223>,  <29.291243, 34.237553, 51.266747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.345648, 34.036640, 51.386223>,  <29.436323, 33.701786, 51.585350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345648, 34.036640, 51.386223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883900, 0.037847, 0.466141,
		0.409063, 0.545690, 0.731362,
		-0.226689, 0.837132, -0.497817,
		29.277641, 34.287781, 51.236877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082458, 34.164753, 52.066002>,  <29.436323, 33.701786, 51.585350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082458, 34.164753, 52.066002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.951841, 34.307159, 51.715775>,  <28.873470, 34.392605, 51.505638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.951841, 34.307159, 51.715775>,  <29.082458, 34.164753, 52.066002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951841, 34.307159, 51.715775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930615, 0.040907, 0.363705,
		0.165302, 0.933583, 0.317958,
		-0.326542, 0.356018, -0.875569,
		28.853878, 34.413963, 51.453102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833078, 34.733662, 52.236946>,  <29.082458, 34.164753, 52.066002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833078, 34.733662, 52.236946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.675451, 34.636608, 51.882355>,  <28.580875, 34.578377, 51.669601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.675451, 34.636608, 51.882355>,  <28.833078, 34.733662, 52.236946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675451, 34.636608, 51.882355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916228, 0.179647, 0.358125,
		0.072359, 0.953339, -0.293103,
		-0.394070, -0.242635, -0.886474,
		28.557230, 34.563816, 51.616413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370876, 35.333477, 51.964191>,  <28.833078, 34.733662, 52.236946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370876, 35.333477, 51.964191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.257250, 34.984138, 51.805912>,  <28.189074, 34.774536, 51.710945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.257250, 34.984138, 51.805912>,  <28.370876, 35.333477, 51.964191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257250, 34.984138, 51.805912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898971, 0.099093, 0.426652,
		-0.333403, 0.476917, -0.813260,
		-0.284066, -0.873344, -0.395697,
		28.172029, 34.722134, 51.687202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766264, 35.536995, 51.655865>,  <28.370876, 35.333477, 51.964191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766264, 35.536995, 51.655865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.721737, 35.139950, 51.636589>,  <27.695021, 34.901722, 51.625023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.721737, 35.139950, 51.636589>,  <27.766264, 35.536995, 51.655865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721737, 35.139950, 51.636589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981034, 0.102015, 0.164819,
		-0.158686, 0.065622, -0.985146,
		-0.111315, -0.992616, -0.048189,
		27.688343, 34.842163, 51.622131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197403, 35.379333, 51.171227>,  <27.766264, 35.536995, 51.655865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197403, 35.379333, 51.171227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.224125, 35.049301, 51.395645>,  <27.240158, 34.851280, 51.530296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.224125, 35.049301, 51.395645>,  <27.197403, 35.379333, 51.171227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224125, 35.049301, 51.395645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975272, 0.064728, 0.211318,
		-0.210670, -0.561293, -0.800355,
		0.066806, -0.825082, 0.561049,
		27.244167, 34.801777, 51.563961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612400, 35.020145, 51.021881>,  <27.197403, 35.379333, 51.171227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612400, 35.020145, 51.021881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.729465, 34.861500, 51.369915>,  <26.799706, 34.766312, 51.578735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.729465, 34.861500, 51.369915>,  <26.612400, 35.020145, 51.021881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729465, 34.861500, 51.369915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949946, -0.016568, 0.311976,
		-0.109320, -0.917834, -0.381616,
		0.292664, -0.396619, 0.870081,
		26.817265, 34.742516, 51.630939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141623, 34.424488, 51.046421>,  <26.612400, 35.020145, 51.021881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141623, 34.424488, 51.046421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.242731, 34.491623, 51.427563>,  <26.303396, 34.531902, 51.656250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.242731, 34.491623, 51.427563>,  <26.141623, 34.424488, 51.046421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242731, 34.491623, 51.427563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967505, 0.050308, 0.247797,
		-0.006347, -0.984531, 0.175098,
		0.252773, 0.167836, 0.952857,
		26.318563, 34.541973, 51.713421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575111, 34.269901, 51.339333>,  <26.141623, 34.424488, 51.046421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575111, 34.269901, 51.339333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.726986, 34.408596, 51.682404>,  <25.818111, 34.491814, 51.888245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.726986, 34.408596, 51.682404>,  <25.575111, 34.269901, 51.339333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726986, 34.408596, 51.682404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894454, -0.099111, 0.436038,
		0.236197, -0.932710, 0.272512,
		0.379688, 0.346740, 0.857676,
		25.840893, 34.512619, 51.939705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419659, 33.821419, 51.760193>,  <25.575111, 34.269901, 51.339333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419659, 33.821419, 51.760193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.479250, 34.158478, 51.967175>,  <25.515005, 34.360714, 52.091362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.479250, 34.158478, 51.967175>,  <25.419659, 33.821419, 51.760193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479250, 34.158478, 51.967175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972033, 0.028722, 0.233082,
		0.181544, -0.537703, 0.823357,
		0.148977, 0.842645, 0.517451,
		25.523943, 34.411270, 52.122410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978186, 33.896805, 52.363544>,  <25.419659, 33.821419, 51.760193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978186, 33.896805, 52.363544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.056374, 34.284138, 52.301407>,  <25.103287, 34.516537, 52.264126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.056374, 34.284138, 52.301407>,  <24.978186, 33.896805, 52.363544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056374, 34.284138, 52.301407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921243, 0.235617, 0.309509,
		0.336308, 0.082608, 0.938122,
		0.195469, 0.968329, -0.155342,
		25.115015, 34.574635, 52.254803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789490, 34.242180, 52.996517>,  <24.978186, 33.896805, 52.363544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789490, 34.242180, 52.996517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.783216, 34.516232, 52.705215>,  <24.779451, 34.680660, 52.530434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.783216, 34.516232, 52.705215>,  <24.789490, 34.242180, 52.996517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783216, 34.516232, 52.705215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826594, 0.400919, 0.394977,
		0.562580, 0.608167, 0.560032,
		-0.015685, 0.685125, -0.728256,
		24.778511, 34.721767, 52.486740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611841, 34.792400, 53.324619>,  <24.789490, 34.242180, 52.996517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611841, 34.792400, 53.324619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.531475, 34.893940, 52.946159>,  <24.483255, 34.954865, 52.719086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.531475, 34.893940, 52.946159>,  <24.611841, 34.792400, 53.324619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531475, 34.893940, 52.946159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881292, 0.374885, 0.287724,
		0.427734, 0.891641, 0.148391,
		-0.200917, 0.253846, -0.946147,
		24.471199, 34.970093, 52.662315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<33.578129, 29.381557, 49.586765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337742, 29.701086, 49.597458>,  <33.193508, 29.892803, 49.603874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337742, 29.701086, 49.597458>,  <33.578129, 29.381557, 49.586765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337742, 29.701086, 49.597458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686549, 0.498804, 0.529005,
		0.409248, 0.336268, -0.848198,
		-0.600971, 0.798824, 0.026730,
		33.157452, 29.940733, 49.605476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002762, 30.053770, 49.489223>,  <33.578129, 29.381557, 49.586765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002762, 30.053770, 49.489223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663631, 30.113560, 49.692734>,  <33.460152, 30.149433, 49.814838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663631, 30.113560, 49.692734>,  <34.002762, 30.053770, 49.489223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663631, 30.113560, 49.692734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471134, 0.652657, 0.593356,
		-0.243363, 0.742762, -0.623762,
		-0.847825, 0.149475, 0.508773,
		33.409283, 30.158401, 49.845367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958042, 30.764812, 49.755707>,  <34.002762, 30.053770, 49.489223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958042, 30.764812, 49.755707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724148, 30.569876, 50.015118>,  <33.583813, 30.452913, 50.170765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724148, 30.569876, 50.015118>,  <33.958042, 30.764812, 49.755707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724148, 30.569876, 50.015118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381626, 0.540201, 0.750030,
		-0.715856, 0.686060, -0.129890,
		-0.584732, -0.487344, 0.648525,
		33.548729, 30.423672, 50.209675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677834, 31.310143, 50.179829>,  <33.958042, 30.764812, 49.755707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677834, 31.310143, 50.179829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600204, 30.992119, 50.409687>,  <33.553627, 30.801306, 50.547604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600204, 30.992119, 50.409687>,  <33.677834, 31.310143, 50.179829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600204, 30.992119, 50.409687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398005, 0.471593, 0.786888,
		-0.896621, 0.381424, 0.224915,
		-0.194069, -0.795057, 0.574649,
		33.541985, 30.753601, 50.582081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407833, 31.503300, 50.869621>,  <33.677834, 31.310143, 50.179829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407833, 31.503300, 50.869621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476089, 31.120138, 50.961967>,  <33.517044, 30.890242, 51.017376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476089, 31.120138, 50.961967>,  <33.407833, 31.503300, 50.869621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476089, 31.120138, 50.961967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305599, 0.274201, 0.911824,
		-0.936745, -0.085037, 0.339524,
		0.170637, -0.957905, 0.230870,
		33.527279, 30.832767, 51.031227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069386, 31.349876, 51.514740>,  <33.407833, 31.503300, 50.869621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069386, 31.349876, 51.514740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382919, 31.106781, 51.463730>,  <33.571037, 30.960924, 51.433125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382919, 31.106781, 51.463730>,  <33.069386, 31.349876, 51.514740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382919, 31.106781, 51.463730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302907, 0.194918, 0.932874,
		-0.542087, -0.769844, 0.336871,
		0.783830, -0.607739, -0.127529,
		33.618069, 30.924459, 51.425472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004501, 30.899883, 52.064541>,  <33.069386, 31.349876, 51.514740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004501, 30.899883, 52.064541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389053, 30.884047, 51.955601>,  <33.619785, 30.874544, 51.890236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389053, 30.884047, 51.955601>,  <33.004501, 30.899883, 52.064541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389053, 30.884047, 51.955601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272881, 0.008698, 0.962008,
		-0.035721, -0.999178, 0.019166,
		0.961384, -0.039594, -0.272346,
		33.677467, 30.872169, 51.873898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328445, 30.614012, 52.640282>,  <33.004501, 30.899883, 52.064541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328445, 30.614012, 52.640282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.637115, 30.782705, 52.449848>,  <33.822319, 30.883921, 52.335590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.637115, 30.782705, 52.449848>,  <33.328445, 30.614012, 52.640282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637115, 30.782705, 52.449848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421443, 0.221550, 0.879376,
		0.476336, -0.879237, -0.006770,
		0.771680, 0.421732, -0.476081,
		33.868618, 30.909225, 52.307022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985458, 30.401892, 52.997265>,  <33.328445, 30.614012, 52.640282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985458, 30.401892, 52.997265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041416, 30.733438, 52.780594>,  <34.074993, 30.932365, 52.650593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041416, 30.733438, 52.780594>,  <33.985458, 30.401892, 52.997265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041416, 30.733438, 52.780594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223220, 0.506571, 0.832802,
		0.964677, -0.237420, -0.114150,
		0.139899, 0.828865, -0.541674,
		34.083385, 30.982098, 52.618092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704624, 30.667395, 53.152580>,  <33.985458, 30.401892, 52.997265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704624, 30.667395, 53.152580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511421, 30.985401, 53.005802>,  <34.395500, 31.176205, 52.917736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511421, 30.985401, 53.005802>,  <34.704624, 30.667395, 53.152580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511421, 30.985401, 53.005802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227561, 0.518647, 0.824149,
		0.845528, 0.314570, -0.431426,
		-0.483010, 0.795017, -0.366947,
		34.366520, 31.223906, 52.895718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136360, 31.341667, 53.265930>,  <34.704624, 30.667395, 53.152580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136360, 31.341667, 53.265930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774265, 31.501141, 53.207138>,  <34.557011, 31.596825, 53.171864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774265, 31.501141, 53.207138>,  <35.136360, 31.341667, 53.265930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774265, 31.501141, 53.207138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099069, 0.534395, 0.839409,
		0.413202, 0.745301, -0.523250,
		-0.905235, 0.398683, -0.146977,
		34.502693, 31.620745, 53.163044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162579, 32.145157, 53.377331>,  <35.136360, 31.341667, 53.265930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162579, 32.145157, 53.377331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784637, 32.026264, 53.432316>,  <34.557873, 31.954927, 53.465309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784637, 32.026264, 53.432316>,  <35.162579, 32.145157, 53.377331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784637, 32.026264, 53.432316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076054, 0.607447, 0.790711,
		-0.318530, 0.736654, -0.596557,
		-0.944857, -0.297235, 0.137464,
		34.501179, 31.937094, 53.473557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462238, 32.806263, 53.125755>,  <35.162579, 32.145157, 53.377331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462238, 32.806263, 53.125755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831200, 32.723633, 53.256290>,  <36.052578, 32.674053, 53.334614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831200, 32.723633, 53.256290>,  <35.462238, 32.806263, 53.125755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831200, 32.723633, 53.256290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274408, -0.244079, -0.930122,
		0.271796, 0.947497, -0.168452,
		0.922403, -0.206578, 0.326340,
		36.107922, 32.661659, 53.354191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976181, 33.256069, 52.771759>,  <35.462238, 32.806263, 53.125755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976181, 33.256069, 52.771759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141209, 32.918056, 52.907829>,  <36.240223, 32.715248, 52.989471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141209, 32.918056, 52.907829>,  <35.976181, 33.256069, 52.771759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141209, 32.918056, 52.907829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322749, -0.213609, -0.922065,
		0.851834, 0.490204, 0.184604,
		0.412567, -0.845027, 0.340172,
		36.264980, 32.664547, 53.009880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531765, 33.257195, 52.374344>,  <35.976181, 33.256069, 52.771759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531765, 33.257195, 52.374344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570488, 32.906685, 52.563141>,  <36.593719, 32.696381, 52.676418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570488, 32.906685, 52.563141>,  <36.531765, 33.257195, 52.374344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570488, 32.906685, 52.563141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399804, -0.400041, -0.824696,
		0.911474, 0.268538, 0.311612,
		0.096805, -0.876273, 0.471990,
		36.599529, 32.643803, 52.704739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161602, 33.155571, 52.258953>,  <36.531765, 33.257195, 52.374344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161602, 33.155571, 52.258953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995285, 32.795956, 52.313866>,  <36.895496, 32.580185, 52.346813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995285, 32.795956, 52.313866>,  <37.161602, 33.155571, 52.258953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995285, 32.795956, 52.313866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435420, -0.329313, -0.837832,
		0.798452, -0.288590, 0.528385,
		-0.415794, -0.899038, 0.137283,
		36.870548, 32.526245, 52.355049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646214, 32.697178, 52.068096>,  <37.161602, 33.155571, 52.258953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646214, 32.697178, 52.068096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304070, 32.493118, 52.032089>,  <37.098782, 32.370682, 52.010483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304070, 32.493118, 52.032089>,  <37.646214, 32.697178, 52.068096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304070, 32.493118, 52.032089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321109, -0.385785, -0.864904,
		0.406499, -0.768714, 0.493799,
		-0.855364, -0.510146, -0.090020,
		37.047459, 32.340073, 52.005085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841255, 31.965706, 51.862339>,  <37.646214, 32.697178, 52.068096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841255, 31.965706, 51.862339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473263, 32.052872, 51.732021>,  <37.252468, 32.105171, 51.653831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473263, 32.052872, 51.732021>,  <37.841255, 31.965706, 51.862339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473263, 32.052872, 51.732021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255363, -0.297356, -0.919984,
		-0.297356, -0.929566, 0.217915,
		0.919984, -0.217915, 0.325797,
		37.197269, 32.118248, 51.634281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759739, 31.486019, 51.319973>,  <37.841255, 31.965706, 51.862339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759739, 31.486019, 51.319973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480270, 31.766014, 51.260822>,  <37.312588, 31.934011, 51.225330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480270, 31.766014, 51.260822>,  <37.759739, 31.486019, 51.319973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480270, 31.766014, 51.260822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085982, -0.123046, -0.988669,
		-0.710254, -0.703473, 0.025782,
		-0.698674, 0.699990, -0.147880,
		37.270668, 31.976011, 51.216457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399017, 31.301859, 50.761768>,  <37.759739, 31.486019, 51.319973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399017, 31.301859, 50.761768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269825, 31.680422, 50.761398>,  <37.192310, 31.907558, 50.761177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269825, 31.680422, 50.761398>,  <37.399017, 31.301859, 50.761768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269825, 31.680422, 50.761398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002905, -0.001965, -0.999994,
		-0.946402, -0.322973, 0.003384,
		-0.322978, 0.946406, -0.000922,
		37.172932, 31.964344, 50.761124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889275, 31.307846, 50.279182>,  <37.399017, 31.301859, 50.761768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889275, 31.307846, 50.279182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042316, 31.675356, 50.318104>,  <37.134140, 31.895863, 50.341457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042316, 31.675356, 50.318104>,  <36.889275, 31.307846, 50.279182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042316, 31.675356, 50.318104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056617, 0.128432, -0.990101,
		-0.922176, 0.373307, 0.101157,
		0.382603, 0.918775, 0.097302,
		37.157097, 31.950989, 50.347294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421745, 31.661671, 49.895863>,  <36.889275, 31.307846, 50.279182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421745, 31.661671, 49.895863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758812, 31.876713, 49.907810>,  <36.961052, 32.005737, 49.914978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758812, 31.876713, 49.907810>,  <36.421745, 31.661671, 49.895863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758812, 31.876713, 49.907810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127190, 0.252658, -0.959159,
		-0.523197, 0.804453, 0.281285,
		0.842667, 0.537606, 0.029871,
		37.011612, 32.037994, 49.916771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291901, 32.169140, 49.542004>,  <36.421745, 31.661671, 49.895863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291901, 32.169140, 49.542004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691856, 32.175068, 49.542534>,  <36.931831, 32.178623, 49.542850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691856, 32.175068, 49.542534>,  <36.291901, 32.169140, 49.542004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691856, 32.175068, 49.542534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000155, 0.078451, -0.996918,
		-0.014873, 0.996808, 0.078440,
		0.999889, 0.014815, 0.001321,
		36.991821, 32.179512, 49.542931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550251, 32.753780, 49.222954>,  <36.291901, 32.169140, 49.542004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550251, 32.753780, 49.222954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784359, 32.430138, 49.201786>,  <36.924824, 32.235950, 49.189087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784359, 32.430138, 49.201786>,  <36.550251, 32.753780, 49.222954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784359, 32.430138, 49.201786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144227, -0.039660, -0.988749,
		0.797907, 0.586319, -0.139907,
		0.585271, -0.809109, -0.052919,
		36.959942, 32.187405, 49.185909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864819, 32.829357, 48.580677>,  <36.550251, 32.753780, 49.222954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864819, 32.829357, 48.580677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920086, 32.451321, 48.699139>,  <36.953247, 32.224499, 48.770214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920086, 32.451321, 48.699139>,  <36.864819, 32.829357, 48.580677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920086, 32.451321, 48.699139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075036, -0.308149, -0.948374,
		0.987562, 0.108813, -0.113493,
		0.138169, -0.945095, 0.296151,
		36.961536, 32.167793, 48.787983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944740, 33.617424, 48.890778>,  <36.864819, 32.829357, 48.580677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944740, 33.617424, 48.890778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992577, 33.895252, 48.607014>,  <37.021278, 34.061951, 48.436756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992577, 33.895252, 48.607014>,  <36.944740, 33.617424, 48.890778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992577, 33.895252, 48.607014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746446, 0.408221, 0.525522,
		0.654611, -0.592385, -0.469642,
		0.119594, 0.694575, -0.709410,
		37.028454, 34.103626, 48.394192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682499, 33.726467, 48.657459>,  <36.944740, 33.617424, 48.890778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682499, 33.726467, 48.657459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462982, 34.059792, 48.630890>,  <37.331272, 34.259789, 48.614948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462982, 34.059792, 48.630890>,  <37.682499, 33.726467, 48.657459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462982, 34.059792, 48.630890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737794, 0.520181, 0.430199,
		0.393043, 0.187085, -0.900287,
		-0.548796, 0.833313, -0.066424,
		37.298344, 34.309784, 48.610962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888428, 34.456139, 48.342571>,  <37.682499, 33.726467, 48.657459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888428, 34.456139, 48.342571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695522, 34.491199, 48.691223>,  <37.579781, 34.512238, 48.900414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695522, 34.491199, 48.691223>,  <37.888428, 34.456139, 48.342571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695522, 34.491199, 48.691223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857665, 0.249898, 0.449402,
		-0.178427, 0.964297, -0.195693,
		-0.482260, 0.087654, 0.871632,
		37.550846, 34.517494, 48.952713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512997, 35.106964, 48.213337>,  <37.888428, 34.456139, 48.342571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512997, 35.106964, 48.213337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422199, 35.391201, 47.946941>,  <37.367722, 35.561745, 47.787106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422199, 35.391201, 47.946941>,  <37.512997, 35.106964, 48.213337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422199, 35.391201, 47.946941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098872, 0.697116, 0.710109,
		0.968865, 0.095340, -0.228495,
		-0.226989, 0.710591, -0.665985,
		37.354103, 35.604378, 47.747147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107491, 35.559948, 47.996674>,  <37.512997, 35.106964, 48.213337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107491, 35.559948, 47.996674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754646, 35.745316, 47.962898>,  <37.542942, 35.856537, 47.942631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754646, 35.745316, 47.962898>,  <38.107491, 35.559948, 47.996674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754646, 35.745316, 47.962898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266288, 0.638453, 0.722128,
		0.388559, 0.614509, -0.686586,
		-0.882107, 0.463419, -0.084440,
		37.490013, 35.884342, 47.937565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233780, 36.246510, 47.916145>,  <38.107491, 35.559948, 47.996674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233780, 36.246510, 47.916145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858776, 36.221581, 48.053078>,  <37.633774, 36.206623, 48.135239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858776, 36.221581, 48.053078>,  <38.233780, 36.246510, 47.916145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858776, 36.221581, 48.053078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188307, 0.736443, 0.649763,
		-0.292606, 0.673623, -0.678686,
		-0.937509, -0.062324, 0.342335,
		37.577522, 36.202885, 48.155777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826687, 36.967133, 48.035904>,  <38.233780, 36.246510, 47.916145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826687, 36.967133, 48.035904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.671535, 36.689156, 48.278095>,  <37.578445, 36.522369, 48.423412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.671535, 36.689156, 48.278095>,  <37.826687, 36.967133, 48.035904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671535, 36.689156, 48.278095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070310, 0.677306, 0.732334,
		-0.919023, 0.241489, -0.311576,
		-0.387883, -0.694939, 0.605481,
		37.555172, 36.480675, 48.459740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221066, 37.303024, 48.211872>,  <37.826687, 36.967133, 48.035904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221066, 37.303024, 48.211872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314697, 37.044785, 48.502640>,  <37.370876, 36.889843, 48.677101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314697, 37.044785, 48.502640>,  <37.221066, 37.303024, 48.211872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314697, 37.044785, 48.502640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334541, 0.648547, 0.683717,
		-0.912847, -0.403227, -0.064168,
		0.234077, -0.645597, 0.726920,
		37.384922, 36.851105, 48.720715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764717, 37.471390, 48.712963>,  <37.221066, 37.303024, 48.211872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764717, 37.471390, 48.712963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982506, 37.236069, 48.952114>,  <37.113178, 37.094875, 49.095604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982506, 37.236069, 48.952114>,  <36.764717, 37.471390, 48.712963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982506, 37.236069, 48.952114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153565, 0.630826, 0.760576,
		-0.824604, -0.505922, 0.253122,
		0.544468, -0.588304, 0.597874,
		37.145847, 37.059578, 49.131477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391174, 37.293060, 49.427380>,  <36.764717, 37.471390, 48.712963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391174, 37.293060, 49.427380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785011, 37.243286, 49.476536>,  <37.021313, 37.213421, 49.506031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785011, 37.243286, 49.476536>,  <36.391174, 37.293060, 49.427380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785011, 37.243286, 49.476536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041863, 0.514576, 0.856422,
		-0.169807, -0.848368, 0.501436,
		0.984588, -0.124435, 0.122894,
		37.080387, 37.205956, 49.513405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469124, 37.170387, 50.162849>,  <36.391174, 37.293060, 49.427380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469124, 37.170387, 50.162849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834942, 37.263954, 50.030857>,  <37.054432, 37.320095, 49.951660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834942, 37.263954, 50.030857>,  <36.469124, 37.170387, 50.162849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834942, 37.263954, 50.030857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184216, 0.485419, 0.854654,
		0.360102, -0.842407, 0.400845,
		0.914544, 0.233921, -0.329985,
		37.109306, 37.334129, 49.931862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890827, 37.107861, 50.667583>,  <36.469124, 37.170387, 50.162849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890827, 37.107861, 50.667583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.101337, 37.354271, 50.433132>,  <37.227642, 37.502117, 50.292461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.101337, 37.354271, 50.433132>,  <36.890827, 37.107861, 50.667583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101337, 37.354271, 50.433132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186949, 0.588619, 0.786497,
		0.829511, -0.523488, 0.194608,
		0.526271, 0.616026, -0.586131,
		37.259220, 37.539078, 50.257294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477058, 37.249550, 50.983856>,  <36.890827, 37.107861, 50.667583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477058, 37.249550, 50.983856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424370, 37.565090, 50.743736>,  <37.392757, 37.754414, 50.599663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424370, 37.565090, 50.743736>,  <37.477058, 37.249550, 50.983856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424370, 37.565090, 50.743736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267407, 0.611405, 0.744767,
		0.954538, -0.062420, -0.291482,
		-0.131725, 0.788852, -0.600300,
		37.384853, 37.801746, 50.563644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908886, 37.699146, 51.167622>,  <37.477058, 37.249550, 50.983856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908886, 37.699146, 51.167622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693783, 37.951149, 50.943512>,  <37.564720, 38.102352, 50.809048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693783, 37.951149, 50.943512>,  <37.908886, 37.699146, 51.167622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693783, 37.951149, 50.943512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017265, 0.672628, 0.739779,
		0.842921, 0.388151, -0.372591,
		-0.537761, 0.630008, -0.560271,
		37.532455, 38.140152, 50.775433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209293, 38.375805, 51.294224>,  <37.908886, 37.699146, 51.167622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209293, 38.375805, 51.294224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833363, 38.409428, 51.161766>,  <37.607803, 38.429600, 51.082291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833363, 38.409428, 51.161766>,  <38.209293, 38.375805, 51.294224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833363, 38.409428, 51.161766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153043, 0.762993, 0.628029,
		0.305446, 0.640919, -0.704220,
		-0.939830, 0.084053, -0.331142,
		37.551414, 38.434643, 51.062424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129585, 39.145317, 51.306797>,  <38.209293, 38.375805, 51.294224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129585, 39.145317, 51.306797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758404, 38.996265, 51.309853>,  <37.535694, 38.906834, 51.311684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758404, 38.996265, 51.309853>,  <38.129585, 39.145317, 51.306797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758404, 38.996265, 51.309853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289209, 0.732842, 0.615874,
		-0.235086, 0.569292, -0.787808,
		-0.927951, -0.372625, 0.007637,
		37.480019, 38.884480, 51.312145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754044, 39.764545, 51.422630>,  <38.129585, 39.145317, 51.306797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754044, 39.764545, 51.422630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507076, 39.458797, 51.496964>,  <37.358898, 39.275349, 51.541561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507076, 39.458797, 51.496964>,  <37.754044, 39.764545, 51.422630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507076, 39.458797, 51.496964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389404, 0.502243, 0.772086,
		-0.683492, 0.404336, -0.607743,
		-0.617416, -0.764372, 0.185829,
		37.321850, 39.229485, 51.552711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225925, 40.061615, 51.709301>,  <37.754044, 39.764545, 51.422630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225925, 40.061615, 51.709301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168976, 39.683392, 51.826363>,  <37.134804, 39.456455, 51.896599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168976, 39.683392, 51.826363>,  <37.225925, 40.061615, 51.709301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168976, 39.683392, 51.826363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448848, 0.325193, 0.832338,
		-0.882193, -0.012849, -0.470713,
		-0.142377, -0.945561, 0.292650,
		37.126263, 39.399723, 51.914158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457417, 39.997372, 51.927814>,  <37.225925, 40.061615, 51.709301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457417, 39.997372, 51.927814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651443, 39.685993, 52.087181>,  <36.767860, 39.499165, 52.182800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651443, 39.685993, 52.087181>,  <36.457417, 39.997372, 51.927814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651443, 39.685993, 52.087181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415209, 0.195949, 0.888372,
		-0.769618, -0.596345, -0.228169,
		0.485067, -0.778445, 0.398413,
		36.796963, 39.452461, 52.206703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926567, 39.715488, 52.225151>,  <36.457417, 39.997372, 51.927814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926567, 39.715488, 52.225151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261868, 39.583492, 52.398788>,  <36.463047, 39.504295, 52.502972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261868, 39.583492, 52.398788>,  <35.926567, 39.715488, 52.225151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261868, 39.583492, 52.398788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409120, 0.145687, 0.900775,
		-0.360492, -0.932673, -0.012885,
		0.838252, -0.329994, 0.434095,
		36.513344, 39.484493, 52.529018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743958, 39.252045, 52.746799>,  <35.926567, 39.715488, 52.225151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743958, 39.252045, 52.746799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114727, 39.374073, 52.834194>,  <36.337189, 39.447292, 52.886631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114727, 39.374073, 52.834194>,  <35.743958, 39.252045, 52.746799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114727, 39.374073, 52.834194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279463, 0.172684, 0.944500,
		0.250415, -0.936541, 0.245323,
		0.926927, 0.305076, 0.218486,
		36.392803, 39.465595, 52.899738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958031, 38.953876, 53.315125>,  <35.743958, 39.252045, 52.746799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958031, 38.953876, 53.315125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199738, 39.272579, 53.312748>,  <36.344761, 39.463802, 53.311321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199738, 39.272579, 53.312748>,  <35.958031, 38.953876, 53.315125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199738, 39.272579, 53.312748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168729, 0.135248, 0.976339,
		0.778712, -0.588967, 0.216162,
		0.604267, 0.796760, -0.005943,
		36.381020, 39.511608, 53.310966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303947, 38.912594, 53.909061>,  <35.958031, 38.953876, 53.315125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303947, 38.912594, 53.909061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370529, 39.296242, 53.817520>,  <36.410480, 39.526432, 53.762596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370529, 39.296242, 53.817520>,  <36.303947, 38.912594, 53.909061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370529, 39.296242, 53.817520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218231, 0.262171, 0.940022,
		0.961596, -0.106532, 0.252951,
		0.166459, 0.959123, -0.228854,
		36.420467, 39.583981, 53.748863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847698, 39.286701, 54.391964>,  <36.303947, 38.912594, 53.909061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847698, 39.286701, 54.391964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596859, 39.565174, 54.252201>,  <36.446358, 39.732258, 54.168343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596859, 39.565174, 54.252201>,  <36.847698, 39.286701, 54.391964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596859, 39.565174, 54.252201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226964, 0.265794, 0.936932,
		0.745144, 0.666847, -0.008669,
		-0.627095, 0.696181, -0.349405,
		36.408730, 39.774029, 54.147381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993877, 39.861671, 54.796955>,  <36.847698, 39.286701, 54.391964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993877, 39.861671, 54.796955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629753, 39.911526, 54.639072>,  <36.411278, 39.941437, 54.544342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629753, 39.911526, 54.639072>,  <36.993877, 39.861671, 54.796955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629753, 39.911526, 54.639072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354706, 0.256588, 0.899081,
		0.213336, 0.958451, -0.189367,
		-0.910314, 0.124637, -0.394708,
		36.356659, 39.948917, 54.520660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693047, 40.433460, 55.263683>,  <36.993877, 39.861671, 54.796955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693047, 40.433460, 55.263683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.374096, 40.302452, 55.060932>,  <36.182724, 40.223846, 54.939281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.374096, 40.302452, 55.060932>,  <36.693047, 40.433460, 55.263683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374096, 40.302452, 55.060932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596160, 0.297062, 0.745887,
		-0.093717, 0.896932, -0.432123,
		-0.797377, -0.327516, -0.506876,
		36.134884, 40.204197, 54.908871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277855, 40.974892, 55.290138>,  <36.693047, 40.433460, 55.263683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277855, 40.974892, 55.290138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036655, 40.664452, 55.216320>,  <35.891933, 40.478188, 55.172028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036655, 40.664452, 55.216320>,  <36.277855, 40.974892, 55.290138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036655, 40.664452, 55.216320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627055, 0.318121, 0.711056,
		-0.493144, 0.544487, -0.678485,
		-0.603002, -0.776101, -0.184544,
		35.855755, 40.431622, 55.160957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629921, 41.309940, 55.137489>,  <36.277855, 40.974892, 55.290138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629921, 41.309940, 55.137489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568008, 40.929779, 55.245403>,  <35.530861, 40.701683, 55.310150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568008, 40.929779, 55.245403>,  <35.629921, 41.309940, 55.137489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568008, 40.929779, 55.245403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581064, 0.308426, 0.753152,
		-0.799004, -0.040188, -0.599981,
		-0.154782, -0.950399, 0.269786,
		35.521572, 40.644661, 55.326340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865547, 41.107628, 55.125488>,  <35.629921, 41.309940, 55.137489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865547, 41.107628, 55.125488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036228, 40.862946, 55.391941>,  <35.138638, 40.716137, 55.551815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036228, 40.862946, 55.391941>,  <34.865547, 41.107628, 55.125488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036228, 40.862946, 55.391941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806720, 0.075506, 0.586090,
		-0.408815, -0.787470, -0.461260,
		0.426701, -0.611710, 0.666136,
		35.164238, 40.679432, 55.591782>
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
