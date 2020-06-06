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
	<43.124874, 32.730873, 23.474676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757786, 32.649170, 23.338398>,  <42.537533, 32.600147, 23.256632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757786, 32.649170, 23.338398>,  <43.124874, 32.730873, 23.474676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757786, 32.649170, 23.338398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238140, 0.403559, -0.883420,
		0.317934, -0.891863, -0.321712,
		-0.917719, -0.204257, -0.340693,
		42.482471, 32.587891, 23.236191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108471, 32.320972, 22.696161>,  <43.124874, 32.730873, 23.474676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108471, 32.320972, 22.696161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774895, 32.530766, 22.764820>,  <42.574749, 32.656639, 22.806015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774895, 32.530766, 22.764820>,  <43.108471, 32.320972, 22.696161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774895, 32.530766, 22.764820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070571, 0.409838, -0.909424,
		-0.547323, -0.746293, -0.378794,
		-0.833941, 0.524480, 0.171647,
		42.524712, 32.688110, 22.816315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684376, 32.510715, 22.001759>,  <43.108471, 32.320972, 22.696161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684376, 32.510715, 22.001759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302177, 32.427891, 22.085808>,  <42.072857, 32.378197, 22.136238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302177, 32.427891, 22.085808>,  <42.684376, 32.510715, 22.001759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302177, 32.427891, 22.085808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219811, 0.974763, -0.038995,
		-0.196745, -0.083447, -0.976897,
		-0.955497, -0.207060, 0.210123,
		42.015530, 32.365772, 22.148844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151321, 32.791481, 21.390776>,  <42.684376, 32.510715, 22.001759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151321, 32.791481, 21.390776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064426, 32.771507, 21.780712>,  <42.012291, 32.759521, 22.014673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064426, 32.771507, 21.780712>,  <42.151321, 32.791481, 21.390776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064426, 32.771507, 21.780712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238443, 0.971151, -0.003389,
		-0.946548, -0.233180, -0.222876,
		-0.217237, -0.049935, 0.974841,
		41.999256, 32.756527, 22.073164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450409, 32.651531, 21.335440>,  <42.151321, 32.791481, 21.390776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450409, 32.651531, 21.335440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065269, 32.653786, 21.443428>,  <40.834187, 32.655136, 21.508221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065269, 32.653786, 21.443428>,  <41.450409, 32.651531, 21.335440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065269, 32.653786, 21.443428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269767, -0.024104, 0.962624,
		0.011931, 0.999694, 0.021688,
		-0.962852, 0.005634, 0.269972,
		40.776413, 32.655476, 21.524420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255703, 33.294647, 21.831022>,  <41.450409, 32.651531, 21.335440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255703, 33.294647, 21.831022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043594, 32.956947, 21.862156>,  <40.916328, 32.754330, 21.880836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043594, 32.956947, 21.862156>,  <41.255703, 33.294647, 21.831022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043594, 32.956947, 21.862156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119261, 0.016612, 0.992724,
		-0.839396, 0.535699, 0.091877,
		-0.530275, -0.844246, 0.077832,
		40.884514, 32.703674, 21.885506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531590, 33.123501, 22.140051>,  <41.255703, 33.294647, 21.831022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531590, 33.123501, 22.140051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181454, 33.282551, 22.030018>,  <39.971371, 33.377979, 21.963997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181454, 33.282551, 22.030018>,  <40.531590, 33.123501, 22.140051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181454, 33.282551, 22.030018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478290, 0.628762, -0.613104,
		-0.070825, -0.668245, -0.740562,
		-0.875341, 0.397626, -0.275083,
		39.918850, 33.401840, 21.947493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532513, 33.154438, 21.378805>,  <40.531590, 33.123501, 22.140051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532513, 33.154438, 21.378805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263165, 33.423943, 21.500538>,  <40.101555, 33.585644, 21.573578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263165, 33.423943, 21.500538>,  <40.532513, 33.154438, 21.378805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263165, 33.423943, 21.500538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416822, 0.685973, -0.596406,
		-0.610599, -0.274750, -0.742753,
		-0.673371, 0.673760, 0.304333,
		40.061153, 33.626072, 21.591837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394695, 33.525265, 20.856091>,  <40.532513, 33.154438, 21.378805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394695, 33.525265, 20.856091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235588, 33.765305, 21.133698>,  <40.140125, 33.909328, 21.300262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235588, 33.765305, 21.133698>,  <40.394695, 33.525265, 20.856091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235588, 33.765305, 21.133698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109730, 0.782120, -0.613390,
		-0.910901, -0.167831, -0.376950,
		-0.397766, 0.600100, 0.694018,
		40.116257, 33.945335, 21.341904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876854, 34.003345, 20.509333>,  <40.394695, 33.525265, 20.856091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876854, 34.003345, 20.509333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968651, 34.201397, 20.844517>,  <40.023727, 34.320229, 21.045628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968651, 34.201397, 20.844517>,  <39.876854, 34.003345, 20.509333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968651, 34.201397, 20.844517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101666, 0.844034, -0.526565,
		-0.967986, 0.206036, 0.143362,
		0.229493, 0.495133, 0.837960,
		40.037498, 34.349937, 21.095905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636585, 34.565376, 20.399200>,  <39.876854, 34.003345, 20.509333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636585, 34.565376, 20.399200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867867, 34.681438, 20.704224>,  <40.006638, 34.751076, 20.887238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867867, 34.681438, 20.704224>,  <39.636585, 34.565376, 20.399200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867867, 34.681438, 20.704224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017487, 0.930007, -0.367125,
		-0.815704, 0.225609, 0.532661,
		0.578205, 0.290151, 0.762556,
		40.041328, 34.768482, 20.932991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341888, 35.286369, 20.715948>,  <39.636585, 34.565376, 20.399200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341888, 35.286369, 20.715948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727791, 35.243359, 20.812012>,  <39.959332, 35.217552, 20.869650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727791, 35.243359, 20.812012>,  <39.341888, 35.286369, 20.715948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727791, 35.243359, 20.812012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181153, 0.933380, -0.309814,
		-0.190844, 0.342401, 0.919967,
		0.964760, -0.107529, 0.240157,
		40.017220, 35.211102, 20.884058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618813, 35.920097, 20.960922>,  <39.341888, 35.286369, 20.715948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618813, 35.920097, 20.960922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955776, 35.731056, 20.857395>,  <40.157955, 35.617634, 20.795279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955776, 35.731056, 20.857395>,  <39.618813, 35.920097, 20.960922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955776, 35.731056, 20.857395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277838, 0.792540, -0.542850,
		0.461677, 0.385394, 0.798953,
		0.842414, -0.472601, -0.258820,
		40.208500, 35.589275, 20.779749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087402, 36.404621, 20.889915>,  <39.618813, 35.920097, 20.960922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087402, 36.404621, 20.889915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298401, 36.114914, 20.712296>,  <40.424999, 35.941090, 20.605724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298401, 36.114914, 20.712296>,  <40.087402, 36.404621, 20.889915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298401, 36.114914, 20.712296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333460, 0.657251, -0.675889,
		0.781378, 0.208457, 0.588213,
		0.527497, -0.724270, -0.444050,
		40.456650, 35.897633, 20.579081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775078, 36.693226, 20.791487>,  <40.087402, 36.404621, 20.889915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775078, 36.693226, 20.791487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718742, 36.411457, 20.513218>,  <40.684940, 36.242397, 20.346256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718742, 36.411457, 20.513218>,  <40.775078, 36.693226, 20.791487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718742, 36.411457, 20.513218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190693, 0.670217, -0.717249,
		0.971494, -0.233677, 0.039935,
		-0.140839, -0.704418, -0.695672,
		40.676491, 36.200130, 20.304516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373531, 36.678802, 20.347031>,  <40.775078, 36.693226, 20.791487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373531, 36.678802, 20.347031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076054, 36.505745, 20.143173>,  <40.897568, 36.401909, 20.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076054, 36.505745, 20.143173>,  <41.373531, 36.678802, 20.347031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076054, 36.505745, 20.143173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139427, 0.645200, -0.751184,
		0.653814, -0.629712, -0.419512,
		-0.743699, -0.432643, -0.509640,
		40.852947, 36.375950, 19.990280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651058, 36.471710, 19.650772>,  <41.373531, 36.678802, 20.347031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651058, 36.471710, 19.650772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255478, 36.529358, 19.636883>,  <41.018131, 36.563946, 19.628550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255478, 36.529358, 19.636883>,  <41.651058, 36.471710, 19.650772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255478, 36.529358, 19.636883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106560, 0.528290, -0.842351,
		-0.103053, -0.836744, -0.537811,
		-0.988952, 0.144116, -0.034722,
		40.958794, 36.572594, 19.626467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520733, 36.479652, 18.953535>,  <41.651058, 36.471710, 19.650772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520733, 36.479652, 18.953535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165401, 36.619240, 19.072933>,  <40.952202, 36.702991, 19.144573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165401, 36.619240, 19.072933>,  <41.520733, 36.479652, 18.953535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165401, 36.619240, 19.072933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037375, 0.592917, -0.804395,
		-0.457690, -0.725721, -0.513661,
		-0.888326, 0.348966, 0.298496,
		40.898903, 36.723930, 19.162481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043388, 36.284542, 18.476822>,  <41.520733, 36.479652, 18.953535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043388, 36.284542, 18.476822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889587, 36.603867, 18.662231>,  <40.797306, 36.795464, 18.773478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889587, 36.603867, 18.662231>,  <41.043388, 36.284542, 18.476822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889587, 36.603867, 18.662231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162110, 0.435929, -0.885261,
		-0.908780, -0.415524, -0.038200,
		-0.384500, 0.798314, 0.463524,
		40.774239, 36.843361, 18.801289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530289, 36.661247, 17.943884>,  <41.043388, 36.284542, 18.476822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530289, 36.661247, 17.943884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572308, 36.926708, 18.240135>,  <40.597519, 37.085983, 18.417887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572308, 36.926708, 18.240135>,  <40.530289, 36.661247, 17.943884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572308, 36.926708, 18.240135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254480, 0.737892, -0.625104,
		-0.961356, -0.122812, 0.246396,
		0.105043, 0.663651, 0.740630,
		40.603821, 37.125805, 18.462324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965633, 36.939983, 17.948307>,  <40.530289, 36.661247, 17.943884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965633, 36.939983, 17.948307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209824, 37.211170, 18.112103>,  <40.356339, 37.373882, 18.210381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209824, 37.211170, 18.112103>,  <39.965633, 36.939983, 17.948307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209824, 37.211170, 18.112103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348555, 0.694215, -0.629742,
		-0.711220, 0.241710, 0.660107,
		0.610471, 0.677969, 0.409491,
		40.392963, 37.414562, 18.234949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579189, 37.581104, 17.939079>,  <39.965633, 36.939983, 17.948307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579189, 37.581104, 17.939079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941322, 37.738449, 18.003139>,  <40.158600, 37.832855, 18.041574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941322, 37.738449, 18.003139>,  <39.579189, 37.581104, 17.939079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941322, 37.738449, 18.003139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188056, 0.709375, -0.679281,
		-0.380807, 0.584856, 0.716191,
		0.905329, 0.393359, 0.160149,
		40.212921, 37.856457, 18.051184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496933, 38.239269, 17.772333>,  <39.579189, 37.581104, 17.939079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496933, 38.239269, 17.772333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896679, 38.230835, 17.783768>,  <40.136528, 38.225773, 17.790628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896679, 38.230835, 17.783768>,  <39.496933, 38.239269, 17.772333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896679, 38.230835, 17.783768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035077, 0.713074, -0.700211,
		-0.005620, 0.700772, 0.713363,
		0.999369, -0.021088, 0.028589,
		40.196491, 38.224510, 17.792345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801746, 38.905102, 17.926325>,  <39.496933, 38.239269, 17.772333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801746, 38.905102, 17.926325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070389, 38.685883, 17.726894>,  <40.231575, 38.554352, 17.607237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070389, 38.685883, 17.726894>,  <39.801746, 38.905102, 17.926325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070389, 38.685883, 17.726894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062659, 0.712533, -0.698836,
		0.738250, 0.438105, 0.512885,
		0.671611, -0.548052, -0.498576,
		40.271873, 38.521465, 17.577322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189846, 39.394970, 17.631081>,  <39.801746, 38.905102, 17.926325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189846, 39.394970, 17.631081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312592, 39.062050, 17.446423>,  <40.386238, 38.862297, 17.335629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312592, 39.062050, 17.446423>,  <40.189846, 39.394970, 17.631081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312592, 39.062050, 17.446423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299645, 0.544864, -0.783158,
		0.903354, 0.101993, 0.416593,
		0.306863, -0.832298, -0.461644,
		40.404652, 38.812359, 17.307930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887268, 39.459862, 17.338789>,  <40.189846, 39.394970, 17.631081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887268, 39.459862, 17.338789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744934, 39.141315, 17.143162>,  <40.659534, 38.950188, 17.025785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744934, 39.141315, 17.143162>,  <40.887268, 39.459862, 17.338789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744934, 39.141315, 17.143162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173868, 0.457771, -0.871904,
		0.918233, -0.395287, -0.024428,
		-0.355834, -0.796363, -0.489068,
		40.638184, 38.902405, 16.996441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405125, 39.231869, 16.805279>,  <40.887268, 39.459862, 17.338789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405125, 39.231869, 16.805279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016880, 39.168884, 16.732483>,  <40.783932, 39.131092, 16.688805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016880, 39.168884, 16.732483>,  <41.405125, 39.231869, 16.805279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016880, 39.168884, 16.732483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073610, 0.525737, -0.847456,
		0.229121, -0.835946, -0.498695,
		-0.970611, -0.157461, -0.181991,
		40.725697, 39.121647, 16.677885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480434, 39.018208, 16.144594>,  <41.405125, 39.231869, 16.805279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480434, 39.018208, 16.144594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099117, 39.136639, 16.168491>,  <40.870327, 39.207699, 16.182831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099117, 39.136639, 16.168491>,  <41.480434, 39.018208, 16.144594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099117, 39.136639, 16.168491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046324, 0.338778, -0.939725,
		-0.298471, -0.893067, -0.336670,
		-0.953294, 0.296077, 0.059745,
		40.813129, 39.225460, 16.186415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358063, 39.051052, 15.422178>,  <41.480434, 39.018208, 16.144594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358063, 39.051052, 15.422178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049633, 39.262539, 15.564105>,  <40.864574, 39.389431, 15.649261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049633, 39.262539, 15.564105>,  <41.358063, 39.051052, 15.422178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049633, 39.262539, 15.564105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031092, 0.587838, -0.808381,
		-0.635982, -0.612292, -0.469708,
		-0.771077, 0.528719, 0.354817,
		40.818310, 39.421154, 15.670550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663296, 39.132473, 15.032056>,  <41.358063, 39.051052, 15.422178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663296, 39.132473, 15.032056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767807, 39.452084, 15.248677>,  <40.830513, 39.643852, 15.378651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767807, 39.452084, 15.248677>,  <40.663296, 39.132473, 15.032056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767807, 39.452084, 15.248677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058386, 0.573099, -0.817404,
		-0.963495, 0.181954, 0.196393,
		0.261282, 0.799031, 0.541554,
		40.846191, 39.691792, 15.411143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348488, 39.712730, 14.836671>,  <40.663296, 39.132473, 15.032056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348488, 39.712730, 14.836671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627850, 39.916603, 15.037648>,  <40.795467, 40.038925, 15.158235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627850, 39.916603, 15.037648>,  <40.348488, 39.712730, 14.836671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627850, 39.916603, 15.037648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101437, 0.765439, -0.635464,
		-0.708474, 0.392847, 0.586290,
		0.698409, 0.509681, 0.502444,
		40.837372, 40.069508, 15.188381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045986, 39.366596, 14.208547>,  <40.348488, 39.712730, 14.836671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045986, 39.366596, 14.208547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361034, 39.376007, 13.962264>,  <40.550064, 39.381653, 13.814494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361034, 39.376007, 13.962264>,  <40.045986, 39.366596, 14.208547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361034, 39.376007, 13.962264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589708, -0.318419, 0.742195,
		-0.178589, -0.947658, -0.264670,
		0.787624, 0.023530, -0.615708,
		40.597321, 39.383064, 13.777552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559395, 38.750603, 14.023278>,  <40.045986, 39.366596, 14.208547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559395, 38.750603, 14.023278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723621, 39.115250, 14.031146>,  <40.822155, 39.334038, 14.035867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723621, 39.115250, 14.031146>,  <40.559395, 38.750603, 14.023278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723621, 39.115250, 14.031146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515442, -0.249823, 0.819700,
		0.752169, -0.326400, -0.572456,
		0.410562, 0.911620, 0.019669,
		40.846790, 39.388737, 14.037046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067253, 38.453724, 14.551821>,  <40.559395, 38.750603, 14.023278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067253, 38.453724, 14.551821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833721, 38.212452, 14.769191>,  <39.693604, 38.067688, 14.899613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833721, 38.212452, 14.769191>,  <40.067253, 38.453724, 14.551821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833721, 38.212452, 14.769191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767918, 0.193013, -0.610776,
		0.263525, -0.773893, -0.575885,
		-0.583829, -0.603188, 0.543423,
		39.658573, 38.031498, 14.932219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749260, 37.811520, 14.118443>,  <40.067253, 38.453724, 14.551821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749260, 37.811520, 14.118443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529484, 37.933186, 14.429725>,  <39.397617, 38.006187, 14.616493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529484, 37.933186, 14.429725>,  <39.749260, 37.811520, 14.118443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529484, 37.933186, 14.429725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755351, 0.217304, -0.618242,
		-0.357155, -0.927503, 0.110357,
		-0.549440, 0.304167, 0.778202,
		39.364651, 38.024437, 14.663185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040245, 37.548683, 14.254103>,  <39.749260, 37.811520, 14.118443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040245, 37.548683, 14.254103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018517, 37.927540, 14.380572>,  <39.005478, 38.154854, 14.456454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018517, 37.927540, 14.380572>,  <39.040245, 37.548683, 14.254103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018517, 37.927540, 14.380572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856078, 0.118810, -0.503006,
		-0.513984, -0.297995, 0.804375,
		-0.054325, 0.947145, 0.316174,
		39.002220, 38.211681, 14.475425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744995, 37.574066, 13.594773>,  <39.040245, 37.548683, 14.254103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744995, 37.574066, 13.594773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024414, 37.295513, 13.528934>,  <39.192066, 37.128384, 13.489429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024414, 37.295513, 13.528934>,  <38.744995, 37.574066, 13.594773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024414, 37.295513, 13.528934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090990, -0.314602, 0.944853,
		-0.709759, -0.645044, -0.283127,
		0.698544, -0.696379, -0.164599,
		39.233978, 37.086601, 13.479554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428566, 36.941986, 13.729374>,  <38.744995, 37.574066, 13.594773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428566, 36.941986, 13.729374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821693, 36.869576, 13.743730>,  <39.057571, 36.826130, 13.752343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821693, 36.869576, 13.743730>,  <38.428566, 36.941986, 13.729374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821693, 36.869576, 13.743730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107387, -0.402805, 0.908964,
		-0.150094, -0.897204, -0.415326,
		0.982822, -0.181031, 0.035889,
		39.116539, 36.815266, 13.754497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527359, 36.198181, 13.903096>,  <38.428566, 36.941986, 13.729374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527359, 36.198181, 13.903096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873295, 36.371098, 14.005218>,  <39.080856, 36.474850, 14.066490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873295, 36.371098, 14.005218>,  <38.527359, 36.198181, 13.903096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873295, 36.371098, 14.005218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012656, -0.489587, 0.871863,
		0.501894, -0.757250, -0.417942,
		0.864837, 0.432293, 0.255305,
		39.132748, 36.500786, 14.081809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946304, 35.659733, 13.980958>,  <38.527359, 36.198181, 13.903096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946304, 35.659733, 13.980958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070709, 35.984085, 14.179248>,  <39.145351, 36.178696, 14.298222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070709, 35.984085, 14.179248>,  <38.946304, 35.659733, 13.980958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070709, 35.984085, 14.179248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031313, -0.512568, 0.858076,
		0.949890, -0.282396, -0.134024,
		0.311013, 0.810880, 0.495726,
		39.164013, 36.227348, 14.327966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546761, 35.469650, 14.408612>,  <38.946304, 35.659733, 13.980958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546761, 35.469650, 14.408612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395565, 35.806042, 14.563472>,  <39.304848, 36.007877, 14.656387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395565, 35.806042, 14.563472>,  <39.546761, 35.469650, 14.408612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395565, 35.806042, 14.563472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204044, -0.483565, 0.851194,
		0.903043, 0.242750, 0.354380,
		-0.377993, 0.840974, 0.387148,
		39.282166, 36.058334, 14.679616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973904, 35.563507, 14.974493>,  <39.546761, 35.469650, 14.408612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973904, 35.563507, 14.974493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655281, 35.788662, 15.062724>,  <39.464108, 35.923756, 15.115663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655281, 35.788662, 15.062724>,  <39.973904, 35.563507, 14.974493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655281, 35.788662, 15.062724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013270, -0.348488, 0.937219,
		0.604416, 0.749477, 0.270122,
		-0.796558, 0.562886, 0.220578,
		39.416313, 35.957527, 15.128898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134754, 35.989254, 15.650357>,  <39.973904, 35.563507, 14.974493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134754, 35.989254, 15.650357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737484, 35.968472, 15.608584>,  <39.499123, 35.956001, 15.583521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737484, 35.968472, 15.608584>,  <40.134754, 35.989254, 15.650357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737484, 35.968472, 15.608584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090288, -0.224415, 0.970302,
		-0.073846, 0.973108, 0.218193,
		-0.993174, -0.051953, -0.104432,
		39.439533, 35.952885, 15.577254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826118, 36.375473, 16.264395>,  <40.134754, 35.989254, 15.650357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826118, 36.375473, 16.264395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497601, 36.186886, 16.135902>,  <39.300488, 36.073734, 16.058807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497601, 36.186886, 16.135902>,  <39.826118, 36.375473, 16.264395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497601, 36.186886, 16.135902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184902, -0.312692, 0.931684,
		-0.539707, 0.824585, 0.169637,
		-0.821297, -0.471470, -0.321230,
		39.251213, 36.045444, 16.039534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428406, 36.408875, 16.910419>,  <39.826118, 36.375473, 16.264395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428406, 36.408875, 16.910419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235214, 36.143215, 16.682159>,  <39.119301, 35.983822, 16.545204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235214, 36.143215, 16.682159>,  <39.428406, 36.408875, 16.910419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235214, 36.143215, 16.682159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400328, -0.412122, 0.818470,
		-0.778761, 0.623751, -0.066830,
		-0.482979, -0.664146, -0.570650,
		39.090321, 35.943970, 16.510965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703064, 36.472740, 17.047504>,  <39.428406, 36.408875, 16.910419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703064, 36.472740, 17.047504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827438, 36.110912, 16.930836>,  <38.902061, 35.893814, 16.860834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827438, 36.110912, 16.930836>,  <38.703064, 36.472740, 17.047504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827438, 36.110912, 16.930836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469220, -0.412976, 0.780566,
		-0.826531, -0.105844, -0.552850,
		0.310932, -0.904571, -0.291673,
		38.920719, 35.839542, 16.843334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087872, 35.905209, 17.067060>,  <38.703064, 36.472740, 17.047504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087872, 35.905209, 17.067060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437176, 35.710915, 17.051678>,  <38.646759, 35.594337, 17.042448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437176, 35.710915, 17.051678>,  <38.087872, 35.905209, 17.067060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437176, 35.710915, 17.051678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272704, -0.552628, 0.787550,
		-0.403790, -0.677250, -0.615050,
		0.873262, -0.485731, -0.038457,
		38.699154, 35.565193, 17.040140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997929, 35.122940, 17.167854>,  <38.087872, 35.905209, 17.067060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997929, 35.122940, 17.167854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365215, 35.195023, 17.308933>,  <38.585587, 35.238274, 17.393579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365215, 35.195023, 17.308933>,  <37.997929, 35.122940, 17.167854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365215, 35.195023, 17.308933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164967, -0.635560, 0.754221,
		0.360078, -0.750725, -0.553856,
		0.918221, 0.180211, 0.352696,
		38.640682, 35.249084, 17.414742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201912, 34.460709, 17.404371>,  <37.997929, 35.122940, 17.167854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201912, 34.460709, 17.404371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453247, 34.717552, 17.580051>,  <38.604046, 34.871658, 17.685459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453247, 34.717552, 17.580051>,  <38.201912, 34.460709, 17.404371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453247, 34.717552, 17.580051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012264, -0.556318, 0.830879,
		0.777847, -0.527456, -0.341679,
		0.628334, 0.642107, 0.439199,
		38.641747, 34.910183, 17.711811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487061, 34.025635, 17.959099>,  <38.201912, 34.460709, 17.404371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487061, 34.025635, 17.959099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595058, 34.387249, 18.091660>,  <38.659859, 34.604218, 18.171196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595058, 34.387249, 18.091660>,  <38.487061, 34.025635, 17.959099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595058, 34.387249, 18.091660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048513, -0.356519, 0.933027,
		0.961639, -0.235835, -0.140116,
		0.269995, 0.904033, 0.331402,
		38.676056, 34.658459, 18.191080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063831, 33.955048, 18.398291>,  <38.487061, 34.025635, 17.959099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063831, 33.955048, 18.398291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891094, 34.306103, 18.481487>,  <38.787453, 34.516735, 18.531406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891094, 34.306103, 18.481487>,  <39.063831, 33.955048, 18.398291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891094, 34.306103, 18.481487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046840, -0.208471, 0.976906,
		0.900731, 0.431614, 0.048919,
		-0.431844, 0.877638, 0.207993,
		38.761539, 34.569393, 18.543884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319279, 34.038731, 19.053658>,  <39.063831, 33.955048, 18.398291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319279, 34.038731, 19.053658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997692, 34.268181, 18.990940>,  <38.804741, 34.405853, 18.953310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997692, 34.268181, 18.990940>,  <39.319279, 34.038731, 19.053658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997692, 34.268181, 18.990940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300539, -0.164419, 0.939490,
		0.513140, 0.802443, 0.304586,
		-0.803967, 0.573630, -0.156796,
		38.756500, 34.440269, 18.943901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273785, 34.422722, 19.587881>,  <39.319279, 34.038731, 19.053658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273785, 34.422722, 19.587881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902927, 34.461037, 19.442974>,  <38.680412, 34.484024, 19.356030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902927, 34.461037, 19.442974>,  <39.273785, 34.422722, 19.587881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902927, 34.461037, 19.442974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361268, 0.028174, 0.932036,
		0.099482, 0.995003, 0.008483,
		-0.927140, 0.095785, -0.362265,
		38.624786, 34.489773, 19.334295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914444, 34.810463, 20.017891>,  <39.273785, 34.422722, 19.587881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914444, 34.810463, 20.017891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582314, 34.676056, 19.840057>,  <38.383034, 34.595413, 19.733356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582314, 34.676056, 19.840057>,  <38.914444, 34.810463, 20.017891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582314, 34.676056, 19.840057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499706, 0.095778, 0.860884,
		-0.246687, 0.936975, -0.247434,
		-0.830325, -0.336013, -0.444585,
		38.333218, 34.575253, 19.706682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325069, 35.267368, 20.213861>,  <38.914444, 34.810463, 20.017891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325069, 35.267368, 20.213861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150841, 34.932709, 20.081020>,  <38.046303, 34.731911, 20.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150841, 34.932709, 20.081020>,  <38.325069, 35.267368, 20.213861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150841, 34.932709, 20.081020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621983, 0.013037, 0.782922,
		-0.650703, 0.547580, -0.526062,
		-0.435571, -0.836652, -0.332102,
		38.020168, 34.681713, 19.981390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630398, 35.377758, 20.278282>,  <38.325069, 35.267368, 20.213861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630398, 35.377758, 20.278282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651775, 34.978436, 20.269112>,  <37.664604, 34.738842, 20.263609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651775, 34.978436, 20.269112>,  <37.630398, 35.377758, 20.278282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651775, 34.978436, 20.269112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531070, -0.047861, 0.845975,
		-0.845641, -0.033038, -0.532730,
		0.053446, -0.998308, -0.022927,
		37.667809, 34.678944, 20.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924656, 35.176102, 20.283991>,  <37.630398, 35.377758, 20.278282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924656, 35.176102, 20.283991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161942, 34.880013, 20.410587>,  <37.304314, 34.702358, 20.486546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161942, 34.880013, 20.410587>,  <36.924656, 35.176102, 20.283991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161942, 34.880013, 20.410587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600691, -0.145255, 0.786175,
		-0.535974, -0.656482, -0.530813,
		0.593213, -0.740224, 0.316490,
		37.339905, 34.657944, 20.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558090, 34.486607, 20.351131>,  <36.924656, 35.176102, 20.283991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558090, 34.486607, 20.351131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835121, 34.606964, 20.613369>,  <37.001339, 34.679180, 20.770712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835121, 34.606964, 20.613369>,  <36.558090, 34.486607, 20.351131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835121, 34.606964, 20.613369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691451, 0.017993, 0.722199,
		0.205510, -0.953488, 0.220515,
		0.692575, 0.300895, 0.655593,
		37.042892, 34.697231, 20.810047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541565, 34.035973, 20.970434>,  <36.558090, 34.486607, 20.351131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541565, 34.035973, 20.970434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600216, 34.429890, 21.007702>,  <36.635406, 34.666241, 21.030064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600216, 34.429890, 21.007702>,  <36.541565, 34.035973, 20.970434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600216, 34.429890, 21.007702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697406, 0.036121, 0.715766,
		0.701516, -0.169931, 0.692097,
		0.146630, 0.984794, 0.093171,
		36.644203, 34.725327, 21.035654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597820, 34.256172, 21.645761>,  <36.541565, 34.035973, 20.970434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597820, 34.256172, 21.645761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447781, 34.569439, 21.447388>,  <36.357758, 34.757401, 21.328363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447781, 34.569439, 21.447388>,  <36.597820, 34.256172, 21.645761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447781, 34.569439, 21.447388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748273, 0.059984, 0.660674,
		0.547166, 0.618912, 0.563523,
		-0.375096, 0.783167, -0.495936,
		36.335251, 34.804390, 21.298607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572796, 34.816391, 22.087482>,  <36.597820, 34.256172, 21.645761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572796, 34.816391, 22.087482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293522, 34.801205, 21.801517>,  <36.125957, 34.792095, 21.629940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293522, 34.801205, 21.801517>,  <36.572796, 34.816391, 22.087482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293522, 34.801205, 21.801517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710793, -0.082504, 0.698546,
		-0.085501, 0.995867, 0.030620,
		-0.698185, -0.037962, -0.714910,
		36.084064, 34.789818, 21.587044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990421, 35.377865, 21.981501>,  <36.572796, 34.816391, 22.087482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990421, 35.377865, 21.981501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906494, 34.998322, 21.887138>,  <35.856140, 34.770596, 21.830521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906494, 34.998322, 21.887138>,  <35.990421, 35.377865, 21.981501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906494, 34.998322, 21.887138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720642, -0.012989, 0.693186,
		-0.660797, 0.315444, -0.681060,
		-0.209815, -0.948855, -0.235905,
		35.843548, 34.713665, 21.816366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186840, 35.418018, 21.894709>,  <35.990421, 35.377865, 21.981501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186840, 35.418018, 21.894709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317822, 35.051529, 21.987057>,  <35.396412, 34.831635, 22.042465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317822, 35.051529, 21.987057>,  <35.186840, 35.418018, 21.894709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317822, 35.051529, 21.987057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762371, -0.111854, 0.637400,
		-0.558179, -0.384730, -0.735132,
		0.327454, -0.916227, 0.230872,
		35.416058, 34.776661, 22.056318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573643, 34.938416, 21.922049>,  <35.186840, 35.418018, 21.894709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573643, 34.938416, 21.922049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869438, 34.804913, 22.155891>,  <35.046913, 34.724812, 22.296198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869438, 34.804913, 22.155891>,  <34.573643, 34.938416, 21.922049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869438, 34.804913, 22.155891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669950, -0.279995, 0.687582,
		-0.065799, -0.900115, -0.430654,
		0.739484, -0.333759, 0.584609,
		35.091282, 34.704784, 22.331274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461998, 34.218868, 22.160505>,  <34.573643, 34.938416, 21.922049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461998, 34.218868, 22.160505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679516, 34.410336, 22.436234>,  <34.810028, 34.525215, 22.601669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679516, 34.410336, 22.436234>,  <34.461998, 34.218868, 22.160505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679516, 34.410336, 22.436234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601338, -0.350697, 0.717917,
		0.585387, -0.804914, 0.097134,
		0.543796, 0.478669, 0.689319,
		34.842655, 34.553936, 22.643028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772003, 33.674706, 22.820957>,  <34.461998, 34.218868, 22.160505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772003, 33.674706, 22.820957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783627, 34.049965, 22.958961>,  <34.790600, 34.275120, 23.041765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783627, 34.049965, 22.958961>,  <34.772003, 33.674706, 22.820957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783627, 34.049965, 22.958961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471572, -0.291468, 0.832266,
		0.881349, -0.186880, 0.433935,
		0.029056, 0.938148, 0.345013,
		34.792343, 34.331409, 23.062466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009399, 33.624931, 23.482895>,  <34.772003, 33.674706, 22.820957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009399, 33.624931, 23.482895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810741, 33.972046, 23.489700>,  <34.691547, 34.180313, 23.493784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810741, 33.972046, 23.489700>,  <35.009399, 33.624931, 23.482895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810741, 33.972046, 23.489700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455197, -0.277106, 0.846172,
		0.739010, 0.412506, 0.532637,
		-0.496648, 0.867785, 0.017013,
		34.661747, 34.232380, 23.494804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035774, 33.890320, 24.148222>,  <35.009399, 33.624931, 23.482895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035774, 33.890320, 24.148222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721806, 34.073956, 23.981789>,  <34.533424, 34.184139, 23.881927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721806, 34.073956, 23.981789>,  <35.035774, 33.890320, 24.148222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721806, 34.073956, 23.981789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508797, -0.094369, 0.855698,
		0.353579, 0.883362, 0.307658,
		-0.784925, 0.459093, -0.416085,
		34.486328, 34.211685, 23.856964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803204, 34.355034, 24.709747>,  <35.035774, 33.890320, 24.148222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803204, 34.355034, 24.709747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500759, 34.315765, 24.450932>,  <34.319294, 34.292206, 24.295643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500759, 34.315765, 24.450932>,  <34.803204, 34.355034, 24.709747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500759, 34.315765, 24.450932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626194, -0.178823, 0.758883,
		-0.190206, 0.978971, 0.073736,
		-0.756110, -0.098171, -0.647039,
		34.273926, 34.286316, 24.256821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301292, 34.747433, 24.989590>,  <34.803204, 34.355034, 24.709747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301292, 34.747433, 24.989590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124256, 34.486389, 24.743591>,  <34.018036, 34.329765, 24.595993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124256, 34.486389, 24.743591>,  <34.301292, 34.747433, 24.989590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124256, 34.486389, 24.743591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659541, -0.227757, 0.716332,
		-0.607552, 0.722656, -0.329618,
		-0.442589, -0.652606, -0.614996,
		33.991478, 34.290607, 24.559092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548019, 34.754055, 25.002609>,  <34.301292, 34.747433, 24.989590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548019, 34.754055, 25.002609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566807, 34.403267, 24.811314>,  <33.578079, 34.192795, 24.696537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566807, 34.403267, 24.811314>,  <33.548019, 34.754055, 25.002609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566807, 34.403267, 24.811314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598113, -0.408144, 0.689695,
		-0.800034, 0.253645, -0.543701,
		0.046971, -0.876974, -0.478237,
		33.580898, 34.140175, 24.667843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885014, 34.444599, 24.942026>,  <33.548019, 34.754055, 25.002609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885014, 34.444599, 24.942026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119694, 34.124321, 24.893566>,  <33.260502, 33.932156, 24.864491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119694, 34.124321, 24.893566>,  <32.885014, 34.444599, 24.942026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119694, 34.124321, 24.893566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533026, -0.494451, 0.686586,
		-0.609648, -0.338242, -0.716883,
		0.586697, -0.800694, -0.121150,
		33.295704, 33.884113, 24.857222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372074, 33.931221, 25.159176>,  <32.885014, 34.444599, 24.942026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372074, 33.931221, 25.159176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726658, 33.751583, 25.114452>,  <32.939407, 33.643799, 25.087618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726658, 33.751583, 25.114452>,  <32.372074, 33.931221, 25.159176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726658, 33.751583, 25.114452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233116, -0.641993, 0.730412,
		-0.399805, -0.621417, -0.673793,
		0.886461, -0.449095, -0.111809,
		32.992596, 33.616856, 25.080910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310947, 33.154602, 25.010445>,  <32.372074, 33.931221, 25.159176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310947, 33.154602, 25.010445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649967, 33.256592, 25.196625>,  <32.853378, 33.317787, 25.308332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649967, 33.256592, 25.196625>,  <32.310947, 33.154602, 25.010445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649967, 33.256592, 25.196625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220779, -0.628140, 0.746121,
		0.482609, -0.735138, -0.476089,
		0.847552, 0.254975, 0.465450,
		32.904232, 33.333084, 25.336260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507942, 32.516384, 25.240696>,  <32.310947, 33.154602, 25.010445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507942, 32.516384, 25.240696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757442, 32.737503, 25.461731>,  <32.907143, 32.870174, 25.594351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757442, 32.737503, 25.461731>,  <32.507942, 32.516384, 25.240696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757442, 32.737503, 25.461731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033749, -0.725358, 0.687544,
		0.780897, -0.410205, -0.471097,
		0.623748, 0.552800, 0.552586,
		32.944569, 32.903343, 25.627506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021149, 32.049591, 25.493776>,  <32.507942, 32.516384, 25.240696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021149, 32.049591, 25.493776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011166, 32.360317, 25.745472>,  <33.005177, 32.546753, 25.896488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011166, 32.360317, 25.745472>,  <33.021149, 32.049591, 25.493776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011166, 32.360317, 25.745472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032634, -0.629731, 0.776128,
		0.999156, -0.001168, 0.041064,
		-0.024953, 0.776813, 0.629237,
		33.003681, 32.593361, 25.934242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563995, 31.917021, 25.954702>,  <33.021149, 32.049591, 25.493776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563995, 31.917021, 25.954702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326672, 32.183296, 26.135738>,  <33.184277, 32.343060, 26.244360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326672, 32.183296, 26.135738>,  <33.563995, 31.917021, 25.954702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326672, 32.183296, 26.135738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033598, -0.582234, 0.812327,
		0.804270, 0.466759, 0.367813,
		-0.593314, 0.665688, 0.452591,
		33.148678, 32.383003, 26.271515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908081, 32.006462, 26.628731>,  <33.563995, 31.917021, 25.954702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908081, 32.006462, 26.628731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540142, 32.160435, 26.658924>,  <33.319378, 32.252819, 26.677040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540142, 32.160435, 26.658924>,  <33.908081, 32.006462, 26.628731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540142, 32.160435, 26.658924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084776, -0.382962, 0.919866,
		0.382995, 0.839741, 0.384902,
		-0.919852, 0.384935, 0.075483,
		33.264187, 32.275913, 26.681568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923191, 32.276466, 27.315062>,  <33.908081, 32.006462, 26.628731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923191, 32.276466, 27.315062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551155, 32.218006, 27.180260>,  <33.327934, 32.182930, 27.099379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551155, 32.218006, 27.180260>,  <33.923191, 32.276466, 27.315062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551155, 32.218006, 27.180260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276429, -0.325701, 0.904160,
		-0.241910, 0.934108, 0.262530,
		-0.930090, -0.146154, -0.337005,
		33.272129, 32.174160, 27.079159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548241, 32.506218, 27.861967>,  <33.923191, 32.276466, 27.315062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548241, 32.506218, 27.861967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309795, 32.263660, 27.651470>,  <33.166729, 32.118126, 27.525171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309795, 32.263660, 27.651470>,  <33.548241, 32.506218, 27.861967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309795, 32.263660, 27.651470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223524, -0.504178, 0.834171,
		-0.771156, 0.614892, 0.165006,
		-0.596117, -0.606393, -0.526243,
		33.130959, 32.081741, 27.493597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974453, 32.449421, 28.220530>,  <33.548241, 32.506218, 27.861967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974453, 32.449421, 28.220530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955753, 32.115189, 28.001579>,  <32.944534, 31.914650, 27.870209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955753, 32.115189, 28.001579>,  <32.974453, 32.449421, 28.220530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955753, 32.115189, 28.001579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272031, -0.516613, 0.811856,
		-0.961152, 0.186857, -0.203153,
		-0.046749, -0.835581, -0.547375,
		32.941727, 31.864513, 27.837366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399429, 32.101879, 28.485430>,  <32.974453, 32.449421, 28.220530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399429, 32.101879, 28.485430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648674, 31.844517, 28.307549>,  <32.798222, 31.690100, 28.200819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648674, 31.844517, 28.307549>,  <32.399429, 32.101879, 28.485430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648674, 31.844517, 28.307549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160692, -0.661761, 0.732291,
		-0.765451, -0.384835, -0.515739,
		0.623108, -0.643408, -0.444705,
		32.835606, 31.651495, 28.174137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172939, 31.475927, 28.776394>,  <32.399429, 32.101879, 28.485430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172939, 31.475927, 28.776394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514690, 31.368683, 28.598331>,  <32.719742, 31.304337, 28.491495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514690, 31.368683, 28.598331>,  <32.172939, 31.475927, 28.776394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514690, 31.368683, 28.598331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090506, -0.766764, 0.635516,
		-0.511716, -0.583258, -0.630838,
		0.854374, -0.268109, -0.445154,
		32.771004, 31.288250, 28.464785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105740, 30.717112, 28.662144>,  <32.172939, 31.475927, 28.776394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105740, 30.717112, 28.662144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497570, 30.797356, 28.667477>,  <32.732670, 30.845503, 28.670677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497570, 30.797356, 28.667477>,  <32.105740, 30.717112, 28.662144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497570, 30.797356, 28.667477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163819, -0.834849, 0.525539,
		0.116560, -0.512623, -0.850666,
		0.979580, 0.200612, 0.013333,
		32.791443, 30.857540, 28.671476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490803, 30.032036, 28.563078>,  <32.105740, 30.717112, 28.662144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490803, 30.032036, 28.563078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755539, 30.283955, 28.725716>,  <32.914379, 30.435106, 28.823298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755539, 30.283955, 28.725716>,  <32.490803, 30.032036, 28.563078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755539, 30.283955, 28.725716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373822, -0.747410, 0.549214,
		0.649787, -0.211499, -0.730100,
		0.661842, 0.629799, 0.406594,
		32.954090, 30.472895, 28.847694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103249, 29.634289, 28.637888>,  <32.490803, 30.032036, 28.563078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103249, 29.634289, 28.637888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153305, 29.934799, 28.897095>,  <33.183338, 30.115105, 29.052618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153305, 29.934799, 28.897095>,  <33.103249, 29.634289, 28.637888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153305, 29.934799, 28.897095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359251, -0.643140, 0.676246,
		0.924812, 0.148172, -0.350382,
		0.125144, 0.751276, 0.648015,
		33.190849, 30.160183, 29.091499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707565, 29.399561, 28.969206>,  <33.103249, 29.634289, 28.637888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707565, 29.399561, 28.969206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523674, 29.665257, 29.204979>,  <33.413338, 29.824675, 29.346443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523674, 29.665257, 29.204979>,  <33.707565, 29.399561, 28.969206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523674, 29.665257, 29.204979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201420, -0.568446, 0.797684,
		0.864914, 0.485445, 0.127542,
		-0.459732, 0.664239, 0.589435,
		33.385754, 29.864529, 29.381809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216084, 29.543638, 29.526018>,  <33.707565, 29.399561, 28.969206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216084, 29.543638, 29.526018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865936, 29.667397, 29.674610>,  <33.655846, 29.741652, 29.763765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865936, 29.667397, 29.674610>,  <34.216084, 29.543638, 29.526018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865936, 29.667397, 29.674610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197024, -0.473380, 0.858541,
		0.441483, 0.824733, 0.353425,
		-0.875371, 0.309398, 0.371481,
		33.603325, 29.760216, 29.786055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360596, 29.743713, 30.307539>,  <34.216084, 29.543638, 29.526018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360596, 29.743713, 30.307539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972980, 29.661846, 30.252281>,  <33.740414, 29.612726, 30.219126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972980, 29.661846, 30.252281>,  <34.360596, 29.743713, 30.307539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972980, 29.661846, 30.252281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045929, -0.699085, 0.713562,
		-0.242619, 0.685121, 0.686837,
		-0.969034, -0.204669, -0.138144,
		33.682270, 29.600445, 30.210838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055164, 29.878120, 30.972445>,  <34.360596, 29.743713, 30.307539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055164, 29.878120, 30.972445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772160, 29.643299, 30.815067>,  <33.602356, 29.502407, 30.720640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772160, 29.643299, 30.815067>,  <34.055164, 29.878120, 30.972445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772160, 29.643299, 30.815067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303507, -0.250365, 0.919348,
		-0.638209, 0.769862, -0.001039,
		-0.707512, -0.587051, -0.393444,
		33.559906, 29.467184, 30.697035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444786, 30.035097, 31.366703>,  <34.055164, 29.878120, 30.972445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444786, 30.035097, 31.366703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421310, 29.674110, 31.196007>,  <33.407223, 29.457518, 31.093588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421310, 29.674110, 31.196007>,  <33.444786, 30.035097, 31.366703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421310, 29.674110, 31.196007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276951, -0.395978, 0.875499,
		-0.959090, 0.169571, -0.226698,
		-0.058692, -0.902467, -0.426742,
		33.403702, 29.403370, 31.067984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859276, 29.803276, 31.587786>,  <33.444786, 30.035097, 31.366703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859276, 29.803276, 31.587786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044979, 29.471241, 31.464230>,  <33.156403, 29.272020, 31.390097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044979, 29.471241, 31.464230>,  <32.859276, 29.803276, 31.587786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044979, 29.471241, 31.464230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213132, -0.443210, 0.870712,
		-0.859672, -0.338404, -0.382684,
		0.464262, -0.830089, -0.308891,
		33.184258, 29.222214, 31.371563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495239, 29.294638, 31.939285>,  <32.859276, 29.803276, 31.587786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495239, 29.294638, 31.939285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805943, 29.079769, 31.807777>,  <32.992367, 28.950848, 31.728872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805943, 29.079769, 31.807777>,  <32.495239, 29.294638, 31.939285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805943, 29.079769, 31.807777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112876, -0.632317, 0.766443,
		-0.619591, -0.558237, -0.551795,
		0.776766, -0.537166, -0.328766,
		33.038971, 28.918619, 31.709146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276711, 28.659075, 31.829247>,  <32.495239, 29.294638, 31.939285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276711, 28.659075, 31.829247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667774, 28.609867, 31.897423>,  <32.902412, 28.580343, 31.938328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667774, 28.609867, 31.897423>,  <32.276711, 28.659075, 31.829247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667774, 28.609867, 31.897423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199580, -0.797725, 0.569037,
		0.065963, -0.590341, -0.804454,
		0.977659, -0.123018, 0.170440,
		32.961071, 28.572962, 31.948555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483303, 27.843582, 31.711369>,  <32.276711, 28.659075, 31.829247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483303, 27.843582, 31.711369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766048, 28.014050, 31.937191>,  <32.935696, 28.116331, 32.072685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766048, 28.014050, 31.937191>,  <32.483303, 27.843582, 31.711369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766048, 28.014050, 31.937191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039693, -0.772972, 0.633197,
		0.706236, -0.469993, -0.529469,
		0.706863, 0.426170, 0.564556,
		32.978107, 28.141901, 32.106560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045349, 27.292542, 31.847569>,  <32.483303, 27.843582, 31.711369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045349, 27.292542, 31.847569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046772, 27.565521, 32.139938>,  <33.047626, 27.729309, 32.315361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046772, 27.565521, 32.139938>,  <33.045349, 27.292542, 31.847569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046772, 27.565521, 32.139938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162544, -0.721605, 0.672953,
		0.986695, 0.116412, -0.113497,
		0.003560, 0.682447, 0.730926,
		33.047840, 27.770256, 32.359215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313686, 26.899385, 32.500988>,  <33.045349, 27.292542, 31.847569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313686, 26.899385, 32.500988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207191, 27.250061, 32.661255>,  <33.143295, 27.460466, 32.757416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207191, 27.250061, 32.661255>,  <33.313686, 26.899385, 32.500988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207191, 27.250061, 32.661255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093846, -0.390119, 0.915969,
		0.959328, 0.281465, 0.021590,
		-0.266236, 0.876690, 0.400666,
		33.127319, 27.513067, 32.781456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659317, 26.969717, 33.138416>,  <33.313686, 26.899385, 32.500988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659317, 26.969717, 33.138416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376167, 27.241463, 33.215752>,  <33.206280, 27.404510, 33.262154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376167, 27.241463, 33.215752>,  <33.659317, 26.969717, 33.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376167, 27.241463, 33.215752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179812, -0.438025, 0.880797,
		0.683070, 0.588726, 0.432223,
		-0.707872, 0.679364, 0.193341,
		33.163807, 27.445272, 33.273754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848354, 27.283850, 33.874165>,  <33.659317, 26.969717, 33.138416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848354, 27.283850, 33.874165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481697, 27.409454, 33.775246>,  <33.261703, 27.484818, 33.715897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481697, 27.409454, 33.775246>,  <33.848354, 27.283850, 33.874165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481697, 27.409454, 33.775246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297467, -0.122702, 0.946814,
		0.266965, 0.941458, 0.205882,
		-0.916648, 0.314010, -0.247295,
		33.206703, 27.503656, 33.701057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746243, 27.816917, 34.368931>,  <33.848354, 27.283850, 33.874165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746243, 27.816917, 34.368931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391521, 27.684513, 34.239929>,  <33.178688, 27.605070, 34.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391521, 27.684513, 34.239929>,  <33.746243, 27.816917, 34.368931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391521, 27.684513, 34.239929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335295, -0.019412, 0.941913,
		-0.318045, 0.943426, -0.093772,
		-0.886806, -0.331013, -0.322500,
		33.125481, 27.585209, 34.143181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303799, 28.115139, 34.770950>,  <33.746243, 27.816917, 34.368931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303799, 28.115139, 34.770950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094776, 27.799252, 34.642403>,  <32.969364, 27.609718, 34.565273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094776, 27.799252, 34.642403>,  <33.303799, 28.115139, 34.770950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094776, 27.799252, 34.642403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370769, -0.128938, 0.919731,
		-0.767766, 0.599766, -0.225426,
		-0.522557, -0.789719, -0.321369,
		32.938007, 27.562336, 34.545994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617676, 28.237732, 35.067726>,  <33.303799, 28.115139, 34.770950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617676, 28.237732, 35.067726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663891, 27.850906, 34.977005>,  <32.691620, 27.618811, 34.922573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663891, 27.850906, 34.977005>,  <32.617676, 28.237732, 35.067726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663891, 27.850906, 34.977005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469836, -0.254382, 0.845307,
		-0.875160, 0.008893, -0.483752,
		0.115540, -0.967063, -0.226803,
		32.698551, 27.560787, 34.908962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911621, 27.847294, 35.075016>,  <32.617676, 28.237732, 35.067726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911621, 27.847294, 35.075016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201488, 27.578602, 35.136509>,  <32.375408, 27.417387, 35.173405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201488, 27.578602, 35.136509>,  <31.911621, 27.847294, 35.075016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201488, 27.578602, 35.136509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439805, -0.279102, 0.853624,
		-0.530500, -0.686205, -0.497687,
		0.724666, -0.671733, 0.153732,
		32.418888, 27.377083, 35.182629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554661, 27.336098, 35.307507>,  <31.911621, 27.847294, 35.075016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554661, 27.336098, 35.307507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928782, 27.230377, 35.401619>,  <32.153255, 27.166945, 35.458084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928782, 27.230377, 35.401619>,  <31.554661, 27.336098, 35.307507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928782, 27.230377, 35.401619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291828, -0.200117, 0.935302,
		-0.200117, -0.943450, -0.264300,
		-0.935302, 0.264300, -0.235278,
		32.209373, 27.151087, 35.472202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385893, 26.749966, 35.686192>,  <31.554661, 27.336098, 35.307507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385893, 26.749966, 35.686192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759584, 26.857117, 35.780388>,  <31.983799, 26.921408, 35.836906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759584, 26.857117, 35.780388>,  <31.385893, 26.749966, 35.686192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759584, 26.857117, 35.780388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116892, -0.393828, 0.911721,
		0.336974, -0.879284, -0.336613,
		0.934230, 0.267879, 0.235491,
		32.039852, 26.937481, 35.851036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762478, 26.160299, 35.966572>,  <31.385893, 26.749966, 35.686192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762478, 26.160299, 35.966572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933077, 26.491726, 36.111664>,  <32.035435, 26.690582, 36.198719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933077, 26.491726, 36.111664>,  <31.762478, 26.160299, 35.966572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933077, 26.491726, 36.111664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011778, -0.395912, 0.918213,
		0.904412, -0.395889, -0.159097,
		0.426498, 0.828569, 0.362730,
		32.061028, 26.740297, 36.220482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364777, 25.928164, 36.322861>,  <31.762478, 26.160299, 35.966572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364777, 25.928164, 36.322861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245743, 26.276814, 36.478664>,  <32.174324, 26.486004, 36.572147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245743, 26.276814, 36.478664>,  <32.364777, 25.928164, 36.322861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245743, 26.276814, 36.478664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082517, -0.382980, 0.920064,
		0.951123, 0.305937, 0.042045,
		-0.297584, 0.871624, 0.389506,
		32.156467, 26.538301, 36.595516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762474, 26.045309, 36.918896>,  <32.364777, 25.928164, 36.322861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762474, 26.045309, 36.918896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421204, 26.249458, 36.961994>,  <32.216442, 26.371948, 36.987854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421204, 26.249458, 36.961994>,  <32.762474, 26.045309, 36.918896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421204, 26.249458, 36.961994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009322, -0.221453, 0.975127,
		0.521542, 0.830949, 0.193696,
		-0.853175, 0.510375, 0.107750,
		32.165253, 26.402571, 36.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764065, 26.707125, 37.424248>,  <32.762474, 26.045309, 36.918896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764065, 26.707125, 37.424248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422932, 26.498867, 37.408207>,  <32.218254, 26.373913, 37.398582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422932, 26.498867, 37.408207>,  <32.764065, 26.707125, 37.424248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422932, 26.498867, 37.408207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091937, -0.225310, 0.969940,
		-0.514031, 0.823507, 0.240018,
		-0.852830, -0.520646, -0.040105,
		32.167084, 26.342672, 37.396175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390656, 27.092319, 37.891453>,  <32.764065, 26.707125, 37.424248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390656, 27.092319, 37.891453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261536, 26.713943, 37.878811>,  <32.184063, 26.486917, 37.871227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261536, 26.713943, 37.878811>,  <32.390656, 27.092319, 37.891453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261536, 26.713943, 37.878811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083072, -0.004944, 0.996531,
		-0.942813, 0.324310, -0.076985,
		-0.322804, -0.945938, -0.031603,
		32.164696, 26.430162, 37.869331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037823, 27.090460, 38.210129>,  <32.390656, 27.092319, 37.891453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037823, 27.090460, 38.210129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407333, 27.175682, 38.082855>,  <33.629040, 27.226816, 38.006493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407333, 27.175682, 38.082855>,  <33.037823, 27.090460, 38.210129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407333, 27.175682, 38.082855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300439, 0.918452, -0.257259,
		0.237426, 0.333245, 0.912456,
		0.923778, 0.213058, -0.318185,
		33.684467, 27.239599, 37.987400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302189, 27.675081, 38.583656>,  <33.037823, 27.090460, 38.210129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302189, 27.675081, 38.583656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448093, 27.665451, 38.211338>,  <33.535637, 27.659674, 37.987949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448093, 27.665451, 38.211338>,  <33.302189, 27.675081, 38.583656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448093, 27.665451, 38.211338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333160, 0.930107, -0.154616,
		0.869458, 0.366500, 0.331242,
		0.364757, -0.024076, -0.930791,
		33.557522, 27.658228, 37.932102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557308, 27.662600, 38.416412>,  <33.302189, 27.675081, 38.583656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557308, 27.662600, 38.416412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526756, 27.988453, 38.646381>,  <32.508427, 28.183966, 38.784363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526756, 27.988453, 38.646381>,  <32.557308, 27.662600, 38.416412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526756, 27.988453, 38.646381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681149, 0.463719, -0.566569,
		-0.728150, 0.348335, -0.590305,
		-0.076380, 0.814633, 0.574925,
		32.503841, 28.232843, 38.818859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324867, 28.215197, 37.960632>,  <32.557308, 27.662600, 38.416412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324867, 28.215197, 37.960632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578140, 28.296314, 38.259418>,  <32.730103, 28.344984, 38.438690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578140, 28.296314, 38.259418>,  <32.324867, 28.215197, 37.960632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578140, 28.296314, 38.259418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590453, 0.497424, -0.635558,
		-0.500444, 0.843472, 0.195221,
		0.633183, 0.202792, 0.746963,
		32.768097, 28.357151, 38.483509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533306, 28.856634, 38.034279>,  <32.324867, 28.215197, 37.960632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533306, 28.856634, 38.034279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838146, 28.665539, 38.209084>,  <33.021049, 28.550882, 38.313965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838146, 28.665539, 38.209084>,  <32.533306, 28.856634, 38.034279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838146, 28.665539, 38.209084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646691, 0.594629, -0.477711,
		-0.031636, 0.646670, 0.762113,
		0.762096, -0.477739, 0.437007,
		33.066776, 28.522217, 38.340187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967991, 29.355316, 38.479977>,  <32.533306, 28.856634, 38.034279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967991, 29.355316, 38.479977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145931, 29.046120, 38.299053>,  <33.252697, 28.860601, 38.190498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145931, 29.046120, 38.299053>,  <32.967991, 29.355316, 38.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145931, 29.046120, 38.299053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549299, 0.634381, -0.543904,
		0.707373, -0.006497, 0.706811,
		0.444853, -0.772994, -0.452313,
		33.279388, 28.814222, 38.163361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740986, 29.435575, 38.523369>,  <32.967991, 29.355316, 38.479977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740986, 29.435575, 38.523369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634964, 29.210411, 38.210224>,  <33.571350, 29.075314, 38.022335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634964, 29.210411, 38.210224>,  <33.740986, 29.435575, 38.523369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634964, 29.210411, 38.210224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571768, 0.562004, -0.597689,
		0.776418, -0.606039, 0.172890,
		-0.265058, -0.562910, -0.782865,
		33.555447, 29.041538, 37.975365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422665, 29.342480, 38.097702>,  <33.740986, 29.435575, 38.523369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422665, 29.342480, 38.097702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102821, 29.281265, 37.865425>,  <33.910915, 29.244537, 37.726059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102821, 29.281265, 37.865425>,  <34.422665, 29.342480, 38.097702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102821, 29.281265, 37.865425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416404, 0.555466, -0.719767,
		0.432704, -0.817336, -0.380432,
		-0.799609, -0.153033, -0.580695,
		33.862938, 29.235355, 37.691216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694141, 29.358030, 37.393078>,  <34.422665, 29.342480, 38.097702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694141, 29.358030, 37.393078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303013, 29.404522, 37.323395>,  <34.068336, 29.432417, 37.281586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303013, 29.404522, 37.323395>,  <34.694141, 29.358030, 37.393078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303013, 29.404522, 37.323395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207199, 0.416043, -0.885424,
		-0.030434, -0.901886, -0.430901,
		-0.977825, 0.116230, -0.174208,
		34.009666, 29.439390, 37.271133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625298, 29.095097, 36.724789>,  <34.694141, 29.358030, 37.393078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625298, 29.095097, 36.724789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333221, 29.355148, 36.808846>,  <34.157978, 29.511179, 36.859280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333221, 29.355148, 36.808846>,  <34.625298, 29.095097, 36.724789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333221, 29.355148, 36.808846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105450, 0.411113, -0.905465,
		-0.675062, -0.638998, -0.368745,
		-0.730186, 0.650129, 0.210144,
		34.114166, 29.550186, 36.871887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334702, 29.306103, 36.071732>,  <34.625298, 29.095097, 36.724789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334702, 29.306103, 36.071732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169174, 29.584526, 36.306423>,  <34.069859, 29.751581, 36.447239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169174, 29.584526, 36.306423>,  <34.334702, 29.306103, 36.071732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169174, 29.584526, 36.306423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054828, 0.624280, -0.779274,
		-0.908707, -0.354646, -0.220174,
		-0.413817, 0.696061, 0.586732,
		34.045029, 29.793344, 36.482445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777576, 29.455481, 35.723995>,  <34.334702, 29.306103, 36.071732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777576, 29.455481, 35.723995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833874, 29.767033, 35.968468>,  <33.867653, 29.953964, 36.115150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833874, 29.767033, 35.968468>,  <33.777576, 29.455481, 35.723995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833874, 29.767033, 35.968468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066823, 0.623389, -0.779051,
		-0.987789, 0.068802, 0.139782,
		0.140739, 0.778879, 0.611179,
		33.876095, 30.000696, 36.151821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242897, 29.850262, 35.565269>,  <33.777576, 29.455481, 35.723995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242897, 29.850262, 35.565269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521652, 30.088741, 35.724716>,  <33.688904, 30.231829, 35.820385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521652, 30.088741, 35.724716>,  <33.242897, 29.850262, 35.565269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521652, 30.088741, 35.724716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189452, 0.689102, -0.699461,
		-0.691706, 0.411927, 0.593178,
		0.696887, 0.596200, 0.398616,
		33.730717, 30.267601, 35.844299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940342, 30.554090, 35.709568>,  <33.242897, 29.850262, 35.565269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940342, 30.554090, 35.709568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329529, 30.646194, 35.716652>,  <33.563042, 30.701456, 35.720901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329529, 30.646194, 35.716652>,  <32.940342, 30.554090, 35.709568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329529, 30.646194, 35.716652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187514, 0.832444, -0.521417,
		-0.134803, 0.504001, 0.853118,
		0.972968, 0.230260, 0.017709,
		33.621418, 30.715273, 35.721966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918621, 31.322063, 35.780148>,  <32.940342, 30.554090, 35.709568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918621, 31.322063, 35.780148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289215, 31.228127, 35.662518>,  <33.511570, 31.171764, 35.591938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289215, 31.228127, 35.662518>,  <32.918621, 31.322063, 35.780148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289215, 31.228127, 35.662518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055594, 0.687438, -0.724112,
		0.372212, 0.687225, 0.623843,
		0.926481, -0.234842, -0.294078,
		33.567158, 31.157675, 35.574295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334106, 31.845695, 35.873817>,  <32.918621, 31.322063, 35.780148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334106, 31.845695, 35.873817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486015, 31.641636, 35.565136>,  <33.577160, 31.519201, 35.379929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486015, 31.641636, 35.565136>,  <33.334106, 31.845695, 35.873817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486015, 31.641636, 35.565136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115804, 0.801420, -0.586783,
		0.917803, 0.312210, 0.245280,
		0.379772, -0.510147, -0.771701,
		33.599945, 31.488592, 35.333626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610428, 32.315685, 35.485104>,  <33.334106, 31.845695, 35.873817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610428, 32.315685, 35.485104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617775, 32.030602, 35.204617>,  <33.622181, 31.859552, 35.036324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617775, 32.030602, 35.204617>,  <33.610428, 32.315685, 35.485104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617775, 32.030602, 35.204617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270366, 0.671672, -0.689753,
		0.962583, 0.202255, -0.180355,
		0.018367, -0.712707, -0.701222,
		33.623283, 31.816790, 34.994251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988220, 32.559948, 34.852074>,  <33.610428, 32.315685, 35.485104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988220, 32.559948, 34.852074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797142, 32.238644, 34.709763>,  <33.682495, 32.045860, 34.624378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797142, 32.238644, 34.709763>,  <33.988220, 32.559948, 34.852074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797142, 32.238644, 34.709763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065755, 0.436525, -0.897286,
		0.876061, -0.405236, -0.261344,
		-0.477696, -0.803262, -0.355776,
		33.653831, 31.997665, 34.603031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379433, 32.404560, 34.290359>,  <33.988220, 32.559948, 34.852074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379433, 32.404560, 34.290359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009632, 32.262154, 34.235878>,  <33.787754, 32.176708, 34.203190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009632, 32.262154, 34.235878>,  <34.379433, 32.404560, 34.290359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009632, 32.262154, 34.235878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064803, 0.205320, -0.976547,
		0.375636, -0.911643, -0.166747,
		-0.924499, -0.356021, -0.136203,
		33.732281, 32.155346, 34.195019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321552, 32.093922, 33.660690>,  <34.379433, 32.404560, 34.290359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321552, 32.093922, 33.660690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927185, 32.133308, 33.714752>,  <33.690563, 32.156940, 33.747189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927185, 32.133308, 33.714752>,  <34.321552, 32.093922, 33.660690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927185, 32.133308, 33.714752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110010, 0.226803, -0.967708,
		-0.125940, -0.968950, -0.212777,
		-0.985920, 0.098466, 0.135158,
		33.631409, 32.162849, 33.755299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049957, 31.643021, 33.209045>,  <34.321552, 32.093922, 33.660690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049957, 31.643021, 33.209045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801525, 31.939411, 33.311192>,  <33.652466, 32.117245, 33.372478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801525, 31.939411, 33.311192>,  <34.049957, 31.643021, 33.209045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801525, 31.939411, 33.311192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056646, 0.282532, -0.957584,
		-0.781696, -0.609204, -0.133503,
		-0.621082, 0.740977, 0.255363,
		33.615200, 32.161705, 33.387802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563667, 31.556290, 32.793457>,  <34.049957, 31.643021, 33.209045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563667, 31.556290, 32.793457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548061, 31.937252, 32.914387>,  <33.538696, 32.165829, 32.986942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548061, 31.937252, 32.914387>,  <33.563667, 31.556290, 32.793457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548061, 31.937252, 32.914387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020294, 0.301734, -0.953176,
		-0.999032, -0.043325, 0.007555,
		-0.039016, 0.952407, 0.302321,
		33.536358, 32.222973, 33.005081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145596, 31.783119, 32.235508>,  <33.563667, 31.556290, 32.793457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145596, 31.783119, 32.235508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288654, 32.104919, 32.425190>,  <33.374489, 32.298000, 32.538998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288654, 32.104919, 32.425190>,  <33.145596, 31.783119, 32.235508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288654, 32.104919, 32.425190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273773, 0.395157, -0.876869,
		-0.892826, 0.443434, -0.078923,
		0.357647, 0.804498, 0.474206,
		33.395950, 32.346268, 32.567451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960667, 32.331612, 31.795303>,  <33.145596, 31.783119, 32.235508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960667, 32.331612, 31.795303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254154, 32.475655, 32.025776>,  <33.430244, 32.562080, 32.164059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254154, 32.475655, 32.025776>,  <32.960667, 32.331612, 31.795303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254154, 32.475655, 32.025776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412519, 0.437729, -0.798887,
		-0.539898, 0.823841, 0.172616,
		0.733715, 0.360110, 0.576179,
		33.474270, 32.583687, 32.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937389, 33.065247, 31.698610>,  <32.960667, 32.331612, 31.795303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937389, 33.065247, 31.698610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310036, 32.981125, 31.817181>,  <33.533623, 32.930653, 31.888323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310036, 32.981125, 31.817181>,  <32.937389, 33.065247, 31.698610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310036, 32.981125, 31.817181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361646, 0.455189, -0.813643,
		0.036184, 0.865202, 0.500116,
		0.931613, -0.210305, 0.296426,
		33.589520, 32.918034, 31.906109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361103, 33.614220, 31.436722>,  <32.937389, 33.065247, 31.698610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361103, 33.614220, 31.436722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643200, 33.341312, 31.513809>,  <33.812458, 33.177567, 31.560062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643200, 33.341312, 31.513809>,  <33.361103, 33.614220, 31.436722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643200, 33.341312, 31.513809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490980, 0.273915, -0.826988,
		0.511442, 0.677847, 0.528158,
		0.705242, -0.682271, 0.192718,
		33.854771, 33.136631, 31.571625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931946, 33.971386, 31.453596>,  <33.361103, 33.614220, 31.436722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931946, 33.971386, 31.453596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053612, 33.607433, 31.340736>,  <34.126610, 33.389061, 31.273022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053612, 33.607433, 31.340736>,  <33.931946, 33.971386, 31.453596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053612, 33.607433, 31.340736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568437, 0.411024, -0.712698,
		0.764438, 0.056391, 0.642226,
		0.304160, -0.909879, -0.282148,
		34.144859, 33.334469, 31.256092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615734, 34.104923, 31.222378>,  <33.931946, 33.971386, 31.453596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615734, 34.104923, 31.222378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535324, 33.742241, 31.074066>,  <34.487076, 33.524632, 30.985079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535324, 33.742241, 31.074066>,  <34.615734, 34.104923, 31.222378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535324, 33.742241, 31.074066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694747, 0.134872, -0.706496,
		0.690590, -0.399622, 0.602817,
		-0.201028, -0.906704, -0.370777,
		34.475018, 33.470230, 30.962833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249378, 33.776104, 31.141342>,  <34.615734, 34.104923, 31.222378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249378, 33.776104, 31.141342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995380, 33.604397, 30.884434>,  <34.842983, 33.501373, 30.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995380, 33.604397, 30.884434>,  <35.249378, 33.776104, 31.141342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995380, 33.604397, 30.884434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597205, 0.254602, -0.760608,
		0.490029, -0.866548, 0.094691,
		-0.634994, -0.429270, -0.642269,
		34.804882, 33.475616, 30.691753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642403, 33.445705, 30.631445>,  <35.249378, 33.776104, 31.141342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642403, 33.445705, 30.631445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286194, 33.436657, 30.449696>,  <35.072468, 33.431229, 30.340647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286194, 33.436657, 30.449696>,  <35.642403, 33.445705, 30.631445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286194, 33.436657, 30.449696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432091, 0.270459, -0.860319,
		0.142356, -0.962466, -0.231074,
		-0.890523, -0.022626, -0.454374,
		35.019035, 33.429871, 30.313383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693123, 33.018627, 29.960072>,  <35.642403, 33.445705, 30.631445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693123, 33.018627, 29.960072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358128, 33.228916, 29.900421>,  <35.157131, 33.355091, 29.864632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358128, 33.228916, 29.900421>,  <35.693123, 33.018627, 29.960072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358128, 33.228916, 29.900421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346951, 0.300705, -0.888370,
		-0.422192, -0.795735, -0.434235,
		-0.837483, 0.525721, -0.149126,
		35.106884, 33.386631, 29.855682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405823, 32.860626, 29.194525>,  <35.693123, 33.018627, 29.960072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405823, 32.860626, 29.194525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249546, 33.207020, 29.319386>,  <35.155781, 33.414856, 29.394302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249546, 33.207020, 29.319386>,  <35.405823, 32.860626, 29.194525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249546, 33.207020, 29.319386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310395, 0.443176, -0.840982,
		-0.866611, -0.231675, -0.441941,
		-0.390692, 0.865980, 0.312151,
		35.132339, 33.466812, 29.413031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880508, 32.950680, 28.679285>,  <35.405823, 32.860626, 29.194525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880508, 32.950680, 28.679285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974495, 33.308319, 28.831795>,  <35.030888, 33.522903, 28.923302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974495, 33.308319, 28.831795>,  <34.880508, 32.950680, 28.679285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974495, 33.308319, 28.831795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134611, 0.358545, -0.923756,
		-0.962637, 0.268376, -0.036109,
		0.234967, 0.894103, 0.381275,
		35.044987, 33.576550, 28.946177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475250, 33.389561, 28.285614>,  <34.880508, 32.950680, 28.679285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475250, 33.389561, 28.285614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741737, 33.642555, 28.443657>,  <34.901630, 33.794353, 28.538483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741737, 33.642555, 28.443657>,  <34.475250, 33.389561, 28.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741737, 33.642555, 28.443657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039758, 0.498933, -0.865728,
		-0.744698, 0.592471, 0.307251,
		0.666216, 0.632490, 0.395110,
		34.941601, 33.832302, 28.562189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182758, 34.029690, 28.163626>,  <34.475250, 33.389561, 28.285614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182758, 34.029690, 28.163626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565182, 34.122780, 28.234940>,  <34.794636, 34.178635, 28.277727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565182, 34.122780, 28.234940>,  <34.182758, 34.029690, 28.163626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565182, 34.122780, 28.234940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058669, 0.747725, -0.661412,
		-0.287233, 0.621891, 0.728525,
		0.956062, 0.232721, 0.178285,
		34.852001, 34.192596, 28.288425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267876, 34.777271, 28.065798>,  <34.182758, 34.029690, 28.163626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267876, 34.777271, 28.065798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635994, 34.633026, 28.005116>,  <34.856865, 34.546478, 27.968706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635994, 34.633026, 28.005116>,  <34.267876, 34.777271, 28.065798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635994, 34.633026, 28.005116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110706, 0.611971, -0.783094,
		0.375232, 0.703884, 0.603116,
		0.920296, -0.360610, -0.151707,
		34.912083, 34.524841, 27.959604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677994, 35.369610, 28.025089>,  <34.267876, 34.777271, 28.065798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677994, 35.369610, 28.025089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876389, 35.070446, 27.848621>,  <34.995426, 34.890949, 27.742741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876389, 35.070446, 27.848621>,  <34.677994, 35.369610, 28.025089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876389, 35.070446, 27.848621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311656, 0.627542, -0.713485,
		0.810474, 0.216386, 0.544342,
		0.495986, -0.747909, -0.441169,
		35.025185, 34.846073, 27.716270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293781, 35.664318, 27.889219>,  <34.677994, 35.369610, 28.025089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293781, 35.664318, 27.889219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310658, 35.336262, 27.660976>,  <35.320782, 35.139427, 27.524031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310658, 35.336262, 27.660976>,  <35.293781, 35.664318, 27.889219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310658, 35.336262, 27.660976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431010, 0.530180, -0.730164,
		0.901361, -0.215133, 0.375855,
		0.042188, -0.820138, -0.570608,
		35.323315, 35.090221, 27.489794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921391, 35.715641, 27.504677>,  <35.293781, 35.664318, 27.889219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921391, 35.715641, 27.504677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690430, 35.459278, 27.302353>,  <35.551853, 35.305462, 27.180958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690430, 35.459278, 27.302353>,  <35.921391, 35.715641, 27.504677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690430, 35.459278, 27.302353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375052, 0.342078, -0.861579,
		0.725217, -0.687185, 0.042855,
		-0.577404, -0.640905, -0.505811,
		35.517208, 35.267006, 27.150610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425434, 35.393772, 27.060293>,  <35.921391, 35.715641, 27.504677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425434, 35.393772, 27.060293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052345, 35.348423, 26.923374>,  <35.828491, 35.321213, 26.841223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052345, 35.348423, 26.923374>,  <36.425434, 35.393772, 27.060293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052345, 35.348423, 26.923374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282535, 0.360046, -0.889124,
		0.224041, -0.926021, -0.303794,
		-0.932727, -0.113368, -0.342299,
		35.772526, 35.314411, 26.820684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402351, 35.072327, 26.353436>,  <36.425434, 35.393772, 27.060293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402351, 35.072327, 26.353436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044003, 35.248383, 26.377743>,  <35.828995, 35.354015, 26.392326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044003, 35.248383, 26.377743>,  <36.402351, 35.072327, 26.353436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044003, 35.248383, 26.377743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116805, 0.365256, -0.923550,
		-0.428685, -0.820284, -0.378633,
		-0.895872, 0.440138, 0.060766,
		35.775242, 35.380424, 26.395973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101234, 34.863605, 25.821224>,  <36.402351, 35.072327, 26.353436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101234, 34.863605, 25.821224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884895, 35.188442, 25.908859>,  <35.755093, 35.383343, 25.961439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884895, 35.188442, 25.908859>,  <36.101234, 34.863605, 25.821224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884895, 35.188442, 25.908859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207609, 0.381295, -0.900840,
		-0.815098, -0.441730, -0.374818,
		-0.540845, 0.812089, 0.219086,
		35.722641, 35.432068, 25.974585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725822, 35.039165, 25.235830>,  <36.101234, 34.863605, 25.821224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725822, 35.039165, 25.235830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712780, 35.380867, 25.443367>,  <35.704952, 35.585888, 25.567888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712780, 35.380867, 25.443367>,  <35.725822, 35.039165, 25.235830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712780, 35.380867, 25.443367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015289, 0.518629, -0.854863,
		-0.999351, -0.035809, -0.003852,
		-0.032610, 0.854249, 0.518840,
		35.702995, 35.637142, 25.599018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233688, 35.487610, 24.833822>,  <35.725822, 35.039165, 25.235830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233688, 35.487610, 24.833822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421059, 35.763504, 25.054672>,  <35.533482, 35.929039, 25.187183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421059, 35.763504, 25.054672>,  <35.233688, 35.487610, 24.833822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421059, 35.763504, 25.054672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178974, 0.537893, -0.823795,
		-0.865185, 0.484704, 0.128519,
		0.468427, 0.689734, 0.552126,
		35.561588, 35.970425, 25.220310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008034, 36.196869, 24.636919>,  <35.233688, 35.487610, 24.833822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008034, 36.196869, 24.636919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368870, 36.228912, 24.806541>,  <35.585369, 36.248138, 24.908314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368870, 36.228912, 24.806541>,  <35.008034, 36.196869, 24.636919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368870, 36.228912, 24.806541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246552, 0.710801, -0.658767,
		-0.354192, 0.698817, 0.621453,
		0.902086, 0.080110, 0.424055,
		35.639496, 36.252945, 24.933758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118420, 36.948032, 24.535667>,  <35.008034, 36.196869, 24.636919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118420, 36.948032, 24.535667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456249, 36.750999, 24.619625>,  <35.658947, 36.632778, 24.670000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456249, 36.750999, 24.619625>,  <35.118420, 36.948032, 24.535667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456249, 36.750999, 24.619625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482547, 0.530340, -0.697057,
		0.232045, 0.689999, 0.685606,
		0.844573, -0.492586, 0.209894,
		35.709621, 36.603222, 24.682592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706326, 36.896942, 25.089785>,  <35.118420, 36.948032, 24.535667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706326, 36.896942, 25.089785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421192, 37.174347, 25.048008>,  <34.250111, 37.340790, 25.022942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421192, 37.174347, 25.048008>,  <34.706326, 36.896942, 25.089785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421192, 37.174347, 25.048008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216202, -0.075634, 0.973415,
		0.667177, 0.716462, 0.203854,
		-0.712833, 0.693514, -0.104439,
		34.207344, 37.382401, 25.016676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719215, 37.406830, 25.661715>,  <34.706326, 36.896942, 25.089785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719215, 37.406830, 25.661715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341183, 37.416004, 25.531307>,  <34.114361, 37.421509, 25.453062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341183, 37.416004, 25.531307>,  <34.719215, 37.406830, 25.661715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341183, 37.416004, 25.531307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324770, -0.177570, 0.928974,
		-0.036582, 0.983840, 0.175269,
		-0.945085, 0.022939, -0.326018,
		34.057655, 37.422886, 25.433502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386589, 37.707047, 26.125942>,  <34.719215, 37.406830, 25.661715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386589, 37.707047, 26.125942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060074, 37.596279, 25.923164>,  <33.864166, 37.529819, 25.801498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060074, 37.596279, 25.923164>,  <34.386589, 37.707047, 26.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060074, 37.596279, 25.923164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549961, 0.104130, 0.828674,
		-0.176687, 0.955235, -0.237294,
		-0.816287, -0.276918, -0.506943,
		33.815189, 37.513203, 25.771082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823898, 38.139023, 26.305811>,  <34.386589, 37.707047, 26.125942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823898, 38.139023, 26.305811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668049, 37.804382, 26.151779>,  <33.574539, 37.603596, 26.059361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668049, 37.804382, 26.151779>,  <33.823898, 38.139023, 26.305811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668049, 37.804382, 26.151779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606153, -0.081849, 0.791125,
		-0.693378, 0.541658, -0.475220,
		-0.389622, -0.836605, -0.385080,
		33.551163, 37.553402, 26.036255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032028, 38.261383, 26.413799>,  <33.823898, 38.139023, 26.305811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032028, 38.261383, 26.413799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121948, 37.875755, 26.357189>,  <33.175900, 37.644379, 26.323223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121948, 37.875755, 26.357189>,  <33.032028, 38.261383, 26.413799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121948, 37.875755, 26.357189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740508, -0.263428, 0.618267,
		-0.633336, -0.034185, -0.773122,
		0.224797, -0.964073, -0.141524,
		33.189388, 37.586533, 26.314732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372208, 37.863430, 26.470308>,  <33.032028, 38.261383, 26.413799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372208, 37.863430, 26.470308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658043, 37.587833, 26.518723>,  <32.829544, 37.422474, 26.547771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658043, 37.587833, 26.518723>,  <32.372208, 37.863430, 26.470308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658043, 37.587833, 26.518723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495507, -0.376397, 0.782814,
		-0.493799, -0.619362, -0.610371,
		0.714588, -0.688996, 0.121034,
		32.872417, 37.381134, 26.555033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987823, 37.321266, 26.838032>,  <32.372208, 37.863430, 26.470308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987823, 37.321266, 26.838032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377987, 37.240597, 26.873592>,  <32.612083, 37.192196, 26.894928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377987, 37.240597, 26.873592>,  <31.987823, 37.321266, 26.838032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377987, 37.240597, 26.873592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200826, -0.647090, 0.735489,
		-0.090801, -0.735257, -0.671679,
		0.975410, -0.201674, 0.088902,
		32.670609, 37.180096, 26.900263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009823, 36.541100, 26.948252>,  <31.987823, 37.321266, 26.838032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009823, 36.541100, 26.948252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346455, 36.692291, 27.102589>,  <32.548435, 36.783005, 27.195190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346455, 36.692291, 27.102589>,  <32.009823, 36.541100, 26.948252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346455, 36.692291, 27.102589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009821, -0.724941, 0.688741,
		0.540043, -0.575841, -0.613808,
		0.841580, 0.377977, 0.385844,
		32.598930, 36.805683, 27.218342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410313, 36.029396, 27.069237>,  <32.009823, 36.541100, 26.948252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410313, 36.029396, 27.069237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553833, 36.304363, 27.321812>,  <32.639946, 36.469345, 27.473356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553833, 36.304363, 27.321812>,  <32.410313, 36.029396, 27.069237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553833, 36.304363, 27.321812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018798, -0.671026, 0.741195,
		0.933223, -0.277815, -0.227845,
		0.358805, 0.687418, 0.631439,
		32.661476, 36.510590, 27.511244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716553, 35.651840, 27.579004>,  <32.410313, 36.029396, 27.069237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716553, 35.651840, 27.579004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673973, 36.004616, 27.762680>,  <32.648426, 36.216282, 27.872887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673973, 36.004616, 27.762680>,  <32.716553, 35.651840, 27.579004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673973, 36.004616, 27.762680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112514, -0.469532, 0.875717,
		0.987932, 0.041551, 0.149210,
		-0.106446, 0.881937, 0.459190,
		32.642040, 36.269196, 27.900436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156509, 35.603676, 28.196686>,  <32.716553, 35.651840, 27.579004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156509, 35.603676, 28.196686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882847, 35.892460, 28.238064>,  <32.718651, 36.065731, 28.262890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882847, 35.892460, 28.238064>,  <33.156509, 35.603676, 28.196686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882847, 35.892460, 28.238064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111452, -0.243660, 0.963436,
		0.720768, 0.647613, 0.247166,
		-0.684158, 0.721961, 0.103445,
		32.677601, 36.109047, 28.269096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324921, 36.038109, 28.755083>,  <33.156509, 35.603676, 28.196686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324921, 36.038109, 28.755083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942055, 36.146370, 28.713955>,  <32.712334, 36.211327, 28.689278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942055, 36.146370, 28.713955>,  <33.324921, 36.038109, 28.755083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942055, 36.146370, 28.713955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155250, -0.180035, 0.971331,
		0.244385, 0.945692, 0.214344,
		-0.957169, 0.270656, -0.102821,
		32.654903, 36.227566, 28.683109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201122, 36.358295, 29.320387>,  <33.324921, 36.038109, 28.755083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201122, 36.358295, 29.320387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823128, 36.297478, 29.204533>,  <32.596333, 36.260986, 29.135021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823128, 36.297478, 29.204533>,  <33.201122, 36.358295, 29.320387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823128, 36.297478, 29.204533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229417, -0.323110, 0.918133,
		-0.233184, 0.934067, 0.270451,
		-0.944983, -0.152047, -0.289635,
		32.539631, 36.251862, 29.117641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706787, 36.704983, 29.813522>,  <33.201122, 36.358295, 29.320387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706787, 36.704983, 29.813522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520557, 36.391472, 29.649117>,  <32.408817, 36.203365, 29.550472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520557, 36.391472, 29.649117>,  <32.706787, 36.704983, 29.813522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520557, 36.391472, 29.649117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257699, -0.324236, 0.910199,
		-0.846658, 0.529686, -0.051021,
		-0.465577, -0.783775, -0.411016,
		32.380886, 36.156338, 29.525812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135941, 36.641773, 30.305504>,  <32.706787, 36.704983, 29.813522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135941, 36.641773, 30.305504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148655, 36.301666, 30.095345>,  <32.156284, 36.097603, 29.969250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148655, 36.301666, 30.095345>,  <32.135941, 36.641773, 30.305504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148655, 36.301666, 30.095345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311320, -0.507935, 0.803170,
		-0.949773, 0.138037, -0.280849,
		0.031786, -0.850264, -0.525397,
		32.158192, 36.046589, 29.937725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464533, 36.245243, 30.483175>,  <32.135941, 36.641773, 30.305504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464533, 36.245243, 30.483175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742674, 35.985214, 30.360611>,  <31.909559, 35.829197, 30.287073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742674, 35.985214, 30.360611>,  <31.464533, 36.245243, 30.483175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742674, 35.985214, 30.360611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324517, -0.664438, 0.673210,
		-0.641221, -0.368689, -0.672982,
		0.695359, -0.650070, -0.306406,
		31.951281, 35.790192, 30.268688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084684, 35.608902, 30.335867>,  <31.464533, 36.245243, 30.483175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084684, 35.608902, 30.335867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472448, 35.548595, 30.413338>,  <31.705107, 35.512409, 30.459820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472448, 35.548595, 30.413338>,  <31.084684, 35.608902, 30.335867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472448, 35.548595, 30.413338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245380, -0.613352, 0.750725,
		0.005609, -0.775286, -0.631585,
		0.969411, -0.150768, 0.193679,
		31.763271, 35.503365, 30.471441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158335, 34.856346, 30.448271>,  <31.084684, 35.608902, 30.335867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158335, 34.856346, 30.448271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469095, 35.027081, 30.633411>,  <31.655552, 35.129520, 30.744495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469095, 35.027081, 30.633411>,  <31.158335, 34.856346, 30.448271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469095, 35.027081, 30.633411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137288, -0.602597, 0.786148,
		0.614471, -0.674304, -0.409559,
		0.776902, 0.426838, 0.462853,
		31.702166, 35.155132, 30.772266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272179, 34.358425, 30.797606>,  <31.158335, 34.856346, 30.448271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272179, 34.358425, 30.797606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509230, 34.623985, 30.980049>,  <31.651461, 34.783321, 31.089516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509230, 34.623985, 30.980049>,  <31.272179, 34.358425, 30.797606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509230, 34.623985, 30.980049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152156, -0.463794, 0.872779,
		0.790976, -0.586631, -0.173841,
		0.592626, 0.663897, 0.456109,
		31.687017, 34.823154, 31.116882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615721, 33.984570, 31.311533>,  <31.272179, 34.358425, 30.797606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615721, 33.984570, 31.311533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653524, 34.356735, 31.453178>,  <31.676207, 34.580036, 31.538166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653524, 34.356735, 31.453178>,  <31.615721, 33.984570, 31.311533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653524, 34.356735, 31.453178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090071, -0.362239, 0.927723,
		0.991441, -0.055783, -0.118039,
		0.094509, 0.930415, 0.354114,
		31.681877, 34.635860, 31.559412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188904, 33.906960, 31.691648>,  <31.615721, 33.984570, 31.311533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188904, 33.906960, 31.691648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003757, 34.236172, 31.823334>,  <31.892670, 34.433697, 31.902344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003757, 34.236172, 31.823334>,  <32.188904, 33.906960, 31.691648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003757, 34.236172, 31.823334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085438, -0.411084, 0.907585,
		0.882300, 0.391965, 0.260596,
		-0.462868, 0.823027, 0.329211,
		31.864897, 34.483078, 31.922096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525520, 34.034157, 32.297009>,  <32.188904, 33.906960, 31.691648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525520, 34.034157, 32.297009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158405, 34.191132, 32.321182>,  <31.938135, 34.285316, 32.335686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158405, 34.191132, 32.321182>,  <32.525520, 34.034157, 32.297009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158405, 34.191132, 32.321182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072014, -0.314201, 0.946621,
		0.390477, 0.864449, 0.316632,
		-0.917792, 0.392435, 0.060436,
		31.883068, 34.308861, 32.339314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528587, 34.376747, 32.909031>,  <32.525520, 34.034157, 32.297009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528587, 34.376747, 32.909031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149075, 34.297077, 32.810928>,  <31.921368, 34.249275, 32.752068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149075, 34.297077, 32.810928>,  <32.528587, 34.376747, 32.909031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149075, 34.297077, 32.810928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137015, -0.440084, 0.887441,
		-0.284689, 0.875588, 0.390252,
		-0.948777, -0.199175, -0.245256,
		31.864441, 34.237324, 32.737350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100697, 34.616173, 33.481453>,  <32.528587, 34.376747, 32.909031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100697, 34.616173, 33.481453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852179, 34.359261, 33.301914>,  <31.703070, 34.205112, 33.194191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852179, 34.359261, 33.301914>,  <32.100697, 34.616173, 33.481453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852179, 34.359261, 33.301914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080281, -0.517631, 0.851829,
		-0.779457, 0.565267, 0.270037,
		-0.621291, -0.642285, -0.448851,
		31.665791, 34.166576, 33.167259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508728, 34.637543, 33.921982>,  <32.100697, 34.616173, 33.481453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508728, 34.637543, 33.921982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508677, 34.289982, 33.723988>,  <31.508646, 34.081444, 33.605190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508677, 34.289982, 33.723988>,  <31.508728, 34.637543, 33.921982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508677, 34.289982, 33.723988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286175, -0.474252, 0.832580,
		-0.958178, 0.141758, -0.248598,
		-0.000127, -0.868902, -0.494985,
		31.508638, 34.029312, 33.575493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795719, 34.389584, 34.020554>,  <31.508728, 34.637543, 33.921982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795719, 34.389584, 34.020554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034803, 34.091949, 33.901173>,  <31.178253, 33.913368, 33.829544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034803, 34.091949, 33.901173>,  <30.795719, 34.389584, 34.020554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034803, 34.091949, 33.901173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502626, -0.637815, 0.583574,
		-0.624586, -0.198801, -0.755229,
		0.597712, -0.744090, -0.298448,
		31.214117, 33.868721, 33.811638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349377, 33.854115, 33.816952>,  <30.795719, 34.389584, 34.020554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349377, 33.854115, 33.816952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710241, 33.700600, 33.895752>,  <30.926760, 33.608490, 33.943031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710241, 33.700600, 33.895752>,  <30.349377, 33.854115, 33.816952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710241, 33.700600, 33.895752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423560, -0.701367, 0.573307,
		-0.081856, -0.600659, -0.795304,
		0.902162, -0.383788, 0.197003,
		30.980890, 33.585464, 33.954853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317261, 33.179237, 33.609459>,  <30.349377, 33.854115, 33.816952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317261, 33.179237, 33.609459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617624, 33.209152, 33.871922>,  <30.797842, 33.227100, 34.029400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617624, 33.209152, 33.871922>,  <30.317261, 33.179237, 33.609459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617624, 33.209152, 33.871922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356149, -0.790849, 0.497711,
		0.556144, -0.607425, -0.567219,
		0.750907, 0.074784, 0.656160,
		30.842896, 33.231586, 34.068771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432550, 32.467758, 33.805706>,  <30.317261, 33.179237, 33.609459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432550, 32.467758, 33.805706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611229, 32.666092, 34.103596>,  <30.718437, 32.785091, 34.282330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611229, 32.666092, 34.103596>,  <30.432550, 32.467758, 33.805706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611229, 32.666092, 34.103596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312842, -0.693275, 0.649230,
		0.838207, -0.522989, -0.154566,
		0.446698, 0.495835, 0.744721,
		30.745237, 32.814842, 34.327011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865713, 32.038841, 34.157104>,  <30.432550, 32.467758, 33.805706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865713, 32.038841, 34.157104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816324, 32.328846, 34.428135>,  <30.786690, 32.502850, 34.590752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816324, 32.328846, 34.428135>,  <30.865713, 32.038841, 34.157104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816324, 32.328846, 34.428135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312415, -0.676482, 0.666910,
		0.941887, -0.129339, 0.310033,
		-0.123474, 0.725013, 0.677576,
		30.779282, 32.546349, 34.631409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154131, 31.682467, 34.734547>,  <30.865713, 32.038841, 34.157104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154131, 31.682467, 34.734547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958820, 31.995041, 34.889954>,  <30.841635, 32.182587, 34.983196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958820, 31.995041, 34.889954>,  <31.154131, 31.682467, 34.734547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958820, 31.995041, 34.889954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239120, -0.547951, 0.801605,
		0.839291, 0.298502, 0.454409,
		-0.488275, 0.781438, 0.388513,
		30.812338, 32.229473, 35.006508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372862, 31.824539, 35.338173>,  <31.154131, 31.682467, 34.734547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372862, 31.824539, 35.338173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001522, 31.972385, 35.322407>,  <30.778719, 32.061092, 35.312946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001522, 31.972385, 35.322407>,  <31.372862, 31.824539, 35.338173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001522, 31.972385, 35.322407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234806, -0.500917, 0.833036,
		0.288161, 0.782602, 0.551814,
		-0.928348, 0.369617, -0.039415,
		30.723019, 32.083271, 35.310581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221167, 32.013268, 36.098118>,  <31.372862, 31.824539, 35.338173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221167, 32.013268, 36.098118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854889, 31.996502, 35.938244>,  <30.635122, 31.986443, 35.842319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854889, 31.996502, 35.938244>,  <31.221167, 32.013268, 36.098118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854889, 31.996502, 35.938244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352497, -0.393869, 0.848889,
		-0.193006, 0.918210, 0.345888,
		-0.915693, -0.041916, -0.399686,
		30.580181, 31.983927, 35.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793703, 32.136913, 36.631191>,  <31.221167, 32.013268, 36.098118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793703, 32.136913, 36.631191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550297, 31.931736, 36.389004>,  <30.404253, 31.808630, 36.243690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550297, 31.931736, 36.389004>,  <30.793703, 32.136913, 36.631191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550297, 31.931736, 36.389004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349552, -0.511720, 0.784829,
		-0.712404, 0.689226, 0.132090,
		-0.608517, -0.512943, -0.605472,
		30.367741, 31.777853, 36.207363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184023, 31.938801, 36.994930>,  <30.793703, 32.136913, 36.631191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184023, 31.938801, 36.994930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151247, 31.670208, 36.700340>,  <30.131582, 31.509052, 36.523586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151247, 31.670208, 36.700340>,  <30.184023, 31.938801, 36.994930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151247, 31.670208, 36.700340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314232, -0.683866, 0.658472,
		-0.945804, 0.285378, -0.154966,
		-0.081937, -0.671481, -0.736478,
		30.126665, 31.468763, 36.479397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735033, 31.525431, 37.166485>,  <30.184023, 31.938801, 36.994930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735033, 31.525431, 37.166485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893066, 31.291111, 36.883430>,  <29.987886, 31.150518, 36.713596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893066, 31.291111, 36.883430>,  <29.735033, 31.525431, 37.166485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893066, 31.291111, 36.883430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287614, -0.810454, 0.510335,
		-0.872460, 0.001900, -0.488681,
		0.395084, -0.585799, -0.707636,
		30.011591, 31.115372, 36.671139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173645, 31.008856, 36.992638>,  <29.735033, 31.525431, 37.166485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173645, 31.008856, 36.992638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531086, 30.850750, 36.907562>,  <29.745550, 30.755886, 36.856518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531086, 30.850750, 36.907562>,  <29.173645, 31.008856, 36.992638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531086, 30.850750, 36.907562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238793, -0.819869, 0.520378,
		-0.380067, -0.414222, -0.827024,
		0.893604, -0.395266, -0.212692,
		29.799168, 30.732170, 36.843754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158245, 30.270161, 36.687000>,  <29.173645, 31.008856, 36.992638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158245, 30.270161, 36.687000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528484, 30.276379, 36.838276>,  <29.750628, 30.280109, 36.929043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528484, 30.276379, 36.838276>,  <29.158245, 30.270161, 36.687000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528484, 30.276379, 36.838276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115222, -0.940166, 0.320643,
		0.360543, -0.340362, -0.868425,
		0.925598, 0.015544, 0.378188,
		29.806164, 30.281042, 36.951733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792831, 29.664112, 36.376488>,  <29.158245, 30.270161, 36.687000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792831, 29.664112, 36.376488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500879, 29.595741, 36.111744>,  <28.325708, 29.554720, 35.952896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500879, 29.595741, 36.111744>,  <28.792831, 29.664112, 36.376488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500879, 29.595741, 36.111744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680037, -0.279960, -0.677622,
		-0.069471, -0.944673, 0.320573,
		-0.729879, -0.170926, -0.661862,
		28.281916, 29.544464, 35.913185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075758, 29.106230, 36.053055>,  <28.792831, 29.664112, 36.376488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075758, 29.106230, 36.053055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795691, 29.249409, 35.805946>,  <28.627651, 29.335316, 35.657681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795691, 29.249409, 35.805946>,  <29.075758, 29.106230, 36.053055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795691, 29.249409, 35.805946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609547, -0.150863, -0.778263,
		-0.371777, -0.921473, -0.112558,
		-0.700167, 0.357950, -0.617768,
		28.585640, 29.356794, 35.620617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228649, 28.743162, 35.343754>,  <29.075758, 29.106230, 36.053055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228649, 28.743162, 35.343754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972504, 29.043980, 35.281311>,  <28.818817, 29.224470, 35.243847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972504, 29.043980, 35.281311>,  <29.228649, 28.743162, 35.343754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972504, 29.043980, 35.281311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274250, 0.034033, -0.961056,
		-0.717442, -0.658236, -0.228041,
		-0.640363, 0.752042, -0.156104,
		28.780396, 29.269592, 35.234478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821178, 28.649830, 34.692188>,  <29.228649, 28.743162, 35.343754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821178, 28.649830, 34.692188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837856, 29.042278, 34.767723>,  <28.847862, 29.277748, 34.813046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837856, 29.042278, 34.767723>,  <28.821178, 28.649830, 34.692188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837856, 29.042278, 34.767723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129922, 0.182073, -0.974664,
		-0.990647, 0.065173, -0.119878,
		0.041695, 0.981122, 0.188838,
		28.850365, 29.336615, 34.824375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481133, 29.018639, 34.120827>,  <28.821178, 28.649830, 34.692188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481133, 29.018639, 34.120827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693077, 29.307205, 34.299179>,  <28.820244, 29.480345, 34.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693077, 29.307205, 34.299179>,  <28.481133, 29.018639, 34.120827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693077, 29.307205, 34.299179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203291, 0.402380, -0.892616,
		-0.823360, 0.563605, 0.066549,
		0.529860, 0.721415, 0.445879,
		28.852036, 29.523630, 34.432941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309471, 29.623301, 33.679195>,  <28.481133, 29.018639, 34.120827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309471, 29.623301, 33.679195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646387, 29.712299, 33.875580>,  <28.848537, 29.765699, 33.993408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646387, 29.712299, 33.875580>,  <28.309471, 29.623301, 33.679195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646387, 29.712299, 33.875580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241635, 0.658324, -0.712897,
		-0.481827, 0.719099, 0.500738,
		0.842291, 0.222497, 0.490958,
		28.899075, 29.779049, 34.022869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380375, 30.322161, 33.650185>,  <28.309471, 29.623301, 33.679195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380375, 30.322161, 33.650185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754173, 30.214577, 33.743462>,  <28.978453, 30.150026, 33.799427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754173, 30.214577, 33.743462>,  <28.380375, 30.322161, 33.650185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754173, 30.214577, 33.743462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355959, 0.712838, -0.604281,
		-0.003702, 0.647705, 0.761882,
		0.934494, -0.268962, 0.233196,
		29.034521, 30.133888, 33.813419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785709, 30.997898, 33.539654>,  <28.380375, 30.322161, 33.650185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785709, 30.997898, 33.539654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041269, 30.691181, 33.514874>,  <29.194605, 30.507151, 33.500008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041269, 30.691181, 33.514874>,  <28.785709, 30.997898, 33.539654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041269, 30.691181, 33.514874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545115, 0.508068, -0.666870,
		0.542824, 0.392295, 0.742594,
		0.638898, -0.766793, -0.061946,
		29.232939, 30.461143, 33.496288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482397, 31.295200, 33.733829>,  <28.785709, 30.997898, 33.539654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482397, 31.295200, 33.733829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505693, 30.975536, 33.494511>,  <29.519670, 30.783739, 33.350922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505693, 30.975536, 33.494511>,  <29.482397, 31.295200, 33.733829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505693, 30.975536, 33.494511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488326, 0.545522, -0.681134,
		0.870716, -0.252493, 0.422020,
		0.058240, -0.799158, -0.598293,
		29.523165, 30.735788, 33.315022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197115, 31.220064, 33.538734>,  <29.482397, 31.295200, 33.733829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197115, 31.220064, 33.538734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022993, 31.009407, 33.246666>,  <29.918520, 30.883013, 33.071423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022993, 31.009407, 33.246666>,  <30.197115, 31.220064, 33.538734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022993, 31.009407, 33.246666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576307, 0.460089, -0.675417,
		0.691649, -0.714819, 0.103228,
		-0.435307, -0.526643, -0.730175,
		29.892401, 30.851414, 33.027615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721617, 31.204542, 33.153446>,  <30.197115, 31.220064, 33.538734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721617, 31.204542, 33.153446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426971, 31.074581, 32.916183>,  <30.250185, 30.996605, 32.773827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426971, 31.074581, 32.916183>,  <30.721617, 31.204542, 33.153446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426971, 31.074581, 32.916183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437531, 0.439859, -0.784277,
		0.515723, -0.837234, -0.181849,
		-0.736611, -0.324905, -0.593162,
		30.205988, 30.977110, 32.738235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038918, 31.025667, 32.462986>,  <30.721617, 31.204542, 33.153446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038918, 31.025667, 32.462986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650749, 31.096745, 32.397617>,  <30.417849, 31.139391, 32.358398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650749, 31.096745, 32.397617>,  <31.038918, 31.025667, 32.462986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650749, 31.096745, 32.397617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234938, 0.539391, -0.808617,
		-0.055538, -0.823094, -0.565183,
		-0.970422, 0.177692, -0.163419,
		30.359623, 31.150053, 32.348591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879719, 30.874409, 31.727470>,  <31.038918, 31.025667, 32.462986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879719, 30.874409, 31.727470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566940, 31.107491, 31.816025>,  <30.379272, 31.247339, 31.869158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566940, 31.107491, 31.816025>,  <30.879719, 30.874409, 31.727470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566940, 31.107491, 31.816025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233033, 0.602678, -0.763200,
		-0.578146, -0.545192, -0.607052,
		-0.781948, 0.582705, 0.221388,
		30.332355, 31.282303, 31.882441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571098, 31.008659, 31.097288>,  <30.879719, 30.874409, 31.727470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571098, 31.008659, 31.097288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419676, 31.295403, 31.331486>,  <30.328821, 31.467449, 31.472004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419676, 31.295403, 31.331486>,  <30.571098, 31.008659, 31.097288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419676, 31.295403, 31.331486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033343, 0.621601, -0.782624,
		-0.924977, -0.315791, -0.211410,
		-0.378558, 0.716860, 0.585496,
		30.306108, 31.510460, 31.507135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914650, 31.208450, 30.838875>,  <30.571098, 31.008659, 31.097288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914650, 31.208450, 30.838875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043255, 31.522682, 31.050343>,  <30.120419, 31.711222, 31.177223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043255, 31.522682, 31.050343>,  <29.914650, 31.208450, 30.838875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043255, 31.522682, 31.050343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023060, 0.564644, -0.825013,
		-0.946625, 0.253060, 0.199655,
		0.321512, 0.785581, 0.528670,
		30.139708, 31.758356, 31.208944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580383, 31.795126, 30.545069>,  <29.914650, 31.208450, 30.838875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580383, 31.795126, 30.545069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876148, 31.957737, 30.759735>,  <30.053606, 32.055302, 30.888535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876148, 31.957737, 30.759735>,  <29.580383, 31.795126, 30.545069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876148, 31.957737, 30.759735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032463, 0.774665, -0.631538,
		-0.672472, 0.484388, 0.559598,
		0.739411, 0.406526, 0.536664,
		30.097971, 32.079693, 30.920734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386198, 32.529785, 30.670050>,  <29.580383, 31.795126, 30.545069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386198, 32.529785, 30.670050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782385, 32.491039, 30.709217>,  <30.020098, 32.467793, 30.732718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782385, 32.491039, 30.709217>,  <29.386198, 32.529785, 30.670050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782385, 32.491039, 30.709217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137269, 0.752590, -0.644023,
		-0.011309, 0.651326, 0.758714,
		0.990469, -0.096865, 0.097918,
		30.079525, 32.461979, 30.738592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553484, 33.170269, 30.673109>,  <29.386198, 32.529785, 30.670050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553484, 33.170269, 30.673109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918276, 33.015388, 30.618889>,  <30.137150, 32.922462, 30.586357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918276, 33.015388, 30.618889>,  <29.553484, 33.170269, 30.673109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918276, 33.015388, 30.618889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173452, 0.663362, -0.727919,
		0.371768, 0.640334, 0.672131,
		0.911978, -0.387199, -0.135550,
		30.191870, 32.899227, 30.578224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104090, 33.665287, 30.685471>,  <29.553484, 33.170269, 30.673109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104090, 33.665287, 30.685471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283434, 33.391109, 30.455986>,  <30.391041, 33.226604, 30.318295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283434, 33.391109, 30.455986>,  <30.104090, 33.665287, 30.685471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283434, 33.391109, 30.455986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184453, 0.698974, -0.690950,
		0.874615, 0.203971, 0.439823,
		0.448359, -0.685442, -0.573711,
		30.417942, 33.185478, 30.283873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662542, 33.990452, 30.470163>,  <30.104090, 33.665287, 30.685471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662542, 33.990452, 30.470163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635046, 33.709164, 30.187107>,  <30.618549, 33.540390, 30.017273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635046, 33.709164, 30.187107>,  <30.662542, 33.990452, 30.470163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635046, 33.709164, 30.187107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329675, 0.653459, -0.681400,
		0.941589, -0.280130, 0.186916,
		-0.068739, -0.703220, -0.707641,
		30.614424, 33.498199, 29.974815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243204, 34.103043, 30.045801>,  <30.662542, 33.990452, 30.470163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243204, 34.103043, 30.045801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986940, 33.894016, 29.820774>,  <30.833183, 33.768600, 29.685759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986940, 33.894016, 29.820774>,  <31.243204, 34.103043, 30.045801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986940, 33.894016, 29.820774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115329, 0.658870, -0.743364,
		0.759117, -0.541121, -0.361842,
		-0.640656, -0.522569, -0.562566,
		30.794743, 33.737247, 29.652004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581627, 34.020100, 29.375927>,  <31.243204, 34.103043, 30.045801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581627, 34.020100, 29.375927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193676, 33.960274, 29.299015>,  <30.960905, 33.924377, 29.252869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193676, 33.960274, 29.299015>,  <31.581627, 34.020100, 29.375927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193676, 33.960274, 29.299015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068445, 0.590211, -0.804342,
		0.233784, -0.793273, -0.562195,
		-0.969876, -0.149563, -0.192278,
		30.902714, 33.915405, 29.241331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484642, 33.960468, 28.639828>,  <31.581627, 34.020100, 29.375927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484642, 33.960468, 28.639828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106689, 34.051991, 28.733505>,  <30.879917, 34.106903, 28.789711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106689, 34.051991, 28.733505>,  <31.484642, 33.960468, 28.639828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106689, 34.051991, 28.733505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024218, 0.664476, -0.746918,
		-0.326517, -0.711420, -0.622309,
		-0.944881, 0.228810, 0.234192,
		30.823225, 34.120632, 28.803762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182777, 34.255123, 28.065252>,  <31.484642, 33.960468, 28.639828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182777, 34.255123, 28.065252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892633, 34.335491, 28.328609>,  <30.718546, 34.383713, 28.486624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892633, 34.335491, 28.328609>,  <31.182777, 34.255123, 28.065252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892633, 34.335491, 28.328609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340298, 0.726746, -0.596688,
		-0.598370, -0.656865, -0.458782,
		-0.725362, 0.200918, 0.658394,
		30.675024, 34.395767, 28.526127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534855, 34.111374, 27.711456>,  <31.182777, 34.255123, 28.065252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534855, 34.111374, 27.711456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473059, 34.377102, 28.003979>,  <30.435982, 34.536541, 28.179493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473059, 34.377102, 28.003979>,  <30.534855, 34.111374, 27.711456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473059, 34.377102, 28.003979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374200, 0.645704, -0.665613,
		-0.914389, -0.376485, 0.148835,
		-0.154490, 0.664323, 0.731306,
		30.426712, 34.576397, 28.223370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822718, 34.489979, 27.572681>,  <30.534855, 34.111374, 27.711456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822718, 34.489979, 27.572681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047829, 34.714355, 27.815540>,  <30.182896, 34.848980, 27.961256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047829, 34.714355, 27.815540>,  <29.822718, 34.489979, 27.572681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047829, 34.714355, 27.815540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386655, 0.827833, -0.406437,
		-0.730604, -0.006023, 0.682775,
		0.562776, 0.560942, 0.607147,
		30.216661, 34.882637, 27.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294004, 34.932499, 27.915188>,  <29.822718, 34.489979, 27.572681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294004, 34.932499, 27.915188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665392, 35.080452, 27.928631>,  <29.888226, 35.169224, 27.936697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665392, 35.080452, 27.928631>,  <29.294004, 34.932499, 27.915188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665392, 35.080452, 27.928631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305481, 0.811998, -0.497335,
		-0.211242, 0.451495, 0.866908,
		0.928471, 0.369882, 0.033605,
		29.943933, 35.191418, 27.938713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175114, 35.594860, 27.987700>,  <29.294004, 34.932499, 27.915188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175114, 35.594860, 27.987700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558922, 35.630348, 27.880779>,  <29.789207, 35.651642, 27.816628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558922, 35.630348, 27.880779>,  <29.175114, 35.594860, 27.987700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558922, 35.630348, 27.880779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184528, 0.915037, -0.358688,
		0.212768, 0.393493, 0.894367,
		0.959520, 0.088718, -0.267302,
		29.846777, 35.656963, 27.800589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317722, 36.275345, 28.114775>,  <29.175114, 35.594860, 27.987700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317722, 36.275345, 28.114775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607790, 36.152054, 27.868484>,  <29.781832, 36.078079, 27.720711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607790, 36.152054, 27.868484>,  <29.317722, 36.275345, 28.114775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607790, 36.152054, 27.868484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071254, 0.855821, -0.512341,
		0.684872, 0.415408, 0.598654,
		0.725171, -0.308232, -0.615727,
		29.825342, 36.059586, 27.683765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686642, 36.876583, 27.910101>,  <29.317722, 36.275345, 28.114775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686642, 36.876583, 27.910101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724243, 36.588032, 27.635647>,  <29.746805, 36.414902, 27.470974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724243, 36.588032, 27.635647>,  <29.686642, 36.876583, 27.910101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724243, 36.588032, 27.635647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238539, 0.652792, -0.719001,
		0.966572, 0.231260, -0.110711,
		0.094005, -0.721375, -0.686135,
		29.752445, 36.371620, 27.429806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776878, 37.348572, 27.328369>,  <29.686642, 36.876583, 27.910101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776878, 37.348572, 27.328369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750357, 36.997093, 27.139267>,  <29.734444, 36.786205, 27.025806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750357, 36.997093, 27.139267>,  <29.776878, 37.348572, 27.328369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750357, 36.997093, 27.139267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316445, 0.467856, -0.825211,
		0.946291, 0.094885, -0.309080,
		-0.066305, -0.878697, -0.472754,
		29.730465, 36.733482, 26.997440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001240, 37.463337, 26.644508>,  <29.776878, 37.348572, 27.328369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001240, 37.463337, 26.644508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792734, 37.122200, 26.632206>,  <29.667631, 36.917519, 26.624825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792734, 37.122200, 26.632206>,  <30.001240, 37.463337, 26.644508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792734, 37.122200, 26.632206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407022, 0.280127, -0.869403,
		0.750078, -0.440670, -0.493145,
		-0.521264, -0.852841, -0.030755,
		29.636354, 36.866348, 26.622980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123720, 37.095970, 26.014742>,  <30.001240, 37.463337, 26.644508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123720, 37.095970, 26.014742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769213, 36.945866, 26.123341>,  <29.556509, 36.855804, 26.188499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769213, 36.945866, 26.123341>,  <30.123720, 37.095970, 26.014742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769213, 36.945866, 26.123341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382246, 0.261565, -0.886268,
		0.261565, -0.889250, -0.375257,
		0.886268, 0.375257, -0.271496,
		29.503332, 36.833290, 26.204790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818432, 36.731617, 25.426470>,  <30.123720, 37.095970, 26.014742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818432, 36.731617, 25.426470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516594, 36.789574, 25.682468>,  <29.335491, 36.824348, 25.836067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516594, 36.789574, 25.682468>,  <29.818432, 36.731617, 25.426470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516594, 36.789574, 25.682468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620295, 0.160658, -0.767739,
		-0.214064, -0.976317, -0.031352,
		-0.754593, 0.144897, 0.639995,
		29.290216, 36.833042, 25.874468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284351, 36.375690, 25.141851>,  <29.818432, 36.731617, 25.426470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284351, 36.375690, 25.141851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110733, 36.647087, 25.378918>,  <29.006561, 36.809925, 25.521156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110733, 36.647087, 25.378918>,  <29.284351, 36.375690, 25.141851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110733, 36.647087, 25.378918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565760, 0.306669, -0.765421,
		-0.701085, -0.667534, 0.250756,
		-0.434046, 0.678493, 0.592665,
		28.980518, 36.850636, 25.556717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525789, 36.268181, 25.014252>,  <29.284351, 36.375690, 25.141851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525789, 36.268181, 25.014252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565628, 36.635281, 25.168037>,  <28.589531, 36.855541, 25.260309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565628, 36.635281, 25.168037>,  <28.525789, 36.268181, 25.014252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565628, 36.635281, 25.168037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667220, 0.348242, -0.658442,
		-0.738173, -0.190945, 0.647025,
		0.099595, 0.917751, 0.384465,
		28.595507, 36.910606, 25.283377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864119, 36.515469, 25.210783>,  <28.525789, 36.268181, 25.014252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864119, 36.515469, 25.210783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100777, 36.832985, 25.154434>,  <28.242771, 37.023495, 25.120625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100777, 36.832985, 25.154434>,  <27.864119, 36.515469, 25.210783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100777, 36.832985, 25.154434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659678, 0.376227, -0.650598,
		-0.463442, 0.477853, 0.746243,
		0.591647, 0.793794, -0.140870,
		28.278271, 37.071125, 25.112173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417042, 37.093155, 25.337461>,  <27.864119, 36.515469, 25.210783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417042, 37.093155, 25.337461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725201, 37.240223, 25.129112>,  <27.910095, 37.328465, 25.004103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725201, 37.240223, 25.129112>,  <27.417042, 37.093155, 25.337461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725201, 37.240223, 25.129112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636129, 0.388449, -0.666669,
		-0.042781, 0.844942, 0.533145,
		0.770396, 0.367669, -0.520873,
		27.956320, 37.350525, 24.972851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238724, 37.855541, 25.147011>,  <27.417042, 37.093155, 25.337461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238724, 37.855541, 25.147011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505177, 37.726440, 24.878056>,  <27.665049, 37.648979, 24.716682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505177, 37.726440, 24.878056>,  <27.238724, 37.855541, 25.147011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505177, 37.726440, 24.878056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632066, 0.234292, -0.738647,
		0.395933, 0.917028, -0.047930,
		0.666130, -0.322750, -0.672386,
		27.705015, 37.629616, 24.676340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233707, 38.379269, 24.647537>,  <27.238724, 37.855541, 25.147011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233707, 38.379269, 24.647537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399632, 38.050869, 24.490620>,  <27.499186, 37.853828, 24.396469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399632, 38.050869, 24.490620>,  <27.233707, 38.379269, 24.647537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399632, 38.050869, 24.490620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645377, 0.038454, -0.762896,
		0.641421, 0.569635, -0.513902,
		0.414811, -0.820998, -0.392295,
		27.524075, 37.804569, 24.372931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241838, 38.367977, 23.890799>,  <27.233707, 38.379269, 24.647537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241838, 38.367977, 23.890799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248491, 37.976604, 23.973167>,  <27.252483, 37.741783, 24.022589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248491, 37.976604, 23.973167>,  <27.241838, 38.367977, 23.890799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248491, 37.976604, 23.973167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649175, -0.167205, -0.742034,
		0.760458, -0.121339, -0.637951,
		0.016630, -0.978427, 0.205922,
		27.253481, 37.683075, 24.034945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276587, 37.983509, 23.274645>,  <27.241838, 38.367977, 23.890799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276587, 37.983509, 23.274645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098160, 37.749050, 23.545185>,  <26.991104, 37.608376, 23.707510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098160, 37.749050, 23.545185>,  <27.276587, 37.983509, 23.274645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098160, 37.749050, 23.545185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594518, -0.370826, -0.713468,
		0.669008, -0.720359, -0.183061,
		-0.446069, -0.586149, 0.676352,
		26.964338, 37.573204, 23.748091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236629, 37.277790, 22.889658>,  <27.276587, 37.983509, 23.274645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236629, 37.277790, 22.889658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945765, 37.389832, 23.140347>,  <26.771246, 37.457054, 23.290760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945765, 37.389832, 23.140347>,  <27.236629, 37.277790, 22.889658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945765, 37.389832, 23.140347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686407, -0.308672, -0.658458,
		0.009017, -0.908992, 0.416717,
		-0.727161, 0.280100, 0.626722,
		26.727615, 37.473862, 23.328363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695303, 36.736713, 22.804152>,  <27.236629, 37.277790, 22.889658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695303, 36.736713, 22.804152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559990, 37.090771, 22.931957>,  <26.478802, 37.303204, 23.008640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559990, 37.090771, 22.931957>,  <26.695303, 36.736713, 22.804152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559990, 37.090771, 22.931957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788639, -0.081408, -0.609443,
		-0.513432, -0.458147, 0.725596,
		-0.338284, 0.885141, 0.319515,
		26.458506, 37.356312, 23.027811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088009, 36.741634, 23.194944>,  <26.695303, 36.736713, 22.804152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088009, 36.741634, 23.194944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084019, 37.106735, 23.031590>,  <26.081625, 37.325798, 22.933577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084019, 37.106735, 23.031590>,  <26.088009, 36.741634, 23.194944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084019, 37.106735, 23.031590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911328, -0.176390, -0.371977,
		-0.411559, 0.368463, 0.833579,
		-0.009975, 0.912755, -0.408386,
		26.081026, 37.380562, 22.909073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524542, 37.202446, 23.393551>,  <26.088009, 36.741634, 23.194944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524542, 37.202446, 23.393551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652401, 37.257076, 23.018494>,  <25.729116, 37.289856, 22.793459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652401, 37.257076, 23.018494>,  <25.524542, 37.202446, 23.393551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652401, 37.257076, 23.018494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899570, -0.267116, -0.345575,
		-0.297656, 0.953937, 0.037475,
		0.319647, 0.136574, -0.937642,
		25.748295, 37.298050, 22.737202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023361, 37.598061, 22.904007>,  <25.524542, 37.202446, 23.393551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023361, 37.598061, 22.904007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255665, 37.316601, 22.740253>,  <25.395048, 37.147724, 22.642000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255665, 37.316601, 22.740253>,  <25.023361, 37.598061, 22.904007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255665, 37.316601, 22.740253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810979, -0.456265, -0.366246,
		0.070920, 0.544704, -0.835624,
		0.580761, -0.703648, -0.409385,
		25.429893, 37.105507, 22.617437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613098, 37.346870, 23.587580>,  <25.023361, 37.598061, 22.904007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613098, 37.346870, 23.587580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230093, 37.241585, 23.634724>,  <24.000290, 37.178413, 23.663010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230093, 37.241585, 23.634724>,  <24.613098, 37.346870, 23.587580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.230093, 37.241585, 23.634724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244064, 0.521841, -0.817383,
		0.153641, -0.811419, -0.563909,
		-0.957511, -0.263214, 0.117862,
		23.942841, 37.162621, 23.670082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.410614, 37.172001, 22.954735>,  <24.613098, 37.346870, 23.587580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.410614, 37.172001, 22.954735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.096422, 37.278217, 23.178345>,  <23.907907, 37.341946, 23.312511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.096422, 37.278217, 23.178345>,  <24.410614, 37.172001, 22.954735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.096422, 37.278217, 23.178345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235042, 0.707606, -0.666370,
		-0.572518, -0.654815, -0.493397,
		-0.785480, 0.265540, 0.559026,
		23.860779, 37.357880, 23.346052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.940424, 37.532543, 22.494225>,  <24.410614, 37.172001, 22.954735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.940424, 37.532543, 22.494225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778391, 37.648048, 22.841217>,  <23.681171, 37.717354, 23.049412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778391, 37.648048, 22.841217>,  <23.940424, 37.532543, 22.494225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.778391, 37.648048, 22.841217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262637, 0.872069, -0.412938,
		-0.875745, -0.395107, -0.277419,
		-0.405083, 0.288768, 0.867480,
		23.656866, 37.734680, 23.101461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171110, 37.614967, 22.442093>,  <23.940424, 37.532543, 22.494225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171110, 37.614967, 22.442093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290354, 37.845654, 22.746338>,  <23.361900, 37.984066, 22.928885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290354, 37.845654, 22.746338>,  <23.171110, 37.614967, 22.442093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.290354, 37.845654, 22.746338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241249, 0.816494, -0.524534,
		-0.923542, -0.027128, 0.382537,
		0.298110, 0.576716, 0.760611,
		23.379787, 38.018669, 22.974522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.593407, 38.184486, 22.562397>,  <23.171110, 37.614967, 22.442093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.593407, 38.184486, 22.562397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920162, 38.331596, 22.740131>,  <23.116215, 38.419865, 22.846771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920162, 38.331596, 22.740131>,  <22.593407, 38.184486, 22.562397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920162, 38.331596, 22.740131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115954, 0.859333, -0.498097,
		-0.565021, 0.355367, 0.744624,
		0.816888, 0.367778, 0.444335,
		23.165228, 38.441929, 22.873432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.429012, 38.988678, 22.593332>,  <22.593407, 38.184486, 22.562397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.429012, 38.988678, 22.593332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.817791, 38.963284, 22.683922>,  <23.051058, 38.948048, 22.738276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.817791, 38.963284, 22.683922>,  <22.429012, 38.988678, 22.593332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.817791, 38.963284, 22.683922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159462, 0.885679, -0.436057,
		-0.172898, 0.459938, 0.870956,
		0.971946, -0.063491, 0.226475,
		23.109375, 38.944237, 22.751863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.671391, 39.580482, 22.937494>,  <22.429012, 38.988678, 22.593332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.671391, 39.580482, 22.937494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980560, 39.445969, 22.722275>,  <23.166063, 39.365261, 22.593143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980560, 39.445969, 22.722275>,  <22.671391, 39.580482, 22.937494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.980560, 39.445969, 22.722275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102019, 0.902828, -0.417725,
		0.626241, 0.267979, 0.732127,
		0.772926, -0.336287, -0.538049,
		23.212439, 39.345081, 22.560860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.044847, 40.154312, 22.761950>,  <22.671391, 39.580482, 22.937494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.044847, 40.154312, 22.761950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.199118, 39.868820, 22.528080>,  <23.291679, 39.697525, 22.387758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.199118, 39.868820, 22.528080>,  <23.044847, 40.154312, 22.761950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.199118, 39.868820, 22.528080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277157, 0.694056, -0.664432,
		0.880021, 0.094209, 0.465496,
		0.385676, -0.713730, -0.584673,
		23.314821, 39.654701, 22.352678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666777, 40.445873, 22.515015>,  <23.044847, 40.154312, 22.761950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666777, 40.445873, 22.515015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.598982, 40.149921, 22.254601>,  <23.558304, 39.972351, 22.098352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.598982, 40.149921, 22.254601>,  <23.666777, 40.445873, 22.515015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.598982, 40.149921, 22.254601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236992, 0.610611, -0.755638,
		0.956613, -0.282362, 0.071854,
		-0.169489, -0.739882, -0.651036,
		23.548136, 39.927956, 22.059290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.122005, 40.668922, 21.894760>,  <23.666777, 40.445873, 22.515015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.122005, 40.668922, 21.894760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.913898, 40.373348, 21.723511>,  <23.789034, 40.196003, 21.620762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.913898, 40.373348, 21.723511>,  <24.122005, 40.668922, 21.894760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.913898, 40.373348, 21.723511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044851, 0.476977, -0.877771,
		0.852824, -0.475878, -0.215014,
		-0.520268, -0.738941, -0.428122,
		23.757818, 40.151665, 21.595074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419138, 40.270279, 21.393173>,  <24.122005, 40.668922, 21.894760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419138, 40.270279, 21.393173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029840, 40.262489, 21.301590>,  <23.796263, 40.257816, 21.246639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029840, 40.262489, 21.301590>,  <24.419138, 40.270279, 21.393173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.029840, 40.262489, 21.301590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213415, 0.292753, -0.932067,
		0.085176, -0.955990, -0.280764,
		-0.973241, -0.019471, -0.228958,
		23.737867, 40.256649, 21.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.431902, 40.219357, 20.666658>,  <24.419138, 40.270279, 21.393173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.431902, 40.219357, 20.666658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.036957, 40.268974, 20.706116>,  <23.799990, 40.298744, 20.729790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.036957, 40.268974, 20.706116>,  <24.431902, 40.219357, 20.666658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.036957, 40.268974, 20.706116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039653, 0.409251, -0.911560,
		-0.153446, -0.903950, -0.399160,
		-0.987361, 0.124047, 0.098642,
		23.740749, 40.306187, 20.735708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238415, 40.083595, 20.002249>,  <24.431902, 40.219357, 20.666658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238415, 40.083595, 20.002249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.955536, 40.313068, 20.167542>,  <23.785809, 40.450752, 20.266718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.955536, 40.313068, 20.167542>,  <24.238415, 40.083595, 20.002249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.955536, 40.313068, 20.167542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110453, 0.487652, -0.866023,
		-0.698336, -0.658091, -0.281501,
		-0.707197, 0.573682, 0.413233,
		23.743378, 40.485172, 20.291512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.767628, 40.123848, 19.462006>,  <24.238415, 40.083595, 20.002249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.767628, 40.123848, 19.462006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636293, 40.391109, 19.729069>,  <23.557493, 40.551468, 19.889307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636293, 40.391109, 19.729069>,  <23.767628, 40.123848, 19.462006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.636293, 40.391109, 19.729069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266766, 0.612473, -0.744119,
		-0.906109, -0.422427, -0.022855,
		-0.328334, 0.668155, 0.667656,
		23.537794, 40.591557, 19.929365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.092621, 40.416588, 19.196836>,  <23.767628, 40.123848, 19.462006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.092621, 40.416588, 19.196836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.248316, 40.693462, 19.439941>,  <23.341732, 40.859585, 19.585804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.248316, 40.693462, 19.439941>,  <23.092621, 40.416588, 19.196836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.248316, 40.693462, 19.439941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213406, 0.709609, -0.671501,
		-0.896076, 0.131673, 0.423923,
		0.389238, 0.692183, 0.607763,
		23.365088, 40.901119, 19.622271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.690569, 41.063255, 19.173262>,  <23.092621, 40.416588, 19.196836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.690569, 41.063255, 19.173262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.998133, 41.245182, 19.353004>,  <23.182671, 41.354340, 19.460850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.998133, 41.245182, 19.353004>,  <22.690569, 41.063255, 19.173262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.998133, 41.245182, 19.353004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249269, 0.860458, -0.444384,
		-0.588765, 0.229681, 0.774986,
		0.768909, 0.454817, 0.449355,
		23.228806, 41.381626, 19.487810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.493048, 41.772133, 19.335342>,  <22.690569, 41.063255, 19.173262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.493048, 41.772133, 19.335342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893017, 41.772560, 19.330387>,  <23.132998, 41.772816, 19.327414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893017, 41.772560, 19.330387>,  <22.493048, 41.772133, 19.335342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.893017, 41.772560, 19.330387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005778, 0.922245, -0.386562,
		0.011010, 0.386604, 0.922180,
		0.999923, 0.001072, -0.012388,
		23.192993, 41.772881, 19.326672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.677132, 42.544971, 19.481255>,  <22.493048, 41.772133, 19.335342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.677132, 42.544971, 19.481255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994221, 42.349243, 19.335842>,  <23.184475, 42.231808, 19.248594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994221, 42.349243, 19.335842>,  <22.677132, 42.544971, 19.481255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.994221, 42.349243, 19.335842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376602, 0.862066, -0.339136,
		0.479334, 0.131935, 0.867659,
		0.792723, -0.489321, -0.363530,
		23.232038, 42.202446, 19.226784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.185843, 42.913967, 19.679136>,  <22.677132, 42.544971, 19.481255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.185843, 42.913967, 19.679136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.332380, 42.697834, 19.376129>,  <23.420303, 42.568153, 19.194324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.332380, 42.697834, 19.376129>,  <23.185843, 42.913967, 19.679136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.332380, 42.697834, 19.376129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193694, 0.840567, -0.505896,
		0.910095, 0.038606, 0.412597,
		0.366346, -0.540331, -0.757518,
		23.442284, 42.535736, 19.148874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.780161, 43.235065, 19.495205>,  <23.185843, 42.913967, 19.679136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.780161, 43.235065, 19.495205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.640175, 43.040848, 19.174763>,  <23.556183, 42.924316, 18.982498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.640175, 43.040848, 19.174763>,  <23.780161, 43.235065, 19.495205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.640175, 43.040848, 19.174763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281388, 0.761202, -0.584288,
		0.893502, -0.429900, -0.129765,
		-0.349963, -0.485549, -0.801105,
		23.535187, 42.895184, 18.934431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133516, 43.532673, 18.942354>,  <23.780161, 43.235065, 19.495205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.133516, 43.532673, 18.942354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.834909, 43.347164, 18.751511>,  <23.655745, 43.235859, 18.637005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.834909, 43.347164, 18.751511>,  <24.133516, 43.532673, 18.942354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.834909, 43.347164, 18.751511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051874, 0.674311, -0.736623,
		0.663345, -0.574648, -0.479324,
		-0.746513, -0.463771, -0.477111,
		23.610954, 43.208035, 18.608377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286018, 43.637260, 18.280527>,  <24.133516, 43.532673, 18.942354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286018, 43.637260, 18.280527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897072, 43.544109, 18.273895>,  <23.663704, 43.488220, 18.269917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897072, 43.544109, 18.273895>,  <24.286018, 43.637260, 18.280527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.897072, 43.544109, 18.273895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128465, 0.592989, -0.794897,
		0.194943, -0.770800, -0.606518,
		-0.972365, -0.232875, -0.016578,
		23.605362, 43.474247, 18.268921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984381, 43.271858, 17.613968>,  <24.286018, 43.637260, 18.280527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984381, 43.271858, 17.613968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710474, 43.517361, 17.771141>,  <23.546129, 43.664661, 17.865446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710474, 43.517361, 17.771141>,  <23.984381, 43.271858, 17.613968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.710474, 43.517361, 17.771141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054690, 0.580939, -0.812107,
		-0.726707, -0.534615, -0.431375,
		-0.684767, 0.613756, 0.392935,
		23.505043, 43.701488, 17.889021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.407249, 43.350334, 17.119579>,  <23.984381, 43.271858, 17.613968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.407249, 43.350334, 17.119579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467699, 43.677906, 17.341038>,  <23.503969, 43.874447, 17.473913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467699, 43.677906, 17.341038>,  <23.407249, 43.350334, 17.119579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.467699, 43.677906, 17.341038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046882, 0.553509, -0.831523,
		-0.987402, 0.151620, 0.045256,
		0.151125, 0.818926, 0.553645,
		23.513037, 43.923584, 17.507132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863239, 43.816547, 16.921783>,  <23.407249, 43.350334, 17.119579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863239, 43.816547, 16.921783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212183, 43.979053, 17.030548>,  <23.421549, 44.076557, 17.095806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212183, 43.979053, 17.030548>,  <22.863239, 43.816547, 16.921783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.212183, 43.979053, 17.030548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143324, 0.319228, -0.936777,
		-0.467380, 0.856180, 0.220255,
		0.872361, 0.406263, 0.271912,
		23.473892, 44.100933, 17.112122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.210531, 44.159512, 17.139303>,  <22.863239, 43.816547, 16.921783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.210531, 44.159512, 17.139303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.112013, 44.272800, 16.768547>,  <22.052902, 44.340775, 16.546093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.112013, 44.272800, 16.768547>,  <22.210531, 44.159512, 17.139303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.112013, 44.272800, 16.768547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003210, -0.956107, -0.292999,
		-0.969189, -0.075141, 0.234579,
		-0.246299, 0.283219, -0.926890,
		22.038124, 44.357765, 16.490480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824718, 43.601368, 16.852703>,  <22.210531, 44.159512, 17.139303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824718, 43.601368, 16.852703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.942877, 43.819988, 16.539265>,  <22.013771, 43.951160, 16.351202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.942877, 43.819988, 16.539265>,  <21.824718, 43.601368, 16.852703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.942877, 43.819988, 16.539265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058267, -0.828975, -0.556242,
		-0.953597, 0.118654, -0.276721,
		0.295395, 0.546554, -0.783594,
		22.031496, 43.983955, 16.304186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149130, 43.902588, 17.210609>,  <21.824718, 43.601368, 16.852703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149130, 43.902588, 17.210609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767160, 43.831844, 17.115242>,  <20.537979, 43.789398, 17.058022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767160, 43.831844, 17.115242>,  <21.149130, 43.902588, 17.210609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767160, 43.831844, 17.115242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061579, -0.903695, 0.423726,
		-0.290396, 0.389944, 0.873850,
		-0.954923, -0.176859, -0.238417,
		20.480684, 43.778786, 17.043716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.782635, 43.720058, 17.820831>,  <21.149130, 43.902588, 17.210609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.782635, 43.720058, 17.820831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554279, 43.597698, 17.516068>,  <20.417267, 43.524281, 17.333208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554279, 43.597698, 17.516068>,  <20.782635, 43.720058, 17.820831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.554279, 43.597698, 17.516068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145011, -0.950977, 0.273156,
		-0.808119, 0.045456, 0.587262,
		-0.570889, -0.305902, -0.761911,
		20.383013, 43.505928, 17.287495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.228838, 43.359428, 18.085840>,  <20.782635, 43.720058, 17.820831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.228838, 43.359428, 18.085840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290287, 43.233410, 17.711216>,  <20.327156, 43.157799, 17.486441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290287, 43.233410, 17.711216>,  <20.228838, 43.359428, 18.085840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290287, 43.233410, 17.711216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050412, -0.944078, 0.325846,
		-0.986843, -0.097271, -0.129149,
		0.153622, -0.315048, -0.936560,
		20.336374, 43.138897, 17.430248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699486, 42.838066, 17.833281>,  <20.228838, 43.359428, 18.085840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699486, 42.838066, 17.833281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.071882, 42.771938, 17.703094>,  <20.295321, 42.732262, 17.624983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.071882, 42.771938, 17.703094>,  <19.699486, 42.838066, 17.833281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071882, 42.771938, 17.703094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002952, -0.894950, 0.446156,
		-0.365035, -0.414405, -0.833677,
		0.930989, -0.165323, -0.325465,
		20.351179, 42.722340, 17.605455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.693350, 42.232002, 17.385201>,  <19.699486, 42.838066, 17.833281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.693350, 42.232002, 17.385201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.036638, 42.288101, 17.582699>,  <20.242611, 42.321762, 17.701197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.036638, 42.288101, 17.582699>,  <19.693350, 42.232002, 17.385201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.036638, 42.288101, 17.582699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148126, -0.853342, 0.499866,
		0.491439, -0.502132, -0.711584,
		0.858223, 0.140249, 0.493744,
		20.294106, 42.330177, 17.730822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.052746, 41.641685, 17.420547>,  <19.693350, 42.232002, 17.385201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.052746, 41.641685, 17.420547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245409, 41.833599, 17.713890>,  <20.361008, 41.948746, 17.889896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245409, 41.833599, 17.713890>,  <20.052746, 41.641685, 17.420547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245409, 41.833599, 17.713890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031467, -0.826813, 0.561595,
		0.875794, -0.293573, -0.383143,
		0.481658, 0.479785, 0.733356,
		20.389906, 41.977535, 17.933897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.691212, 41.324780, 17.539265>,  <20.052746, 41.641685, 17.420547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.691212, 41.324780, 17.539265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608728, 41.498966, 17.889771>,  <20.559238, 41.603477, 18.100075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608728, 41.498966, 17.889771>,  <20.691212, 41.324780, 17.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608728, 41.498966, 17.889771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007606, -0.894773, 0.446456,
		0.978478, 0.098729, 0.181200,
		-0.206211, 0.435469, 0.876267,
		20.546865, 41.629608, 18.152651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177139, 41.038437, 18.062529>,  <20.691212, 41.324780, 17.539265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177139, 41.038437, 18.062529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882725, 41.181602, 18.292362>,  <20.706076, 41.267502, 18.430262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882725, 41.181602, 18.292362>,  <21.177139, 41.038437, 18.062529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882725, 41.181602, 18.292362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081685, -0.889550, 0.449476,
		0.671996, 0.283896, 0.683977,
		-0.736036, 0.357916, 0.574584,
		20.661915, 41.288979, 18.464737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.442518, 40.791004, 18.735674>,  <21.177139, 41.038437, 18.062529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.442518, 40.791004, 18.735674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.054403, 40.881203, 18.770767>,  <20.821535, 40.935322, 18.791824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.054403, 40.881203, 18.770767>,  <21.442518, 40.791004, 18.735674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054403, 40.881203, 18.770767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122636, -0.770885, 0.625057,
		0.208581, 0.595724, 0.775633,
		-0.970286, 0.225495, 0.087735,
		20.763317, 40.948853, 18.797089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267250, 40.876831, 19.430325>,  <21.442518, 40.791004, 18.735674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267250, 40.876831, 19.430325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931919, 40.776604, 19.236656>,  <20.730721, 40.716469, 19.120455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931919, 40.776604, 19.236656>,  <21.267250, 40.876831, 19.430325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931919, 40.776604, 19.236656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175008, -0.717420, 0.674300,
		-0.516311, 0.650019, 0.557582,
		-0.838329, -0.250568, -0.484170,
		20.680420, 40.701435, 19.091406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.783836, 40.863270, 19.956011>,  <21.267250, 40.876831, 19.430325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.783836, 40.863270, 19.956011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631561, 40.617649, 19.679455>,  <20.540197, 40.470276, 19.513521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631561, 40.617649, 19.679455>,  <20.783836, 40.863270, 19.956011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631561, 40.617649, 19.679455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246468, -0.653263, 0.715892,
		-0.891252, 0.442937, 0.097345,
		-0.380687, -0.614048, -0.691392,
		20.517355, 40.433434, 19.472036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218500, 40.627033, 20.300165>,  <20.783836, 40.863270, 19.956011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218500, 40.627033, 20.300165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292416, 40.355080, 20.016304>,  <20.336765, 40.191906, 19.845987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292416, 40.355080, 20.016304>,  <20.218500, 40.627033, 20.300165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292416, 40.355080, 20.016304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247090, -0.731035, 0.636030,
		-0.951210, 0.057819, -0.303079,
		0.184787, -0.679886, -0.709654,
		20.347851, 40.151115, 19.803408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637747, 40.136761, 20.403202>,  <20.218500, 40.627033, 20.300165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637747, 40.136761, 20.403202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941294, 39.958981, 20.212799>,  <20.123423, 39.852310, 20.098558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941294, 39.958981, 20.212799>,  <19.637747, 40.136761, 20.403202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.941294, 39.958981, 20.212799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053305, -0.770855, 0.634776,
		-0.649059, -0.456338, -0.608669,
		0.758868, -0.444452, -0.476005,
		20.168955, 39.825645, 20.069998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368109, 39.465897, 20.317125>,  <19.637747, 40.136761, 20.403202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368109, 39.465897, 20.317125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761335, 39.430870, 20.252739>,  <19.997271, 39.409855, 20.214108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761335, 39.430870, 20.252739>,  <19.368109, 39.465897, 20.317125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761335, 39.430870, 20.252739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033706, -0.777032, 0.628558,
		-0.180118, -0.623340, -0.760923,
		0.983067, -0.087567, -0.160968,
		20.056255, 39.404598, 20.204449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562363, 38.694416, 20.225449>,  <19.368109, 39.465897, 20.317125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562363, 38.694416, 20.225449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888922, 38.898548, 20.333565>,  <20.084856, 39.021027, 20.398436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888922, 38.898548, 20.333565>,  <19.562363, 38.694416, 20.225449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888922, 38.898548, 20.333565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199903, -0.688844, 0.696801,
		0.541790, -0.514834, -0.664387,
		0.816396, 0.510333, 0.270292,
		20.133841, 39.051647, 20.414652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959290, 38.136181, 20.413082>,  <19.562363, 38.694416, 20.225449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959290, 38.136181, 20.413082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.174522, 38.443047, 20.552757>,  <20.303661, 38.627167, 20.636562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.174522, 38.443047, 20.552757>,  <19.959290, 38.136181, 20.413082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174522, 38.443047, 20.552757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433482, -0.607151, 0.665929,
		0.722885, -0.206957, -0.659247,
		0.538081, 0.767161, 0.349189,
		20.335947, 38.673195, 20.657515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656946, 37.927940, 20.504450>,  <19.959290, 38.136181, 20.413082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656946, 37.927940, 20.504450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.613333, 38.246273, 20.742699>,  <20.587164, 38.437271, 20.885649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.613333, 38.246273, 20.742699>,  <20.656946, 37.927940, 20.504450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613333, 38.246273, 20.742699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493096, -0.476973, 0.727566,
		0.863115, 0.373029, -0.340414,
		-0.109035, 0.795830, 0.595622,
		20.580622, 38.485023, 20.921385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.272512, 38.022198, 20.866678>,  <20.656946, 37.927940, 20.504450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.272512, 38.022198, 20.866678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.012560, 38.215305, 21.101486>,  <20.856588, 38.331169, 21.242371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.012560, 38.215305, 21.101486>,  <21.272512, 38.022198, 20.866678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.012560, 38.215305, 21.101486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392870, -0.447793, 0.803203,
		0.650622, 0.752609, 0.101348,
		-0.649880, 0.482765, 0.587021,
		20.817596, 38.360134, 21.277592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647175, 38.299046, 21.395649>,  <21.272512, 38.022198, 20.866678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647175, 38.299046, 21.395649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.271307, 38.293037, 21.532349>,  <21.045786, 38.289433, 21.614368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.271307, 38.293037, 21.532349>,  <21.647175, 38.299046, 21.395649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271307, 38.293037, 21.532349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322583, -0.371336, 0.870660,
		0.113829, 0.928377, 0.353778,
		-0.939672, -0.015016, 0.341747,
		20.989405, 38.288532, 21.634872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.654631, 38.715668, 22.057096>,  <21.647175, 38.299046, 21.395649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.654631, 38.715668, 22.057096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332315, 38.478836, 22.052147>,  <21.138926, 38.336739, 22.049177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332315, 38.478836, 22.052147>,  <21.654631, 38.715668, 22.057096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332315, 38.478836, 22.052147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202122, -0.294597, 0.934002,
		-0.556643, 0.750107, 0.357054,
		-0.805788, -0.592074, -0.012373,
		21.090578, 38.301212, 22.048435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.255238, 38.805840, 22.650040>,  <21.654631, 38.715668, 22.057096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.255238, 38.805840, 22.650040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131893, 38.443295, 22.534512>,  <21.057886, 38.225769, 22.465195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131893, 38.443295, 22.534512>,  <21.255238, 38.805840, 22.650040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131893, 38.443295, 22.534512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167670, -0.350650, 0.921375,
		-0.936376, 0.235691, 0.260098,
		-0.308363, -0.906363, -0.288822,
		21.039385, 38.171387, 22.447865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957041, 38.483284, 23.265894>,  <21.255238, 38.805840, 22.650040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957041, 38.483284, 23.265894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926970, 38.159027, 23.033615>,  <20.908926, 37.964474, 22.894249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926970, 38.159027, 23.033615>,  <20.957041, 38.483284, 23.265894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.926970, 38.159027, 23.033615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289725, -0.574979, 0.765153,
		-0.954153, -0.110718, 0.278090,
		-0.075179, -0.810642, -0.580695,
		20.904415, 37.915833, 22.859407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.405704, 37.929985, 23.658253>,  <20.957041, 38.483284, 23.265894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.405704, 37.929985, 23.658253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.640991, 37.748299, 23.390614>,  <20.782164, 37.639286, 23.230030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.640991, 37.748299, 23.390614>,  <20.405704, 37.929985, 23.658253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640991, 37.748299, 23.390614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279996, -0.661812, 0.695419,
		-0.758687, -0.596400, -0.262109,
		0.588215, -0.454216, -0.669097,
		20.817455, 37.612034, 23.189884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185150, 37.264805, 23.717497>,  <20.405704, 37.929985, 23.658253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185150, 37.264805, 23.717497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560053, 37.262463, 23.578060>,  <20.784994, 37.261059, 23.494398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560053, 37.262463, 23.578060>,  <20.185150, 37.264805, 23.717497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560053, 37.262463, 23.578060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269117, -0.623505, 0.734042,
		-0.221648, -0.781797, -0.582808,
		0.937256, -0.005855, -0.348593,
		20.841230, 37.260708, 23.473482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736902, 37.702065, 24.140772>,  <20.185150, 37.264805, 23.717497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736902, 37.702065, 24.140772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043358, 37.954491, 24.189407>,  <20.227232, 38.105946, 24.218588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043358, 37.954491, 24.189407>,  <19.736902, 37.702065, 24.140772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043358, 37.954491, 24.189407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515671, 0.716548, -0.469725,
		-0.383552, 0.297176, 0.874400,
		0.766140, 0.631067, 0.121588,
		20.273199, 38.143810, 24.225883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199175, 38.332779, 23.994137>,  <19.736902, 37.702065, 24.140772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199175, 38.332779, 23.994137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156553, 37.978565, 24.175011>,  <19.130980, 37.766037, 24.283535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156553, 37.978565, 24.175011>,  <19.199175, 38.332779, 23.994137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156553, 37.978565, 24.175011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680817, -0.266465, -0.682265,
		0.724662, -0.380552, -0.574496,
		-0.106555, -0.885537, 0.452183,
		19.124586, 37.712906, 24.310665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117514, 37.731045, 23.530811>,  <19.199175, 38.332779, 23.994137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117514, 37.731045, 23.530811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.931042, 37.615719, 23.865368>,  <18.819159, 37.546524, 24.066101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.931042, 37.615719, 23.865368>,  <19.117514, 37.731045, 23.530811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931042, 37.615719, 23.865368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785280, -0.300556, -0.541296,
		0.407445, -0.909144, -0.086292,
		-0.466181, -0.288312, 0.836392,
		18.791187, 37.529224, 24.116285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912458, 37.006702, 23.378220>,  <19.117514, 37.731045, 23.530811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.912458, 37.006702, 23.378220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686148, 37.313980, 23.498066>,  <18.550362, 37.498348, 23.569973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686148, 37.313980, 23.498066>,  <18.912458, 37.006702, 23.378220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686148, 37.313980, 23.498066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698521, -0.253458, -0.669199,
		-0.438137, -0.587906, 0.680002,
		-0.565778, 0.768197, 0.299615,
		18.516415, 37.544437, 23.587950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.147846, 36.777000, 23.543438>,  <18.912458, 37.006702, 23.378220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.147846, 36.777000, 23.543438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221361, 37.135826, 23.382694>,  <18.265471, 37.351124, 23.286247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221361, 37.135826, 23.382694>,  <18.147846, 36.777000, 23.543438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221361, 37.135826, 23.382694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698285, -0.168583, -0.695686,
		-0.691824, 0.408472, 0.595425,
		0.183790, 0.897068, -0.401859,
		18.276499, 37.404945, 23.262136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516422, 37.091885, 23.377924>,  <18.147846, 36.777000, 23.543438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516422, 37.091885, 23.377924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786863, 37.201981, 23.104538>,  <17.949127, 37.268040, 22.940506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786863, 37.201981, 23.104538>,  <17.516422, 37.091885, 23.377924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786863, 37.201981, 23.104538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571552, -0.389479, -0.722243,
		-0.464989, 0.878947, -0.106011,
		0.676102, 0.275244, -0.683467,
		17.989695, 37.284554, 22.899498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.931221, 28.911219, 28.741968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.314434, 29.003204, 28.810429>,  <30.544361, 29.058395, 28.851505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.314434, 29.003204, 28.810429>,  <29.931221, 28.911219, 28.741968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314434, 29.003204, 28.810429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020939, 0.651586, -0.758285,
		-0.285899, 0.722877, 0.629055,
		0.958031, 0.229965, 0.171151,
		30.601843, 29.072193, 28.861774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912678, 29.621119, 28.751667>,  <29.931221, 28.911219, 28.741968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912678, 29.621119, 28.751667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.298288, 29.544914, 28.677525>,  <30.529655, 29.499191, 28.633039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.298288, 29.544914, 28.677525>,  <29.912678, 29.621119, 28.751667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298288, 29.544914, 28.677525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001979, 0.692181, -0.721722,
		0.265798, 0.696126, 0.666903,
		0.964027, -0.190512, -0.185358,
		30.587496, 29.487761, 28.621918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129892, 30.251469, 28.551859>,  <29.912678, 29.621119, 28.751667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129892, 30.251469, 28.551859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.416777, 30.002197, 28.427113>,  <30.588907, 29.852634, 28.352264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.416777, 30.002197, 28.427113>,  <30.129892, 30.251469, 28.551859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416777, 30.002197, 28.427113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124613, 0.555009, -0.822458,
		0.685624, 0.551013, 0.475714,
		0.717211, -0.623177, -0.311864,
		30.631941, 29.815245, 28.333553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702143, 30.658293, 28.552654>,  <30.129892, 30.251469, 28.551859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702143, 30.658293, 28.552654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.732874, 30.359417, 28.288593>,  <30.751312, 30.180092, 28.130156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.732874, 30.359417, 28.288593>,  <30.702143, 30.658293, 28.552654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732874, 30.359417, 28.288593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313519, 0.646630, -0.695396,
		0.946469, -0.153544, 0.283939,
		0.076829, -0.747191, -0.660154,
		30.755922, 30.135260, 28.090548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362846, 30.717287, 28.269245>,  <30.702143, 30.658293, 28.552654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362846, 30.717287, 28.269245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.143242, 30.499527, 28.015564>,  <31.011478, 30.368872, 27.863356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.143242, 30.499527, 28.015564>,  <31.362846, 30.717287, 28.269245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143242, 30.499527, 28.015564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329000, 0.556770, -0.762736,
		0.768338, -0.627405, -0.126567,
		-0.549013, -0.544398, -0.634204,
		30.978539, 30.336206, 27.825302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803322, 30.585131, 27.696281>,  <31.362846, 30.717287, 28.269245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803322, 30.585131, 27.696281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.434782, 30.521061, 27.554600>,  <31.213659, 30.482618, 27.469591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.434782, 30.521061, 27.554600>,  <31.803322, 30.585131, 27.696281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434782, 30.521061, 27.554600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179635, 0.632621, -0.753341,
		0.344745, -0.757717, -0.554091,
		-0.921348, -0.160176, -0.354205,
		31.158377, 30.473007, 27.448338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904188, 30.416931, 26.999002>,  <31.803322, 30.585131, 27.696281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904188, 30.416931, 26.999002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515177, 30.507202, 27.021839>,  <31.281771, 30.561365, 27.035542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515177, 30.507202, 27.021839>,  <31.904188, 30.416931, 26.999002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515177, 30.507202, 27.021839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101044, 0.630188, -0.769840,
		-0.209712, -0.742922, -0.635679,
		-0.972528, 0.225676, 0.057090,
		31.223419, 30.574905, 27.038965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740685, 30.467485, 26.321320>,  <31.904188, 30.416931, 26.999002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740685, 30.467485, 26.321320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.455378, 30.665821, 26.519470>,  <31.284193, 30.784822, 26.638361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.455378, 30.665821, 26.519470>,  <31.740685, 30.467485, 26.321320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455378, 30.665821, 26.519470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047916, 0.739619, -0.671318,
		-0.699255, -0.455091, -0.551303,
		-0.713265, 0.495838, 0.495376,
		31.241398, 30.814573, 26.668083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229601, 30.694374, 25.817062>,  <31.740685, 30.467485, 26.321320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229601, 30.694374, 25.817062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.169411, 30.939533, 26.127342>,  <31.133297, 31.086628, 26.313511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.169411, 30.939533, 26.127342>,  <31.229601, 30.694374, 25.817062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169411, 30.939533, 26.127342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115313, 0.768399, -0.629497,
		-0.981866, -0.184172, -0.044950,
		-0.150475, 0.612898, 0.775701,
		31.124268, 31.123404, 26.360052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638655, 30.988733, 25.727030>,  <31.229601, 30.694374, 25.817062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638655, 30.988733, 25.727030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.825954, 31.243320, 25.972191>,  <30.938335, 31.396072, 26.119287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.825954, 31.243320, 25.972191>,  <30.638655, 30.988733, 25.727030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825954, 31.243320, 25.972191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165808, 0.744615, -0.646573,
		-0.867899, 0.201135, 0.454198,
		0.468251, 0.636469, 0.612901,
		30.966431, 31.434261, 26.156061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143715, 31.389275, 26.005329>,  <30.638655, 30.988733, 25.727030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143715, 31.389275, 26.005329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.482254, 31.601772, 26.020721>,  <30.685377, 31.729271, 26.029957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.482254, 31.601772, 26.020721>,  <30.143715, 31.389275, 26.005329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482254, 31.601772, 26.020721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407004, 0.691637, -0.596645,
		-0.343580, 0.489305, 0.801582,
		0.846345, 0.531242, 0.038483,
		30.736158, 31.761145, 26.032267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818748, 32.074902, 25.889866>,  <30.143715, 31.389275, 26.005329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818748, 32.074902, 25.889866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.216743, 32.098743, 25.857738>,  <30.455540, 32.113049, 25.838463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.216743, 32.098743, 25.857738>,  <29.818748, 32.074902, 25.889866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216743, 32.098743, 25.857738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092548, 0.853223, -0.513270,
		0.037933, 0.518129, 0.854461,
		0.994985, 0.059609, -0.080317,
		30.515240, 32.116627, 25.833643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887081, 32.696106, 26.046366>,  <29.818748, 32.074902, 25.889866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887081, 32.696106, 26.046366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.212410, 32.596638, 25.835968>,  <30.407608, 32.536957, 25.709730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.212410, 32.596638, 25.835968>,  <29.887081, 32.696106, 26.046366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212410, 32.596638, 25.835968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044539, 0.874797, -0.482439,
		0.580104, 0.415806, 0.700418,
		0.813324, -0.248668, -0.525992,
		30.456408, 32.522038, 25.678171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360842, 33.236404, 25.973938>,  <29.887081, 32.696106, 26.046366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360842, 33.236404, 25.973938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.517355, 33.019920, 25.676216>,  <30.611263, 32.890030, 25.497583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.517355, 33.019920, 25.676216>,  <30.360842, 33.236404, 25.973938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517355, 33.019920, 25.676216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087968, 0.783088, -0.615658,
		0.916057, 0.306370, 0.258799,
		0.391281, -0.541212, -0.744304,
		30.634739, 32.857555, 25.452925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791189, 33.693150, 25.486265>,  <30.360842, 33.236404, 25.973938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791189, 33.693150, 25.486265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.681070, 33.380459, 25.262436>,  <30.615000, 33.192844, 25.128139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.681070, 33.380459, 25.262436>,  <30.791189, 33.693150, 25.486265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681070, 33.380459, 25.262436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177651, 0.613405, -0.769529,
		0.944803, -0.112440, -0.307742,
		-0.275296, -0.781724, -0.559572,
		30.598482, 33.145943, 25.094564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120596, 33.796692, 24.811491>,  <30.791189, 33.693150, 25.486265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120596, 33.796692, 24.811491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.835241, 33.531544, 24.720558>,  <30.664028, 33.372456, 24.665998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.835241, 33.531544, 24.720558>,  <31.120596, 33.796692, 24.811491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835241, 33.531544, 24.720558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329696, 0.603739, -0.725810,
		0.618375, -0.442826, -0.649244,
		-0.713381, -0.662876, -0.227339,
		30.621225, 33.332684, 24.652357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082104, 33.879787, 24.094437>,  <31.120596, 33.796692, 24.811491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082104, 33.879787, 24.094437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740185, 33.690727, 24.180149>,  <30.535032, 33.577290, 24.231577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740185, 33.690727, 24.180149>,  <31.082104, 33.879787, 24.094437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740185, 33.690727, 24.180149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484946, 0.580477, -0.654121,
		0.184788, -0.663057, -0.725403,
		-0.854799, -0.472655, 0.214282,
		30.483746, 33.548931, 24.244434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888308, 33.708458, 23.448687>,  <31.082104, 33.879787, 24.094437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888308, 33.708458, 23.448687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.579506, 33.710842, 23.702923>,  <30.394226, 33.712273, 23.855465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.579506, 33.710842, 23.702923>,  <30.888308, 33.708458, 23.448687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579506, 33.710842, 23.702923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573880, 0.423357, -0.701021,
		-0.273263, -0.905943, -0.323410,
		-0.772003, 0.005964, 0.635591,
		30.347904, 33.712631, 23.893600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407351, 33.434761, 23.113569>,  <30.888308, 33.708458, 23.448687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407351, 33.434761, 23.113569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.235847, 33.668381, 23.389267>,  <30.132946, 33.808552, 23.554686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.235847, 33.668381, 23.389267>,  <30.407351, 33.434761, 23.113569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235847, 33.668381, 23.389267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582153, 0.404795, -0.705152,
		-0.690845, -0.703583, 0.166447,
		-0.428756, 0.584048, 0.689243,
		30.107222, 33.843594, 23.596041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723551, 33.473251, 22.834320>,  <30.407351, 33.434761, 23.113569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723551, 33.473251, 22.834320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.752291, 33.766266, 23.105091>,  <29.769535, 33.942074, 23.267553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.752291, 33.766266, 23.105091>,  <29.723551, 33.473251, 22.834320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752291, 33.766266, 23.105091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620515, 0.564182, -0.544665,
		-0.780896, -0.380910, 0.495084,
		0.071849, 0.732534, 0.676928,
		29.773846, 33.986027, 23.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035904, 33.717648, 23.010691>,  <29.723551, 33.473251, 22.834320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035904, 33.717648, 23.010691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.316065, 33.996784, 23.070621>,  <29.484161, 34.164268, 23.106579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.316065, 33.996784, 23.070621>,  <29.035904, 33.717648, 23.010691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316065, 33.996784, 23.070621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499528, 0.629203, -0.595462,
		-0.509810, 0.342222, 0.789289,
		0.700403, 0.697845, 0.149825,
		29.526186, 34.206139, 23.115568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647686, 34.256355, 23.061270>,  <29.035904, 33.717648, 23.010691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647686, 34.256355, 23.061270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005728, 34.402889, 22.959610>,  <29.220552, 34.490810, 22.898615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005728, 34.402889, 22.959610>,  <28.647686, 34.256355, 23.061270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005728, 34.402889, 22.959610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439048, 0.624939, -0.645514,
		-0.077645, 0.689385, 0.720222,
		0.895102, 0.366333, -0.254150,
		29.274258, 34.512791, 22.883366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957157, 34.633324, 23.222500>,  <28.647686, 34.256355, 23.061270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957157, 34.633324, 23.222500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.775003, 34.985695, 23.274029>,  <27.665710, 35.197117, 23.304945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.775003, 34.985695, 23.274029>,  <27.957157, 34.633324, 23.222500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775003, 34.985695, 23.274029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196867, -0.041475, 0.979552,
		0.868256, 0.471434, -0.154538,
		-0.455385, 0.880926, 0.128821,
		27.638388, 35.249973, 23.312675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394306, 35.061337, 23.589441>,  <27.957157, 34.633324, 23.222500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394306, 35.061337, 23.589441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.009272, 35.150658, 23.650845>,  <27.778252, 35.204250, 23.687687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.009272, 35.150658, 23.650845>,  <28.394306, 35.061337, 23.589441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009272, 35.150658, 23.650845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129080, -0.120237, 0.984318,
		0.238258, 0.967305, 0.086914,
		-0.962586, 0.223302, 0.153507,
		27.720495, 35.217648, 23.696898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532290, 35.416382, 24.145742>,  <28.394306, 35.061337, 23.589441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532290, 35.416382, 24.145742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.151037, 35.300838, 24.109730>,  <27.922287, 35.231514, 24.088121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.151037, 35.300838, 24.109730>,  <28.532290, 35.416382, 24.145742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151037, 35.300838, 24.109730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016258, -0.248243, 0.968561,
		-0.302127, 0.924627, 0.231911,
		-0.953129, -0.288859, -0.090034,
		27.865099, 35.214180, 24.082720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251688, 35.635883, 24.726580>,  <28.532290, 35.416382, 24.145742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251688, 35.635883, 24.726580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.001276, 35.348228, 24.605965>,  <27.851028, 35.175636, 24.533596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.001276, 35.348228, 24.605965>,  <28.251688, 35.635883, 24.726580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001276, 35.348228, 24.605965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130244, -0.284827, 0.949689,
		-0.768845, 0.633808, 0.084647,
		-0.626030, -0.719139, -0.301538,
		27.813467, 35.132488, 24.515503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763712, 35.584133, 25.274097>,  <28.251688, 35.635883, 24.726580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763712, 35.584133, 25.274097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.743650, 35.247551, 25.058899>,  <27.731613, 35.045601, 24.929779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.743650, 35.247551, 25.058899>,  <27.763712, 35.584133, 25.274097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743650, 35.247551, 25.058899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006256, -0.538928, 0.842328,
		-0.998722, 0.038879, 0.032292,
		-0.050152, -0.841454, -0.537996,
		27.728605, 34.995113, 24.897501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131296, 35.226257, 25.457272>,  <27.763712, 35.584133, 25.274097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131296, 35.226257, 25.457272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.389036, 34.952942, 25.319908>,  <27.543680, 34.788952, 25.237490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.389036, 34.952942, 25.319908>,  <27.131296, 35.226257, 25.457272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389036, 34.952942, 25.319908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081993, -0.508196, 0.857329,
		-0.760324, -0.524261, -0.383481,
		0.644348, -0.683291, -0.343408,
		27.582340, 34.747955, 25.216887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790752, 34.612404, 25.638832>,  <27.131296, 35.226257, 25.457272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790752, 34.612404, 25.638832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.162029, 34.497200, 25.544586>,  <27.384794, 34.428078, 25.488039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.162029, 34.497200, 25.544586>,  <26.790752, 34.612404, 25.638832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162029, 34.497200, 25.544586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021064, -0.672846, 0.739482,
		-0.371507, -0.681418, -0.630597,
		0.928191, -0.288006, -0.235614,
		27.440487, 34.410797, 25.473902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833809, 33.892456, 25.682549>,  <26.790752, 34.612404, 25.638832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833809, 33.892456, 25.682549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.216053, 34.007092, 25.709888>,  <27.445400, 34.075874, 25.726292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.216053, 34.007092, 25.709888>,  <26.833809, 33.892456, 25.682549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216053, 34.007092, 25.709888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136194, -0.635398, 0.760080,
		0.261263, -0.717032, -0.646225,
		0.955611, 0.286593, 0.068350,
		27.502737, 34.093071, 25.730392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179134, 33.277679, 25.636839>,  <26.833809, 33.892456, 25.682549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179134, 33.277679, 25.636839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.434818, 33.530918, 25.811470>,  <27.588228, 33.682861, 25.916248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.434818, 33.530918, 25.811470>,  <27.179134, 33.277679, 25.636839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434818, 33.530918, 25.811470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078192, -0.618260, 0.782075,
		0.765048, -0.465771, -0.444700,
		0.639208, 0.633097, 0.436579,
		27.626581, 33.720848, 25.942444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657406, 32.859665, 26.014151>,  <27.179134, 33.277679, 25.636839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657406, 32.859665, 26.014151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.787113, 33.208931, 26.159718>,  <27.864937, 33.418491, 26.247059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.787113, 33.208931, 26.159718>,  <27.657406, 32.859665, 26.014151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787113, 33.208931, 26.159718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295829, -0.459014, 0.837730,
		0.898519, -0.163990, -0.407150,
		0.324267, 0.873163, 0.363919,
		27.884394, 33.470879, 26.268894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357983, 32.746162, 25.931892>,  <27.657406, 32.859665, 26.014151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357983, 32.746162, 25.931892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.238676, 33.014099, 26.203876>,  <28.167091, 33.174862, 26.367067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.238676, 33.014099, 26.203876>,  <28.357983, 32.746162, 25.931892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238676, 33.014099, 26.203876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111694, -0.682995, 0.721833,
		0.947925, 0.291245, 0.128896,
		-0.298266, 0.669846, 0.679958,
		28.149197, 33.215054, 26.407864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917942, 32.747086, 26.494984>,  <28.357983, 32.746162, 25.931892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917942, 32.747086, 26.494984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.590744, 32.909088, 26.658375>,  <28.394424, 33.006290, 26.756411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.590744, 32.909088, 26.658375>,  <28.917942, 32.747086, 26.494984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590744, 32.909088, 26.658375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123650, -0.569719, 0.812485,
		0.561778, 0.715117, 0.415949,
		-0.817995, 0.405004, 0.408480,
		28.345345, 33.030590, 26.780918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068970, 32.865253, 27.254559>,  <28.917942, 32.747086, 26.494984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068970, 32.865253, 27.254559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.670321, 32.877522, 27.224083>,  <28.431131, 32.884884, 27.205797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.670321, 32.877522, 27.224083>,  <29.068970, 32.865253, 27.254559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670321, 32.877522, 27.224083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082086, -0.341331, 0.936352,
		0.002714, 0.939442, 0.342696,
		-0.996622, 0.030672, -0.076188,
		28.371334, 32.886723, 27.201227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787849, 33.226372, 27.925842>,  <29.068970, 32.865253, 27.254559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787849, 33.226372, 27.925842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.557045, 32.966263, 27.728176>,  <28.418562, 32.810196, 27.609577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.557045, 32.966263, 27.728176>,  <28.787849, 33.226372, 27.925842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557045, 32.966263, 27.728176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029666, -0.587961, 0.808345,
		-0.816196, 0.481085, 0.319970,
		-0.577013, -0.650276, -0.494163,
		28.383942, 32.771179, 27.579927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244980, 33.074902, 28.384880>,  <28.787849, 33.226372, 27.925842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244980, 33.074902, 28.384880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.206230, 32.786442, 28.110493>,  <28.182981, 32.613365, 27.945860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.206230, 32.786442, 28.110493>,  <28.244980, 33.074902, 28.384880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206230, 32.786442, 28.110493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030396, -0.686746, 0.726262,
		-0.994833, 0.091206, 0.044607,
		-0.096873, -0.721153, -0.685969,
		28.177168, 32.570095, 27.904701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613747, 32.751183, 28.602640>,  <28.244980, 33.074902, 28.384880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613747, 32.751183, 28.602640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.798613, 32.482552, 28.370991>,  <27.909533, 32.321373, 28.232000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.798613, 32.482552, 28.370991>,  <27.613747, 32.751183, 28.602640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798613, 32.482552, 28.370991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206799, -0.716671, 0.666046,
		-0.862343, -0.188061, -0.470103,
		0.462166, -0.671577, -0.579125,
		27.937263, 32.281078, 28.197254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275892, 32.246452, 28.685505>,  <27.613747, 32.751183, 28.602640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275892, 32.246452, 28.685505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.602673, 32.081776, 28.523960>,  <27.798740, 31.982971, 28.427032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.602673, 32.081776, 28.523960>,  <27.275892, 32.246452, 28.685505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602673, 32.081776, 28.523960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002300, -0.697959, 0.716134,
		-0.576702, -0.585976, -0.569252,
		0.816952, -0.411686, -0.403861,
		27.847757, 31.958269, 28.402802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061571, 31.496799, 28.469011>,  <27.275892, 32.246452, 28.685505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061571, 31.496799, 28.469011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.458071, 31.517891, 28.517410>,  <27.695971, 31.530546, 28.546450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.458071, 31.517891, 28.517410>,  <27.061571, 31.496799, 28.469011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458071, 31.517891, 28.517410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005716, -0.898729, 0.438467,
		0.131865, -0.435322, -0.890565,
		0.991251, 0.052728, 0.121000,
		27.755445, 31.533709, 28.553711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.460258, 30.762041, 28.405518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.692616, 31.003292, 28.624168>,  <27.832029, 31.148043, 28.755360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.692616, 31.003292, 28.624168>,  <27.460258, 30.762041, 28.405518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692616, 31.003292, 28.624168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170990, -0.746982, 0.642480,
		0.795818, -0.279744, -0.537045,
		0.580893, 0.603126, 0.546628,
		27.866884, 31.184231, 28.788157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961527, 30.292465, 28.618242>,  <27.460258, 30.762041, 28.405518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961527, 30.292465, 28.618242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063242, 30.600407, 28.852394>,  <28.124271, 30.785172, 28.992886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063242, 30.600407, 28.852394>,  <27.961527, 30.292465, 28.618242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063242, 30.600407, 28.852394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341556, -0.637757, 0.690366,
		0.904808, 0.024389, -0.425120,
		0.254286, 0.769851, 0.585378,
		28.139528, 30.831362, 29.028008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661020, 30.200104, 28.810135>,  <27.961527, 30.292465, 28.618242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661020, 30.200104, 28.810135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.520012, 30.452930, 29.086170>,  <28.435408, 30.604626, 29.251791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.520012, 30.452930, 29.086170>,  <28.661020, 30.200104, 28.810135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520012, 30.452930, 29.086170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178294, -0.678557, 0.712581,
		0.918662, 0.374238, 0.126512,
		-0.352521, 0.632065, 0.690089,
		28.414255, 30.642550, 29.293198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173689, 30.187386, 29.425207>,  <28.661020, 30.200104, 28.810135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173689, 30.187386, 29.425207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.819218, 30.312805, 29.561661>,  <28.606535, 30.388058, 29.643534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.819218, 30.312805, 29.561661>,  <29.173689, 30.187386, 29.425207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819218, 30.312805, 29.561661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074404, -0.630391, 0.772704,
		0.457330, 0.710135, 0.535310,
		-0.886179, 0.313551, 0.341133,
		28.553364, 30.406870, 29.664001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231148, 30.318638, 30.187654>,  <29.173689, 30.187386, 29.425207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231148, 30.318638, 30.187654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.831511, 30.329193, 30.200996>,  <28.591728, 30.335527, 30.209002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.831511, 30.329193, 30.200996>,  <29.231148, 30.318638, 30.187654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831511, 30.329193, 30.200996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012238, -0.572717, 0.819662,
		0.040734, 0.819329, 0.571876,
		-0.999095, 0.026389, 0.033356,
		28.531782, 30.337111, 30.211002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974934, 30.516436, 30.942511>,  <29.231148, 30.318638, 30.187654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974934, 30.516436, 30.942511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.729519, 30.291233, 30.721027>,  <28.582270, 30.156111, 30.588137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.729519, 30.291233, 30.721027>,  <28.974934, 30.516436, 30.942511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729519, 30.291233, 30.721027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020593, -0.712364, 0.701508,
		-0.789396, 0.418999, 0.448658,
		-0.613539, -0.563007, -0.553709,
		28.545458, 30.122332, 30.554914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384962, 30.331116, 31.382618>,  <28.974934, 30.516436, 30.942511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384962, 30.331116, 31.382618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.409590, 30.061310, 31.088341>,  <28.424366, 29.899427, 30.911776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.409590, 30.061310, 31.088341>,  <28.384962, 30.331116, 31.382618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409590, 30.061310, 31.088341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246646, -0.724511, 0.643622,
		-0.967148, 0.141828, -0.210973,
		0.061568, -0.674513, -0.735691,
		28.428061, 29.858955, 30.867634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807364, 29.915487, 31.421888>,  <28.384962, 30.331116, 31.382618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807364, 29.915487, 31.421888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.044531, 29.682262, 31.199722>,  <28.186832, 29.542328, 31.066423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.044531, 29.682262, 31.199722>,  <27.807364, 29.915487, 31.421888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044531, 29.682262, 31.199722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247469, -0.788288, 0.563348,
		-0.766293, -0.196573, -0.611682,
		0.592920, -0.583061, -0.555414,
		28.222406, 29.507343, 31.033098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392153, 29.369560, 31.215908>,  <27.807364, 29.915487, 31.421888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392153, 29.369560, 31.215908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771448, 29.243435, 31.200829>,  <27.999025, 29.167759, 31.191780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771448, 29.243435, 31.200829>,  <27.392153, 29.369560, 31.215908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771448, 29.243435, 31.200829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239543, -0.788162, 0.566938,
		-0.208477, -0.528562, -0.822897,
		0.948238, -0.315313, -0.037701,
		28.055920, 29.148840, 31.189518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351700, 28.672958, 31.161922>,  <27.392153, 29.369560, 31.215908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351700, 28.672958, 31.161922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.731840, 28.701328, 31.283119>,  <27.959925, 28.718349, 31.355837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.731840, 28.701328, 31.283119>,  <27.351700, 28.672958, 31.161922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731840, 28.701328, 31.283119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198065, -0.613114, 0.764762,
		0.240009, -0.786804, -0.568626,
		0.950351, 0.070925, 0.302991,
		28.016945, 28.722605, 31.374016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597488, 27.934233, 31.295467>,  <27.351700, 28.672958, 31.161922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597488, 27.934233, 31.295467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.842106, 28.188686, 31.483658>,  <27.988876, 28.341358, 31.596573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.842106, 28.188686, 31.483658>,  <27.597488, 27.934233, 31.295467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842106, 28.188686, 31.483658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187056, -0.461530, 0.867179,
		0.768781, -0.618324, -0.163254,
		0.611544, 0.636133, 0.470477,
		28.025570, 28.379526, 31.624802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001652, 27.438347, 31.605335>,  <27.597488, 27.934233, 31.295467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001652, 27.438347, 31.605335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034285, 27.793568, 31.786316>,  <28.053864, 28.006701, 31.894903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034285, 27.793568, 31.786316>,  <28.001652, 27.438347, 31.605335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034285, 27.793568, 31.786316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223333, -0.426130, 0.876661,
		0.971322, -0.172567, 0.163566,
		0.081582, 0.888050, 0.452450,
		28.058760, 28.059982, 31.922050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457859, 27.297646, 32.119926>,  <28.001652, 27.438347, 31.605335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457859, 27.297646, 32.119926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.254398, 27.633595, 32.195702>,  <28.132322, 27.835165, 32.241169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.254398, 27.633595, 32.195702>,  <28.457859, 27.297646, 32.119926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254398, 27.633595, 32.195702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016671, -0.229598, 0.973143,
		0.860812, 0.491831, 0.130787,
		-0.508650, 0.839873, 0.189441,
		28.101803, 27.885557, 32.252533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756100, 27.575502, 32.767998>,  <28.457859, 27.297646, 32.119926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756100, 27.575502, 32.767998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383522, 27.717216, 32.734783>,  <28.159975, 27.802246, 32.714855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383522, 27.717216, 32.734783>,  <28.756100, 27.575502, 32.767998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383522, 27.717216, 32.734783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172787, -0.229786, 0.957780,
		0.320249, 0.906465, 0.275249,
		-0.931443, 0.354288, -0.083036,
		28.104090, 27.823503, 32.709873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650318, 27.874666, 33.456345>,  <28.756100, 27.575502, 32.767998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650318, 27.874666, 33.456345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285505, 27.825794, 33.299747>,  <28.066618, 27.796471, 33.205788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285505, 27.825794, 33.299747>,  <28.650318, 27.874666, 33.456345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285505, 27.825794, 33.299747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373566, -0.146452, 0.915969,
		-0.169249, 0.981643, 0.087927,
		-0.912032, -0.122181, -0.391496,
		28.011896, 27.789141, 33.182301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089520, 28.444359, 33.745037>,  <28.650318, 27.874666, 33.456345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089520, 28.444359, 33.745037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.869093, 28.136803, 33.615341>,  <27.736837, 27.952269, 33.537525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.869093, 28.136803, 33.615341>,  <28.089520, 28.444359, 33.745037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869093, 28.136803, 33.615341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583435, 0.077215, 0.808481,
		-0.596599, 0.634699, -0.491150,
		-0.551066, -0.768893, -0.324239,
		27.703773, 27.906136, 33.518070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365650, 28.576702, 33.951492>,  <28.089520, 28.444359, 33.745037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365650, 28.576702, 33.951492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.350182, 28.185795, 33.868114>,  <27.340900, 27.951250, 33.818089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.350182, 28.185795, 33.868114>,  <27.365650, 28.576702, 33.951492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350182, 28.185795, 33.868114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490161, -0.163226, 0.856213,
		-0.870774, 0.135280, -0.472707,
		-0.038671, -0.977270, -0.208442,
		27.338581, 27.892614, 33.805580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861439, 28.391495, 34.323921>,  <27.365650, 28.576702, 33.951492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861439, 28.391495, 34.323921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.017830, 28.040077, 34.214161>,  <27.111664, 27.829227, 34.148304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.017830, 28.040077, 34.214161>,  <26.861439, 28.391495, 34.323921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017830, 28.040077, 34.214161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462348, -0.445259, 0.766797,
		-0.795846, -0.172931, -0.580280,
		0.390978, -0.878544, -0.274403,
		27.135124, 27.776514, 34.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348200, 27.881369, 34.242908>,  <26.861439, 28.391495, 34.323921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348200, 27.881369, 34.242908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.672995, 27.675125, 34.352322>,  <26.867872, 27.551378, 34.417969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.672995, 27.675125, 34.352322>,  <26.348200, 27.881369, 34.242908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672995, 27.675125, 34.352322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484165, -0.333300, 0.809009,
		-0.325930, -0.789363, -0.520265,
		0.812006, -0.515574, 0.273549,
		26.916592, 27.520443, 34.434383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012955, 27.274832, 34.520180>,  <26.348200, 27.881369, 34.242908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012955, 27.274832, 34.520180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.389557, 27.309521, 34.650436>,  <26.615519, 27.330334, 34.728592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.389557, 27.309521, 34.650436>,  <26.012955, 27.274832, 34.520180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389557, 27.309521, 34.650436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326856, -0.000252, 0.945074,
		0.082041, -0.996233, 0.028109,
		0.941506, 0.086723, 0.325646,
		26.672009, 27.335537, 34.748131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056295, 26.779139, 35.113274>,  <26.012955, 27.274832, 34.520180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056295, 26.779139, 35.113274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.360798, 27.035809, 35.150677>,  <26.543499, 27.189810, 35.173119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.360798, 27.035809, 35.150677>,  <26.056295, 26.779139, 35.113274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360798, 27.035809, 35.150677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117025, -0.005882, 0.993111,
		0.637805, -0.766954, 0.070614,
		0.761255, 0.641676, 0.093504,
		26.589174, 27.228312, 35.178726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580011, 26.433069, 35.588943>,  <26.056295, 26.779139, 35.113274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580011, 26.433069, 35.588943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.555283, 26.831547, 35.564354>,  <26.540445, 27.070633, 35.549603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.555283, 26.831547, 35.564354>,  <26.580011, 26.433069, 35.588943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555283, 26.831547, 35.564354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293588, 0.040713, 0.955065,
		0.953931, 0.077093, 0.289953,
		-0.061824, 0.996192, -0.061471,
		26.536736, 27.130405, 35.545914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256258, 26.086082, 35.383076>,  <26.580011, 26.433069, 35.588943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256258, 26.086082, 35.383076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.454514, 26.104240, 35.730011>,  <27.573467, 26.115135, 35.938171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.454514, 26.104240, 35.730011>,  <27.256258, 26.086082, 35.383076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454514, 26.104240, 35.730011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867189, 0.029576, -0.497100,
		-0.048219, 0.998531, -0.024708,
		0.495639, 0.045396, 0.867341,
		27.603205, 26.117859, 35.990215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765980, 26.587982, 35.388084>,  <27.256258, 26.086082, 35.383076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765980, 26.587982, 35.388084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.920181, 26.341221, 35.662548>,  <28.012703, 26.193163, 35.827225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.920181, 26.341221, 35.662548>,  <27.765980, 26.587982, 35.388084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920181, 26.341221, 35.662548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906308, 0.113583, -0.407069,
		0.173187, 0.778799, 0.602892,
		0.385504, -0.616904, 0.686160,
		28.035831, 26.156149, 35.868397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189884, 27.022018, 35.848869>,  <27.765980, 26.587982, 35.388084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189884, 27.022018, 35.848869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.311621, 26.641155, 35.837749>,  <28.384663, 26.412638, 35.831078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.311621, 26.641155, 35.837749>,  <28.189884, 27.022018, 35.848869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311621, 26.641155, 35.837749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895963, 0.296047, -0.331069,
		0.323460, 0.075850, 0.943197,
		0.304342, -0.952157, -0.027801,
		28.402924, 26.355509, 35.829411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831940, 27.012987, 36.216568>,  <28.189884, 27.022018, 35.848869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831940, 27.012987, 36.216568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.813581, 26.709934, 35.956142>,  <28.802567, 26.528103, 35.799885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.813581, 26.709934, 35.956142>,  <28.831940, 27.012987, 36.216568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813581, 26.709934, 35.956142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872099, 0.287462, -0.395991,
		0.487172, -0.585968, 0.647537,
		-0.045896, -0.757632, -0.651066,
		28.799812, 26.482645, 35.760822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480791, 26.665125, 36.143661>,  <28.831940, 27.012987, 36.216568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480791, 26.665125, 36.143661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313837, 26.519897, 35.810444>,  <29.213665, 26.432760, 35.610512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313837, 26.519897, 35.810444>,  <29.480791, 26.665125, 36.143661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313837, 26.519897, 35.810444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871233, 0.100737, -0.480422,
		0.258345, -0.926301, 0.274271,
		-0.417386, -0.363068, -0.833048,
		29.188622, 26.410976, 35.560528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111244, 26.391806, 35.773403>,  <29.480791, 26.665125, 36.143661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111244, 26.391806, 35.773403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833889, 26.391449, 35.485180>,  <29.667475, 26.391235, 35.312244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833889, 26.391449, 35.485180>,  <30.111244, 26.391806, 35.773403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833889, 26.391449, 35.485180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717678, 0.088545, -0.690723,
		0.064413, -0.996072, -0.060761,
		-0.693390, -0.000885, -0.720562,
		29.625872, 26.391182, 35.269012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299423, 25.909657, 35.311752>,  <30.111244, 26.391806, 35.773403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299423, 25.909657, 35.311752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069458, 26.174793, 35.119869>,  <29.931479, 26.333876, 35.004738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069458, 26.174793, 35.119869>,  <30.299423, 25.909657, 35.311752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069458, 26.174793, 35.119869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687996, 0.074277, -0.721903,
		-0.442876, -0.745067, -0.498735,
		-0.574911, 0.662841, -0.479707,
		29.896984, 26.373646, 34.975956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262642, 25.619183, 34.561817>,  <30.299423, 25.909657, 35.311752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262642, 25.619183, 34.561817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136248, 25.997761, 34.535294>,  <30.060411, 26.224907, 34.519379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136248, 25.997761, 34.535294>,  <30.262642, 25.619183, 34.561817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136248, 25.997761, 34.535294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621379, 0.153629, -0.768301,
		-0.716967, -0.283974, -0.636645,
		-0.315984, 0.946445, -0.066308,
		30.041452, 26.281694, 34.515400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205143, 25.726828, 33.830807>,  <30.262642, 25.619183, 34.561817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205143, 25.726828, 33.830807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211685, 26.092117, 33.993660>,  <30.215611, 26.311291, 34.091373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211685, 26.092117, 33.993660>,  <30.205143, 25.726828, 33.830807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211685, 26.092117, 33.993660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522506, 0.339357, -0.782192,
		-0.852479, 0.225524, -0.471613,
		0.016357, 0.913223, 0.407132,
		30.216593, 26.366085, 34.115799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054272, 26.177118, 33.280174>,  <30.205143, 25.726828, 33.830807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054272, 26.177118, 33.280174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280727, 26.346226, 33.563229>,  <30.416601, 26.447691, 33.733063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280727, 26.346226, 33.563229>,  <30.054272, 26.177118, 33.280174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280727, 26.346226, 33.563229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692396, 0.221932, -0.686538,
		-0.447294, 0.878643, -0.167078,
		0.566141, 0.422768, 0.707638,
		30.450569, 26.473057, 33.775520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377710, 26.033878, 32.702652>,  <30.054272, 26.177118, 33.280174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377710, 26.033878, 32.702652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.457975, 26.362846, 32.915577>,  <30.506134, 26.560228, 33.043331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.457975, 26.362846, 32.915577>,  <30.377710, 26.033878, 32.702652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457975, 26.362846, 32.915577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163735, 0.507566, -0.845912,
		-0.965881, 0.256901, -0.032810,
		0.200662, 0.822422, 0.532312,
		30.518173, 26.609573, 33.075272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991308, 26.549511, 32.503269>,  <30.377710, 26.033878, 32.702652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991308, 26.549511, 32.503269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.285236, 26.755142, 32.680248>,  <30.461594, 26.878521, 32.786434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.285236, 26.755142, 32.680248>,  <29.991308, 26.549511, 32.503269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285236, 26.755142, 32.680248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057007, 0.696828, -0.714969,
		-0.675861, 0.500152, 0.541350,
		0.734821, 0.514080, 0.442446,
		30.505682, 26.909367, 32.812981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733931, 27.266512, 32.542610>,  <29.991308, 26.549511, 32.503269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733931, 27.266512, 32.542610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133881, 27.260303, 32.543449>,  <30.373852, 27.256578, 32.543953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133881, 27.260303, 32.543449>,  <29.733931, 27.266512, 32.542610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133881, 27.260303, 32.543449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012058, 0.677193, -0.735707,
		0.009997, 0.735642, 0.677297,
		0.999877, -0.015522, 0.002100,
		30.433844, 27.255648, 32.544079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875240, 27.926376, 32.436226>,  <29.733931, 27.266512, 32.542610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875240, 27.926376, 32.436226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226126, 27.762676, 32.335819>,  <30.436657, 27.664455, 32.275574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226126, 27.762676, 32.335819>,  <29.875240, 27.926376, 32.436226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226126, 27.762676, 32.335819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035745, 0.577069, -0.815913,
		0.478768, 0.706757, 0.520841,
		0.877213, -0.409251, -0.251019,
		30.489290, 27.639900, 32.260513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335337, 28.444992, 32.369896>,  <29.875240, 27.926376, 32.436226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335337, 28.444992, 32.369896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497044, 28.147793, 32.156532>,  <30.594067, 27.969473, 32.028515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497044, 28.147793, 32.156532>,  <30.335337, 28.444992, 32.369896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497044, 28.147793, 32.156532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090964, 0.612957, -0.784862,
		0.910107, 0.268772, 0.315383,
		0.404265, -0.742997, -0.533409,
		30.618322, 27.924894, 31.996510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879063, 28.743494, 31.894812>,  <30.335337, 28.444992, 32.369896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879063, 28.743494, 31.894812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791040, 28.399811, 31.710060>,  <30.738226, 28.193600, 31.599209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791040, 28.399811, 31.710060>,  <30.879063, 28.743494, 31.894812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791040, 28.399811, 31.710060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147204, 0.438815, -0.886438,
		0.964316, -0.263058, 0.029915,
		-0.220057, -0.859211, -0.461879,
		30.725023, 28.142048, 31.571497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393389, 28.785509, 31.415375>,  <30.879063, 28.743494, 31.894812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393389, 28.785509, 31.415375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110006, 28.532635, 31.289879>,  <30.939978, 28.380911, 31.214581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110006, 28.532635, 31.289879>,  <31.393389, 28.785509, 31.415375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110006, 28.532635, 31.289879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078310, 0.371387, -0.925170,
		0.701399, -0.680010, -0.213604,
		-0.708454, -0.632186, -0.313742,
		30.897470, 28.342979, 31.195757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679256, 28.523184, 30.819490>,  <31.393389, 28.785509, 31.415375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679256, 28.523184, 30.819490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.282635, 28.477303, 30.795273>,  <31.044662, 28.449774, 30.780743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.282635, 28.477303, 30.795273>,  <31.679256, 28.523184, 30.819490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282635, 28.477303, 30.795273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034142, 0.219508, -0.975013,
		0.125123, -0.968845, -0.213738,
		-0.991554, -0.114699, -0.060544,
		30.985168, 28.442892, 30.777109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629850, 28.061350, 30.235592>,  <31.679256, 28.523184, 30.819490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629850, 28.061350, 30.235592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284731, 28.250771, 30.306393>,  <31.077660, 28.364424, 30.348873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284731, 28.250771, 30.306393>,  <31.629850, 28.061350, 30.235592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284731, 28.250771, 30.306393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079199, 0.219182, -0.972464,
		-0.499307, -0.853058, -0.151605,
		-0.862798, 0.473551, 0.177001,
		31.025892, 28.392836, 30.359493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370819, 27.908268, 29.680334>,  <31.629850, 28.061350, 30.235592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370819, 27.908268, 29.680334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110220, 28.181496, 29.812374>,  <30.953861, 28.345432, 29.891598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110220, 28.181496, 29.812374>,  <31.370819, 27.908268, 29.680334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110220, 28.181496, 29.812374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073233, 0.489705, -0.868807,
		-0.755108, -0.541851, -0.369065,
		-0.651497, 0.683072, 0.330098,
		30.914770, 28.386417, 29.911404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835104, 27.948181, 29.220999>,  <31.370819, 27.908268, 29.680334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835104, 27.948181, 29.220999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851543, 28.306145, 29.398739>,  <30.861408, 28.520924, 29.505383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851543, 28.306145, 29.398739>,  <30.835104, 27.948181, 29.220999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851543, 28.306145, 29.398739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094518, 0.446215, -0.889920,
		-0.994675, -0.005423, 0.102924,
		0.041101, 0.894909, 0.444351,
		30.863874, 28.574617, 29.532043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314863, 28.194479, 28.956587>,  <30.835104, 27.948181, 29.220999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314863, 28.194479, 28.956587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523516, 28.508934, 29.089184>,  <30.648706, 28.697607, 29.168743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523516, 28.508934, 29.089184>,  <30.314863, 28.194479, 28.956587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523516, 28.508934, 29.089184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129416, 0.456956, -0.880024,
		-0.843298, 0.416148, 0.340101,
		0.521631, 0.786138, 0.331494,
		30.680006, 28.744776, 29.188633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.651920, 42.525829, 18.141638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.973577, 42.736584, 18.251728>,  <23.166573, 42.863037, 18.317783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.973577, 42.736584, 18.251728>,  <22.651920, 42.525829, 18.141638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.973577, 42.736584, 18.251728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308024, -0.765331, 0.565146,
		0.508405, -0.369681, -0.777727,
		0.804143, 0.526881, 0.275228,
		23.214821, 42.894650, 18.334297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.202080, 42.075386, 17.969791>,  <22.651920, 42.525829, 18.141638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.202080, 42.075386, 17.969791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.339520, 42.332878, 18.243301>,  <23.421984, 42.487373, 18.407408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.339520, 42.332878, 18.243301>,  <23.202080, 42.075386, 17.969791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.339520, 42.332878, 18.243301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314201, -0.764944, 0.562262,
		0.884996, 0.021650, -0.465095,
		0.343599, 0.643733, 0.683774,
		23.442598, 42.525997, 18.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868805, 41.778198, 18.181137>,  <23.202080, 42.075386, 17.969791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868805, 41.778198, 18.181137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.738731, 42.025127, 18.467678>,  <23.660686, 42.173286, 18.639603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.738731, 42.025127, 18.467678>,  <23.868805, 41.778198, 18.181137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.738731, 42.025127, 18.467678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096272, -0.731977, 0.674493,
		0.940737, 0.288300, 0.178596,
		-0.325185, 0.617327, 0.716354,
		23.641176, 42.210327, 18.682585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.356424, 41.787571, 18.702337>,  <23.868805, 41.778198, 18.181137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.356424, 41.787571, 18.702337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.989935, 41.868317, 18.840778>,  <23.770041, 41.916763, 18.923843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.989935, 41.868317, 18.840778>,  <24.356424, 41.787571, 18.702337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.989935, 41.868317, 18.840778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159740, -0.608155, 0.777580,
		0.367448, 0.767723, 0.524960,
		-0.916223, 0.201863, 0.346102,
		23.715069, 41.928875, 18.944609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438602, 41.991970, 19.319708>,  <24.356424, 41.787571, 18.702337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438602, 41.991970, 19.319708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.046228, 41.917519, 19.342075>,  <23.810804, 41.872849, 19.355495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.046228, 41.917519, 19.342075>,  <24.438602, 41.991970, 19.319708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.046228, 41.917519, 19.342075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163851, -0.637309, 0.752987,
		-0.104514, 0.747792, 0.655655,
		-0.980933, -0.186127, 0.055919,
		23.751949, 41.861679, 19.358850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.209171, 42.032291, 20.041677>,  <24.438602, 41.991970, 19.319708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.209171, 42.032291, 20.041677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.920723, 41.820629, 19.862801>,  <23.747654, 41.693630, 19.755474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.920723, 41.820629, 19.862801>,  <24.209171, 42.032291, 20.041677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.920723, 41.820629, 19.862801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209288, -0.781699, 0.587491,
		-0.660443, 0.330060, 0.674445,
		-0.721119, -0.529157, -0.447190,
		23.704388, 41.661880, 19.728643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.927980, 41.682659, 20.543381>,  <24.209171, 42.032291, 20.041677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.927980, 41.682659, 20.543381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.783968, 41.452427, 20.249691>,  <23.697559, 41.314289, 20.073477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.783968, 41.452427, 20.249691>,  <23.927980, 41.682659, 20.543381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.783968, 41.452427, 20.249691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030943, -0.793935, 0.607215,
		-0.932426, 0.195899, 0.303653,
		-0.360033, -0.575579, -0.734224,
		23.675959, 41.279755, 20.029425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286329, 41.651138, 20.691727>,  <23.927980, 41.682659, 20.543381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286329, 41.651138, 20.691727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.359415, 41.324162, 20.473225>,  <23.403267, 41.127975, 20.342123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.359415, 41.324162, 20.473225>,  <23.286329, 41.651138, 20.691727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.359415, 41.324162, 20.473225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142314, -0.571748, 0.807992,
		-0.972811, -0.069893, -0.220802,
		0.182716, -0.817446, -0.546256,
		23.414230, 41.078926, 20.309347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.799253, 41.223099, 20.843653>,  <23.286329, 41.651138, 20.691727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.799253, 41.223099, 20.843653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.070547, 40.977589, 20.682018>,  <23.233322, 40.830284, 20.585037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.070547, 40.977589, 20.682018>,  <22.799253, 41.223099, 20.843653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.070547, 40.977589, 20.682018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156061, -0.657652, 0.736980,
		-0.718087, -0.436780, -0.541825,
		0.678231, -0.613774, -0.404087,
		23.274017, 40.793457, 20.560793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.481592, 40.547997, 20.772524>,  <22.799253, 41.223099, 20.843653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.481592, 40.547997, 20.772524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.876966, 40.487713, 20.765877>,  <23.114191, 40.451542, 20.761889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.876966, 40.487713, 20.765877>,  <22.481592, 40.547997, 20.772524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.876966, 40.487713, 20.765877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087404, -0.655901, 0.749770,
		-0.123898, -0.739649, -0.661490,
		0.988438, -0.150712, -0.016616,
		23.173498, 40.442501, 20.760891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.525772, 39.836128, 20.898767>,  <22.481592, 40.547997, 20.772524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.525772, 39.836128, 20.898767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.882822, 39.997082, 20.980064>,  <23.097052, 40.093655, 21.028843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.882822, 39.997082, 20.980064>,  <22.525772, 39.836128, 20.898767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.882822, 39.997082, 20.980064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073643, -0.574948, 0.814869,
		0.444747, -0.712404, -0.542845,
		0.892624, 0.402387, 0.203244,
		23.150610, 40.117798, 21.041037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852798, 39.324787, 21.076670>,  <22.525772, 39.836128, 20.898767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852798, 39.324787, 21.076670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.114380, 39.570904, 21.252743>,  <23.271328, 39.718575, 21.358387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.114380, 39.570904, 21.252743>,  <22.852798, 39.324787, 21.076670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.114380, 39.570904, 21.252743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135279, -0.667567, 0.732157,
		0.744343, -0.419247, -0.519793,
		0.653951, 0.615293, 0.440184,
		23.310566, 39.755493, 21.384798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.429979, 39.000854, 21.141796>,  <22.852798, 39.324787, 21.076670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.429979, 39.000854, 21.141796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456068, 39.286175, 21.420925>,  <23.471722, 39.457367, 21.588402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456068, 39.286175, 21.420925>,  <23.429979, 39.000854, 21.141796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.456068, 39.286175, 21.420925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046163, -0.700718, 0.711944,
		0.996802, -0.014222, -0.078632,
		0.065224, 0.713297, 0.697821,
		23.475636, 39.500164, 21.630272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.943787, 38.775238, 21.546740>,  <23.429979, 39.000854, 21.141796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.943787, 38.775238, 21.546740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.772598, 39.043476, 21.789108>,  <23.669886, 39.204418, 21.934530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.772598, 39.043476, 21.789108>,  <23.943787, 38.775238, 21.546740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.772598, 39.043476, 21.789108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094780, -0.633423, 0.767979,
		0.898810, 0.386100, 0.207526,
		-0.427969, 0.670598, 0.605922,
		23.644207, 39.244656, 21.970884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349771, 38.752644, 22.169981>,  <23.943787, 38.775238, 21.546740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349771, 38.752644, 22.169981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.996084, 38.908115, 22.273586>,  <23.783873, 39.001396, 22.335751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.996084, 38.908115, 22.273586>,  <24.349771, 38.752644, 22.169981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996084, 38.908115, 22.273586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033538, -0.605947, 0.794797,
		0.465869, 0.694087, 0.548825,
		-0.884218, 0.388678, 0.259014,
		23.730820, 39.024719, 22.351290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482027, 38.846352, 22.880287>,  <24.349771, 38.752644, 22.169981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482027, 38.846352, 22.880287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.087824, 38.841526, 22.812603>,  <23.851303, 38.838631, 22.771994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.087824, 38.841526, 22.812603>,  <24.482027, 38.846352, 22.880287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.087824, 38.841526, 22.812603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125233, -0.621103, 0.773658,
		-0.114428, 0.783636, 0.610591,
		-0.985506, -0.012062, -0.169209,
		23.792171, 38.837906, 22.761841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.163214, 38.971260, 23.540440>,  <24.482027, 38.846352, 22.880287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.163214, 38.971260, 23.540440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.898031, 38.793339, 23.299561>,  <23.738922, 38.686584, 23.155033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.898031, 38.793339, 23.299561>,  <24.163214, 38.971260, 23.540440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.898031, 38.793339, 23.299561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099624, -0.744800, 0.659809,
		-0.742002, 0.497417, 0.449455,
		-0.662954, -0.444803, -0.602198,
		23.699144, 38.659897, 23.118900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.555861, 38.844578, 23.930914>,  <24.163214, 38.971260, 23.540440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.555861, 38.844578, 23.930914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.565630, 38.585526, 23.626289>,  <23.571491, 38.430096, 23.443514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.565630, 38.585526, 23.626289>,  <23.555861, 38.844578, 23.930914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.565630, 38.585526, 23.626289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121097, -0.758097, 0.640800,
		-0.992340, 0.076573, -0.096941,
		0.024422, -0.647631, -0.761563,
		23.572956, 38.391235, 23.397821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.243202, 38.271233, 24.216961>,  <23.555861, 38.844578, 23.930914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.243202, 38.271233, 24.216961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.374653, 38.086624, 23.887356>,  <23.453524, 37.975861, 23.689592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.374653, 38.086624, 23.887356>,  <23.243202, 38.271233, 24.216961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.374653, 38.086624, 23.887356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063696, -0.881317, 0.468213,
		-0.942309, -0.101381, -0.319022,
		0.328628, -0.461522, -0.824015,
		23.473242, 37.948166, 23.640152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819086, 37.583755, 24.130478>,  <23.243202, 38.271233, 24.216961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819086, 37.583755, 24.130478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.119234, 37.528297, 23.871952>,  <23.299322, 37.495022, 23.716837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.119234, 37.528297, 23.871952>,  <22.819086, 37.583755, 24.130478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.119234, 37.528297, 23.871952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166173, -0.906790, 0.387450,
		-0.639792, -0.398131, -0.657387,
		0.750368, -0.138648, -0.646316,
		23.344345, 37.486702, 23.678057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.644121, 36.928772, 23.683317>,  <22.819086, 37.583755, 24.130478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.644121, 36.928772, 23.683317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.033998, 37.016731, 23.699421>,  <23.267925, 37.069508, 23.709084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.033998, 37.016731, 23.699421>,  <22.644121, 36.928772, 23.683317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.033998, 37.016731, 23.699421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144449, -0.756942, 0.637317,
		0.170619, -0.615372, -0.769550,
		0.974691, 0.219899, 0.040259,
		23.326406, 37.082703, 23.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.960283, 37.390453, 23.701632>,  <22.644121, 36.928772, 23.683317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.960283, 37.390453, 23.701632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.678398, 37.145905, 23.557629>,  <21.509268, 36.999176, 23.471226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.678398, 37.145905, 23.557629>,  <21.960283, 37.390453, 23.701632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678398, 37.145905, 23.557629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197848, 0.656624, -0.727806,
		0.681355, -0.441662, -0.583687,
		-0.704707, -0.611375, -0.360012,
		21.466984, 36.962494, 23.449627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.051939, 37.346684, 22.999250>,  <21.960283, 37.390453, 23.701632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.051939, 37.346684, 22.999250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.674973, 37.284256, 23.117569>,  <21.448793, 37.246799, 23.188560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.674973, 37.284256, 23.117569>,  <22.051939, 37.346684, 22.999250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.674973, 37.284256, 23.117569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323532, 0.649488, -0.688108,
		-0.084725, -0.744183, -0.662581,
		-0.942416, -0.156066, 0.295795,
		21.392248, 37.237434, 23.206308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.651995, 37.022224, 22.409439>,  <22.051939, 37.346684, 22.999250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.651995, 37.022224, 22.409439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.380953, 37.202290, 22.642059>,  <21.218327, 37.310329, 22.781631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.380953, 37.202290, 22.642059>,  <21.651995, 37.022224, 22.409439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.380953, 37.202290, 22.642059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455724, 0.363618, -0.812464,
		-0.577205, -0.815558, -0.041239,
		-0.677606, 0.450164, 0.581551,
		21.177671, 37.337337, 22.816525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034071, 36.955322, 22.044006>,  <21.651995, 37.022224, 22.409439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034071, 36.955322, 22.044006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972553, 37.249325, 22.308163>,  <20.935642, 37.425724, 22.466658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972553, 37.249325, 22.308163>,  <21.034071, 36.955322, 22.044006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972553, 37.249325, 22.308163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370290, 0.576769, -0.728164,
		-0.916097, -0.356524, 0.183460,
		-0.153794, 0.735002, 0.660393,
		20.926414, 37.469826, 22.506281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.331936, 37.135437, 21.994743>,  <21.034071, 36.955322, 22.044006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.331936, 37.135437, 21.994743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.533800, 37.443066, 22.151634>,  <20.654919, 37.627644, 22.245768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.533800, 37.443066, 22.151634>,  <20.331936, 37.135437, 21.994743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.533800, 37.443066, 22.151634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482079, 0.627937, -0.610979,
		-0.716181, 0.119255, 0.687650,
		0.504663, 0.769073, 0.392226,
		20.685200, 37.673786, 22.269302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936987, 37.697063, 22.164965>,  <20.331936, 37.135437, 21.994743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.936987, 37.697063, 22.164965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.291056, 37.877243, 22.118374>,  <20.503498, 37.985352, 22.090420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.291056, 37.877243, 22.118374>,  <19.936987, 37.697063, 22.164965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291056, 37.877243, 22.118374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433082, 0.706226, -0.560075,
		-0.170026, 0.546207, 0.820213,
		0.885173, 0.450447, -0.116476,
		20.556608, 38.012379, 22.083431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792688, 38.366608, 22.135714>,  <19.936987, 37.697063, 22.164965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792688, 38.366608, 22.135714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.156195, 38.345886, 21.970081>,  <20.374298, 38.333454, 21.870703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.156195, 38.345886, 21.970081>,  <19.792688, 38.366608, 22.135714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.156195, 38.345886, 21.970081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225378, 0.774180, -0.591482,
		0.351212, 0.630842, 0.691873,
		0.908766, -0.051803, -0.414079,
		20.428823, 38.330345, 21.845858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925283, 39.007969, 21.974821>,  <19.792688, 38.366608, 22.135714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925283, 39.007969, 21.974821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.199156, 38.809650, 21.761127>,  <20.363480, 38.690659, 21.632912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.199156, 38.809650, 21.761127>,  <19.925283, 39.007969, 21.974821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199156, 38.809650, 21.761127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138870, 0.630815, -0.763405,
		0.715492, 0.596877, 0.363055,
		0.684679, -0.495793, -0.534232,
		20.404560, 38.660912, 21.600859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410282, 39.547623, 21.678907>,  <19.925283, 39.007969, 21.974821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410282, 39.547623, 21.678907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.458179, 39.224655, 21.447826>,  <20.486917, 39.030876, 21.309177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.458179, 39.224655, 21.447826>,  <20.410282, 39.547623, 21.678907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458179, 39.224655, 21.447826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014346, 0.580423, -0.814189,
		0.992701, 0.105780, 0.057918,
		0.119742, -0.807415, -0.577704,
		20.494102, 38.982430, 21.274515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.992531, 39.657814, 21.170361>,  <20.410282, 39.547623, 21.678907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.992531, 39.657814, 21.170361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794865, 39.353279, 21.002472>,  <20.676266, 39.170559, 20.901739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794865, 39.353279, 21.002472>,  <20.992531, 39.657814, 21.170361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794865, 39.353279, 21.002472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240522, 0.583672, -0.775549,
		0.835434, -0.282297, -0.471548,
		-0.494165, -0.761338, -0.419721,
		20.646616, 39.124878, 20.876556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295689, 39.591110, 20.586830>,  <20.992531, 39.657814, 21.170361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295689, 39.591110, 20.586830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.946470, 39.402519, 20.537037>,  <20.736938, 39.289364, 20.507162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.946470, 39.402519, 20.537037>,  <21.295689, 39.591110, 20.586830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946470, 39.402519, 20.537037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125821, 0.464434, -0.876624,
		0.471142, -0.749662, -0.464792,
		-0.873037, -0.471496, -0.124491,
		20.684557, 39.261074, 20.499693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305340, 39.239418, 19.873024>,  <21.295689, 39.591110, 20.586830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305340, 39.239418, 19.873024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.927109, 39.298565, 19.988968>,  <20.700171, 39.334053, 20.058535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.927109, 39.298565, 19.988968>,  <21.305340, 39.239418, 19.873024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.927109, 39.298565, 19.988968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185407, 0.487208, -0.853377,
		-0.267411, -0.860676, -0.433276,
		-0.945577, 0.147870, 0.289861,
		20.643436, 39.342926, 20.075926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.918224, 39.195877, 19.290178>,  <21.305340, 39.239418, 19.873024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.918224, 39.195877, 19.290178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.691328, 39.402596, 19.546665>,  <20.555189, 39.526627, 19.700558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.691328, 39.402596, 19.546665>,  <20.918224, 39.195877, 19.290178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.691328, 39.402596, 19.546665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217166, 0.657177, -0.721774,
		-0.794402, -0.548671, -0.260548,
		-0.567243, 0.516796, 0.641215,
		20.521154, 39.557632, 19.739029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352154, 39.279388, 18.822161>,  <20.918224, 39.195877, 19.290178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352154, 39.279388, 18.822161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.351269, 39.548527, 19.118073>,  <20.350739, 39.710011, 19.295620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.351269, 39.548527, 19.118073>,  <20.352154, 39.279388, 18.822161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351269, 39.548527, 19.118073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068397, 0.737949, -0.671381,
		-0.997656, -0.052083, 0.044390,
		-0.002210, 0.672844, 0.739781,
		20.350605, 39.750381, 19.340008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885799, 39.696148, 18.617481>,  <20.352154, 39.279388, 18.822161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885799, 39.696148, 18.617481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.079075, 39.931812, 18.876534>,  <20.195040, 40.073212, 19.031965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.079075, 39.931812, 18.876534>,  <19.885799, 39.696148, 18.617481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079075, 39.931812, 18.876534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097588, 0.771343, -0.628893,
		-0.870062, 0.240672, 0.430197,
		0.483187, 0.589158, 0.647630,
		20.224031, 40.108559, 19.070822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577581, 40.354588, 18.514374>,  <19.885799, 39.696148, 18.617481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577581, 40.354588, 18.514374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.918333, 40.471794, 18.688015>,  <20.122784, 40.542118, 18.792200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.918333, 40.471794, 18.688015>,  <19.577581, 40.354588, 18.514374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.918333, 40.471794, 18.688015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006318, 0.834542, -0.550908,
		-0.523700, 0.466564, 0.712781,
		0.851880, 0.293014, 0.434102,
		20.173897, 40.559700, 18.818245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461262, 41.044548, 18.916801>,  <19.577581, 40.354588, 18.514374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461262, 41.044548, 18.916801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.856897, 41.017952, 18.864216>,  <20.094278, 41.001995, 18.832664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.856897, 41.017952, 18.864216>,  <19.461262, 41.044548, 18.916801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.856897, 41.017952, 18.864216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005948, 0.873622, -0.486569,
		0.147202, 0.482042, 0.863694,
		0.989088, -0.066487, -0.131466,
		20.153624, 40.998005, 18.824776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687590, 41.750126, 19.056862>,  <19.461262, 41.044548, 18.916801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687590, 41.750126, 19.056862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.021658, 41.596775, 18.899120>,  <20.222099, 41.504765, 18.804476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.021658, 41.596775, 18.899120>,  <19.687590, 41.750126, 19.056862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021658, 41.596775, 18.899120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249337, 0.903022, -0.349830,
		0.490227, 0.193840, 0.849766,
		0.835170, -0.383375, -0.394354,
		20.272209, 41.481762, 18.780813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239424, 42.192394, 19.250793>,  <19.687590, 41.750126, 19.056862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239424, 42.192394, 19.250793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.319880, 42.009418, 18.904316>,  <20.368153, 41.899635, 18.696428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.319880, 42.009418, 18.904316>,  <20.239424, 42.192394, 19.250793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.319880, 42.009418, 18.904316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266674, 0.876440, -0.400922,
		0.942565, -0.150351, 0.298271,
		0.201138, -0.457436, -0.866196,
		20.380220, 41.872189, 18.644457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872118, 42.494701, 19.015652>,  <20.239424, 42.192394, 19.250793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872118, 42.494701, 19.015652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.725641, 42.344570, 18.675056>,  <20.637754, 42.254494, 18.470699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.725641, 42.344570, 18.675056>,  <20.872118, 42.494701, 19.015652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.725641, 42.344570, 18.675056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359803, 0.786769, -0.501534,
		0.858164, -0.490026, -0.153066,
		-0.366192, -0.375324, -0.851490,
		20.615784, 42.231972, 18.419609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384926, 42.591389, 18.437683>,  <20.872118, 42.494701, 19.015652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384926, 42.591389, 18.437683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.027472, 42.563725, 18.260311>,  <20.812998, 42.547127, 18.153889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.027472, 42.563725, 18.260311>,  <21.384926, 42.591389, 18.437683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027472, 42.563725, 18.260311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225001, 0.785869, -0.576008,
		0.388312, -0.614514, -0.686722,
		-0.893638, -0.069157, -0.443428,
		20.759380, 42.542976, 18.127283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.251125, 33.517700, 27.235262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611860, 33.389385, 27.119480>,  <27.828300, 33.312397, 27.050011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611860, 33.389385, 27.119480>,  <27.251125, 33.517700, 27.235262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611860, 33.389385, 27.119480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024581, 0.706920, -0.706867,
		0.431378, 0.630363, 0.645411,
		0.901837, -0.320791, -0.289455,
		27.882412, 33.293148, 27.032644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735537, 34.134686, 27.251324>,  <27.251125, 33.517700, 27.235262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735537, 34.134686, 27.251324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860933, 33.842770, 27.008301>,  <27.936171, 33.667618, 26.862488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860933, 33.842770, 27.008301>,  <27.735537, 34.134686, 27.251324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860933, 33.842770, 27.008301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078459, 0.657528, -0.749334,
		0.946344, 0.187241, 0.263388,
		0.313491, -0.729793, -0.607557,
		27.954981, 33.623833, 26.826035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252876, 34.429962, 27.015293>,  <27.735537, 34.134686, 27.251324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252876, 34.429962, 27.015293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165159, 34.137054, 26.757397>,  <28.112530, 33.961308, 26.602659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165159, 34.137054, 26.757397>,  <28.252876, 34.429962, 27.015293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165159, 34.137054, 26.757397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127716, 0.633592, -0.763052,
		0.967264, -0.249674, -0.045418,
		-0.219291, -0.732273, -0.644739,
		28.099371, 33.917374, 26.563974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599188, 34.501331, 26.370043>,  <28.252876, 34.429962, 27.015293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599188, 34.501331, 26.370043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291811, 34.277447, 26.245968>,  <28.107386, 34.143116, 26.171524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291811, 34.277447, 26.245968>,  <28.599188, 34.501331, 26.370043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291811, 34.277447, 26.245968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011630, 0.496862, -0.867752,
		0.639813, -0.663210, -0.388320,
		-0.768443, -0.559714, -0.310186,
		28.061277, 34.109531, 26.152912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785501, 34.403969, 25.729239>,  <28.599188, 34.501331, 26.370043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785501, 34.403969, 25.729239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395947, 34.314434, 25.744408>,  <28.162212, 34.260712, 25.753510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395947, 34.314434, 25.744408>,  <28.785501, 34.403969, 25.729239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395947, 34.314434, 25.744408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126458, 0.396133, -0.909443,
		0.188545, -0.890492, -0.414096,
		-0.973889, -0.223836, 0.037921,
		28.103781, 34.247284, 25.755783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650618, 34.056145, 25.144438>,  <28.785501, 34.403969, 25.729239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650618, 34.056145, 25.144438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289404, 34.195240, 25.245316>,  <28.072676, 34.278698, 25.305843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289404, 34.195240, 25.245316>,  <28.650618, 34.056145, 25.144438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289404, 34.195240, 25.245316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154994, 0.283782, -0.946279,
		-0.400631, -0.893612, -0.202367,
		-0.903035, 0.347743, 0.252197,
		28.018494, 34.299564, 25.320974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163311, 33.753788, 24.671598>,  <28.650618, 34.056145, 25.144438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163311, 33.753788, 24.671598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975729, 34.072201, 24.824657>,  <27.863180, 34.263248, 24.916492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975729, 34.072201, 24.824657>,  <28.163311, 33.753788, 24.671598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975729, 34.072201, 24.824657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309628, 0.257577, -0.915306,
		-0.827172, -0.547714, 0.125681,
		-0.468953, 0.796030, 0.382648,
		27.835043, 34.311008, 24.939451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595240, 33.839909, 24.305546>,  <28.163311, 33.753788, 24.671598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595240, 33.839909, 24.305546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645559, 34.193203, 24.486244>,  <27.675751, 34.405178, 24.594664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645559, 34.193203, 24.486244>,  <27.595240, 33.839909, 24.305546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645559, 34.193203, 24.486244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159438, 0.467445, -0.869526,
		-0.979160, 0.037360, 0.199625,
		0.125799, 0.883233, 0.451747,
		27.683300, 34.458172, 24.621769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004148, 34.245522, 24.063818>,  <27.595240, 33.839909, 24.305546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004148, 34.245522, 24.063818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270401, 34.508831, 24.204456>,  <27.430153, 34.666817, 24.288839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270401, 34.508831, 24.204456>,  <27.004148, 34.245522, 24.063818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270401, 34.508831, 24.204456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179427, 0.598472, -0.780792,
		-0.724392, 0.456632, 0.516472,
		0.665629, 0.658269, 0.351596,
		27.470089, 34.706310, 24.309935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638830, 34.858196, 24.169523>,  <27.004148, 34.245522, 24.063818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638830, 34.858196, 24.169523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015743, 34.986244, 24.130283>,  <27.241892, 35.063072, 24.106739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015743, 34.986244, 24.130283>,  <26.638830, 34.858196, 24.169523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015743, 34.986244, 24.130283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270470, 0.555088, -0.786590,
		-0.197347, 0.767725, 0.609633,
		0.942284, 0.320119, -0.098101,
		27.298429, 35.082279, 24.100853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383490, 35.424103, 23.734793>,  <26.638830, 34.858196, 24.169523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383490, 35.424103, 23.734793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777021, 35.355206, 23.715137>,  <27.013140, 35.313866, 23.703344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777021, 35.355206, 23.715137>,  <26.383490, 35.424103, 23.734793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777021, 35.355206, 23.715137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062009, 0.584889, -0.808740,
		0.168043, 0.792614, 0.586110,
		0.983827, -0.172248, -0.049138,
		27.072170, 35.303532, 23.700396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781384, 36.083633, 23.603848>,  <26.383490, 35.424103, 23.734793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781384, 36.083633, 23.603848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020964, 35.808167, 23.440388>,  <27.164711, 35.642887, 23.342312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020964, 35.808167, 23.440388>,  <26.781384, 36.083633, 23.603848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020964, 35.808167, 23.440388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210537, 0.627779, -0.749378,
		0.772614, 0.362805, 0.520999,
		0.598950, -0.688670, -0.408647,
		27.200649, 35.601566, 23.317793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254868, 36.428589, 23.236881>,  <26.781384, 36.083633, 23.603848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254868, 36.428589, 23.236881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305735, 36.061726, 23.085808>,  <27.336256, 35.841606, 22.995163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305735, 36.061726, 23.085808>,  <27.254868, 36.428589, 23.236881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305735, 36.061726, 23.085808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339959, 0.398015, -0.852064,
		0.931803, -0.020040, 0.362412,
		0.127170, -0.917160, -0.377685,
		27.343885, 35.786579, 22.972502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998085, 36.400616, 23.102306>,  <27.254868, 36.428589, 23.236881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998085, 36.400616, 23.102306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781725, 36.132347, 22.899281>,  <27.651909, 35.971386, 22.777464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781725, 36.132347, 22.899281>,  <27.998085, 36.400616, 23.102306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781725, 36.132347, 22.899281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416812, 0.310411, -0.854350,
		0.730544, -0.673677, 0.111644,
		-0.540900, -0.670675, -0.507565,
		27.619455, 35.931145, 22.747011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122810, 36.743893, 23.837181>,  <27.998085, 36.400616, 23.102306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122810, 36.743893, 23.837181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951010, 37.075165, 23.981205>,  <27.847929, 37.273930, 24.067619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951010, 37.075165, 23.981205>,  <28.122810, 36.743893, 23.837181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951010, 37.075165, 23.981205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741603, 0.095949, 0.663942,
		0.515317, 0.552185, -0.655393,
		-0.429503, 0.828182, 0.360058,
		27.822159, 37.323620, 24.089222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610741, 37.262280, 23.873653>,  <28.122810, 36.743893, 23.837181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610741, 37.262280, 23.873653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328783, 37.392582, 24.125687>,  <28.159609, 37.470764, 24.276907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328783, 37.392582, 24.125687>,  <28.610741, 37.262280, 23.873653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328783, 37.392582, 24.125687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705717, 0.232780, 0.669161,
		0.071311, 0.916350, -0.393975,
		-0.704896, 0.325753, 0.630085,
		28.117313, 37.490307, 24.314713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931047, 37.873707, 24.275827>,  <28.610741, 37.262280, 23.873653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931047, 37.873707, 24.275827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628096, 37.716881, 24.484695>,  <28.446325, 37.622784, 24.610016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628096, 37.716881, 24.484695>,  <28.931047, 37.873707, 24.275827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628096, 37.716881, 24.484695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614454, -0.157312, 0.773110,
		-0.220966, 0.906387, 0.360051,
		-0.757377, -0.392066, 0.522172,
		28.400883, 37.599262, 24.641348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914644, 38.163395, 24.922657>,  <28.931047, 37.873707, 24.275827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914644, 38.163395, 24.922657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753756, 37.799187, 24.960949>,  <28.657223, 37.580662, 24.983925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753756, 37.799187, 24.960949>,  <28.914644, 38.163395, 24.922657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753756, 37.799187, 24.960949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538146, -0.150532, 0.829300,
		-0.740687, 0.385078, 0.550542,
		-0.402220, -0.910524, 0.095731,
		28.633089, 37.526028, 24.989668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649416, 38.154785, 25.667866>,  <28.914644, 38.163395, 24.922657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649416, 38.154785, 25.667866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691105, 37.777710, 25.541073>,  <28.716118, 37.551464, 25.464996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691105, 37.777710, 25.541073>,  <28.649416, 38.154785, 25.667866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691105, 37.777710, 25.541073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425612, -0.245786, 0.870887,
		-0.898884, -0.225677, 0.375603,
		0.104221, -0.942687, -0.316984,
		28.722372, 37.494904, 25.445978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414474, 37.759220, 26.256472>,  <28.649416, 38.154785, 25.667866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414474, 37.759220, 26.256472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598457, 37.467556, 26.053783>,  <28.708847, 37.292557, 25.932171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598457, 37.467556, 26.053783>,  <28.414474, 37.759220, 26.256472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598457, 37.467556, 26.053783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311455, -0.401928, 0.861075,
		-0.831527, -0.553876, 0.042232,
		0.459955, -0.729161, -0.506722,
		28.736444, 37.248806, 25.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266788, 37.150547, 26.609501>,  <28.414474, 37.759220, 26.256472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266788, 37.150547, 26.609501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576141, 37.031784, 26.385456>,  <28.761753, 36.960526, 26.251028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576141, 37.031784, 26.385456>,  <28.266788, 37.150547, 26.609501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576141, 37.031784, 26.385456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371958, -0.502946, 0.780187,
		-0.513371, -0.811713, -0.278518,
		0.773368, -0.296929, -0.560121,
		28.808155, 36.942711, 26.217422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367292, 36.454899, 26.673140>,  <28.266788, 37.150547, 26.609501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367292, 36.454899, 26.673140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717600, 36.557598, 26.509621>,  <28.927784, 36.619217, 26.411510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717600, 36.557598, 26.509621>,  <28.367292, 36.454899, 26.673140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717600, 36.557598, 26.509621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480800, -0.539647, 0.691095,
		-0.043168, -0.801787, -0.596049,
		0.875767, 0.256747, -0.408795,
		28.980330, 36.634621, 26.386982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782125, 35.918892, 26.595390>,  <28.367292, 36.454899, 26.673140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782125, 35.918892, 26.595390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032507, 36.230370, 26.612453>,  <29.182735, 36.417255, 26.622690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032507, 36.230370, 26.612453>,  <28.782125, 35.918892, 26.595390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032507, 36.230370, 26.612453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478061, -0.426356, 0.767905,
		0.616149, -0.460280, -0.639142,
		0.625953, 0.778693, 0.042657,
		29.220293, 36.463978, 26.625250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454798, 35.577538, 26.509783>,  <28.782125, 35.918892, 26.595390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454798, 35.577538, 26.509783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551363, 35.938911, 26.651505>,  <29.609303, 36.155735, 26.736538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551363, 35.938911, 26.651505>,  <29.454798, 35.577538, 26.509783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551363, 35.938911, 26.651505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707325, -0.413780, 0.573129,
		0.664387, 0.112249, -0.738911,
		0.241414, 0.903430, 0.354307,
		29.623787, 36.209942, 26.757797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090153, 35.547348, 26.451483>,  <29.454798, 35.577538, 26.509783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090153, 35.547348, 26.451483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990332, 35.793186, 26.750816>,  <29.930439, 35.940689, 26.930416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990332, 35.793186, 26.750816>,  <30.090153, 35.547348, 26.451483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990332, 35.793186, 26.750816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569383, -0.531954, 0.626760,
		0.783280, 0.582497, -0.217188,
		-0.249551, 0.614591, 0.748333,
		29.915466, 35.977562, 26.975317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742075, 35.733070, 26.824104>,  <30.090153, 35.547348, 26.451483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742075, 35.733070, 26.824104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450535, 35.825031, 27.082073>,  <30.275612, 35.880207, 27.236855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450535, 35.825031, 27.082073>,  <30.742075, 35.733070, 26.824104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450535, 35.825031, 27.082073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457597, -0.537095, 0.708614,
		0.509298, 0.811586, 0.286257,
		-0.728849, 0.229906, 0.644921,
		30.231880, 35.894005, 27.275549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056736, 35.839725, 27.408134>,  <30.742075, 35.733070, 26.824104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056736, 35.839725, 27.408134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684937, 35.770462, 27.538395>,  <30.461857, 35.728905, 27.616550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684937, 35.770462, 27.538395>,  <31.056736, 35.839725, 27.408134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684937, 35.770462, 27.538395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355501, -0.655785, 0.666007,
		0.098235, 0.734822, 0.671108,
		-0.929499, -0.173155, 0.325651,
		30.406086, 35.718517, 27.636091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048470, 35.926361, 28.125330>,  <31.056736, 35.839725, 27.408134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048470, 35.926361, 28.125330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716351, 35.706909, 28.086124>,  <30.517078, 35.575237, 28.062601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716351, 35.706909, 28.086124>,  <31.048470, 35.926361, 28.125330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716351, 35.706909, 28.086124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298845, -0.586731, 0.752621,
		-0.470419, 0.595610, 0.651118,
		-0.830300, -0.548630, -0.098014,
		30.467260, 35.542320, 28.056721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415979, 36.516819, 28.496267>,  <31.048470, 35.926361, 28.125330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415979, 36.516819, 28.496267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802057, 36.432594, 28.558319>,  <32.033703, 36.382057, 28.595551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802057, 36.432594, 28.558319>,  <31.415979, 36.516819, 28.496267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802057, 36.432594, 28.558319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241012, 0.485740, -0.840220,
		0.101569, 0.848362, 0.519582,
		0.965193, -0.210566, 0.155129,
		32.091614, 36.369423, 28.604858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851830, 37.069809, 28.508097>,  <31.415979, 36.516819, 28.496267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851830, 37.069809, 28.508097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106529, 36.771481, 28.429810>,  <32.259350, 36.592484, 28.382837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106529, 36.771481, 28.429810>,  <31.851830, 37.069809, 28.508097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106529, 36.771481, 28.429810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418068, 0.547209, -0.725108,
		0.647898, 0.379887, 0.660238,
		0.636747, -0.745820, -0.195717,
		32.297554, 36.547733, 28.371094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574001, 37.411240, 28.580435>,  <31.851830, 37.069809, 28.508097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574001, 37.411240, 28.580435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579834, 37.073311, 28.366497>,  <32.583332, 36.870552, 28.238134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579834, 37.073311, 28.366497>,  <32.574001, 37.411240, 28.580435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579834, 37.073311, 28.366497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541615, 0.456305, -0.706002,
		0.840500, -0.279383, 0.464224,
		0.014583, -0.844826, -0.534842,
		32.584209, 36.819862, 28.206045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269779, 37.337944, 28.218464>,  <32.574001, 37.411240, 28.580435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269779, 37.337944, 28.218464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055046, 37.073296, 28.009056>,  <32.926205, 36.914509, 27.883411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055046, 37.073296, 28.009056>,  <33.269779, 37.337944, 28.218464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055046, 37.073296, 28.009056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228184, 0.483527, -0.845065,
		0.812246, -0.573117, -0.108602,
		-0.536833, -0.661619, -0.523519,
		32.893997, 36.874809, 27.852001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641022, 37.423595, 27.659918>,  <33.269779, 37.337944, 28.218464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641022, 37.423595, 27.659918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329491, 37.216003, 27.519012>,  <33.142574, 37.091446, 27.434469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329491, 37.216003, 27.519012>,  <33.641022, 37.423595, 27.659918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329491, 37.216003, 27.519012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171295, 0.364280, -0.915401,
		0.603401, -0.773277, -0.194810,
		-0.778823, -0.518983, -0.352265,
		33.095844, 37.060310, 27.413332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946587, 37.017143, 27.112177>,  <33.641022, 37.423595, 27.659918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946587, 37.017143, 27.112177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551510, 37.027988, 27.050568>,  <33.314465, 37.034496, 27.013601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551510, 37.027988, 27.050568>,  <33.946587, 37.017143, 27.112177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551510, 37.027988, 27.050568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156347, 0.194666, -0.968329,
		0.003732, -0.980495, -0.196510,
		-0.987695, 0.027110, -0.154024,
		33.255199, 37.036121, 27.004360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761299, 36.431133, 26.662403>,  <33.946587, 37.017143, 27.112177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761299, 36.431133, 26.662403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506847, 36.738724, 26.637054>,  <33.354176, 36.923279, 26.621845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506847, 36.738724, 26.637054>,  <33.761299, 36.431133, 26.662403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506847, 36.738724, 26.637054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169653, 0.059272, -0.983720,
		-0.752703, -0.636522, -0.168163,
		-0.636126, 0.768978, -0.063374,
		33.316010, 36.969418, 26.618042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366642, 36.254688, 26.106646>,  <33.761299, 36.431133, 26.662403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366642, 36.254688, 26.106646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317291, 36.646584, 26.169762>,  <33.287682, 36.881721, 26.207632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317291, 36.646584, 26.169762>,  <33.366642, 36.254688, 26.106646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317291, 36.646584, 26.169762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197883, 0.180101, -0.963538,
		-0.972430, -0.087654, -0.216094,
		-0.123377, 0.979735, 0.157790,
		33.280277, 36.940502, 26.217098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032078, 36.473034, 25.494577>,  <33.366642, 36.254688, 26.106646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032078, 36.473034, 25.494577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194160, 36.793289, 25.671116>,  <33.291412, 36.985443, 25.777039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194160, 36.793289, 25.671116>,  <33.032078, 36.473034, 25.494577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194160, 36.793289, 25.671116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195050, 0.395929, -0.897327,
		-0.893174, 0.449691, 0.004270,
		0.405210, 0.800636, 0.441346,
		33.315723, 37.033482, 25.803520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731243, 36.971725, 25.185444>,  <33.032078, 36.473034, 25.494577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731243, 36.971725, 25.185444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053814, 37.134945, 25.356636>,  <33.247356, 37.232876, 25.459352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053814, 37.134945, 25.356636>,  <32.731243, 36.971725, 25.185444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053814, 37.134945, 25.356636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273224, 0.384749, -0.881655,
		-0.524427, 0.827926, 0.198783,
		0.806427, 0.408051, 0.427983,
		33.295742, 37.257359, 25.485031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873001, 37.587475, 24.801594>,  <32.731243, 36.971725, 25.185444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873001, 37.587475, 24.801594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225315, 37.595020, 24.990849>,  <33.436703, 37.599548, 25.104401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225315, 37.595020, 24.990849>,  <32.873001, 37.587475, 24.801594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225315, 37.595020, 24.990849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411936, 0.462203, -0.785288,
		-0.233500, 0.886574, 0.399331,
		0.880787, 0.018866, 0.473136,
		33.489552, 37.600681, 25.132790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200928, 38.213520, 24.616123>,  <32.873001, 37.587475, 24.801594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200928, 38.213520, 24.616123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505142, 37.979191, 24.728123>,  <33.687672, 37.838593, 24.795322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505142, 37.979191, 24.728123>,  <33.200928, 38.213520, 24.616123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505142, 37.979191, 24.728123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558018, 0.369244, -0.743152,
		0.331964, 0.721439, 0.607721,
		0.760536, -0.585819, 0.280001,
		33.733303, 37.803444, 24.812122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.493811, 35.583099, 32.441387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.605223, 35.236340, 32.276028>,  <31.672070, 35.028282, 32.176811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.605223, 35.236340, 32.276028>,  <31.493811, 35.583099, 32.441387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605223, 35.236340, 32.276028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193020, 0.472177, -0.860112,
		0.940831, 0.159773, 0.298846,
		0.278531, -0.866903, -0.413400,
		31.688782, 34.976269, 32.152008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001049, 35.715813, 32.124802>,  <31.493811, 35.583099, 32.441387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001049, 35.715813, 32.124802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.947969, 35.369198, 31.932343>,  <31.916121, 35.161228, 31.816866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.947969, 35.369198, 31.932343>,  <32.001049, 35.715813, 32.124802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947969, 35.369198, 31.932343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222852, 0.446927, -0.866368,
		0.965778, -0.222195, 0.133801,
		-0.132703, -0.866537, -0.481149,
		31.908159, 35.109238, 31.787998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493488, 35.735725, 31.629711>,  <32.001049, 35.715813, 32.124802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493488, 35.735725, 31.629711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.252781, 35.453144, 31.480682>,  <32.108356, 35.283596, 31.391266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.252781, 35.453144, 31.480682>,  <32.493488, 35.735725, 31.629711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252781, 35.453144, 31.480682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193084, 0.323969, -0.926155,
		0.774983, -0.629265, -0.058549,
		-0.601765, -0.706449, -0.372571,
		32.072250, 35.241211, 31.368912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894272, 35.498676, 31.197639>,  <32.493488, 35.735725, 31.629711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894272, 35.498676, 31.197639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.527813, 35.399754, 31.071461>,  <32.307938, 35.340401, 30.995754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.527813, 35.399754, 31.071461>,  <32.894272, 35.498676, 31.197639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527813, 35.399754, 31.071461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247319, 0.270552, -0.930395,
		0.315440, -0.930397, -0.186702,
		-0.916150, -0.247309, -0.315448,
		32.252968, 35.325562, 30.976826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980106, 35.132160, 30.516798>,  <32.894272, 35.498676, 31.197639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980106, 35.132160, 30.516798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.592102, 35.229370, 30.518787>,  <32.359299, 35.287697, 30.519981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.592102, 35.229370, 30.518787>,  <32.980106, 35.132160, 30.516798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592102, 35.229370, 30.518787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102080, 0.425842, -0.899021,
		-0.220601, -0.871549, -0.437878,
		-0.970008, 0.243023, 0.004974,
		32.301098, 35.302277, 30.520279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846405, 34.977520, 29.797203>,  <32.980106, 35.132160, 30.516798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846405, 34.977520, 29.797203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.559895, 35.202801, 29.962006>,  <32.387989, 35.337971, 30.060888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.559895, 35.202801, 29.962006>,  <32.846405, 34.977520, 29.797203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559895, 35.202801, 29.962006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062846, 0.535960, -0.841901,
		-0.694983, -0.628926, -0.348499,
		-0.716275, 0.563205, 0.412008,
		32.345013, 35.371761, 30.085608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285439, 34.914318, 29.351965>,  <32.846405, 34.977520, 29.797203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285439, 34.914318, 29.351965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224388, 35.256504, 29.549911>,  <32.187759, 35.461815, 29.668678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224388, 35.256504, 29.549911>,  <32.285439, 34.914318, 29.351965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224388, 35.256504, 29.549911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128154, 0.513636, -0.848384,
		-0.979940, -0.066067, -0.188025,
		-0.152626, 0.855461, 0.494865,
		32.178600, 35.513142, 29.698372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714735, 35.183807, 28.974377>,  <32.285439, 34.914318, 29.351965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714735, 35.183807, 28.974377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.912271, 35.494129, 29.131474>,  <32.030792, 35.680321, 29.225733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.912271, 35.494129, 29.131474>,  <31.714735, 35.183807, 28.974377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912271, 35.494129, 29.131474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026427, 0.464845, -0.884997,
		-0.869149, 0.426671, 0.250063,
		0.493843, 0.775803, 0.392744,
		32.060425, 35.726871, 29.249296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537363, 35.654823, 28.570919>,  <31.714735, 35.183807, 28.974377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537363, 35.654823, 28.570919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.817003, 35.869942, 28.759403>,  <31.984787, 35.999012, 28.872494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.817003, 35.869942, 28.759403>,  <31.537363, 35.654823, 28.570919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817003, 35.869942, 28.759403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156461, 0.527982, -0.834719,
		-0.697694, 0.657279, 0.284970,
		0.699102, 0.537792, 0.471208,
		32.026733, 36.031281, 28.900766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772642, 35.661179, 28.951902>,  <31.537363, 35.654823, 28.570919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772642, 35.661179, 28.951902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.608957, 35.433857, 28.666363>,  <30.510746, 35.297462, 28.495039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.608957, 35.433857, 28.666363>,  <30.772642, 35.661179, 28.951902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608957, 35.433857, 28.666363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010521, -0.779359, 0.626489,
		-0.912379, 0.263877, 0.312944,
		-0.409211, -0.568303, -0.713847,
		30.486195, 35.263367, 28.452209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220413, 35.363617, 29.248880>,  <30.772642, 35.661179, 28.951902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220413, 35.363617, 29.248880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.288528, 35.126217, 28.934235>,  <30.329397, 34.983776, 28.745447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.288528, 35.126217, 28.934235>,  <30.220413, 35.363617, 29.248880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288528, 35.126217, 28.934235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085458, -0.786370, 0.611817,
		-0.981682, -0.171408, -0.083191,
		0.170289, -0.593500, -0.786613,
		30.339615, 34.948166, 28.698252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905180, 34.823776, 29.456612>,  <30.220413, 35.363617, 29.248880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905180, 34.823776, 29.456612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.131662, 34.693066, 29.153923>,  <30.267551, 34.614639, 28.972309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.131662, 34.693066, 29.153923>,  <29.905180, 34.823776, 29.456612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131662, 34.693066, 29.153923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143520, -0.864948, 0.480902,
		-0.811673, -0.380893, -0.442839,
		0.566205, -0.326779, -0.756721,
		30.301523, 34.595032, 28.926907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558104, 34.316238, 29.186855>,  <29.905180, 34.823776, 29.456612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558104, 34.316238, 29.186855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.945927, 34.263676, 29.104214>,  <30.178621, 34.232136, 29.054628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.945927, 34.263676, 29.104214>,  <29.558104, 34.316238, 29.186855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945927, 34.263676, 29.104214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012425, -0.869099, 0.494481,
		-0.244539, -0.476862, -0.844277,
		0.969560, -0.131410, -0.206604,
		30.236795, 34.224251, 29.042233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640690, 33.664120, 28.943537>,  <29.558104, 34.316238, 29.186855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640690, 33.664120, 28.943537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.007320, 33.766106, 29.066750>,  <30.227299, 33.827297, 29.140676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.007320, 33.766106, 29.066750>,  <29.640690, 33.664120, 28.943537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007320, 33.766106, 29.066750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115899, -0.906674, 0.405599,
		0.382697, -0.336061, -0.860584,
		0.916575, 0.254962, 0.308032,
		30.282293, 33.842594, 29.159159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993540, 33.122284, 28.902658>,  <29.640690, 33.664120, 28.943537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993540, 33.122284, 28.902658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.252674, 33.292374, 29.155479>,  <30.408155, 33.394428, 29.307173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.252674, 33.292374, 29.155479>,  <29.993540, 33.122284, 28.902658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252674, 33.292374, 29.155479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092871, -0.867604, 0.488507,
		0.756098, -0.257773, -0.601555,
		0.647835, 0.425226, 0.632054,
		30.447025, 33.419941, 29.345095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567766, 32.632072, 29.080027>,  <29.993540, 33.122284, 28.902658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567766, 32.632072, 29.080027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.588715, 32.901485, 29.374947>,  <30.601284, 33.063133, 29.551899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.588715, 32.901485, 29.374947>,  <30.567766, 32.632072, 29.080027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588715, 32.901485, 29.374947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042319, -0.739149, 0.672211,
		0.997731, -0.004002, -0.067213,
		0.052371, 0.673530, 0.737302,
		30.604425, 33.103546, 29.596138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176769, 32.467953, 29.484425>,  <30.567766, 32.632072, 29.080027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176769, 32.467953, 29.484425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949415, 32.687244, 29.729824>,  <30.813002, 32.818817, 29.877064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949415, 32.687244, 29.729824>,  <31.176769, 32.467953, 29.484425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949415, 32.687244, 29.729824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083046, -0.703625, 0.705702,
		0.818560, 0.452060, 0.354403,
		-0.568387, 0.548227, 0.613501,
		30.778898, 32.851711, 29.913874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254225, 32.224358, 30.260923>,  <31.176769, 32.467953, 29.484425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254225, 32.224358, 30.260923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927572, 32.437256, 30.350212>,  <30.731581, 32.564995, 30.403786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927572, 32.437256, 30.350212>,  <31.254225, 32.224358, 30.260923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927572, 32.437256, 30.350212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124759, -0.540401, 0.832107,
		0.563516, 0.651675, 0.507710,
		-0.816631, 0.532246, 0.223222,
		30.682583, 32.596931, 30.417179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364914, 32.372032, 30.931696>,  <31.254225, 32.224358, 30.260923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364914, 32.372032, 30.931696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.972263, 32.416843, 30.869907>,  <30.736673, 32.443729, 30.832834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.972263, 32.416843, 30.869907>,  <31.364914, 32.372032, 30.931696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972263, 32.416843, 30.869907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188184, -0.434221, 0.880931,
		0.031617, 0.893813, 0.447325,
		-0.981625, 0.112032, -0.154472,
		30.677776, 32.450455, 30.823566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130844, 32.600555, 31.509487>,  <31.364914, 32.372032, 30.931696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130844, 32.600555, 31.509487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.791971, 32.464558, 31.346176>,  <30.588648, 32.382961, 31.248190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.791971, 32.464558, 31.346176>,  <31.130844, 32.600555, 31.509487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791971, 32.464558, 31.346176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294050, -0.339981, 0.893279,
		-0.442512, 0.876823, 0.188052,
		-0.847182, -0.339990, -0.408276,
		30.537817, 32.362560, 31.223694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554977, 32.750504, 31.938194>,  <31.130844, 32.600555, 31.509487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554977, 32.750504, 31.938194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.434954, 32.440960, 31.715088>,  <30.362940, 32.255234, 31.581224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.434954, 32.440960, 31.715088>,  <30.554977, 32.750504, 31.938194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434954, 32.440960, 31.715088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360142, -0.449537, 0.817444,
		-0.883325, 0.446156, -0.143813,
		-0.300058, -0.773861, -0.557767,
		30.344936, 32.208801, 31.547758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996286, 32.514828, 32.234154>,  <30.554977, 32.750504, 31.938194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996286, 32.514828, 32.234154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074541, 32.188759, 32.016083>,  <30.121494, 31.993116, 31.885241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074541, 32.188759, 32.016083>,  <29.996286, 32.514828, 32.234154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074541, 32.188759, 32.016083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141873, -0.573593, 0.806761,
		-0.970360, -0.080486, -0.227866,
		0.195635, -0.815177, -0.545173,
		30.133232, 31.944206, 31.852531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421831, 32.044044, 32.337315>,  <29.996286, 32.514828, 32.234154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421831, 32.044044, 32.337315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.699001, 31.796089, 32.190025>,  <29.865303, 31.647316, 32.101650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.699001, 31.796089, 32.190025>,  <29.421831, 32.044044, 32.337315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699001, 31.796089, 32.190025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344032, -0.733081, 0.586715,
		-0.633638, -0.279869, -0.721232,
		0.692925, -0.619892, -0.368224,
		29.906879, 31.610121, 32.079559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.755547, 28.175268, 30.839462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592953, 28.491154, 31.023254>,  <33.495396, 28.680685, 31.133530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592953, 28.491154, 31.023254>,  <33.755547, 28.175268, 30.839462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592953, 28.491154, 31.023254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150676, 0.438072, -0.886222,
		-0.901148, -0.429467, -0.059077,
		-0.406483, 0.789716, 0.459478,
		33.471008, 28.728069, 31.161098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148869, 28.295675, 30.468306>,  <33.755547, 28.175268, 30.839462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148869, 28.295675, 30.468306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225578, 28.638988, 30.658703>,  <33.271603, 28.844976, 30.772942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225578, 28.638988, 30.658703>,  <33.148869, 28.295675, 30.468306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225578, 28.638988, 30.658703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034452, 0.490583, -0.870713,
		-0.980834, 0.150580, 0.123650,
		0.191773, 0.858285, 0.475993,
		33.283112, 28.896475, 30.801500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615665, 28.789036, 30.213718>,  <33.148869, 28.295675, 30.468306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615665, 28.789036, 30.213718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900913, 29.025581, 30.364319>,  <33.072063, 29.167509, 30.454679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900913, 29.025581, 30.364319>,  <32.615665, 28.789036, 30.213718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900913, 29.025581, 30.364319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025518, 0.558597, -0.829046,
		-0.700578, 0.581601, 0.413436,
		0.713119, 0.591362, 0.376500,
		33.114849, 29.202990, 30.477268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382046, 29.450378, 30.240965>,  <32.615665, 28.789036, 30.213718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382046, 29.450378, 30.240965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779800, 29.491558, 30.231228>,  <33.018456, 29.516266, 30.225386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779800, 29.491558, 30.231228>,  <32.382046, 29.450378, 30.240965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779800, 29.491558, 30.231228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085584, 0.647631, -0.757133,
		-0.062182, 0.754968, 0.652807,
		0.994389, 0.102950, -0.024342,
		33.078117, 29.522444, 30.223925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495316, 30.154457, 30.312132>,  <32.382046, 29.450378, 30.240965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495316, 30.154457, 30.312132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834839, 30.029472, 30.141541>,  <33.038555, 29.954481, 30.039185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834839, 30.029472, 30.141541>,  <32.495316, 30.154457, 30.312132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834839, 30.029472, 30.141541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119464, 0.672449, -0.730438,
		0.515020, 0.670954, 0.533455,
		0.848812, -0.312462, -0.426480,
		33.089481, 29.935734, 30.013596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855717, 30.736879, 30.199987>,  <32.495316, 30.154457, 30.312132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855717, 30.736879, 30.199987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014355, 30.465317, 29.952827>,  <33.109535, 30.302380, 29.804531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014355, 30.465317, 29.952827>,  <32.855717, 30.736879, 30.199987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014355, 30.465317, 29.952827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081124, 0.644543, -0.760252,
		0.914403, 0.351637, 0.200546,
		0.396593, -0.678908, -0.617898,
		33.133331, 30.261644, 29.767458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405949, 31.078403, 29.925512>,  <32.855717, 30.736879, 30.199987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405949, 31.078403, 29.925512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319691, 30.792431, 29.659470>,  <33.267937, 30.620848, 29.499844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319691, 30.792431, 29.659470>,  <33.405949, 31.078403, 29.925512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319691, 30.792431, 29.659470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101648, 0.660998, -0.743471,
		0.971167, -0.227934, -0.069870,
		-0.215646, -0.714932, -0.665108,
		33.254997, 30.577951, 29.459936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903618, 31.180769, 29.347004>,  <33.405949, 31.078403, 29.925512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903618, 31.180769, 29.347004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603317, 30.961357, 29.199772>,  <33.423138, 30.829710, 29.111433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603317, 30.961357, 29.199772>,  <33.903618, 31.180769, 29.347004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603317, 30.961357, 29.199772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089508, 0.636541, -0.766031,
		0.654496, -0.542150, -0.526980,
		-0.750748, -0.548533, -0.368087,
		33.378090, 30.796799, 29.089348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071575, 31.227503, 28.736126>,  <33.903618, 31.180769, 29.347004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071575, 31.227503, 28.736126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689198, 31.113907, 28.706398>,  <33.459770, 31.045750, 28.688560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689198, 31.113907, 28.706398>,  <34.071575, 31.227503, 28.736126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689198, 31.113907, 28.706398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096141, 0.542088, -0.834804,
		0.277363, -0.790880, -0.545508,
		-0.955943, -0.283990, -0.074319,
		33.402416, 31.028709, 28.684103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932083, 30.933760, 28.082560>,  <34.071575, 31.227503, 28.736126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932083, 30.933760, 28.082560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572075, 31.057472, 28.205402>,  <33.356071, 31.131701, 28.279108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572075, 31.057472, 28.205402>,  <33.932083, 30.933760, 28.082560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572075, 31.057472, 28.205402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120849, 0.499909, -0.857605,
		-0.418768, -0.808972, -0.412550,
		-0.900016, 0.309282, 0.307109,
		33.302071, 31.150257, 28.297535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486958, 30.870142, 27.414743>,  <33.932083, 30.933760, 28.082560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486958, 30.870142, 27.414743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.277618, 31.109272, 27.657631>,  <33.152016, 31.252750, 27.803364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.277618, 31.109272, 27.657631>,  <33.486958, 30.870142, 27.414743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277618, 31.109272, 27.657631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393704, 0.462334, -0.794509,
		-0.755715, -0.654867, -0.006594,
		-0.523347, 0.597826, 0.607217,
		33.120613, 31.288620, 27.839796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803986, 30.826029, 27.117674>,  <33.486958, 30.870142, 27.414743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803986, 30.826029, 27.117674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.857132, 31.155151, 27.338703>,  <32.889019, 31.352625, 27.471321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.857132, 31.155151, 27.338703>,  <32.803986, 30.826029, 27.117674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857132, 31.155151, 27.338703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361880, 0.559301, -0.745806,
		-0.922707, -0.100870, 0.372071,
		0.132870, 0.822805, 0.552574,
		32.896992, 31.401993, 27.504475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293770, 31.259121, 26.933046>,  <32.803986, 30.826029, 27.117674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293770, 31.259121, 26.933046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568771, 31.500633, 27.094437>,  <32.733772, 31.645540, 27.191271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568771, 31.500633, 27.094437>,  <32.293770, 31.259121, 26.933046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568771, 31.500633, 27.094437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171619, 0.674959, -0.717619,
		-0.705615, 0.424119, 0.567654,
		0.687499, 0.603783, 0.403474,
		32.775021, 31.681768, 27.215479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058807, 31.951899, 26.660503>,  <32.293770, 31.259121, 26.933046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058807, 31.951899, 26.660503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431862, 32.017448, 26.789089>,  <32.655693, 32.056778, 26.866241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431862, 32.017448, 26.789089>,  <32.058807, 31.951899, 26.660503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431862, 32.017448, 26.789089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065376, 0.799426, -0.597197,
		-0.354854, 0.577982, 0.734858,
		0.932633, 0.163876, 0.321466,
		32.711651, 32.066612, 26.885529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510954, 32.315968, 26.969076>,  <32.058807, 31.951899, 26.660503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510954, 32.315968, 26.969076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344007, 32.046925, 26.724648>,  <31.243839, 31.885500, 26.577990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344007, 32.046925, 26.724648>,  <31.510954, 32.315968, 26.969076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344007, 32.046925, 26.724648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153247, -0.610715, 0.776880,
		-0.895724, 0.417887, 0.151816,
		-0.417364, -0.672605, -0.611072,
		31.218798, 31.845142, 26.541327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903074, 31.965721, 27.336288>,  <31.510954, 32.315968, 26.969076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903074, 31.965721, 27.336288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957396, 31.703365, 27.039272>,  <30.989988, 31.545952, 26.861063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957396, 31.703365, 27.039272>,  <30.903074, 31.965721, 27.336288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957396, 31.703365, 27.039272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237645, -0.749169, 0.618280,
		-0.961812, 0.092496, -0.257609,
		0.135804, -0.655889, -0.742541,
		30.998137, 31.506599, 26.816509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341814, 31.515835, 27.309454>,  <30.903074, 31.965721, 27.336288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341814, 31.515835, 27.309454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597994, 31.285145, 27.106590>,  <30.751701, 31.146730, 26.984873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597994, 31.285145, 27.106590>,  <30.341814, 31.515835, 27.309454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597994, 31.285145, 27.106590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269957, -0.787277, 0.554363,
		-0.718989, -0.218132, -0.659904,
		0.640451, -0.576727, -0.507158,
		30.790129, 31.112127, 26.954443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945631, 30.888424, 27.028528>,  <30.341814, 31.515835, 27.309454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945631, 30.888424, 27.028528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331614, 30.784237, 27.015804>,  <30.563204, 30.721724, 27.008169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331614, 30.784237, 27.015804>,  <29.945631, 30.888424, 27.028528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331614, 30.784237, 27.015804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220728, -0.871268, 0.438374,
		-0.141897, -0.415991, -0.898229,
		0.964958, -0.260468, -0.031810,
		30.621101, 30.706097, 27.006262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032063, 30.108978, 26.984869>,  <29.945631, 30.888424, 27.028528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032063, 30.108978, 26.984869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398434, 30.204212, 27.114109>,  <30.618256, 30.261353, 27.191654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398434, 30.204212, 27.114109>,  <30.032063, 30.108978, 26.984869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398434, 30.204212, 27.114109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044396, -0.740004, 0.671136,
		0.398883, -0.629056, -0.667219,
		0.915927, 0.238083, 0.323102,
		30.673212, 30.275637, 27.211040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394817, 29.512798, 26.946621>,  <30.032063, 30.108978, 26.984869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394817, 29.512798, 26.946621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616060, 29.735733, 27.194313>,  <30.748806, 29.869493, 27.342928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616060, 29.735733, 27.194313>,  <30.394817, 29.512798, 26.946621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616060, 29.735733, 27.194313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060469, -0.714457, 0.697061,
		0.830913, -0.422994, -0.361470,
		0.553107, 0.557339, 0.619230,
		30.781992, 29.902935, 27.380081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992683, 29.124540, 27.248499>,  <30.394817, 29.512798, 26.946621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992683, 29.124540, 27.248499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.928938, 29.433582, 27.494324>,  <30.890690, 29.619007, 27.641819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.928938, 29.433582, 27.494324>,  <30.992683, 29.124540, 27.248499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928938, 29.433582, 27.494324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008376, -0.621438, 0.783418,
		0.987184, 0.129997, 0.092565,
		-0.159366, 0.772603, 0.614563,
		30.881128, 29.665363, 27.678692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493631, 28.929022, 27.882109>,  <30.992683, 29.124540, 27.248499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493631, 28.929022, 27.882109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250254, 29.220039, 28.008900>,  <31.104227, 29.394650, 28.084974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250254, 29.220039, 28.008900>,  <31.493631, 28.929022, 27.882109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250254, 29.220039, 28.008900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053918, -0.436396, 0.898138,
		0.791763, 0.529376, 0.304750,
		-0.608444, 0.727544, 0.316979,
		31.067720, 29.438303, 28.103994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833246, 29.214905, 28.341324>,  <31.493631, 28.929022, 27.882109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833246, 29.214905, 28.341324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.448578, 29.291561, 28.419773>,  <31.217777, 29.337555, 28.466843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.448578, 29.291561, 28.419773>,  <31.833246, 29.214905, 28.341324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448578, 29.291561, 28.419773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051077, -0.577523, 0.814775,
		0.269411, 0.793562, 0.545598,
		-0.961670, 0.191642, 0.196124,
		31.160076, 29.349054, 28.478611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817169, 29.481888, 29.027311>,  <31.833246, 29.214905, 28.341324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817169, 29.481888, 29.027311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428711, 29.392628, 28.993664>,  <31.195635, 29.339071, 28.973475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428711, 29.392628, 28.993664>,  <31.817169, 29.481888, 29.027311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428711, 29.392628, 28.993664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021470, -0.433112, 0.901084,
		-0.237510, 0.873280, 0.425407,
		-0.971148, -0.223150, -0.084119,
		31.137367, 29.325684, 28.968428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392864, 29.677368, 29.679209>,  <31.817169, 29.481888, 29.027311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392864, 29.677368, 29.679209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.187923, 29.376652, 29.513172>,  <31.064959, 29.196222, 29.413549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.187923, 29.376652, 29.513172>,  <31.392864, 29.677368, 29.679209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187923, 29.376652, 29.513172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313336, -0.286381, 0.905432,
		-0.799572, 0.593964, -0.088836,
		-0.512353, -0.751793, -0.415093,
		31.034218, 29.151114, 29.388645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837826, 29.723492, 30.109922>,  <31.392864, 29.677368, 29.679209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837826, 29.723492, 30.109922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.851185, 29.366291, 29.930397>,  <30.859201, 29.151970, 29.822681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.851185, 29.366291, 29.930397>,  <30.837826, 29.723492, 30.109922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851185, 29.366291, 29.930397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388622, -0.425328, 0.817355,
		-0.920792, 0.147119, -0.361246,
		0.033400, -0.893002, -0.448812,
		30.861204, 29.098391, 29.795753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195362, 29.386751, 30.413420>,  <30.837826, 29.723492, 30.109922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195362, 29.386751, 30.413420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423468, 29.093807, 30.264587>,  <30.560331, 28.918041, 30.175287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423468, 29.093807, 30.264587>,  <30.195362, 29.386751, 30.413420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423468, 29.093807, 30.264587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098958, -0.510899, 0.853926,
		-0.815480, -0.450141, -0.363820,
		0.570263, -0.732362, -0.372083,
		30.594547, 28.874098, 30.152962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818110, 28.878231, 30.426252>,  <30.195362, 29.386751, 30.413420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818110, 28.878231, 30.426252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189491, 28.729679, 30.423378>,  <30.412319, 28.640547, 30.421654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189491, 28.729679, 30.423378>,  <29.818110, 28.878231, 30.426252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189491, 28.729679, 30.423378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202736, -0.522862, 0.827957,
		-0.311245, -0.767262, -0.560745,
		0.928453, -0.371381, -0.007186,
		30.468027, 28.618265, 30.421223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062731, 28.749987, 30.288465>,  <29.818110, 28.878231, 30.426252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062731, 28.749987, 30.288465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.827591, 28.981289, 30.514759>,  <28.686508, 29.120071, 30.650536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.827591, 28.981289, 30.514759>,  <29.062731, 28.749987, 30.288465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827591, 28.981289, 30.514759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021526, 0.710258, -0.703613,
		-0.808685, -0.401439, -0.429971,
		-0.587847, 0.578257, 0.565733,
		28.651237, 29.154766, 30.684479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413036, 28.936260, 29.888195>,  <29.062731, 28.749987, 30.288465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413036, 28.936260, 29.888195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.447212, 29.218449, 30.169624>,  <28.467718, 29.387762, 30.338482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.447212, 29.218449, 30.169624>,  <28.413036, 28.936260, 29.888195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447212, 29.218449, 30.169624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121805, 0.708253, -0.695372,
		-0.988870, -0.026285, 0.146443,
		0.085441, 0.705470, 0.703571,
		28.472845, 29.430090, 30.380695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856670, 29.372622, 29.737774>,  <28.413036, 28.936260, 29.888195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856670, 29.372622, 29.737774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.091242, 29.576218, 29.989815>,  <28.231985, 29.698376, 30.141039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.091242, 29.576218, 29.989815>,  <27.856670, 29.372622, 29.737774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091242, 29.576218, 29.989815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294433, 0.858642, -0.419575,
		-0.754592, 0.060528, 0.653396,
		0.586429, 0.508989, 0.630103,
		28.267170, 29.728914, 30.178846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327658, 30.037416, 29.880217>,  <27.856670, 29.372622, 29.737774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327658, 30.037416, 29.880217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.705347, 30.120430, 29.982487>,  <27.931961, 30.170238, 30.043850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.705347, 30.120430, 29.982487>,  <27.327658, 30.037416, 29.880217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705347, 30.120430, 29.982487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087021, 0.906066, -0.414092,
		-0.317600, 0.368746, 0.873588,
		0.944223, 0.207536, 0.255678,
		27.988613, 30.182692, 30.059191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401354, 30.736099, 30.239954>,  <27.327658, 30.037416, 29.880217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401354, 30.736099, 30.239954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.741476, 30.652046, 30.046947>,  <27.945549, 30.601614, 29.931143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.741476, 30.652046, 30.046947>,  <27.401354, 30.736099, 30.239954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741476, 30.652046, 30.046947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059238, 0.872791, -0.484485,
		0.522943, 0.440544, 0.729693,
		0.850307, -0.210133, -0.482517,
		27.996569, 30.589006, 29.902193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593901, 31.435253, 30.029034>,  <27.401354, 30.736099, 30.239954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593901, 31.435253, 30.029034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.836517, 31.190079, 29.826485>,  <27.982088, 31.042974, 29.704954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.836517, 31.190079, 29.826485>,  <27.593901, 31.435253, 30.029034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836517, 31.190079, 29.826485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084118, 0.682807, -0.725740,
		0.790589, 0.397596, 0.465710,
		0.606541, -0.612937, -0.506375,
		28.018480, 31.006197, 29.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182341, 31.787279, 29.890503>,  <27.593901, 31.435253, 30.029034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182341, 31.787279, 29.890503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.162893, 31.496696, 29.616306>,  <28.151224, 31.322348, 29.451788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.162893, 31.496696, 29.616306>,  <28.182341, 31.787279, 29.890503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162893, 31.496696, 29.616306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088879, 0.680432, -0.727401,
		0.994855, -0.096290, 0.031486,
		-0.048618, -0.726457, -0.685490,
		28.148308, 31.278759, 29.410660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793819, 31.820988, 29.431156>,  <28.182341, 31.787279, 29.890503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793819, 31.820988, 29.431156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.490269, 31.636833, 29.246918>,  <28.308138, 31.526340, 29.136375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.490269, 31.636833, 29.246918>,  <28.793819, 31.820988, 29.431156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490269, 31.636833, 29.246918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164911, 0.548361, -0.819820,
		0.630011, -0.698098, -0.340214,
		-0.758875, -0.460390, -0.460597,
		28.262606, 31.498716, 29.108738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055422, 31.760326, 28.742575>,  <28.793819, 31.820988, 29.431156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055422, 31.760326, 28.742575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.676077, 31.648048, 28.683491>,  <28.448469, 31.580683, 28.648041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.676077, 31.648048, 28.683491>,  <29.055422, 31.760326, 28.742575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676077, 31.648048, 28.683491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006612, 0.483077, -0.875553,
		0.317117, -0.829365, -0.459989,
		-0.948364, -0.280694, -0.147708,
		28.391567, 31.563841, 28.639179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022415, 31.506308, 27.981821>,  <29.055422, 31.760326, 28.742575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022415, 31.506308, 27.981821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.670366, 31.646782, 28.109604>,  <28.459137, 31.731066, 28.186274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.670366, 31.646782, 28.109604>,  <29.022415, 31.506308, 27.981821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670366, 31.646782, 28.109604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136654, 0.457021, -0.878896,
		-0.454655, -0.817191, -0.354243,
		-0.880122, 0.351186, 0.319459,
		28.406330, 31.752138, 28.205442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537838, 31.408300, 27.449993>,  <29.022415, 31.506308, 27.981821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537838, 31.408300, 27.449993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.363394, 31.686794, 27.678051>,  <28.258728, 31.853891, 27.814886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.363394, 31.686794, 27.678051>,  <28.537838, 31.408300, 27.449993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363394, 31.686794, 27.678051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103921, 0.590367, -0.800417,
		-0.893873, -0.408319, -0.185111,
		-0.436108, 0.696235, 0.570146,
		28.232561, 31.895664, 27.849094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920538, 31.622789, 27.046286>,  <28.537838, 31.408300, 27.449993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920538, 31.622789, 27.046286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.009733, 31.911449, 27.308430>,  <28.063251, 32.084644, 27.465717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.009733, 31.911449, 27.308430>,  <27.920538, 31.622789, 27.046286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009733, 31.911449, 27.308430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118984, 0.687412, -0.716455,
		-0.967532, 0.081785, 0.239151,
		0.222991, 0.721648, 0.655362,
		28.076630, 32.127945, 27.505039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401447, 32.124386, 27.042339>,  <27.920538, 31.622789, 27.046286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401447, 32.124386, 27.042339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701750, 32.307430, 27.232899>,  <27.881931, 32.417259, 27.347235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701750, 32.307430, 27.232899>,  <27.401447, 32.124386, 27.042339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701750, 32.307430, 27.232899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051021, 0.759194, -0.648861,
		-0.658607, 0.462830, 0.593317,
		0.750756, 0.457616, 0.476397,
		27.926977, 32.444714, 27.375818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101389, 32.828274, 27.215788>,  <27.401447, 32.124386, 27.042339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101389, 32.828274, 27.215788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.500277, 32.840466, 27.188572>,  <27.739609, 32.847782, 27.172243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.500277, 32.840466, 27.188572>,  <27.101389, 32.828274, 27.215788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500277, 32.840466, 27.188572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056335, 0.905838, -0.419862,
		0.048836, 0.422526, 0.905034,
		0.997217, 0.030480, -0.068040,
		27.799442, 32.849609, 27.168159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.020134, 38.035915, 16.312731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232708, 38.315094, 16.504753>,  <40.360252, 38.482601, 16.619967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232708, 38.315094, 16.504753>,  <40.020134, 38.035915, 16.312731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232708, 38.315094, 16.504753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101261, -0.614983, 0.782012,
		0.841027, -0.366975, -0.397496,
		0.531432, 0.697944, 0.480057,
		40.392139, 38.524479, 16.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622540, 37.806805, 16.510267>,  <40.020134, 38.035915, 16.312731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622540, 37.806805, 16.510267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566689, 38.110798, 16.764175>,  <40.533176, 38.293194, 16.916521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566689, 38.110798, 16.764175>,  <40.622540, 37.806805, 16.510267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566689, 38.110798, 16.764175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096653, -0.648449, 0.755097,
		0.985476, 0.044079, 0.163995,
		-0.139626, 0.759980, 0.634771,
		40.524799, 38.338791, 16.954607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091232, 37.681973, 17.011395>,  <40.622540, 37.806805, 16.510267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091232, 37.681973, 17.011395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.843349, 37.953918, 17.168236>,  <40.694618, 38.117085, 17.262341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.843349, 37.953918, 17.168236>,  <41.091232, 37.681973, 17.011395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843349, 37.953918, 17.168236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015790, -0.510302, 0.859851,
		0.784675, 0.526663, 0.326972,
		-0.619706, 0.679866, 0.392105,
		40.657436, 38.157879, 17.285868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439709, 38.098362, 17.505312>,  <41.091232, 37.681973, 17.011395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439709, 38.098362, 17.505312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059818, 38.157104, 17.615913>,  <40.831882, 38.192348, 17.682274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059818, 38.157104, 17.615913>,  <41.439709, 38.098362, 17.505312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059818, 38.157104, 17.615913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199865, -0.395413, 0.896495,
		0.240989, 0.906687, 0.346182,
		-0.949725, 0.146855, 0.276505,
		40.774902, 38.201160, 17.698864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439560, 38.306244, 18.215111>,  <41.439709, 38.098362, 17.505312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439560, 38.306244, 18.215111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068665, 38.162151, 18.174183>,  <40.846127, 38.075695, 18.149626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068665, 38.162151, 18.174183>,  <41.439560, 38.306244, 18.215111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068665, 38.162151, 18.174183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157364, -0.622753, 0.766431,
		-0.339810, 0.694561, 0.634125,
		-0.927235, -0.360229, -0.102319,
		40.790493, 38.054081, 18.143488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070847, 38.317017, 18.858101>,  <41.439560, 38.306244, 18.215111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070847, 38.317017, 18.858101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.864880, 38.036785, 18.660492>,  <40.741299, 37.868649, 18.541925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.864880, 38.036785, 18.660492>,  <41.070847, 38.317017, 18.858101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864880, 38.036785, 18.660492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035849, -0.558192, 0.828937,
		-0.856492, 0.444541, 0.262306,
		-0.514913, -0.700575, -0.494024,
		40.710407, 37.826614, 18.512285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707104, 38.013611, 19.402781>,  <41.070847, 38.317017, 18.858101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707104, 38.013611, 19.402781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.652683, 37.748631, 19.108120>,  <40.620029, 37.589642, 18.931324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.652683, 37.748631, 19.108120>,  <40.707104, 38.013611, 19.402781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652683, 37.748631, 19.108120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018024, -0.745095, 0.666714,
		-0.990537, 0.077432, 0.113313,
		-0.136054, -0.662448, -0.736649,
		40.611866, 37.549896, 18.887125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172066, 37.710445, 19.540285>,  <40.707104, 38.013611, 19.402781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172066, 37.710445, 19.540285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357906, 37.444939, 19.305832>,  <40.469410, 37.285633, 19.165159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357906, 37.444939, 19.305832>,  <40.172066, 37.710445, 19.540285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357906, 37.444939, 19.305832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051593, -0.681075, 0.730393,
		-0.884015, -0.309102, -0.350675,
		0.464603, -0.663771, -0.586133,
		40.497288, 37.245808, 19.129992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748062, 37.123257, 19.641661>,  <40.172066, 37.710445, 19.540285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748062, 37.123257, 19.641661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103683, 37.011936, 19.496258>,  <40.317055, 36.945145, 19.409016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103683, 37.011936, 19.496258>,  <39.748062, 37.123257, 19.641661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103683, 37.011936, 19.496258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064719, -0.709637, 0.701589,
		-0.453210, -0.647274, -0.612892,
		0.889051, -0.278301, -0.363506,
		40.370399, 36.928444, 19.387205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650261, 36.458748, 19.652740>,  <39.748062, 37.123257, 19.641661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650261, 36.458748, 19.652740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.048477, 36.493614, 19.638367>,  <40.287407, 36.514534, 19.629744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.048477, 36.493614, 19.638367>,  <39.650261, 36.458748, 19.652740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048477, 36.493614, 19.638367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093261, -0.854360, 0.511245,
		0.013867, -0.512318, -0.858684,
		0.995545, 0.087171, -0.035932,
		40.347141, 36.519764, 19.627586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872322, 35.828083, 19.289965>,  <39.650261, 36.458748, 19.652740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872322, 35.828083, 19.289965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.163731, 35.999222, 19.503952>,  <40.338577, 36.101906, 19.632345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.163731, 35.999222, 19.503952>,  <39.872322, 35.828083, 19.289965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163731, 35.999222, 19.503952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027414, -0.798542, 0.601314,
		0.684469, -0.423407, -0.593488,
		0.728526, 0.427851, 0.534971,
		40.382290, 36.127579, 19.664444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434097, 35.343410, 19.376320>,  <39.872322, 35.828083, 19.289965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434097, 35.343410, 19.376320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499863, 35.603020, 19.673435>,  <40.539322, 35.758785, 19.851704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499863, 35.603020, 19.673435>,  <40.434097, 35.343410, 19.376320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499863, 35.603020, 19.673435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022976, -0.755350, 0.654919,
		0.986124, -0.090610, -0.139101,
		0.164411, 0.649027, 0.742787,
		40.549187, 35.797729, 19.896271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912800, 34.962994, 19.820929>,  <40.434097, 35.343410, 19.376320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912800, 34.962994, 19.820929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.757458, 35.259403, 20.040043>,  <40.664253, 35.437248, 20.171513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.757458, 35.259403, 20.040043>,  <40.912800, 34.962994, 19.820929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757458, 35.259403, 20.040043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139669, -0.634908, 0.759858,
		0.910865, 0.218583, 0.350065,
		-0.388351, 0.741022, 0.547786,
		40.640953, 35.481709, 20.204378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259602, 34.911636, 20.441147>,  <40.912800, 34.962994, 19.820929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259602, 34.911636, 20.441147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.938511, 35.126778, 20.544174>,  <40.745857, 35.255863, 20.605991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.938511, 35.126778, 20.544174>,  <41.259602, 34.911636, 20.441147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938511, 35.126778, 20.544174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131104, -0.580516, 0.803625,
		0.581751, 0.611326, 0.536512,
		-0.802731, 0.537849, 0.257568,
		40.697693, 35.288132, 20.621445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320202, 35.144947, 21.176800>,  <41.259602, 34.911636, 20.441147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320202, 35.144947, 21.176800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.932652, 35.136398, 21.078148>,  <40.700123, 35.131268, 21.018957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.932652, 35.136398, 21.078148>,  <41.320202, 35.144947, 21.176800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932652, 35.136398, 21.078148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181547, -0.615950, 0.766581,
		-0.168293, 0.787495, 0.592899,
		-0.968875, -0.021372, -0.246627,
		40.641991, 35.129986, 21.004160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089931, 34.897274, 21.688221>,  <41.320202, 35.144947, 21.176800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089931, 34.897274, 21.688221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753071, 34.859631, 21.475834>,  <40.550957, 34.837044, 21.348402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753071, 34.859631, 21.475834>,  <41.089931, 34.897274, 21.688221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753071, 34.859631, 21.475834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256128, -0.796689, 0.547435,
		-0.474534, 0.597019, 0.646828,
		-0.842149, -0.094106, -0.530969,
		40.500427, 34.831398, 21.316544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528549, 34.871471, 22.171213>,  <41.089931, 34.897274, 21.688221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528549, 34.871471, 22.171213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.401306, 34.684456, 21.841312>,  <40.324959, 34.572247, 21.643372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.401306, 34.684456, 21.841312>,  <40.528549, 34.871471, 22.171213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401306, 34.684456, 21.841312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426105, -0.706614, 0.564917,
		-0.846899, 0.531138, 0.025564,
		-0.318113, -0.467535, -0.824752,
		40.305874, 34.544197, 21.593887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816509, 34.759186, 22.309677>,  <40.528549, 34.871471, 22.171213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816509, 34.759186, 22.309677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.890129, 34.520535, 21.997227>,  <39.934303, 34.377342, 21.809757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.890129, 34.520535, 21.997227>,  <39.816509, 34.759186, 22.309677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890129, 34.520535, 21.997227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691564, -0.643328, 0.328432,
		-0.698472, 0.479748, -0.531016,
		0.184053, -0.596633, -0.781124,
		39.945343, 34.341545, 21.762890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240582, 34.632111, 21.862244>,  <39.816509, 34.759186, 22.309677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240582, 34.632111, 21.862244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.480640, 34.314560, 21.823071>,  <39.624676, 34.124031, 21.799566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.480640, 34.314560, 21.823071>,  <39.240582, 34.632111, 21.862244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480640, 34.314560, 21.823071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742797, -0.598539, 0.300007,
		-0.296784, -0.107304, -0.948897,
		0.600144, -0.793875, -0.097931,
		39.660683, 34.076397, 21.793692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814590, 34.198669, 21.588453>,  <39.240582, 34.632111, 21.862244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814590, 34.198669, 21.588453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115162, 33.955997, 21.692226>,  <39.295506, 33.810394, 21.754490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115162, 33.955997, 21.692226>,  <38.814590, 34.198669, 21.588453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115162, 33.955997, 21.692226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659796, -0.694201, 0.287671,
		0.005576, -0.387336, -0.921922,
		0.751424, -0.606676, 0.259434,
		39.340588, 33.773994, 21.770056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868092, 33.530266, 21.203884>,  <38.814590, 34.198669, 21.588453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868092, 33.530266, 21.203884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.042179, 33.479443, 21.560410>,  <39.146633, 33.448948, 21.774324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.042179, 33.479443, 21.560410>,  <38.868092, 33.530266, 21.203884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042179, 33.479443, 21.560410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610976, -0.768820, 0.188740,
		0.661280, -0.626715, -0.412234,
		0.435220, -0.127055, 0.891314,
		39.172745, 33.441326, 21.827805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203812, 33.691399, 20.848278>,  <38.868092, 33.530266, 21.203884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203812, 33.691399, 20.848278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.910164, 33.943581, 20.747410>,  <37.733974, 34.094891, 20.686888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.910164, 33.943581, 20.747410>,  <38.203812, 33.691399, 20.848278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910164, 33.943581, 20.747410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306461, -0.023766, -0.951586,
		-0.605926, -0.775861, -0.175763,
		-0.734122, 0.630455, -0.252172,
		37.689926, 34.132717, 20.671759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740555, 33.433533, 20.237646>,  <38.203812, 33.691399, 20.848278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740555, 33.433533, 20.237646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.754230, 33.833187, 20.247169>,  <37.762436, 34.072979, 20.252884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.754230, 33.833187, 20.247169>,  <37.740555, 33.433533, 20.237646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754230, 33.833187, 20.247169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386173, 0.008767, -0.922385,
		-0.921793, 0.040729, -0.385538,
		0.034188, 0.999132, 0.023810,
		37.764488, 34.132927, 20.254313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396465, 33.635803, 19.595041>,  <37.740555, 33.433533, 20.237646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396465, 33.635803, 19.595041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595226, 33.963333, 19.710014>,  <37.714481, 34.159851, 19.778997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595226, 33.963333, 19.710014>,  <37.396465, 33.635803, 19.595041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595226, 33.963333, 19.710014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352956, 0.111890, -0.928925,
		-0.792788, 0.563033, -0.233411,
		0.496899, 0.818825, 0.287431,
		37.744297, 34.208981, 19.796244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200596, 34.214230, 19.180197>,  <37.396465, 33.635803, 19.595041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200596, 34.214230, 19.180197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.557106, 34.315880, 19.330425>,  <37.771011, 34.376869, 19.420563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.557106, 34.315880, 19.330425>,  <37.200596, 34.214230, 19.180197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557106, 34.315880, 19.330425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361529, 0.101752, -0.926792,
		-0.273738, 0.961803, -0.001186,
		0.891271, 0.254127, 0.375573,
		37.824486, 34.392117, 19.443098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458523, 34.708103, 18.688761>,  <37.200596, 34.214230, 19.180197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458523, 34.708103, 18.688761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.791996, 34.603951, 18.883564>,  <37.992081, 34.541458, 19.000446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.791996, 34.603951, 18.883564>,  <37.458523, 34.708103, 18.688761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791996, 34.603951, 18.883564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542078, 0.217388, -0.811723,
		0.105486, 0.940715, 0.322378,
		0.833681, -0.260380, 0.487009,
		38.042099, 34.525837, 19.029667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793030, 35.255039, 18.692772>,  <37.458523, 34.708103, 18.688761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793030, 35.255039, 18.692772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085228, 35.000771, 18.792610>,  <38.260548, 34.848209, 18.852512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085228, 35.000771, 18.792610>,  <37.793030, 35.255039, 18.692772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085228, 35.000771, 18.792610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528622, 0.294935, -0.795973,
		0.432364, 0.713395, 0.551479,
		0.730493, -0.635674, 0.249596,
		38.304375, 34.810070, 18.867489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278053, 35.737267, 18.813154>,  <37.793030, 35.255039, 18.692772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278053, 35.737267, 18.813154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.437332, 35.378841, 18.734661>,  <38.532898, 35.163784, 18.687565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.437332, 35.378841, 18.734661>,  <38.278053, 35.737267, 18.813154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437332, 35.378841, 18.734661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450841, 0.377481, -0.808858,
		0.798863, 0.233614, 0.554295,
		0.398196, -0.896065, -0.196233,
		38.556789, 35.110023, 18.675791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021389, 35.890221, 18.547125>,  <38.278053, 35.737267, 18.813154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021389, 35.890221, 18.547125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.911335, 35.525242, 18.425968>,  <38.845303, 35.306255, 18.353273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.911335, 35.525242, 18.425968>,  <39.021389, 35.890221, 18.547125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911335, 35.525242, 18.425968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211347, 0.249942, -0.944913,
		0.937889, -0.323990, 0.124076,
		-0.275130, -0.912447, -0.302892,
		38.828796, 35.251507, 18.335100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631828, 35.654549, 18.123457>,  <39.021389, 35.890221, 18.547125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631828, 35.654549, 18.123457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.302055, 35.449520, 18.027473>,  <39.104191, 35.326504, 17.969883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.302055, 35.449520, 18.027473>,  <39.631828, 35.654549, 18.123457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302055, 35.449520, 18.027473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166081, 0.186213, -0.968371,
		0.541043, -0.838209, -0.068392,
		-0.824433, -0.512572, -0.239960,
		39.054726, 35.295750, 17.955486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944649, 35.207294, 17.635302>,  <39.631828, 35.654549, 18.123457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944649, 35.207294, 17.635302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.553890, 35.207264, 17.549809>,  <39.319435, 35.207245, 17.498512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.553890, 35.207264, 17.549809>,  <39.944649, 35.207294, 17.635302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553890, 35.207264, 17.549809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207635, 0.236808, -0.949110,
		0.050687, -0.971556, -0.231320,
		-0.976892, -0.000078, -0.213733,
		39.260822, 35.207241, 17.485689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791218, 34.881924, 16.988781>,  <39.944649, 35.207294, 17.635302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791218, 34.881924, 16.988781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.459827, 35.103752, 17.019939>,  <39.260994, 35.236851, 17.038635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.459827, 35.103752, 17.019939>,  <39.791218, 34.881924, 16.988781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459827, 35.103752, 17.019939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000755, 0.137991, -0.990433,
		-0.560018, -0.820613, -0.113905,
		-0.828480, 0.554574, 0.077897,
		39.211285, 35.270123, 17.043308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322578, 34.585567, 16.448412>,  <39.791218, 34.881924, 16.988781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322578, 34.585567, 16.448412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.205112, 34.948490, 16.568783>,  <39.134632, 35.166245, 16.641006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.205112, 34.948490, 16.568783>,  <39.322578, 34.585567, 16.448412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205112, 34.948490, 16.568783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071340, 0.293129, -0.953408,
		-0.953243, -0.301449, -0.021354,
		-0.293663, 0.907306, 0.300928,
		39.117012, 35.220680, 16.659061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722134, 34.798210, 15.978910>,  <39.322578, 34.585567, 16.448412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722134, 34.798210, 15.978910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.840637, 35.149353, 16.129429>,  <38.911739, 35.360039, 16.219740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.840637, 35.149353, 16.129429>,  <38.722134, 34.798210, 15.978910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840637, 35.149353, 16.129429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067139, 0.373867, -0.925049,
		-0.952744, 0.299322, 0.051824,
		0.296263, 0.877855, 0.376295,
		38.929516, 35.412708, 16.242317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382786, 35.237720, 15.604771>,  <38.722134, 34.798210, 15.978910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382786, 35.237720, 15.604771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657433, 35.488297, 15.752358>,  <38.822220, 35.638641, 15.840911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657433, 35.488297, 15.752358>,  <38.382786, 35.237720, 15.604771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657433, 35.488297, 15.752358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090210, 0.576995, -0.811751,
		-0.721403, 0.524076, 0.452684,
		0.686615, 0.626436, 0.368969,
		38.863419, 35.676228, 15.863049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166431, 36.015854, 15.596839>,  <38.382786, 35.237720, 15.604771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166431, 36.015854, 15.596839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564228, 35.985912, 15.567485>,  <38.802906, 35.967945, 15.549872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564228, 35.985912, 15.567485>,  <38.166431, 36.015854, 15.596839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564228, 35.985912, 15.567485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022254, 0.533341, -0.845608,
		0.102438, 0.842582, 0.528737,
		0.994490, -0.074856, -0.073385,
		38.862576, 35.963455, 15.545469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266026, 36.655689, 15.244136>,  <38.166431, 36.015854, 15.596839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266026, 36.655689, 15.244136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.600563, 36.436584, 15.235282>,  <38.801285, 36.305122, 15.229970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.600563, 36.436584, 15.235282>,  <38.266026, 36.655689, 15.244136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600563, 36.436584, 15.235282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217365, 0.368404, -0.903898,
		0.503276, 0.751155, 0.427175,
		0.836341, -0.547763, -0.022134,
		38.851467, 36.272255, 15.228642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847748, 37.122040, 15.289630>,  <38.266026, 36.655689, 15.244136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847748, 37.122040, 15.289630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.965401, 36.796894, 15.088538>,  <39.035992, 36.601807, 14.967883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.965401, 36.796894, 15.088538>,  <38.847748, 37.122040, 15.289630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965401, 36.796894, 15.088538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296234, 0.577629, -0.760651,
		0.908697, 0.074807, 0.410698,
		0.294133, -0.812865, -0.502729,
		39.053642, 36.553036, 14.937719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594231, 37.346020, 14.917776>,  <38.847748, 37.122040, 15.289630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594231, 37.346020, 14.917776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.472549, 37.001133, 14.755771>,  <39.399540, 36.794201, 14.658567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.472549, 37.001133, 14.755771>,  <39.594231, 37.346020, 14.917776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472549, 37.001133, 14.755771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351721, 0.293462, -0.888917,
		0.885298, -0.412864, 0.213989,
		-0.304204, -0.862220, -0.405014,
		39.381287, 36.742466, 14.634267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141327, 37.230396, 14.460563>,  <39.594231, 37.346020, 14.917776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141327, 37.230396, 14.460563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.834431, 36.997810, 14.352315>,  <39.650291, 36.858257, 14.287367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.834431, 36.997810, 14.352315>,  <40.141327, 37.230396, 14.460563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834431, 36.997810, 14.352315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170653, 0.221650, -0.960077,
		0.618237, -0.782793, -0.070830,
		-0.767241, -0.581468, -0.270619,
		39.604259, 36.823368, 14.271130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415104, 36.738464, 13.971231>,  <40.141327, 37.230396, 14.460563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415104, 36.738464, 13.971231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024288, 36.778770, 13.896138>,  <39.789799, 36.802956, 13.851083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024288, 36.778770, 13.896138>,  <40.415104, 36.738464, 13.971231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024288, 36.778770, 13.896138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198842, 0.114717, -0.973294,
		-0.076542, -0.988274, -0.132120,
		-0.977038, 0.100769, -0.187730,
		39.731178, 36.809002, 13.839819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113045, 36.209785, 13.430098>,  <40.415104, 36.738464, 13.971231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113045, 36.209785, 13.430098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879951, 36.534569, 13.416610>,  <39.740093, 36.729439, 13.408517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879951, 36.534569, 13.416610>,  <40.113045, 36.209785, 13.430098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879951, 36.534569, 13.416610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122402, 0.046676, -0.991382,
		-0.803391, -0.581840, -0.126586,
		-0.582735, 0.811962, -0.033720,
		39.705132, 36.778156, 13.406494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.060883, 31.378986, 32.251472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.443111, 31.261082, 32.251331>,  <29.672449, 31.190340, 32.251247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.443111, 31.261082, 32.251331>,  <29.060883, 31.378986, 32.251472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443111, 31.261082, 32.251331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225326, -0.731251, 0.643817,
		-0.190032, -0.615133, -0.765180,
		0.955571, -0.294761, -0.000355,
		29.729782, 31.172653, 32.251225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119213, 30.659618, 32.020233>,  <29.060883, 31.378986, 32.251472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119213, 30.659618, 32.020233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450718, 30.733158, 32.231647>,  <29.649620, 30.777283, 32.358498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450718, 30.733158, 32.231647>,  <29.119213, 30.659618, 32.020233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450718, 30.733158, 32.231647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201861, -0.782684, 0.588776,
		0.521926, -0.594646, -0.611547,
		0.828762, 0.183850, 0.528539,
		29.699347, 30.788313, 32.390209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582518, 29.998446, 32.101196>,  <29.119213, 30.659618, 32.020233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582518, 29.998446, 32.101196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.671476, 30.230591, 32.414558>,  <29.724852, 30.369877, 32.602573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.671476, 30.230591, 32.414558>,  <29.582518, 29.998446, 32.101196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671476, 30.230591, 32.414558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240337, -0.746095, 0.620951,
		0.944870, -0.326377, -0.026445,
		0.222395, 0.580362, 0.783403,
		29.738195, 30.404699, 32.649578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992781, 29.700035, 32.641838>,  <29.582518, 29.998446, 32.101196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992781, 29.700035, 32.641838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.810614, 29.994316, 32.842373>,  <29.701313, 30.170885, 32.962692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.810614, 29.994316, 32.842373>,  <29.992781, 29.700035, 32.641838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810614, 29.994316, 32.842373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248867, -0.645878, 0.721738,
		0.854787, 0.203925, 0.477235,
		-0.455417, 0.735701, 0.501338,
		29.673988, 30.215027, 32.992775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090342, 29.494505, 33.289272>,  <29.992781, 29.700035, 32.641838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090342, 29.494505, 33.289272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.826090, 29.787735, 33.353981>,  <29.667540, 29.963673, 33.392807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.826090, 29.787735, 33.353981>,  <30.090342, 29.494505, 33.289272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826090, 29.787735, 33.353981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269253, -0.432528, 0.860478,
		0.700765, 0.524900, 0.483123,
		-0.660630, 0.733075, 0.161769,
		29.627901, 30.007658, 33.402512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200697, 29.686941, 33.916874>,  <30.090342, 29.494505, 33.289272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200697, 29.686941, 33.916874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.839460, 29.858578, 33.909859>,  <29.622719, 29.961559, 33.905651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.839460, 29.858578, 33.909859>,  <30.200697, 29.686941, 33.916874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839460, 29.858578, 33.909859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267080, -0.529202, 0.805366,
		0.336298, 0.732001, 0.592519,
		-0.903090, 0.429093, -0.017533,
		29.568533, 29.987307, 33.904598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009361, 30.007105, 34.630547>,  <30.200697, 29.686941, 33.916874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009361, 30.007105, 34.630547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.660065, 29.936760, 34.448769>,  <29.450487, 29.894554, 34.339703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.660065, 29.936760, 34.448769>,  <30.009361, 30.007105, 34.630547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660065, 29.936760, 34.448769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412190, -0.230836, 0.881371,
		-0.259902, 0.956968, 0.129087,
		-0.873241, -0.175861, -0.454447,
		29.398092, 29.884001, 34.312435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572126, 30.509552, 34.880035>,  <30.009361, 30.007105, 34.630547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572126, 30.509552, 34.880035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.357868, 30.194778, 34.757515>,  <29.229313, 30.005915, 34.684002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.357868, 30.194778, 34.757515>,  <29.572126, 30.509552, 34.880035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357868, 30.194778, 34.757515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374666, -0.103601, 0.921354,
		-0.756776, 0.608281, -0.239343,
		-0.535645, -0.786932, -0.306305,
		29.197174, 29.958698, 34.665623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945847, 30.599892, 35.106171>,  <29.572126, 30.509552, 34.880035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945847, 30.599892, 35.106171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.946991, 30.206989, 35.031158>,  <28.947678, 29.971249, 34.986149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.946991, 30.206989, 35.031158>,  <28.945847, 30.599892, 35.106171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946991, 30.206989, 35.031158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644678, -0.145171, 0.750544,
		-0.764449, 0.118753, -0.633652,
		0.002859, -0.982254, -0.187533,
		28.947849, 29.912313, 34.974899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202000, 30.444075, 35.090923>,  <28.945847, 30.599892, 35.106171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202000, 30.444075, 35.090923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373280, 30.084518, 35.128105>,  <28.476048, 29.868784, 35.150414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373280, 30.084518, 35.128105>,  <28.202000, 30.444075, 35.090923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373280, 30.084518, 35.128105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622094, -0.218599, 0.751807,
		-0.655474, -0.379748, -0.652798,
		0.428198, -0.898891, 0.092953,
		28.501740, 29.814852, 35.155991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670465, 29.955654, 34.808327>,  <28.202000, 30.444075, 35.090923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670465, 29.955654, 34.808327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.934334, 29.766052, 35.041618>,  <28.092655, 29.652292, 35.181595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.934334, 29.766052, 35.041618>,  <27.670465, 29.955654, 34.808327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934334, 29.766052, 35.041618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732187, -0.230285, 0.640992,
		-0.169520, -0.849878, -0.498968,
		0.659670, -0.473999, 0.583232,
		28.132235, 29.623852, 35.216587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454885, 29.327793, 35.047161>,  <27.670465, 29.955654, 34.808327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454885, 29.327793, 35.047161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.712276, 29.447018, 35.329182>,  <27.866711, 29.518553, 35.498394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.712276, 29.447018, 35.329182>,  <27.454885, 29.327793, 35.047161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712276, 29.447018, 35.329182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691366, -0.169048, 0.702450,
		0.328561, -0.939459, 0.097290,
		0.643476, 0.298061, 0.705052,
		27.905319, 29.536436, 35.540699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600790, 28.787842, 35.457264>,  <27.454885, 29.327793, 35.047161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600790, 28.787842, 35.457264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.617834, 29.128967, 35.665451>,  <27.628061, 29.333643, 35.790363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.617834, 29.128967, 35.665451>,  <27.600790, 28.787842, 35.457264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617834, 29.128967, 35.665451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655891, -0.369091, 0.658467,
		0.753652, -0.369430, 0.543627,
		0.042610, 0.852815, 0.520472,
		27.630617, 29.384811, 35.821594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579340, 28.582413, 36.140316>,  <27.600790, 28.787842, 35.457264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579340, 28.582413, 36.140316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.435205, 28.955387, 36.151043>,  <27.348724, 29.179173, 36.157478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.435205, 28.955387, 36.151043>,  <27.579340, 28.582413, 36.140316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435205, 28.955387, 36.151043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730505, -0.299944, 0.613511,
		0.580105, 0.201478, 0.789230,
		-0.360334, 0.932438, 0.026818,
		27.327105, 29.235119, 36.159088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934904, 28.337313, 35.653854>,  <27.579340, 28.582413, 36.140316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934904, 28.337313, 35.653854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.768955, 27.975796, 35.611824>,  <26.669386, 27.758886, 35.586605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.768955, 27.975796, 35.611824>,  <26.934904, 28.337313, 35.653854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768955, 27.975796, 35.611824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561116, -0.163228, -0.811483,
		0.716262, -0.395621, 0.574851,
		-0.414872, -0.903792, -0.105075,
		26.644493, 27.704659, 35.580303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552711, 28.022259, 35.409916>,  <26.934904, 28.337313, 35.653854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552711, 28.022259, 35.409916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.250662, 27.770916, 35.335133>,  <27.069431, 27.620110, 35.290264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.250662, 27.770916, 35.335133>,  <27.552711, 28.022259, 35.409916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250662, 27.770916, 35.335133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428245, -0.256863, -0.866388,
		0.496381, -0.734293, 0.463056,
		-0.755124, -0.628359, -0.186955,
		27.024124, 27.582409, 35.279045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885170, 27.407919, 35.157917>,  <27.552711, 28.022259, 35.409916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885170, 27.407919, 35.157917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.505558, 27.362026, 35.040493>,  <27.277790, 27.334492, 34.970039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.505558, 27.362026, 35.040493>,  <27.885170, 27.407919, 35.157917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505558, 27.362026, 35.040493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310142, -0.174015, -0.934628,
		0.056146, -0.978036, 0.200728,
		-0.949031, -0.114730, -0.293560,
		27.220848, 27.327608, 34.952423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013777, 26.892498, 34.624424>,  <27.885170, 27.407919, 35.157917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013777, 26.892498, 34.624424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.656164, 27.058479, 34.556870>,  <27.441597, 27.158068, 34.516338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.656164, 27.058479, 34.556870>,  <28.013777, 26.892498, 34.624424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656164, 27.058479, 34.556870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206133, 0.046317, -0.977427,
		-0.397763, -0.908664, -0.126944,
		-0.894032, 0.414951, -0.168882,
		27.387955, 27.182964, 34.506207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753155, 26.629419, 33.972378>,  <28.013777, 26.892498, 34.624424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753155, 26.629419, 33.972378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.540506, 26.964523, 34.022240>,  <27.412916, 27.165585, 34.052155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.540506, 26.964523, 34.022240>,  <27.753155, 26.629419, 33.972378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540506, 26.964523, 34.022240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081483, 0.197076, -0.976996,
		-0.843053, -0.509236, -0.173034,
		-0.531622, 0.837759, 0.124651,
		27.381020, 27.215851, 34.059635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289877, 26.628498, 33.422791>,  <27.753155, 26.629419, 33.972378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289877, 26.628498, 33.422791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.314497, 27.007072, 33.549580>,  <27.329269, 27.234217, 33.625652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.314497, 27.007072, 33.549580>,  <27.289877, 26.628498, 33.422791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314497, 27.007072, 33.549580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063050, 0.313250, -0.947576,
		-0.996111, 0.078307, -0.040392,
		0.061549, 0.946437, 0.316969,
		27.332962, 27.291004, 33.644669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914484, 27.038223, 32.996235>,  <27.289877, 26.628498, 33.422791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914484, 27.038223, 32.996235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.162086, 27.294979, 33.177258>,  <27.310648, 27.449034, 33.285870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.162086, 27.294979, 33.177258>,  <26.914484, 27.038223, 32.996235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162086, 27.294979, 33.177258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286091, 0.352341, -0.891071,
		-0.731424, 0.681052, 0.034463,
		0.619008, 0.641891, 0.452553,
		27.347790, 27.487547, 33.313023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827307, 27.643976, 32.684742>,  <26.914484, 27.038223, 32.996235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827307, 27.643976, 32.684742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.193571, 27.705242, 32.833393>,  <27.413330, 27.742002, 32.922585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.193571, 27.705242, 32.833393>,  <26.827307, 27.643976, 32.684742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193571, 27.705242, 32.833393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266337, 0.461265, -0.846345,
		-0.301048, 0.873942, 0.381569,
		0.915661, 0.153164, 0.371626,
		27.468269, 27.751192, 32.944881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936054, 28.341251, 32.641056>,  <26.827307, 27.643976, 32.684742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936054, 28.341251, 32.641056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.297003, 28.170052, 32.661228>,  <27.513571, 28.067331, 32.673332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.297003, 28.170052, 32.661228>,  <26.936054, 28.341251, 32.641056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297003, 28.170052, 32.661228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310519, 0.564574, -0.764744,
		0.298841, 0.705742, 0.642357,
		0.902370, -0.428001, 0.050428,
		27.567715, 28.041651, 32.676357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395802, 28.960670, 32.610214>,  <26.936054, 28.341251, 32.641056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395802, 28.960670, 32.610214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.608416, 28.633011, 32.523991>,  <27.735985, 28.436415, 32.472256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.608416, 28.633011, 32.523991>,  <27.395802, 28.960670, 32.610214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608416, 28.633011, 32.523991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509142, 0.512362, -0.691563,
		0.676937, 0.257841, 0.689402,
		0.531537, -0.819147, -0.215559,
		27.767878, 28.387266, 32.459324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058264, 29.245234, 32.443951>,  <27.395802, 28.960670, 32.610214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058264, 29.245234, 32.443951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.090158, 28.872574, 32.302147>,  <28.109295, 28.648979, 32.217064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.090158, 28.872574, 32.302147>,  <28.058264, 29.245234, 32.443951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090158, 28.872574, 32.302147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532803, 0.340406, -0.774754,
		0.842474, -0.127104, 0.523528,
		0.079738, -0.931648, -0.354505,
		28.114080, 28.593079, 32.195797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793627, 29.219181, 32.263935>,  <28.058264, 29.245234, 32.443951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793627, 29.219181, 32.263935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.564186, 28.946472, 32.082310>,  <28.426521, 28.782846, 31.973335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.564186, 28.946472, 32.082310>,  <28.793627, 29.219181, 32.263935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564186, 28.946472, 32.082310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405151, 0.245633, -0.880635,
		0.711924, -0.689095, 0.135325,
		-0.573601, -0.681772, -0.454059,
		28.392105, 28.741941, 31.946093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229546, 28.908251, 31.720478>,  <28.793627, 29.219181, 32.263935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229546, 28.908251, 31.720478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851826, 28.849911, 31.602478>,  <28.625195, 28.814907, 31.531677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851826, 28.849911, 31.602478>,  <29.229546, 28.908251, 31.720478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851826, 28.849911, 31.602478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229121, 0.352083, -0.907492,
		0.236221, -0.924535, -0.299055,
		-0.944300, -0.145848, -0.295000,
		28.568535, 28.806156, 31.513979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249878, 28.712740, 31.028887>,  <29.229546, 28.908251, 31.720478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249878, 28.712740, 31.028887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.879723, 28.849483, 31.094360>,  <28.657629, 28.931530, 31.133644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.879723, 28.849483, 31.094360>,  <29.249878, 28.712740, 31.028887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879723, 28.849483, 31.094360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130586, 0.692977, -0.709035,
		-0.355819, -0.634756, -0.685914,
		-0.925387, 0.341859, 0.163684,
		28.602106, 28.952042, 31.143465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715860, 28.213764, 30.616964>,  <29.249878, 28.712740, 31.028887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715860, 28.213764, 30.616964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.105974, 28.282429, 30.672604>,  <30.340042, 28.323627, 30.705988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.105974, 28.282429, 30.672604>,  <29.715860, 28.213764, 30.616964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105974, 28.282429, 30.672604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006674, -0.606389, 0.795140,
		0.220844, -0.776418, -0.590257,
		0.975286, 0.171663, 0.139099,
		30.398560, 28.333927, 30.714333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003613, 27.567181, 30.714415>,  <29.715860, 28.213764, 30.616964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003613, 27.567181, 30.714415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268671, 27.821232, 30.873165>,  <30.427706, 27.973661, 30.968416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268671, 27.821232, 30.873165>,  <30.003613, 27.567181, 30.714415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268671, 27.821232, 30.873165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110422, -0.606988, 0.787002,
		0.740746, -0.477681, -0.472352,
		0.662648, 0.635127, 0.396877,
		30.467466, 28.011770, 30.992228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435987, 27.050512, 31.060616>,  <30.003613, 27.567181, 30.714415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435987, 27.050512, 31.060616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.567759, 27.393234, 31.219292>,  <30.646822, 27.598867, 31.314497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.567759, 27.393234, 31.219292>,  <30.435987, 27.050512, 31.060616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567759, 27.393234, 31.219292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248656, -0.484040, 0.838973,
		0.910850, -0.177742, -0.372506,
		0.329429, 0.856804, 0.396692,
		30.666588, 27.650276, 31.338299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200087, 26.914997, 31.290775>,  <30.435987, 27.050512, 31.060616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200087, 26.914997, 31.290775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.009480, 27.214245, 31.475491>,  <30.895115, 27.393793, 31.586319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.009480, 27.214245, 31.475491>,  <31.200087, 26.914997, 31.290775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009480, 27.214245, 31.475491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205406, -0.415981, 0.885871,
		0.854833, 0.516987, 0.044554,
		-0.476518, 0.748120, 0.461786,
		30.866524, 27.438681, 31.614027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584732, 26.983635, 31.874933>,  <31.200087, 26.914997, 31.290775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584732, 26.983635, 31.874933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250467, 27.172970, 31.986374>,  <31.049908, 27.286572, 32.053238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250467, 27.172970, 31.986374>,  <31.584732, 26.983635, 31.874933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250467, 27.172970, 31.986374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067842, -0.414403, 0.907561,
		0.545036, 0.777316, 0.314189,
		-0.835663, 0.473339, 0.278600,
		30.999769, 27.314972, 32.069954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738319, 27.144432, 32.459675>,  <31.584732, 26.983635, 31.874933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738319, 27.144432, 32.459675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340696, 27.181919, 32.481812>,  <31.102121, 27.204411, 32.495094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340696, 27.181919, 32.481812>,  <31.738319, 27.144432, 32.459675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340696, 27.181919, 32.481812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002044, -0.524451, 0.851438,
		0.108815, 0.846268, 0.521527,
		-0.994060, 0.093715, 0.055338,
		31.042479, 27.210033, 32.498413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568586, 27.494019, 33.136948>,  <31.738319, 27.144432, 32.459675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568586, 27.494019, 33.136948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298862, 27.235058, 32.994865>,  <31.137028, 27.079681, 32.909615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298862, 27.235058, 32.994865>,  <31.568586, 27.494019, 33.136948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298862, 27.235058, 32.994865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158477, -0.596684, 0.786672,
		-0.721241, 0.474171, 0.504949,
		-0.674312, -0.647403, -0.355208,
		31.096569, 27.040836, 32.888302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946228, 27.741919, 33.789066>,  <31.568586, 27.494019, 33.136948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946228, 27.741919, 33.789066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332512, 27.648930, 33.742836>,  <32.564281, 27.593136, 33.715096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332512, 27.648930, 33.742836>,  <31.946228, 27.741919, 33.789066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332512, 27.648930, 33.742836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083446, 0.699502, -0.709742,
		0.245844, 0.675761, 0.694916,
		0.965711, -0.232474, -0.115579,
		32.622227, 27.579187, 33.708164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166069, 28.300425, 33.333431>,  <31.946228, 27.741919, 33.789066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166069, 28.300425, 33.333431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488045, 28.063267, 33.342739>,  <32.681232, 27.920973, 33.348324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488045, 28.063267, 33.342739>,  <32.166069, 28.300425, 33.333431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488045, 28.063267, 33.342739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430761, 0.556950, -0.710107,
		0.408057, 0.581621, 0.703709,
		0.804944, -0.592894, 0.023272,
		32.729527, 27.885399, 33.349720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716743, 28.739162, 33.281017>,  <32.166069, 28.300425, 33.333431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716743, 28.739162, 33.281017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859722, 28.388401, 33.152473>,  <32.945507, 28.177944, 33.075348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859722, 28.388401, 33.152473>,  <32.716743, 28.739162, 33.281017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859722, 28.388401, 33.152473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409855, 0.456471, -0.789717,
		0.839198, 0.150569, 0.522567,
		0.357444, -0.876905, -0.321358,
		32.966957, 28.125330, 33.056065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342453, 28.879677, 33.104328>,  <32.716743, 28.739162, 33.281017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342453, 28.879677, 33.104328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260632, 28.533978, 32.920486>,  <33.211540, 28.326557, 32.810181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260632, 28.533978, 32.920486>,  <33.342453, 28.879677, 33.104328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260632, 28.533978, 32.920486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386863, 0.359925, -0.848994,
		0.899163, -0.351468, 0.260721,
		-0.204554, -0.864248, -0.459601,
		33.199265, 28.274704, 32.782604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935848, 28.671900, 32.819328>,  <33.342453, 28.879677, 33.104328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935848, 28.671900, 32.819328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643913, 28.493587, 32.612015>,  <33.468754, 28.386600, 32.487629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643913, 28.493587, 32.612015>,  <33.935848, 28.671900, 32.819328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643913, 28.493587, 32.612015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433948, 0.283703, -0.855103,
		0.528228, -0.848993, -0.013611,
		-0.729838, -0.445783, -0.518279,
		33.424961, 28.359852, 32.456532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234909, 28.539307, 32.150074>,  <33.935848, 28.671900, 32.819328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234909, 28.539307, 32.150074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841934, 28.538624, 32.075428>,  <33.606152, 28.538214, 32.030640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841934, 28.538624, 32.075428>,  <34.234909, 28.539307, 32.150074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841934, 28.538624, 32.075428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177015, 0.308130, -0.934731,
		0.059093, -0.951343, -0.302416,
		-0.982433, -0.001704, -0.186611,
		33.547203, 28.538113, 32.019444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216419, 28.407591, 31.513800>,  <34.234909, 28.539307, 32.150074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216419, 28.407591, 31.513800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847439, 28.556236, 31.555725>,  <33.626049, 28.645424, 31.580881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847439, 28.556236, 31.555725>,  <34.216419, 28.407591, 31.513800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847439, 28.556236, 31.555725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093763, 0.478934, -0.872829,
		-0.374554, -0.795316, -0.476637,
		-0.922452, 0.371612, 0.104815,
		33.570702, 28.667721, 31.587170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.060852, 30.381771, 37.247517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.680691, 30.337437, 37.131279>,  <30.452593, 30.310837, 37.061535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.680691, 30.337437, 37.131279>,  <31.060852, 30.381771, 37.247517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680691, 30.337437, 37.131279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105411, 0.764257, -0.636239,
		0.292608, -0.635316, -0.714670,
		-0.950405, -0.110835, -0.290597,
		30.395569, 30.304186, 37.044098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982924, 30.282492, 36.521492>,  <31.060852, 30.381771, 37.247517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982924, 30.282492, 36.521492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.625912, 30.429493, 36.626057>,  <30.411705, 30.517694, 36.688797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.625912, 30.429493, 36.626057>,  <30.982924, 30.282492, 36.521492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625912, 30.429493, 36.626057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033990, 0.632801, -0.773568,
		-0.449711, -0.681545, -0.577283,
		-0.892527, 0.367504, 0.261412,
		30.358154, 30.539743, 36.704479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578859, 30.272396, 35.927334>,  <30.982924, 30.282492, 36.521492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578859, 30.272396, 35.927334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424141, 30.557404, 36.161499>,  <30.331310, 30.728409, 36.301998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424141, 30.557404, 36.161499>,  <30.578859, 30.272396, 35.927334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424141, 30.557404, 36.161499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036337, 0.646104, -0.762384,
		-0.921449, -0.273615, -0.275801,
		-0.386796, 0.712520, 0.585409,
		30.308102, 30.771160, 36.337120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105927, 30.609386, 35.499981>,  <30.578859, 30.272396, 35.927334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105927, 30.609386, 35.499981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.130650, 30.867130, 35.804871>,  <30.145483, 31.021776, 35.987804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.130650, 30.867130, 35.804871>,  <30.105927, 30.609386, 35.499981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130650, 30.867130, 35.804871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024128, 0.762492, -0.646548,
		-0.997796, 0.058351, 0.031580,
		0.061806, 0.644361, 0.762220,
		30.149191, 31.060438, 36.033535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670116, 31.112171, 35.354435>,  <30.105927, 30.609386, 35.499981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670116, 31.112171, 35.354435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.879021, 31.329731, 35.617165>,  <30.004364, 31.460268, 35.774803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.879021, 31.329731, 35.617165>,  <29.670116, 31.112171, 35.354435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879021, 31.329731, 35.617165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003733, 0.771658, -0.636026,
		-0.852776, 0.329721, 0.405039,
		0.522263, 0.543900, 0.656821,
		30.035700, 31.492901, 35.814213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473833, 31.764841, 35.240341>,  <29.670116, 31.112171, 35.354435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473833, 31.764841, 35.240341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.808388, 31.862076, 35.436859>,  <30.009121, 31.920416, 35.554768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.808388, 31.862076, 35.436859>,  <29.473833, 31.764841, 35.240341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808388, 31.862076, 35.436859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178910, 0.726135, -0.663867,
		-0.518120, 0.643147, 0.563839,
		0.836387, 0.243087, 0.491290,
		30.059303, 31.935001, 35.584248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521353, 32.609367, 35.395477>,  <29.473833, 31.764841, 35.240341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521353, 32.609367, 35.395477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.895248, 32.468311, 35.377998>,  <30.119585, 32.383678, 35.367512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.895248, 32.468311, 35.377998>,  <29.521353, 32.609367, 35.395477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895248, 32.468311, 35.377998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268983, 0.782550, -0.561483,
		0.232195, 0.513086, 0.826334,
		0.934737, -0.352643, -0.043693,
		30.175669, 32.362518, 35.364891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981815, 33.221828, 35.271198>,  <29.521353, 32.609367, 35.395477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981815, 33.221828, 35.271198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.239120, 32.920410, 35.216961>,  <30.393503, 32.739559, 35.184418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.239120, 32.920410, 35.216961>,  <29.981815, 33.221828, 35.271198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239120, 32.920410, 35.216961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585382, 0.598185, -0.547268,
		0.493498, 0.272667, 0.825901,
		0.643264, -0.753543, -0.135589,
		30.432100, 32.694347, 35.176285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625099, 33.414509, 35.551285>,  <29.981815, 33.221828, 35.271198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625099, 33.414509, 35.551285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.648911, 33.157009, 35.246120>,  <30.663197, 33.002510, 35.063023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.648911, 33.157009, 35.246120>,  <30.625099, 33.414509, 35.551285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648911, 33.157009, 35.246120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457800, 0.696763, -0.552214,
		0.887060, -0.316389, 0.336188,
		0.059529, -0.643754, -0.762914,
		30.666769, 32.963882, 35.017246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376522, 33.414608, 35.312759>,  <30.625099, 33.414509, 35.551285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376522, 33.414608, 35.312759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.161663, 33.258686, 35.013554>,  <31.032747, 33.165131, 34.834030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.161663, 33.258686, 35.013554>,  <31.376522, 33.414608, 35.312759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161663, 33.258686, 35.013554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490065, 0.577554, -0.652892,
		0.686520, -0.717274, -0.119200,
		-0.537146, -0.389808, -0.748013,
		31.000519, 33.141743, 34.789150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910244, 33.192654, 34.792530>,  <31.376522, 33.414608, 35.312759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910244, 33.192654, 34.792530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.571749, 33.206440, 34.579853>,  <31.368652, 33.214710, 34.452248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.571749, 33.206440, 34.579853>,  <31.910244, 33.192654, 34.792530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571749, 33.206440, 34.579853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480438, 0.480791, -0.733498,
		0.230349, -0.876158, -0.423423,
		-0.846238, 0.034468, -0.531689,
		31.317877, 33.216782, 34.420345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109028, 32.982323, 34.155766>,  <31.910244, 33.192654, 34.792530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109028, 32.982323, 34.155766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.760607, 33.171783, 34.103722>,  <31.551554, 33.285458, 34.072495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.760607, 33.171783, 34.103722>,  <32.109028, 32.982323, 34.155766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760607, 33.171783, 34.103722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396178, 0.520880, -0.756126,
		-0.290367, -0.710170, -0.641362,
		-0.871051, 0.473648, -0.130108,
		31.499292, 33.313877, 34.064690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432190, 32.427578, 34.015369>,  <32.109028, 32.982323, 34.155766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432190, 32.427578, 34.015369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.803356, 32.328594, 33.903839>,  <33.026054, 32.269203, 33.836922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.803356, 32.328594, 33.903839>,  <32.432190, 32.427578, 34.015369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803356, 32.328594, 33.903839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074165, -0.610438, 0.788584,
		-0.365347, -0.752416, -0.548081,
		0.927912, -0.247458, -0.278824,
		33.081730, 32.254356, 33.820190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466343, 31.714319, 34.180073>,  <32.432190, 32.427578, 34.015369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466343, 31.714319, 34.180073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.853279, 31.812538, 34.154926>,  <33.085442, 31.871469, 34.139839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.853279, 31.812538, 34.154926>,  <32.466343, 31.714319, 34.180073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853279, 31.812538, 34.154926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197415, -0.574299, 0.794486,
		0.158979, -0.780952, -0.604020,
		0.967344, 0.245549, -0.062871,
		33.143482, 31.886204, 34.136066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887135, 31.122612, 34.103325>,  <32.466343, 31.714319, 34.180073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887135, 31.122612, 34.103325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.136574, 31.396606, 34.254013>,  <33.286240, 31.561003, 34.344425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.136574, 31.396606, 34.254013>,  <32.887135, 31.122612, 34.103325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136574, 31.396606, 34.254013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313282, -0.660484, 0.682360,
		0.716223, -0.307501, -0.626472,
		0.623601, 0.684985, 0.376719,
		33.323654, 31.602102, 34.367027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518044, 30.809006, 34.214066>,  <32.887135, 31.122612, 34.103325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518044, 30.809006, 34.214066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543453, 31.130043, 34.451321>,  <33.558701, 31.322666, 34.593674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543453, 31.130043, 34.451321>,  <33.518044, 30.809006, 34.214066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543453, 31.130043, 34.451321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489277, -0.543052, 0.682424,
		0.869812, 0.246857, -0.427187,
		0.063524, 0.802594, 0.593134,
		33.562511, 31.370821, 34.629261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298412, 30.838161, 34.459377>,  <33.518044, 30.809006, 34.214066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298412, 30.838161, 34.459377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.060177, 31.025208, 34.720638>,  <33.917236, 31.137436, 34.877396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.060177, 31.025208, 34.720638>,  <34.298412, 30.838161, 34.459377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060177, 31.025208, 34.720638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362672, -0.568978, 0.738060,
		0.716758, 0.676461, 0.169286,
		-0.595589, 0.467616, 0.653153,
		33.881500, 31.165493, 34.916584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697815, 30.805260, 35.052933>,  <34.298412, 30.838161, 34.459377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697815, 30.805260, 35.052933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.342258, 30.907028, 35.205322>,  <34.128925, 30.968088, 35.296757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.342258, 30.907028, 35.205322>,  <34.697815, 30.805260, 35.052933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342258, 30.907028, 35.205322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163794, -0.600142, 0.782943,
		0.427836, 0.758353, 0.491789,
		-0.888891, 0.254420, 0.380977,
		34.075592, 30.983355, 35.319614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801598, 31.082771, 35.736637>,  <34.697815, 30.805260, 35.052933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801598, 31.082771, 35.736637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430202, 30.934414, 35.729149>,  <34.207367, 30.845400, 35.724655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430202, 30.934414, 35.729149>,  <34.801598, 31.082771, 35.736637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430202, 30.934414, 35.729149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144915, -0.408266, 0.901287,
		-0.341926, 0.834119, 0.432818,
		-0.928486, -0.370896, -0.018721,
		34.151657, 30.823145, 35.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400555, 31.189453, 36.350365>,  <34.801598, 31.082771, 35.736637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400555, 31.189453, 36.350365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177551, 30.890839, 36.205109>,  <34.043747, 30.711670, 36.117954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177551, 30.890839, 36.205109>,  <34.400555, 31.189453, 36.350365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177551, 30.890839, 36.205109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062613, -0.398366, 0.915087,
		-0.827805, 0.532909, 0.175351,
		-0.557512, -0.746534, -0.363136,
		34.010300, 30.666878, 36.096169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050854, 31.059593, 36.960384>,  <34.400555, 31.189453, 36.350365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050854, 31.059593, 36.960384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.006618, 30.742844, 36.720150>,  <33.980076, 30.552794, 36.576008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.006618, 30.742844, 36.720150>,  <34.050854, 31.059593, 36.960384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006618, 30.742844, 36.720150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069045, -0.596715, 0.799477,
		-0.991465, 0.129881, 0.011315,
		-0.110589, -0.791872, -0.600590,
		33.973442, 30.505281, 36.539974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510365, 30.764277, 37.211243>,  <34.050854, 31.059593, 36.960384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510365, 30.764277, 37.211243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691566, 30.472481, 37.006248>,  <33.800285, 30.297403, 36.883251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691566, 30.472481, 37.006248>,  <33.510365, 30.764277, 37.211243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691566, 30.472481, 37.006248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354429, -0.674831, 0.647290,
		-0.818030, -0.111583, -0.564249,
		0.452999, -0.729488, -0.512483,
		33.827465, 30.253633, 36.852505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005482, 30.243034, 37.098366>,  <33.510365, 30.764277, 37.211243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005482, 30.243034, 37.098366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354706, 30.056355, 37.041847>,  <33.564240, 29.944347, 37.007938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354706, 30.056355, 37.041847>,  <33.005482, 30.243034, 37.098366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354706, 30.056355, 37.041847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314673, -0.760588, 0.567879,
		-0.372493, -0.451330, -0.810894,
		0.873057, -0.466698, -0.141292,
		33.616623, 29.916346, 36.999458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725266, 29.567764, 37.061913>,  <33.005482, 30.243034, 37.098366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725266, 29.567764, 37.061913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117981, 29.520237, 37.121216>,  <33.353611, 29.491720, 37.156799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117981, 29.520237, 37.121216>,  <32.725266, 29.567764, 37.061913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117981, 29.520237, 37.121216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183495, -0.795394, 0.577649,
		0.049291, -0.594332, -0.802708,
		0.981784, -0.118820, 0.148262,
		33.412518, 29.484591, 37.165695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903179, 28.788391, 36.909348>,  <32.725266, 29.567764, 37.061913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903179, 28.788391, 36.909348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189026, 28.921005, 37.155731>,  <33.360535, 29.000574, 37.303562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189026, 28.921005, 37.155731>,  <32.903179, 28.788391, 36.909348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189026, 28.921005, 37.155731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104461, -0.820100, 0.562604,
		0.691675, -0.466389, -0.551423,
		0.714615, 0.331537, 0.615962,
		33.403412, 29.020466, 37.340519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225422, 28.202515, 37.081402>,  <32.903179, 28.788391, 36.909348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225422, 28.202515, 37.081402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344395, 28.470699, 37.353291>,  <33.415779, 28.631611, 37.516422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344395, 28.470699, 37.353291>,  <33.225422, 28.202515, 37.081402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344395, 28.470699, 37.353291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227678, -0.641591, 0.732478,
		0.927200, -0.372616, -0.038177,
		0.297427, 0.670461, 0.679719,
		33.433624, 28.671837, 37.557205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669483, 27.866566, 36.618046>,  <33.225422, 28.202515, 37.081402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669483, 27.866566, 36.618046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.516109, 27.521202, 36.486897>,  <32.424084, 27.313984, 36.408207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.516109, 27.521202, 36.486897>,  <32.669483, 27.866566, 36.618046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516109, 27.521202, 36.486897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424636, 0.150450, -0.892776,
		0.820160, -0.481549, 0.308947,
		-0.383434, -0.863409, -0.327876,
		32.401081, 27.262178, 36.388535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231625, 27.381645, 36.210381>,  <32.669483, 27.866566, 36.618046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231625, 27.381645, 36.210381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.878754, 27.233093, 36.094559>,  <32.667030, 27.143963, 36.025066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.878754, 27.233093, 36.094559>,  <33.231625, 27.381645, 36.210381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878754, 27.233093, 36.094559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346909, -0.096680, -0.932902,
		0.318466, -0.923434, 0.214124,
		-0.882175, -0.371379, -0.289558,
		32.614101, 27.121679, 36.007690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403557, 26.845732, 35.845802>,  <33.231625, 27.381645, 36.210381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403557, 26.845732, 35.845802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029324, 26.922665, 35.727348>,  <32.804783, 26.968824, 35.656277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029324, 26.922665, 35.727348>,  <33.403557, 26.845732, 35.845802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029324, 26.922665, 35.727348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301303, -0.002511, -0.953525,
		-0.184140, -0.981326, -0.055601,
		-0.935579, 0.192335, -0.296139,
		32.748650, 26.980366, 35.638508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190445, 26.301758, 35.302582>,  <33.403557, 26.845732, 35.845802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190445, 26.301758, 35.302582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.984219, 26.644192, 35.288090>,  <32.860485, 26.849653, 35.279396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.984219, 26.644192, 35.288090>,  <33.190445, 26.301758, 35.302582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984219, 26.644192, 35.288090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122022, 0.031502, -0.992027,
		-0.848119, -0.515872, -0.120702,
		-0.515562, 0.856086, -0.036230,
		32.829552, 26.901018, 35.277222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767040, 26.262180, 34.778736>,  <33.190445, 26.301758, 35.302582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767040, 26.262180, 34.778736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783077, 26.660789, 34.807957>,  <32.792702, 26.899956, 34.825489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783077, 26.660789, 34.807957>,  <32.767040, 26.262180, 34.778736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783077, 26.660789, 34.807957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082675, 0.069547, -0.994147,
		-0.995770, 0.045899, -0.079599,
		0.040094, 0.996522, 0.073048,
		32.795105, 26.959745, 34.829872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424450, 26.442472, 34.143185>,  <32.767040, 26.262180, 34.778736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424450, 26.442472, 34.143185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.554161, 26.798164, 34.272251>,  <32.631989, 27.011580, 34.349693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.554161, 26.798164, 34.272251>,  <32.424450, 26.442472, 34.143185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554161, 26.798164, 34.272251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052923, 0.323514, -0.944742,
		-0.944480, 0.323438, 0.057848,
		0.324280, 0.889228, 0.322670,
		32.651443, 27.064932, 34.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974720, 27.022484, 33.881542>,  <32.424450, 26.442472, 34.143185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974720, 27.022484, 33.881542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335327, 27.182098, 33.948521>,  <32.551689, 27.277866, 33.988708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335327, 27.182098, 33.948521>,  <31.974720, 27.022484, 33.881542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335327, 27.182098, 33.948521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000518, 0.385945, -0.922522,
		-0.432745, 0.831755, 0.347729,
		0.901516, 0.399037, 0.167447,
		32.605782, 27.301809, 33.998756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440159, 26.609760, 34.314030>,  <31.974720, 27.022484, 33.881542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440159, 26.609760, 34.314030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.185690, 26.763168, 34.046242>,  <31.033009, 26.855213, 33.885567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.185690, 26.763168, 34.046242>,  <31.440159, 26.609760, 34.314030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185690, 26.763168, 34.046242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753457, -0.122022, 0.646075,
		0.166093, 0.915435, 0.366594,
		-0.636172, 0.383522, -0.669475,
		30.994839, 26.878225, 33.845398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091263, 27.241358, 34.591572>,  <31.440159, 26.609760, 34.314030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091263, 27.241358, 34.591572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870020, 27.044056, 34.323013>,  <30.737274, 26.925674, 34.161880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870020, 27.044056, 34.323013>,  <31.091263, 27.241358, 34.591572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870020, 27.044056, 34.323013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645689, -0.255450, 0.719604,
		-0.526457, 0.831531, -0.177198,
		-0.553108, -0.493255, -0.671394,
		30.704088, 26.896080, 34.121593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345991, 27.569374, 34.572834>,  <31.091263, 27.241358, 34.591572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345991, 27.569374, 34.572834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.292212, 27.200562, 34.427628>,  <30.259945, 26.979273, 34.340504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.292212, 27.200562, 34.427628>,  <30.345991, 27.569374, 34.572834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292212, 27.200562, 34.427628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718298, -0.161680, 0.676689,
		-0.682621, 0.351732, -0.640556,
		-0.134448, -0.922033, -0.363015,
		30.251877, 26.923952, 34.318722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703241, 27.488199, 34.307175>,  <30.345991, 27.569374, 34.572834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703241, 27.488199, 34.307175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.801964, 27.112991, 34.404507>,  <29.861198, 26.887867, 34.462906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.801964, 27.112991, 34.404507>,  <29.703241, 27.488199, 34.307175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801964, 27.112991, 34.404507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830808, -0.075560, 0.551405,
		-0.498842, -0.338250, -0.797962,
		0.246807, -0.938018, 0.243328,
		29.876005, 26.831587, 34.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110971, 27.151503, 34.342999>,  <29.703241, 27.488199, 34.307175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110971, 27.151503, 34.342999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.352541, 26.894180, 34.531227>,  <29.497482, 26.739786, 34.644165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.352541, 26.894180, 34.531227>,  <29.110971, 27.151503, 34.342999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352541, 26.894180, 34.531227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780544, -0.357843, 0.512542,
		-0.161331, -0.676835, -0.718238,
		0.603923, -0.643305, 0.470569,
		29.533718, 26.701189, 34.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769041, 26.499008, 34.319214>,  <29.110971, 27.151503, 34.342999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769041, 26.499008, 34.319214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.033136, 26.463276, 34.617504>,  <29.191593, 26.441835, 34.796478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.033136, 26.463276, 34.617504>,  <28.769041, 26.499008, 34.319214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033136, 26.463276, 34.617504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712217, -0.389624, 0.583901,
		0.238390, -0.916631, -0.320870,
		0.660240, -0.089333, 0.745723,
		29.231209, 26.436476, 34.841221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725267, 25.858761, 34.526962>,  <28.769041, 26.499008, 34.319214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725267, 25.858761, 34.526962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.879019, 26.058971, 34.837246>,  <28.971270, 26.179098, 35.023415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.879019, 26.058971, 34.837246>,  <28.725267, 25.858761, 34.526962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879019, 26.058971, 34.837246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696222, -0.394623, 0.599623,
		0.606240, -0.770549, 0.196792,
		0.384381, 0.500527, 0.775709,
		28.994333, 26.209129, 35.069958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785667, 25.382978, 35.033863>,  <28.725267, 25.858761, 34.526962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785667, 25.382978, 35.033863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.768888, 25.725533, 35.239716>,  <28.758821, 25.931065, 35.363228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.768888, 25.725533, 35.239716>,  <28.785667, 25.382978, 35.033863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768888, 25.725533, 35.239716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639409, -0.418800, 0.644797,
		0.767722, -0.302013, 0.565147,
		-0.041947, 0.856385, 0.514631,
		28.756304, 25.982449, 35.394104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793459, 25.159224, 35.632866>,  <28.785667, 25.382978, 35.033863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793459, 25.159224, 35.632866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.666451, 25.530960, 35.708241>,  <28.590246, 25.754002, 35.753464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.666451, 25.530960, 35.708241>,  <28.793459, 25.159224, 35.632866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666451, 25.530960, 35.708241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725461, -0.366045, 0.582853,
		0.610644, 0.048366, 0.790427,
		-0.317522, 0.929339, 0.188436,
		28.571194, 25.809761, 35.764771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.456026, 35.104038, 22.826982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093859, 34.935974, 22.851269>,  <29.876558, 34.835136, 22.865841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093859, 34.935974, 22.851269>,  <30.456026, 35.104038, 22.826982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093859, 34.935974, 22.851269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235641, -0.378442, 0.895128,
		-0.353116, 0.824773, 0.441655,
		-0.905419, -0.420156, 0.060717,
		29.822233, 34.809929, 22.869484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207302, 35.204922, 23.525558>,  <30.456026, 35.104038, 22.826982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207302, 35.204922, 23.525558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011497, 34.890339, 23.374897>,  <29.894014, 34.701588, 23.284500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011497, 34.890339, 23.374897>,  <30.207302, 35.204922, 23.525558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011497, 34.890339, 23.374897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030367, -0.416305, 0.908718,
		-0.871469, 0.456264, 0.179902,
		-0.489510, -0.786457, -0.376652,
		29.864645, 34.654404, 23.261902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759829, 34.972153, 24.115477>,  <30.207302, 35.204922, 23.525558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759829, 34.972153, 24.115477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790741, 34.665478, 23.860538>,  <29.809288, 34.481472, 23.707575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790741, 34.665478, 23.860538>,  <29.759829, 34.972153, 24.115477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790741, 34.665478, 23.860538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056153, -0.634897, 0.770553,
		-0.995427, -0.095337, -0.006013,
		0.077280, -0.766692, -0.637347,
		29.813925, 34.435471, 23.669334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378599, 34.407616, 24.489868>,  <29.759829, 34.972153, 24.115477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378599, 34.407616, 24.489868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597109, 34.225315, 24.208763>,  <29.728214, 34.115932, 24.040100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597109, 34.225315, 24.208763>,  <29.378599, 34.407616, 24.489868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597109, 34.225315, 24.208763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257704, -0.706863, 0.658736,
		-0.796977, -0.540954, -0.268691,
		0.546274, -0.455755, -0.702760,
		29.760990, 34.088589, 23.997934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320818, 33.788055, 24.661875>,  <29.378599, 34.407616, 24.489868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320818, 33.788055, 24.661875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637314, 33.732586, 24.423645>,  <29.827211, 33.699303, 24.280708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637314, 33.732586, 24.423645>,  <29.320818, 33.788055, 24.661875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637314, 33.732586, 24.423645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327966, -0.725789, 0.604706,
		-0.516116, -0.673796, -0.528794,
		0.791241, -0.138672, -0.595573,
		29.874685, 33.690983, 24.244972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388206, 33.041672, 24.585970>,  <29.320818, 33.788055, 24.661875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388206, 33.041672, 24.585970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748224, 33.144505, 24.445213>,  <29.964235, 33.206203, 24.360760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748224, 33.144505, 24.445213>,  <29.388206, 33.041672, 24.585970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748224, 33.144505, 24.445213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422105, -0.715079, 0.557216,
		-0.108380, -0.650055, -0.752119,
		0.900045, 0.257082, -0.351892,
		30.018238, 33.221630, 24.339645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677698, 32.464199, 24.483192>,  <29.388206, 33.041672, 24.585970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677698, 32.464199, 24.483192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977081, 32.726818, 24.520634>,  <30.156712, 32.884388, 24.543098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977081, 32.726818, 24.520634>,  <29.677698, 32.464199, 24.483192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977081, 32.726818, 24.520634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527313, -0.674755, 0.516378,
		0.402186, -0.337127, -0.851230,
		0.748457, 0.656544, 0.093605,
		30.201618, 32.923782, 24.548716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272367, 32.165043, 24.353197>,  <29.677698, 32.464199, 24.483192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272367, 32.165043, 24.353197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364807, 32.472450, 24.591850>,  <30.420271, 32.656895, 24.735043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364807, 32.472450, 24.591850>,  <30.272367, 32.165043, 24.353197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364807, 32.472450, 24.591850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475787, -0.624174, 0.619704,
		0.848658, 0.140658, -0.509898,
		0.231099, 0.768519, 0.596633,
		30.434137, 32.703007, 24.770840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026632, 32.179890, 24.477390>,  <30.272367, 32.165043, 24.353197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026632, 32.179890, 24.477390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877394, 32.389744, 24.783478>,  <30.787849, 32.515656, 24.967131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877394, 32.389744, 24.783478>,  <31.026632, 32.179890, 24.477390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877394, 32.389744, 24.783478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486076, -0.591991, 0.642867,
		0.790271, 0.611806, -0.034141,
		-0.373098, 0.524634, 0.765217,
		30.765465, 32.547134, 25.013042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551239, 32.141911, 25.042622>,  <31.026632, 32.179890, 24.477390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551239, 32.141911, 25.042622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237701, 32.280849, 25.248508>,  <31.049578, 32.364212, 25.372042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237701, 32.280849, 25.248508>,  <31.551239, 32.141911, 25.042622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237701, 32.280849, 25.248508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292774, -0.524264, 0.799644,
		0.547603, 0.777494, 0.309248,
		-0.783846, 0.347347, 0.514719,
		31.002548, 32.385052, 25.402924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746222, 32.480938, 25.645535>,  <31.551239, 32.141911, 25.042622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746222, 32.480938, 25.645535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373913, 32.349781, 25.710213>,  <31.150528, 32.271088, 25.749020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373913, 32.349781, 25.710213>,  <31.746222, 32.480938, 25.645535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373913, 32.349781, 25.710213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330473, -0.565426, 0.755699,
		-0.156362, 0.756821, 0.634644,
		-0.930773, -0.327895, 0.161698,
		31.094681, 32.251411, 25.758722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724152, 32.546040, 26.324541>,  <31.746222, 32.480938, 25.645535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724152, 32.546040, 26.324541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446409, 32.291607, 26.189919>,  <31.279764, 32.138947, 26.109144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446409, 32.291607, 26.189919>,  <31.724152, 32.546040, 26.324541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446409, 32.291607, 26.189919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069942, -0.525117, 0.848151,
		-0.716224, 0.565380, 0.409107,
		-0.694356, -0.636080, -0.336558,
		31.238102, 32.100784, 26.088951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076412, 32.862251, 26.908020>,  <31.724152, 32.546040, 26.324541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076412, 32.862251, 26.908020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427460, 32.680077, 26.848194>,  <32.638088, 32.570774, 26.812298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427460, 32.680077, 26.848194>,  <32.076412, 32.862251, 26.908020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427460, 32.680077, 26.848194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262822, 0.718084, -0.644422,
		0.400891, 0.526246, 0.749901,
		0.877616, -0.455434, -0.149564,
		32.690746, 32.543446, 26.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502380, 33.387478, 26.832989>,  <32.076412, 32.862251, 26.908020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502380, 33.387478, 26.832989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692440, 33.080410, 26.660980>,  <32.806477, 32.896168, 26.557775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692440, 33.080410, 26.660980>,  <32.502380, 33.387478, 26.832989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692440, 33.080410, 26.660980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362670, 0.616132, -0.699180,
		0.801690, 0.176257, 0.571163,
		0.475147, -0.767669, -0.430023,
		32.834984, 32.850109, 26.531973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168270, 33.584766, 26.762510>,  <32.502380, 33.387478, 26.832989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168270, 33.584766, 26.762510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128128, 33.281776, 26.504467>,  <33.104042, 33.099983, 26.349640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128128, 33.281776, 26.504467>,  <33.168270, 33.584766, 26.762510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128128, 33.281776, 26.504467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262319, 0.605299, -0.751533,
		0.959749, -0.244644, 0.137956,
		-0.100354, -0.757471, -0.645110,
		33.098022, 33.054535, 26.310934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591412, 33.773087, 26.317953>,  <33.168270, 33.584766, 26.762510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591412, 33.773087, 26.317953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425919, 33.483170, 26.097588>,  <33.326622, 33.309219, 25.965368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425919, 33.483170, 26.097588>,  <33.591412, 33.773087, 26.317953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425919, 33.483170, 26.097588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222078, 0.506505, -0.833147,
		0.882898, -0.467043, -0.048596,
		-0.413730, -0.724792, -0.550912,
		33.301800, 33.265732, 25.932314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122726, 33.443027, 25.746334>,  <33.591412, 33.773087, 26.317953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122726, 33.443027, 25.746334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750622, 33.400219, 25.605953>,  <33.527359, 33.374535, 25.521725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750622, 33.400219, 25.605953>,  <34.122726, 33.443027, 25.746334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750622, 33.400219, 25.605953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280654, 0.408565, -0.868509,
		0.236336, -0.906433, -0.350034,
		-0.930257, -0.107021, -0.350953,
		33.471546, 33.368111, 25.500668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180801, 33.058544, 25.209352>,  <34.122726, 33.443027, 25.746334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180801, 33.058544, 25.209352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813000, 33.198090, 25.136913>,  <33.592316, 33.281818, 25.093451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813000, 33.198090, 25.136913>,  <34.180801, 33.058544, 25.209352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813000, 33.198090, 25.136913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330191, 0.435591, -0.837397,
		-0.213254, -0.829791, -0.515722,
		-0.919509, 0.348865, -0.181098,
		33.537148, 33.302750, 25.082584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047310, 32.860615, 24.517567>,  <34.180801, 33.058544, 25.209352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047310, 32.860615, 24.517567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816372, 33.169121, 24.624760>,  <33.677807, 33.354225, 24.689075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816372, 33.169121, 24.624760>,  <34.047310, 32.860615, 24.517567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816372, 33.169121, 24.624760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237519, 0.472662, -0.848631,
		-0.781188, -0.426304, -0.456081,
		-0.577347, 0.771269, 0.267983,
		33.643169, 33.400501, 24.705154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819645, 33.085396, 23.906082>,  <34.047310, 32.860615, 24.517567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819645, 33.085396, 23.906082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738605, 33.398167, 24.141895>,  <33.689983, 33.585831, 24.283382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738605, 33.398167, 24.141895>,  <33.819645, 33.085396, 23.906082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738605, 33.398167, 24.141895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244780, 0.623341, -0.742650,
		-0.948177, -0.006151, -0.317685,
		-0.202594, 0.781926, 0.589532,
		33.677826, 33.632744, 24.318754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370277, 33.517967, 23.630280>,  <33.819645, 33.085396, 23.906082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370277, 33.517967, 23.630280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532990, 33.766296, 23.898342>,  <33.630619, 33.915295, 24.059179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532990, 33.766296, 23.898342>,  <33.370277, 33.517967, 23.630280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532990, 33.766296, 23.898342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370707, 0.558295, -0.742215,
		-0.834927, 0.550352, -0.003037,
		0.406784, 0.620821, 0.670155,
		33.655025, 33.952541, 24.099388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262363, 34.288296, 23.430088>,  <33.370277, 33.517967, 23.630280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262363, 34.288296, 23.430088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582645, 34.257175, 23.667683>,  <33.774815, 34.238503, 23.810240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582645, 34.257175, 23.667683>,  <33.262363, 34.288296, 23.430088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582645, 34.257175, 23.667683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529018, 0.557074, -0.640163,
		-0.281090, 0.826810, 0.487209,
		0.800705, -0.077799, 0.593986,
		33.822857, 34.233837, 23.845879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613010, 34.927402, 23.290575>,  <33.262363, 34.288296, 23.430088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613010, 34.927402, 23.290575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891422, 34.715542, 23.484486>,  <34.058472, 34.588425, 23.600832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891422, 34.715542, 23.484486>,  <33.613010, 34.927402, 23.290575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891422, 34.715542, 23.484486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714881, 0.448251, -0.536671,
		0.066948, 0.720097, 0.690636,
		0.696034, -0.529652, 0.484774,
		34.100231, 34.556644, 23.629917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144142, 35.404629, 23.390131>,  <33.613010, 34.927402, 23.290575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144142, 35.404629, 23.390131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304886, 35.039448, 23.418468>,  <34.401333, 34.820339, 23.435471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304886, 35.039448, 23.418468>,  <34.144142, 35.404629, 23.390131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304886, 35.039448, 23.418468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741519, 0.279056, -0.610145,
		0.537266, 0.297726, 0.789116,
		0.401863, -0.912955, 0.070842,
		34.425446, 34.765560, 23.439720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901054, 35.518108, 23.566950>,  <34.144142, 35.404629, 23.390131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901054, 35.518108, 23.566950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868011, 35.147064, 23.421227>,  <34.848186, 34.924438, 23.333792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868011, 35.147064, 23.421227>,  <34.901054, 35.518108, 23.566950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868011, 35.147064, 23.421227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764540, 0.175505, -0.620223,
		0.639262, -0.329762, 0.694695,
		-0.082603, -0.927607, -0.364310,
		34.843231, 34.868782, 23.311934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586159, 35.330528, 23.427921>,  <34.901054, 35.518108, 23.566950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586159, 35.330528, 23.427921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373764, 35.076183, 23.203876>,  <35.246326, 34.923576, 23.069450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373764, 35.076183, 23.203876>,  <35.586159, 35.330528, 23.427921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373764, 35.076183, 23.203876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584604, 0.203607, -0.785355,
		0.613423, -0.744458, 0.263616,
		-0.530990, -0.635866, -0.560111,
		35.214466, 34.885422, 23.035843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961906, 35.768337, 23.881863>,  <35.586159, 35.330528, 23.427921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961906, 35.768337, 23.881863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095806, 36.142937, 23.923649>,  <36.176147, 36.367695, 23.948721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095806, 36.142937, 23.923649>,  <35.961906, 35.768337, 23.881863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095806, 36.142937, 23.923649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010832, -0.107029, 0.994197,
		0.942244, -0.333941, -0.025684,
		0.334752, 0.936498, 0.104464,
		36.196232, 36.423885, 23.954988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563038, 35.742313, 24.326323>,  <35.961906, 35.768337, 23.881863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563038, 35.742313, 24.326323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392330, 36.103199, 24.351215>,  <36.289906, 36.319729, 24.366152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392330, 36.103199, 24.351215>,  <36.563038, 35.742313, 24.326323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392330, 36.103199, 24.351215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058015, -0.095984, 0.993691,
		0.902496, 0.420471, 0.093306,
		-0.426774, 0.902215, 0.062232,
		36.264297, 36.373863, 24.369884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929523, 36.202003, 24.807032>,  <36.563038, 35.742313, 24.326323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929523, 36.202003, 24.807032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540569, 36.288570, 24.772114>,  <36.307198, 36.340511, 24.751163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540569, 36.288570, 24.772114>,  <36.929523, 36.202003, 24.807032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540569, 36.288570, 24.772114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142429, -0.254077, 0.956639,
		0.184855, 0.942660, 0.277886,
		-0.972390, 0.216419, -0.087295,
		36.248852, 36.353497, 24.745926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829453, 36.499268, 25.416189>,  <36.929523, 36.202003, 24.807032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829453, 36.499268, 25.416189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470078, 36.400482, 25.270966>,  <36.254452, 36.341209, 25.183832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470078, 36.400482, 25.270966>,  <36.829453, 36.499268, 25.416189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470078, 36.400482, 25.270966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259808, -0.367568, 0.892969,
		-0.353980, 0.896606, 0.266075,
		-0.898442, -0.246965, -0.363057,
		36.200546, 36.326393, 25.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340374, 36.679611, 26.012367>,  <36.829453, 36.499268, 25.416189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340374, 36.679611, 26.012367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094078, 36.471031, 25.776077>,  <35.946301, 36.345882, 25.634302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094078, 36.471031, 25.776077>,  <36.340374, 36.679611, 26.012367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094078, 36.471031, 25.776077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355699, -0.485017, 0.798897,
		-0.703099, 0.702030, 0.113162,
		-0.615735, -0.521452, -0.590726,
		35.909359, 36.314594, 25.598860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686157, 36.689411, 26.339542>,  <36.340374, 36.679611, 26.012367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686157, 36.689411, 26.339542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701477, 36.361607, 26.110828>,  <35.710670, 36.164925, 25.973600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701477, 36.361607, 26.110828>,  <35.686157, 36.689411, 26.339542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701477, 36.361607, 26.110828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411556, -0.534357, 0.738298,
		-0.910579, 0.207044, -0.357740,
		0.038301, -0.819509, -0.571785,
		35.712967, 36.115753, 25.939293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995136, 36.458958, 26.397921>,  <35.686157, 36.689411, 26.339542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995136, 36.458958, 26.397921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220722, 36.154839, 26.268990>,  <35.356075, 35.972366, 26.191631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220722, 36.154839, 26.268990>,  <34.995136, 36.458958, 26.397921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220722, 36.154839, 26.268990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370888, -0.581941, 0.723731,
		-0.737825, -0.288610, -0.610179,
		0.563964, -0.760295, -0.322329,
		35.389912, 35.926750, 26.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593739, 35.804741, 26.334002>,  <34.995136, 36.458958, 26.397921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593739, 35.804741, 26.334002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971748, 35.675007, 26.350697>,  <35.198555, 35.597168, 26.360714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971748, 35.675007, 26.350697>,  <34.593739, 35.804741, 26.334002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971748, 35.675007, 26.350697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222141, -0.543059, 0.809778,
		-0.239972, -0.774530, -0.585250,
		0.945022, -0.324332, 0.041736,
		35.255257, 35.577705, 26.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545238, 35.083424, 26.448565>,  <34.593739, 35.804741, 26.334002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545238, 35.083424, 26.448565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934971, 35.130386, 26.525394>,  <35.168812, 35.158566, 26.571493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934971, 35.130386, 26.525394>,  <34.545238, 35.083424, 26.448565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934971, 35.130386, 26.525394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082877, -0.606227, 0.790962,
		0.209308, -0.786577, -0.580936,
		0.974331, 0.117408, 0.192077,
		35.227272, 35.165607, 26.583017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844746, 34.448215, 26.454943>,  <34.545238, 35.083424, 26.448565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844746, 34.448215, 26.454943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062069, 34.700268, 26.676842>,  <35.192463, 34.851501, 26.809980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062069, 34.700268, 26.676842>,  <34.844746, 34.448215, 26.454943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062069, 34.700268, 26.676842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004256, -0.662839, 0.748750,
		0.839521, -0.404443, -0.362809,
		0.543310, 0.630135, 0.554746,
		35.225063, 34.889309, 26.843266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385628, 34.027470, 26.721611>,  <34.844746, 34.448215, 26.454943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385628, 34.027470, 26.721611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378490, 34.348885, 26.959606>,  <35.374207, 34.541733, 27.102404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378490, 34.348885, 26.959606>,  <35.385628, 34.027470, 26.721611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378490, 34.348885, 26.959606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036348, -0.595212, 0.802746,
		0.999180, -0.007303, 0.039828,
		-0.017843, 0.803535, 0.594990,
		35.373138, 34.589947, 27.138103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871353, 33.936111, 27.219419>,  <35.385628, 34.027470, 26.721611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871353, 33.936111, 27.219419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618282, 34.203617, 27.375610>,  <35.466438, 34.364120, 27.469326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618282, 34.203617, 27.375610>,  <35.871353, 33.936111, 27.219419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618282, 34.203617, 27.375610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027286, -0.484660, 0.874277,
		0.773933, 0.563792, 0.288387,
		-0.632680, 0.668763, 0.390478,
		35.428478, 34.404247, 27.492754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162846, 34.150822, 27.874590>,  <35.871353, 33.936111, 27.219419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162846, 34.150822, 27.874590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775806, 34.248371, 27.900749>,  <35.543583, 34.306900, 27.916445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775806, 34.248371, 27.900749>,  <36.162846, 34.150822, 27.874590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775806, 34.248371, 27.900749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014532, -0.312361, 0.949852,
		0.252076, 0.918126, 0.305784,
		-0.967598, 0.243878, 0.065396,
		35.485527, 34.321533, 27.920368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056107, 34.565857, 28.458282>,  <36.162846, 34.150822, 27.874590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056107, 34.565857, 28.458282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692730, 34.404491, 28.414494>,  <35.474705, 34.307671, 28.388220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692730, 34.404491, 28.414494>,  <36.056107, 34.565857, 28.458282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692730, 34.404491, 28.414494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051800, -0.151225, 0.987141,
		-0.414781, 0.902435, 0.116483,
		-0.908446, -0.403414, -0.109471,
		35.420197, 34.283466, 28.381653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839012, 34.659595, 28.990040>,  <36.056107, 34.565857, 28.458282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839012, 34.659595, 28.990040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532799, 34.431313, 28.871212>,  <35.349072, 34.294342, 28.799915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532799, 34.431313, 28.871212>,  <35.839012, 34.659595, 28.990040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532799, 34.431313, 28.871212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180346, -0.252872, 0.950543,
		-0.617598, 0.781251, 0.090659,
		-0.765538, -0.570703, -0.297069,
		35.303139, 34.260101, 28.782091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323132, 34.797211, 29.475267>,  <35.839012, 34.659595, 28.990040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323132, 34.797211, 29.475267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229507, 34.438015, 29.326229>,  <35.173332, 34.222496, 29.236807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229507, 34.438015, 29.326229>,  <35.323132, 34.797211, 29.475267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229507, 34.438015, 29.326229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312950, -0.293253, 0.903363,
		-0.920476, 0.328049, -0.212386,
		-0.234065, -0.897990, -0.372596,
		35.159286, 34.168617, 29.214451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620258, 34.615700, 29.739704>,  <35.323132, 34.797211, 29.475267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620258, 34.615700, 29.739704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789528, 34.266312, 29.643387>,  <34.891090, 34.056679, 29.585596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789528, 34.266312, 29.643387>,  <34.620258, 34.615700, 29.739704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789528, 34.266312, 29.643387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600683, -0.469423, 0.647165,
		-0.678309, -0.129224, -0.723324,
		0.423174, -0.873466, -0.240792,
		34.916481, 34.004272, 29.571150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006802, 34.094784, 29.792002>,  <34.620258, 34.615700, 29.739704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006802, 34.094784, 29.792002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350300, 33.889923, 29.798298>,  <34.556400, 33.767006, 29.802074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350300, 33.889923, 29.798298>,  <34.006802, 34.094784, 29.792002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350300, 33.889923, 29.798298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320104, -0.512241, 0.796958,
		-0.400103, -0.689426, -0.603829,
		0.858750, -0.512154, 0.015739,
		34.607925, 33.736279, 29.803020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838989, 33.410881, 29.852106>,  <34.006802, 34.094784, 29.792002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838989, 33.410881, 29.852106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207706, 33.435112, 30.005280>,  <34.428936, 33.449650, 30.097183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207706, 33.435112, 30.005280>,  <33.838989, 33.410881, 29.852106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207706, 33.435112, 30.005280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279725, -0.579977, 0.765102,
		0.268441, -0.812377, -0.517671,
		0.921788, 0.060579, 0.382932,
		34.484241, 33.453285, 30.120159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068817, 32.714134, 29.974131>,  <33.838989, 33.410881, 29.852106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068817, 32.714134, 29.974131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246647, 32.984375, 30.209389>,  <34.353344, 33.146519, 30.350544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246647, 32.984375, 30.209389>,  <34.068817, 32.714134, 29.974131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246647, 32.984375, 30.209389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194473, -0.568139, 0.799624,
		0.874375, -0.469873, -0.121195,
		0.444577, 0.675602, 0.588144,
		34.380020, 33.187057, 30.385832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260918, 32.321342, 30.495956>,  <34.068817, 32.714134, 29.974131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260918, 32.321342, 30.495956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309643, 32.693184, 30.635101>,  <34.338879, 32.916286, 30.718588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309643, 32.693184, 30.635101>,  <34.260918, 32.321342, 30.495956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309643, 32.693184, 30.635101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153156, -0.328669, 0.931944,
		0.980666, -0.166800, 0.102338,
		0.121813, 0.929599, 0.347861,
		34.346188, 32.972065, 30.739460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625641, 32.157410, 31.126081>,  <34.260918, 32.321342, 30.495956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625641, 32.157410, 31.126081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477444, 32.527935, 31.153454>,  <34.388523, 32.750248, 31.169876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477444, 32.527935, 31.153454>,  <34.625641, 32.157410, 31.126081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477444, 32.527935, 31.153454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237030, -0.165524, 0.957298,
		0.898081, 0.338456, 0.280889,
		-0.370497, 0.926310, 0.068430,
		34.366295, 32.805828, 31.173983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805641, 32.316635, 31.766750>,  <34.625641, 32.157410, 31.126081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805641, 32.316635, 31.766750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508274, 32.578796, 31.713413>,  <34.329853, 32.736092, 31.681412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508274, 32.578796, 31.713413>,  <34.805641, 32.316635, 31.766750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508274, 32.578796, 31.713413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303971, -0.153497, 0.940234,
		0.595766, 0.739516, 0.313336,
		-0.743414, 0.655404, -0.133343,
		34.285252, 32.775417, 31.673410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765396, 32.534229, 32.335930>,  <34.805641, 32.316635, 31.766750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765396, 32.534229, 32.335930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412701, 32.651810, 32.188351>,  <34.201084, 32.722359, 32.099804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412701, 32.651810, 32.188351>,  <34.765396, 32.534229, 32.335930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412701, 32.651810, 32.188351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432023, -0.189095, 0.881816,
		0.189442, 0.936929, 0.293726,
		-0.881741, 0.293950, -0.368953,
		34.148178, 32.739994, 32.077663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480236, 32.910080, 32.935818>,  <34.765396, 32.534229, 32.335930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480236, 32.910080, 32.935818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176228, 32.806469, 32.697399>,  <33.993820, 32.744301, 32.554348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176228, 32.806469, 32.697399>,  <34.480236, 32.910080, 32.935818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176228, 32.806469, 32.697399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599489, -0.074719, 0.796888,
		-0.250952, 0.962975, -0.098496,
		-0.760024, -0.259028, -0.596044,
		33.948219, 32.728760, 32.518585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948555, 33.355053, 33.143963>,  <34.480236, 32.910080, 32.935818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948555, 33.355053, 33.143963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783737, 33.033859, 32.971718>,  <33.684845, 32.841141, 32.868370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783737, 33.033859, 32.971718>,  <33.948555, 33.355053, 33.143963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783737, 33.033859, 32.971718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578767, -0.134355, 0.804349,
		-0.703737, 0.580656, -0.409381,
		-0.412048, -0.802986, -0.430615,
		33.660122, 32.792965, 32.842533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245522, 33.477482, 33.281418>,  <33.948555, 33.355053, 33.143963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245522, 33.477482, 33.281418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324635, 33.095818, 33.191570>,  <33.372101, 32.866817, 33.137661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324635, 33.095818, 33.191570>,  <33.245522, 33.477482, 33.281418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324635, 33.095818, 33.191570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381716, -0.286030, 0.878908,
		-0.902871, -0.088088, -0.420790,
		0.197780, -0.954163, -0.224624,
		33.383968, 32.809570, 33.124184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684132, 33.062752, 33.578575>,  <33.245522, 33.477482, 33.281418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684132, 33.062752, 33.578575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951023, 32.768326, 33.532944>,  <33.111156, 32.591671, 33.505566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951023, 32.768326, 33.532944>,  <32.684132, 33.062752, 33.578575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951023, 32.768326, 33.532944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316140, -0.418528, 0.851404,
		-0.674437, -0.532013, -0.511953,
		0.667225, -0.736068, -0.114080,
		33.151192, 32.547504, 33.498718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887094, 32.810207, 33.466160>,  <32.684132, 33.062752, 33.578575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887094, 32.810207, 33.466160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694643, 33.136536, 33.594501>,  <31.579172, 33.332333, 33.671505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694643, 33.136536, 33.594501>,  <31.887094, 32.810207, 33.466160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694643, 33.136536, 33.594501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255269, 0.480519, -0.839011,
		-0.838661, -0.321768, -0.439446,
		-0.481129, 0.815823, 0.320855,
		31.550304, 33.381283, 33.690758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471960, 32.951801, 32.904591>,  <31.887094, 32.810207, 33.466160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471960, 32.951801, 32.904591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451839, 33.292480, 33.113239>,  <31.439768, 33.496887, 33.238426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451839, 33.292480, 33.113239>,  <31.471960, 32.951801, 32.904591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451839, 33.292480, 33.113239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008332, 0.521902, -0.852965,
		-0.998699, -0.047252, -0.019156,
		-0.050301, 0.851696, 0.521617,
		31.436749, 33.547989, 33.269726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867556, 33.319401, 32.693150>,  <31.471960, 32.951801, 32.904591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867556, 33.319401, 32.693150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132797, 33.589539, 32.822273>,  <31.291943, 33.751621, 32.899746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132797, 33.589539, 32.822273>,  <30.867556, 33.319401, 32.693150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132797, 33.589539, 32.822273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091723, 0.501314, -0.860390,
		-0.742886, 0.540919, 0.394368,
		0.663104, 0.675345, 0.322805,
		31.331728, 33.792141, 32.919113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599131, 34.066719, 32.421021>,  <30.867556, 33.319401, 32.693150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599131, 34.066719, 32.421021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987684, 34.115025, 32.502834>,  <31.220816, 34.144009, 32.551922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987684, 34.115025, 32.502834>,  <30.599131, 34.066719, 32.421021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987684, 34.115025, 32.502834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090252, 0.608870, -0.788119,
		-0.219709, 0.784024, 0.580546,
		0.971382, 0.120761, 0.204534,
		31.279099, 34.151253, 32.564194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669649, 34.744209, 32.348183>,  <30.599131, 34.066719, 32.421021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669649, 34.744209, 32.348183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034945, 34.582111, 32.331360>,  <31.254122, 34.484852, 32.321266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034945, 34.582111, 32.331360>,  <30.669649, 34.744209, 32.348183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034945, 34.582111, 32.331360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214129, 0.565225, -0.796661,
		0.346614, 0.718538, 0.602961,
		0.913240, -0.405245, -0.042055,
		31.308916, 34.460537, 32.318745>
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
