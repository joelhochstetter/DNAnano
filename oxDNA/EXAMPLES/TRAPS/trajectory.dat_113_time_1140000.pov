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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.503540, 52.426487, 49.512791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213722, 52.654793, 49.358253>,  <36.039829, 52.791775, 49.265533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213722, 52.654793, 49.358253>,  <36.503540, 52.426487, 49.512791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213722, 52.654793, 49.358253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688996, 0.585354, -0.427371,
		-0.017783, -0.575837, -0.817371,
		-0.724547, 0.570766, -0.386340,
		35.996357, 52.826023, 49.242352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762405, 51.695587, 49.606396>,  <36.503540, 52.426487, 49.512791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762405, 51.695587, 49.606396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121841, 51.592609, 49.464264>,  <37.337502, 51.530823, 49.378983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121841, 51.592609, 49.464264>,  <36.762405, 51.695587, 49.606396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121841, 51.592609, 49.464264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136286, 0.933493, -0.331689,
		0.417094, 0.249624, 0.873911,
		0.898587, -0.257448, -0.355334,
		37.391418, 51.515373, 49.357662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218002, 52.080315, 49.930290>,  <36.762405, 51.695587, 49.606396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218002, 52.080315, 49.930290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343178, 51.958912, 49.570301>,  <37.418285, 51.886070, 49.354309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343178, 51.958912, 49.570301>,  <37.218002, 52.080315, 49.930290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343178, 51.958912, 49.570301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227297, 0.943965, -0.239303,
		0.922173, -0.129673, 0.364392,
		0.312942, -0.303504, -0.899974,
		37.437061, 51.867859, 49.300308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922150, 52.236275, 49.766098>,  <37.218002, 52.080315, 49.930290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922150, 52.236275, 49.766098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722946, 52.204391, 49.420696>,  <37.603424, 52.185261, 49.213455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722946, 52.204391, 49.420696>,  <37.922150, 52.236275, 49.766098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722946, 52.204391, 49.420696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223035, 0.950493, -0.216374,
		0.837998, -0.300347, -0.455577,
		-0.498010, -0.079712, -0.863500,
		37.573544, 52.180477, 49.161648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276913, 52.386440, 49.055405>,  <37.922150, 52.236275, 49.766098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276913, 52.386440, 49.055405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884895, 52.462849, 49.077393>,  <37.649685, 52.508694, 49.090584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884895, 52.462849, 49.077393>,  <38.276913, 52.386440, 49.055405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884895, 52.462849, 49.077393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197413, 0.967676, 0.156943,
		-0.023215, 0.164663, -0.986077,
		-0.980046, 0.191021, 0.054971,
		37.590881, 52.520153, 49.093884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944435, 52.319843, 48.630909>,  <38.276913, 52.386440, 49.055405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944435, 52.319843, 48.630909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256973, 52.433708, 48.408752>,  <39.444496, 52.502029, 48.275459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256973, 52.433708, 48.408752>,  <38.944435, 52.319843, 48.630909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256973, 52.433708, 48.408752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007267, 0.894006, 0.447996,
		0.624053, -0.346005, 0.700599,
		0.781348, 0.284665, -0.555392,
		39.491379, 52.519108, 48.242134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522831, 52.506138, 49.070541>,  <38.944435, 52.319843, 48.630909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522831, 52.506138, 49.070541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530682, 52.689827, 48.715298>,  <39.535393, 52.800041, 48.502151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530682, 52.689827, 48.715298>,  <39.522831, 52.506138, 49.070541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530682, 52.689827, 48.715298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049265, 0.887642, 0.457892,
		0.998593, 0.034767, 0.040043,
		0.019625, 0.459220, -0.888106,
		39.536568, 52.827595, 48.448868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240498, 52.896427, 48.878487>,  <39.522831, 52.506138, 49.070541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240498, 52.896427, 48.878487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949455, 53.071079, 48.666847>,  <39.774830, 53.175869, 48.539864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949455, 53.071079, 48.666847>,  <40.240498, 52.896427, 48.878487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949455, 53.071079, 48.666847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102921, 0.832037, 0.545089,
		0.678232, 0.342154, -0.650332,
		-0.727605, 0.436629, -0.529099,
		39.731174, 53.202068, 48.508118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541153, 53.436180, 48.555164>,  <40.240498, 52.896427, 48.878487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541153, 53.436180, 48.555164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148258, 53.501312, 48.592464>,  <39.912521, 53.540394, 48.614845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148258, 53.501312, 48.592464>,  <40.541153, 53.436180, 48.555164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148258, 53.501312, 48.592464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187636, 0.848285, 0.495182,
		0.001532, 0.503882, -0.863771,
		-0.982238, 0.162833, 0.093247,
		39.853588, 53.550163, 48.620438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466198, 54.054474, 48.226555>,  <40.541153, 53.436180, 48.555164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466198, 54.054474, 48.226555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214905, 53.952545, 48.520599>,  <40.064129, 53.891388, 48.697025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214905, 53.952545, 48.520599>,  <40.466198, 54.054474, 48.226555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214905, 53.952545, 48.520599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323562, 0.773689, 0.544713,
		-0.707555, 0.580060, -0.403604,
		-0.628231, -0.254824, 0.735113,
		40.026436, 53.876099, 48.741135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197495, 53.662914, 48.320236>,  <40.466198, 54.054474, 48.226555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197495, 53.662914, 48.320236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425838, 53.434444, 48.556160>,  <41.562847, 53.297363, 48.697716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425838, 53.434444, 48.556160>,  <41.197495, 53.662914, 48.320236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425838, 53.434444, 48.556160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819162, 0.444847, -0.362056,
		-0.055578, 0.689835, 0.721830,
		0.570863, -0.571174, 0.589810,
		41.597095, 53.263092, 48.733105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613342, 54.026657, 48.686256>,  <41.197495, 53.662914, 48.320236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613342, 54.026657, 48.686256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805237, 53.677414, 48.651550>,  <41.920376, 53.467869, 48.630726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805237, 53.677414, 48.651550>,  <41.613342, 54.026657, 48.686256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805237, 53.677414, 48.651550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837153, 0.485094, -0.252702,
		0.262727, 0.048594, 0.963646,
		0.479739, -0.873111, -0.086767,
		41.949158, 53.415482, 48.625519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208187, 54.141983, 48.977997>,  <41.613342, 54.026657, 48.686256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208187, 54.141983, 48.977997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244495, 53.832630, 48.727036>,  <42.266281, 53.647018, 48.576458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244495, 53.832630, 48.727036>,  <42.208187, 54.141983, 48.977997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244495, 53.832630, 48.727036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878553, 0.358849, -0.315234,
		0.468941, -0.522596, 0.712031,
		0.090772, -0.773383, -0.627407,
		42.271729, 53.600616, 48.538815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891144, 53.745045, 49.192574>,  <42.208187, 54.141983, 48.977997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891144, 53.745045, 49.192574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757282, 53.743614, 48.815639>,  <42.676964, 53.742756, 48.589478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757282, 53.743614, 48.815639>,  <42.891144, 53.745045, 49.192574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757282, 53.743614, 48.815639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830685, 0.471036, -0.296794,
		0.444935, -0.882107, -0.154662,
		-0.334656, -0.003579, -0.942334,
		42.656887, 53.742542, 48.532940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437305, 53.388115, 48.800171>,  <42.891144, 53.745045, 49.192574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437305, 53.388115, 48.800171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224060, 53.653290, 48.589912>,  <43.096111, 53.812393, 48.463757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224060, 53.653290, 48.589912>,  <43.437305, 53.388115, 48.800171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224060, 53.653290, 48.589912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842274, 0.474449, -0.255875,
		0.079763, -0.579148, -0.811311,
		-0.533115, 0.662937, -0.525645,
		43.064125, 53.852169, 48.432220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664379, 53.333622, 48.136749>,  <43.437305, 53.388115, 48.800171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664379, 53.333622, 48.136749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534351, 53.709759, 48.176926>,  <43.456337, 53.935440, 48.201031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534351, 53.709759, 48.176926>,  <43.664379, 53.333622, 48.136749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534351, 53.709759, 48.176926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875318, 0.339378, -0.344442,
		-0.357980, -0.024053, -0.933420,
		-0.325067, 0.940342, 0.100437,
		43.436832, 53.991863, 48.207058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597717, 53.687729, 47.513397>,  <43.664379, 53.333622, 48.136749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597717, 53.687729, 47.513397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725803, 53.919338, 47.813316>,  <43.802654, 54.058304, 47.993267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725803, 53.919338, 47.813316>,  <43.597717, 53.687729, 47.513397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725803, 53.919338, 47.813316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824003, 0.220274, -0.522013,
		-0.467420, 0.784989, -0.406585,
		0.320214, 0.579027, 0.749794,
		43.821869, 54.093048, 48.038254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266685, 53.618244, 47.834419>,  <43.597717, 53.687729, 47.513397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266685, 53.618244, 47.834419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231503, 53.606754, 48.232704>,  <44.210392, 53.599861, 48.471676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231503, 53.606754, 48.232704>,  <44.266685, 53.618244, 47.834419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231503, 53.606754, 48.232704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881440, 0.463401, 0.091233,
		-0.464034, 0.885683, -0.015437,
		-0.087957, -0.028729, 0.995710,
		44.205116, 53.598137, 48.531418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850479, 53.366970, 48.308563>,  <44.266685, 53.618244, 47.834419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850479, 53.366970, 48.308563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879414, 53.229546, 48.683098>,  <44.896774, 53.147091, 48.907818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879414, 53.229546, 48.683098>,  <44.850479, 53.366970, 48.308563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879414, 53.229546, 48.683098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971365, -0.188752, -0.144301,
		0.226312, 0.919967, 0.320068,
		0.072339, -0.343560, 0.936340,
		44.901115, 53.126476, 48.964001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352486, 53.739357, 48.805584>,  <44.850479, 53.366970, 48.308563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352486, 53.739357, 48.805584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290043, 53.345215, 48.832996>,  <45.252575, 53.108730, 48.849445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290043, 53.345215, 48.832996>,  <45.352486, 53.739357, 48.805584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290043, 53.345215, 48.832996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962619, -0.167320, -0.212997,
		0.221345, 0.032717, 0.974646,
		-0.156109, -0.985360, 0.068530,
		45.243210, 53.049606, 48.853554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879673, 54.209496, 49.079140>,  <45.352486, 53.739357, 48.805584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879673, 54.209496, 49.079140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033333, 54.070641, 48.736927>,  <46.125526, 53.987328, 48.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033333, 54.070641, 48.736927>,  <45.879673, 54.209496, 49.079140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033333, 54.070641, 48.736927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910397, 0.011790, -0.413568,
		0.153650, 0.937742, -0.311500,
		0.384147, -0.347134, -0.855529,
		46.148579, 53.966499, 48.480267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626900, 54.654560, 48.618572>,  <45.879673, 54.209496, 49.079140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626900, 54.654560, 48.618572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692631, 54.287113, 48.474827>,  <45.732071, 54.066647, 48.388580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692631, 54.287113, 48.474827>,  <45.626900, 54.654560, 48.618572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692631, 54.287113, 48.474827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872525, 0.034566, -0.487345,
		0.460105, 0.393635, -0.795836,
		0.164327, -0.918617, -0.359360,
		45.741928, 54.011528, 48.367020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185371, 55.075321, 48.795685>,  <45.626900, 54.654560, 48.618572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185371, 55.075321, 48.795685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507195, 55.239975, 48.966911>,  <46.700287, 55.338768, 49.069649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507195, 55.239975, 48.966911>,  <46.185371, 55.075321, 48.795685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507195, 55.239975, 48.966911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393950, 0.169442, -0.903378,
		-0.444396, 0.895458, -0.025838,
		0.804559, 0.411637, 0.428065,
		46.748562, 55.363464, 49.095329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194115, 55.636864, 48.462330>,  <46.185371, 55.075321, 48.795685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194115, 55.636864, 48.462330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548725, 55.532444, 48.615135>,  <46.761490, 55.469791, 48.706818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548725, 55.532444, 48.615135>,  <46.194115, 55.636864, 48.462330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548725, 55.532444, 48.615135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415204, 0.084527, -0.905793,
		0.204163, 0.961619, 0.183322,
		0.886523, -0.261046, 0.382010,
		46.814682, 55.454132, 48.729740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730194, 56.220184, 48.324055>,  <46.194115, 55.636864, 48.462330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730194, 56.220184, 48.324055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868240, 55.845844, 48.352539>,  <46.951069, 55.621239, 48.369629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868240, 55.845844, 48.352539>,  <46.730194, 56.220184, 48.324055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868240, 55.845844, 48.352539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485330, 0.113007, -0.866997,
		0.803336, 0.333776, 0.493199,
		0.345118, -0.935854, 0.071208,
		46.971775, 55.565086, 48.373901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.435772, 56.304752, 48.099533>,  <46.730194, 56.220184, 48.324055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.435772, 56.304752, 48.099533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313320, 55.929375, 48.035530>,  <47.239849, 55.704147, 47.997128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313320, 55.929375, 48.035530>,  <47.435772, 56.304752, 48.099533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.313320, 55.929375, 48.035530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319852, 0.056913, -0.945757,
		0.896650, -0.340699, 0.282742,
		-0.306126, -0.938448, -0.160004,
		47.221481, 55.647839, 47.987530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748951, 55.956837, 47.511810>,  <47.435772, 56.304752, 48.099533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748951, 55.956837, 47.511810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897072, 56.068192, 47.866295>,  <47.985943, 56.135006, 48.078987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897072, 56.068192, 47.866295>,  <47.748951, 55.956837, 47.511810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.897072, 56.068192, 47.866295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594042, -0.662482, 0.456323,
		0.714138, -0.695425, -0.079941,
		0.370298, 0.278390, 0.886216,
		48.008160, 56.151707, 48.132160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827061, 55.347164, 47.919754>,  <47.748951, 55.956837, 47.511810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827061, 55.347164, 47.919754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842957, 55.615810, 48.215687>,  <47.852493, 55.776997, 48.393246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842957, 55.615810, 48.215687>,  <47.827061, 55.347164, 47.919754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842957, 55.615810, 48.215687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408891, -0.664654, 0.625334,
		0.911717, -0.327362, 0.248204,
		0.039741, 0.671616, 0.739832,
		47.854877, 55.817295, 48.437637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.014587, 55.006470, 48.537743>,  <47.827061, 55.347164, 47.919754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.014587, 55.006470, 48.537743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755615, 55.304298, 48.602791>,  <47.600231, 55.482994, 48.641819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755615, 55.304298, 48.602791>,  <48.014587, 55.006470, 48.537743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.755615, 55.304298, 48.602791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472375, -0.559496, 0.681048,
		0.598076, 0.364112, 0.713952,
		-0.647431, 0.744572, 0.162624,
		47.561386, 55.527668, 48.651577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.074726, 55.193481, 49.233932>,  <48.014587, 55.006470, 48.537743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.074726, 55.193481, 49.233932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705975, 55.283562, 49.107807>,  <47.484722, 55.337608, 49.032131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705975, 55.283562, 49.107807>,  <48.074726, 55.193481, 49.233932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.705975, 55.283562, 49.107807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387005, -0.494965, 0.777969,
		0.019125, 0.839223, 0.543451,
		-0.921879, 0.225197, -0.315317,
		47.429409, 55.351120, 49.013210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.803593, 55.133461, 49.233746>,  <48.074726, 55.193481, 49.233932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.803593, 55.133461, 49.233746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.777588, 55.074894, 49.628578>,  <48.761986, 55.039753, 49.865479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.777588, 55.074894, 49.628578>,  <48.803593, 55.133461, 49.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.777588, 55.074894, 49.628578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654944, 0.740046, 0.152908,
		-0.752876, 0.656425, 0.047786,
		-0.065009, -0.146418, 0.987085,
		48.758083, 55.030968, 49.924702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.940331, 55.780018, 49.447533>,  <48.803593, 55.133461, 49.233746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.940331, 55.780018, 49.447533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.010727, 55.582169, 49.787971>,  <49.052963, 55.463459, 49.992237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.010727, 55.582169, 49.787971>,  <48.940331, 55.780018, 49.447533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.010727, 55.582169, 49.787971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741778, 0.635022, 0.215667,
		-0.647142, 0.593373, 0.478660,
		0.175988, -0.494627, 0.851100,
		49.063522, 55.433781, 50.043301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.662895, 55.700317, 49.332233>,  <48.940331, 55.780018, 49.447533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.662895, 55.700317, 49.332233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.914291, 55.922096, 49.550438>,  <50.065128, 56.055164, 49.681362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.914291, 55.922096, 49.550438>,  <49.662895, 55.700317, 49.332233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.914291, 55.922096, 49.550438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190760, -0.789794, 0.582954,
		0.754059, -0.262322, -0.602148,
		0.628495, 0.554448, 0.545511,
		50.102840, 56.088432, 49.714092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.275097, 55.319355, 49.377506>,  <49.662895, 55.700317, 49.332233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.275097, 55.319355, 49.377506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.204617, 55.551167, 49.695774>,  <50.162327, 55.690254, 49.886734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.204617, 55.551167, 49.695774>,  <50.275097, 55.319355, 49.377506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.204617, 55.551167, 49.695774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066900, -0.813502, 0.577701,
		0.982078, 0.048562, 0.182112,
		-0.176203, 0.579531, 0.795674,
		50.151756, 55.725025, 49.934475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.660282, 55.082306, 49.890099>,  <50.275097, 55.319355, 49.377506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.660282, 55.082306, 49.890099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387589, 55.295059, 50.091034>,  <50.223972, 55.422710, 50.211594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387589, 55.295059, 50.091034>,  <50.660282, 55.082306, 49.890099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.387589, 55.295059, 50.091034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177820, -0.786503, 0.591432,
		0.709661, 0.313874, 0.630765,
		-0.681734, 0.531879, 0.502338,
		50.183067, 55.454624, 50.241734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.246502, 55.178715, 50.276428>,  <50.660282, 55.082306, 49.890099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.246502, 55.178715, 50.276428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.260403, 55.333351, 50.645065>,  <51.268742, 55.426132, 50.866249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.260403, 55.333351, 50.645065>,  <51.246502, 55.178715, 50.276428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.260403, 55.333351, 50.645065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896473, 0.395534, -0.199722,
		-0.441734, 0.833125, -0.332827,
		0.034749, 0.386595, 0.921595,
		51.270828, 55.449329, 50.921543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.403961, 54.649788, 49.893013>,  <51.246502, 55.178715, 50.276428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.403961, 54.649788, 49.893013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.257545, 54.421043, 50.186676>,  <51.169697, 54.283798, 50.362873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.257545, 54.421043, 50.186676>,  <51.403961, 54.649788, 49.893013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.257545, 54.421043, 50.186676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803873, -0.591753, -0.060131,
		0.468828, 0.568162, 0.676308,
		-0.366044, -0.571857, 0.734161,
		51.147732, 54.249485, 50.406925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.962132, 54.584446, 50.368393>,  <51.403961, 54.649788, 49.893013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.962132, 54.584446, 50.368393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.709129, 54.275124, 50.386024>,  <51.557327, 54.089531, 50.396603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.709129, 54.275124, 50.386024>,  <51.962132, 54.584446, 50.368393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.709129, 54.275124, 50.386024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773816, -0.628384, 0.079640,
		-0.033885, 0.084483, 0.995849,
		-0.632504, -0.773302, 0.044081,
		51.519379, 54.043133, 50.399250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.561481, 54.050976, 50.516365>,  <51.962132, 54.584446, 50.368393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.561481, 54.050976, 50.516365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.540283, 53.764355, 50.238159>,  <52.527565, 53.592381, 50.071236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.540283, 53.764355, 50.238159>,  <52.561481, 54.050976, 50.516365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.540283, 53.764355, 50.238159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993613, 0.031647, -0.108308,
		0.099620, -0.696810, 0.710303,
		-0.052991, -0.716557, -0.695513,
		52.524387, 53.549389, 50.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.911060, 53.396835, 50.758434>,  <52.561481, 54.050976, 50.516365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.911060, 53.396835, 50.758434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.916348, 53.454739, 50.362682>,  <52.919518, 53.489479, 50.125233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.916348, 53.454739, 50.362682>,  <52.911060, 53.396835, 50.758434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.916348, 53.454739, 50.362682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999899, 0.003239, 0.013830,
		0.005207, -0.989461, -0.144702,
		0.013216, 0.144760, -0.989379,
		52.920311, 53.498165, 50.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.188366, 52.795124, 50.401371>,  <52.911060, 53.396835, 50.758434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.188366, 52.795124, 50.401371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.229183, 53.176865, 50.289093>,  <53.253674, 53.405910, 50.221725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.229183, 53.176865, 50.289093>,  <53.188366, 52.795124, 50.401371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.229183, 53.176865, 50.289093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945453, -0.005290, 0.325715,
		0.309363, -0.298625, -0.902839,
		0.102043, 0.954356, -0.280699,
		53.259796, 53.463173, 50.204884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.781677, 52.777527, 49.924873>,  <53.188366, 52.795124, 50.401371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.781677, 52.777527, 49.924873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.723080, 53.128487, 50.107616>,  <53.687920, 53.339062, 50.217262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.723080, 53.128487, 50.107616>,  <53.781677, 52.777527, 49.924873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.723080, 53.128487, 50.107616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955572, 0.006105, 0.294693,
		0.255773, 0.479729, -0.839309,
		-0.146497, 0.877396, 0.456854,
		53.679131, 53.391705, 50.244671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.477501, 53.040066, 49.821873>,  <53.781677, 52.777527, 49.924873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.477501, 53.040066, 49.821873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.284996, 53.234295, 50.113792>,  <54.169491, 53.350830, 50.288944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.284996, 53.234295, 50.113792>,  <54.477501, 53.040066, 49.821873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.284996, 53.234295, 50.113792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864274, 0.401837, 0.302586,
		-0.146333, 0.776370, -0.613055,
		-0.481267, 0.485569, 0.729798,
		54.140617, 53.379967, 50.332733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.578487, 53.854668, 49.773701>,  <54.477501, 53.040066, 49.821873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.578487, 53.854668, 49.773701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.537064, 53.693314, 50.137360>,  <54.512211, 53.596500, 50.355556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.537064, 53.693314, 50.137360>,  <54.578487, 53.854668, 49.773701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.537064, 53.693314, 50.137360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950256, 0.229834, 0.210215,
		-0.293752, 0.885693, 0.359523,
		-0.103555, -0.403390, 0.909150,
		54.505997, 53.572296, 50.410103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.735264, 54.392410, 50.393944>,  <54.578487, 53.854668, 49.773701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.735264, 54.392410, 50.393944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806755, 54.007797, 50.477379>,  <54.849651, 53.777031, 50.527439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806755, 54.007797, 50.477379>,  <54.735264, 54.392410, 50.393944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.806755, 54.007797, 50.477379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959757, 0.217057, 0.178192,
		-0.216612, 0.168340, 0.961635,
		0.178732, -0.961534, 0.208583,
		54.860374, 53.719337, 50.539955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.571045, 54.013256, 51.041412>,  <54.735264, 54.392410, 50.393944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.571045, 54.013256, 51.041412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.873047, 54.275436, 51.048996>,  <55.054249, 54.432743, 51.053547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.873047, 54.275436, 51.048996>,  <54.571045, 54.013256, 51.041412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.873047, 54.275436, 51.048996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420841, 0.462180, 0.780565,
		0.502855, -0.597309, 0.624786,
		0.755003, 0.655447, 0.018963,
		55.099548, 54.472073, 51.054684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.061813, 53.967575, 51.728344>,  <54.571045, 54.013256, 51.041412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.061813, 53.967575, 51.728344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.998444, 54.323738, 51.557663>,  <54.960423, 54.537437, 51.455254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.998444, 54.323738, 51.557663>,  <55.061813, 53.967575, 51.728344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.998444, 54.323738, 51.557663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580313, 0.265668, 0.769842,
		0.798835, 0.369582, 0.474628,
		-0.158426, 0.890410, -0.426698,
		54.950916, 54.590862, 51.429653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.861343, 54.378555, 52.247997>,  <55.061813, 53.967575, 51.728344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.861343, 54.378555, 52.247997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.742195, 54.611591, 51.945511>,  <54.670708, 54.751411, 51.764019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.742195, 54.611591, 51.945511>,  <54.861343, 54.378555, 52.247997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.742195, 54.611591, 51.945511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729808, 0.371665, 0.573799,
		0.615348, 0.722811, 0.314469,
		-0.297871, 0.582588, -0.756217,
		54.652832, 54.786369, 51.718647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.796173, 55.036072, 52.522690>,  <54.861343, 54.378555, 52.247997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.796173, 55.036072, 52.522690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.545380, 55.025887, 52.211243>,  <54.394905, 55.019775, 52.024376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.545380, 55.025887, 52.211243>,  <54.796173, 55.036072, 52.522690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.545380, 55.025887, 52.211243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772911, 0.145408, 0.617629,
		0.097489, 0.989044, -0.110851,
		-0.626980, -0.025466, -0.778619,
		54.357285, 55.018246, 51.977657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.304451, 55.583485, 52.298771>,  <54.796173, 55.036072, 52.522690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.304451, 55.583485, 52.298771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.438950, 55.515759, 52.669342>,  <55.519650, 55.475124, 52.891685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.438950, 55.515759, 52.669342>,  <55.304451, 55.583485, 52.298771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.438950, 55.515759, 52.669342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706396, -0.605244, -0.366994,
		0.622853, 0.777826, -0.083907,
		0.336242, -0.169312, 0.926431,
		55.539822, 55.464966, 52.947273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.177441, 55.693626, 52.463692>,  <55.304451, 55.583485, 52.298771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.177441, 55.693626, 52.463692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.003197, 55.406433, 52.680855>,  <55.898651, 55.234119, 52.811153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.003197, 55.406433, 52.680855>,  <56.177441, 55.693626, 52.463692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.003197, 55.406433, 52.680855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710832, -0.644412, -0.281871,
		0.552237, 0.263134, 0.791072,
		-0.435607, -0.717979, 0.542912,
		55.872513, 55.191040, 52.843727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.638241, 55.535263, 52.898453>,  <56.177441, 55.693626, 52.463692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.638241, 55.535263, 52.898453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.396240, 55.220905, 52.847321>,  <56.251041, 55.032291, 52.816639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.396240, 55.220905, 52.847321>,  <56.638241, 55.535263, 52.898453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.396240, 55.220905, 52.847321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781312, -0.555037, -0.285457,
		0.153387, -0.272580, 0.949828,
		-0.604999, -0.785897, -0.127834,
		56.214741, 54.985138, 52.808971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.804825, 54.956615, 53.359463>,  <56.638241, 55.535263, 52.898453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.804825, 54.956615, 53.359463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.606209, 54.792194, 53.053658>,  <56.487038, 54.693542, 52.870174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.606209, 54.792194, 53.053658>,  <56.804825, 54.956615, 53.359463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.606209, 54.792194, 53.053658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816129, -0.521031, -0.249921,
		-0.295606, -0.748039, 0.594184,
		-0.496539, -0.411052, -0.764516,
		56.457249, 54.668880, 52.824303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.305149, 55.339069, 52.980484>,  <56.804825, 54.956615, 53.359463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.305149, 55.339069, 52.980484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.216743, 55.394516, 53.366631>,  <57.163700, 55.427784, 53.598320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.216743, 55.394516, 53.366631>,  <57.305149, 55.339069, 52.980484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.216743, 55.394516, 53.366631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880102, 0.398138, -0.258665,
		-0.420206, -0.906791, 0.034005,
		-0.221016, 0.138620, 0.965369,
		57.150440, 55.436104, 53.656242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.159149, 55.734287, 52.311001>,  <57.305149, 55.339069, 52.980484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.159149, 55.734287, 52.311001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.892151, 55.959938, 52.505409>,  <56.731953, 56.095329, 52.622055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.892151, 55.959938, 52.505409>,  <57.159149, 55.734287, 52.311001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.892151, 55.959938, 52.505409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263417, -0.789401, 0.554488,
		0.696464, 0.242093, 0.675521,
		-0.667495, 0.564125, 0.486018,
		56.691902, 56.129177, 52.651215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.416973, 56.485764, 52.205299>,  <57.159149, 55.734287, 52.311001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.416973, 56.485764, 52.205299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.583366, 56.204060, 52.435425>,  <57.683201, 56.035038, 52.573502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.583366, 56.204060, 52.435425>,  <57.416973, 56.485764, 52.205299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.583366, 56.204060, 52.435425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464711, 0.708429, 0.531198,
		-0.781668, 0.046387, 0.621967,
		0.415979, -0.704256, 0.575313,
		57.708160, 55.992783, 52.608017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.253250, 56.506912, 52.881138>,  <57.416973, 56.485764, 52.205299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.253250, 56.506912, 52.881138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.618347, 56.343704, 52.889305>,  <57.837406, 56.245777, 52.894203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.618347, 56.343704, 52.889305>,  <57.253250, 56.506912, 52.881138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.618347, 56.343704, 52.889305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331209, 0.768311, 0.547721,
		-0.239168, -0.493167, 0.836412,
		0.912743, -0.408025, 0.020414,
		57.892170, 56.221298, 52.895428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.728840, 56.450142, 53.534599>,  <57.253250, 56.506912, 52.881138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.728840, 56.450142, 53.534599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.051186, 56.517273, 53.307476>,  <58.244595, 56.557552, 53.171200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.051186, 56.517273, 53.307476>,  <57.728840, 56.450142, 53.534599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.051186, 56.517273, 53.307476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227456, 0.797652, 0.558583,
		0.546664, -0.579297, 0.604627,
		0.805868, 0.167831, -0.567812,
		58.292946, 56.567623, 53.137131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.290466, 56.659878, 53.955364>,  <57.728840, 56.450142, 53.534599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.290466, 56.659878, 53.955364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.393524, 56.809807, 53.599133>,  <58.455360, 56.899765, 53.385395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.393524, 56.809807, 53.599133>,  <58.290466, 56.659878, 53.955364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.393524, 56.809807, 53.599133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273244, 0.855806, 0.439244,
		0.926799, -0.356513, 0.118075,
		0.257645, 0.374827, -0.890575,
		58.470818, 56.922256, 53.331959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.511986, 56.362450, 54.575272>,  <58.290466, 56.659878, 53.955364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.511986, 56.362450, 54.575272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.707520, 56.671104, 54.412483>,  <58.824841, 56.856297, 54.314812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.707520, 56.671104, 54.412483>,  <58.511986, 56.362450, 54.575272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.707520, 56.671104, 54.412483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872206, -0.441572, 0.210408,
		-0.017348, -0.457816, -0.888878,
		0.488832, 0.771634, -0.406970,
		58.854168, 56.902596, 54.290394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.019428, 56.022835, 54.272640>,  <58.511986, 56.362450, 54.575272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.019428, 56.022835, 54.272640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.166595, 56.393875, 54.298538>,  <59.254898, 56.616501, 54.314075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.166595, 56.393875, 54.298538>,  <59.019428, 56.022835, 54.272640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.166595, 56.393875, 54.298538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929241, -0.369320, 0.010704,
		0.033839, 0.056222, -0.997845,
		0.367922, 0.927600, 0.064741,
		59.276974, 56.672153, 54.317959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.363323, 56.193527, 53.702530>,  <59.019428, 56.022835, 54.272640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.363323, 56.193527, 53.702530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.519211, 56.397911, 54.009003>,  <59.612743, 56.520542, 54.192886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.519211, 56.397911, 54.009003>,  <59.363323, 56.193527, 53.702530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.519211, 56.397911, 54.009003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904618, -0.368308, -0.214511,
		0.172586, 0.776704, -0.605760,
		0.389718, 0.510960, 0.766185,
		59.636127, 56.551201, 54.238857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.095741, 56.023483, 53.579956>,  <59.363323, 56.193527, 53.702530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.095741, 56.023483, 53.579956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.067093, 56.241734, 53.913940>,  <60.049904, 56.372684, 54.114330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.067093, 56.241734, 53.913940>,  <60.095741, 56.023483, 53.579956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.067093, 56.241734, 53.913940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956489, -0.199809, 0.212614,
		0.282840, 0.813863, -0.507572,
		-0.071621, 0.545623, 0.834965,
		60.045609, 56.405422, 54.164429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.690323, 56.461086, 53.603783>,  <60.095741, 56.023483, 53.579956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.690323, 56.461086, 53.603783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.556427, 56.420372, 53.978500>,  <60.476089, 56.395943, 54.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.556427, 56.420372, 53.978500>,  <60.690323, 56.461086, 53.603783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.556427, 56.420372, 53.978500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904674, -0.312872, 0.289267,
		0.263654, 0.944325, 0.196815,
		-0.334740, -0.101787, 0.936797,
		60.456005, 56.389835, 54.259541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.307461, 56.104362, 53.807892>,  <60.690323, 56.461086, 53.603783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.307461, 56.104362, 53.807892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.410675, 56.287041, 54.148445>,  <61.472603, 56.396648, 54.352776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.410675, 56.287041, 54.148445>,  <61.307461, 56.104362, 53.807892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.410675, 56.287041, 54.148445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008189, -0.880157, 0.474612,
		0.966102, -0.129437, -0.223369,
		0.258032, 0.456694, 0.851381,
		61.488083, 56.424049, 54.403858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.800152, 55.773209, 54.159950>,  <61.307461, 56.104362, 53.807892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.800152, 55.773209, 54.159950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.574799, 55.967995, 54.426922>,  <61.439587, 56.084866, 54.587105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.574799, 55.967995, 54.426922>,  <61.800152, 55.773209, 54.159950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.574799, 55.967995, 54.426922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067861, -0.777831, 0.624799,
		0.823406, 0.397292, 0.405168,
		-0.563380, 0.486968, 0.667432,
		61.405785, 56.114086, 54.627151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.079346, 55.717537, 54.807167>,  <61.800152, 55.773209, 54.159950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.079346, 55.717537, 54.807167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.682022, 55.717228, 54.853363>,  <61.443626, 55.717045, 54.881081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.682022, 55.717228, 54.853363>,  <62.079346, 55.717537, 54.807167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.682022, 55.717228, 54.853363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064167, -0.835108, 0.546331,
		0.096028, 0.550086, 0.829569,
		-0.993308, -0.000768, 0.115491,
		61.384029, 55.716999, 54.888012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.738850, 55.364174, 55.073063>,  <62.079346, 55.717537, 54.807167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.738850, 55.364174, 55.073063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.731361, 55.200768, 55.438087>,  <62.726868, 55.102726, 55.657101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.731361, 55.200768, 55.438087>,  <62.738850, 55.364174, 55.073063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.731361, 55.200768, 55.438087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268437, -0.881263, -0.388995,
		0.963115, 0.237685, 0.126154,
		-0.018716, -0.408512, 0.912561,
		62.725746, 55.078213, 55.711857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.439571, 55.167988, 55.213120>,  <62.738850, 55.364174, 55.073063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.439571, 55.167988, 55.213120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.145004, 54.970425, 55.398048>,  <62.968262, 54.851887, 55.509007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.145004, 54.970425, 55.398048>,  <63.439571, 55.167988, 55.213120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.145004, 54.970425, 55.398048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354551, -0.863774, -0.358033,
		0.576177, -0.099746, 0.811216,
		-0.736420, -0.493908, 0.462321,
		62.924080, 54.822254, 55.536743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.295650, 55.816158, 55.277016>,  <63.439571, 55.167988, 55.213120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.295650, 55.816158, 55.277016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.409416, 56.185577, 55.379906>,  <63.477676, 56.407230, 55.441639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.409416, 56.185577, 55.379906>,  <63.295650, 55.816158, 55.277016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.409416, 56.185577, 55.379906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071481, -0.287987, 0.954963,
		0.956033, -0.253219, -0.147924,
		0.284415, 0.923549, 0.257224,
		63.494740, 56.462643, 55.457073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.999039, 55.903893, 55.562744>,  <63.295650, 55.816158, 55.277016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.999039, 55.903893, 55.562744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.785271, 56.182930, 55.753639>,  <63.657009, 56.350353, 55.868176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.785271, 56.182930, 55.753639>,  <63.999039, 55.903893, 55.562744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.785271, 56.182930, 55.753639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224162, -0.427437, 0.875813,
		0.814952, 0.575031, 0.072057,
		-0.534420, 0.697594, 0.477241,
		63.624947, 56.392208, 55.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.444923, 56.161716, 56.134949>,  <63.999039, 55.903893, 55.562744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.444923, 56.161716, 56.134949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.049370, 56.201611, 56.179062>,  <63.812038, 56.225548, 56.205528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.049370, 56.201611, 56.179062>,  <64.444923, 56.161716, 56.134949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.049370, 56.201611, 56.179062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045222, -0.504803, 0.862049,
		0.141650, 0.857453, 0.494681,
		-0.988883, 0.099739, 0.110281,
		63.752705, 56.231533, 56.212147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.936069, 55.569672, 56.299805>,  <64.444923, 56.161716, 56.134949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.936069, 55.569672, 56.299805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.148323, 55.232578, 56.263504>,  <64.275673, 55.030323, 56.241722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.148323, 55.232578, 56.263504>,  <63.936069, 55.569672, 56.299805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.148323, 55.232578, 56.263504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739022, 0.512429, -0.437336,
		0.415062, 0.164994, 0.894707,
		0.530632, -0.842730, -0.090756,
		64.307510, 54.979759, 56.236279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.696098, 55.574627, 56.593472>,  <63.936069, 55.569672, 56.299805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.696098, 55.574627, 56.593472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.658241, 55.365513, 56.254593>,  <64.635529, 55.240044, 56.051266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.658241, 55.365513, 56.254593>,  <64.696098, 55.574627, 56.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.658241, 55.365513, 56.254593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632777, 0.625391, -0.456596,
		0.768529, -0.579298, 0.271618,
		-0.094638, -0.522781, -0.847198,
		64.629852, 55.208679, 56.000435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.371529, 55.437222, 56.184902>,  <64.696098, 55.574627, 56.593472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.371529, 55.437222, 56.184902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.079185, 55.403538, 55.913979>,  <64.903778, 55.383327, 55.751423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.079185, 55.403538, 55.913979>,  <65.371529, 55.437222, 56.184902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.079185, 55.403538, 55.913979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496196, 0.615839, -0.611990,
		0.468647, -0.783360, -0.408312,
		-0.730862, -0.084205, -0.677311,
		64.859924, 55.378277, 55.710785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.993324, 55.439766, 56.627964>,  <65.371529, 55.437222, 56.184902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.993324, 55.439766, 56.627964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.357010, 55.507633, 56.780037>,  <66.575226, 55.548351, 56.871281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.357010, 55.507633, 56.780037>,  <65.993324, 55.439766, 56.627964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.357010, 55.507633, 56.780037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399067, -0.095023, -0.911985,
		-0.118605, 0.980910, -0.154104,
		0.909219, 0.169664, 0.380179,
		66.629776, 55.558533, 56.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.405190, 55.924366, 56.177917>,  <65.993324, 55.439766, 56.627964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.405190, 55.924366, 56.177917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.656517, 55.689583, 56.382156>,  <66.807312, 55.548714, 56.504700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.656517, 55.689583, 56.382156>,  <66.405190, 55.924366, 56.177917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.656517, 55.689583, 56.382156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565420, -0.106271, -0.817928,
		0.534348, 0.802616, 0.265104,
		0.628310, -0.586953, 0.510601,
		66.845009, 55.513496, 56.535336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.037506, 56.262882, 56.132694>,  <66.405190, 55.924366, 56.177917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.037506, 56.262882, 56.132694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.092934, 55.872040, 56.197273>,  <67.126190, 55.637535, 56.236019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.092934, 55.872040, 56.197273>,  <67.037506, 56.262882, 56.132694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.092934, 55.872040, 56.197273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511194, -0.069059, -0.856686,
		0.848222, 0.201237, 0.489922,
		0.138564, -0.977105, 0.161449,
		67.134506, 55.578907, 56.245708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.812859, 56.186356, 56.202496>,  <67.037506, 56.262882, 56.132694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.812859, 56.186356, 56.202496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.613747, 55.864677, 56.072578>,  <67.494278, 55.671669, 55.994629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.613747, 55.864677, 56.072578>,  <67.812859, 56.186356, 56.202496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.613747, 55.864677, 56.072578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290321, 0.198385, -0.936140,
		0.817273, -0.560281, 0.134724,
		-0.497774, -0.804195, -0.324796,
		67.464417, 55.623421, 55.975140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.235352, 55.609180, 56.078510>,  <67.812859, 56.186356, 56.202496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.235352, 55.609180, 56.078510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.910751, 55.702930, 55.864395>,  <67.715988, 55.759178, 55.735928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.910751, 55.702930, 55.864395>,  <68.235352, 55.609180, 56.078510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.910751, 55.702930, 55.864395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577828, 0.185407, -0.794820,
		-0.087038, -0.954303, -0.285884,
		-0.811505, 0.234371, -0.535285,
		67.667297, 55.773243, 55.703808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.705162, 55.061558, 56.063747>,  <68.235352, 55.609180, 56.078510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.705162, 55.061558, 56.063747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.461853, 55.129387, 56.373909>,  <67.315865, 55.170086, 56.560005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.461853, 55.129387, 56.373909>,  <67.705162, 55.061558, 56.063747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.461853, 55.129387, 56.373909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147340, 0.984056, -0.099622,
		-0.779934, 0.053651, -0.623558,
		-0.608272, 0.169574, 0.775403,
		67.279373, 55.180260, 56.606529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.184769, 54.788288, 56.572670>,  <67.705162, 55.061558, 56.063747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.184769, 54.788288, 56.572670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.251389, 54.912270, 56.947090>,  <68.291359, 54.986656, 57.171741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.251389, 54.912270, 56.947090>,  <68.184769, 54.788288, 56.572670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.251389, 54.912270, 56.947090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971147, 0.112774, -0.210131,
		-0.170692, 0.944041, -0.282225,
		0.166545, 0.309950, 0.936052,
		68.301353, 55.005253, 57.227905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.375862, 55.449299, 56.915680>,  <68.184769, 54.788288, 56.572670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.375862, 55.449299, 56.915680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.607796, 55.124638, 56.944046>,  <68.746956, 54.929840, 56.961063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.607796, 55.124638, 56.944046>,  <68.375862, 55.449299, 56.915680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.607796, 55.124638, 56.944046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471742, 0.405413, 0.783007,
		-0.664275, -0.420555, 0.617958,
		0.579825, -0.811649, 0.070913,
		68.781746, 54.881142, 56.965321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.771561, 55.612057, 57.521442>,  <68.375862, 55.449299, 56.915680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.771561, 55.612057, 57.521442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.906136, 55.258595, 57.391235>,  <68.986877, 55.046516, 57.313110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.906136, 55.258595, 57.391235>,  <68.771561, 55.612057, 57.521442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.906136, 55.258595, 57.391235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620240, -0.052177, 0.782674,
		-0.708601, -0.465218, 0.530526,
		0.336433, -0.883657, -0.325520,
		69.007065, 54.993496, 57.293579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.745682, 55.162750, 58.175659>,  <68.771561, 55.612057, 57.521442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.745682, 55.162750, 58.175659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.983406, 55.111263, 57.858116>,  <69.126045, 55.080372, 57.667591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.983406, 55.111263, 57.858116>,  <68.745682, 55.162750, 58.175659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.983406, 55.111263, 57.858116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804017, 0.072456, 0.590174,
		-0.018447, -0.989030, 0.146555,
		0.594319, -0.128719, -0.793861,
		69.161705, 55.072647, 57.619957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.169090, 54.739925, 58.442791>,  <68.745682, 55.162750, 58.175659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.169090, 54.739925, 58.442791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.325394, 54.884277, 58.104073>,  <69.419174, 54.970890, 57.900841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.325394, 54.884277, 58.104073>,  <69.169090, 54.739925, 58.442791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.325394, 54.884277, 58.104073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909153, -0.007352, 0.416397,
		0.144045, -0.932582, -0.330971,
		0.390758, 0.360884, -0.846801,
		69.442619, 54.992542, 57.850033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.786606, 54.361938, 58.364784>,  <69.169090, 54.739925, 58.442791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.786606, 54.361938, 58.364784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.820885, 54.690285, 58.138924>,  <69.841454, 54.887295, 58.003407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.820885, 54.690285, 58.138924>,  <69.786606, 54.361938, 58.364784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.820885, 54.690285, 58.138924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877257, 0.206488, 0.433339,
		0.472308, -0.532483, -0.702415,
		0.085705, 0.820868, -0.564650,
		69.846596, 54.936546, 57.969528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.498894, 54.376537, 58.075935>,  <69.786606, 54.361938, 58.364784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.498894, 54.376537, 58.075935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.338844, 54.741722, 58.107910>,  <70.242813, 54.960835, 58.127094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.338844, 54.741722, 58.107910>,  <70.498894, 54.376537, 58.075935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.338844, 54.741722, 58.107910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742243, 0.271669, 0.612594,
		0.537560, 0.304450, -0.786345,
		-0.400130, 0.912965, 0.079938,
		70.218803, 55.015614, 58.131893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.078400, 54.917919, 57.947361>,  <70.498894, 54.376537, 58.075935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.078400, 54.917919, 57.947361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.786728, 55.083294, 58.165482>,  <70.611725, 55.182518, 58.296352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.786728, 55.083294, 58.165482>,  <71.078400, 54.917919, 57.947361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.786728, 55.083294, 58.165482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683563, 0.477396, 0.552118,
		-0.032058, 0.775346, -0.630723,
		-0.729187, 0.413440, 0.545302,
		70.567970, 55.207325, 58.329071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.118713, 55.653843, 58.000679>,  <71.078400, 54.917919, 57.947361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.118713, 55.653843, 58.000679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.952217, 55.527794, 58.341843>,  <70.852318, 55.452164, 58.546539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.952217, 55.527794, 58.341843>,  <71.118713, 55.653843, 58.000679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.952217, 55.527794, 58.341843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799817, 0.319274, 0.508287,
		-0.432483, 0.893735, 0.119146,
		-0.416234, -0.315121, 0.852906,
		70.827347, 55.433258, 58.597713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.971344, 56.150723, 58.378651>,  <71.118713, 55.653843, 58.000679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.971344, 56.150723, 58.378651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.061707, 55.830723, 58.600990>,  <71.115921, 55.638721, 58.734394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.061707, 55.830723, 58.600990>,  <70.971344, 56.150723, 58.378651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.061707, 55.830723, 58.600990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799914, 0.477990, 0.362854,
		-0.555975, 0.362667, 0.747907,
		0.225897, -0.799999, 0.555853,
		71.129478, 55.590725, 58.767746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.053848, 56.244259, 59.199253>,  <70.971344, 56.150723, 58.378651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.053848, 56.244259, 59.199253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.298607, 55.965069, 59.050446>,  <71.445465, 55.797554, 58.961163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.298607, 55.965069, 59.050446>,  <71.053848, 56.244259, 59.199253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.298607, 55.965069, 59.050446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783117, 0.468711, 0.408702,
		-0.110898, -0.541419, 0.833407,
		0.611906, -0.697980, -0.372016,
		71.482178, 55.755676, 58.938839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.566551, 55.881001, 59.791916>,  <71.053848, 56.244259, 59.199253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.566551, 55.881001, 59.791916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.703957, 55.923470, 59.418663>,  <71.786400, 55.948952, 59.194714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.703957, 55.923470, 59.418663>,  <71.566551, 55.881001, 59.791916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.703957, 55.923470, 59.418663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772022, 0.533851, 0.344943,
		0.534776, -0.838886, 0.101412,
		0.343506, 0.106175, -0.933129,
		71.807007, 55.955322, 59.138725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.276131, 55.685947, 59.757183>,  <71.566551, 55.881001, 59.791916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.276131, 55.685947, 59.757183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.219910, 55.934067, 59.448517>,  <72.186180, 56.082939, 59.263317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.219910, 55.934067, 59.448517>,  <72.276131, 55.685947, 59.757183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.219910, 55.934067, 59.448517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920711, 0.368480, 0.128502,
		0.364054, -0.692421, -0.622910,
		-0.140552, 0.620302, -0.771667,
		72.177742, 56.120159, 59.217018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.861549, 55.623016, 59.149048>,  <72.276131, 55.685947, 59.757183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.861549, 55.623016, 59.149048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.659424, 55.954720, 59.244537>,  <72.538147, 56.153740, 59.301830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.659424, 55.954720, 59.244537>,  <72.861549, 55.623016, 59.149048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.659424, 55.954720, 59.244537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859960, 0.460963, 0.219049,
		0.071605, 0.315983, -0.946059,
		-0.505314, 0.829258, 0.238725,
		72.507828, 56.203495, 59.316154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.265488, 56.265327, 58.882580>,  <72.861549, 55.623016, 59.149048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.265488, 56.265327, 58.882580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.044365, 56.366047, 59.200325>,  <72.911690, 56.426479, 59.390972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.044365, 56.366047, 59.200325>,  <73.265488, 56.265327, 58.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.044365, 56.366047, 59.200325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726573, 0.612421, 0.311499,
		-0.408049, 0.749359, -0.521495,
		-0.552799, 0.251798, 0.794362,
		72.878525, 56.441586, 59.438633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.217705, 56.931831, 59.001438>,  <73.265488, 56.265327, 58.882580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.217705, 56.931831, 59.001438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.196892, 56.818737, 59.384552>,  <73.184402, 56.750881, 59.614422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.196892, 56.818737, 59.384552>,  <73.217705, 56.931831, 59.001438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.196892, 56.818737, 59.384552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564967, 0.782517, 0.261685,
		-0.823472, 0.554732, 0.119025,
		-0.052026, -0.282735, 0.957786,
		73.181282, 56.733917, 59.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.276024, 57.516880, 59.257145>,  <73.217705, 56.931831, 59.001438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.276024, 57.516880, 59.257145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.302963, 57.290230, 59.585632>,  <73.319122, 57.154240, 59.782722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.302963, 57.290230, 59.585632>,  <73.276024, 57.516880, 59.257145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.302963, 57.290230, 59.585632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538773, 0.713415, 0.448065,
		-0.839755, 0.412275, 0.353327,
		0.067343, -0.566628, 0.821217,
		73.323166, 57.120243, 59.831997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.001564, 57.980938, 59.729370>,  <73.276024, 57.516880, 59.257145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.001564, 57.980938, 59.729370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.279884, 57.721085, 59.851913>,  <73.446877, 57.565174, 59.925438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.279884, 57.721085, 59.851913>,  <73.001564, 57.980938, 59.729370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.279884, 57.721085, 59.851913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516165, 0.748866, 0.415660,
		-0.499446, -0.131081, 0.856371,
		0.695792, -0.649629, 0.306359,
		73.488625, 57.526196, 59.943821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.059059, 58.016838, 60.442669>,  <73.001564, 57.980938, 59.729370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.059059, 58.016838, 60.442669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.404312, 57.847130, 60.333130>,  <73.611465, 57.745304, 60.267406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.404312, 57.847130, 60.333130>,  <73.059059, 58.016838, 60.442669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.404312, 57.847130, 60.333130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485460, 0.547882, 0.681289,
		-0.139013, -0.720986, 0.678862,
		0.863136, -0.424268, -0.273847,
		73.663254, 57.719849, 60.250977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
