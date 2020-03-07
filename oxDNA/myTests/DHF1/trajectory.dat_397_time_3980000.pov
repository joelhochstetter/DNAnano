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
	<-0.250904, 2.536405, 2.562105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.116982, 2.540024, 2.185207>,  <-0.036628, 2.542195, 1.959069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.116982, 2.540024, 2.185207>,  <-0.250904, 2.536405, 2.562105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.116982, 2.540024, 2.185207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353707, 0.925625, 0.134570,
		0.873382, -0.378334, 0.306705,
		0.334806, 0.009048, -0.942244,
		-0.016540, 2.542738, 1.902534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.503591, 2.540307, 2.507960>,  <-0.250904, 2.536405, 2.562105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.503591, 2.540307, 2.507960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314079, 2.720123, 2.205055>,  <0.200372, 2.828013, 2.023313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314079, 2.720123, 2.205055>,  <0.503591, 2.540307, 2.507960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.314079, 2.720123, 2.205055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454502, 0.861343, 0.226970,
		0.754294, -0.236643, -0.612405,
		-0.473780, 0.449542, -0.757261,
		0.171945, 2.854986, 1.977877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.975985, 2.913130, 2.100196>,  <0.503591, 2.540307, 2.507960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.975985, 2.913130, 2.100196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.618538, 3.092522, 2.107277>,  <0.404070, 3.200157, 2.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.618538, 3.092522, 2.107277>,  <0.975985, 2.913130, 2.100196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.618538, 3.092522, 2.107277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442425, 0.873542, 0.202939,
		0.075550, 0.189182, -0.979031,
		-0.893617, 0.448480, 0.017702,
		0.350453, 3.227066, 2.112588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.140364, 3.527530, 1.817226>,  <0.975985, 2.913130, 2.100196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.140364, 3.527530, 1.817226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816994, 3.563950, 2.049831>,  <0.622972, 3.585801, 2.189395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816994, 3.563950, 2.049831>,  <1.140364, 3.527530, 1.817226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.816994, 3.563950, 2.049831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274547, 0.932236, 0.235714,
		-0.520647, 0.350210, -0.778640,
		-0.808425, 0.091050, 0.581514,
		0.574466, 3.591264, 2.224286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.802113, 4.187009, 1.572112>,  <1.140364, 3.527530, 1.817226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.802113, 4.187009, 1.572112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.727028, 4.090233, 1.952896>,  <0.681977, 4.032167, 2.181367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.727028, 4.090233, 1.952896>,  <0.802113, 4.187009, 1.572112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.727028, 4.090233, 1.952896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362823, 0.883563, 0.296100,
		-0.912756, 0.400975, -0.078075,
		-0.187713, -0.241940, 0.951961,
		0.670714, 4.017651, 2.238484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.477745, 4.856784, 1.874661>,  <0.802113, 4.187009, 1.572112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.477745, 4.856784, 1.874661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.602493, 4.628326, 2.178379>,  <0.677342, 4.491251, 2.360610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.602493, 4.628326, 2.178379>,  <0.477745, 4.856784, 1.874661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.602493, 4.628326, 2.178379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383003, 0.806920, 0.449655,
		-0.869509, 0.150579, 0.470404,
		0.311870, -0.571145, 0.759296,
		0.696054, 4.456983, 2.406168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.466029, 5.297491, 2.448998>,  <0.477745, 4.856784, 1.874661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.466029, 5.297491, 2.448998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692238, 5.005974, 2.603424>,  <0.827963, 4.831063, 2.696079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692238, 5.005974, 2.603424>,  <0.466029, 5.297491, 2.448998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.692238, 5.005974, 2.603424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501085, 0.675427, 0.541029,
		-0.655057, -0.112513, 0.747156,
		0.565522, -0.728793, 0.386065,
		0.861894, 4.787336, 2.719244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.448720, 5.307579, 3.256171>,  <0.466029, 5.297491, 2.448998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.448720, 5.307579, 3.256171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795784, 5.128235, 3.170250>,  <1.004022, 5.020629, 3.118697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795784, 5.128235, 3.170250>,  <0.448720, 5.307579, 3.256171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795784, 5.128235, 3.170250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482610, 0.655838, 0.580486,
		-0.119390, -0.607331, 0.785427,
		0.867660, -0.448359, -0.214804,
		1.056082, 4.993727, 3.105809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.793958, 6.050210, 3.105489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.015766, 5.743538, 3.234924>,  <2.148851, 5.559535, 3.312585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.015766, 5.743538, 3.234924>,  <1.793958, 6.050210, 3.105489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.015766, 5.743538, 3.234924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586231, -0.635878, -0.501988,
		0.590626, 0.088666, -0.802059,
		0.554520, -0.766679, 0.323588,
		2.182122, 5.513534, 3.332000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.056211, 5.633304, 2.570663>,  <1.793958, 6.050210, 3.105489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.056211, 5.633304, 2.570663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023445, 5.406433, 2.898468>,  <2.003785, 5.270311, 3.095151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023445, 5.406433, 2.898468>,  <2.056211, 5.633304, 2.570663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.023445, 5.406433, 2.898468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590519, -0.634774, -0.498346,
		0.802856, -0.524760, -0.282930,
		-0.081915, -0.567176, 0.819513,
		1.998870, 5.236280, 3.144322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.177513, 4.944929, 2.447092>,  <2.056211, 5.633304, 2.570663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.177513, 4.944929, 2.447092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.928745, 4.946030, 2.760323>,  <1.779485, 4.946690, 2.948261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.928745, 4.946030, 2.760323>,  <2.177513, 4.944929, 2.447092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.928745, 4.946030, 2.760323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581107, -0.671931, -0.459155,
		0.524911, -0.740609, 0.419486,
		-0.621920, 0.002751, 0.783077,
		1.742169, 4.946855, 2.995245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.987291, 4.246109, 2.591458>,  <2.177513, 4.944929, 2.447092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.987291, 4.246109, 2.591458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.700642, 4.463272, 2.766594>,  <1.528652, 4.593570, 2.871675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.700642, 4.463272, 2.766594>,  <1.987291, 4.246109, 2.591458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.700642, 4.463272, 2.766594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629027, -0.774273, -0.069469,
		0.301293, -0.325197, 0.896365,
		-0.716622, 0.542908, 0.437840,
		1.485655, 4.626144, 2.897946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.587510, 3.858116, 3.175892>,  <1.987291, 4.246109, 2.591458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.587510, 3.858116, 3.175892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.345917, 4.150848, 3.049637>,  <1.200961, 4.326488, 2.973884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.345917, 4.150848, 3.049637>,  <1.587510, 3.858116, 3.175892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.345917, 4.150848, 3.049637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722776, -0.669841, -0.170022,
		-0.335854, 0.125445, 0.933523,
		-0.603984, 0.731830, -0.315638,
		1.164721, 4.370398, 2.954945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.948132, 3.714056, 3.444026>,  <1.587510, 3.858116, 3.175892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.948132, 3.714056, 3.444026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.876419, 3.949097, 3.128410>,  <0.833391, 4.090121, 2.939041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.876419, 3.949097, 3.128410>,  <0.948132, 3.714056, 3.444026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.876419, 3.949097, 3.128410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655354, -0.669506, -0.349675,
		-0.733736, 0.454409, 0.505118,
		-0.179284, 0.587600, -0.789039,
		0.822634, 4.125377, 2.891698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.226037, 3.767959, 3.428937>,  <0.948132, 3.714056, 3.444026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.226037, 3.767959, 3.428937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.371464, 3.848732, 3.065170>,  <0.458720, 3.897196, 2.846910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.371464, 3.848732, 3.065170>,  <0.226037, 3.767959, 3.428937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.371464, 3.848732, 3.065170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615865, -0.680352, -0.397281,
		-0.698948, 0.704518, -0.122991,
		0.363568, 0.201933, -0.909418,
		0.480534, 3.909312, 2.792345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.353548, 3.814642, 3.107697>,  <0.226037, 3.767959, 3.428937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.353548, 3.814642, 3.107697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061668, 3.722130, 2.850311>,  <0.113460, 3.666622, 2.695880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061668, 3.722130, 2.850311>,  <-0.353548, 3.814642, 3.107697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.061668, 3.722130, 2.850311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588011, -0.692537, -0.417894,
		-0.348972, 0.683301, -0.641340,
		0.729700, -0.231282, -0.643464,
		0.157242, 3.652745, 2.657272>
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
