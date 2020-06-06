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
	<43.187576, 32.254181, 23.135067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112011, 32.542725, 23.401588>,  <43.066673, 32.715851, 23.561501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112011, 32.542725, 23.401588>,  <43.187576, 32.254181, 23.135067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112011, 32.542725, 23.401588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505597, 0.510227, -0.695730,
		-0.841834, -0.468311, 0.268328,
		-0.188910, 0.721355, 0.666303,
		43.055336, 32.759132, 23.601479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455360, 32.394539, 23.140522>,  <43.187576, 32.254181, 23.135067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455360, 32.394539, 23.140522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622833, 32.725536, 23.290165>,  <42.723316, 32.924133, 23.379951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622833, 32.725536, 23.290165>,  <42.455360, 32.394539, 23.140522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622833, 32.725536, 23.290165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564337, 0.559833, -0.606722,
		-0.711498, 0.042900, 0.701378,
		0.418682, 0.827494, 0.374110,
		42.748440, 32.973785, 23.402397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880604, 32.736473, 23.591003>,  <42.455360, 32.394539, 23.140522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880604, 32.736473, 23.591003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708885, 33.022560, 23.811607>,  <41.605854, 33.194214, 23.943970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708885, 33.022560, 23.811607>,  <41.880604, 32.736473, 23.591003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708885, 33.022560, 23.811607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047434, 0.591943, -0.804582,
		-0.901917, -0.371565, -0.220193,
		-0.429297, 0.715222, 0.551509,
		41.580097, 33.237125, 23.977060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143223, 32.985043, 23.521008>,  <41.880604, 32.736473, 23.591003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143223, 32.985043, 23.521008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374737, 33.282928, 23.653919>,  <41.513645, 33.461658, 23.733665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374737, 33.282928, 23.653919>,  <41.143223, 32.985043, 23.521008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374737, 33.282928, 23.653919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139556, 0.491908, -0.859390,
		-0.803447, 0.451034, 0.388640,
		0.578789, 0.744711, 0.332277,
		41.548374, 33.506340, 23.753603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672691, 33.509575, 23.450933>,  <41.143223, 32.985043, 23.521008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672691, 33.509575, 23.450933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060471, 33.606689, 23.436985>,  <41.293140, 33.664959, 23.428616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060471, 33.606689, 23.436985>,  <40.672691, 33.509575, 23.450933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060471, 33.606689, 23.436985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131354, 0.393824, -0.909752,
		-0.207142, 0.886542, 0.413684,
		0.969453, 0.242787, -0.034873,
		41.351307, 33.679527, 23.426523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101963, 33.839073, 22.998474>,  <40.672691, 33.509575, 23.450933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101963, 33.839073, 22.998474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829144, 33.588051, 22.848286>,  <39.665451, 33.437435, 22.758173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829144, 33.588051, 22.848286>,  <40.101963, 33.839073, 22.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829144, 33.588051, 22.848286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032358, -0.487026, 0.872788,
		-0.730590, 0.607434, 0.311869,
		-0.682050, -0.627558, -0.375472,
		39.624527, 33.399784, 22.735643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469650, 33.920017, 23.356504>,  <40.101963, 33.839073, 22.998474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469650, 33.920017, 23.356504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483261, 33.550358, 23.204296>,  <39.491428, 33.328564, 23.112970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483261, 33.550358, 23.204296>,  <39.469650, 33.920017, 23.356504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483261, 33.550358, 23.204296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140651, -0.381381, 0.913655,
		-0.989474, 0.022430, -0.142960,
		0.034029, -0.924146, -0.380522,
		39.493469, 33.273113, 23.090139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868271, 33.547112, 23.523249>,  <39.469650, 33.920017, 23.356504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868271, 33.547112, 23.523249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119553, 33.247379, 23.439476>,  <39.270321, 33.067539, 23.389212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119553, 33.247379, 23.439476>,  <38.868271, 33.547112, 23.523249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119553, 33.247379, 23.439476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115245, -0.355824, 0.927420,
		-0.769465, -0.558474, -0.309888,
		0.628205, -0.749330, -0.209433,
		39.308014, 33.022579, 23.376646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466923, 32.926342, 23.812561>,  <38.868271, 33.547112, 23.523249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466923, 32.926342, 23.812561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839787, 32.796417, 23.748596>,  <39.063507, 32.718464, 23.710217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839787, 32.796417, 23.748596>,  <38.466923, 32.926342, 23.812561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839787, 32.796417, 23.748596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036335, -0.355533, 0.933957,
		-0.360248, -0.876397, -0.319607,
		0.932149, -0.324844, -0.159924,
		39.119434, 32.698975, 23.700623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528572, 32.417114, 24.217113>,  <38.466923, 32.926342, 23.812561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528572, 32.417114, 24.217113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924393, 32.440662, 24.164455>,  <39.161884, 32.454792, 24.132860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924393, 32.440662, 24.164455>,  <38.528572, 32.417114, 24.217113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924393, 32.440662, 24.164455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139495, -0.159275, 0.977329,
		0.036565, -0.985478, -0.165822,
		0.989547, 0.058868, -0.131645,
		39.221256, 32.458321, 24.124962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813351, 31.857891, 24.587933>,  <38.528572, 32.417114, 24.217113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813351, 31.857891, 24.587933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097546, 32.135101, 24.539070>,  <39.268063, 32.301426, 24.509752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097546, 32.135101, 24.539070>,  <38.813351, 31.857891, 24.587933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097546, 32.135101, 24.539070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237719, -0.072979, 0.968589,
		0.662341, -0.717210, -0.216596,
		0.710488, 0.693025, -0.122157,
		39.310692, 32.343010, 24.502422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476933, 31.583580, 24.865791>,  <38.813351, 31.857891, 24.587933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476933, 31.583580, 24.865791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532249, 31.979656, 24.857761>,  <39.565437, 32.217300, 24.852943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532249, 31.979656, 24.857761>,  <39.476933, 31.583580, 24.865791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532249, 31.979656, 24.857761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333813, -0.027518, 0.942237,
		0.932440, -0.137002, -0.334343,
		0.138288, 0.990188, -0.020074,
		39.573734, 32.276714, 24.851740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033501, 31.696653, 25.236473>,  <39.476933, 31.583580, 24.865791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033501, 31.696653, 25.236473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839844, 32.046646, 25.237602>,  <39.723648, 32.256641, 25.238279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839844, 32.046646, 25.237602>,  <40.033501, 31.696653, 25.236473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839844, 32.046646, 25.237602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190363, 0.102183, 0.976382,
		0.854028, 0.473248, -0.216036,
		-0.484146, 0.874983, 0.002821,
		39.694599, 32.309139, 25.238449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386665, 32.060211, 25.758957>,  <40.033501, 31.696653, 25.236473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386665, 32.060211, 25.758957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041286, 32.254520, 25.704575>,  <39.834061, 32.371105, 25.671946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041286, 32.254520, 25.704575>,  <40.386665, 32.060211, 25.758957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041286, 32.254520, 25.704575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125010, 0.055053, 0.990627,
		0.488703, 0.872350, 0.013191,
		-0.863448, 0.485772, -0.135957,
		39.782253, 32.400253, 25.663788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427910, 32.598976, 26.158844>,  <40.386665, 32.060211, 25.758957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427910, 32.598976, 26.158844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038799, 32.571999, 26.070164>,  <39.805332, 32.555813, 26.016954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038799, 32.571999, 26.070164>,  <40.427910, 32.598976, 26.158844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038799, 32.571999, 26.070164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227460, 0.094970, 0.969145,
		-0.044312, 0.993192, -0.107727,
		-0.972779, -0.067448, -0.221703,
		39.746967, 32.551765, 26.003653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119453, 33.070889, 26.572853>,  <40.427910, 32.598976, 26.158844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119453, 33.070889, 26.572853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829014, 32.812469, 26.478706>,  <39.654751, 32.657417, 26.422218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829014, 32.812469, 26.478706>,  <40.119453, 33.070889, 26.572853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829014, 32.812469, 26.478706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435972, 0.167875, 0.884164,
		-0.531700, 0.744607, -0.403553,
		-0.726101, -0.646048, -0.235369,
		39.611183, 32.618656, 26.408096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542255, 33.344105, 26.853205>,  <40.119453, 33.070889, 26.572853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542255, 33.344105, 26.853205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409599, 32.973778, 26.780682>,  <39.330006, 32.751579, 26.737167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409599, 32.973778, 26.780682>,  <39.542255, 33.344105, 26.853205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409599, 32.973778, 26.780682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503105, 0.010986, 0.864156,
		-0.798061, 0.377803, -0.469428,
		-0.331638, -0.925821, -0.181307,
		39.310108, 32.696030, 26.726290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782791, 33.375553, 27.007393>,  <39.542255, 33.344105, 26.853205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782791, 33.375553, 27.007393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885544, 32.990051, 27.036190>,  <38.947193, 32.758751, 27.053469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885544, 32.990051, 27.036190>,  <38.782791, 33.375553, 27.007393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885544, 32.990051, 27.036190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577629, -0.093382, 0.810941,
		-0.774828, -0.249900, -0.580683,
		0.256879, -0.963758, 0.071994,
		38.962608, 32.700924, 27.057789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152016, 33.000217, 27.155962>,  <38.782791, 33.375553, 27.007393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152016, 33.000217, 27.155962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446770, 32.755737, 27.271503>,  <38.623619, 32.609047, 27.340828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446770, 32.755737, 27.271503>,  <38.152016, 33.000217, 27.155962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446770, 32.755737, 27.271503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516963, -0.234142, 0.823363,
		-0.435610, -0.756046, -0.488505,
		0.736880, -0.611205, 0.288853,
		38.667835, 32.572376, 27.358160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826168, 32.377304, 27.314692>,  <38.152016, 33.000217, 27.155962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826168, 32.377304, 27.314692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162430, 32.358860, 27.530533>,  <38.364189, 32.347794, 27.660038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162430, 32.358860, 27.530533>,  <37.826168, 32.377304, 27.314692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162430, 32.358860, 27.530533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534138, -0.235078, 0.812056,
		0.089402, -0.970882, -0.222251,
		0.840657, -0.046113, 0.539602,
		38.414627, 32.345024, 27.692413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712177, 31.802980, 27.607460>,  <37.826168, 32.377304, 27.314692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712177, 31.802980, 27.607460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998848, 31.965664, 27.834072>,  <38.170853, 32.063274, 27.970039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998848, 31.965664, 27.834072>,  <37.712177, 31.802980, 27.607460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998848, 31.965664, 27.834072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501158, -0.264571, 0.823919,
		0.484984, -0.874408, 0.014213,
		0.716681, 0.406710, 0.566529,
		38.213852, 32.087677, 28.004030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965248, 31.226681, 28.089188>,  <37.712177, 31.802980, 27.607460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965248, 31.226681, 28.089188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095440, 31.549549, 28.286179>,  <38.173557, 31.743271, 28.404373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095440, 31.549549, 28.286179>,  <37.965248, 31.226681, 28.089188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095440, 31.549549, 28.286179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450581, -0.325495, 0.831282,
		0.831287, -0.492467, 0.257755,
		0.325481, 0.807173, 0.492477,
		38.193085, 31.791700, 28.433922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096550, 30.943321, 28.764641>,  <37.965248, 31.226681, 28.089188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096550, 30.943321, 28.764641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054935, 31.340008, 28.794765>,  <38.029964, 31.578020, 28.812840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054935, 31.340008, 28.794765>,  <38.096550, 30.943321, 28.764641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054935, 31.340008, 28.794765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314235, -0.104621, 0.943563,
		0.943627, 0.074503, 0.322517,
		-0.104040, 0.991717, 0.075312,
		38.023724, 31.637524, 28.817360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493416, 31.141418, 29.373001>,  <38.096550, 30.943321, 28.764641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493416, 31.141418, 29.373001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222473, 31.431072, 29.321125>,  <38.059906, 31.604864, 29.289999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222473, 31.431072, 29.321125>,  <38.493416, 31.141418, 29.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222473, 31.431072, 29.321125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380923, -0.194424, 0.903934,
		0.629354, 0.661687, 0.407534,
		-0.677355, 0.724134, -0.129691,
		38.019268, 31.648312, 29.282217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448353, 31.387867, 30.066580>,  <38.493416, 31.141418, 29.373001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448353, 31.387867, 30.066580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132988, 31.531013, 29.866444>,  <37.943771, 31.616901, 29.746363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132988, 31.531013, 29.866444>,  <38.448353, 31.387867, 30.066580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132988, 31.531013, 29.866444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576691, -0.146906, 0.803645,
		0.214096, 0.922144, 0.322201,
		-0.788410, 0.357868, -0.500340,
		37.896465, 31.638374, 29.716341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106869, 31.900002, 30.510515>,  <38.448353, 31.387867, 30.066580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106869, 31.900002, 30.510515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861458, 31.743565, 30.236107>,  <37.714211, 31.649702, 30.071463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861458, 31.743565, 30.236107>,  <38.106869, 31.900002, 30.510515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861458, 31.743565, 30.236107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610675, -0.315805, 0.726184,
		-0.500655, 0.864472, -0.045075,
		-0.613531, -0.391094, -0.686021,
		37.677399, 31.626236, 30.030300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433163, 32.188557, 30.653996>,  <38.106869, 31.900002, 30.510515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433163, 32.188557, 30.653996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442135, 31.828884, 30.479195>,  <37.447517, 31.613081, 30.374313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442135, 31.828884, 30.479195>,  <37.433163, 32.188557, 30.653996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442135, 31.828884, 30.479195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482957, -0.392472, 0.782763,
		-0.875356, 0.193496, -0.443069,
		0.022431, -0.899180, -0.437003,
		37.448864, 31.559130, 30.348093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892231, 31.706547, 30.767704>,  <37.433163, 32.188557, 30.653996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892231, 31.706547, 30.767704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110790, 31.770004, 31.096649>,  <37.241928, 31.808079, 31.294016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110790, 31.770004, 31.096649>,  <36.892231, 31.706547, 30.767704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110790, 31.770004, 31.096649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283384, -0.888960, 0.359782,
		0.788123, -0.429629, -0.440772,
		0.546402, 0.158644, 0.822361,
		37.274712, 31.817598, 31.343357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321297, 31.098181, 30.939701>,  <36.892231, 31.706547, 30.767704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321297, 31.098181, 30.939701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220104, 31.313828, 31.261036>,  <37.159389, 31.443216, 31.453836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220104, 31.313828, 31.261036>,  <37.321297, 31.098181, 30.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220104, 31.313828, 31.261036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273807, -0.836298, 0.475010,
		0.927916, -0.099789, 0.359184,
		-0.252984, 0.539117, 0.803338,
		37.144211, 31.475563, 31.502037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799366, 31.052816, 31.443541>,  <37.321297, 31.098181, 30.939701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799366, 31.052816, 31.443541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526176, 30.985241, 31.159286>,  <36.362263, 30.944696, 30.988733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526176, 30.985241, 31.159286>,  <36.799366, 31.052816, 31.443541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526176, 30.985241, 31.159286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097404, -0.985262, 0.140611,
		-0.723917, 0.026815, 0.689366,
		-0.682976, -0.168938, -0.710636,
		36.321285, 30.934559, 30.946096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251610, 30.664566, 31.709406>,  <36.799366, 31.052816, 31.443541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251610, 30.664566, 31.709406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292641, 30.601063, 31.316616>,  <36.317257, 30.562962, 31.080942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292641, 30.601063, 31.316616>,  <36.251610, 30.664566, 31.709406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292641, 30.601063, 31.316616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002988, -0.987227, 0.159293,
		-0.994721, -0.013405, -0.101738,
		0.102574, -0.158756, -0.981975,
		36.323414, 30.553436, 31.022024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556080, 30.331860, 31.392208>,  <36.251610, 30.664566, 31.709406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556080, 30.331860, 31.392208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897873, 30.280876, 31.190765>,  <36.102947, 30.250286, 31.069901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897873, 30.280876, 31.190765>,  <35.556080, 30.331860, 31.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897873, 30.280876, 31.190765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073696, -0.929885, 0.360392,
		-0.514230, -0.345061, -0.785175,
		0.854480, -0.127460, -0.503605,
		36.154217, 30.242638, 31.039684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984737, 30.303169, 31.022545>,  <35.556080, 30.331860, 31.392208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984737, 30.303169, 31.022545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697903, 30.212234, 30.758999>,  <34.525803, 30.157673, 30.600870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697903, 30.212234, 30.758999>,  <34.984737, 30.303169, 31.022545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697903, 30.212234, 30.758999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486252, -0.840432, -0.239233,
		-0.499345, -0.491925, 0.713206,
		-0.717086, -0.227339, -0.658866,
		34.482777, 30.144033, 30.561338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578480, 29.637857, 31.161425>,  <34.984737, 30.303169, 31.022545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578480, 29.637857, 31.161425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577480, 29.721386, 30.770245>,  <34.576881, 29.771503, 30.535536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577480, 29.721386, 30.770245>,  <34.578480, 29.637857, 31.161425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577480, 29.721386, 30.770245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456258, -0.869991, -0.186935,
		-0.889844, -0.446665, -0.093100,
		-0.002501, 0.208820, -0.977951,
		34.576729, 29.784033, 30.476860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313938, 29.063139, 30.826662>,  <34.578480, 29.637857, 31.161425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313938, 29.063139, 30.826662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582481, 29.279621, 30.624126>,  <34.743607, 29.409510, 30.502605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582481, 29.279621, 30.624126>,  <34.313938, 29.063139, 30.826662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582481, 29.279621, 30.624126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603736, -0.795620, -0.049912,
		-0.429865, -0.272186, -0.860889,
		0.671355, 0.541206, -0.506338,
		34.783890, 29.441982, 30.472225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661716, 28.674166, 30.165325>,  <34.313938, 29.063139, 30.826662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661716, 28.674166, 30.165325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898537, 28.953827, 30.325653>,  <35.040630, 29.121624, 30.421850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898537, 28.953827, 30.325653>,  <34.661716, 28.674166, 30.165325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898537, 28.953827, 30.325653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747005, -0.662733, 0.052609,
		0.302418, 0.268267, -0.914645,
		0.592052, 0.699155, 0.400819,
		35.076153, 29.163574, 30.445898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057095, 29.186941, 29.916021>,  <34.661716, 28.674166, 30.165325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057095, 29.186941, 29.916021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437279, 29.194607, 30.040127>,  <35.665390, 29.199205, 30.114590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437279, 29.194607, 30.040127>,  <35.057095, 29.186941, 29.916021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437279, 29.194607, 30.040127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291002, 0.296117, -0.909743,
		-0.109309, 0.954959, 0.275870,
		0.950457, 0.019165, 0.310264,
		35.722416, 29.200356, 30.133205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278740, 29.894827, 29.829725>,  <35.057095, 29.186941, 29.916021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278740, 29.894827, 29.829725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604038, 29.663864, 29.858662>,  <35.799217, 29.525286, 29.876024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604038, 29.663864, 29.858662>,  <35.278740, 29.894827, 29.829725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604038, 29.663864, 29.858662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377914, 0.429509, -0.820185,
		0.442509, 0.694351, 0.567506,
		0.813245, -0.577408, 0.072343,
		35.848011, 29.490643, 29.880365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826572, 30.301805, 29.553976>,  <35.278740, 29.894827, 29.829725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826572, 30.301805, 29.553976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942394, 29.920071, 29.524597>,  <36.011887, 29.691029, 29.506969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942394, 29.920071, 29.524597>,  <35.826572, 30.301805, 29.553976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942394, 29.920071, 29.524597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428110, 0.197760, -0.881824,
		0.856083, 0.223896, 0.465824,
		0.289558, -0.954338, -0.073447,
		36.029263, 29.633770, 29.502563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647167, 30.318268, 29.346880>,  <35.826572, 30.301805, 29.553976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647167, 30.318268, 29.346880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479565, 29.969398, 29.245884>,  <36.379005, 29.760077, 29.185287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479565, 29.969398, 29.245884>,  <36.647167, 30.318268, 29.346880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479565, 29.969398, 29.245884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473471, 0.027404, -0.880383,
		0.774766, -0.488429, 0.401467,
		-0.419002, -0.872173, -0.252489,
		36.353863, 29.707747, 29.170137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213833, 29.992077, 29.064659>,  <36.647167, 30.318268, 29.346880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213833, 29.992077, 29.064659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883038, 29.819645, 28.920292>,  <36.684563, 29.716185, 28.833672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883038, 29.819645, 28.920292>,  <37.213833, 29.992077, 29.064659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883038, 29.819645, 28.920292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402906, -0.006674, -0.915217,
		0.392126, -0.902288, 0.179205,
		-0.826985, -0.431083, -0.360920,
		36.634941, 29.690321, 28.812016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482830, 29.686771, 28.524632>,  <37.213833, 29.992077, 29.064659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482830, 29.686771, 28.524632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096035, 29.637470, 28.435413>,  <36.863960, 29.607889, 28.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096035, 29.637470, 28.435413>,  <37.482830, 29.686771, 28.524632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096035, 29.637470, 28.435413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227949, -0.027046, -0.973297,
		0.113932, -0.992006, 0.054249,
		-0.966984, -0.123256, -0.223045,
		36.805939, 29.600494, 28.368500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434238, 29.160250, 28.021860>,  <37.482830, 29.686771, 28.524632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434238, 29.160250, 28.021860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088795, 29.360394, 27.997139>,  <36.881527, 29.480480, 27.982307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088795, 29.360394, 27.997139>,  <37.434238, 29.160250, 28.021860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088795, 29.360394, 27.997139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129768, 0.102159, -0.986268,
		-0.487173, -0.859771, -0.153156,
		-0.863610, 0.500358, -0.061802,
		36.829712, 29.510500, 27.978598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963039, 28.845018, 27.436314>,  <37.434238, 29.160250, 28.021860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963039, 28.845018, 27.436314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847931, 29.221260, 27.508377>,  <36.778866, 29.447004, 27.551615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847931, 29.221260, 27.508377>,  <36.963039, 28.845018, 27.436314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847931, 29.221260, 27.508377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149057, 0.141834, -0.978604,
		-0.946029, -0.308465, 0.099388,
		-0.287768, 0.940602, 0.180158,
		36.761600, 29.503441, 27.562424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414608, 28.863600, 27.016539>,  <36.963039, 28.845018, 27.436314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414608, 28.863600, 27.016539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532185, 29.240925, 27.078197>,  <36.602730, 29.467319, 27.115192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532185, 29.240925, 27.078197>,  <36.414608, 28.863600, 27.016539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532185, 29.240925, 27.078197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005477, 0.162933, -0.986622,
		-0.955807, 0.289166, 0.053060,
		0.293943, 0.943311, 0.154148,
		36.620369, 29.523918, 27.124441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971844, 29.430008, 26.604418>,  <36.414608, 28.863600, 27.016539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971844, 29.430008, 26.604418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315002, 29.624149, 26.671883>,  <36.520897, 29.740635, 26.712362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315002, 29.624149, 26.671883>,  <35.971844, 29.430008, 26.604418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315002, 29.624149, 26.671883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030104, 0.375162, -0.926470,
		-0.512941, 0.789738, 0.336461,
		0.857896, 0.485353, 0.168662,
		36.572372, 29.769756, 26.722481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928318, 30.048033, 26.147579>,  <35.971844, 29.430008, 26.604418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928318, 30.048033, 26.147579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312977, 30.052757, 26.257198>,  <36.543770, 30.055592, 26.322969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312977, 30.052757, 26.257198>,  <35.928318, 30.048033, 26.147579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312977, 30.052757, 26.257198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225961, 0.532287, -0.815851,
		-0.155507, 0.846482, 0.509202,
		0.961644, 0.011811, 0.274046,
		36.601471, 30.056301, 26.339413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111282, 30.705791, 26.333733>,  <35.928318, 30.048033, 26.147579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111282, 30.705791, 26.333733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431404, 30.503418, 26.205017>,  <36.623478, 30.381994, 26.127789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431404, 30.503418, 26.205017>,  <36.111282, 30.705791, 26.333733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431404, 30.503418, 26.205017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165328, 0.702068, -0.692652,
		0.576351, 0.501132, 0.645513,
		0.800304, -0.505932, -0.321786,
		36.671494, 30.351639, 26.108480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594791, 31.194288, 26.085690>,  <36.111282, 30.705791, 26.333733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594791, 31.194288, 26.085690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742516, 30.858807, 25.925594>,  <36.831150, 30.657518, 25.829536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742516, 30.858807, 25.925594>,  <36.594791, 31.194288, 26.085690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742516, 30.858807, 25.925594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319514, 0.519023, -0.792797,
		0.872653, 0.164905, 0.459656,
		0.369308, -0.838703, -0.400237,
		36.853310, 30.607195, 25.805523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233444, 31.290909, 25.915186>,  <36.594791, 31.194288, 26.085690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233444, 31.290909, 25.915186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164124, 30.972721, 25.682911>,  <37.122532, 30.781809, 25.543547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164124, 30.972721, 25.682911>,  <37.233444, 31.290909, 25.915186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164124, 30.972721, 25.682911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331168, 0.508209, -0.795017,
		0.927520, -0.330084, 0.175359,
		-0.173303, -0.795467, -0.580687,
		37.112133, 30.734081, 25.508705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830296, 31.122692, 25.636005>,  <37.233444, 31.290909, 25.915186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830296, 31.122692, 25.636005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558434, 30.948273, 25.400063>,  <37.395317, 30.843620, 25.258497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558434, 30.948273, 25.400063>,  <37.830296, 31.122692, 25.636005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558434, 30.948273, 25.400063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418924, 0.429354, -0.800098,
		0.602140, -0.790896, -0.109141,
		-0.679654, -0.436050, -0.589857,
		37.354538, 30.817457, 25.223106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175823, 31.025576, 24.951668>,  <37.830296, 31.122692, 25.636005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175823, 31.025576, 24.951668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790489, 30.973480, 24.857841>,  <37.559288, 30.942223, 24.801546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790489, 30.973480, 24.857841>,  <38.175823, 31.025576, 24.951668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790489, 30.973480, 24.857841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175600, 0.354955, -0.918244,
		0.202847, -0.925768, -0.319072,
		-0.963337, -0.130234, -0.234566,
		37.501488, 30.934410, 24.787472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163506, 30.660259, 24.316267>,  <38.175823, 31.025576, 24.951668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163506, 30.660259, 24.316267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803581, 30.832130, 24.346512>,  <37.587627, 30.935253, 24.364658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803581, 30.832130, 24.346512>,  <38.163506, 30.660259, 24.316267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803581, 30.832130, 24.346512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096465, 0.364962, -0.926012,
		-0.425481, -0.825942, -0.369845,
		-0.899811, 0.429678, 0.075610,
		37.533638, 30.961033, 24.369194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928154, 30.674665, 23.623075>,  <38.163506, 30.660259, 24.316267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928154, 30.674665, 23.623075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653374, 30.901546, 23.804794>,  <37.488506, 31.037676, 23.913826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653374, 30.901546, 23.804794>,  <37.928154, 30.674665, 23.623075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653374, 30.901546, 23.804794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262934, 0.388794, -0.883009,
		-0.677472, -0.726031, -0.117944,
		-0.686948, 0.567203, 0.454295,
		37.447289, 31.071707, 23.941082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281193, 30.651875, 23.179472>,  <37.928154, 30.674665, 23.623075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281193, 30.651875, 23.179472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331623, 30.991238, 23.385117>,  <37.361881, 31.194855, 23.508503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331623, 30.991238, 23.385117>,  <37.281193, 30.651875, 23.179472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331623, 30.991238, 23.385117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201736, 0.529343, -0.824074,
		-0.971292, 0.000180, 0.237890,
		0.126074, 0.848407, 0.514111,
		37.369446, 31.245760, 23.539351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661560, 30.995346, 22.986801>,  <37.281193, 30.651875, 23.179472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661560, 30.995346, 22.986801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935143, 31.254440, 23.121048>,  <37.099293, 31.409897, 23.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935143, 31.254440, 23.121048>,  <36.661560, 30.995346, 22.986801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935143, 31.254440, 23.121048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238176, 0.633108, -0.736509,
		-0.689545, 0.423807, 0.587296,
		0.683959, 0.647736, 0.335616,
		37.140331, 31.448761, 23.221733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238422, 31.587818, 23.122583>,  <36.661560, 30.995346, 22.986801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238422, 31.587818, 23.122583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614346, 31.712238, 23.065994>,  <36.839897, 31.786890, 23.032042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614346, 31.712238, 23.065994>,  <36.238422, 31.587818, 23.122583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614346, 31.712238, 23.065994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335124, 0.758091, -0.559455,
		-0.066768, 0.573190, 0.816698,
		0.939805, 0.311049, -0.141473,
		36.896286, 31.805553, 23.023552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397560, 32.404556, 23.168215>,  <36.238422, 31.587818, 23.122583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397560, 32.404556, 23.168215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690712, 32.283730, 22.924362>,  <36.866604, 32.211235, 22.778051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690712, 32.283730, 22.924362>,  <36.397560, 32.404556, 23.168215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690712, 32.283730, 22.924362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136406, 0.812610, -0.566621,
		0.666548, 0.498420, 0.554338,
		0.732876, -0.302065, -0.609631,
		36.910576, 32.193111, 22.741472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023064, 32.878029, 23.058315>,  <36.397560, 32.404556, 23.168215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023064, 32.878029, 23.058315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919308, 32.646458, 22.749107>,  <36.857056, 32.507515, 22.563583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919308, 32.646458, 22.749107>,  <37.023064, 32.878029, 23.058315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919308, 32.646458, 22.749107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380192, 0.796993, -0.469314,
		0.887792, 0.172162, -0.426833,
		-0.259386, -0.578932, -0.773018,
		36.841492, 32.472778, 22.517202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022488, 33.317150, 22.446680>,  <37.023064, 32.878029, 23.058315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022488, 33.317150, 22.446680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801907, 32.992439, 22.369823>,  <36.669556, 32.797615, 22.323709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801907, 32.992439, 22.369823>,  <37.022488, 33.317150, 22.446680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801907, 32.992439, 22.369823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554168, 0.528647, -0.642986,
		0.623535, -0.248100, -0.741385,
		-0.551455, -0.811776, -0.192141,
		36.636471, 32.748905, 22.312181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015923, 33.119610, 21.751844>,  <37.022488, 33.317150, 22.446680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015923, 33.119610, 21.751844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676365, 33.024612, 21.940723>,  <36.472630, 32.967613, 22.054050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676365, 33.024612, 21.940723>,  <37.015923, 33.119610, 21.751844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676365, 33.024612, 21.940723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515503, 0.569317, -0.640417,
		-0.116737, -0.787068, -0.605719,
		-0.848899, -0.237490, 0.472197,
		36.421696, 32.953365, 22.082382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506065, 33.119205, 21.279936>,  <37.015923, 33.119610, 21.751844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506065, 33.119205, 21.279936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270844, 33.113010, 21.603405>,  <36.129711, 33.109295, 21.797485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270844, 33.113010, 21.603405>,  <36.506065, 33.119205, 21.279936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270844, 33.113010, 21.603405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640398, 0.619623, -0.453825,
		-0.494045, -0.784747, -0.374289,
		-0.588056, -0.015484, 0.808672,
		36.094425, 33.108364, 21.846006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778034, 32.699615, 21.322592>,  <36.506065, 33.119205, 21.279936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778034, 32.699615, 21.322592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620430, 32.923885, 21.613907>,  <35.525867, 33.058449, 21.788696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620430, 32.923885, 21.613907>,  <35.778034, 32.699615, 21.322592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620430, 32.923885, 21.613907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724489, 0.298135, -0.621475,
		-0.565573, -0.772502, 0.288735,
		-0.394009, 0.560675, 0.728286,
		35.502228, 33.092087, 21.832394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075340, 32.476627, 21.584929>,  <35.778034, 32.699615, 21.322592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075340, 32.476627, 21.584929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132599, 32.872181, 21.601009>,  <35.166954, 33.109512, 21.610657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132599, 32.872181, 21.601009>,  <35.075340, 32.476627, 21.584929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132599, 32.872181, 21.601009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746123, 0.134510, -0.652080,
		-0.650239, 0.063346, 0.757084,
		0.143142, 0.988885, 0.040200,
		35.175541, 33.168846, 21.613070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247494, 32.202839, 21.707331>,  <35.075340, 32.476627, 21.584929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247494, 32.202839, 21.707331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372845, 32.461739, 21.985283>,  <34.448055, 32.617077, 22.152054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372845, 32.461739, 21.985283>,  <34.247494, 32.202839, 21.707331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372845, 32.461739, 21.985283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088475, -0.708659, 0.699981,
		0.945497, -0.280841, -0.164815,
		0.313381, 0.647248, 0.694883,
		34.466858, 32.655914, 22.193748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957371, 31.994642, 22.094557>,  <34.247494, 32.202839, 21.707331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957371, 31.994642, 22.094557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739510, 32.206768, 22.354439>,  <34.608791, 32.334042, 22.510368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739510, 32.206768, 22.354439>,  <34.957371, 31.994642, 22.094557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739510, 32.206768, 22.354439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020683, -0.782953, 0.621737,
		0.838405, 0.325194, 0.437408,
		-0.544656, 0.530314, 0.649705,
		34.576115, 32.365864, 22.549351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241352, 31.861172, 22.767998>,  <34.957371, 31.994642, 22.094557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241352, 31.861172, 22.767998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873501, 31.999298, 22.842884>,  <34.652790, 32.082172, 22.887815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873501, 31.999298, 22.842884>,  <35.241352, 31.861172, 22.767998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873501, 31.999298, 22.842884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192734, -0.811981, 0.550945,
		0.342266, 0.470579, 0.813271,
		-0.919623, 0.345314, 0.187217,
		34.597614, 32.102894, 22.899050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056591, 31.753191, 23.506784>,  <35.241352, 31.861172, 22.767998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056591, 31.753191, 23.506784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706474, 31.768311, 23.313934>,  <34.496407, 31.777382, 23.198225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706474, 31.768311, 23.313934>,  <35.056591, 31.753191, 23.506784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706474, 31.768311, 23.313934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387941, -0.650124, 0.653330,
		-0.288745, 0.758887, 0.583709,
		-0.875287, 0.037799, -0.482124,
		34.443890, 31.779650, 23.169298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526516, 31.867699, 23.996531>,  <35.056591, 31.753191, 23.506784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526516, 31.867699, 23.996531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309124, 31.728916, 23.690784>,  <34.178688, 31.645647, 23.507338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309124, 31.728916, 23.690784>,  <34.526516, 31.867699, 23.996531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309124, 31.728916, 23.690784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325306, -0.752373, 0.572809,
		-0.773827, 0.559962, 0.296031,
		-0.543477, -0.346955, -0.764366,
		34.146080, 31.624830, 23.461475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984161, 31.583466, 24.271862>,  <34.526516, 31.867699, 23.996531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984161, 31.583466, 24.271862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951241, 31.427853, 23.904846>,  <33.931488, 31.334484, 23.684637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951241, 31.427853, 23.904846>,  <33.984161, 31.583466, 24.271862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951241, 31.427853, 23.904846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574036, -0.734098, 0.362743,
		-0.814683, 0.556555, -0.162903,
		-0.082300, -0.389033, -0.917540,
		33.926552, 31.311142, 23.629583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314842, 31.481071, 24.147387>,  <33.984161, 31.583466, 24.271862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314842, 31.481071, 24.147387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527660, 31.229130, 23.921036>,  <33.655350, 31.077965, 23.785225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527660, 31.229130, 23.921036>,  <33.314842, 31.481071, 24.147387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527660, 31.229130, 23.921036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550676, -0.765065, 0.333814,
		-0.643187, 0.134012, -0.753891,
		0.532041, -0.629854, -0.565876,
		33.687271, 31.040174, 23.751272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802441, 31.068899, 23.819218>,  <33.314842, 31.481071, 24.147387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802441, 31.068899, 23.819218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147625, 30.869213, 23.788017>,  <33.354736, 30.749401, 23.769297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147625, 30.869213, 23.788017>,  <32.802441, 31.068899, 23.819218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147625, 30.869213, 23.788017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466381, -0.846379, 0.257161,
		-0.194399, -0.185540, -0.963215,
		0.862959, -0.499217, -0.078003,
		33.406513, 30.719448, 23.764616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586716, 30.406488, 23.551203>,  <32.802441, 31.068899, 23.819218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586716, 30.406488, 23.551203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956631, 30.344803, 23.690338>,  <33.178577, 30.307791, 23.773819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956631, 30.344803, 23.690338>,  <32.586716, 30.406488, 23.551203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956631, 30.344803, 23.690338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272215, -0.906882, 0.321658,
		0.265843, -0.392151, -0.880650,
		0.924785, -0.154216, 0.347838,
		33.234066, 30.298538, 23.794689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868706, 29.685501, 23.338537>,  <32.586716, 30.406488, 23.551203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868706, 29.685501, 23.338537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050079, 29.781960, 23.681755>,  <33.158905, 29.839834, 23.887686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050079, 29.781960, 23.681755>,  <32.868706, 29.685501, 23.338537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050079, 29.781960, 23.681755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246075, -0.891413, 0.380565,
		0.856645, -0.383706, -0.344860,
		0.453438, 0.241147, 0.858045,
		33.186111, 29.854303, 23.939169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972561, 29.081568, 23.545380>,  <32.868706, 29.685501, 23.338537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972561, 29.081568, 23.545380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091404, 29.279751, 23.871876>,  <33.162708, 29.398661, 24.067774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091404, 29.279751, 23.871876>,  <32.972561, 29.081568, 23.545380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091404, 29.279751, 23.871876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014113, -0.857028, 0.515077,
		0.954740, -0.141514, -0.261622,
		0.297107, 0.495457, 0.816241,
		33.180534, 29.428389, 24.116749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471645, 28.681261, 23.861797>,  <32.972561, 29.081568, 23.545380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471645, 28.681261, 23.861797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322201, 28.918579, 24.147011>,  <33.232536, 29.060970, 24.318138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322201, 28.918579, 24.147011>,  <33.471645, 28.681261, 23.861797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322201, 28.918579, 24.147011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045590, -0.756023, 0.652955,
		0.926465, 0.276457, 0.255409,
		-0.373609, 0.593296, 0.713033,
		33.210117, 29.096567, 24.360920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905315, 28.481115, 24.389605>,  <33.471645, 28.681261, 23.861797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905315, 28.481115, 24.389605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590767, 28.658123, 24.562019>,  <33.402039, 28.764328, 24.665468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590767, 28.658123, 24.562019>,  <33.905315, 28.481115, 24.389605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590767, 28.658123, 24.562019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123405, -0.796217, 0.592291,
		0.605302, 0.412569, 0.680732,
		-0.786372, 0.442521, 0.431039,
		33.354855, 28.790880, 24.691332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977879, 28.360947, 25.114918>,  <33.905315, 28.481115, 24.389605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977879, 28.360947, 25.114918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587479, 28.423550, 25.054340>,  <33.353241, 28.461111, 25.017994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587479, 28.423550, 25.054340>,  <33.977879, 28.360947, 25.114918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587479, 28.423550, 25.054340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210603, -0.855363, 0.473287,
		-0.055464, 0.493821, 0.867793,
		-0.975997, 0.156510, -0.151442,
		33.294678, 28.470503, 25.008907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570412, 28.507215, 25.783886>,  <33.977879, 28.360947, 25.114918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570412, 28.507215, 25.783886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364494, 28.342815, 25.482937>,  <33.240944, 28.244175, 25.302366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364494, 28.342815, 25.482937>,  <33.570412, 28.507215, 25.783886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364494, 28.342815, 25.482937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179432, -0.806504, 0.563342,
		-0.838328, 0.425004, 0.341435,
		-0.514792, -0.411001, -0.752375,
		33.210056, 28.219515, 25.257225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883324, 28.495163, 26.078030>,  <33.570412, 28.507215, 25.783886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883324, 28.495163, 26.078030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958279, 28.213573, 25.804005>,  <33.003250, 28.044621, 25.639589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958279, 28.213573, 25.804005>,  <32.883324, 28.495163, 26.078030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958279, 28.213573, 25.804005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040740, -0.702384, 0.710631,
		-0.981441, -0.105254, -0.160298,
		0.187388, -0.703973, -0.685060,
		33.014496, 28.002382, 25.598486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587349, 27.902958, 26.300907>,  <32.883324, 28.495163, 26.078030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587349, 27.902958, 26.300907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764946, 27.720158, 25.992615>,  <32.871502, 27.610477, 25.807640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764946, 27.720158, 25.992615>,  <32.587349, 27.902958, 26.300907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764946, 27.720158, 25.992615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238127, -0.889407, 0.390194,
		-0.863810, 0.010288, -0.503713,
		0.443991, -0.457001, -0.770728,
		32.898144, 27.583057, 25.761396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184391, 27.380070, 26.097984>,  <32.587349, 27.902958, 26.300907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184391, 27.380070, 26.097984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536007, 27.257980, 25.951492>,  <32.746979, 27.184727, 25.863596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536007, 27.257980, 25.951492>,  <32.184391, 27.380070, 26.097984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536007, 27.257980, 25.951492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092842, -0.863080, 0.496461,
		-0.467617, -0.402408, -0.787021,
		0.879042, -0.305222, -0.366231,
		32.799721, 27.166414, 25.841623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147331, 26.553354, 25.903141>,  <32.184391, 27.380070, 26.097984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147331, 26.553354, 25.903141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533630, 26.646458, 25.949024>,  <32.765411, 26.702320, 25.976555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533630, 26.646458, 25.949024>,  <32.147331, 26.553354, 25.903141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533630, 26.646458, 25.949024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124520, -0.803529, 0.582096,
		0.227658, -0.547874, -0.804988,
		0.965747, 0.232756, 0.114708,
		32.823353, 26.716284, 25.983437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455070, 26.011921, 25.754997>,  <32.147331, 26.553354, 25.903141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455070, 26.011921, 25.754997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718853, 26.208061, 25.982918>,  <32.877121, 26.325745, 26.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718853, 26.208061, 25.982918>,  <32.455070, 26.011921, 25.754997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718853, 26.208061, 25.982918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078866, -0.798918, 0.596246,
		0.747594, -0.348260, -0.565524,
		0.659456, 0.490351, 0.569801,
		32.916691, 26.355167, 26.153858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899597, 25.583578, 25.725363>,  <32.455070, 26.011921, 25.754997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899597, 25.583578, 25.725363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939926, 25.813759, 26.050003>,  <32.964123, 25.951866, 26.244787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939926, 25.813759, 26.050003>,  <32.899597, 25.583578, 25.725363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939926, 25.813759, 26.050003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126331, -0.801748, 0.584158,
		0.986851, -0.161425, -0.008134,
		0.100819, 0.575450, 0.811599,
		32.970173, 25.986393, 26.293484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365921, 25.210211, 26.088320>,  <32.899597, 25.583578, 25.725363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365921, 25.210211, 26.088320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227108, 25.479015, 26.349998>,  <33.143822, 25.640297, 26.507006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227108, 25.479015, 26.349998>,  <33.365921, 25.210211, 26.088320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227108, 25.479015, 26.349998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090156, -0.718221, 0.689950,
		0.933511, 0.180453, 0.309829,
		-0.347029, 0.672009, 0.654198,
		33.123001, 25.680618, 26.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683216, 24.959267, 26.745502>,  <33.365921, 25.210211, 26.088320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683216, 24.959267, 26.745502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369194, 25.194633, 26.822906>,  <33.180779, 25.335854, 26.869349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369194, 25.194633, 26.822906>,  <33.683216, 24.959267, 26.745502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369194, 25.194633, 26.822906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165773, -0.500598, 0.849659,
		0.596827, 0.634953, 0.490542,
		-0.785058, 0.588418, 0.193512,
		33.133675, 25.371159, 26.880960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865669, 25.330978, 27.401064>,  <33.683216, 24.959267, 26.745502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865669, 25.330978, 27.401064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471527, 25.288811, 27.347454>,  <33.235043, 25.263510, 27.315289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471527, 25.288811, 27.347454>,  <33.865669, 25.330978, 27.401064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471527, 25.288811, 27.347454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044600, -0.599290, 0.799289,
		-0.164580, 0.793560, 0.585812,
		-0.985355, -0.105420, -0.134024,
		33.175922, 25.257185, 27.307247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543976, 25.493202, 28.064146>,  <33.865669, 25.330978, 27.401064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543976, 25.493202, 28.064146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249454, 25.314163, 27.861160>,  <33.072742, 25.206739, 27.739368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249454, 25.314163, 27.861160>,  <33.543976, 25.493202, 28.064146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249454, 25.314163, 27.861160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149584, -0.623735, 0.767189,
		-0.659914, 0.640790, 0.392303,
		-0.736300, -0.447597, -0.507463,
		33.028564, 25.179884, 27.708921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057178, 25.319382, 28.553619>,  <33.543976, 25.493202, 28.064146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057178, 25.319382, 28.553619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986710, 25.061264, 28.256283>,  <32.944427, 24.906393, 28.077881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986710, 25.061264, 28.256283>,  <33.057178, 25.319382, 28.553619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986710, 25.061264, 28.256283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167758, -0.724424, 0.668631,
		-0.969959, 0.242495, 0.019369,
		-0.176171, -0.645296, -0.743342,
		32.933857, 24.867676, 28.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452633, 25.002378, 28.806913>,  <33.057178, 25.319382, 28.553619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452633, 25.002378, 28.806913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599747, 24.770432, 28.516125>,  <32.688015, 24.631264, 28.341652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599747, 24.770432, 28.516125>,  <32.452633, 25.002378, 28.806913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599747, 24.770432, 28.516125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170410, -0.810554, 0.560323,
		-0.914163, -0.082195, -0.396926,
		0.367786, -0.579867, -0.726972,
		32.710083, 24.596472, 28.298033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960499, 24.601564, 28.528948>,  <32.452633, 25.002378, 28.806913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960499, 24.601564, 28.528948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276913, 24.381516, 28.421894>,  <32.466763, 24.249485, 28.357662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276913, 24.381516, 28.421894>,  <31.960499, 24.601564, 28.528948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276913, 24.381516, 28.421894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454003, -0.821109, 0.345921,
		-0.410055, -0.152129, -0.899284,
		0.791035, -0.550124, -0.267633,
		32.514225, 24.216478, 28.341604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738523, 23.935501, 28.391081>,  <31.960499, 24.601564, 28.528948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738523, 23.935501, 28.391081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129391, 23.876736, 28.452480>,  <32.363911, 23.841476, 28.489319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129391, 23.876736, 28.452480>,  <31.738523, 23.935501, 28.391081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129391, 23.876736, 28.452480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205739, -0.834698, 0.510833,
		0.053075, -0.530749, -0.845866,
		0.977167, -0.146916, 0.153497,
		32.422543, 23.832661, 28.498529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023033, 23.212122, 28.111626>,  <31.738523, 23.935501, 28.391081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023033, 23.212122, 28.111626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272568, 23.323120, 28.403881>,  <32.422287, 23.389719, 28.579233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272568, 23.323120, 28.403881>,  <32.023033, 23.212122, 28.111626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272568, 23.323120, 28.403881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009838, -0.937561, 0.347682,
		0.781497, -0.209707, -0.587610,
		0.623832, 0.277493, 0.730638,
		32.459717, 23.406368, 28.623072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355145, 22.515490, 28.232801>,  <32.023033, 23.212122, 28.111626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355145, 22.515490, 28.232801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445625, 22.759747, 28.536366>,  <32.499916, 22.906301, 28.718504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445625, 22.759747, 28.536366>,  <32.355145, 22.515490, 28.232801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445625, 22.759747, 28.536366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160527, -0.791822, 0.589278,
		0.960761, -0.011472, -0.277139,
		0.226205, 0.610644, 0.758910,
		32.513485, 22.942940, 28.764038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844707, 22.122015, 28.649881>,  <32.355145, 22.515490, 28.232801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844707, 22.122015, 28.649881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694412, 22.394669, 28.901020>,  <32.604233, 22.558260, 29.051704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694412, 22.394669, 28.901020>,  <32.844707, 22.122015, 28.649881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694412, 22.394669, 28.901020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234969, -0.725426, 0.646952,
		0.896442, 0.095561, 0.432734,
		-0.375740, 0.681634, 0.627848,
		32.581692, 22.599159, 29.089375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947445, 21.857010, 29.377382>,  <32.844707, 22.122015, 28.649881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947445, 21.857010, 29.377382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657234, 22.132164, 29.385624>,  <32.483109, 22.297256, 29.390570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657234, 22.132164, 29.385624>,  <32.947445, 21.857010, 29.377382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657234, 22.132164, 29.385624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467532, -0.514644, 0.718718,
		0.504998, 0.511817, 0.694997,
		-0.725528, 0.687884, 0.020604,
		32.439575, 22.338530, 29.391806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773300, 22.033314, 30.115301>,  <32.947445, 21.857010, 29.377382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773300, 22.033314, 30.115301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455029, 22.162727, 29.910473>,  <32.264065, 22.240376, 29.787577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455029, 22.162727, 29.910473>,  <32.773300, 22.033314, 30.115301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455029, 22.162727, 29.910473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595235, -0.261077, 0.759956,
		0.112182, 0.909486, 0.400313,
		-0.795682, 0.323534, -0.512070,
		32.216324, 22.259787, 29.756851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277077, 22.355684, 30.537239>,  <32.773300, 22.033314, 30.115301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277077, 22.355684, 30.537239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065701, 22.192345, 30.239513>,  <31.938875, 22.094341, 30.060879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065701, 22.192345, 30.239513>,  <32.277077, 22.355684, 30.537239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065701, 22.192345, 30.239513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531481, -0.524549, 0.665114,
		-0.662027, 0.747062, 0.060164,
		-0.528440, -0.408347, -0.744314,
		31.907169, 22.069841, 30.016220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528011, 22.579391, 30.597261>,  <32.277077, 22.355684, 30.537239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528011, 22.579391, 30.597261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604103, 22.220318, 30.438274>,  <31.649757, 22.004873, 30.342882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604103, 22.220318, 30.438274>,  <31.528011, 22.579391, 30.597261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604103, 22.220318, 30.438274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556657, -0.432113, 0.709515,
		-0.808669, 0.086282, -0.581902,
		0.190229, -0.897683, -0.397465,
		31.661171, 21.951014, 30.319035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027939, 22.246754, 30.808474>,  <31.528011, 22.579391, 30.597261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027939, 22.246754, 30.808474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264635, 21.949581, 30.683319>,  <31.406652, 21.771278, 30.608227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264635, 21.949581, 30.683319>,  <31.027939, 22.246754, 30.808474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264635, 21.949581, 30.683319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345307, -0.584325, 0.734389,
		-0.728429, -0.326524, -0.602307,
		0.591739, -0.742931, -0.312888,
		31.442158, 21.726702, 30.589453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656067, 21.573692, 30.861370>,  <31.027939, 22.246754, 30.808474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656067, 21.573692, 30.861370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045401, 21.485554, 30.886868>,  <31.279001, 21.432671, 30.902166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045401, 21.485554, 30.886868>,  <30.656067, 21.573692, 30.861370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045401, 21.485554, 30.886868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197310, -0.662535, 0.722575,
		-0.116985, -0.715886, -0.688347,
		0.973336, -0.220348, 0.063745,
		31.337402, 21.419449, 30.905991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656908, 20.838949, 31.046186>,  <30.656067, 21.573692, 30.861370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656908, 20.838949, 31.046186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032270, 20.952805, 31.124546>,  <31.257488, 21.021118, 31.171562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032270, 20.952805, 31.124546>,  <30.656908, 20.838949, 31.046186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032270, 20.952805, 31.124546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023452, -0.618097, 0.785752,
		0.344741, -0.732759, -0.586701,
		0.938405, 0.284640, 0.195899,
		31.313791, 21.038197, 31.183315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038963, 20.254618, 31.132572>,  <30.656908, 20.838949, 31.046186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038963, 20.254618, 31.132572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258142, 20.536022, 31.313602>,  <31.389650, 20.704865, 31.422220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258142, 20.536022, 31.313602>,  <31.038963, 20.254618, 31.132572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258142, 20.536022, 31.313602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261594, -0.658002, 0.706118,
		0.794558, -0.268524, -0.544585,
		0.547947, 0.703512, 0.452576,
		31.422527, 20.747076, 31.449375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809225, 19.992983, 31.334856>,  <31.038963, 20.254618, 31.132572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809225, 19.992983, 31.334856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768526, 20.306770, 31.579563>,  <31.744106, 20.495043, 31.726387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768526, 20.306770, 31.579563>,  <31.809225, 19.992983, 31.334856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768526, 20.306770, 31.579563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360353, -0.544131, 0.757672,
		0.927251, 0.297542, -0.227322,
		-0.101746, 0.784468, 0.611766,
		31.738003, 20.542110, 31.763094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451035, 20.009802, 31.637482>,  <31.809225, 19.992983, 31.334856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451035, 20.009802, 31.637482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196648, 20.208168, 31.873993>,  <32.044014, 20.327187, 32.015900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196648, 20.208168, 31.873993>,  <32.451035, 20.009802, 31.637482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196648, 20.208168, 31.873993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364225, -0.482598, 0.796517,
		0.680353, 0.721921, 0.126295,
		-0.635972, 0.495913, 0.591279,
		32.005856, 20.356941, 32.051376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648827, 20.132341, 32.428291>,  <32.451035, 20.009802, 31.637482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648827, 20.132341, 32.428291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258190, 20.156197, 32.510963>,  <32.023808, 20.170509, 32.560566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258190, 20.156197, 32.510963>,  <32.648827, 20.132341, 32.428291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258190, 20.156197, 32.510963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194919, -0.161065, 0.967505,
		0.090989, 0.985140, 0.145670,
		-0.976590, 0.059639, 0.206677,
		31.965214, 20.174088, 32.572968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636654, 20.145792, 33.235062>,  <32.648827, 20.132341, 32.428291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636654, 20.145792, 33.235062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285988, 19.954891, 33.210751>,  <32.075588, 19.840351, 33.196163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285988, 19.954891, 33.210751>,  <32.636654, 20.145792, 33.235062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285988, 19.954891, 33.210751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126989, 0.107701, 0.986040,
		-0.464043, 0.872142, -0.155023,
		-0.876663, -0.477252, -0.060775,
		32.022987, 19.811716, 33.192516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191437, 20.531151, 33.674919>,  <32.636654, 20.145792, 33.235062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191437, 20.531151, 33.674919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112080, 20.145302, 33.605469>,  <32.064465, 19.913792, 33.563801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112080, 20.145302, 33.605469>,  <32.191437, 20.531151, 33.674919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112080, 20.145302, 33.605469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077254, -0.161203, 0.983893,
		-0.977074, 0.208608, -0.042540,
		-0.198390, -0.964622, -0.173623,
		32.052563, 19.855915, 33.553383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556702, 20.156433, 34.097111>,  <32.191437, 20.531151, 33.674919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556702, 20.156433, 34.097111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869223, 19.916988, 34.026428>,  <32.056736, 19.773321, 33.984016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869223, 19.916988, 34.026428>,  <31.556702, 20.156433, 34.097111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869223, 19.916988, 34.026428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048377, -0.224189, 0.973344,
		-0.622272, -0.769027, -0.146200,
		0.781305, -0.598613, -0.176710,
		32.103615, 19.737404, 33.973415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499100, 19.444908, 34.328663>,  <31.556702, 20.156433, 34.097111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499100, 19.444908, 34.328663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869772, 19.594402, 34.344608>,  <32.092175, 19.684099, 34.354176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869772, 19.594402, 34.344608>,  <31.499100, 19.444908, 34.328663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869772, 19.594402, 34.344608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092626, -0.329867, 0.939472,
		0.364262, -0.866897, -0.340299,
		0.926679, 0.373734, 0.039861,
		32.147774, 19.706522, 34.356567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310707, 19.906389, 34.883289>,  <31.499100, 19.444908, 34.328663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310707, 19.906389, 34.883289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935040, 19.941372, 35.016144>,  <30.709639, 19.962362, 35.095856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935040, 19.941372, 35.016144>,  <31.310707, 19.906389, 34.883289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935040, 19.941372, 35.016144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060229, 0.993989, -0.091429,
		-0.338137, -0.065863, -0.938789,
		-0.939168, 0.087457, 0.332138,
		30.653290, 19.967609, 35.115784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844538, 20.249437, 34.440872>,  <31.310707, 19.906389, 34.883289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844538, 20.249437, 34.440872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729881, 20.324245, 34.816715>,  <30.661087, 20.369131, 35.042221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729881, 20.324245, 34.816715>,  <30.844538, 20.249437, 34.440872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729881, 20.324245, 34.816715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073835, 0.982156, -0.172967,
		-0.955189, 0.019796, -0.295335,
		-0.286641, 0.187022, 0.939606,
		30.643888, 20.380352, 35.098598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188410, 20.712681, 34.516102>,  <30.844538, 20.249437, 34.440872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188410, 20.712681, 34.516102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519295, 20.726707, 34.740421>,  <30.717825, 20.735125, 34.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519295, 20.726707, 34.740421>,  <30.188410, 20.712681, 34.516102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519295, 20.726707, 34.740421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207447, 0.908480, -0.362807,
		-0.522196, 0.416454, 0.744229,
		0.827210, 0.035069, 0.560797,
		30.767458, 20.737228, 34.908661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265879, 21.347818, 34.874184>,  <30.188410, 20.712681, 34.516102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265879, 21.347818, 34.874184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632706, 21.196999, 34.822311>,  <30.852802, 21.106506, 34.791187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632706, 21.196999, 34.822311>,  <30.265879, 21.347818, 34.874184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632706, 21.196999, 34.822311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354181, 0.919705, -0.169404,
		0.183139, 0.109426, 0.976978,
		0.917069, -0.377052, -0.129678,
		30.907827, 21.083883, 34.783409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630581, 21.832382, 35.165653>,  <30.265879, 21.347818, 34.874184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630581, 21.832382, 35.165653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841309, 21.608467, 34.909809>,  <30.967745, 21.474117, 34.756302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841309, 21.608467, 34.909809>,  <30.630581, 21.832382, 35.165653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841309, 21.608467, 34.909809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372128, 0.828450, -0.418558,
		0.764187, -0.017511, 0.644758,
		0.526820, -0.559789, -0.639607,
		30.999355, 21.440531, 34.717926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137638, 22.263937, 34.943222>,  <30.630581, 21.832382, 35.165653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137638, 22.263937, 34.943222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162615, 21.964760, 34.678894>,  <31.177601, 21.785254, 34.520298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162615, 21.964760, 34.678894>,  <31.137638, 22.263937, 34.943222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162615, 21.964760, 34.678894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482655, 0.602167, -0.635955,
		0.873582, -0.279238, 0.398599,
		0.062441, -0.747945, -0.660818,
		31.181347, 21.740376, 34.480648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855915, 22.170195, 34.827717>,  <31.137638, 22.263937, 34.943222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855915, 22.170195, 34.827717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634518, 22.063751, 34.512039>,  <31.501680, 21.999886, 34.322632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634518, 22.063751, 34.512039>,  <31.855915, 22.170195, 34.827717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634518, 22.063751, 34.512039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571986, 0.567312, -0.592444,
		0.605376, -0.779323, -0.161792,
		-0.553491, -0.266109, -0.789198,
		31.468470, 21.983919, 34.275280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383961, 21.964220, 34.229584>,  <31.855915, 22.170195, 34.827717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383961, 21.964220, 34.229584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028076, 22.018547, 34.055244>,  <31.814545, 22.051144, 33.950642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028076, 22.018547, 34.055244>,  <32.383961, 21.964220, 34.229584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028076, 22.018547, 34.055244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426692, 0.586829, -0.688161,
		0.162303, -0.798239, -0.580062,
		-0.889714, 0.135817, -0.435846,
		31.761162, 22.059292, 33.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531960, 21.983332, 33.558903>,  <32.383961, 21.964220, 34.229584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531960, 21.983332, 33.558903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176697, 22.162228, 33.601139>,  <31.963539, 22.269566, 33.626480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176697, 22.162228, 33.601139>,  <32.531960, 21.983332, 33.558903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176697, 22.162228, 33.601139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244842, 0.655007, -0.714855,
		-0.388876, -0.609051, -0.691254,
		-0.888160, 0.447238, 0.105595,
		31.910250, 22.296398, 33.632816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465302, 22.144466, 32.931866>,  <32.531960, 21.983332, 33.558903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465302, 22.144466, 32.931866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202148, 22.368206, 33.133583>,  <32.044254, 22.502451, 33.254612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202148, 22.368206, 33.133583>,  <32.465302, 22.144466, 32.931866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202148, 22.368206, 33.133583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305062, 0.810138, -0.500613,
		-0.688566, -0.175505, -0.703615,
		-0.657886, 0.559351, 0.504294,
		32.004784, 22.536011, 33.284870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951870, 22.512230, 32.473377>,  <32.465302, 22.144466, 32.931866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951870, 22.512230, 32.473377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948526, 22.743412, 32.799789>,  <31.946520, 22.882120, 32.995636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948526, 22.743412, 32.799789>,  <31.951870, 22.512230, 32.473377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948526, 22.743412, 32.799789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017017, 0.816019, -0.577774,
		-0.999820, 0.009056, -0.016657,
		-0.008360, 0.577954, 0.816027,
		31.946018, 22.916798, 33.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402344, 22.987446, 32.305233>,  <31.951870, 22.512230, 32.473377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402344, 22.987446, 32.305233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558134, 23.182762, 32.617611>,  <31.651608, 23.299952, 32.805038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558134, 23.182762, 32.617611>,  <31.402344, 22.987446, 32.305233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558134, 23.182762, 32.617611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002489, 0.847340, -0.531045,
		-0.921033, 0.208773, 0.328803,
		0.389476, 0.488292, 0.780948,
		31.674976, 23.329250, 32.851894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047325, 23.610069, 32.367195>,  <31.402344, 22.987446, 32.305233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047325, 23.610069, 32.367195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400278, 23.655895, 32.549744>,  <31.612049, 23.683392, 32.659271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400278, 23.655895, 32.549744>,  <31.047325, 23.610069, 32.367195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400278, 23.655895, 32.549744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079823, 0.919401, -0.385138,
		-0.463712, 0.376268, 0.802118,
		0.882383, 0.114565, 0.456372,
		31.664993, 23.690266, 32.686657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946779, 24.184124, 32.812588>,  <31.047325, 23.610069, 32.367195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946779, 24.184124, 32.812588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340050, 24.148533, 32.748779>,  <31.576012, 24.127178, 32.710495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340050, 24.148533, 32.748779>,  <30.946779, 24.184124, 32.812588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340050, 24.148533, 32.748779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003772, 0.863260, -0.504746,
		0.182618, 0.496856, 0.848402,
		0.983177, -0.088976, -0.159520,
		31.635002, 24.121840, 32.700924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260614, 24.816877, 33.025368>,  <30.946779, 24.184124, 32.812588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260614, 24.816877, 33.025368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496149, 24.651291, 32.747692>,  <31.637470, 24.551939, 32.581085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496149, 24.651291, 32.747692>,  <31.260614, 24.816877, 33.025368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496149, 24.651291, 32.747692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098561, 0.815692, -0.570028,
		0.802218, 0.404075, 0.439510,
		0.588839, -0.413968, -0.694189,
		31.672800, 24.527100, 32.539436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697018, 25.421349, 32.851131>,  <31.260614, 24.816877, 33.025368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697018, 25.421349, 32.851131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740580, 25.157814, 32.553387>,  <31.766716, 24.999693, 32.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740580, 25.157814, 32.553387>,  <31.697018, 25.421349, 32.851131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740580, 25.157814, 32.553387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074467, 0.752117, -0.654809,
		0.991259, 0.015882, 0.130971,
		0.108905, -0.658838, -0.744360,
		31.773251, 24.960163, 32.330078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258705, 25.729256, 32.438210>,  <31.697018, 25.421349, 32.851131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258705, 25.729256, 32.438210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071064, 25.474258, 32.193737>,  <31.958479, 25.321260, 32.047054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071064, 25.474258, 32.193737>,  <32.258705, 25.729256, 32.438210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071064, 25.474258, 32.193737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069316, 0.663340, -0.745101,
		0.880417, -0.391896, -0.266989,
		-0.469106, -0.637493, -0.611181,
		31.930332, 25.283010, 32.010384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405064, 26.152020, 31.836838>,  <32.258705, 25.729256, 32.438210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405064, 26.152020, 31.836838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151882, 25.865471, 31.719410>,  <31.999973, 25.693542, 31.648952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151882, 25.865471, 31.719410>,  <32.405064, 26.152020, 31.836838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151882, 25.865471, 31.719410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065284, 0.427234, -0.901781,
		0.771434, -0.551618, -0.317186,
		-0.632951, -0.716372, -0.293571,
		31.961996, 25.650560, 31.631338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653641, 25.859917, 31.236847>,  <32.405064, 26.152020, 31.836838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653641, 25.859917, 31.236847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258923, 25.795643, 31.228764>,  <32.022091, 25.757078, 31.223913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258923, 25.795643, 31.228764>,  <32.653641, 25.859917, 31.236847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258923, 25.795643, 31.228764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066032, 0.513145, -0.855758,
		0.147877, -0.843127, -0.516981,
		-0.986799, -0.160684, -0.020209,
		31.962883, 25.747438, 31.222700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423645, 25.495302, 30.567245>,  <32.653641, 25.859917, 31.236847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423645, 25.495302, 30.567245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144852, 25.736519, 30.722450>,  <31.977575, 25.881248, 30.815573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144852, 25.736519, 30.722450>,  <32.423645, 25.495302, 30.567245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144852, 25.736519, 30.722450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024355, 0.520877, -0.853284,
		-0.716675, -0.604174, -0.348355,
		-0.696982, 0.603043, 0.388014,
		31.935757, 25.917431, 30.838854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803633, 25.511738, 30.100178>,  <32.423645, 25.495302, 30.567245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803633, 25.511738, 30.100178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785379, 25.840126, 30.327835>,  <31.774427, 26.037159, 30.464430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785379, 25.840126, 30.327835>,  <31.803633, 25.511738, 30.100178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785379, 25.840126, 30.327835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006673, 0.569975, -0.821635,
		-0.998936, -0.033698, -0.031489,
		-0.045636, 0.820971, 0.569144,
		31.771688, 26.086418, 30.498579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395578, 26.045843, 29.724232>,  <31.803633, 25.511738, 30.100178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395578, 26.045843, 29.724232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586401, 26.273048, 29.992493>,  <31.700895, 26.409372, 30.153450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586401, 26.273048, 29.992493>,  <31.395578, 26.045843, 29.724232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586401, 26.273048, 29.992493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134492, 0.706915, -0.694394,
		-0.868521, 0.421463, 0.260845,
		0.477057, 0.568014, 0.670654,
		31.729519, 26.443453, 30.193689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087318, 26.609612, 29.688168>,  <31.395578, 26.045843, 29.724232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087318, 26.609612, 29.688168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438511, 26.688576, 29.862602>,  <31.649227, 26.735954, 29.967264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438511, 26.688576, 29.862602>,  <31.087318, 26.609612, 29.688168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438511, 26.688576, 29.862602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120186, 0.790913, -0.600010,
		-0.463358, 0.579210, 0.670683,
		0.877984, 0.197413, 0.436088,
		31.701906, 26.747799, 29.993429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978811, 27.297237, 29.812471>,  <31.087318, 26.609612, 29.688168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978811, 27.297237, 29.812471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372736, 27.227886, 29.808784>,  <31.609091, 27.186275, 29.806572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372736, 27.227886, 29.808784>,  <30.978811, 27.297237, 29.812471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372736, 27.227886, 29.808784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112311, 0.676613, -0.727724,
		0.132407, 0.715636, 0.685809,
		0.984812, -0.173380, -0.009215,
		31.668180, 27.175873, 29.806021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238577, 27.994837, 29.914978>,  <30.978811, 27.297237, 29.812471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238577, 27.994837, 29.914978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523193, 27.768505, 29.748341>,  <31.693962, 27.632706, 29.648359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523193, 27.768505, 29.748341>,  <31.238577, 27.994837, 29.914978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523193, 27.768505, 29.748341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128156, 0.687454, -0.714831,
		0.690860, 0.455242, 0.561665,
		0.711540, -0.565829, -0.416592,
		31.736654, 27.598757, 29.623363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923124, 28.367170, 30.076216>,  <31.238577, 27.994837, 29.914978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923124, 28.367170, 30.076216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975801, 28.130581, 29.758018>,  <32.007408, 27.988626, 29.567101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975801, 28.130581, 29.758018>,  <31.923124, 28.367170, 30.076216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975801, 28.130581, 29.758018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304197, 0.787879, -0.535454,
		0.943462, -0.171471, 0.283684,
		0.131694, -0.591476, -0.795495,
		32.015308, 27.953138, 29.519369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339836, 28.832047, 29.698980>,  <31.923124, 28.367170, 30.076216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339836, 28.832047, 29.698980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298237, 28.533089, 29.436504>,  <32.273277, 28.353714, 29.279018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298237, 28.533089, 29.436504>,  <32.339836, 28.832047, 29.698980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298237, 28.533089, 29.436504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381251, 0.579412, -0.720368,
		0.918604, -0.325090, 0.224687,
		-0.103998, -0.747395, -0.656190,
		32.267036, 28.308870, 29.239647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047474, 28.717962, 29.353859>,  <32.339836, 28.832047, 29.698980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047474, 28.717962, 29.353859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742653, 28.594193, 29.126339>,  <32.559761, 28.519930, 28.989826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742653, 28.594193, 29.126339>,  <33.047474, 28.717962, 29.353859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742653, 28.594193, 29.126339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401105, 0.464026, -0.789807,
		0.508330, -0.830020, -0.229496,
		-0.762047, -0.309430, -0.568803,
		32.514038, 28.501366, 28.955698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363705, 28.611166, 28.676508>,  <33.047474, 28.717962, 29.353859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363705, 28.611166, 28.676508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971249, 28.653183, 28.611595>,  <32.735775, 28.678394, 28.572647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971249, 28.653183, 28.611595>,  <33.363705, 28.611166, 28.676508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971249, 28.653183, 28.611595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191558, 0.641117, -0.743152,
		0.025978, -0.760220, -0.649146,
		-0.981137, 0.105044, -0.162282,
		32.676907, 28.684696, 28.562910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325661, 28.685019, 28.000443>,  <33.363705, 28.611166, 28.676508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325661, 28.685019, 28.000443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983341, 28.837738, 28.140064>,  <32.777950, 28.929369, 28.223837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983341, 28.837738, 28.140064>,  <33.325661, 28.685019, 28.000443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983341, 28.837738, 28.140064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027640, 0.640039, -0.767845,
		-0.516571, -0.666768, -0.537192,
		-0.855798, 0.381798, 0.349055,
		32.726601, 28.952278, 28.244781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961205, 28.952175, 27.386425>,  <33.325661, 28.685019, 28.000443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961205, 28.952175, 27.386425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772331, 29.138950, 27.685493>,  <32.659008, 29.251015, 27.864935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772331, 29.138950, 27.685493>,  <32.961205, 28.952175, 27.386425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772331, 29.138950, 27.685493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075867, 0.823507, -0.562211,
		-0.878229, -0.322191, -0.353422,
		-0.472184, 0.466937, 0.747671,
		32.630676, 29.279032, 27.909794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337139, 29.223036, 27.132538>,  <32.961205, 28.952175, 27.386425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337139, 29.223036, 27.132538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440105, 29.426682, 27.461060>,  <32.501884, 29.548868, 27.658173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440105, 29.426682, 27.461060>,  <32.337139, 29.223036, 27.132538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440105, 29.426682, 27.461060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086624, 0.858683, -0.505133,
		-0.962409, 0.058887, 0.265144,
		0.257420, 0.509112, 0.821304,
		32.517330, 29.579414, 27.707451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718620, 29.640602, 27.336147>,  <32.337139, 29.223036, 27.132538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718620, 29.640602, 27.336147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061001, 29.788662, 27.480556>,  <32.266430, 29.877499, 27.567202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061001, 29.788662, 27.480556>,  <31.718620, 29.640602, 27.336147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061001, 29.788662, 27.480556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123667, 0.824515, -0.552161,
		-0.502052, 0.427976, 0.751519,
		0.855950, 0.370151, 0.361023,
		32.317787, 29.899708, 27.588863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602785, 30.366135, 27.298927>,  <31.718620, 29.640602, 27.336147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602785, 30.366135, 27.298927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995134, 30.387428, 27.373817>,  <32.230545, 30.400204, 27.418751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995134, 30.387428, 27.373817>,  <31.602785, 30.366135, 27.298927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995134, 30.387428, 27.373817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004557, 0.955329, -0.295509,
		-0.194592, 0.290710, 0.936815,
		0.980874, 0.053234, 0.187225,
		32.289398, 30.403399, 27.429985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735527, 30.963507, 27.651699>,  <31.602785, 30.366135, 27.298927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735527, 30.963507, 27.651699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099216, 30.878113, 27.508736>,  <32.317429, 30.826876, 27.422958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099216, 30.878113, 27.508736>,  <31.735527, 30.963507, 27.651699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099216, 30.878113, 27.508736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109389, 0.950851, -0.289682,
		0.401684, 0.224289, 0.887887,
		0.909221, -0.213486, -0.357407,
		32.371983, 30.814068, 27.401514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044678, 31.666105, 27.761101>,  <31.735527, 30.963507, 27.651699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044678, 31.666105, 27.761101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281918, 31.462360, 27.511692>,  <32.424263, 31.340113, 27.362047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281918, 31.462360, 27.511692>,  <32.044678, 31.666105, 27.761101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281918, 31.462360, 27.511692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276341, 0.856181, -0.436567,
		0.756217, 0.086625, 0.648561,
		0.593103, -0.509363, -0.623521,
		32.459846, 31.309551, 27.324636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592968, 32.120602, 27.797722>,  <32.044678, 31.666105, 27.761101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592968, 32.120602, 27.797722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644325, 31.893211, 27.472675>,  <32.675140, 31.756777, 27.277647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644325, 31.893211, 27.472675>,  <32.592968, 32.120602, 27.797722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644325, 31.893211, 27.472675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299733, 0.803323, -0.514618,
		0.945343, -0.177493, 0.273536,
		0.128396, -0.568479, -0.812617,
		32.682842, 31.722668, 27.228889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150543, 32.419933, 27.510406>,  <32.592968, 32.120602, 27.797722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150543, 32.419933, 27.510406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017117, 32.227726, 27.185978>,  <32.937061, 32.112400, 26.991322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017117, 32.227726, 27.185978>,  <33.150543, 32.419933, 27.510406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017117, 32.227726, 27.185978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276701, 0.772549, -0.571493,
		0.901204, -0.415056, -0.124737,
		-0.333567, -0.480518, -0.811071,
		32.917046, 32.083572, 26.942657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740345, 32.490311, 26.983030>,  <33.150543, 32.419933, 27.510406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740345, 32.490311, 26.983030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398872, 32.400776, 26.794933>,  <33.193989, 32.347057, 26.682076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398872, 32.400776, 26.794933>,  <33.740345, 32.490311, 26.983030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398872, 32.400776, 26.794933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219782, 0.663747, -0.714937,
		0.472149, -0.713679, -0.517434,
		-0.853681, -0.223834, -0.470242,
		33.142769, 32.333626, 26.653860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853489, 32.275036, 26.233782>,  <33.740345, 32.490311, 26.983030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853489, 32.275036, 26.233782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480892, 32.419373, 26.252178>,  <33.257336, 32.505974, 26.263216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480892, 32.419373, 26.252178>,  <33.853489, 32.275036, 26.233782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480892, 32.419373, 26.252178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107784, 0.394549, -0.912531,
		-0.347423, -0.845060, -0.406412,
		-0.931493, 0.360839, 0.045991,
		33.201443, 32.527626, 26.265976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749947, 32.412922, 25.614061>,  <33.853489, 32.275036, 26.233782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749947, 32.412922, 25.614061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444820, 32.598763, 25.793953>,  <33.261745, 32.710266, 25.901888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444820, 32.598763, 25.793953>,  <33.749947, 32.412922, 25.614061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444820, 32.598763, 25.793953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021353, 0.713237, -0.700597,
		-0.646261, -0.524825, -0.553991,
		-0.762818, 0.464598, 0.449730,
		33.215977, 32.738140, 25.928871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139038, 32.570984, 25.061329>,  <33.749947, 32.412922, 25.614061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139038, 32.570984, 25.061329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123768, 32.834206, 25.362129>,  <33.114605, 32.992138, 25.542610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123768, 32.834206, 25.362129>,  <33.139038, 32.570984, 25.061329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123768, 32.834206, 25.362129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185520, 0.734799, -0.652421,
		-0.981899, -0.164419, 0.094029,
		-0.038178, 0.658056, 0.752001,
		33.112316, 33.031624, 25.587730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726974, 32.936954, 24.727968>,  <33.139038, 32.570984, 25.061329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726974, 32.936954, 24.727968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869492, 33.146187, 25.037663>,  <32.955002, 33.271729, 25.223478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869492, 33.146187, 25.037663>,  <32.726974, 32.936954, 24.727968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869492, 33.146187, 25.037663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004259, 0.829514, -0.558470,
		-0.934366, 0.195680, 0.297775,
		0.356290, 0.523083, 0.774236,
		32.976379, 33.303112, 25.269934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237499, 33.373379, 24.979902>,  <32.726974, 32.936954, 24.727968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237499, 33.373379, 24.979902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608498, 33.498070, 25.062435>,  <32.831097, 33.572884, 25.111956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608498, 33.498070, 25.062435>,  <32.237499, 33.373379, 24.979902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608498, 33.498070, 25.062435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126985, 0.781847, -0.610402,
		-0.351600, 0.539945, 0.764746,
		0.927498, 0.311729, 0.206332,
		32.886745, 33.591587, 25.124334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176525, 34.109600, 25.059898>,  <32.237499, 33.373379, 24.979902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176525, 34.109600, 25.059898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571239, 34.069298, 25.009136>,  <32.808067, 34.045116, 24.978678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571239, 34.069298, 25.009136>,  <32.176525, 34.109600, 25.059898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571239, 34.069298, 25.009136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044614, 0.921841, -0.384992,
		0.155778, 0.374242, 0.914153,
		0.986784, -0.100757, -0.126907,
		32.867275, 34.039070, 24.971064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519550, 34.253090, 24.970282>,  <32.176525, 34.109600, 25.059898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519550, 34.253090, 24.970282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124006, 34.310394, 24.986458>,  <30.886681, 34.344776, 24.996162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124006, 34.310394, 24.986458>,  <31.519550, 34.253090, 24.970282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124006, 34.310394, 24.986458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090265, -0.793085, 0.602385,
		0.118370, 0.592023, 0.797181,
		-0.988858, 0.143262, 0.040439,
		30.827349, 34.353374, 24.998589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313084, 34.378250, 25.665901>,  <31.519550, 34.253090, 24.970282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313084, 34.378250, 25.665901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011101, 34.220764, 25.456127>,  <30.829910, 34.126274, 25.330263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011101, 34.220764, 25.456127>,  <31.313084, 34.378250, 25.665901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011101, 34.220764, 25.456127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058704, -0.755931, 0.652014,
		-0.653140, 0.523030, 0.547584,
		-0.754959, -0.393710, -0.524433,
		30.784613, 34.102650, 25.298798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923035, 34.162537, 26.125238>,  <31.313084, 34.378250, 25.665901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923035, 34.162537, 26.125238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729679, 33.998665, 25.815788>,  <30.613667, 33.900341, 25.630117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729679, 33.998665, 25.815788>,  <30.923035, 34.162537, 26.125238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729679, 33.998665, 25.815788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381259, -0.696992, 0.607325,
		-0.788022, 0.588524, 0.180722,
		-0.483387, -0.409684, -0.773625,
		30.584663, 33.875759, 25.583700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300758, 34.013405, 26.399891>,  <30.923035, 34.162537, 26.125238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300758, 34.013405, 26.399891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295881, 33.801907, 26.060413>,  <30.292955, 33.675007, 25.856728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295881, 33.801907, 26.060413>,  <30.300758, 34.013405, 26.399891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295881, 33.801907, 26.060413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378651, -0.783106, 0.493325,
		-0.925459, 0.327374, -0.190660,
		-0.012194, -0.528746, -0.848693,
		30.292223, 33.643284, 25.805805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555515, 33.730541, 26.279516>,  <30.300758, 34.013405, 26.399891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555515, 33.730541, 26.279516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790752, 33.477249, 26.078255>,  <29.931894, 33.325272, 25.957499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790752, 33.477249, 26.078255>,  <29.555515, 33.730541, 26.279516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790752, 33.477249, 26.078255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424100, -0.771154, 0.474828,
		-0.688685, -0.065856, -0.722064,
		0.588092, -0.633234, -0.503152,
		29.967180, 33.287277, 25.927309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088490, 33.078861, 26.142162>,  <29.555515, 33.730541, 26.279516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088490, 33.078861, 26.142162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463791, 32.947124, 26.099800>,  <29.688971, 32.868080, 26.074383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463791, 32.947124, 26.099800>,  <29.088490, 33.078861, 26.142162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463791, 32.947124, 26.099800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241835, -0.843290, 0.479976,
		-0.247385, -0.424727, -0.870866,
		0.938252, -0.329345, -0.105903,
		29.745266, 32.848320, 26.068029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036512, 32.475071, 25.756605>,  <29.088490, 33.078861, 26.142162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036512, 32.475071, 25.756605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388605, 32.425190, 25.939751>,  <29.599861, 32.395260, 26.049639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388605, 32.425190, 25.939751>,  <29.036512, 32.475071, 25.756605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388605, 32.425190, 25.939751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382610, -0.757259, 0.529309,
		0.280715, -0.641098, -0.714278,
		0.880232, -0.124705, 0.457865,
		29.652676, 32.387779, 26.077110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212498, 31.682514, 25.722492>,  <29.036512, 32.475071, 25.756605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212498, 31.682514, 25.722492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418152, 31.842499, 26.025990>,  <29.541544, 31.938490, 26.208088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418152, 31.842499, 26.025990>,  <29.212498, 31.682514, 25.722492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418152, 31.842499, 26.025990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304760, -0.741705, 0.597491,
		0.801739, -0.538426, -0.259445,
		0.514136, 0.399964, 0.758745,
		29.572393, 31.962488, 26.253613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623877, 31.122078, 25.932028>,  <29.212498, 31.682514, 25.722492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623877, 31.122078, 25.932028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574478, 31.385632, 26.228844>,  <29.544838, 31.543764, 26.406933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574478, 31.385632, 26.228844>,  <29.623877, 31.122078, 25.932028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574478, 31.385632, 26.228844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111051, -0.752243, 0.649460,
		0.986112, -0.002197, 0.166070,
		-0.123498, 0.658883, 0.742039,
		29.537428, 31.583296, 26.451456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985218, 30.768978, 26.508682>,  <29.623877, 31.122078, 25.932028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985218, 30.768978, 26.508682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757444, 31.044319, 26.688423>,  <29.620781, 31.209524, 26.796268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757444, 31.044319, 26.688423>,  <29.985218, 30.768978, 26.508682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757444, 31.044319, 26.688423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096167, -0.598662, 0.795208,
		0.816392, 0.409606, 0.407095,
		-0.569435, 0.688351, 0.449352,
		29.586615, 31.250824, 26.823229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257807, 30.863031, 27.152494>,  <29.985218, 30.768978, 26.508682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257807, 30.863031, 27.152494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879280, 30.989429, 27.179710>,  <29.652164, 31.065268, 27.196039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879280, 30.989429, 27.179710>,  <30.257807, 30.863031, 27.152494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879280, 30.989429, 27.179710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093789, -0.469865, 0.877742,
		0.309332, 0.824241, 0.474278,
		-0.946318, 0.315996, 0.068040,
		29.595385, 31.084229, 27.200123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169432, 31.188438, 27.796137>,  <30.257807, 30.863031, 27.152494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169432, 31.188438, 27.796137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811480, 31.058277, 27.673958>,  <29.596708, 30.980181, 27.600651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811480, 31.058277, 27.673958>,  <30.169432, 31.188438, 27.796137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811480, 31.058277, 27.673958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063952, -0.583839, 0.809347,
		-0.441699, 0.743803, 0.501656,
		-0.894881, -0.325406, -0.305449,
		29.543015, 30.960655, 27.582323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924417, 31.167166, 28.433519>,  <30.169432, 31.188438, 27.796137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924417, 31.167166, 28.433519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710928, 30.926815, 28.195499>,  <29.582834, 30.782604, 28.052687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710928, 30.926815, 28.195499>,  <29.924417, 31.167166, 28.433519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710928, 30.926815, 28.195499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003091, -0.705035, 0.709166,
		-0.845652, 0.376660, 0.378153,
		-0.533726, -0.600876, -0.595050,
		29.550810, 30.746552, 28.016985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500504, 30.866627, 28.905489>,  <29.924417, 31.167166, 28.433519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500504, 30.866627, 28.905489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481415, 30.612476, 28.597198>,  <29.469961, 30.459986, 28.412224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481415, 30.612476, 28.597198>,  <29.500504, 30.866627, 28.905489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481415, 30.612476, 28.597198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242271, -0.741201, 0.626040,
		-0.969034, 0.216601, -0.118561,
		-0.047723, -0.635378, -0.770725,
		29.467098, 30.421864, 28.365980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884872, 30.597200, 28.976940>,  <29.500504, 30.866627, 28.905489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884872, 30.597200, 28.976940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099813, 30.344734, 28.753197>,  <29.228777, 30.193254, 28.618952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099813, 30.344734, 28.753197>,  <28.884872, 30.597200, 28.976940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099813, 30.344734, 28.753197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202026, -0.740274, 0.641232,
		-0.818805, -0.231561, -0.525299,
		0.537349, -0.631168, -0.559359,
		29.261019, 30.155384, 28.585390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546694, 29.990726, 29.059816>,  <28.884872, 30.597200, 28.976940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546694, 29.990726, 29.059816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912254, 29.878967, 28.942020>,  <29.131590, 29.811913, 28.871342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912254, 29.878967, 28.942020>,  <28.546694, 29.990726, 29.059816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912254, 29.878967, 28.942020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031000, -0.771371, 0.635630,
		-0.404754, -0.571773, -0.713617,
		0.913900, -0.279395, -0.294490,
		29.186424, 29.795149, 28.853674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396627, 29.293694, 28.934025>,  <28.546694, 29.990726, 29.059816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396627, 29.293694, 28.934025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789314, 29.352501, 28.982388>,  <29.024925, 29.387785, 29.011406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789314, 29.352501, 28.982388>,  <28.396627, 29.293694, 28.934025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789314, 29.352501, 28.982388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064425, -0.854323, 0.515734,
		0.179117, -0.498515, -0.848174,
		0.981716, 0.147020, 0.120907,
		29.083830, 29.396606, 29.018660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605675, 28.623026, 28.847399>,  <28.396627, 29.293694, 28.934025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605675, 28.623026, 28.847399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887159, 28.819458, 29.052780>,  <29.056049, 28.937317, 29.176008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887159, 28.819458, 29.052780>,  <28.605675, 28.623026, 28.847399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887159, 28.819458, 29.052780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182151, -0.823223, 0.537704,
		0.686740, -0.284862, -0.668761,
		0.703711, 0.491078, 0.513452,
		29.098272, 28.966782, 29.206816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996214, 28.146309, 28.951635>,  <28.605675, 28.623026, 28.847399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996214, 28.146309, 28.951635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141790, 28.409317, 29.215519>,  <29.229136, 28.567122, 29.373848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141790, 28.409317, 29.215519>,  <28.996214, 28.146309, 28.951635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141790, 28.409317, 29.215519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223081, -0.749199, 0.623648,
		0.904313, -0.079803, -0.419345,
		0.363942, 0.657520, 0.659707,
		29.250973, 28.606573, 29.413431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694927, 27.876570, 29.119635>,  <28.996214, 28.146309, 28.951635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694927, 27.876570, 29.119635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606268, 28.107258, 29.434155>,  <29.553072, 28.245670, 29.622866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606268, 28.107258, 29.434155>,  <29.694927, 27.876570, 29.119635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606268, 28.107258, 29.434155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345297, -0.707690, 0.616397,
		0.911944, 0.408130, -0.042282,
		-0.221648, 0.576719, 0.786300,
		29.539774, 28.280273, 29.670044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181013, 27.776974, 29.611610>,  <29.694927, 27.876570, 29.119635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181013, 27.776974, 29.611610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916355, 27.938755, 29.864162>,  <29.757561, 28.035824, 30.015694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916355, 27.938755, 29.864162>,  <30.181013, 27.776974, 29.611610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916355, 27.938755, 29.864162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327454, -0.601649, 0.728555,
		0.674535, 0.688795, 0.265640,
		-0.661647, 0.404451, 0.631382,
		29.717861, 28.060091, 30.053577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491625, 27.910316, 30.267544>,  <30.181013, 27.776974, 29.611610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491625, 27.910316, 30.267544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106005, 27.920033, 30.373386>,  <29.874632, 27.925863, 30.436892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106005, 27.920033, 30.373386>,  <30.491625, 27.910316, 30.267544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106005, 27.920033, 30.373386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220675, -0.481521, 0.848198,
		0.148017, 0.876098, 0.458850,
		-0.964051, 0.024291, 0.264607,
		29.816790, 27.927320, 30.452768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542606, 27.966145, 30.973761>,  <30.491625, 27.910316, 30.267544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542606, 27.966145, 30.973761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167002, 27.832092, 30.942928>,  <29.941639, 27.751661, 30.924429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167002, 27.832092, 30.942928>,  <30.542606, 27.966145, 30.973761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167002, 27.832092, 30.942928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095017, -0.468281, 0.878456,
		-0.330492, 0.817558, 0.471565,
		-0.939014, -0.335130, -0.077081,
		29.885298, 27.731554, 30.919804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132355, 28.061255, 31.642870>,  <30.542606, 27.966145, 30.973761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132355, 28.061255, 31.642870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986296, 27.760864, 31.422794>,  <29.898661, 27.580631, 31.290749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986296, 27.760864, 31.422794>,  <30.132355, 28.061255, 31.642870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986296, 27.760864, 31.422794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129078, -0.626128, 0.768962,
		-0.921958, 0.209766, 0.325563,
		-0.365146, -0.750974, -0.550188,
		29.876753, 27.535572, 31.257738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875750, 27.596525, 32.159443>,  <30.132355, 28.061255, 31.642870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875750, 27.596525, 32.159443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871063, 27.356110, 31.839790>,  <29.868252, 27.211861, 31.647999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871063, 27.356110, 31.839790>,  <29.875750, 27.596525, 32.159443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871063, 27.356110, 31.839790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055762, -0.798338, 0.599622,
		-0.998375, -0.037537, 0.042867,
		-0.011714, -0.601038, -0.799134,
		29.867548, 27.175798, 31.600050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334911, 27.214918, 32.228146>,  <29.875750, 27.596525, 32.159443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334911, 27.214918, 32.228146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559818, 26.998875, 31.977665>,  <29.694763, 26.869247, 31.827375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559818, 26.998875, 31.977665>,  <29.334911, 27.214918, 32.228146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559818, 26.998875, 31.977665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357681, -0.841586, 0.404719,
		-0.745598, -0.003580, -0.666386,
		0.562270, -0.540111, -0.626205,
		29.728498, 26.836842, 31.789803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940741, 26.645582, 31.912592>,  <29.334911, 27.214918, 32.228146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940741, 26.645582, 31.912592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321451, 26.532555, 31.864799>,  <29.549877, 26.464739, 31.836124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321451, 26.532555, 31.864799>,  <28.940741, 26.645582, 31.912592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321451, 26.532555, 31.864799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277945, -0.959073, 0.054083,
		-0.129874, -0.018265, -0.991362,
		0.951777, -0.282568, -0.119482,
		29.606985, 26.447784, 31.828955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801159, 26.096788, 31.518034>,  <28.940741, 26.645582, 31.912592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801159, 26.096788, 31.518034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182760, 26.055428, 31.630592>,  <29.411722, 26.030611, 31.698128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182760, 26.055428, 31.630592>,  <28.801159, 26.096788, 31.518034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182760, 26.055428, 31.630592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115004, -0.993051, 0.024993,
		0.276855, -0.056205, -0.959266,
		0.954005, -0.103400, 0.281395,
		29.468962, 26.024408, 31.715012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073112, 25.538786, 31.015368>,  <28.801159, 26.096788, 31.518034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073112, 25.538786, 31.015368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264597, 25.561199, 31.365841>,  <29.379488, 25.574648, 31.576124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264597, 25.561199, 31.365841>,  <29.073112, 25.538786, 31.015368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264597, 25.561199, 31.365841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073216, -0.991937, 0.103439,
		0.874914, -0.113668, -0.470751,
		0.478713, 0.056034, 0.876182,
		29.408211, 25.578009, 31.628695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625959, 25.152624, 30.920090>,  <29.073112, 25.538786, 31.015368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625959, 25.152624, 30.920090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574249, 25.161949, 31.316624>,  <29.543224, 25.167543, 31.554544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574249, 25.161949, 31.316624>,  <29.625959, 25.152624, 30.920090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574249, 25.161949, 31.316624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080402, -0.996185, 0.033912,
		0.988344, 0.084089, 0.126907,
		-0.129274, 0.023313, 0.991335,
		29.535467, 25.168943, 31.614023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134008, 24.810947, 31.276768>,  <29.625959, 25.152624, 30.920090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134008, 24.810947, 31.276768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842020, 24.801727, 31.550003>,  <29.666826, 24.796196, 31.713945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842020, 24.801727, 31.550003>,  <30.134008, 24.810947, 31.276768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842020, 24.801727, 31.550003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146357, -0.981520, 0.123284,
		0.667624, 0.189969, 0.719854,
		-0.729971, -0.023049, 0.683090,
		29.623030, 24.794813, 31.754930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379383, 24.273291, 31.785599>,  <30.134008, 24.810947, 31.276768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379383, 24.273291, 31.785599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989735, 24.307774, 31.869179>,  <29.755945, 24.328463, 31.919327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989735, 24.307774, 31.869179>,  <30.379383, 24.273291, 31.785599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989735, 24.307774, 31.869179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038387, -0.974082, 0.222915,
		0.222751, 0.209125, 0.952181,
		-0.974119, 0.086206, 0.208950,
		29.697498, 24.333635, 31.931864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279593, 23.942822, 32.431271>,  <30.379383, 24.273291, 31.785599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279593, 23.942822, 32.431271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923233, 23.942841, 32.249588>,  <29.709417, 23.942852, 32.140579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923233, 23.942841, 32.249588>,  <30.279593, 23.942822, 32.431271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923233, 23.942841, 32.249588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021138, -0.998921, 0.041359,
		-0.453713, 0.046448, 0.889936,
		-0.890897, 0.000047, -0.454205,
		29.655964, 23.942854, 32.113327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898283, 23.391048, 32.781219>,  <30.279593, 23.942822, 32.431271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898283, 23.391048, 32.781219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700396, 23.456097, 32.439739>,  <29.581663, 23.495125, 32.234852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700396, 23.456097, 32.439739>,  <29.898283, 23.391048, 32.781219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700396, 23.456097, 32.439739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081808, -0.986688, -0.140546,
		-0.865193, 0.000308, 0.501439,
		-0.494721, 0.162621, -0.853701,
		29.551979, 23.504883, 32.183628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262922, 22.920805, 32.801517>,  <29.898283, 23.391048, 32.781219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262922, 22.920805, 32.801517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296373, 23.015995, 32.414452>,  <29.316444, 23.073109, 32.182213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296373, 23.015995, 32.414452>,  <29.262922, 22.920805, 32.801517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296373, 23.015995, 32.414452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171814, -0.953080, -0.249236,
		-0.981574, 0.187101, -0.038815,
		0.083626, 0.237975, -0.967665,
		29.321461, 23.087387, 32.124153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747099, 22.655163, 32.526981>,  <29.262922, 22.920805, 32.801517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747099, 22.655163, 32.526981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986176, 22.691658, 32.208374>,  <29.129622, 22.713556, 32.017208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986176, 22.691658, 32.208374>,  <28.747099, 22.655163, 32.526981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986176, 22.691658, 32.208374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174482, -0.954887, -0.240307,
		-0.782511, 0.282607, -0.554806,
		0.597689, 0.091239, -0.796519,
		29.165482, 22.719030, 31.969418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448952, 22.325552, 32.052639>,  <28.747099, 22.655163, 32.526981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448952, 22.325552, 32.052639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818180, 22.336033, 31.899143>,  <29.039717, 22.342321, 31.807047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818180, 22.336033, 31.899143>,  <28.448952, 22.325552, 32.052639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818180, 22.336033, 31.899143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087305, -0.957362, -0.275382,
		-0.374592, 0.287700, -0.881425,
		0.923071, 0.026203, -0.383737,
		29.095100, 22.343893, 31.784021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397127, 22.101587, 31.404209>,  <28.448952, 22.325552, 32.052639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397127, 22.101587, 31.404209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772219, 22.024284, 31.519669>,  <28.997272, 21.977903, 31.588945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772219, 22.024284, 31.519669>,  <28.397127, 22.101587, 31.404209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772219, 22.024284, 31.519669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084342, -0.932757, -0.350501,
		0.336977, 0.304329, -0.890971,
		0.937727, -0.193257, 0.288650,
		29.053537, 21.966307, 31.606264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392443, 21.242918, 31.408558>,  <28.397127, 22.101587, 31.404209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392443, 21.242918, 31.408558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188066, 21.062145, 31.116066>,  <28.065441, 20.953682, 30.940571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188066, 21.062145, 31.116066>,  <28.392443, 21.242918, 31.408558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188066, 21.062145, 31.116066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097285, 0.814781, -0.571548,
		0.854095, -0.363163, -0.372337,
		-0.510938, -0.451933, -0.731231,
		28.034784, 20.926565, 30.896696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862749, 21.183117, 30.778959>,  <28.392443, 21.242918, 31.408558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862749, 21.183117, 30.778959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477455, 21.171879, 30.672085>,  <28.246279, 21.165136, 30.607960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477455, 21.171879, 30.672085>,  <28.862749, 21.183117, 30.778959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477455, 21.171879, 30.672085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127266, 0.828140, -0.545883,
		0.236603, -0.559817, -0.794118,
		-0.963235, -0.028093, -0.267186,
		28.188484, 21.163450, 30.591928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895243, 21.199133, 30.006733>,  <28.862749, 21.183117, 30.778959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895243, 21.199133, 30.006733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532743, 21.314949, 30.129944>,  <28.315245, 21.384439, 30.203871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532743, 21.314949, 30.129944>,  <28.895243, 21.199133, 30.006733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532743, 21.314949, 30.129944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013949, 0.748716, -0.662744,
		-0.422515, -0.596314, -0.682561,
		-0.906248, 0.289540, 0.308026,
		28.260868, 21.401812, 30.222351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617529, 21.556261, 29.483627>,  <28.895243, 21.199133, 30.006733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617529, 21.556261, 29.483627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392836, 21.692108, 29.785385>,  <28.258018, 21.773617, 29.966440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392836, 21.692108, 29.785385>,  <28.617529, 21.556261, 29.483627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392836, 21.692108, 29.785385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026786, 0.918846, -0.393707,
		-0.826884, -0.200952, -0.525245,
		-0.561735, 0.339619, 0.754395,
		28.224316, 21.793995, 30.011703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273424, 22.111095, 29.170122>,  <28.617529, 21.556261, 29.483627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273424, 22.111095, 29.170122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210867, 22.186459, 29.557945>,  <28.173332, 22.231676, 29.790640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210867, 22.186459, 29.557945>,  <28.273424, 22.111095, 29.170122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210867, 22.186459, 29.557945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145028, 0.966617, -0.211228,
		-0.976989, -0.173648, -0.123847,
		-0.156392, 0.188407, 0.969559,
		28.163950, 22.242981, 29.848812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656101, 22.346178, 29.232643>,  <28.273424, 22.111095, 29.170122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656101, 22.346178, 29.232643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819942, 22.482838, 29.570992>,  <27.918247, 22.564835, 29.774000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819942, 22.482838, 29.570992>,  <27.656101, 22.346178, 29.232643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819942, 22.482838, 29.570992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238423, 0.935088, -0.262231,
		-0.880557, -0.094265, 0.464472,
		0.409602, 0.341651, 0.845873,
		27.942823, 22.585333, 29.824753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161692, 22.915985, 29.422800>,  <27.656101, 22.346178, 29.232643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161692, 22.915985, 29.422800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493912, 22.987396, 29.633823>,  <27.693243, 23.030243, 29.760437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493912, 22.987396, 29.633823>,  <27.161692, 22.915985, 29.422800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493912, 22.987396, 29.633823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168832, 0.983366, -0.066983,
		-0.530740, -0.033436, 0.846875,
		0.830548, 0.178530, 0.527557,
		27.743076, 23.040955, 29.792091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960989, 23.492924, 29.911980>,  <27.161692, 22.915985, 29.422800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960989, 23.492924, 29.911980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355453, 23.483105, 29.846394>,  <27.592133, 23.477213, 29.807041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355453, 23.483105, 29.846394>,  <26.960989, 23.492924, 29.911980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355453, 23.483105, 29.846394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016865, 0.968997, -0.246495,
		0.164933, 0.245849, 0.955173,
		0.986161, -0.024546, -0.163966,
		27.651302, 23.475740, 29.797203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285902, 24.135115, 30.152790>,  <26.960989, 23.492924, 29.911980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285902, 24.135115, 30.152790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554623, 23.985497, 29.897049>,  <27.715855, 23.895725, 29.743605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554623, 23.985497, 29.897049>,  <27.285902, 24.135115, 30.152790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554623, 23.985497, 29.897049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168385, 0.917657, -0.359934,
		0.721340, 0.134146, 0.679466,
		0.671800, -0.374047, -0.639354,
		27.756163, 23.873283, 29.705242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737116, 24.670086, 30.132559>,  <27.285902, 24.135115, 30.152790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737116, 24.670086, 30.132559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825134, 24.437355, 29.819366>,  <27.877945, 24.297716, 29.631451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825134, 24.437355, 29.819366>,  <27.737116, 24.670086, 30.132559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825134, 24.437355, 29.819366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335140, 0.798887, -0.499460,
		0.916111, -0.152502, 0.370788,
		0.220049, -0.581827, -0.782979,
		27.891150, 24.262808, 29.584473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401922, 24.874998, 29.939451>,  <27.737116, 24.670086, 30.132559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401922, 24.874998, 29.939451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229954, 24.692860, 29.627598>,  <28.126772, 24.583576, 29.440485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229954, 24.692860, 29.627598>,  <28.401922, 24.874998, 29.939451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229954, 24.692860, 29.627598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173771, 0.805634, -0.566355,
		0.885986, -0.378966, -0.267232,
		-0.429920, -0.455346, -0.779634,
		28.100977, 24.556255, 29.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818905, 24.920902, 29.365633>,  <28.401922, 24.874998, 29.939451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818905, 24.920902, 29.365633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449986, 24.863728, 29.222004>,  <28.228634, 24.829422, 29.135826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449986, 24.863728, 29.222004>,  <28.818905, 24.920902, 29.365633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449986, 24.863728, 29.222004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113654, 0.787697, -0.605489,
		0.369389, -0.599252, -0.710246,
		-0.922299, -0.142938, -0.359074,
		28.173296, 24.820847, 29.114283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836681, 24.830050, 28.528667>,  <28.818905, 24.920902, 29.365633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836681, 24.830050, 28.528667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475386, 24.966419, 28.632919>,  <28.258608, 25.048241, 28.695471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475386, 24.966419, 28.632919>,  <28.836681, 24.830050, 28.528667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475386, 24.966419, 28.632919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066072, 0.710572, -0.700515,
		-0.424018, -0.615514, -0.664343,
		-0.903241, 0.340925, 0.260627,
		28.204414, 25.068697, 28.711107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530926, 25.046797, 27.817348>,  <28.836681, 24.830050, 28.528667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530926, 25.046797, 27.817348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294998, 25.196056, 28.103809>,  <28.153442, 25.285612, 28.275686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294998, 25.196056, 28.103809>,  <28.530926, 25.046797, 27.817348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294998, 25.196056, 28.103809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009232, 0.883664, -0.468030,
		-0.807483, -0.282665, -0.517757,
		-0.589819, 0.373147, 0.716153,
		28.118053, 25.308001, 28.318655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998440, 25.370043, 27.519169>,  <28.530926, 25.046797, 27.817348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998440, 25.370043, 27.519169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959223, 25.520737, 27.887615>,  <27.935692, 25.611153, 28.108683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959223, 25.520737, 27.887615>,  <27.998440, 25.370043, 27.519169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959223, 25.520737, 27.887615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114026, 0.923734, -0.365670,
		-0.988628, 0.069180, -0.133524,
		-0.098044, 0.376737, 0.921117,
		27.929810, 25.633759, 28.163950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396959, 25.866108, 27.476091>,  <27.998440, 25.370043, 27.519169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396959, 25.866108, 27.476091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647837, 25.965233, 27.771446>,  <27.798363, 26.024708, 27.948660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647837, 25.965233, 27.771446>,  <27.396959, 25.866108, 27.476091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647837, 25.965233, 27.771446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022580, 0.941849, -0.335278,
		-0.778537, 0.226957, 0.585125,
		0.627193, 0.247814, 0.738388,
		27.835995, 26.039577, 27.992962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076765, 26.453007, 27.953232>,  <27.396959, 25.866108, 27.476091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076765, 26.453007, 27.953232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473726, 26.482040, 27.992970>,  <27.711903, 26.499460, 28.016811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473726, 26.482040, 27.992970>,  <27.076765, 26.453007, 27.953232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473726, 26.482040, 27.992970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023333, 0.903823, -0.427271,
		-0.120803, 0.421706, 0.898649,
		0.992402, 0.072584, 0.099345,
		27.771446, 26.503817, 28.022774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084116, 27.143858, 28.067003>,  <27.076765, 26.453007, 27.953232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084116, 27.143858, 28.067003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460739, 27.054081, 27.966530>,  <27.686712, 27.000214, 27.906246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460739, 27.054081, 27.966530>,  <27.084116, 27.143858, 28.067003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460739, 27.054081, 27.966530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166992, 0.958613, -0.230596,
		0.292545, 0.175174, 0.940070,
		0.941558, -0.224444, -0.251185,
		27.743206, 26.986748, 27.891174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422464, 27.777264, 28.143642>,  <27.084116, 27.143858, 28.067003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422464, 27.777264, 28.143642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659935, 27.563034, 27.903408>,  <27.802418, 27.434496, 27.759268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659935, 27.563034, 27.903408>,  <27.422464, 27.777264, 28.143642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659935, 27.563034, 27.903408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277796, 0.836869, -0.471678,
		0.755232, 0.113185, 0.645612,
		0.593679, -0.535574, -0.600588,
		27.838039, 27.402361, 27.723232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069376, 28.083040, 28.222178>,  <27.422464, 27.777264, 28.143642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069376, 28.083040, 28.222178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080265, 27.862507, 27.888641>,  <28.086798, 27.730186, 27.688520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080265, 27.862507, 27.888641>,  <28.069376, 28.083040, 28.222178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080265, 27.862507, 27.888641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290541, 0.802502, -0.521130,
		0.956475, -0.228078, 0.182032,
		0.027223, -0.551335, -0.833839,
		28.088432, 27.697105, 27.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646633, 28.323927, 27.914364>,  <28.069376, 28.083040, 28.222178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646633, 28.323927, 27.914364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481775, 28.131580, 27.604809>,  <28.382860, 28.016172, 27.419075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481775, 28.131580, 27.604809>,  <28.646633, 28.323927, 27.914364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481775, 28.131580, 27.604809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368464, 0.688861, -0.624264,
		0.833289, -0.542437, -0.106729,
		-0.412146, -0.480866, -0.773889,
		28.358131, 27.987320, 27.372643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087479, 28.391819, 27.277760>,  <28.646633, 28.323927, 27.914364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087479, 28.391819, 27.277760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733625, 28.306217, 27.112049>,  <28.521313, 28.254856, 27.012623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733625, 28.306217, 27.112049>,  <29.087479, 28.391819, 27.277760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733625, 28.306217, 27.112049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025575, 0.864856, -0.501369,
		0.465584, -0.454123, -0.759608,
		-0.884634, -0.214003, -0.414277,
		28.468235, 28.242016, 26.987766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173475, 28.592258, 26.494562>,  <29.087479, 28.391819, 27.277760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173475, 28.592258, 26.494562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777666, 28.578754, 26.550716>,  <28.540180, 28.570652, 26.584410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777666, 28.578754, 26.550716>,  <29.173475, 28.592258, 26.494562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777666, 28.578754, 26.550716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110604, 0.802232, -0.586677,
		-0.092816, -0.596057, -0.797560,
		-0.989521, -0.033760, 0.140387,
		28.480810, 28.568626, 26.592833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917185, 28.731482, 25.885519>,  <29.173475, 28.592258, 26.494562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917185, 28.731482, 25.885519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586473, 28.789013, 26.103050>,  <28.388046, 28.823532, 26.233568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586473, 28.789013, 26.103050>,  <28.917185, 28.731482, 25.885519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586473, 28.789013, 26.103050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262701, 0.756143, -0.599364,
		-0.497416, -0.638406, -0.587380,
		-0.826780, 0.143828, 0.543827,
		28.338440, 28.832161, 26.266199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412668, 28.986773, 25.424932>,  <28.917185, 28.731482, 25.885519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412668, 28.986773, 25.424932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256662, 29.102966, 25.774448>,  <28.163059, 29.172682, 25.984158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256662, 29.102966, 25.774448>,  <28.412668, 28.986773, 25.424932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256662, 29.102966, 25.774448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251061, 0.879438, -0.404422,
		-0.885921, -0.377105, -0.270065,
		-0.390015, 0.290483, 0.873789,
		28.139658, 29.190111, 26.036585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831697, 29.257030, 25.225599>,  <28.412668, 28.986773, 25.424932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831697, 29.257030, 25.225599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919453, 29.415459, 25.582249>,  <27.972105, 29.510515, 25.796238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919453, 29.415459, 25.582249>,  <27.831697, 29.257030, 25.225599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919453, 29.415459, 25.582249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389230, 0.873544, -0.292269,
		-0.894633, -0.282927, 0.345809,
		0.219389, 0.396072, 0.891625,
		27.985270, 29.534281, 25.849735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241354, 29.584564, 25.384350>,  <27.831697, 29.257030, 25.225599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241354, 29.584564, 25.384350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534483, 29.750618, 25.599991>,  <27.710360, 29.850250, 25.729376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534483, 29.750618, 25.599991>,  <27.241354, 29.584564, 25.384350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534483, 29.750618, 25.599991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227748, 0.896264, -0.380581,
		-0.641172, 0.156119, 0.751349,
		0.732823, 0.415136, 0.539104,
		27.754330, 29.875158, 25.761723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957443, 30.031492, 25.730057>,  <27.241354, 29.584564, 25.384350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957443, 30.031492, 25.730057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341928, 30.140476, 25.712933>,  <27.572620, 30.205868, 25.702658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341928, 30.140476, 25.712933>,  <26.957443, 30.031492, 25.730057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341928, 30.140476, 25.712933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265274, 0.870830, -0.413866,
		-0.075484, 0.409169, 0.909331,
		0.961214, 0.272462, -0.042808,
		27.630293, 30.222214, 25.700090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921247, 30.699148, 25.886955>,  <26.957443, 30.031492, 25.730057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921247, 30.699148, 25.886955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274626, 30.665680, 25.702553>,  <27.486652, 30.645599, 25.591911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274626, 30.665680, 25.702553>,  <26.921247, 30.699148, 25.886955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274626, 30.665680, 25.702553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154567, 0.876798, -0.455340,
		0.442306, 0.473524, 0.761669,
		0.883444, -0.083671, -0.461004,
		27.539660, 30.640579, 25.564251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198942, 31.327589, 26.011662>,  <26.921247, 30.699148, 25.886955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198942, 31.327589, 26.011662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395872, 31.184780, 25.694134>,  <27.514030, 31.099094, 25.503616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395872, 31.184780, 25.694134>,  <27.198942, 31.327589, 26.011662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395872, 31.184780, 25.694134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031779, 0.904026, -0.426294,
		0.869831, 0.235102, 0.433729,
		0.492325, -0.357020, -0.793821,
		27.543570, 31.077675, 25.455988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835318, 31.818253, 25.895254>,  <27.198942, 31.327589, 26.011662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835318, 31.818253, 25.895254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760229, 31.646126, 25.542076>,  <27.715176, 31.542850, 25.330170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760229, 31.646126, 25.542076>,  <27.835318, 31.818253, 25.895254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760229, 31.646126, 25.542076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066422, 0.891304, -0.448514,
		0.979974, -0.142842, -0.138732,
		-0.187719, -0.430317, -0.882943,
		27.703913, 31.517031, 25.277193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333061, 32.101444, 25.379869>,  <27.835318, 31.818253, 25.895254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333061, 32.101444, 25.379869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029249, 31.960583, 25.161106>,  <27.846962, 31.876066, 25.029848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029249, 31.960583, 25.161106>,  <28.333061, 32.101444, 25.379869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029249, 31.960583, 25.161106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117664, 0.752533, -0.647958,
		0.639743, -0.556494, -0.530136,
		-0.759529, -0.352149, -0.546907,
		27.801392, 31.854939, 24.997034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526583, 32.260056, 24.606243>,  <28.333061, 32.101444, 25.379869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526583, 32.260056, 24.606243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138622, 32.166416, 24.633038>,  <27.905846, 32.110233, 24.649115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138622, 32.166416, 24.633038>,  <28.526583, 32.260056, 24.606243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138622, 32.166416, 24.633038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216091, 0.700750, -0.679893,
		0.112218, -0.673905, -0.730245,
		-0.969903, -0.234096, 0.066988,
		27.847651, 32.096188, 24.653133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279825, 32.403923, 23.988571>,  <28.526583, 32.260056, 24.606243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279825, 32.403923, 23.988571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939419, 32.415783, 24.198292>,  <27.735174, 32.422901, 24.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939419, 32.415783, 24.198292>,  <28.279825, 32.403923, 23.988571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939419, 32.415783, 24.198292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276351, 0.823689, -0.495143,
		-0.446543, -0.566266, -0.692778,
		-0.851017, 0.029653, 0.524301,
		27.684114, 32.424679, 24.355581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693827, 32.516361, 23.506243>,  <28.279825, 32.403923, 23.988571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693827, 32.516361, 23.506243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546034, 32.629017, 23.860455>,  <27.457359, 32.696609, 24.072983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546034, 32.629017, 23.860455>,  <27.693827, 32.516361, 23.506243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546034, 32.629017, 23.860455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443507, 0.783970, -0.434387,
		-0.816570, -0.553236, -0.164752,
		-0.369480, 0.281639, 0.885530,
		27.435190, 32.713509, 24.126114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923111, 32.548962, 23.450186>,  <27.693827, 32.516361, 23.506243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923111, 32.548962, 23.450186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038921, 32.786720, 23.750282>,  <27.108408, 32.929375, 23.930340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038921, 32.786720, 23.750282>,  <26.923111, 32.548962, 23.450186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038921, 32.786720, 23.750282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658926, 0.692289, -0.294198,
		-0.694256, -0.409177, 0.592100,
		0.289525, 0.594398, 0.750244,
		27.125778, 32.965038, 23.975355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296387, 32.803406, 23.741699>,  <26.923111, 32.548962, 23.450186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296387, 32.803406, 23.741699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589684, 33.045200, 23.866249>,  <26.765663, 33.190277, 23.940979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589684, 33.045200, 23.866249>,  <26.296387, 32.803406, 23.741699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589684, 33.045200, 23.866249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618339, 0.783263, -0.064474,
		-0.282860, -0.145259, 0.948098,
		0.733244, 0.604483, 0.311373,
		26.809656, 33.226543, 23.959661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938141, 33.355339, 24.015457>,  <26.296387, 32.803406, 23.741699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938141, 33.355339, 24.015457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313650, 33.484867, 23.968399>,  <26.538956, 33.562584, 23.940165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313650, 33.484867, 23.968399>,  <25.938141, 33.355339, 24.015457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313650, 33.484867, 23.968399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341746, 0.918552, -0.198677,
		0.043728, 0.226718, 0.972978,
		0.938774, 0.323824, -0.117647,
		26.595282, 33.582016, 23.933105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873606, 33.998631, 24.197153>,  <25.938141, 33.355339, 24.015457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873606, 33.998631, 24.197153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196791, 33.955547, 23.965431>,  <26.390701, 33.929699, 23.826397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196791, 33.955547, 23.965431>,  <25.873606, 33.998631, 24.197153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196791, 33.955547, 23.965431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294710, 0.777476, -0.555587,
		0.510238, 0.619621, 0.596429,
		0.807962, -0.107708, -0.579306,
		26.439180, 33.923233, 23.791639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248837, 34.634861, 24.272703>,  <25.873606, 33.998631, 24.197153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248837, 34.634861, 24.272703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325153, 34.460110, 23.921082>,  <26.370943, 34.355259, 23.710110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325153, 34.460110, 23.921082>,  <26.248837, 34.634861, 24.272703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325153, 34.460110, 23.921082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075938, 0.886250, -0.456941,
		0.978688, 0.153935, 0.135915,
		0.190793, -0.436882, -0.879052,
		26.382391, 34.329044, 23.657366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304184, 35.219307, 23.814865>,  <26.248837, 34.634861, 24.272703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304184, 35.219307, 23.814865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299093, 34.905064, 23.567425>,  <26.296038, 34.716518, 23.418961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299093, 34.905064, 23.567425>,  <26.304184, 35.219307, 23.814865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299093, 34.905064, 23.567425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414579, 0.567115, -0.711691,
		0.909924, 0.247400, -0.332913,
		-0.012728, -0.785604, -0.618599,
		26.295275, 34.669384, 23.381845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784199, 35.174168, 23.255264>,  <26.304184, 35.219307, 23.814865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784199, 35.174168, 23.255264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462605, 35.403282, 23.191364>,  <25.269648, 35.540752, 23.153025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462605, 35.403282, 23.191364>,  <25.784199, 35.174168, 23.255264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462605, 35.403282, 23.191364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573467, -0.675781, 0.463093,
		0.157299, 0.463932, 0.871794,
		-0.803985, 0.572789, -0.159750,
		25.221409, 35.575119, 23.143438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392691, 35.462254, 23.797342>,  <25.784199, 35.174168, 23.255264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392691, 35.462254, 23.797342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164324, 35.321171, 23.500790>,  <25.027304, 35.236519, 23.322857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164324, 35.321171, 23.500790>,  <25.392691, 35.462254, 23.797342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164324, 35.321171, 23.500790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429805, -0.640986, 0.635928,
		-0.699514, 0.681713, 0.214354,
		-0.570919, -0.352710, -0.741382,
		24.993048, 35.215359, 23.278376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787876, 35.528168, 23.966814>,  <25.392691, 35.462254, 23.797342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787876, 35.528168, 23.966814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789785, 35.216434, 23.716175>,  <24.790930, 35.029396, 23.565792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789785, 35.216434, 23.716175>,  <24.787876, 35.528168, 23.966814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789785, 35.216434, 23.716175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342421, -0.589996, 0.731200,
		-0.939535, 0.211070, -0.269674,
		0.004772, -0.779329, -0.626597,
		24.791218, 34.982635, 23.528196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.848200, 36.245369, 23.865414>,  <24.787876, 35.528168, 23.966814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.848200, 36.245369, 23.865414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961290, 36.444244, 23.537300>,  <25.029144, 36.563568, 23.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961290, 36.444244, 23.537300>,  <24.848200, 36.245369, 23.865414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961290, 36.444244, 23.537300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810364, -0.333737, -0.481591,
		-0.513202, 0.800888, 0.308549,
		0.282726, 0.497190, -0.820285,
		25.046108, 36.593403, 23.291214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.267185, 36.615326, 23.542685>,  <24.848200, 36.245369, 23.865414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.267185, 36.615326, 23.542685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539633, 36.535751, 23.260834>,  <24.703102, 36.488007, 23.091722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539633, 36.535751, 23.260834>,  <24.267185, 36.615326, 23.542685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539633, 36.535751, 23.260834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732171, -0.183203, -0.656020,
		0.001418, 0.962736, -0.270440,
		0.681119, -0.198939, -0.704628,
		24.743969, 36.476070, 23.049446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906565, 36.959003, 23.026667>,  <24.267185, 36.615326, 23.542685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906565, 36.959003, 23.026667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128654, 36.648415, 22.907463>,  <24.261909, 36.462059, 22.835941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128654, 36.648415, 22.907463>,  <23.906565, 36.959003, 23.026667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.128654, 36.648415, 22.907463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753493, -0.317928, -0.575474,
		0.352097, 0.544065, -0.761591,
		0.555226, -0.776476, -0.298007,
		24.295223, 36.415470, 22.818060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.246157, 37.348774, 22.827892>,  <23.906565, 36.959003, 23.026667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.246157, 37.348774, 22.827892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.919870, 37.534279, 22.689598>,  <22.724098, 37.645580, 22.606621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.919870, 37.534279, 22.689598>,  <23.246157, 37.348774, 22.827892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.919870, 37.534279, 22.689598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256907, -0.245056, -0.934851,
		-0.518274, -0.851393, 0.080752,
		-0.815715, 0.463764, -0.345735,
		22.675156, 37.673409, 22.585878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971357, 36.921391, 22.370270>,  <23.246157, 37.348774, 22.827892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971357, 36.921391, 22.370270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751947, 37.245121, 22.286263>,  <22.620302, 37.439362, 22.235859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751947, 37.245121, 22.286263>,  <22.971357, 36.921391, 22.370270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.751947, 37.245121, 22.286263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067306, -0.207623, -0.975891,
		-0.833421, -0.549436, 0.059414,
		-0.548525, 0.809328, -0.210018,
		22.587389, 37.487919, 22.223257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390398, 36.682987, 22.031912>,  <22.971357, 36.921391, 22.370270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390398, 36.682987, 22.031912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478897, 37.056206, 21.918434>,  <22.531996, 37.280136, 21.850348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478897, 37.056206, 21.918434>,  <22.390398, 36.682987, 22.031912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478897, 37.056206, 21.918434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030313, -0.284183, -0.958291,
		-0.974747, 0.220618, -0.034591,
		0.221246, 0.933042, -0.283694,
		22.545271, 37.336117, 21.833326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803278, 36.847244, 21.659500>,  <22.390398, 36.682987, 22.031912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803278, 36.847244, 21.659500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080191, 37.103485, 21.526611>,  <22.246338, 37.257229, 21.446878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080191, 37.103485, 21.526611>,  <21.803278, 36.847244, 21.659500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.080191, 37.103485, 21.526611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083883, -0.385823, -0.918751,
		-0.716734, 0.663904, -0.213363,
		0.692283, 0.640603, -0.332222,
		22.287876, 37.295666, 21.426945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.680597, 36.857475, 20.975100>,  <21.803278, 36.847244, 21.659500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.680597, 36.857475, 20.975100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.009134, 37.085056, 20.991524>,  <22.206257, 37.221607, 21.001379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.009134, 37.085056, 20.991524>,  <21.680597, 36.857475, 20.975100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.009134, 37.085056, 20.991524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173341, -0.180361, -0.968206,
		-0.543460, 0.802346, -0.246762,
		0.821343, 0.568955, 0.041061,
		22.255537, 37.255741, 21.003841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665476, 37.418018, 20.388140>,  <21.680597, 36.857475, 20.975100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665476, 37.418018, 20.388140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.036415, 37.336205, 20.513481>,  <22.258978, 37.287117, 20.588686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.036415, 37.336205, 20.513481>,  <21.665476, 37.418018, 20.388140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.036415, 37.336205, 20.513481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296622, -0.108711, -0.948787,
		0.228128, 0.972803, -0.040142,
		0.927347, -0.204538, 0.313355,
		22.314619, 37.274841, 20.607487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.188297, 37.821602, 19.978159>,  <21.665476, 37.418018, 20.388140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.188297, 37.821602, 19.978159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357460, 37.485672, 20.114307>,  <22.458958, 37.284115, 20.195995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357460, 37.485672, 20.114307>,  <22.188297, 37.821602, 19.978159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.357460, 37.485672, 20.114307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299298, -0.225080, -0.927232,
		0.855319, 0.494004, 0.156169,
		0.422906, -0.839821, 0.340369,
		22.484331, 37.233727, 20.216419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.775440, 37.731724, 19.587044>,  <22.188297, 37.821602, 19.978159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.775440, 37.731724, 19.587044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727892, 37.361389, 19.730541>,  <22.699362, 37.139187, 19.816641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727892, 37.361389, 19.730541>,  <22.775440, 37.731724, 19.587044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.727892, 37.361389, 19.730541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386970, -0.375937, -0.841977,
		0.914398, 0.038736, 0.402959,
		-0.118872, -0.925835, 0.358745,
		22.692230, 37.083637, 19.838165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.462622, 37.501301, 19.482592>,  <22.775440, 37.731724, 19.587044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.462622, 37.501301, 19.482592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.205286, 37.198586, 19.528870>,  <23.050884, 37.016956, 19.556637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.205286, 37.198586, 19.528870>,  <23.462622, 37.501301, 19.482592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.205286, 37.198586, 19.528870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363070, -0.434639, -0.824178,
		0.674016, -0.488218, 0.554387,
		-0.643337, -0.756791, 0.115696,
		23.012285, 36.971550, 19.563578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.775890, 36.853889, 19.215094>,  <23.462622, 37.501301, 19.482592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.775890, 36.853889, 19.215094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.399208, 36.720921, 19.194382>,  <23.173199, 36.641140, 19.181953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.399208, 36.720921, 19.194382>,  <23.775890, 36.853889, 19.215094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.399208, 36.720921, 19.194382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203965, -0.441711, -0.873665,
		0.267557, -0.833297, 0.483765,
		-0.941706, -0.332426, -0.051780,
		23.116695, 36.621193, 19.178848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746204, 36.056091, 18.910028>,  <23.775890, 36.853889, 19.215094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746204, 36.056091, 18.910028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.415833, 36.272346, 18.846088>,  <23.217609, 36.402100, 18.807724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.415833, 36.272346, 18.846088>,  <23.746204, 36.056091, 18.910028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.415833, 36.272346, 18.846088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136606, -0.083171, -0.987128,
		-0.546970, -0.837137, -0.005161,
		-0.825932, 0.540634, -0.159849,
		23.168053, 36.434536, 18.798134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.543283, 35.686554, 18.298069>,  <23.746204, 36.056091, 18.910028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.543283, 35.686554, 18.298069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.291670, 35.996967, 18.316368>,  <23.140701, 36.183216, 18.327347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.291670, 35.996967, 18.316368>,  <23.543283, 35.686554, 18.298069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.291670, 35.996967, 18.316368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081710, -0.007479, -0.996628,
		-0.773073, -0.630649, 0.068114,
		-0.629032, 0.776032, 0.045748,
		23.102961, 36.229778, 18.330093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.851915, 35.590214, 17.847805>,  <23.543283, 35.686554, 18.298069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.851915, 35.590214, 17.847805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.935175, 35.977634, 17.902317>,  <22.985130, 36.210087, 17.935024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.935175, 35.977634, 17.902317>,  <22.851915, 35.590214, 17.847805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.935175, 35.977634, 17.902317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012611, 0.136665, -0.990537,
		-0.978016, 0.207898, 0.016232,
		0.208149, 0.968556, 0.136282,
		22.997620, 36.268200, 17.943201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509506, 35.884636, 17.333904>,  <22.851915, 35.590214, 17.847805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509506, 35.884636, 17.333904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765892, 36.163643, 17.462051>,  <22.919724, 36.331047, 17.538940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765892, 36.163643, 17.462051>,  <22.509506, 35.884636, 17.333904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.765892, 36.163643, 17.462051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126518, 0.315665, -0.940398,
		-0.757070, 0.643296, 0.114082,
		0.640966, 0.697514, 0.320369,
		22.958181, 36.372898, 17.558163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.210079, 36.525192, 17.175419>,  <22.509506, 35.884636, 17.333904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.210079, 36.525192, 17.175419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607399, 36.553108, 17.212261>,  <22.845791, 36.569859, 17.234367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607399, 36.553108, 17.212261>,  <22.210079, 36.525192, 17.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.607399, 36.553108, 17.212261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073050, 0.238395, -0.968417,
		-0.089546, 0.968657, 0.231700,
		0.993300, 0.069793, 0.092108,
		22.905390, 36.574047, 17.239893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.453175, 37.218388, 16.988333>,  <22.210079, 36.525192, 17.175419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.453175, 37.218388, 16.988333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775860, 36.982754, 16.969601>,  <22.969471, 36.841373, 16.958361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775860, 36.982754, 16.969601>,  <22.453175, 37.218388, 16.988333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.775860, 36.982754, 16.969601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217795, 0.370052, -0.903121,
		0.549345, 0.718360, 0.426825,
		0.806713, -0.589085, -0.046831,
		23.017874, 36.806026, 16.955551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.137287, 37.682217, 17.045183>,  <22.453175, 37.218388, 16.988333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.137287, 37.682217, 17.045183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233950, 37.350441, 16.843739>,  <23.291948, 37.151375, 16.722872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233950, 37.350441, 16.843739>,  <23.137287, 37.682217, 17.045183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.233950, 37.350441, 16.843739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144873, 0.544017, -0.826473,
		0.959486, 0.126765, 0.251630,
		0.241659, -0.829443, -0.503612,
		23.306448, 37.101608, 16.692656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.684389, 37.836769, 16.607622>,  <23.137287, 37.682217, 17.045183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.684389, 37.836769, 16.607622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.567469, 37.489113, 16.448044>,  <23.497316, 37.280518, 16.352297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.567469, 37.489113, 16.448044>,  <23.684389, 37.836769, 16.607622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.567469, 37.489113, 16.448044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074332, 0.395254, -0.915559,
		0.953433, -0.297273, -0.050928,
		-0.292301, -0.869139, -0.398945,
		23.479778, 37.228371, 16.328360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031790, 37.887531, 16.068710>,  <23.684389, 37.836769, 16.607622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031790, 37.887531, 16.068710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.760294, 37.609695, 15.973327>,  <23.597397, 37.442993, 15.916096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.760294, 37.609695, 15.973327>,  <24.031790, 37.887531, 16.068710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.760294, 37.609695, 15.973327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001987, 0.322974, -0.946406,
		0.734377, -0.642837, -0.217835,
		-0.678740, -0.694586, -0.238461,
		23.556671, 37.401321, 15.901789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027365, 37.876743, 15.348329>,  <24.031790, 37.887531, 16.068710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027365, 37.876743, 15.348329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.681658, 37.689976, 15.423190>,  <23.474234, 37.577915, 15.468107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.681658, 37.689976, 15.423190>,  <24.027365, 37.876743, 15.348329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.681658, 37.689976, 15.423190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444898, 0.535881, -0.717564,
		0.234753, -0.703432, -0.670876,
		-0.864267, -0.466921, 0.187155,
		23.422379, 37.549900, 15.479337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.878637, 37.512901, 14.816594>,  <24.027365, 37.876743, 15.348329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.878637, 37.512901, 14.816594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.517117, 37.547787, 14.984183>,  <23.300205, 37.568718, 15.084737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.517117, 37.547787, 14.984183>,  <23.878637, 37.512901, 14.816594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.517117, 37.547787, 14.984183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380624, 0.283711, -0.880132,
		-0.195627, -0.954935, -0.223223,
		-0.903801, 0.087213, 0.418973,
		23.245975, 37.573952, 15.109876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461874, 37.270893, 14.257722>,  <23.878637, 37.512901, 14.816594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461874, 37.270893, 14.257722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270864, 37.507862, 14.517261>,  <23.156258, 37.650043, 14.672983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270864, 37.507862, 14.517261>,  <23.461874, 37.270893, 14.257722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.270864, 37.507862, 14.517261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407482, 0.504935, -0.760920,
		-0.778414, -0.627751, 0.000284,
		-0.477525, 0.592427, 0.648845,
		23.127607, 37.685589, 14.711914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703054, 37.236115, 14.301996>,  <23.461874, 37.270893, 14.257722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703054, 37.236115, 14.301996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834547, 37.602810, 14.392797>,  <22.913443, 37.822826, 14.447277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834547, 37.602810, 14.392797>,  <22.703054, 37.236115, 14.301996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834547, 37.602810, 14.392797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423625, 0.357953, -0.832113,
		-0.844084, 0.177378, 0.506023,
		0.328731, 0.916737, 0.227001,
		22.933167, 37.877831, 14.460896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.126261, 37.744217, 14.304238>,  <22.703054, 37.236115, 14.301996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.126261, 37.744217, 14.304238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.468294, 37.946552, 14.258695>,  <22.673513, 38.067955, 14.231369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.468294, 37.946552, 14.258695>,  <22.126261, 37.744217, 14.304238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.468294, 37.946552, 14.258695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357322, 0.415777, -0.836331,
		-0.375708, 0.755815, 0.536271,
		0.855081, 0.505838, -0.113859,
		22.724819, 38.098305, 14.224537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.028925, 38.060516, 13.681519>,  <22.126261, 37.744217, 14.304238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.028925, 38.060516, 13.681519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.387756, 38.211857, 13.772822>,  <22.603054, 38.302662, 13.827605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.387756, 38.211857, 13.772822>,  <22.028925, 38.060516, 13.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.387756, 38.211857, 13.772822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069408, 0.389509, -0.918404,
		-0.436388, 0.839723, 0.323159,
		0.897078, 0.378350, 0.228260,
		22.656879, 38.325363, 13.841301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.355761, 38.233353, 13.574170>,  <22.028925, 38.060516, 13.681519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.355761, 38.233353, 13.574170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052284, 38.021721, 13.726203>,  <20.870197, 37.894741, 13.817423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052284, 38.021721, 13.726203>,  <21.355761, 38.233353, 13.574170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052284, 38.021721, 13.726203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616491, 0.394559, -0.681367,
		0.210530, -0.751267, -0.625520,
		-0.758693, -0.529076, 0.380083,
		20.824677, 37.862999, 13.840227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975449, 37.693695, 13.021059>,  <21.355761, 38.233353, 13.574170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975449, 37.693695, 13.021059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765781, 37.854675, 13.321269>,  <20.639982, 37.951263, 13.501395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765781, 37.854675, 13.321269>,  <20.975449, 37.693695, 13.021059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765781, 37.854675, 13.321269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631633, 0.407404, -0.659592,
		-0.571217, -0.819792, 0.040651,
		-0.524166, 0.402447, 0.750524,
		20.608532, 37.975410, 13.546426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.378941, 37.314499, 13.194958>,  <20.975449, 37.693695, 13.021059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.378941, 37.314499, 13.194958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335915, 37.710930, 13.226443>,  <20.310099, 37.948788, 13.245335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335915, 37.710930, 13.226443>,  <20.378941, 37.314499, 13.194958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.335915, 37.710930, 13.226443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492916, 0.015595, -0.869937,
		-0.863402, -0.132374, 0.486841,
		-0.107564, 0.991077, 0.078714,
		20.303646, 38.008251, 13.250057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617207, 37.535294, 13.178450>,  <20.378941, 37.314499, 13.194958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617207, 37.535294, 13.178450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869356, 37.826374, 13.070321>,  <20.020645, 38.001022, 13.005444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869356, 37.826374, 13.070321>,  <19.617207, 37.535294, 13.178450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869356, 37.826374, 13.070321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464826, 0.074933, -0.882225,
		-0.621744, 0.681785, 0.385492,
		0.630374, 0.727705, -0.270322,
		20.058468, 38.044685, 12.989224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.985733, 36.988361, 13.239019>,  <19.617207, 37.535294, 13.178450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.985733, 36.988361, 13.239019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.932835, 36.608128, 13.351377>,  <18.901096, 36.379986, 13.418791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.932835, 36.608128, 13.351377>,  <18.985733, 36.988361, 13.239019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932835, 36.608128, 13.351377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536522, 0.169635, 0.826661,
		-0.833460, 0.260027, 0.487576,
		-0.132244, -0.950584, 0.280894,
		18.893162, 36.322952, 13.435645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600773, 36.817394, 13.868950>,  <18.985733, 36.988361, 13.239019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600773, 36.817394, 13.868950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853367, 36.509678, 13.830121>,  <19.004923, 36.325047, 13.806824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853367, 36.509678, 13.830121>,  <18.600773, 36.817394, 13.868950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853367, 36.509678, 13.830121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433605, 0.246566, 0.866713,
		-0.642819, -0.589405, 0.489270,
		0.631482, -0.769290, -0.097071,
		19.042812, 36.278893, 13.801000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590771, 36.434784, 14.548602>,  <18.600773, 36.817394, 13.868950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590771, 36.434784, 14.548602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948832, 36.373119, 14.381303>,  <19.163668, 36.336121, 14.280923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948832, 36.373119, 14.381303>,  <18.590771, 36.434784, 14.548602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948832, 36.373119, 14.381303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445704, 0.295099, 0.845142,
		-0.006867, -0.942947, 0.332872,
		0.895154, -0.154166, -0.418249,
		19.217379, 36.326870, 14.255828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934507, 35.882183, 14.906224>,  <18.590771, 36.434784, 14.548602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934507, 35.882183, 14.906224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220652, 36.079388, 14.708156>,  <19.392338, 36.197712, 14.589314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220652, 36.079388, 14.708156>,  <18.934507, 35.882183, 14.906224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220652, 36.079388, 14.708156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447383, 0.221197, 0.866557,
		0.536755, -0.841432, -0.062330,
		0.715361, 0.493014, -0.495171,
		19.435261, 36.227291, 14.559605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523315, 35.684925, 15.337185>,  <18.934507, 35.882183, 14.906224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.523315, 35.684925, 15.337185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.648178, 36.004398, 15.131404>,  <19.723095, 36.196083, 15.007936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.648178, 36.004398, 15.131404>,  <19.523315, 35.684925, 15.337185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.648178, 36.004398, 15.131404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682169, 0.188452, 0.706492,
		0.661214, -0.571479, -0.486012,
		0.312156, 0.798685, -0.514452,
		19.741825, 36.244003, 14.977068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173151, 35.658527, 15.456018>,  <19.523315, 35.684925, 15.337185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173151, 35.658527, 15.456018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.115755, 36.035782, 15.336085>,  <20.081318, 36.262135, 15.264126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.115755, 36.035782, 15.336085>,  <20.173151, 35.658527, 15.456018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.115755, 36.035782, 15.336085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544968, 0.328197, 0.771555,
		0.826087, -0.052687, -0.561074,
		-0.143492, 0.943139, -0.299832,
		20.072708, 36.318722, 15.246136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790846, 35.954201, 15.589823>,  <20.173151, 35.658527, 15.456018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790846, 35.954201, 15.589823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.516253, 36.244865, 15.579267>,  <20.351496, 36.419266, 15.572933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.516253, 36.244865, 15.579267>,  <20.790846, 35.954201, 15.589823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516253, 36.244865, 15.579267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275625, 0.293624, 0.915323,
		0.672883, 0.621081, -0.401855,
		-0.686484, 0.726666, -0.026390,
		20.310307, 36.462864, 15.571349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151783, 36.585567, 15.927233>,  <20.790846, 35.954201, 15.589823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151783, 36.585567, 15.927233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763964, 36.683353, 15.921380>,  <20.531273, 36.742023, 15.917869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763964, 36.683353, 15.921380>,  <21.151783, 36.585567, 15.927233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763964, 36.683353, 15.921380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079705, 0.371472, 0.925017,
		0.231567, 0.895682, -0.379645,
		-0.969548, 0.244462, -0.014631,
		20.473099, 36.756691, 15.916991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.219278, 37.323357, 16.141201>,  <21.151783, 36.585567, 15.927233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.219278, 37.323357, 16.141201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862585, 37.154644, 16.206818>,  <20.648569, 37.053417, 16.246187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862585, 37.154644, 16.206818>,  <21.219278, 37.323357, 16.141201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.862585, 37.154644, 16.206818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020494, 0.324474, 0.945673,
		-0.452093, 0.846651, -0.280701,
		-0.891735, -0.421779, 0.164043,
		20.595064, 37.028111, 16.256031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.883986, 37.764481, 16.459982>,  <21.219278, 37.323357, 16.141201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.883986, 37.764481, 16.459982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661337, 37.449089, 16.564651>,  <20.527748, 37.259853, 16.627453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661337, 37.449089, 16.564651>,  <20.883986, 37.764481, 16.459982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661337, 37.449089, 16.564651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010193, 0.321435, 0.946877,
		-0.830703, 0.524385, -0.186955,
		-0.556622, -0.788479, 0.261672,
		20.494350, 37.212543, 16.643152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.578259, 38.048180, 17.015703>,  <20.883986, 37.764481, 16.459982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.578259, 38.048180, 17.015703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.498821, 37.658058, 17.054386>,  <20.451159, 37.423985, 17.077597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.498821, 37.658058, 17.054386>,  <20.578259, 38.048180, 17.015703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.498821, 37.658058, 17.054386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083516, 0.115153, 0.989831,
		-0.976518, 0.188495, -0.104321,
		-0.198591, -0.975300, 0.096707,
		20.439243, 37.365467, 17.083399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939505, 37.969517, 17.371183>,  <20.578259, 38.048180, 17.015703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939505, 37.969517, 17.371183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.174252, 37.649437, 17.420593>,  <20.315100, 37.457390, 17.450239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.174252, 37.649437, 17.420593>,  <19.939505, 37.969517, 17.371183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174252, 37.649437, 17.420593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106366, 0.075045, 0.991491,
		-0.802665, -0.595014, -0.041073,
		0.586869, -0.800204, 0.123525,
		20.350313, 37.409374, 17.457651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617304, 37.605324, 17.792437>,  <19.939505, 37.969517, 17.371183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617304, 37.605324, 17.792437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.001648, 37.508045, 17.845509>,  <20.232254, 37.449680, 17.877352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.001648, 37.508045, 17.845509>,  <19.617304, 37.605324, 17.792437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.001648, 37.508045, 17.845509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090319, 0.177764, 0.979920,
		-0.261895, -0.953550, 0.148842,
		0.960861, -0.243193, 0.132679,
		20.289906, 37.435089, 17.885313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611774, 37.291393, 18.489758>,  <19.617304, 37.605324, 17.792437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611774, 37.291393, 18.489758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.996708, 37.375595, 18.420944>,  <20.227669, 37.426117, 18.379656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.996708, 37.375595, 18.420944>,  <19.611774, 37.291393, 18.489758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.996708, 37.375595, 18.420944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113530, 0.263803, 0.957872,
		0.247017, -0.941327, 0.229970,
		0.962338, 0.210502, -0.172033,
		20.285408, 37.438747, 18.369333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914679, 37.092827, 19.120735>,  <19.611774, 37.291393, 18.489758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914679, 37.092827, 19.120735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215286, 37.298584, 18.955513>,  <20.395651, 37.422039, 18.856380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215286, 37.298584, 18.955513>,  <19.914679, 37.092827, 19.120735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215286, 37.298584, 18.955513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251766, 0.355099, 0.900288,
		0.609780, -0.780578, 0.137356,
		0.751521, 0.514396, -0.413055,
		20.440742, 37.452904, 18.831596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474281, 36.980896, 19.527603>,  <19.914679, 37.092827, 19.120735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474281, 36.980896, 19.527603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.534502, 37.318344, 19.321442>,  <20.570635, 37.520813, 19.197744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.534502, 37.318344, 19.321442>,  <20.474281, 36.980896, 19.527603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.534502, 37.318344, 19.321442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215292, 0.480856, 0.849957,
		0.964875, -0.238925, -0.109231,
		0.150552, 0.843618, -0.515405,
		20.579668, 37.571430, 19.166821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.105579, 37.267941, 19.744917>,  <20.474281, 36.980896, 19.527603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.105579, 37.267941, 19.744917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882565, 37.559601, 19.586174>,  <20.748756, 37.734596, 19.490929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882565, 37.559601, 19.586174>,  <21.105579, 37.267941, 19.744917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882565, 37.559601, 19.586174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072361, 0.518919, 0.851755,
		0.826992, 0.446168, -0.342078,
		-0.557537, 0.729148, -0.396857,
		20.715303, 37.778347, 19.467117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.422192, 37.942699, 19.930634>,  <21.105579, 37.267941, 19.744917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.422192, 37.942699, 19.930634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041042, 38.021233, 19.838127>,  <20.812353, 38.068352, 19.782623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041042, 38.021233, 19.838127>,  <21.422192, 37.942699, 19.930634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041042, 38.021233, 19.838127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097079, 0.524915, 0.845600,
		0.287412, 0.828202, -0.481119,
		-0.952875, 0.196329, -0.231268,
		20.755180, 38.080132, 19.768747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.306568, 38.596279, 20.157764>,  <21.422192, 37.942699, 19.930634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.306568, 38.596279, 20.157764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.928329, 38.475712, 20.108788>,  <20.701385, 38.403374, 20.079401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.928329, 38.475712, 20.108788>,  <21.306568, 38.596279, 20.157764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.928329, 38.475712, 20.108788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268673, 0.511254, 0.816354,
		-0.183462, 0.804840, -0.564423,
		-0.945598, -0.301415, -0.122443,
		20.644650, 38.385288, 20.072054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985229, 39.190628, 20.156612>,  <21.306568, 38.596279, 20.157764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985229, 39.190628, 20.156612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717510, 38.906956, 20.245247>,  <20.556879, 38.736752, 20.298428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717510, 38.906956, 20.245247>,  <20.985229, 39.190628, 20.156612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.717510, 38.906956, 20.245247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297632, 0.529169, 0.794604,
		-0.680773, 0.465878, -0.565248,
		-0.669300, -0.709181, 0.221584,
		20.516720, 38.694202, 20.311722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349125, 39.486206, 20.310478>,  <20.985229, 39.190628, 20.156612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349125, 39.486206, 20.310478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329889, 39.124981, 20.481201>,  <20.318348, 38.908245, 20.583635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329889, 39.124981, 20.481201>,  <20.349125, 39.486206, 20.310478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.329889, 39.124981, 20.481201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367882, 0.413276, 0.832986,
		-0.928628, -0.116958, -0.352094,
		-0.048087, -0.903063, 0.426807,
		20.315464, 38.854061, 20.609243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705725, 39.536575, 20.654566>,  <20.349125, 39.486206, 20.310478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705725, 39.536575, 20.654566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893717, 39.241787, 20.848881>,  <20.006512, 39.064915, 20.965469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893717, 39.241787, 20.848881>,  <19.705725, 39.536575, 20.654566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.893717, 39.241787, 20.848881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343176, 0.354497, 0.869806,
		-0.813233, -0.575503, -0.086303,
		0.469982, -0.736972, 0.485788,
		20.034712, 39.020695, 20.994617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294203, 39.313103, 21.179560>,  <19.705725, 39.536575, 20.654566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294203, 39.313103, 21.179560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.651735, 39.180759, 21.300621>,  <19.866255, 39.101353, 21.373257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.651735, 39.180759, 21.300621>,  <19.294203, 39.313103, 21.179560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.651735, 39.180759, 21.300621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246362, 0.201597, 0.947979,
		-0.374662, -0.921894, 0.098683,
		0.893831, -0.330860, 0.302651,
		19.919884, 39.081501, 21.391417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122591, 38.801590, 21.639540>,  <19.294203, 39.313103, 21.179560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122591, 38.801590, 21.639540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482506, 38.964760, 21.701488>,  <19.698454, 39.062660, 21.738657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482506, 38.964760, 21.701488>,  <19.122591, 38.801590, 21.639540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482506, 38.964760, 21.701488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346980, 0.453729, 0.820814,
		0.264559, -0.792293, 0.549800,
		0.899785, 0.407924, 0.154872,
		19.752441, 39.087135, 21.747950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543814, 38.658157, 22.402752>,  <19.122591, 38.801590, 21.639540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543814, 38.658157, 22.402752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550072, 39.010937, 22.214317>,  <19.553827, 39.222603, 22.101257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550072, 39.010937, 22.214317>,  <19.543814, 38.658157, 22.402752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550072, 39.010937, 22.214317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510334, 0.412199, 0.754752,
		0.859834, 0.228604, 0.456537,
		0.015644, 0.881948, -0.471087,
		19.554766, 39.275520, 22.072990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218019, 38.469593, 22.990833>,  <19.543814, 38.658157, 22.402752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218019, 38.469593, 22.990833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128590, 38.842770, 23.103710>,  <19.074932, 39.066677, 23.171436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128590, 38.842770, 23.103710>,  <19.218019, 38.469593, 22.990833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128590, 38.842770, 23.103710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268168, -0.219471, 0.938040,
		0.937070, 0.285397, -0.201118,
		-0.223574, 0.932942, 0.282194,
		19.061518, 39.122654, 23.188368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.571936, 38.402382, 23.322845>,  <19.218019, 38.469593, 22.990833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.571936, 38.402382, 23.322845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.260061, 38.187389, 23.194347>,  <18.072937, 38.058392, 23.117249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.260061, 38.187389, 23.194347>,  <18.571936, 38.402382, 23.322845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260061, 38.187389, 23.194347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503053, -0.843163, 0.189775,
		-0.372862, -0.013638, 0.927787,
		-0.779687, -0.537486, -0.321244,
		18.026155, 38.026142, 23.097975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629591, 37.805237, 23.674404>,  <18.571936, 38.402382, 23.322845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629591, 37.805237, 23.674404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362103, 37.697796, 23.397083>,  <18.201611, 37.633331, 23.230692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362103, 37.697796, 23.397083>,  <18.629591, 37.805237, 23.674404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362103, 37.697796, 23.397083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360510, -0.932656, 0.013613,
		-0.650267, -0.240838, 0.720520,
		-0.668719, -0.268606, -0.693300,
		18.161488, 37.617214, 23.189093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.300732, 24.094120, 25.040731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.671841, 24.137154, 25.183651>,  <30.894506, 24.162973, 25.269403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.671841, 24.137154, 25.183651>,  <30.300732, 24.094120, 25.040731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671841, 24.137154, 25.183651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019586, 0.942177, -0.334544,
		-0.372629, 0.317379, 0.872020,
		0.927774, 0.107582, 0.357298,
		30.950172, 24.169428, 25.290840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378830, 24.848043, 25.124086>,  <30.300732, 24.094120, 25.040731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378830, 24.848043, 25.124086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.754414, 24.729301, 25.193638>,  <30.979763, 24.658056, 25.235369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.754414, 24.729301, 25.193638>,  <30.378830, 24.848043, 25.124086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754414, 24.729301, 25.193638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342964, 0.847451, -0.405219,
		-0.027061, 0.440117, 0.897532,
		0.938959, -0.296856, 0.173877,
		31.036100, 24.640245, 25.245802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610558, 25.372919, 25.401415>,  <30.378830, 24.848043, 25.124086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610558, 25.372919, 25.401415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928556, 25.200020, 25.231171>,  <31.119356, 25.096281, 25.129025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928556, 25.200020, 25.231171>,  <30.610558, 25.372919, 25.401415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928556, 25.200020, 25.231171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248987, 0.872303, -0.420825,
		0.553162, 0.228583, 0.801101,
		0.794995, -0.432248, -0.425610,
		31.167055, 25.070345, 25.103487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213699, 25.794228, 25.507050>,  <30.610558, 25.372919, 25.401415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213699, 25.794228, 25.507050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.309866, 25.571434, 25.189064>,  <31.367567, 25.437757, 24.998274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.309866, 25.571434, 25.189064>,  <31.213699, 25.794228, 25.507050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309866, 25.571434, 25.189064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144519, 0.830395, -0.538105,
		0.959851, 0.014483, 0.280136,
		0.240417, -0.556986, -0.794963,
		31.381990, 25.404339, 24.950575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798586, 26.068165, 25.319256>,  <31.213699, 25.794228, 25.507050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798586, 26.068165, 25.319256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648783, 25.903442, 24.986954>,  <31.558901, 25.804609, 24.787573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648783, 25.903442, 24.986954>,  <31.798586, 26.068165, 25.319256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648783, 25.903442, 24.986954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125841, 0.865099, -0.485560,
		0.918644, -0.286389, -0.272164,
		-0.374508, -0.411807, -0.830758,
		31.536430, 25.779900, 24.737726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254253, 26.197800, 24.676382>,  <31.798586, 26.068165, 25.319256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254253, 26.197800, 24.676382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.890360, 26.134663, 24.522774>,  <31.672024, 26.096781, 24.430609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.890360, 26.134663, 24.522774>,  <32.254253, 26.197800, 24.676382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890360, 26.134663, 24.522774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080012, 0.840935, -0.535188,
		0.407413, -0.517604, -0.752396,
		-0.909732, -0.157842, -0.384023,
		31.617441, 26.087311, 24.407566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387814, 26.351505, 24.079075>,  <32.254253, 26.197800, 24.676382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387814, 26.351505, 24.079075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.990419, 26.380302, 24.114429>,  <31.751984, 26.397581, 24.135643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.990419, 26.380302, 24.114429>,  <32.387814, 26.351505, 24.079075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990419, 26.380302, 24.114429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029118, 0.909896, -0.413813,
		-0.110215, -0.408542, -0.906061,
		-0.993481, 0.071991, 0.088388,
		31.692375, 26.401899, 24.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131607, 26.633162, 23.395187>,  <32.387814, 26.351505, 24.079075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131607, 26.633162, 23.395187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855001, 26.718597, 23.671215>,  <31.689039, 26.769859, 23.836832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855001, 26.718597, 23.671215>,  <32.131607, 26.633162, 23.395187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855001, 26.718597, 23.671215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033641, 0.944729, -0.326122,
		-0.721582, -0.248732, -0.646105,
		-0.691511, 0.213588, 0.690067,
		31.647549, 26.782673, 23.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614035, 26.984406, 23.032846>,  <32.131607, 26.633162, 23.395187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614035, 26.984406, 23.032846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.480526, 27.108891, 23.388767>,  <31.400421, 27.183582, 23.602320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.480526, 27.108891, 23.388767>,  <31.614035, 26.984406, 23.032846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480526, 27.108891, 23.388767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140158, 0.917055, -0.373319,
		-0.932176, -0.249316, -0.262468,
		-0.333772, 0.311212, 0.889800,
		31.380394, 27.202253, 23.655706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924049, 27.162170, 23.008280>,  <31.614035, 26.984406, 23.032846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924049, 27.162170, 23.008280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.046963, 27.352348, 23.338013>,  <31.120710, 27.466455, 23.535852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.046963, 27.352348, 23.338013>,  <30.924049, 27.162170, 23.008280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046963, 27.352348, 23.338013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429396, 0.842319, -0.325756,
		-0.849233, -0.253866, 0.462986,
		0.307284, 0.475447, 0.824334,
		31.139149, 27.494982, 23.585314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502308, 27.650436, 23.004353>,  <30.924049, 27.162170, 23.008280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502308, 27.650436, 23.004353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.788794, 27.767872, 23.257603>,  <30.960684, 27.838333, 23.409554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.788794, 27.767872, 23.257603>,  <30.502308, 27.650436, 23.004353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788794, 27.767872, 23.257603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148898, 0.950603, -0.272366,
		-0.681814, 0.100801, 0.724548,
		0.716212, 0.293586, 0.633125,
		31.003656, 27.855947, 23.447540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257990, 28.137024, 23.382605>,  <30.502308, 27.650436, 23.004353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257990, 28.137024, 23.382605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.649704, 28.209400, 23.418953>,  <30.884733, 28.252827, 23.440762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.649704, 28.209400, 23.418953>,  <30.257990, 28.137024, 23.382605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649704, 28.209400, 23.418953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142579, 0.934894, -0.325029,
		-0.143767, 0.305340, 0.941328,
		0.979287, 0.180942, 0.090871,
		30.943489, 28.263683, 23.446215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269110, 28.747862, 23.707998>,  <30.257990, 28.137024, 23.382605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269110, 28.747862, 23.707998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.619089, 28.705643, 23.518970>,  <30.829077, 28.680311, 23.405554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.619089, 28.705643, 23.518970>,  <30.269110, 28.747862, 23.707998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619089, 28.705643, 23.518970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052041, 0.949802, -0.308492,
		0.481409, 0.294508, 0.825537,
		0.874950, -0.105549, -0.472570,
		30.881575, 28.673979, 23.377199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571791, 29.354845, 23.854441>,  <30.269110, 28.747862, 23.707998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571791, 29.354845, 23.854441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.793219, 29.210564, 23.554188>,  <30.926075, 29.123995, 23.374035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.793219, 29.210564, 23.554188>,  <30.571791, 29.354845, 23.854441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793219, 29.210564, 23.554188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093533, 0.922560, -0.374344,
		0.827532, 0.137017, 0.544441,
		0.553571, -0.360705, -0.750633,
		30.959290, 29.102352, 23.328999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321539, 29.705156, 23.692383>,  <30.571791, 29.354845, 23.854441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321539, 29.705156, 23.692383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.225979, 29.525375, 23.348076>,  <31.168642, 29.417507, 23.141493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.225979, 29.525375, 23.348076>,  <31.321539, 29.705156, 23.692383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225979, 29.525375, 23.348076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163996, 0.855026, -0.491972,
		0.957096, -0.258694, -0.130557,
		-0.238900, -0.449453, -0.860766,
		31.154308, 29.390539, 23.089846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922476, 29.726727, 23.212809>,  <31.321539, 29.705156, 23.692383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922476, 29.726727, 23.212809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.587355, 29.727505, 22.994419>,  <31.386282, 29.727972, 22.863386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.587355, 29.727505, 22.994419>,  <31.922476, 29.726727, 23.212809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587355, 29.727505, 22.994419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285582, 0.853848, -0.435186,
		0.465330, -0.520520, -0.715910,
		-0.837801, 0.001946, -0.545972,
		31.336014, 29.728088, 22.830627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091061, 30.246866, 22.548330>,  <31.922476, 29.726727, 23.212809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091061, 30.246866, 22.548330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.696146, 30.195229, 22.511238>,  <31.459198, 30.164246, 22.488983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.696146, 30.195229, 22.511238>,  <32.091061, 30.246866, 22.548330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696146, 30.195229, 22.511238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094656, 0.946197, -0.309436,
		0.127687, -0.296725, -0.946388,
		-0.987287, -0.129093, -0.092730,
		31.399960, 30.156500, 22.483419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895588, 30.311232, 21.866812>,  <32.091061, 30.246866, 22.548330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895588, 30.311232, 21.866812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.570002, 30.416973, 22.073723>,  <31.374649, 30.480419, 22.197870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.570002, 30.416973, 22.073723>,  <31.895588, 30.311232, 21.866812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570002, 30.416973, 22.073723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034799, 0.866669, -0.497669,
		-0.579870, -0.423086, -0.696239,
		-0.813965, 0.264355, 0.517279,
		31.325811, 30.496279, 22.228907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551802, 30.745840, 21.418055>,  <31.895588, 30.311232, 21.866812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551802, 30.745840, 21.418055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.357767, 30.846893, 21.752926>,  <31.241346, 30.907526, 21.953848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.357767, 30.846893, 21.752926>,  <31.551802, 30.745840, 21.418055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357767, 30.846893, 21.752926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149398, 0.919342, -0.363993,
		-0.861609, -0.301641, -0.408219,
		-0.485088, 0.252633, 0.837177,
		31.212240, 30.922684, 22.004080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099472, 31.170507, 21.170704>,  <31.551802, 30.745840, 21.418055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099472, 31.170507, 21.170704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.040144, 31.261742, 21.555614>,  <31.004547, 31.316483, 21.786560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.040144, 31.261742, 21.555614>,  <31.099472, 31.170507, 21.170704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040144, 31.261742, 21.555614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437575, 0.857470, -0.270691,
		-0.886864, -0.461218, -0.027377,
		-0.148322, 0.228087, 0.962277,
		30.995647, 31.330168, 21.844297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451355, 31.437849, 21.201212>,  <31.099472, 31.170507, 21.170704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451355, 31.437849, 21.201212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.631653, 31.587765, 21.525276>,  <30.739832, 31.677713, 21.719715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.631653, 31.587765, 21.525276>,  <30.451355, 31.437849, 21.201212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631653, 31.587765, 21.525276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441612, 0.882369, -0.162494,
		-0.775763, -0.284534, 0.563234,
		0.450745, 0.374787, 0.810162,
		30.766876, 31.700201, 21.768326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933954, 31.791714, 21.706718>,  <30.451355, 31.437849, 21.201212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933954, 31.791714, 21.706718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.288431, 31.957516, 21.789520>,  <30.501118, 32.056995, 21.839201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.288431, 31.957516, 21.789520>,  <29.933954, 31.791714, 21.706718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288431, 31.957516, 21.789520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409639, 0.909715, -0.067926,
		-0.216473, -0.024602, 0.975978,
		0.886191, 0.414503, 0.207006,
		30.554289, 32.081867, 21.851622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959900, 32.101662, 22.405552>,  <29.933954, 31.791714, 21.706718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959900, 32.101662, 22.405552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.160538, 32.234604, 22.086067>,  <30.280920, 32.314369, 21.894377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.160538, 32.234604, 22.086067>,  <29.959900, 32.101662, 22.405552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160538, 32.234604, 22.086067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666199, 0.737386, -0.111534,
		0.551890, 0.588046, 0.591286,
		0.501594, 0.332360, -0.798712,
		30.311016, 32.334312, 21.846453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223009, 31.964575, 22.261637>,  <29.959900, 32.101662, 22.405552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223009, 31.964575, 22.261637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849762, 31.849422, 22.175457>,  <28.625814, 31.780331, 22.123749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849762, 31.849422, 22.175457>,  <29.223009, 31.964575, 22.261637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849762, 31.849422, 22.175457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072573, -0.737630, 0.671294,
		-0.352174, 0.610760, 0.709187,
		-0.933117, -0.287880, -0.215449,
		28.569826, 31.763058, 22.110823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975504, 31.662458, 22.830719>,  <29.223009, 31.964575, 22.261637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975504, 31.662458, 22.830719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.683176, 31.517769, 22.599182>,  <28.507780, 31.430956, 22.460260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.683176, 31.517769, 22.599182>,  <28.975504, 31.662458, 22.830719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683176, 31.517769, 22.599182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126675, -0.761424, 0.635757,
		-0.670713, 0.537949, 0.510643,
		-0.730820, -0.361724, -0.578842,
		28.463930, 31.409252, 22.425529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344692, 31.459555, 23.292252>,  <28.975504, 31.662458, 22.830719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344692, 31.459555, 23.292252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.309046, 31.253670, 22.951164>,  <28.287659, 31.130138, 22.746511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.309046, 31.253670, 22.951164>,  <28.344692, 31.459555, 23.292252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309046, 31.253670, 22.951164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113881, -0.845245, 0.522103,
		-0.989489, 0.143636, 0.016709,
		-0.089116, -0.514713, -0.852719,
		28.282310, 31.099257, 22.695349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879520, 30.949602, 23.462048>,  <28.344692, 31.459555, 23.292252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879520, 30.949602, 23.462048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.054771, 30.823551, 23.125301>,  <28.159922, 30.747921, 22.923254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.054771, 30.823551, 23.125301>,  <27.879520, 30.949602, 23.462048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054771, 30.823551, 23.125301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061286, -0.944831, 0.321773,
		-0.896821, -0.089383, -0.433270,
		0.438128, -0.315127, -0.841866,
		28.186211, 30.729013, 22.872742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386484, 30.423250, 22.994028>,  <27.879520, 30.949602, 23.462048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386484, 30.423250, 22.994028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.763330, 30.350620, 22.881283>,  <27.989439, 30.307041, 22.813635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.763330, 30.350620, 22.881283>,  <27.386484, 30.423250, 22.994028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763330, 30.350620, 22.881283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112378, -0.963046, 0.244773,
		-0.315893, -0.198930, -0.927706,
		0.942116, -0.181576, -0.281864,
		28.045965, 30.296148, 22.796724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372581, 29.773418, 22.597782>,  <27.386484, 30.423250, 22.994028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372581, 29.773418, 22.597782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.755119, 29.808125, 22.709408>,  <27.984642, 29.828949, 22.776384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.755119, 29.808125, 22.709408>,  <27.372581, 29.773418, 22.597782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755119, 29.808125, 22.709408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015350, -0.938678, 0.344453,
		0.291840, -0.333700, -0.896367,
		0.956344, 0.086765, 0.279066,
		28.042023, 29.834154, 22.793127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646589, 29.142918, 22.398418>,  <27.372581, 29.773418, 22.597782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646589, 29.142918, 22.398418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.898951, 29.281433, 22.676136>,  <28.050367, 29.364542, 22.842768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.898951, 29.281433, 22.676136>,  <27.646589, 29.142918, 22.398418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898951, 29.281433, 22.676136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070499, -0.916755, 0.393180,
		0.772652, -0.199111, -0.602796,
		0.630903, 0.346287, 0.694296,
		28.088221, 29.385319, 22.884424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100273, 28.717482, 22.327120>,  <27.646589, 29.142918, 22.398418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100273, 28.717482, 22.327120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.136364, 28.882454, 22.689724>,  <28.158018, 28.981438, 22.907286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.136364, 28.882454, 22.689724>,  <28.100273, 28.717482, 22.327120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136364, 28.882454, 22.689724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148807, -0.905587, 0.397202,
		0.984741, 0.099057, -0.143080,
		0.090226, 0.412432, 0.906509,
		28.163431, 29.006184, 22.961678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710218, 28.504015, 22.558813>,  <28.100273, 28.717482, 22.327120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710218, 28.504015, 22.558813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.482967, 28.599762, 22.873756>,  <28.346617, 28.657211, 23.062723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.482967, 28.599762, 22.873756>,  <28.710218, 28.504015, 22.558813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482967, 28.599762, 22.873756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164379, -0.904474, 0.393582,
		0.806357, 0.353030, 0.474508,
		-0.568126, 0.239369, 0.787360,
		28.312529, 28.671572, 23.109964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103025, 28.256355, 23.190706>,  <28.710218, 28.504015, 22.558813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103025, 28.256355, 23.190706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.735319, 28.303867, 23.340820>,  <28.514694, 28.332375, 23.430889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.735319, 28.303867, 23.340820>,  <29.103025, 28.256355, 23.190706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735319, 28.303867, 23.340820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139534, -0.793150, 0.592826,
		0.368074, 0.597331, 0.712543,
		-0.919267, 0.118780, 0.375286,
		28.459539, 28.339500, 23.453405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233162, 28.176767, 23.842081>,  <29.103025, 28.256355, 23.190706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233162, 28.176767, 23.842081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.835205, 28.136765, 23.836594>,  <28.596432, 28.112762, 23.833302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.835205, 28.136765, 23.836594>,  <29.233162, 28.176767, 23.842081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835205, 28.136765, 23.836594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068709, -0.770461, 0.633774,
		-0.073951, 0.629594, 0.773397,
		-0.994892, -0.100007, -0.013717,
		28.536737, 28.106762, 23.832478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024271, 28.111940, 24.529251>,  <29.233162, 28.176767, 23.842081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024271, 28.111940, 24.529251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.733706, 27.953518, 24.304588>,  <28.559366, 27.858463, 24.169790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.733706, 27.953518, 24.304588>,  <29.024271, 28.111940, 24.529251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733706, 27.953518, 24.304588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156747, -0.700229, 0.696498,
		-0.669143, 0.593985, 0.446576,
		-0.726415, -0.396058, -0.561658,
		28.515781, 27.834700, 24.136091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468790, 27.922640, 25.033747>,  <29.024271, 28.111940, 24.529251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468790, 27.922640, 25.033747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.366877, 27.701725, 24.716240>,  <28.305729, 27.569176, 24.525736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.366877, 27.701725, 24.716240>,  <28.468790, 27.922640, 25.033747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366877, 27.701725, 24.716240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257465, -0.752483, 0.606203,
		-0.932093, 0.358818, 0.049526,
		-0.254784, -0.552286, -0.793767,
		28.290442, 27.536039, 24.478109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805922, 27.582237, 25.246952>,  <28.468790, 27.922640, 25.033747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805922, 27.582237, 25.246952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.993238, 27.361156, 24.971207>,  <28.105629, 27.228508, 24.805759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.993238, 27.361156, 24.971207>,  <27.805922, 27.582237, 25.246952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993238, 27.361156, 24.971207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282643, -0.832909, 0.475790,
		-0.837159, -0.027951, -0.546245,
		0.468271, -0.552704, -0.689377,
		28.133726, 27.195345, 24.764399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229120, 27.150846, 24.933001>,  <27.805922, 27.582237, 25.246952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229120, 27.150846, 24.933001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.585150, 26.981312, 24.865913>,  <27.798767, 26.879591, 24.825661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.585150, 26.981312, 24.865913>,  <27.229120, 27.150846, 24.933001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585150, 26.981312, 24.865913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300484, -0.822278, 0.483290,
		-0.342746, -0.379768, -0.859245,
		0.890075, -0.423835, -0.167719,
		27.852173, 26.854162, 24.815598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058287, 26.406225, 24.894442>,  <27.229120, 27.150846, 24.933001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058287, 26.406225, 24.894442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.452042, 26.392345, 24.963470>,  <27.688293, 26.384018, 25.004889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.452042, 26.392345, 24.963470>,  <27.058287, 26.406225, 24.894442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452042, 26.392345, 24.963470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112481, -0.878108, 0.465054,
		0.135402, -0.477203, -0.868299,
		0.984385, -0.034698, 0.172574,
		27.747356, 26.381935, 25.015244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342237, 25.710144, 24.648977>,  <27.058287, 26.406225, 24.894442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342237, 25.710144, 24.648977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.634569, 25.836082, 24.891220>,  <27.809969, 25.911646, 25.036566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.634569, 25.836082, 24.891220>,  <27.342237, 25.710144, 24.648977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634569, 25.836082, 24.891220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098846, -0.926725, 0.362506,
		0.675363, -0.205069, -0.708400,
		0.730831, 0.314846, 0.605605,
		27.853819, 25.930536, 25.072903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.195406, 25.234280, 24.460728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.219391, 25.414177, 24.817184>,  <28.233782, 25.522116, 25.031059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.219391, 25.414177, 24.817184>,  <28.195406, 25.234280, 24.460728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219391, 25.414177, 24.817184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151295, -0.886529, 0.437237,
		0.986668, 0.108608, -0.121202,
		0.059962, 0.449745, 0.891142,
		28.237379, 25.549101, 25.084528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750973, 24.936262, 24.795973>,  <28.195406, 25.234280, 24.460728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750973, 24.936262, 24.795973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.560165, 25.101944, 25.106041>,  <28.445681, 25.201353, 25.292082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.560165, 25.101944, 25.106041>,  <28.750973, 24.936262, 24.795973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560165, 25.101944, 25.106041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218444, -0.798432, 0.561060,
		0.851315, 0.436966, 0.290384,
		-0.477016, 0.414207, 0.775170,
		28.417061, 25.226206, 25.338593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222794, 24.845266, 25.377325>,  <28.750973, 24.936262, 24.795973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222794, 24.845266, 25.377325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848932, 24.895641, 25.510326>,  <28.624615, 24.925865, 25.590128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848932, 24.895641, 25.510326>,  <29.222794, 24.845266, 25.377325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848932, 24.895641, 25.510326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105868, -0.794183, 0.598386,
		0.339427, 0.594486, 0.728955,
		-0.934656, 0.125935, 0.332505,
		28.568535, 24.933422, 25.610077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246195, 24.830408, 26.182934>,  <29.222794, 24.845266, 25.377325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246195, 24.830408, 26.182934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.870235, 24.743210, 26.077812>,  <28.644659, 24.690891, 26.014740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.870235, 24.743210, 26.077812>,  <29.246195, 24.830408, 26.182934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870235, 24.743210, 26.077812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020787, -0.731711, 0.681298,
		-0.340817, 0.645814, 0.683204,
		-0.939900, -0.217996, -0.262804,
		28.588266, 24.677811, 25.998970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927704, 24.710836, 26.789753>,  <29.246195, 24.830408, 26.182934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927704, 24.710836, 26.789753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.679890, 24.544693, 26.523323>,  <28.531200, 24.445007, 26.363466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.679890, 24.544693, 26.523323>,  <28.927704, 24.710836, 26.789753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679890, 24.544693, 26.523323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063590, -0.872302, 0.484816,
		-0.782389, 0.258005, 0.566834,
		-0.619536, -0.415359, -0.666072,
		28.494030, 24.420086, 26.323502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697117, 24.233593, 27.186949>,  <28.927704, 24.710836, 26.789753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697117, 24.233593, 27.186949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.557592, 24.129684, 26.826759>,  <28.473879, 24.067339, 26.610645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.557592, 24.129684, 26.826759>,  <28.697117, 24.233593, 27.186949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557592, 24.129684, 26.826759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129394, -0.938267, 0.320799,
		-0.928218, 0.228414, 0.293663,
		-0.348809, -0.259773, -0.900472,
		28.452950, 24.051752, 26.556618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030600, 23.763117, 27.321859>,  <28.697117, 24.233593, 27.186949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030600, 23.763117, 27.321859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.184923, 23.694405, 26.959282>,  <28.277517, 23.653177, 26.741735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.184923, 23.694405, 26.959282>,  <28.030600, 23.763117, 27.321859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184923, 23.694405, 26.959282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045774, -0.984866, 0.167162,
		-0.921442, -0.023001, -0.387835,
		0.385810, -0.171783, -0.906444,
		28.300667, 23.642870, 26.687349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515636, 23.388842, 26.880770>,  <28.030600, 23.763117, 27.321859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515636, 23.388842, 26.880770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892630, 23.337376, 26.757374>,  <28.118826, 23.306496, 26.683336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892630, 23.337376, 26.757374>,  <27.515636, 23.388842, 26.880770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892630, 23.337376, 26.757374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019600, -0.942628, 0.333269,
		-0.333672, -0.308054, -0.890935,
		0.942485, -0.128665, -0.308491,
		28.175375, 23.298777, 26.664827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537275, 22.716194, 26.689814>,  <27.515636, 23.388842, 26.880770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537275, 22.716194, 26.689814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930544, 22.787132, 26.707336>,  <28.166506, 22.829695, 26.717850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930544, 22.787132, 26.707336>,  <27.537275, 22.716194, 26.689814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930544, 22.787132, 26.707336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167637, -0.971192, 0.169367,
		0.072583, -0.159173, -0.984579,
		0.983173, 0.177345, 0.043809,
		28.225496, 22.840336, 26.720478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890278, 22.339304, 26.135105>,  <27.537275, 22.716194, 26.689814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890278, 22.339304, 26.135105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104069, 22.391258, 26.469162>,  <28.232344, 22.422430, 26.669596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104069, 22.391258, 26.469162>,  <27.890278, 22.339304, 26.135105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104069, 22.391258, 26.469162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056181, -0.991396, 0.118229,
		0.843313, -0.016272, -0.537177,
		0.534478, 0.129884, 0.835143,
		28.264412, 22.430223, 26.719706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332552, 21.749220, 26.125303>,  <27.890278, 22.339304, 26.135105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332552, 21.749220, 26.125303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402689, 21.883034, 26.495674>,  <28.444771, 21.963322, 26.717897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402689, 21.883034, 26.495674>,  <28.332552, 21.749220, 26.125303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402689, 21.883034, 26.495674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183511, -0.935121, 0.303106,
		0.967253, 0.116770, -0.225356,
		0.175342, 0.334536, 0.925927,
		28.455292, 21.983395, 26.773453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754244, 21.300407, 26.405006>,  <28.332552, 21.749220, 26.125303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754244, 21.300407, 26.405006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615255, 21.476429, 26.736214>,  <28.531862, 21.582043, 26.934938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615255, 21.476429, 26.736214>,  <28.754244, 21.300407, 26.405006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615255, 21.476429, 26.736214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125378, -0.853307, 0.506110,
		0.929271, 0.279674, 0.241326,
		-0.347471, 0.440056, 0.828018,
		28.511013, 21.608446, 26.984619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156200, 20.924616, 26.976362>,  <28.754244, 21.300407, 26.405006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156200, 20.924616, 26.976362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848198, 21.095581, 27.165852>,  <28.663397, 21.198160, 27.279545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848198, 21.095581, 27.165852>,  <29.156200, 20.924616, 26.976362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848198, 21.095581, 27.165852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076055, -0.798658, 0.596960,
		0.633489, 0.423633, 0.647477,
		-0.770004, 0.427412, 0.473722,
		28.617197, 21.223804, 27.307968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372713, 20.919439, 27.686951>,  <29.156200, 20.924616, 26.976362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372713, 20.919439, 27.686951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.973410, 20.939774, 27.674988>,  <28.733828, 20.951975, 27.667810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.973410, 20.939774, 27.674988>,  <29.372713, 20.919439, 27.686951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973410, 20.939774, 27.674988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057015, -0.702006, 0.709886,
		0.015094, 0.710355, 0.703682,
		-0.998259, 0.050836, -0.029905,
		28.673931, 20.955025, 27.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238855, 20.772982, 28.385351>,  <29.372713, 20.919439, 27.686951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238855, 20.772982, 28.385351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887405, 20.740612, 28.197109>,  <28.676535, 20.721191, 28.084164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887405, 20.740612, 28.197109>,  <29.238855, 20.772982, 28.385351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887405, 20.740612, 28.197109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300982, -0.671260, 0.677363,
		-0.370712, 0.736792, 0.565430,
		-0.878625, -0.080923, -0.470605,
		28.623817, 20.716335, 28.055927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684967, 20.785894, 28.921041>,  <29.238855, 20.772982, 28.385351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684967, 20.785894, 28.921041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.540758, 20.614780, 28.589493>,  <28.454233, 20.512112, 28.390564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.540758, 20.614780, 28.589493>,  <28.684967, 20.785894, 28.921041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540758, 20.614780, 28.589493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325555, -0.775035, 0.541603,
		-0.874093, 0.465102, 0.140148,
		-0.360520, -0.427786, -0.828869,
		28.432602, 20.486444, 28.340832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020008, 20.577259, 29.036097>,  <28.684967, 20.785894, 28.921041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020008, 20.577259, 29.036097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140301, 20.332111, 28.743809>,  <28.212477, 20.185022, 28.568436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140301, 20.332111, 28.743809>,  <28.020008, 20.577259, 29.036097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140301, 20.332111, 28.743809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231870, -0.790182, 0.567317,
		-0.925093, -0.001179, -0.379740,
		0.300732, -0.612871, -0.730718,
		28.230520, 20.148251, 28.524593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494587, 20.078932, 28.872797>,  <28.020008, 20.577259, 29.036097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494587, 20.078932, 28.872797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.826740, 19.910400, 28.726948>,  <28.026031, 19.809282, 28.639439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.826740, 19.910400, 28.726948>,  <27.494587, 20.078932, 28.872797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826740, 19.910400, 28.726948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224420, -0.851863, 0.473250,
		-0.510002, -0.311149, -0.801925,
		0.830382, -0.421326, -0.364624,
		28.075855, 19.784002, 28.617561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252827, 19.498659, 28.931374>,  <27.494587, 20.078932, 28.872797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252827, 19.498659, 28.931374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.633808, 19.415863, 28.841946>,  <27.862398, 19.366184, 28.788288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.633808, 19.415863, 28.841946>,  <27.252827, 19.498659, 28.931374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633808, 19.415863, 28.841946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097568, -0.902362, 0.419790,
		-0.288633, -0.378018, -0.879655,
		0.952455, -0.206992, -0.223569,
		27.919544, 19.353765, 28.774876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347874, 18.722931, 28.678673>,  <27.252827, 19.498659, 28.931374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347874, 18.722931, 28.678673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.713085, 18.839394, 28.792938>,  <27.932213, 18.909271, 28.861498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.713085, 18.839394, 28.792938>,  <27.347874, 18.722931, 28.678673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713085, 18.839394, 28.792938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113387, -0.853906, 0.507925,
		0.391814, -0.431361, -0.812656,
		0.913031, 0.291157, 0.285662,
		27.986994, 18.926741, 28.878637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708652, 18.150381, 28.562737>,  <27.347874, 18.722931, 28.678673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708652, 18.150381, 28.562737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.910757, 18.376007, 28.823978>,  <28.032019, 18.511383, 28.980722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.910757, 18.376007, 28.823978>,  <27.708652, 18.150381, 28.562737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910757, 18.376007, 28.823978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107860, -0.792154, 0.600714,
		0.856200, -0.233073, -0.461084,
		0.505260, 0.564064, 0.653103,
		28.062336, 18.545227, 29.019909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362143, 17.770641, 28.732941>,  <27.708652, 18.150381, 28.562737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362143, 17.770641, 28.732941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.297132, 18.037930, 29.023338>,  <28.258127, 18.198301, 29.197577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.297132, 18.037930, 29.023338>,  <28.362143, 17.770641, 28.732941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297132, 18.037930, 29.023338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140576, -0.712592, 0.687351,
		0.976639, 0.213768, 0.021878,
		-0.162524, 0.668218, 0.725996,
		28.248375, 18.238396, 29.241137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964308, 17.788280, 29.384317>,  <28.362143, 17.770641, 28.732941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964308, 17.788280, 29.384317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609354, 17.917065, 29.516315>,  <28.396381, 17.994335, 29.595514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609354, 17.917065, 29.516315>,  <28.964308, 17.788280, 29.384317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609354, 17.917065, 29.516315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061687, -0.626415, 0.777045,
		0.456889, 0.709892, 0.536009,
		-0.887382, 0.321959, 0.329993,
		28.343140, 18.013653, 29.615313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215710, 17.816475, 30.111162>,  <28.964308, 17.788280, 29.384317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215710, 17.816475, 30.111162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.542292, 17.919853, 30.317699>,  <29.738241, 17.981880, 30.441622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.542292, 17.919853, 30.317699>,  <29.215710, 17.816475, 30.111162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542292, 17.919853, 30.317699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139204, 0.779763, -0.610403,
		-0.560381, 0.570243, 0.600663,
		0.816453, 0.258444, 0.516344,
		29.787228, 17.997387, 30.472603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154991, 18.547964, 30.024921>,  <29.215710, 17.816475, 30.111162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154991, 18.547964, 30.024921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528843, 18.469963, 30.143879>,  <29.753153, 18.423162, 30.215254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528843, 18.469963, 30.143879>,  <29.154991, 18.547964, 30.024921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528843, 18.469963, 30.143879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325338, 0.806560, -0.493576,
		-0.143617, 0.558064, 0.817276,
		0.934628, -0.195005, 0.297395,
		29.809231, 18.411461, 30.233097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491858, 19.129402, 30.414642>,  <29.154991, 18.547964, 30.024921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491858, 19.129402, 30.414642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790585, 18.898510, 30.282543>,  <29.969822, 18.759974, 30.203283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790585, 18.898510, 30.282543>,  <29.491858, 19.129402, 30.414642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790585, 18.898510, 30.282543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421447, 0.794943, -0.436404,
		0.514436, 0.186732, 0.836951,
		0.746819, -0.577232, -0.330250,
		30.014629, 18.725340, 30.183468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993427, 19.600431, 30.453379>,  <29.491858, 19.129402, 30.414642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993427, 19.600431, 30.453379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.138367, 19.309261, 30.220543>,  <30.225330, 19.134560, 30.080841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.138367, 19.309261, 30.220543>,  <29.993427, 19.600431, 30.453379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138367, 19.309261, 30.220543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580576, 0.664846, -0.470012,
		0.729134, -0.167639, 0.663522,
		0.362347, -0.727927, -0.582089,
		30.247070, 19.090883, 30.045916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634275, 19.813772, 30.353281>,  <29.993427, 19.600431, 30.453379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634275, 19.813772, 30.353281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.622478, 19.537319, 30.064430>,  <30.615400, 19.371447, 29.891119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.622478, 19.537319, 30.064430>,  <30.634275, 19.813772, 30.353281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622478, 19.537319, 30.064430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443241, 0.638486, -0.629184,
		0.895917, -0.338633, 0.287507,
		-0.029493, -0.691132, -0.722127,
		30.613630, 19.329979, 29.847792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404627, 19.730515, 30.187141>,  <30.634275, 19.813772, 30.353281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404627, 19.730515, 30.187141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156061, 19.614712, 29.895927>,  <31.006922, 19.545231, 29.721199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156061, 19.614712, 29.895927>,  <31.404627, 19.730515, 30.187141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156061, 19.614712, 29.895927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360968, 0.718938, -0.593995,
		0.695374, -0.631914, -0.342257,
		-0.621415, -0.289505, -0.728032,
		30.969637, 19.527859, 29.677517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823038, 19.667030, 29.593374>,  <31.404627, 19.730515, 30.187141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823038, 19.667030, 29.593374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454979, 19.696014, 29.439449>,  <31.234144, 19.713406, 29.347094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454979, 19.696014, 29.439449>,  <31.823038, 19.667030, 29.593374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454979, 19.696014, 29.439449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335559, 0.652418, -0.679522,
		0.201819, -0.754387, -0.624636,
		-0.920146, 0.072462, -0.384812,
		31.178936, 19.717752, 29.324005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870678, 19.667048, 28.862694>,  <31.823038, 19.667030, 29.593374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870678, 19.667048, 28.862694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514780, 19.839851, 28.921646>,  <31.301241, 19.943535, 28.957018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514780, 19.839851, 28.921646>,  <31.870678, 19.667048, 28.862694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514780, 19.839851, 28.921646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238556, 0.715371, -0.656761,
		-0.389162, -0.549190, -0.739556,
		-0.889744, 0.432012, 0.147383,
		31.247856, 19.969456, 28.965860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621809, 19.988047, 28.186680>,  <31.870678, 19.667048, 28.862694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621809, 19.988047, 28.186680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405739, 20.185238, 28.459496>,  <31.276096, 20.303553, 28.623186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405739, 20.185238, 28.459496>,  <31.621809, 19.988047, 28.186680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405739, 20.185238, 28.459496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086856, 0.773470, -0.627853,
		-0.837057, -0.398391, -0.374992,
		-0.540177, 0.492979, 0.682042,
		31.243687, 20.333132, 28.664108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952288, 20.209824, 27.898438>,  <31.621809, 19.988047, 28.186680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952288, 20.209824, 27.898438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048826, 20.455009, 28.199375>,  <31.106749, 20.602121, 28.379938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048826, 20.455009, 28.199375>,  <30.952288, 20.209824, 27.898438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048826, 20.455009, 28.199375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130002, 0.788697, -0.600880,
		-0.961692, 0.047214, 0.270036,
		0.241347, 0.612966, 0.752346,
		31.121231, 20.638899, 28.425079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478491, 20.640633, 27.852110>,  <30.952288, 20.209824, 27.898438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478491, 20.640633, 27.852110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742659, 20.847706, 28.069679>,  <30.901159, 20.971951, 28.200220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742659, 20.847706, 28.069679>,  <30.478491, 20.640633, 27.852110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742659, 20.847706, 28.069679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276444, 0.841108, -0.464882,
		-0.698160, 0.156652, 0.698593,
		0.660417, 0.517684, 0.543923,
		30.940784, 21.003012, 28.232857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128616, 21.289646, 28.104439>,  <30.478491, 20.640633, 27.852110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128616, 21.289646, 28.104439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.521185, 21.357647, 28.140015>,  <30.756727, 21.398447, 28.161360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.521185, 21.357647, 28.140015>,  <30.128616, 21.289646, 28.104439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521185, 21.357647, 28.140015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126256, 0.921299, -0.367788,
		-0.144463, 0.349727, 0.925647,
		0.981422, 0.170000, 0.088939,
		30.815611, 21.408648, 28.166697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125011, 21.988506, 28.300774>,  <30.128616, 21.289646, 28.104439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125011, 21.988506, 28.300774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.480267, 21.916698, 28.131546>,  <30.693419, 21.873613, 28.030010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.480267, 21.916698, 28.131546>,  <30.125011, 21.988506, 28.300774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480267, 21.916698, 28.131546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078495, 0.847773, -0.524518,
		0.452827, 0.499052, 0.738846,
		0.888136, -0.179521, -0.423068,
		30.746708, 21.862843, 28.004625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488407, 22.651325, 28.207869>,  <30.125011, 21.988506, 28.300774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488407, 22.651325, 28.207869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677217, 22.413685, 27.947334>,  <30.790503, 22.271101, 27.791014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677217, 22.413685, 27.947334>,  <30.488407, 22.651325, 28.207869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677217, 22.413685, 27.947334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146228, 0.781352, -0.606718,
		0.869374, 0.191142, 0.455691,
		0.472024, -0.594099, -0.651336,
		30.818825, 22.235455, 27.751934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925755, 23.059179, 27.952183>,  <30.488407, 22.651325, 28.207869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925755, 23.059179, 27.952183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920658, 22.759041, 27.687813>,  <30.917601, 22.578959, 27.529192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920658, 22.759041, 27.687813>,  <30.925755, 23.059179, 27.952183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920658, 22.759041, 27.687813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330671, 0.620628, -0.710970,
		0.943660, -0.227605, 0.240211,
		-0.012739, -0.750345, -0.660924,
		30.916836, 22.533937, 27.489536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486612, 23.178080, 27.505472>,  <30.925755, 23.059179, 27.952183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486612, 23.178080, 27.505472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262222, 22.915028, 27.304344>,  <31.127588, 22.757196, 27.183666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262222, 22.915028, 27.304344>,  <31.486612, 23.178080, 27.505472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262222, 22.915028, 27.304344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235004, 0.455900, -0.858445,
		0.793775, -0.599732, -0.101203,
		-0.560976, -0.657629, -0.502822,
		31.093929, 22.717739, 27.153498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840313, 23.088366, 26.846033>,  <31.486612, 23.178080, 27.505472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840313, 23.088366, 26.846033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460323, 22.971970, 26.800652>,  <31.232328, 22.902132, 26.773422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460323, 22.971970, 26.800652>,  <31.840313, 23.088366, 26.846033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460323, 22.971970, 26.800652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010760, 0.393532, -0.919248,
		0.312136, -0.872043, -0.376977,
		-0.949976, -0.290986, -0.113452,
		31.175331, 22.884674, 26.766615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897778, 22.733206, 26.263813>,  <31.840313, 23.088366, 26.846033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897778, 22.733206, 26.263813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517633, 22.848877, 26.309761>,  <31.289547, 22.918280, 26.337330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517633, 22.848877, 26.309761>,  <31.897778, 22.733206, 26.263813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517633, 22.848877, 26.309761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064954, 0.545414, -0.835646,
		-0.304304, -0.786702, -0.537122,
		-0.950358, 0.289179, 0.114872,
		31.232527, 22.935631, 26.344223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605883, 22.720964, 25.570860>,  <31.897778, 22.733206, 26.263813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605883, 22.720964, 25.570860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373039, 22.974751, 25.774273>,  <31.233334, 23.127022, 25.896320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373039, 22.974751, 25.774273>,  <31.605883, 22.720964, 25.570860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373039, 22.974751, 25.774273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027253, 0.609840, -0.792055,
		-0.812653, -0.474923, -0.337703,
		-0.582110, 0.634463, 0.508532,
		31.198406, 23.165089, 25.926832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068399, 23.004784, 25.008089>,  <31.605883, 22.720964, 25.570860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068399, 23.004784, 25.008089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.058390, 23.244328, 25.328274>,  <31.052383, 23.388054, 25.520386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.058390, 23.244328, 25.328274>,  <31.068399, 23.004784, 25.008089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058390, 23.244328, 25.328274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016004, 0.800852, -0.598648,
		-0.999559, -0.002171, -0.029626,
		-0.025026, 0.598858, 0.800464,
		31.050882, 23.423985, 25.568413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730923, 23.489449, 24.807125>,  <31.068399, 23.004784, 25.008089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730923, 23.489449, 24.807125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871456, 23.653755, 25.143658>,  <30.955776, 23.752338, 25.345577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871456, 23.653755, 25.143658>,  <30.730923, 23.489449, 24.807125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871456, 23.653755, 25.143658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009504, 0.900136, -0.435506,
		-0.936202, 0.145012, 0.320152,
		0.351333, 0.410765, 0.841331,
		30.976856, 23.776985, 25.396057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.110661, 37.770439, 15.621490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.458368, 37.662601, 15.455749>,  <22.666992, 37.597897, 15.356303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.458368, 37.662601, 15.455749>,  <22.110661, 37.770439, 15.621490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458368, 37.662601, 15.455749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226587, -0.527665, 0.818675,
		-0.439352, -0.805535, -0.397596,
		0.869269, -0.269597, -0.414354,
		22.719149, 37.581722, 15.331442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.254890, 37.010212, 15.730067>,  <22.110661, 37.770439, 15.621490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.254890, 37.010212, 15.730067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.614870, 37.149384, 15.624967>,  <22.830858, 37.232887, 15.561906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.614870, 37.149384, 15.624967>,  <22.254890, 37.010212, 15.730067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.614870, 37.149384, 15.624967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426796, -0.579885, 0.693959,
		0.089080, -0.736669, -0.670361,
		0.899950, 0.347925, -0.262752,
		22.884855, 37.253761, 15.546141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717224, 36.463642, 15.558632>,  <22.254890, 37.010212, 15.730067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717224, 36.463642, 15.558632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.962677, 36.758190, 15.672627>,  <23.109949, 36.934917, 15.741025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.962677, 36.758190, 15.672627>,  <22.717224, 36.463642, 15.558632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.962677, 36.758190, 15.672627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369712, -0.586875, 0.720340,
		0.697688, -0.336660, -0.632369,
		0.613632, 0.736368, 0.284989,
		23.146767, 36.979099, 15.758124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.211308, 36.050716, 15.769900>,  <22.717224, 36.463642, 15.558632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.211308, 36.050716, 15.769900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.316286, 36.401981, 15.929873>,  <23.379274, 36.612740, 16.025858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.316286, 36.401981, 15.929873>,  <23.211308, 36.050716, 15.769900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.316286, 36.401981, 15.929873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334825, -0.471587, 0.815781,
		0.904994, -0.080193, -0.417799,
		0.262449, 0.878166, 0.399933,
		23.395021, 36.665432, 16.049852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.873867, 36.035667, 16.223490>,  <23.211308, 36.050716, 15.769900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.873867, 36.035667, 16.223490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.696928, 36.373810, 16.343288>,  <23.590765, 36.576694, 16.415167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.696928, 36.373810, 16.343288>,  <23.873867, 36.035667, 16.223490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.696928, 36.373810, 16.343288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136073, -0.266817, 0.954093,
		0.886460, 0.462796, 0.002996,
		-0.442349, 0.845357, 0.299497,
		23.564222, 36.627419, 16.433138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254581, 36.364185, 16.836830>,  <23.873867, 36.035667, 16.223490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254581, 36.364185, 16.836830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.876587, 36.489513, 16.874420>,  <23.649790, 36.564713, 16.896975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.876587, 36.489513, 16.874420>,  <24.254581, 36.364185, 16.836830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.876587, 36.489513, 16.874420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104705, 0.017552, 0.994348,
		0.309904, 0.949484, -0.049393,
		-0.944985, 0.313324, 0.093976,
		23.593092, 36.583511, 16.902613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.232798, 36.870029, 17.385996>,  <24.254581, 36.364185, 16.836830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.232798, 36.870029, 17.385996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.844627, 36.789711, 17.332394>,  <23.611725, 36.741520, 17.300232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.844627, 36.789711, 17.332394>,  <24.232798, 36.870029, 17.385996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844627, 36.789711, 17.332394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156800, 0.102229, 0.982325,
		-0.183544, 0.974285, -0.130689,
		-0.970426, -0.200792, -0.134004,
		23.553499, 36.729473, 17.292192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.728617, 37.368675, 17.805460>,  <24.232798, 36.870029, 17.385996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.728617, 37.368675, 17.805460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503862, 37.042706, 17.748631>,  <23.369009, 36.847122, 17.714533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503862, 37.042706, 17.748631>,  <23.728617, 37.368675, 17.805460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.503862, 37.042706, 17.748631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288102, 0.031792, 0.957072,
		-0.775423, 0.578697, -0.252645,
		-0.561886, -0.814923, -0.142072,
		23.335297, 36.798229, 17.706009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.109699, 37.570858, 18.121264>,  <23.728617, 37.368675, 17.805460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.109699, 37.570858, 18.121264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.065317, 37.177422, 18.064369>,  <23.038689, 36.941360, 18.030233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.065317, 37.177422, 18.064369>,  <23.109699, 37.570858, 18.121264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.065317, 37.177422, 18.064369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489290, -0.070508, 0.869266,
		-0.865034, 0.166044, -0.473440,
		-0.110955, -0.983595, -0.142235,
		23.032030, 36.882343, 18.021698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.410769, 37.342182, 18.316839>,  <23.109699, 37.570858, 18.121264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.410769, 37.342182, 18.316839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.607224, 36.993790, 18.322224>,  <22.725098, 36.784756, 18.325455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.607224, 36.993790, 18.322224>,  <22.410769, 37.342182, 18.316839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.607224, 36.993790, 18.322224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333661, -0.173831, 0.926528,
		-0.804645, -0.459545, -0.375986,
		0.491139, -0.870977, 0.013460,
		22.754566, 36.732498, 18.326262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994711, 36.795155, 18.644318>,  <22.410769, 37.342182, 18.316839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994711, 36.795155, 18.644318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.381538, 36.698250, 18.675529>,  <22.613634, 36.640106, 18.694256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.381538, 36.698250, 18.675529>,  <21.994711, 36.795155, 18.644318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.381538, 36.698250, 18.675529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111535, -0.127819, 0.985506,
		-0.228780, -0.961753, -0.150631,
		0.967068, -0.242265, 0.078027,
		22.671659, 36.625572, 18.698938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.886423, 36.257339, 19.197334>,  <21.994711, 36.795155, 18.644318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.886423, 36.257339, 19.197334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.270239, 36.368774, 19.180958>,  <22.500528, 36.435635, 19.171131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.270239, 36.368774, 19.180958>,  <21.886423, 36.257339, 19.197334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.270239, 36.368774, 19.180958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044753, -0.007333, 0.998971,
		0.277997, -0.960384, -0.019503,
		0.959539, 0.278584, -0.040942,
		22.558100, 36.452351, 19.168674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264780, 35.867859, 19.626606>,  <21.886423, 36.257339, 19.197334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264780, 35.867859, 19.626606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.490149, 36.198227, 19.618492>,  <22.625370, 36.396446, 19.613625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.490149, 36.198227, 19.618492>,  <22.264780, 35.867859, 19.626606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490149, 36.198227, 19.618492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275947, 0.211272, 0.937666,
		0.778723, -0.522704, 0.346945,
		0.563421, 0.825921, -0.020284,
		22.659176, 36.446003, 19.612408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.602787, 35.883575, 20.314955>,  <22.264780, 35.867859, 19.626606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.602787, 35.883575, 20.314955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.641428, 36.252907, 20.166294>,  <22.664612, 36.474506, 20.077097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.641428, 36.252907, 20.166294>,  <22.602787, 35.883575, 20.314955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.641428, 36.252907, 20.166294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094741, 0.380232, 0.920026,
		0.990804, -0.053666, 0.124209,
		0.096603, 0.923333, -0.371651,
		22.670408, 36.529907, 20.054798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.142681, 36.244915, 20.733534>,  <22.602787, 35.883575, 20.314955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.142681, 36.244915, 20.733534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.926176, 36.532120, 20.558491>,  <22.796274, 36.704441, 20.453465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.926176, 36.532120, 20.558491>,  <23.142681, 36.244915, 20.733534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.926176, 36.532120, 20.558491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016245, 0.511404, 0.859187,
		0.840698, 0.472153, -0.265139,
		-0.541261, 0.718009, -0.437606,
		22.763798, 36.747524, 20.427208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.501709, 36.824383, 20.880075>,  <23.142681, 36.244915, 20.733534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.501709, 36.824383, 20.880075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134628, 36.956963, 20.792469>,  <22.914381, 37.036510, 20.739904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134628, 36.956963, 20.792469>,  <23.501709, 36.824383, 20.880075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.134628, 36.956963, 20.792469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054284, 0.441514, 0.895611,
		0.393547, 0.833791, -0.387186,
		-0.917700, 0.331447, -0.219018,
		22.859318, 37.056396, 20.726763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.525276, 37.563179, 21.045460>,  <23.501709, 36.824383, 20.880075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.525276, 37.563179, 21.045460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.136465, 37.469578, 21.037388>,  <22.903179, 37.413418, 21.032545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.136465, 37.469578, 21.037388>,  <23.525276, 37.563179, 21.045460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.136465, 37.469578, 21.037388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132314, 0.474564, 0.870219,
		-0.194061, 0.848546, -0.492251,
		-0.972025, -0.234007, -0.020180,
		22.844858, 37.399376, 21.031334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.172468, 38.172009, 21.121387>,  <23.525276, 37.563179, 21.045460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.172468, 38.172009, 21.121387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.913263, 37.881981, 21.214642>,  <22.757740, 37.707962, 21.270594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.913263, 37.881981, 21.214642>,  <23.172468, 38.172009, 21.121387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.913263, 37.881981, 21.214642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242893, 0.486856, 0.839032,
		-0.721860, 0.487077, -0.491604,
		-0.648013, -0.725071, 0.233134,
		22.718859, 37.664459, 21.284582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623003, 38.528053, 21.360872>,  <23.172468, 38.172009, 21.121387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623003, 38.528053, 21.360872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.623138, 38.160713, 21.519176>,  <22.623219, 37.940308, 21.614159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.623138, 38.160713, 21.519176>,  <22.623003, 38.528053, 21.360872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623138, 38.160713, 21.519176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155543, 0.390895, 0.907197,
		-0.987829, -0.061864, -0.142712,
		0.000337, -0.918354, 0.395760,
		22.623240, 37.885208, 21.637905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.973396, 38.547832, 21.786007>,  <22.623003, 38.528053, 21.360872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.973396, 38.547832, 21.786007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.179646, 38.231350, 21.917534>,  <22.303396, 38.041458, 21.996450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.179646, 38.231350, 21.917534>,  <21.973396, 38.547832, 21.786007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.179646, 38.231350, 21.917534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439031, 0.085584, 0.894387,
		-0.735788, -0.605528, -0.303235,
		0.515624, -0.791208, 0.328817,
		22.334333, 37.993988, 22.016180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443499, 38.075554, 22.233717>,  <21.973396, 38.547832, 21.786007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443499, 38.075554, 22.233717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814003, 37.984367, 22.353764>,  <22.036306, 37.929653, 22.425791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814003, 37.984367, 22.353764>,  <21.443499, 38.075554, 22.233717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814003, 37.984367, 22.353764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301240, 0.030696, 0.953054,
		-0.226480, -0.973184, -0.040241,
		0.926262, -0.227970, 0.300114,
		22.091881, 37.915977, 22.443798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.014418, 38.497360, 21.787403>,  <21.443499, 38.075554, 22.233717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.014418, 38.497360, 21.787403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.665363, 38.647194, 21.662060>,  <20.455931, 38.737095, 21.586853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.665363, 38.647194, 21.662060>,  <21.014418, 38.497360, 21.787403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665363, 38.647194, 21.662060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188994, -0.332633, -0.923925,
		-0.450319, -0.865473, 0.219474,
		-0.872636, 0.374582, -0.313360,
		20.403572, 38.759567, 21.568052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723713, 37.954670, 21.418564>,  <21.014418, 38.497360, 21.787403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723713, 37.954670, 21.418564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.531404, 38.287136, 21.306835>,  <20.416019, 38.486614, 21.239798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.531404, 38.287136, 21.306835>,  <20.723713, 37.954670, 21.418564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.531404, 38.287136, 21.306835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114769, -0.375460, -0.919705,
		-0.869302, -0.410112, 0.275903,
		-0.480773, 0.831166, -0.279320,
		20.387173, 38.536488, 21.223040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.137741, 37.687721, 21.096243>,  <20.723713, 37.954670, 21.418564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.137741, 37.687721, 21.096243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.210777, 38.053406, 20.951534>,  <20.254599, 38.272816, 20.864710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.210777, 38.053406, 20.951534>,  <20.137741, 37.687721, 21.096243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210777, 38.053406, 20.951534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250569, -0.312538, -0.916262,
		-0.950724, 0.257947, 0.172007,
		0.182588, 0.914212, -0.361771,
		20.265554, 38.327671, 20.843002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589315, 37.766705, 20.564547>,  <20.137741, 37.687721, 21.096243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589315, 37.766705, 20.564547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.854399, 38.057690, 20.493420>,  <20.013449, 38.232281, 20.450745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.854399, 38.057690, 20.493420>,  <19.589315, 37.766705, 20.564547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854399, 38.057690, 20.493420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013406, -0.248931, -0.968428,
		-0.748757, 0.639402, -0.174721,
		0.662708, 0.727461, -0.177817,
		20.053211, 38.275928, 20.440075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392130, 38.085358, 19.859846>,  <19.589315, 37.766705, 20.564547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392130, 38.085358, 19.859846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.773460, 38.178532, 19.936699>,  <20.002258, 38.234436, 19.982811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.773460, 38.178532, 19.936699>,  <19.392130, 38.085358, 19.859846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773460, 38.178532, 19.936699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241301, -0.205199, -0.948508,
		-0.181512, 0.950598, -0.251828,
		0.953324, 0.232932, 0.192134,
		20.059458, 38.248413, 19.994339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588623, 38.539204, 19.333513>,  <19.392130, 38.085358, 19.859846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588623, 38.539204, 19.333513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.932711, 38.385422, 19.467510>,  <20.139164, 38.293152, 19.547909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.932711, 38.385422, 19.467510>,  <19.588623, 38.539204, 19.333513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932711, 38.385422, 19.467510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301836, -0.145596, -0.942177,
		0.410996, 0.911591, -0.009203,
		0.860219, -0.384453, 0.334990,
		20.190777, 38.270084, 19.568007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.028484, 38.611164, 18.785652>,  <19.588623, 38.539204, 19.333513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.028484, 38.611164, 18.785652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.258614, 38.364861, 19.001003>,  <20.396692, 38.217079, 19.130213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.258614, 38.364861, 19.001003>,  <20.028484, 38.611164, 18.785652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.258614, 38.364861, 19.001003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360257, -0.400167, -0.842663,
		0.734314, 0.678758, -0.008396,
		0.575324, -0.615754, 0.538376,
		20.431211, 38.180134, 19.162516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836077, 38.609669, 18.458014>,  <20.028484, 38.611164, 18.785652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836077, 38.609669, 18.458014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732859, 38.288246, 18.672569>,  <20.670927, 38.095394, 18.801302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732859, 38.288246, 18.672569>,  <20.836077, 38.609669, 18.458014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732859, 38.288246, 18.672569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133608, -0.579536, -0.803920,
		0.956850, -0.135782, 0.256908,
		-0.258045, -0.803555, 0.536388,
		20.655445, 38.047180, 18.833485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337904, 38.161659, 18.221182>,  <20.836077, 38.609669, 18.458014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337904, 38.161659, 18.221182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.059441, 37.932827, 18.394657>,  <20.892363, 37.795528, 18.498743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.059441, 37.932827, 18.394657>,  <21.337904, 38.161659, 18.221182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059441, 37.932827, 18.394657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029859, -0.580521, -0.813697,
		0.717269, -0.579410, 0.387052,
		-0.696156, -0.572083, 0.433690,
		20.850594, 37.761204, 18.524765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557096, 37.532429, 18.059492>,  <21.337904, 38.161659, 18.221182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557096, 37.532429, 18.059492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.168608, 37.495678, 18.147392>,  <20.935514, 37.473629, 18.200132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.168608, 37.495678, 18.147392>,  <21.557096, 37.532429, 18.059492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168608, 37.495678, 18.147392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146028, -0.499175, -0.854108,
		0.188166, -0.861616, 0.471392,
		-0.971220, -0.091878, 0.219748,
		20.877241, 37.468113, 18.213316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.430300, 36.852234, 17.972502>,  <21.557096, 37.532429, 18.059492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.430300, 36.852234, 17.972502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.069942, 37.025242, 17.957966>,  <20.853729, 37.129047, 17.949244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.069942, 37.025242, 17.957966>,  <21.430300, 36.852234, 17.972502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.069942, 37.025242, 17.957966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142316, -0.373450, -0.916669,
		-0.410054, -0.820645, 0.397992,
		-0.900889, 0.432524, -0.036344,
		20.799675, 37.154999, 17.947063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.925882, 36.279366, 17.783510>,  <21.430300, 36.852234, 17.972502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.925882, 36.279366, 17.783510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.748810, 36.623554, 17.682621>,  <20.642567, 36.830067, 17.622087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.748810, 36.623554, 17.682621>,  <20.925882, 36.279366, 17.783510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.748810, 36.623554, 17.682621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232606, -0.381856, -0.894472,
		-0.865985, -0.337295, 0.369192,
		-0.442679, 0.860475, -0.252225,
		20.616007, 36.881699, 17.606953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.418802, 36.064232, 17.363884>,  <20.925882, 36.279366, 17.783510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.418802, 36.064232, 17.363884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.415956, 36.449501, 17.256371>,  <20.414249, 36.680664, 17.191862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.415956, 36.449501, 17.256371>,  <20.418802, 36.064232, 17.363884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.415956, 36.449501, 17.256371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322449, -0.256640, -0.911132,
		-0.946560, 0.080186, 0.312401,
		-0.007114, 0.963175, -0.268781,
		20.413822, 36.738453, 17.175735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781019, 36.195972, 17.033173>,  <20.418802, 36.064232, 17.363884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781019, 36.195972, 17.033173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.001650, 36.504642, 16.906506>,  <20.134027, 36.689846, 16.830505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.001650, 36.504642, 16.906506>,  <19.781019, 36.195972, 17.033173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.001650, 36.504642, 16.906506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338264, -0.140089, -0.930566,
		-0.762458, 0.620395, 0.183761,
		0.551575, 0.771677, -0.316669,
		20.167122, 36.736145, 16.811504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403818, 36.590298, 16.553040>,  <19.781019, 36.195972, 17.033173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403818, 36.590298, 16.553040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771357, 36.723385, 16.468170>,  <19.991880, 36.803238, 16.417250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771357, 36.723385, 16.468170>,  <19.403818, 36.590298, 16.553040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771357, 36.723385, 16.468170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274680, 0.153240, -0.949246,
		-0.283320, 0.930492, 0.232196,
		0.918847, 0.332720, -0.212171,
		20.047010, 36.823200, 16.404518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255356, 37.067127, 16.045990>,  <19.403818, 36.590298, 16.553040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.255356, 37.067127, 16.045990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.644955, 36.996460, 15.989253>,  <19.878714, 36.954060, 15.955212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.644955, 36.996460, 15.989253>,  <19.255356, 37.067127, 16.045990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644955, 36.996460, 15.989253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150212, -0.034876, -0.988039,
		0.169608, 0.983653, -0.060506,
		0.973997, -0.176668, -0.141841,
		19.937153, 36.943459, 15.946701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535221, 37.522335, 15.526636>,  <19.255356, 37.067127, 16.045990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535221, 37.522335, 15.526636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.787546, 37.211964, 15.527631>,  <19.938942, 37.025742, 15.528228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.787546, 37.211964, 15.527631>,  <19.535221, 37.522335, 15.526636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787546, 37.211964, 15.527631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249579, -0.205934, -0.946204,
		0.734700, 0.596258, -0.323562,
		0.630814, -0.775930, 0.002486,
		19.976789, 36.979183, 15.528377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991875, 37.614353, 14.979432>,  <19.535221, 37.522335, 15.526636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991875, 37.614353, 14.979432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.960264, 37.220791, 15.043529>,  <19.941298, 36.984653, 15.081986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.960264, 37.220791, 15.043529>,  <19.991875, 37.614353, 14.979432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960264, 37.220791, 15.043529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219898, -0.139579, -0.965486,
		0.972317, -0.111536, -0.205329,
		-0.079027, -0.983909, 0.160241,
		19.936556, 36.925617, 15.091601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152643, 37.314533, 14.303818>,  <19.991875, 37.614353, 14.979432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152643, 37.314533, 14.303818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031746, 36.984962, 14.495566>,  <19.959208, 36.787220, 14.610616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031746, 36.984962, 14.495566>,  <20.152643, 37.314533, 14.303818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031746, 36.984962, 14.495566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171112, -0.447827, -0.877594,
		0.937747, -0.347274, -0.005630,
		-0.302244, -0.823924, 0.479372,
		19.941072, 36.737785, 14.639378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.475206, 36.802162, 13.940408>,  <20.152643, 37.314533, 14.303818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.475206, 36.802162, 13.940408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.166676, 36.632088, 14.129834>,  <19.981556, 36.530041, 14.243490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.166676, 36.632088, 14.129834>,  <20.475206, 36.802162, 13.940408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166676, 36.632088, 14.129834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312556, -0.395109, -0.863827,
		0.554402, -0.814311, 0.171862,
		-0.771328, -0.425191, 0.473567,
		19.935278, 36.504532, 14.271904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.408920, 36.171700, 13.751892>,  <20.475206, 36.802162, 13.940408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.408920, 36.171700, 13.751892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.034971, 36.221649, 13.884812>,  <19.810602, 36.251617, 13.964564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.034971, 36.221649, 13.884812>,  <20.408920, 36.171700, 13.751892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034971, 36.221649, 13.884812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354451, -0.379845, -0.854449,
		0.019527, -0.916583, 0.399366,
		-0.934871, 0.124871, 0.332301,
		19.754511, 36.259109, 13.984503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.271275, 27.917570, 23.671038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661190, 27.986351, 23.727917>,  <27.895140, 28.027620, 23.762045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661190, 27.986351, 23.727917>,  <27.271275, 27.917570, 23.671038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661190, 27.986351, 23.727917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109107, 0.923217, -0.368465,
		-0.194638, 0.343660, 0.918702,
		0.974788, 0.171954, 0.142197,
		27.953627, 28.037937, 23.770576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261053, 28.569487, 23.865490>,  <27.271275, 27.917570, 23.671038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261053, 28.569487, 23.865490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639326, 28.501953, 23.754368>,  <27.866291, 28.461433, 23.687695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639326, 28.501953, 23.754368>,  <27.261053, 28.569487, 23.865490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639326, 28.501953, 23.754368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074029, 0.943949, -0.321682,
		0.316544, 0.283644, 0.905177,
		0.945685, -0.168836, -0.277803,
		27.923031, 28.451302, 23.671026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693518, 29.099541, 24.174433>,  <27.261053, 28.569487, 23.865490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693518, 29.099541, 24.174433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878389, 28.958527, 23.848953>,  <27.989313, 28.873919, 23.653666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878389, 28.958527, 23.848953>,  <27.693518, 29.099541, 24.174433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878389, 28.958527, 23.848953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057180, 0.927521, -0.369372,
		0.884940, 0.124189, 0.448840,
		0.462181, -0.352537, -0.813700,
		28.017044, 28.852766, 23.604843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301891, 29.500914, 24.170584>,  <27.693518, 29.099541, 24.174433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301891, 29.500914, 24.170584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268066, 29.354340, 23.799946>,  <28.247772, 29.266396, 23.577564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268066, 29.354340, 23.799946>,  <28.301891, 29.500914, 24.170584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268066, 29.354340, 23.799946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264648, 0.888264, -0.375430,
		0.960631, -0.276967, 0.021864,
		-0.084561, -0.366436, -0.926593,
		28.242699, 29.244410, 23.521969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738184, 29.936623, 23.872196>,  <28.301891, 29.500914, 24.170584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738184, 29.936623, 23.872196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562263, 29.755783, 23.561794>,  <28.456711, 29.647280, 23.375553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562263, 29.755783, 23.561794>,  <28.738184, 29.936623, 23.872196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562263, 29.755783, 23.561794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094259, 0.836045, -0.540503,
		0.893136, -0.310858, -0.325077,
		-0.439799, -0.452102, -0.776003,
		28.430323, 29.620153, 23.328993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202738, 30.083567, 23.294840>,  <28.738184, 29.936623, 23.872196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202738, 30.083567, 23.294840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850641, 29.976868, 23.137859>,  <28.639383, 29.912849, 23.043671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850641, 29.976868, 23.137859>,  <29.202738, 30.083567, 23.294840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850641, 29.976868, 23.137859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032553, 0.791154, -0.610751,
		0.473406, -0.550385, -0.687724,
		-0.880243, -0.266746, -0.392454,
		28.586569, 29.896845, 23.020123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285095, 29.998028, 22.514868>,  <29.202738, 30.083567, 23.294840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285095, 29.998028, 22.514868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913767, 30.095295, 22.627361>,  <28.690969, 30.153656, 22.694859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913767, 30.095295, 22.627361>,  <29.285095, 29.998028, 22.514868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913767, 30.095295, 22.627361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023389, 0.793146, -0.608583,
		-0.371049, -0.558381, -0.741979,
		-0.928319, 0.243168, 0.281236,
		28.635271, 30.168245, 22.711733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940758, 30.349104, 21.923565>,  <29.285095, 29.998028, 22.514868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940758, 30.349104, 21.923565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683125, 30.462452, 22.207779>,  <28.528545, 30.530460, 22.378307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683125, 30.462452, 22.207779>,  <28.940758, 30.349104, 21.923565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683125, 30.462452, 22.207779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153782, 0.861928, -0.483146,
		-0.749338, -0.420454, -0.511576,
		-0.644083, 0.283369, 0.710534,
		28.489899, 30.547462, 22.420938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287767, 30.468630, 21.540718>,  <28.940758, 30.349104, 21.923565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287767, 30.468630, 21.540718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288881, 30.678345, 21.881332>,  <28.289551, 30.804174, 22.085701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288881, 30.678345, 21.881332>,  <28.287767, 30.468630, 21.540718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288881, 30.678345, 21.881332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372969, 0.790641, -0.485573,
		-0.927840, -0.316244, 0.197745,
		0.002786, 0.524287, 0.851537,
		28.289717, 30.835630, 22.136793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698599, 30.865047, 21.536695>,  <28.287767, 30.468630, 21.540718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698599, 30.865047, 21.536695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919985, 31.046288, 21.816231>,  <28.052816, 31.155031, 21.983952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919985, 31.046288, 21.816231>,  <27.698599, 30.865047, 21.536695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919985, 31.046288, 21.816231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250295, 0.890772, -0.379312,
		-0.794372, 0.035020, 0.606421,
		0.553467, 0.453099, 0.698839,
		28.086025, 31.182217, 22.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258837, 31.342758, 21.842896>,  <27.698599, 30.865047, 21.536695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258837, 31.342758, 21.842896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633986, 31.472240, 21.892872>,  <27.859076, 31.549931, 21.922857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633986, 31.472240, 21.892872>,  <27.258837, 31.342758, 21.842896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633986, 31.472240, 21.892872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259736, 0.893718, -0.365794,
		-0.230073, 0.310616, 0.922271,
		0.937872, 0.323707, 0.124943,
		27.915346, 31.569353, 21.930355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160721, 32.033474, 21.985008>,  <27.258837, 31.342758, 21.842896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160721, 32.033474, 21.985008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542225, 31.975662, 21.879589>,  <27.771128, 31.940975, 21.816338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542225, 31.975662, 21.879589>,  <27.160721, 32.033474, 21.985008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542225, 31.975662, 21.879589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009965, 0.891527, -0.452858,
		0.300410, 0.429291, 0.851741,
		0.953758, -0.144531, -0.263546,
		27.828352, 31.932302, 21.800526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551565, 32.617104, 22.194439>,  <27.160721, 32.033474, 21.985008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551565, 32.617104, 22.194439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681482, 32.436588, 21.861969>,  <27.759432, 32.328278, 21.662487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681482, 32.436588, 21.861969>,  <27.551565, 32.617104, 22.194439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681482, 32.436588, 21.861969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015634, 0.876135, -0.481813,
		0.945657, 0.169483, 0.277505,
		0.324791, -0.451291, -0.831172,
		27.778919, 32.301201, 21.612617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295204, 33.369453, 22.118813>,  <27.551565, 32.617104, 22.194439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295204, 33.369453, 22.118813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423807, 33.731575, 22.229851>,  <27.500969, 33.948849, 22.296474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423807, 33.731575, 22.229851>,  <27.295204, 33.369453, 22.118813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423807, 33.731575, 22.229851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837519, -0.408655, 0.362715,
		0.441808, 0.115876, -0.889594,
		0.321508, 0.905303, 0.277595,
		27.520260, 34.003166, 22.313129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900238, 33.811867, 22.622740>,  <27.295204, 33.369453, 22.118813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900238, 33.811867, 22.622740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756599, 33.986771, 22.952553>,  <26.670416, 34.091713, 23.150440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756599, 33.986771, 22.952553>,  <26.900238, 33.811867, 22.622740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756599, 33.986771, 22.952553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547201, -0.617041, 0.565537,
		0.756057, 0.654267, -0.017692,
		-0.359096, 0.437259, 0.824533,
		26.648870, 34.117947, 23.199913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488493, 33.902828, 23.081734>,  <26.900238, 33.811867, 22.622740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488493, 33.902828, 23.081734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163607, 33.917458, 23.314617>,  <26.968674, 33.926235, 23.454348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163607, 33.917458, 23.314617>,  <27.488493, 33.902828, 23.081734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163607, 33.917458, 23.314617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439222, -0.618474, 0.651593,
		0.383911, 0.784953, 0.486272,
		-0.812217, 0.036573, 0.582208,
		26.919941, 33.928429, 23.489279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738579, 34.072697, 23.755001>,  <27.488493, 33.902828, 23.081734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738579, 34.072697, 23.755001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375448, 33.924282, 23.833168>,  <27.157570, 33.835236, 23.880068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375448, 33.924282, 23.833168>,  <27.738579, 34.072697, 23.755001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375448, 33.924282, 23.833168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390871, -0.579889, 0.714807,
		-0.151896, 0.725303, 0.671463,
		-0.907826, -0.371032, 0.195418,
		27.103100, 33.812973, 23.891794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663483, 34.066139, 24.553316>,  <27.738579, 34.072697, 23.755001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663483, 34.066139, 24.553316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400724, 33.810272, 24.393661>,  <27.243069, 33.656750, 24.297869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400724, 33.810272, 24.393661>,  <27.663483, 34.066139, 24.553316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400724, 33.810272, 24.393661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261207, -0.689661, 0.675380,
		-0.707289, 0.339397, 0.620122,
		-0.656896, -0.639670, -0.399137,
		27.203655, 33.618370, 24.273920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450195, 33.684044, 25.010384>,  <27.663483, 34.066139, 24.553316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450195, 33.684044, 25.010384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324678, 33.467007, 24.698711>,  <27.249369, 33.336784, 24.511707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324678, 33.467007, 24.698711>,  <27.450195, 33.684044, 25.010384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324678, 33.467007, 24.698711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177995, -0.839698, 0.513055,
		-0.932658, 0.022303, 0.360070,
		-0.313793, -0.542596, -0.779181,
		27.230541, 33.304230, 24.464956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965105, 33.085663, 25.302681>,  <27.450195, 33.684044, 25.010384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965105, 33.085663, 25.302681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122276, 32.981697, 24.949852>,  <27.216579, 32.919315, 24.738155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122276, 32.981697, 24.949852>,  <26.965105, 33.085663, 25.302681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122276, 32.981697, 24.949852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069932, -0.947999, 0.310495,
		-0.916906, -0.183687, -0.354319,
		0.392928, -0.259917, -0.882072,
		27.240154, 32.903721, 24.685230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601215, 32.453827, 25.133432>,  <26.965105, 33.085663, 25.302681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601215, 32.453827, 25.133432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920748, 32.445679, 24.892948>,  <27.112467, 32.440788, 24.748657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920748, 32.445679, 24.892948>,  <26.601215, 32.453827, 25.133432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920748, 32.445679, 24.892948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075319, -0.988174, 0.133560,
		-0.596820, -0.151974, -0.787851,
		0.798832, -0.020372, -0.601209,
		27.160397, 32.439568, 24.712585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553808, 31.880802, 24.789291>,  <26.601215, 32.453827, 25.133432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553808, 31.880802, 24.789291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941801, 31.951359, 24.722340>,  <27.174597, 31.993692, 24.682169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941801, 31.951359, 24.722340>,  <26.553808, 31.880802, 24.789291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941801, 31.951359, 24.722340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218582, -0.934086, 0.282320,
		-0.106549, -0.310432, -0.944605,
		0.969984, 0.176393, -0.167381,
		27.232796, 32.004276, 24.672125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878807, 31.305815, 24.307808>,  <26.553808, 31.880802, 24.789291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878807, 31.305815, 24.307808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153746, 31.488121, 24.534023>,  <27.318708, 31.597504, 24.669752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153746, 31.488121, 24.534023>,  <26.878807, 31.305815, 24.307808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153746, 31.488121, 24.534023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262990, -0.881959, 0.391132,
		0.677046, -0.120112, -0.726073,
		0.687347, 0.455764, 0.565539,
		27.359949, 31.624849, 24.703686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422255, 30.834873, 24.250120>,  <26.878807, 31.305815, 24.307808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422255, 30.834873, 24.250120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533178, 31.069008, 24.554878>,  <27.599733, 31.209488, 24.737732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533178, 31.069008, 24.554878>,  <27.422255, 30.834873, 24.250120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533178, 31.069008, 24.554878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367519, -0.797310, 0.478776,
		0.887710, 0.147240, -0.436225,
		0.277311, 0.585335, 0.761893,
		27.616371, 31.244608, 24.783445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102003, 30.630476, 24.367046>,  <27.422255, 30.834873, 24.250120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102003, 30.630476, 24.367046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936569, 30.768734, 24.703968>,  <27.837309, 30.851688, 24.906120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936569, 30.768734, 24.703968>,  <28.102003, 30.630476, 24.367046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936569, 30.768734, 24.703968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328438, -0.806205, 0.492100,
		0.849161, 0.480171, 0.219912,
		-0.413586, 0.345645, 0.842304,
		27.812494, 30.872427, 24.956659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600201, 30.363110, 24.959099>,  <28.102003, 30.630476, 24.367046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600201, 30.363110, 24.959099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278116, 30.490261, 25.159336>,  <28.084866, 30.566551, 25.279478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278116, 30.490261, 25.159336>,  <28.600201, 30.363110, 24.959099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278116, 30.490261, 25.159336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281503, -0.538090, 0.794491,
		0.521914, 0.780649, 0.343792,
		-0.805210, 0.317878, 0.500591,
		28.036552, 30.585625, 25.309513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871439, 30.612644, 25.647688>,  <28.600201, 30.363110, 24.959099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871439, 30.612644, 25.647688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488644, 30.500706, 25.678303>,  <28.258966, 30.433542, 25.696672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488644, 30.500706, 25.678303>,  <28.871439, 30.612644, 25.647688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488644, 30.500706, 25.678303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257188, -0.696223, 0.670169,
		-0.134256, 0.661030, 0.738251,
		-0.956990, -0.279844, 0.076537,
		28.201548, 30.416752, 25.701263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695290, 30.554209, 26.363728>,  <28.871439, 30.612644, 25.647688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695290, 30.554209, 26.363728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425974, 30.321053, 26.181774>,  <28.264383, 30.181160, 26.072601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425974, 30.321053, 26.181774>,  <28.695290, 30.554209, 26.363728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425974, 30.321053, 26.181774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225854, -0.747958, 0.624139,
		-0.704038, 0.317488, 0.635241,
		-0.673290, -0.582889, -0.454885,
		28.223988, 30.146185, 26.045309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386763, 30.896288, 26.848862>,  <28.695290, 30.554209, 26.363728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386763, 30.896288, 26.848862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676949, 30.919796, 27.123161>,  <28.851059, 30.933901, 27.287741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676949, 30.919796, 27.123161>,  <28.386763, 30.896288, 26.848862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676949, 30.919796, 27.123161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516363, 0.612272, -0.598742,
		-0.455053, 0.788460, 0.413833,
		0.725462, 0.058771, 0.685748,
		28.894587, 30.937428, 27.328886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414331, 31.525957, 27.232378>,  <28.386763, 30.896288, 26.848862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414331, 31.525957, 27.232378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787910, 31.382996, 27.231956>,  <29.012058, 31.297218, 27.231703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787910, 31.382996, 27.231956>,  <28.414331, 31.525957, 27.232378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787910, 31.382996, 27.231956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302643, 0.792415, -0.529609,
		0.190120, 0.494309, 0.848241,
		0.933949, -0.357404, -0.001055,
		29.068096, 31.275774, 27.231640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791559, 32.073120, 27.340065>,  <28.414331, 31.525957, 27.232378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791559, 32.073120, 27.340065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064631, 31.820728, 27.192654>,  <29.228474, 31.669292, 27.104206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064631, 31.820728, 27.192654>,  <28.791559, 32.073120, 27.340065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064631, 31.820728, 27.192654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320890, 0.711979, -0.624592,
		0.656489, 0.308140, 0.688529,
		0.682679, -0.630980, -0.368528,
		29.269434, 31.631433, 27.082096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491800, 32.428463, 27.453396>,  <28.791559, 32.073120, 27.340065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491800, 32.428463, 27.453396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488701, 32.168041, 27.149799>,  <29.486841, 32.011787, 26.967642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488701, 32.168041, 27.149799>,  <29.491800, 32.428463, 27.453396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488701, 32.168041, 27.149799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373863, 0.702082, -0.606059,
		0.927451, -0.288455, 0.237965,
		-0.007750, -0.651056, -0.758990,
		29.486376, 31.972725, 26.922102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302017, 32.335285, 27.233839>,  <29.491800, 32.428463, 27.453396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302017, 32.335285, 27.233839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091135, 32.211891, 26.917133>,  <29.964605, 32.137856, 26.727110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091135, 32.211891, 26.917133>,  <30.302017, 32.335285, 27.233839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091135, 32.211891, 26.917133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586226, 0.542485, -0.601705,
		0.615137, -0.781376, -0.105160,
		-0.527205, -0.308484, -0.791766,
		29.932974, 32.119347, 26.679604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753799, 32.295048, 26.688614>,  <30.302017, 32.335285, 27.233839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753799, 32.295048, 26.688614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400377, 32.340393, 26.506855>,  <30.188324, 32.367599, 26.397800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400377, 32.340393, 26.506855>,  <30.753799, 32.295048, 26.688614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400377, 32.340393, 26.506855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418574, 0.626344, -0.657639,
		0.210056, -0.771260, -0.600861,
		-0.883557, 0.113363, -0.454397,
		30.135311, 32.374401, 26.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967752, 32.457802, 25.996908>,  <30.753799, 32.295048, 26.688614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967752, 32.457802, 25.996908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583652, 32.565796, 26.025288>,  <30.353193, 32.630592, 26.042315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583652, 32.565796, 26.025288>,  <30.967752, 32.457802, 25.996908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583652, 32.565796, 26.025288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128940, 0.654397, -0.745076,
		-0.247584, -0.706311, -0.663195,
		-0.960248, 0.269981, 0.070946,
		30.295578, 32.646790, 26.046572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671604, 32.429665, 25.255489>,  <30.967752, 32.457802, 25.996908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671604, 32.429665, 25.255489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470873, 32.689171, 25.484322>,  <30.350435, 32.844875, 25.621620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470873, 32.689171, 25.484322>,  <30.671604, 32.429665, 25.255489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470873, 32.689171, 25.484322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124089, 0.708545, -0.694670,
		-0.856021, -0.277615, -0.436071,
		-0.501827, 0.648764, 0.572080,
		30.320324, 32.883801, 25.655945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309765, 32.802227, 24.798807>,  <30.671604, 32.429665, 25.255489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309765, 32.802227, 24.798807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312443, 33.062954, 25.102146>,  <30.314049, 33.219391, 25.284149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312443, 33.062954, 25.102146>,  <30.309765, 32.802227, 24.798807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312443, 33.062954, 25.102146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184132, 0.744592, -0.641622,
		-0.982879, 0.143931, -0.115036,
		0.006695, 0.651818, 0.758346,
		30.314451, 33.258499, 25.329649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989712, 33.281990, 24.536037>,  <30.309765, 32.802227, 24.798807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989712, 33.281990, 24.536037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148052, 33.466743, 24.853519>,  <30.243057, 33.577595, 25.044008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148052, 33.466743, 24.853519>,  <29.989712, 33.281990, 24.536037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148052, 33.466743, 24.853519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042319, 0.854214, -0.518196,
		-0.917339, 0.238717, 0.318595,
		0.395850, 0.461879, 0.793707,
		30.266808, 33.605309, 25.091631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668629, 33.870491, 24.694180>,  <29.989712, 33.281990, 24.536037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668629, 33.870491, 24.694180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009706, 33.940529, 24.891056>,  <30.214354, 33.982552, 25.009182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009706, 33.940529, 24.891056>,  <29.668629, 33.870491, 24.694180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009706, 33.940529, 24.891056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054840, 0.906951, -0.417651,
		-0.519520, 0.383121, 0.763752,
		0.852697, 0.175094, 0.492189,
		30.265516, 33.993057, 25.038713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517241, 34.463860, 24.900536>,  <29.668629, 33.870491, 24.694180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517241, 34.463860, 24.900536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912962, 34.405655, 24.904686>,  <30.150394, 34.370731, 24.907177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912962, 34.405655, 24.904686>,  <29.517241, 34.463860, 24.900536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912962, 34.405655, 24.904686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110546, 0.701371, -0.704172,
		0.095187, 0.697786, 0.709954,
		0.989302, -0.145511, 0.010376,
		30.209753, 34.362003, 24.907799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.750319, 28.550621, 30.714182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.061190, 28.390228, 30.520187>,  <29.247711, 28.293993, 30.403791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.061190, 28.390228, 30.520187>,  <28.750319, 28.550621, 30.714182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061190, 28.390228, 30.520187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052246, 0.809149, -0.585276,
		0.627111, 0.429524, 0.649801,
		0.777176, -0.400982, -0.484985,
		29.294342, 28.269934, 30.374691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344179, 28.984560, 30.711020>,  <28.750319, 28.550621, 30.714182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344179, 28.984560, 30.711020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.394970, 28.774052, 30.374706>,  <29.425444, 28.647747, 30.172918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.394970, 28.774052, 30.374706>,  <29.344179, 28.984560, 30.711020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394970, 28.774052, 30.374706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047809, 0.849905, -0.524763,
		0.990753, 0.026436, 0.133079,
		0.126977, -0.526272, -0.840782,
		29.433064, 28.616169, 30.122471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849148, 29.326418, 30.355843>,  <29.344179, 28.984560, 30.711020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849148, 29.326418, 30.355843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.658422, 29.125225, 30.067493>,  <29.543987, 29.004509, 29.894484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.658422, 29.125225, 30.067493>,  <29.849148, 29.326418, 30.355843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658422, 29.125225, 30.067493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087631, 0.788816, -0.608350,
		0.874627, -0.353239, -0.332039,
		-0.476810, -0.502982, -0.720875,
		29.515379, 28.974331, 29.851231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041481, 29.663284, 29.809330>,  <29.849148, 29.326418, 30.355843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041481, 29.663284, 29.809330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.780197, 29.430840, 29.615166>,  <29.623426, 29.291372, 29.498667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.780197, 29.430840, 29.615166>,  <30.041481, 29.663284, 29.809330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780197, 29.430840, 29.615166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029355, 0.621164, -0.783130,
		0.756607, -0.525798, -0.388692,
		-0.653210, -0.581112, -0.485412,
		29.584234, 29.256506, 29.469542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300722, 29.609335, 29.174250>,  <30.041481, 29.663284, 29.809330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300722, 29.609335, 29.174250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.913511, 29.519142, 29.130283>,  <29.681185, 29.465027, 29.103903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.913511, 29.519142, 29.130283>,  <30.300722, 29.609335, 29.174250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913511, 29.519142, 29.130283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001754, 0.444256, -0.895898,
		0.250838, -0.867061, -0.430448,
		-0.968027, -0.225480, -0.109915,
		29.623102, 29.451498, 29.097309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253168, 29.191772, 28.474842>,  <30.300722, 29.609335, 29.174250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253168, 29.191772, 28.474842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.940462, 29.412739, 28.590553>,  <29.752838, 29.545319, 28.659979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.940462, 29.412739, 28.590553>,  <30.253168, 29.191772, 28.474842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940462, 29.412739, 28.590553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129566, 0.597676, -0.791199,
		-0.609965, -0.581051, -0.538816,
		-0.781765, 0.552416, 0.289277,
		29.705933, 29.578465, 28.677336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007484, 29.359447, 27.856846>,  <30.253168, 29.191772, 28.474842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007484, 29.359447, 27.856846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804506, 29.618923, 28.083721>,  <29.682720, 29.774609, 28.219847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804506, 29.618923, 28.083721>,  <30.007484, 29.359447, 27.856846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804506, 29.618923, 28.083721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009559, 0.653953, -0.756474,
		-0.861631, -0.389291, -0.325644,
		-0.507445, 0.648689, 0.567188,
		29.652273, 29.813530, 28.253878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587934, 29.632660, 27.367668>,  <30.007484, 29.359447, 27.856846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587934, 29.632660, 27.367668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.521885, 29.879185, 27.675667>,  <29.482256, 30.027100, 27.860466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.521885, 29.879185, 27.675667>,  <29.587934, 29.632660, 27.367668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521885, 29.879185, 27.675667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033827, 0.783791, -0.620102,
		-0.985693, -0.076347, -0.150270,
		-0.165123, 0.616314, 0.769995,
		29.472347, 30.064079, 27.906666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938122, 29.964800, 27.199572>,  <29.587934, 29.632660, 27.367668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938122, 29.964800, 27.199572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.170238, 30.176979, 27.446758>,  <29.309509, 30.304287, 27.595070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.170238, 30.176979, 27.446758>,  <28.938122, 29.964800, 27.199572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170238, 30.176979, 27.446758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011427, 0.764024, -0.645087,
		-0.814327, 0.367279, 0.449419,
		0.580293, 0.530448, 0.617968,
		29.344326, 30.336113, 27.632149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278402, 30.157261, 26.959578>,  <28.938122, 29.964800, 27.199572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278402, 30.157261, 26.959578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.177460, 29.973736, 26.618801>,  <28.116894, 29.863621, 26.414335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.177460, 29.973736, 26.618801>,  <28.278402, 30.157261, 26.959578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177460, 29.973736, 26.618801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012188, -0.881876, 0.471325,
		-0.967557, 0.108559, 0.228140,
		-0.252358, -0.458814, -0.851942,
		28.101753, 29.836092, 26.363218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816151, 29.672108, 27.201704>,  <28.278402, 30.157261, 26.959578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816151, 29.672108, 27.201704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.904339, 29.537395, 26.835541>,  <27.957253, 29.456568, 26.615843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.904339, 29.537395, 26.835541>,  <27.816151, 29.672108, 27.201704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904339, 29.537395, 26.835541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012675, -0.939412, 0.342556,
		-0.975311, -0.063921, -0.211383,
		0.220472, -0.336778, -0.915408,
		27.970480, 29.436361, 26.560919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406551, 29.251932, 27.068138>,  <27.816151, 29.672108, 27.201704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406551, 29.251932, 27.068138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.698118, 29.116543, 26.830109>,  <27.873058, 29.035309, 26.687290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.698118, 29.116543, 26.830109>,  <27.406551, 29.251932, 27.068138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698118, 29.116543, 26.830109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023879, -0.856128, 0.516212,
		-0.684183, -0.390486, -0.615965,
		0.728919, -0.338475, -0.595073,
		27.916794, 29.014999, 26.651587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175463, 28.590572, 26.870129>,  <27.406551, 29.251932, 27.068138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175463, 28.590572, 26.870129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.568949, 28.591824, 26.798241>,  <27.805040, 28.592575, 26.755108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.568949, 28.591824, 26.798241>,  <27.175463, 28.590572, 26.870129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568949, 28.591824, 26.798241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061246, -0.945853, 0.318764,
		-0.168991, -0.324580, -0.930639,
		0.983713, 0.003130, -0.179720,
		27.864063, 28.592762, 26.744324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322987, 27.944902, 26.548792>,  <27.175463, 28.590572, 26.870129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322987, 27.944902, 26.548792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.667549, 28.062305, 26.714600>,  <27.874287, 28.132748, 26.814085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.667549, 28.062305, 26.714600>,  <27.322987, 27.944902, 26.548792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667549, 28.062305, 26.714600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242534, -0.954768, 0.172033,
		0.446265, -0.047655, -0.893631,
		0.861409, 0.293508, 0.414522,
		27.925972, 28.150358, 26.838957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708675, 27.462431, 26.315731>,  <27.322987, 27.944902, 26.548792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708675, 27.462431, 26.315731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.888660, 27.627422, 26.632565>,  <27.996651, 27.726418, 26.822664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.888660, 27.627422, 26.632565>,  <27.708675, 27.462431, 26.315731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888660, 27.627422, 26.632565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094888, -0.904005, 0.416858,
		0.887992, -0.112411, -0.445908,
		0.449962, 0.412478, 0.792083,
		28.023649, 27.751165, 26.870190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130770, 26.929340, 26.493380>,  <27.708675, 27.462431, 26.315731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130770, 26.929340, 26.493380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.139277, 27.162689, 26.818150>,  <28.144381, 27.302698, 27.013012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.139277, 27.162689, 26.818150>,  <28.130770, 26.929340, 26.493380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139277, 27.162689, 26.818150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006176, -0.812016, 0.583602,
		0.999755, -0.017425, -0.013666,
		0.021266, 0.583374, 0.811925,
		28.145657, 27.337702, 27.061728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684639, 26.711302, 26.909445>,  <28.130770, 26.929340, 26.493380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684639, 26.711302, 26.909445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.438324, 26.901314, 27.160889>,  <28.290535, 27.015320, 27.311756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.438324, 26.901314, 27.160889>,  <28.684639, 26.711302, 26.909445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438324, 26.901314, 27.160889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187631, -0.863277, 0.468558,
		0.765245, 0.170586, 0.620726,
		-0.615788, 0.475029, 0.628611,
		28.253588, 27.043823, 27.349472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967308, 26.573843, 27.546778>,  <28.684639, 26.711302, 26.909445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967308, 26.573843, 27.546778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.602365, 26.702602, 27.647961>,  <28.383400, 26.779858, 27.708672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.602365, 26.702602, 27.647961>,  <28.967308, 26.573843, 27.546778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602365, 26.702602, 27.647961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151650, -0.839651, 0.521524,
		0.380277, 0.437454, 0.814876,
		-0.912355, 0.321900, 0.252960,
		28.328659, 26.799171, 27.723848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054232, 26.548250, 28.291870>,  <28.967308, 26.573843, 27.546778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054232, 26.548250, 28.291870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.669819, 26.539593, 28.181633>,  <28.439171, 26.534399, 28.115492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.669819, 26.539593, 28.181633>,  <29.054232, 26.548250, 28.291870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669819, 26.539593, 28.181633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168121, -0.745617, 0.644818,
		-0.219441, 0.666023, 0.712923,
		-0.961031, -0.021642, -0.275591,
		28.381510, 26.533100, 28.098955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715616, 26.173744, 28.907366>,  <29.054232, 26.548250, 28.291870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715616, 26.173744, 28.907366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.413790, 26.160782, 28.645195>,  <28.232695, 26.153006, 28.487892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.413790, 26.160782, 28.645195>,  <28.715616, 26.173744, 28.907366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413790, 26.160782, 28.645195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401152, -0.767655, 0.499784,
		-0.519335, 0.640044, 0.566246,
		-0.754565, -0.032404, -0.655425,
		28.187420, 26.151060, 28.448568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104683, 26.074913, 29.327877>,  <28.715616, 26.173744, 28.907366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104683, 26.074913, 29.327877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.041037, 25.957058, 28.950970>,  <28.002850, 25.886345, 28.724825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.041037, 25.957058, 28.950970>,  <28.104683, 26.074913, 29.327877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041037, 25.957058, 28.950970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463353, -0.820495, 0.334803,
		-0.871772, 0.489875, -0.005969,
		-0.159114, -0.294637, -0.942269,
		27.993303, 25.868668, 28.668289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427414, 25.891722, 29.300886>,  <28.104683, 26.074913, 29.327877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427414, 25.891722, 29.300886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.619019, 25.713291, 28.998478>,  <27.733982, 25.606234, 28.817034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.619019, 25.713291, 28.998478>,  <27.427414, 25.891722, 29.300886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619019, 25.713291, 28.998478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290965, -0.893253, 0.342692,
		-0.828182, 0.055820, -0.557672,
		0.479013, -0.446075, -0.756018,
		27.762722, 25.579470, 28.771673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967339, 25.204588, 29.063877>,  <27.427414, 25.891722, 29.300886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967339, 25.204588, 29.063877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.344671, 25.161938, 28.938175>,  <27.571072, 25.136349, 28.862753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.344671, 25.161938, 28.938175>,  <26.967339, 25.204588, 29.063877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344671, 25.161938, 28.938175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009101, -0.954934, 0.296680,
		-0.331727, -0.277007, -0.901789,
		0.943331, -0.106624, -0.314256,
		27.627670, 25.129950, 28.843899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.572121, 23.692661, 27.924902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221985, 23.844563, 28.044609>,  <33.011902, 23.935703, 28.116434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221985, 23.844563, 28.044609>,  <33.572121, 23.692661, 27.924902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221985, 23.844563, 28.044609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114004, 0.763616, -0.635527,
		-0.469869, -0.522187, -0.711719,
		-0.875343, 0.379753, 0.299268,
		32.959381, 23.958488, 28.134390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187771, 23.869839, 27.310791>,  <33.572121, 23.692661, 27.924902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187771, 23.869839, 27.310791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040192, 24.091553, 27.609226>,  <32.951645, 24.224581, 27.788286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040192, 24.091553, 27.609226>,  <33.187771, 23.869839, 27.310791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040192, 24.091553, 27.609226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066934, 0.784789, -0.616139,
		-0.927037, -0.277262, -0.252445,
		-0.368948, 0.554286, 0.746086,
		32.929508, 24.257839, 27.833052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521740, 24.038363, 27.096178>,  <33.187771, 23.869839, 27.310791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521740, 24.038363, 27.096178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635593, 24.308968, 27.367859>,  <32.703907, 24.471331, 27.530867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635593, 24.308968, 27.367859>,  <32.521740, 24.038363, 27.096178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635593, 24.308968, 27.367859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242453, 0.736277, -0.631754,
		-0.927469, 0.015146, 0.373594,
		0.284637, 0.676511, 0.679202,
		32.720985, 24.511921, 27.571619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993097, 24.577963, 27.092140>,  <32.521740, 24.038363, 27.096178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993097, 24.577963, 27.092140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309830, 24.749527, 27.266056>,  <32.499870, 24.852465, 27.370405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309830, 24.749527, 27.266056>,  <31.993097, 24.577963, 27.092140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309830, 24.749527, 27.266056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088572, 0.785021, -0.613104,
		-0.604285, 0.446964, 0.659593,
		0.791830, 0.428911, 0.434788,
		32.547379, 24.878201, 27.396492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873915, 25.219271, 27.194307>,  <31.993097, 24.577963, 27.092140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873915, 25.219271, 27.194307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272350, 25.236065, 27.225395>,  <32.511414, 25.246141, 27.244047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272350, 25.236065, 27.225395>,  <31.873915, 25.219271, 27.194307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272350, 25.236065, 27.225395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012881, 0.801370, -0.598030,
		-0.087390, 0.596694, 0.797696,
		0.996091, 0.041986, 0.077718,
		32.571178, 25.248661, 27.248711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092766, 25.930470, 27.206099>,  <31.873915, 25.219271, 27.194307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092766, 25.930470, 27.206099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468258, 25.799667, 27.162540>,  <32.693554, 25.721186, 27.136406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468258, 25.799667, 27.162540>,  <32.092766, 25.930470, 27.206099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468258, 25.799667, 27.162540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224803, 0.820408, -0.525733,
		0.261256, 0.469040, 0.843651,
		0.938727, -0.327006, -0.108895,
		32.749878, 25.701565, 27.129871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599365, 26.494078, 27.448675>,  <32.092766, 25.930470, 27.206099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599365, 26.494078, 27.448675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769302, 26.249123, 27.181995>,  <32.871265, 26.102150, 27.021988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769302, 26.249123, 27.181995>,  <32.599365, 26.494078, 27.448675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769302, 26.249123, 27.181995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238622, 0.786176, -0.570076,
		0.873254, 0.083100, 0.480128,
		0.424838, -0.612390, -0.666702,
		32.896755, 26.065405, 26.981985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269363, 26.693125, 27.310564>,  <32.599365, 26.494078, 27.448675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269363, 26.693125, 27.310564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177563, 26.480835, 26.984211>,  <33.122482, 26.353462, 26.788399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177563, 26.480835, 26.984211>,  <33.269363, 26.693125, 27.310564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177563, 26.480835, 26.984211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358402, 0.733274, -0.577803,
		0.904919, -0.425019, 0.021927,
		-0.229499, -0.530723, -0.815881,
		33.108711, 26.321617, 26.739447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846886, 26.939043, 26.836626>,  <33.269363, 26.693125, 27.310564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846886, 26.939043, 26.836626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572155, 26.741627, 26.623203>,  <33.407314, 26.623177, 26.495150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572155, 26.741627, 26.623203>,  <33.846886, 26.939043, 26.836626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572155, 26.741627, 26.623203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175567, 0.599705, -0.780724,
		0.705296, -0.629899, -0.325245,
		-0.686829, -0.493540, -0.533559,
		33.366108, 26.593565, 26.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125748, 26.760563, 26.070469>,  <33.846886, 26.939043, 26.836626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125748, 26.760563, 26.070469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726486, 26.774574, 26.050640>,  <33.486927, 26.782980, 26.038744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726486, 26.774574, 26.050640>,  <34.125748, 26.760563, 26.070469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726486, 26.774574, 26.050640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060687, 0.590951, -0.804422,
		0.001118, -0.805947, -0.591987,
		-0.998156, 0.035026, -0.049571,
		33.427040, 26.785082, 26.035769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943554, 26.715328, 25.423294>,  <34.125748, 26.760563, 26.070469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943554, 26.715328, 25.423294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600086, 26.879494, 25.546097>,  <33.394005, 26.977993, 25.619778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600086, 26.879494, 25.546097>,  <33.943554, 26.715328, 25.423294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600086, 26.879494, 25.546097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066462, 0.683095, -0.727299,
		-0.508209, -0.604102, -0.613827,
		-0.858666, 0.410416, 0.307005,
		33.342487, 27.002619, 25.638199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607880, 26.929482, 24.798685>,  <33.943554, 26.715328, 25.423294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607880, 26.929482, 24.798685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392979, 27.108051, 25.084919>,  <33.264038, 27.215193, 25.256660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392979, 27.108051, 25.084919>,  <33.607880, 26.929482, 24.798685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392979, 27.108051, 25.084919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097527, 0.809861, -0.578458,
		-0.837763, -0.380568, -0.391563,
		-0.537254, 0.446423, 0.715587,
		33.231804, 27.241978, 25.299595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983063, 27.166784, 24.548349>,  <33.607880, 26.929482, 24.798685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983063, 27.166784, 24.548349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018955, 27.407593, 24.865719>,  <33.040489, 27.552078, 25.056141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018955, 27.407593, 24.865719>,  <32.983063, 27.166784, 24.548349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018955, 27.407593, 24.865719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304245, 0.775124, -0.553730,
		-0.948359, -0.191710, 0.252712,
		0.089728, 0.602021, 0.793423,
		33.045872, 27.588200, 25.103746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373280, 27.654480, 24.416100>,  <32.983063, 27.166784, 24.548349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373280, 27.654480, 24.416100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.644482, 27.824020, 24.656319>,  <32.807201, 27.925745, 24.800451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.644482, 27.824020, 24.656319>,  <32.373280, 27.654480, 24.416100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644482, 27.824020, 24.656319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017690, 0.826182, -0.563126,
		-0.734846, 0.371178, 0.567652,
		0.678004, 0.423852, 0.600550,
		32.847881, 27.951176, 24.836483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656822, 27.978580, 24.637331>,  <32.373280, 27.654480, 24.416100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656822, 27.978580, 24.637331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.481897, 27.821602, 24.313667>,  <31.376942, 27.727415, 24.119469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.481897, 27.821602, 24.313667>,  <31.656822, 27.978580, 24.637331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481897, 27.821602, 24.313667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142017, -0.918606, 0.368775,
		-0.888025, 0.046356, 0.457453,
		-0.437314, -0.392448, -0.809161,
		31.350702, 27.703867, 24.070919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270403, 27.401484, 24.898579>,  <31.656822, 27.978580, 24.637331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270403, 27.401484, 24.898579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.288940, 27.354427, 24.501789>,  <31.300062, 27.326193, 24.263716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.288940, 27.354427, 24.501789>,  <31.270403, 27.401484, 24.898579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288940, 27.354427, 24.501789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093037, -0.989233, 0.112971,
		-0.994584, 0.087055, -0.056789,
		0.046343, -0.117642, -0.991974,
		31.302843, 27.319134, 24.204197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650522, 27.084955, 24.666599>,  <31.270403, 27.401484, 24.898579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650522, 27.084955, 24.666599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951105, 26.988800, 24.420826>,  <31.131454, 26.931107, 24.273361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951105, 26.988800, 24.420826>,  <30.650522, 27.084955, 24.666599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951105, 26.988800, 24.420826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242861, -0.966659, 0.081174,
		-0.613460, 0.088223, -0.784782,
		0.751455, -0.240390, -0.614433,
		31.176542, 26.916683, 24.236496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416611, 26.500223, 24.146568>,  <30.650522, 27.084955, 24.666599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416611, 26.500223, 24.146568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814667, 26.462238, 24.136162>,  <31.053501, 26.439447, 24.129917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814667, 26.462238, 24.136162>,  <30.416611, 26.500223, 24.146568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814667, 26.462238, 24.136162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090415, -0.985949, 0.140466,
		-0.038992, -0.137431, -0.989743,
		0.995140, -0.094964, -0.026018,
		31.113209, 26.433748, 24.128357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502361, 25.798668, 23.814426>,  <30.416611, 26.500223, 24.146568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502361, 25.798668, 23.814426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.832378, 25.890663, 24.020885>,  <31.030388, 25.945860, 24.144760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.832378, 25.890663, 24.020885>,  <30.502361, 25.798668, 23.814426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832378, 25.890663, 24.020885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044000, -0.936798, 0.347094,
		0.563354, -0.263657, -0.783018,
		0.825043, 0.229990, 0.516148,
		31.079891, 25.959660, 24.175730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057016, 25.203999, 23.677052>,  <30.502361, 25.798668, 23.814426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057016, 25.203999, 23.677052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155851, 25.375729, 24.024529>,  <31.215153, 25.478765, 24.233015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155851, 25.375729, 24.024529>,  <31.057016, 25.203999, 23.677052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155851, 25.375729, 24.024529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147108, -0.902720, 0.404297,
		0.957762, 0.027895, -0.286206,
		0.247086, 0.429324, 0.868694,
		31.229977, 25.504526, 24.285137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645132, 24.756109, 23.911654>,  <31.057016, 25.203999, 23.677052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645132, 24.756109, 23.911654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556192, 24.947723, 24.251320>,  <31.502829, 25.062693, 24.455120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556192, 24.947723, 24.251320>,  <31.645132, 24.756109, 23.911654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556192, 24.947723, 24.251320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082844, -0.877104, 0.473103,
		0.971441, 0.034845, 0.234708,
		-0.222348, 0.479036, 0.849168,
		31.489489, 25.091434, 24.506071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103836, 24.517740, 24.437325>,  <31.645132, 24.756109, 23.911654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103836, 24.517740, 24.437325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801344, 24.674946, 24.646572>,  <31.619848, 24.769268, 24.772121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801344, 24.674946, 24.646572>,  <32.103836, 24.517740, 24.437325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801344, 24.674946, 24.646572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014181, -0.789474, 0.613620,
		0.654150, 0.471457, 0.591452,
		-0.756232, 0.393012, 0.523120,
		31.574474, 24.792849, 24.803509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269958, 24.413416, 25.141867>,  <32.103836, 24.517740, 24.437325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269958, 24.413416, 25.141867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874674, 24.472122, 25.159275>,  <31.637503, 24.507345, 25.169720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874674, 24.472122, 25.159275>,  <32.269958, 24.413416, 25.141867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874674, 24.472122, 25.159275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077158, -0.723086, 0.686436,
		0.132216, 0.674987, 0.725887,
		-0.988213, 0.146765, 0.043523,
		31.578209, 24.516151, 25.172333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084312, 24.184175, 25.855272>,  <32.269958, 24.413416, 25.141867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084312, 24.184175, 25.855272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.735987, 24.211010, 25.660469>,  <31.526991, 24.227110, 25.543587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.735987, 24.211010, 25.660469>,  <32.084312, 24.184175, 25.855272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735987, 24.211010, 25.660469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414702, -0.632247, 0.654436,
		-0.264005, 0.771857, 0.578392,
		-0.870818, 0.067086, -0.487007,
		31.474741, 24.231136, 25.514366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648680, 24.466038, 26.276762>,  <32.084312, 24.184175, 25.855272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648680, 24.466038, 26.276762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456388, 24.237133, 26.011005>,  <31.341013, 24.099791, 25.851551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456388, 24.237133, 26.011005>,  <31.648680, 24.466038, 26.276762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456388, 24.237133, 26.011005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213986, -0.658216, 0.721777,
		-0.850358, 0.489150, 0.193968,
		-0.480731, -0.572262, -0.664390,
		31.312170, 24.065454, 25.811687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103844, 24.156963, 26.641840>,  <31.648680, 24.466038, 26.276762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103844, 24.156963, 26.641840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.070898, 23.941551, 26.306412>,  <31.051130, 23.812304, 26.105154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.070898, 23.941551, 26.306412>,  <31.103844, 24.156963, 26.641840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070898, 23.941551, 26.306412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343361, -0.774579, 0.531161,
		-0.935585, 0.331680, -0.121115,
		-0.082362, -0.538532, -0.838570,
		31.046190, 23.779991, 26.054840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379971, 23.930557, 26.609863>,  <31.103844, 24.156963, 26.641840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379971, 23.930557, 26.609863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625460, 23.675259, 26.423965>,  <30.772753, 23.522079, 26.312426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625460, 23.675259, 26.423965>,  <30.379971, 23.930557, 26.609863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625460, 23.675259, 26.423965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322527, -0.739957, 0.590288,
		-0.720634, -0.212386, -0.659984,
		0.613729, -0.638244, -0.464738,
		30.809576, 23.483786, 26.284542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995550, 23.339815, 26.327457>,  <30.379971, 23.930557, 26.609863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995550, 23.339815, 26.327457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.372263, 23.212158, 26.369774>,  <30.598291, 23.135565, 26.395164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.372263, 23.212158, 26.369774>,  <29.995550, 23.339815, 26.327457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372263, 23.212158, 26.369774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335004, -0.864012, 0.375840,
		-0.028541, -0.389401, -0.920626,
		0.941784, -0.319141, 0.105791,
		30.654799, 23.116415, 26.401510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392656, 23.020788, 26.167351>,  <29.995550, 23.339815, 26.327457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392656, 23.020788, 26.167351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.050978, 23.106293, 26.356941>,  <28.845970, 23.157595, 26.470695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.050978, 23.106293, 26.356941>,  <29.392656, 23.020788, 26.167351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050978, 23.106293, 26.356941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007810, 0.916754, -0.399377,
		-0.519888, -0.337445, -0.784759,
		-0.854198, 0.213760, 0.473974,
		28.794718, 23.170422, 26.499134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962883, 23.253502, 25.628372>,  <29.392656, 23.020788, 26.167351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962883, 23.253502, 25.628372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.755880, 23.371704, 25.949585>,  <28.631678, 23.442625, 26.142313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.755880, 23.371704, 25.949585>,  <28.962883, 23.253502, 25.628372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755880, 23.371704, 25.949585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188566, 0.876020, -0.443883,
		-0.834642, -0.381138, -0.397625,
		-0.517508, 0.295506, 0.803033,
		28.600628, 23.460356, 26.190495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236898, 23.390589, 25.418219>,  <28.962883, 23.253502, 25.628372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236898, 23.390589, 25.418219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.290598, 23.604595, 25.751862>,  <28.322817, 23.733000, 25.952047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.290598, 23.604595, 25.751862>,  <28.236898, 23.390589, 25.418219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290598, 23.604595, 25.751862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366486, 0.808852, -0.459833,
		-0.920688, -0.243957, 0.304663,
		0.134248, 0.535017, 0.834107,
		28.330872, 23.765100, 26.002094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795399, 23.994066, 25.364820>,  <28.236898, 23.390589, 25.418219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795399, 23.994066, 25.364820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.000404, 24.099064, 25.691849>,  <28.123407, 24.162064, 25.888065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.000404, 24.099064, 25.691849>,  <27.795399, 23.994066, 25.364820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000404, 24.099064, 25.691849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228460, 0.959496, -0.164846,
		-0.827728, -0.102296, 0.551727,
		0.512516, 0.262495, 0.817572,
		28.154160, 24.177813, 25.937120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300013, 24.513403, 25.783356>,  <27.795399, 23.994066, 25.364820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300013, 24.513403, 25.783356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.695848, 24.551136, 25.826832>,  <27.933350, 24.573776, 25.852919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.695848, 24.551136, 25.826832>,  <27.300013, 24.513403, 25.783356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695848, 24.551136, 25.826832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065071, 0.966897, -0.246729,
		-0.128368, 0.237087, 0.962970,
		0.989590, 0.094334, 0.108691,
		27.992725, 24.579435, 25.859440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388660, 25.130686, 26.055815>,  <27.300013, 24.513403, 25.783356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388660, 25.130686, 26.055815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.768284, 25.065380, 25.948009>,  <27.996058, 25.026197, 25.883327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.768284, 25.065380, 25.948009>,  <27.388660, 25.130686, 26.055815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768284, 25.065380, 25.948009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068195, 0.941456, -0.330166,
		0.307637, 0.294967, 0.904629,
		0.949057, -0.163263, -0.269511,
		28.053001, 25.016401, 25.867157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645962, 25.780733, 26.239220>,  <27.388660, 25.130686, 26.055815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645962, 25.780733, 26.239220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.900675, 25.596966, 25.991528>,  <28.053503, 25.486706, 25.842913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.900675, 25.596966, 25.991528>,  <27.645962, 25.780733, 26.239220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900675, 25.596966, 25.991528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228332, 0.879440, -0.417671,
		0.736460, 0.124575, 0.664912,
		0.636782, -0.459419, -0.619228,
		28.091709, 25.459141, 25.805759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354132, 26.078470, 26.237213>,  <27.645962, 25.780733, 26.239220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354132, 26.078470, 26.237213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.297649, 25.909676, 25.878998>,  <28.263760, 25.808399, 25.664068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.297649, 25.909676, 25.878998>,  <28.354132, 26.078470, 26.237213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297649, 25.909676, 25.878998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095216, 0.894620, -0.436565,
		0.985391, -0.146914, -0.086145,
		-0.141205, -0.421985, -0.895539,
		28.255287, 25.783081, 25.610336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771214, 26.429831, 25.834898>,  <28.354132, 26.078470, 26.237213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771214, 26.429831, 25.834898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.494078, 26.269253, 25.595291>,  <28.327797, 26.172907, 25.451527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.494078, 26.269253, 25.595291>,  <28.771214, 26.429831, 25.834898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494078, 26.269253, 25.595291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077587, 0.784380, -0.615409,
		0.716907, -0.472854, -0.512302,
		-0.692838, -0.401443, -0.599015,
		28.286226, 26.148821, 25.415586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092875, 26.321241, 25.100609>,  <28.771214, 26.429831, 25.834898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092875, 26.321241, 25.100609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.695280, 26.346260, 25.064659>,  <28.456722, 26.361271, 25.043089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.695280, 26.346260, 25.064659>,  <29.092875, 26.321241, 25.100609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695280, 26.346260, 25.064659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101935, 0.828290, -0.550949,
		0.039982, -0.556798, -0.829685,
		-0.993987, 0.062546, -0.089874,
		28.397083, 26.365025, 25.037697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915560, 26.252388, 24.373140>,  <29.092875, 26.321241, 25.100609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915560, 26.252388, 24.373140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595718, 26.424740, 24.540462>,  <28.403814, 26.528151, 24.640856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595718, 26.424740, 24.540462>,  <28.915560, 26.252388, 24.373140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595718, 26.424740, 24.540462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094527, 0.778182, -0.620885,
		-0.593044, -0.456919, -0.662966,
		-0.799602, 0.430880, 0.418305,
		28.355837, 26.554005, 24.665955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617764, 26.476263, 23.772799>,  <28.915560, 26.252388, 24.373140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617764, 26.476263, 23.772799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.460554, 26.693466, 24.069630>,  <28.366228, 26.823788, 24.247728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.460554, 26.693466, 24.069630>,  <28.617764, 26.476263, 23.772799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460554, 26.693466, 24.069630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092875, 0.779449, -0.619543,
		-0.914826, -0.312415, -0.255911,
		-0.393024, 0.543006, 0.742076,
		28.342648, 26.856367, 24.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130535, 26.777588, 23.458717>,  <28.617764, 26.476263, 23.772799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130535, 26.777588, 23.458717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.147879, 27.009071, 23.784470>,  <28.158285, 27.147961, 23.979921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.147879, 27.009071, 23.784470>,  <28.130535, 26.777588, 23.458717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147879, 27.009071, 23.784470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166575, 0.807926, -0.565251,
		-0.985075, -0.111145, 0.131431,
		0.043361, 0.578708, 0.814381,
		28.160887, 27.182684, 24.028784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502420, 27.268139, 23.496201>,  <28.130535, 26.777588, 23.458717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502420, 27.268139, 23.496201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.821510, 27.439049, 23.666412>,  <28.012964, 27.541595, 23.768539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.821510, 27.439049, 23.666412>,  <27.502420, 27.268139, 23.496201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821510, 27.439049, 23.666412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109747, 0.796740, -0.594274,
		-0.592954, 0.427366, 0.682469,
		0.797723, 0.427276, 0.425528,
		28.060827, 27.567232, 23.794071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.660259, 31.343678, 29.325989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969059, 31.429699, 29.565243>,  <37.154339, 31.481312, 29.708796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969059, 31.429699, 29.565243>,  <36.660259, 31.343678, 29.325989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969059, 31.429699, 29.565243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405687, 0.557714, -0.724136,
		-0.489317, 0.801690, 0.343310,
		0.772002, 0.215056, 0.598134,
		37.200661, 31.494215, 29.744682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812195, 32.080666, 29.180002>,  <36.660259, 31.343678, 29.325989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812195, 32.080666, 29.180002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.137299, 31.926861, 29.355076>,  <37.332363, 31.834578, 29.460121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.137299, 31.926861, 29.355076>,  <36.812195, 32.080666, 29.180002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137299, 31.926861, 29.355076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582493, 0.522148, -0.622947,
		0.010995, 0.761256, 0.648358,
		0.812762, -0.384513, 0.437685,
		37.381126, 31.811506, 29.486382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176296, 32.595024, 29.231684>,  <36.812195, 32.080666, 29.180002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176296, 32.595024, 29.231684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.439888, 32.294487, 29.245720>,  <37.598042, 32.114166, 29.254141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.439888, 32.294487, 29.245720>,  <37.176296, 32.595024, 29.231684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439888, 32.294487, 29.245720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430095, 0.338130, -0.837070,
		0.617061, 0.566705, 0.545969,
		0.658980, -0.751342, 0.035090,
		37.637581, 32.069084, 29.256247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820545, 32.919971, 28.968348>,  <37.176296, 32.595024, 29.231684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820545, 32.919971, 28.968348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895607, 32.528202, 28.938633>,  <37.940643, 32.293140, 28.920805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895607, 32.528202, 28.938633>,  <37.820545, 32.919971, 28.968348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895607, 32.528202, 28.938633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640298, 0.179331, -0.746900,
		0.744851, 0.092597, 0.660774,
		0.187658, -0.979421, -0.074285,
		37.951904, 32.234375, 28.916348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537083, 32.918133, 28.918812>,  <37.820545, 32.919971, 28.968348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537083, 32.918133, 28.918812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414494, 32.566357, 28.773121>,  <38.340939, 32.355293, 28.685707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414494, 32.566357, 28.773121>,  <38.537083, 32.918133, 28.918812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414494, 32.566357, 28.773121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652203, 0.084699, -0.753298,
		0.693329, -0.468417, 0.547614,
		-0.306475, -0.879438, -0.364227,
		38.322552, 32.302525, 28.663853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168026, 32.601452, 28.744694>,  <38.537083, 32.918133, 28.918812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168026, 32.601452, 28.744694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882500, 32.419846, 28.531403>,  <38.711185, 32.310883, 28.403427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882500, 32.419846, 28.531403>,  <39.168026, 32.601452, 28.744694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882500, 32.419846, 28.531403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515816, 0.174176, -0.838806,
		0.473710, -0.873802, 0.109860,
		-0.713816, -0.454019, -0.533230,
		38.668354, 32.283642, 28.371433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527264, 32.121395, 28.327721>,  <39.168026, 32.601452, 28.744694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527264, 32.121395, 28.327721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185757, 32.170731, 28.125389>,  <38.980850, 32.200333, 28.003990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185757, 32.170731, 28.125389>,  <39.527264, 32.121395, 28.327721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185757, 32.170731, 28.125389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518543, 0.114126, -0.847401,
		-0.046788, -0.985781, -0.161393,
		-0.853770, 0.123338, -0.505830,
		38.929626, 32.207733, 27.973640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476646, 31.657604, 27.745188>,  <39.527264, 32.121395, 28.327721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476646, 31.657604, 27.745188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253696, 31.966217, 27.622501>,  <39.119926, 32.151386, 27.548889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253696, 31.966217, 27.622501>,  <39.476646, 31.657604, 27.745188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253696, 31.966217, 27.622501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444406, -0.034813, -0.895149,
		-0.701315, -0.635236, -0.323470,
		-0.557370, 0.771533, -0.306717,
		39.086487, 32.197678, 27.530487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156315, 31.433300, 27.224400>,  <39.476646, 31.657604, 27.745188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156315, 31.433300, 27.224400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140743, 31.830891, 27.183422>,  <39.131401, 32.069447, 27.158836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140743, 31.830891, 27.183422>,  <39.156315, 31.433300, 27.224400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140743, 31.830891, 27.183422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216702, -0.091681, -0.971923,
		-0.975461, -0.060039, -0.211827,
		-0.038933, 0.993977, -0.102442,
		39.129063, 32.129086, 27.152689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956280, 31.462099, 26.535032>,  <39.156315, 31.433300, 27.224400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956280, 31.462099, 26.535032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070683, 31.841484, 26.589615>,  <39.139324, 32.069115, 26.622364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070683, 31.841484, 26.589615>,  <38.956280, 31.462099, 26.535032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070683, 31.841484, 26.589615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355268, 0.027298, -0.934366,
		-0.889935, 0.315715, -0.329151,
		0.286008, 0.948461, 0.136457,
		39.156487, 32.126022, 26.630552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680077, 31.770960, 25.903053>,  <38.956280, 31.462099, 26.535032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680077, 31.770960, 25.903053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.925610, 32.040833, 26.067013>,  <39.072929, 32.202755, 26.165388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.925610, 32.040833, 26.067013>,  <38.680077, 31.770960, 25.903053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925610, 32.040833, 26.067013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253150, 0.323582, -0.911707,
		-0.747747, 0.663400, 0.027829,
		0.613832, 0.674681, 0.409898,
		39.109760, 32.243237, 26.189981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439163, 32.469406, 25.766001>,  <38.680077, 31.770960, 25.903053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439163, 32.469406, 25.766001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832947, 32.489086, 25.833435>,  <39.069218, 32.500893, 25.873896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832947, 32.489086, 25.833435>,  <38.439163, 32.469406, 25.766001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832947, 32.489086, 25.833435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150102, 0.262571, -0.953166,
		-0.091160, 0.963657, 0.251106,
		0.984459, 0.049199, 0.168583,
		39.128284, 32.503845, 25.884010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689262, 33.086040, 25.551561>,  <38.439163, 32.469406, 25.766001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689262, 33.086040, 25.551561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034355, 32.885426, 25.577309>,  <39.241413, 32.765057, 25.592756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034355, 32.885426, 25.577309>,  <38.689262, 33.086040, 25.551561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034355, 32.885426, 25.577309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191370, 0.206026, -0.959651,
		0.468044, 0.840244, 0.273726,
		0.862736, -0.501542, 0.064368,
		39.293175, 32.734962, 25.596619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056080, 33.419350, 25.043797>,  <38.689262, 33.086040, 25.551561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056080, 33.419350, 25.043797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.256390, 33.080643, 25.115589>,  <39.376575, 32.877419, 25.158665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.256390, 33.080643, 25.115589>,  <39.056080, 33.419350, 25.043797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256390, 33.080643, 25.115589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311680, -0.017041, -0.950034,
		0.807512, 0.531698, 0.255385,
		0.500779, -0.846763, 0.179480,
		39.406624, 32.826614, 25.169434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734482, 33.578880, 24.738707>,  <39.056080, 33.419350, 25.043797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734482, 33.578880, 24.738707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702488, 33.182129, 24.778259>,  <39.683292, 32.944077, 24.801991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702488, 33.182129, 24.778259>,  <39.734482, 33.578880, 24.738707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702488, 33.182129, 24.778259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241946, -0.115554, -0.963384,
		0.966987, -0.053135, 0.249224,
		-0.079988, -0.991879, 0.098884,
		39.678490, 32.884563, 24.807924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295708, 33.136559, 24.455250>,  <39.734482, 33.578880, 24.738707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295708, 33.136559, 24.455250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973785, 32.899166, 24.451988>,  <39.780632, 32.756729, 24.450031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973785, 32.899166, 24.451988>,  <40.295708, 33.136559, 24.455250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973785, 32.899166, 24.451988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134150, -0.168505, -0.976530,
		0.578178, -0.787011, 0.215229,
		-0.804807, -0.593481, -0.008152,
		39.732342, 32.721123, 24.449543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518593, 32.662376, 23.958294>,  <40.295708, 33.136559, 24.455250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518593, 32.662376, 23.958294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.126717, 32.600391, 24.009190>,  <39.891590, 32.563202, 24.039728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.126717, 32.600391, 24.009190>,  <40.518593, 32.662376, 23.958294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126717, 32.600391, 24.009190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125918, -0.018363, -0.991871,
		0.156038, -0.987750, -0.001522,
		-0.979692, -0.154962, 0.127241,
		39.832809, 32.553902, 24.047361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367313, 32.091412, 23.621780>,  <40.518593, 32.662376, 23.958294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367313, 32.091412, 23.621780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032421, 32.309734, 23.635284>,  <39.831486, 32.440727, 23.643387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032421, 32.309734, 23.635284>,  <40.367313, 32.091412, 23.621780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032421, 32.309734, 23.635284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007312, 0.072902, -0.997312,
		-0.546800, -0.834734, -0.065026,
		-0.837231, 0.545806, 0.033760,
		39.781250, 32.473476, 23.645412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999985, 32.039516, 22.970596>,  <40.367313, 32.091412, 23.621780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999985, 32.039516, 22.970596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788536, 32.350590, 23.106697>,  <39.661667, 32.537235, 23.188358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788536, 32.350590, 23.106697>,  <39.999985, 32.039516, 22.970596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788536, 32.350590, 23.106697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187574, 0.283912, -0.940324,
		-0.827875, -0.560896, -0.004208,
		-0.528619, 0.777682, 0.340253,
		39.629951, 32.583893, 23.208773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341644, 32.106556, 22.569086>,  <39.999985, 32.039516, 22.970596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341644, 32.106556, 22.569086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393719, 32.468502, 22.731205>,  <39.424965, 32.685669, 22.828476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393719, 32.468502, 22.731205>,  <39.341644, 32.106556, 22.569086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393719, 32.468502, 22.731205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226490, 0.425108, -0.876348,
		-0.965274, 0.022294, 0.260287,
		0.130187, 0.904868, 0.405296,
		39.432774, 32.739964, 22.852795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728851, 32.573822, 22.551727>,  <39.341644, 32.106556, 22.569086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728851, 32.573822, 22.551727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065681, 32.789551, 22.549019>,  <39.267780, 32.918987, 22.547394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065681, 32.789551, 22.549019>,  <38.728851, 32.573822, 22.551727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065681, 32.789551, 22.549019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271401, 0.412841, -0.869428,
		-0.466102, 0.733961, 0.494014,
		0.842075, 0.539318, -0.006771,
		39.318302, 32.951347, 22.546988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177975, 32.138172, 22.922905>,  <38.728851, 32.573822, 22.551727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177975, 32.138172, 22.922905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.791351, 32.046207, 22.968342>,  <37.559376, 31.991030, 22.995604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.791351, 32.046207, 22.968342>,  <38.177975, 32.138172, 22.922905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791351, 32.046207, 22.968342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218959, -0.509336, 0.832247,
		-0.133484, 0.829289, 0.542644,
		-0.966560, -0.229908, 0.113592,
		37.501385, 31.977236, 23.002420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987400, 32.359219, 23.619045>,  <38.177975, 32.138172, 22.922905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987400, 32.359219, 23.619045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714260, 32.088516, 23.508976>,  <37.550377, 31.926096, 23.442934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714260, 32.088516, 23.508976>,  <37.987400, 32.359219, 23.619045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714260, 32.088516, 23.508976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059584, -0.426998, 0.902287,
		-0.728125, 0.599731, 0.331899,
		-0.682850, -0.676754, -0.275174,
		37.509407, 31.885490, 23.426424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513092, 32.354248, 24.146246>,  <37.987400, 32.359219, 23.619045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513092, 32.354248, 24.146246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.468315, 32.006737, 23.953293>,  <37.441448, 31.798229, 23.837521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.468315, 32.006737, 23.953293>,  <37.513092, 32.354248, 24.146246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468315, 32.006737, 23.953293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216334, -0.452485, 0.865134,
		-0.969881, 0.201202, -0.137294,
		-0.111943, -0.868778, -0.482383,
		37.434731, 31.746103, 23.808578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848640, 32.096973, 24.380014>,  <37.513092, 32.354248, 24.146246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848640, 32.096973, 24.380014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038773, 31.775124, 24.237663>,  <37.152851, 31.582014, 24.152252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038773, 31.775124, 24.237663>,  <36.848640, 32.096973, 24.380014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038773, 31.775124, 24.237663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306042, -0.530448, 0.790546,
		-0.824864, -0.266855, -0.498385,
		0.475328, -0.804620, -0.355879,
		37.181370, 31.533737, 24.130899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366329, 31.540623, 24.421471>,  <36.848640, 32.096973, 24.380014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366329, 31.540623, 24.421471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.731133, 31.376709, 24.414360>,  <36.950016, 31.278360, 24.410093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.731133, 31.376709, 24.414360>,  <36.366329, 31.540623, 24.421471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731133, 31.376709, 24.414360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270361, -0.633172, 0.725258,
		-0.308456, -0.656635, -0.688248,
		0.912009, -0.409785, -0.017777,
		37.004734, 31.253773, 24.409027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218250, 30.857189, 24.289822>,  <36.366329, 31.540623, 24.421471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218250, 30.857189, 24.289822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576988, 30.865654, 24.466557>,  <36.792233, 30.870733, 24.572598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576988, 30.865654, 24.466557>,  <36.218250, 30.857189, 24.289822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576988, 30.865654, 24.466557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308185, -0.686636, 0.658447,
		0.317314, -0.726693, -0.609285,
		0.896847, 0.021161, 0.441835,
		36.846043, 30.872002, 24.599108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564713, 30.161312, 24.370655>,  <36.218250, 30.857189, 24.289822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564713, 30.161312, 24.370655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.745876, 30.378414, 24.653580>,  <36.854576, 30.508675, 24.823334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.745876, 30.378414, 24.653580>,  <36.564713, 30.161312, 24.370655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745876, 30.378414, 24.653580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219523, -0.701030, 0.678503,
		0.864106, -0.462573, -0.198358,
		0.452913, 0.542755, 0.707310,
		36.881752, 30.541241, 24.865772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872700, 29.678802, 24.862513>,  <36.564713, 30.161312, 24.370655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872700, 29.678802, 24.862513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.924644, 30.023285, 25.059067>,  <36.955811, 30.229975, 25.176998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.924644, 30.023285, 25.059067>,  <36.872700, 29.678802, 24.862513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924644, 30.023285, 25.059067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018790, -0.497629, 0.867186,
		0.991354, -0.103385, -0.080807,
		0.129867, 0.861207, 0.491384,
		36.963604, 30.281647, 25.206482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290066, 29.404104, 25.324286>,  <36.872700, 29.678802, 24.862513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290066, 29.404104, 25.324286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.182201, 29.765648, 25.457142>,  <37.117481, 29.982574, 25.536856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.182201, 29.765648, 25.457142>,  <37.290066, 29.404104, 25.324286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182201, 29.765648, 25.457142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130675, -0.307378, 0.942572,
		0.954047, 0.297580, -0.035223,
		-0.269664, 0.903861, 0.332139,
		37.101303, 30.036806, 25.556784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774189, 29.723793, 25.764900>,  <37.290066, 29.404104, 25.324286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774189, 29.723793, 25.764900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.449841, 29.934853, 25.866158>,  <37.255234, 30.061489, 25.926912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.449841, 29.934853, 25.866158>,  <37.774189, 29.723793, 25.764900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449841, 29.934853, 25.866158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148641, -0.232680, 0.961128,
		0.566039, 0.816974, 0.110242,
		-0.810867, 0.527649, 0.253142,
		37.206581, 30.093147, 25.942101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817524, 29.979572, 26.512981>,  <37.774189, 29.723793, 25.764900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817524, 29.979572, 26.512981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.424706, 30.026226, 26.453678>,  <37.189014, 30.054218, 26.418097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.424706, 30.026226, 26.453678>,  <37.817524, 29.979572, 26.512981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424706, 30.026226, 26.453678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155425, -0.054898, 0.986321,
		0.106899, 0.991657, 0.072040,
		-0.982047, 0.116633, -0.148260,
		37.130093, 30.061216, 26.409201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599644, 30.473501, 27.020346>,  <37.817524, 29.979572, 26.512981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599644, 30.473501, 27.020346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.298237, 30.231236, 26.918068>,  <37.117393, 30.085876, 26.856701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.298237, 30.231236, 26.918068>,  <37.599644, 30.473501, 27.020346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298237, 30.231236, 26.918068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264197, -0.077177, 0.961376,
		-0.602005, 0.791969, -0.101860,
		-0.753519, -0.605664, -0.255697,
		37.072182, 30.049536, 26.841358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089733, 30.725845, 27.404343>,  <37.599644, 30.473501, 27.020346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089733, 30.725845, 27.404343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.964123, 30.356625, 27.315475>,  <36.888756, 30.135092, 27.262156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.964123, 30.356625, 27.315475>,  <37.089733, 30.725845, 27.404343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964123, 30.356625, 27.315475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354599, -0.103041, 0.929323,
		-0.880708, 0.370614, -0.294957,
		-0.314028, -0.923054, -0.222168,
		36.869915, 30.079708, 27.248825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315727, 30.728340, 27.625858>,  <37.089733, 30.725845, 27.404343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315727, 30.728340, 27.625858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468750, 30.358829, 27.619080>,  <36.560562, 30.137123, 27.615011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468750, 30.358829, 27.619080>,  <36.315727, 30.728340, 27.625858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468750, 30.358829, 27.619080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386238, -0.176560, 0.905343,
		-0.839328, -0.339798, -0.424342,
		0.382556, -0.923777, -0.016949,
		36.583515, 30.081696, 27.613995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789829, 30.292770, 27.859341>,  <36.315727, 30.728340, 27.625858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789829, 30.292770, 27.859341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095425, 30.034813, 27.867630>,  <36.278782, 29.880037, 27.872602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095425, 30.034813, 27.867630>,  <35.789829, 30.292770, 27.859341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095425, 30.034813, 27.867630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339003, -0.373867, 0.863308,
		-0.548996, -0.666583, -0.504252,
		0.763990, -0.644895, 0.020722,
		36.324623, 29.841345, 27.873846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523438, 29.651686, 28.113031>,  <35.789829, 30.292770, 27.859341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523438, 29.651686, 28.113031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.914989, 29.614342, 28.185787>,  <36.149921, 29.591936, 28.229441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.914989, 29.614342, 28.185787>,  <35.523438, 29.651686, 28.113031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914989, 29.614342, 28.185787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202140, -0.308598, 0.929466,
		-0.030642, -0.946600, -0.320951,
		0.978877, -0.093358, 0.181889,
		36.208652, 29.586334, 28.240355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593784, 29.020840, 28.400404>,  <35.523438, 29.651686, 28.113031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593784, 29.020840, 28.400404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.922649, 29.211716, 28.524563>,  <36.119968, 29.326241, 28.599058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.922649, 29.211716, 28.524563>,  <35.593784, 29.020840, 28.400404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922649, 29.211716, 28.524563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155154, -0.336784, 0.928711,
		0.547708, -0.811707, -0.202852,
		0.822158, 0.477189, 0.310398,
		36.169296, 29.354872, 28.617682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830669, 28.529867, 28.804905>,  <35.593784, 29.020840, 28.400404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830669, 28.529867, 28.804905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.989067, 28.878502, 28.920506>,  <36.084106, 29.087683, 28.989866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.989067, 28.878502, 28.920506>,  <35.830669, 28.529867, 28.804905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989067, 28.878502, 28.920506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064528, -0.287540, 0.955593,
		0.915983, -0.397058, -0.057623,
		0.395994, 0.871588, 0.289003,
		36.107864, 29.139978, 29.007206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453575, 28.448095, 29.353521>,  <35.830669, 28.529867, 28.804905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453575, 28.448095, 29.353521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329567, 28.824753, 29.405968>,  <36.255161, 29.050747, 29.437435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329567, 28.824753, 29.405968>,  <36.453575, 28.448095, 29.353521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329567, 28.824753, 29.405968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084641, -0.164699, 0.982705,
		0.946954, 0.293562, 0.130762,
		-0.310021, 0.941645, 0.131115,
		36.236561, 29.107246, 29.445303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886978, 28.738098, 29.926956>,  <36.453575, 28.448095, 29.353521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886978, 28.738098, 29.926956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.552338, 28.956955, 29.916145>,  <36.351555, 29.088270, 29.909658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.552338, 28.956955, 29.916145>,  <36.886978, 28.738098, 29.926956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552338, 28.956955, 29.916145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007041, 0.060069, 0.998169,
		0.547765, 0.834881, -0.054106,
		-0.836603, 0.547143, -0.027025,
		36.301357, 29.121098, 29.908037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983379, 29.159595, 30.477297>,  <36.886978, 28.738098, 29.926956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983379, 29.159595, 30.477297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594963, 29.163643, 30.381817>,  <36.361912, 29.166071, 30.324530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594963, 29.163643, 30.381817>,  <36.983379, 29.159595, 30.477297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594963, 29.163643, 30.381817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232791, 0.184649, 0.954836,
		0.053738, 0.982752, -0.176946,
		-0.971041, 0.010119, -0.238699,
		36.303650, 29.166679, 30.310207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.970629, 24.479227, 28.799854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.344738, 24.612839, 28.846653>,  <27.569204, 24.693007, 28.874733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.344738, 24.612839, 28.846653>,  <26.970629, 24.479227, 28.799854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344738, 24.612839, 28.846653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265756, -0.881115, 0.391165,
		0.233750, -0.334754, -0.912853,
		0.935273, 0.334031, 0.116998,
		27.625320, 24.713049, 28.881752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414299, 24.061516, 28.465958>,  <26.970629, 24.479227, 28.799854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414299, 24.061516, 28.465958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.607494, 24.221100, 28.777740>,  <27.723412, 24.316851, 28.964809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.607494, 24.221100, 28.777740>,  <27.414299, 24.061516, 28.465958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607494, 24.221100, 28.777740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173878, -0.916141, 0.361181,
		0.858190, -0.038915, -0.511855,
		0.482987, 0.398962, 0.779456,
		27.752390, 24.340788, 29.011578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146921, 23.693834, 28.453833>,  <27.414299, 24.061516, 28.465958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146921, 23.693834, 28.453833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.070705, 23.846478, 28.815620>,  <28.024977, 23.938065, 29.032694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.070705, 23.846478, 28.815620>,  <28.146921, 23.693834, 28.453833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070705, 23.846478, 28.815620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271125, -0.865058, 0.422097,
		0.943497, 0.325651, 0.061364,
		-0.190539, 0.381610, 0.904471,
		28.013544, 23.960960, 29.086962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665052, 23.453074, 28.912748>,  <28.146921, 23.693834, 28.453833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665052, 23.453074, 28.912748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.396049, 23.582115, 29.179180>,  <28.234648, 23.659540, 29.339039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.396049, 23.582115, 29.179180>,  <28.665052, 23.453074, 28.912748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396049, 23.582115, 29.179180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222730, -0.770053, 0.597837,
		0.705782, 0.550405, 0.446011,
		-0.672505, 0.322603, 0.666081,
		28.194298, 23.678896, 29.379005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001884, 23.239653, 29.519529>,  <28.665052, 23.453074, 28.912748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001884, 23.239653, 29.519529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623178, 23.316948, 29.622524>,  <28.395956, 23.363325, 29.684320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623178, 23.316948, 29.622524>,  <29.001884, 23.239653, 29.519529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623178, 23.316948, 29.622524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028368, -0.746624, 0.664642,
		0.320680, 0.636562, 0.701393,
		-0.946763, 0.193241, 0.257485,
		28.339149, 23.374920, 29.699770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954124, 23.184114, 30.236973>,  <29.001884, 23.239653, 29.519529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954124, 23.184114, 30.236973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.586189, 23.114906, 30.096142>,  <28.365427, 23.073381, 30.011644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.586189, 23.114906, 30.096142>,  <28.954124, 23.184114, 30.236973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586189, 23.114906, 30.096142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040297, -0.851063, 0.523515,
		-0.390218, 0.495738, 0.775870,
		-0.919840, -0.173020, -0.352077,
		28.310238, 23.063000, 29.990519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565683, 22.947769, 30.872383>,  <28.954124, 23.184114, 30.236973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565683, 22.947769, 30.872383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.357357, 22.837936, 30.549061>,  <28.232361, 22.772038, 30.355068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.357357, 22.837936, 30.549061>,  <28.565683, 22.947769, 30.872383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357357, 22.837936, 30.549061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121477, -0.913386, 0.388547,
		-0.844983, 0.300551, 0.442349,
		-0.520814, -0.274581, -0.808306,
		28.201113, 22.755562, 30.306568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944914, 22.629534, 31.055170>,  <28.565683, 22.947769, 30.872383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944914, 22.629534, 31.055170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.009333, 22.485523, 30.687595>,  <28.047983, 22.399117, 30.467051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.009333, 22.485523, 30.687595>,  <27.944914, 22.629534, 31.055170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009333, 22.485523, 30.687595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211415, -0.922061, 0.324202,
		-0.964037, 0.142065, -0.224609,
		0.161046, -0.360029, -0.918936,
		28.057646, 22.377514, 30.411915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361286, 22.243698, 30.853930>,  <27.944914, 22.629534, 31.055170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361286, 22.243698, 30.853930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.631870, 22.098675, 30.597507>,  <27.794220, 22.011662, 30.443655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.631870, 22.098675, 30.597507>,  <27.361286, 22.243698, 30.853930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631870, 22.098675, 30.597507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295214, -0.930930, 0.214983,
		-0.674721, 0.043821, -0.736771,
		0.676461, -0.362558, -0.641055,
		27.834808, 21.989908, 30.405191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996294, 21.746531, 30.585340>,  <27.361286, 22.243698, 30.853930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996294, 21.746531, 30.585340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.368040, 21.638371, 30.484810>,  <27.591087, 21.573475, 30.424492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.368040, 21.638371, 30.484810>,  <26.996294, 21.746531, 30.585340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368040, 21.638371, 30.484810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234001, -0.958052, 0.165471,
		-0.285527, -0.094973, -0.953653,
		0.929364, -0.270402, -0.251326,
		27.646849, 21.557249, 30.409412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945095, 21.155661, 30.242516>,  <26.996294, 21.746531, 30.585340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945095, 21.155661, 30.242516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.335770, 21.144100, 30.327602>,  <27.570175, 21.137163, 30.378654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.335770, 21.144100, 30.327602>,  <26.945095, 21.155661, 30.242516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335770, 21.144100, 30.327602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091190, -0.952907, 0.289228,
		0.194342, -0.301883, -0.933326,
		0.976686, -0.028901, 0.212718,
		27.628775, 21.135429, 30.391418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270042, 20.470373, 29.939638>,  <26.945095, 21.155661, 30.242516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270042, 20.470373, 29.939638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.513781, 20.575439, 30.238892>,  <27.660023, 20.638479, 30.418444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.513781, 20.575439, 30.238892>,  <27.270042, 20.470373, 29.939638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513781, 20.575439, 30.238892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099475, -0.910758, 0.400781,
		0.786640, -0.318635, -0.528837,
		0.609345, 0.262664, 0.748135,
		27.696585, 20.654240, 30.463331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848030, 19.990948, 30.034868>,  <27.270042, 20.470373, 29.939638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848030, 19.990948, 30.034868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.793287, 20.168289, 30.389202>,  <27.760441, 20.274694, 30.601803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.793287, 20.168289, 30.389202>,  <27.848030, 19.990948, 30.034868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793287, 20.168289, 30.389202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009866, -0.894816, 0.446326,
		0.990542, 0.052343, 0.126837,
		-0.136858, 0.443356, 0.885836,
		27.752230, 20.301296, 30.654953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382797, 19.845837, 30.522236>,  <27.848030, 19.990948, 30.034868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382797, 19.845837, 30.522236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.015955, 19.878510, 30.678310>,  <27.795849, 19.898113, 30.771955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.015955, 19.878510, 30.678310>,  <28.382797, 19.845837, 30.522236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015955, 19.878510, 30.678310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024421, -0.965432, 0.259509,
		0.397895, 0.247526, 0.883408,
		-0.917106, 0.081683, 0.390186,
		27.740824, 19.903015, 30.795366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284613, 19.065826, 30.310249>,  <28.382797, 19.845837, 30.522236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284613, 19.065826, 30.310249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.265465, 18.826805, 29.990089>,  <28.253977, 18.683392, 29.797995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.265465, 18.826805, 29.990089>,  <28.284613, 19.065826, 30.310249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265465, 18.826805, 29.990089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111956, 0.793057, -0.598771,
		0.992559, -0.118272, 0.028937,
		-0.047869, -0.597555, -0.800398,
		28.251104, 18.647539, 29.749969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701855, 19.398167, 29.909119>,  <28.284613, 19.065826, 30.310249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701855, 19.398167, 29.909119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508505, 19.151554, 29.660526>,  <28.392494, 19.003588, 29.511370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508505, 19.151554, 29.660526>,  <28.701855, 19.398167, 29.909119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508505, 19.151554, 29.660526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058498, 0.685595, -0.725629,
		0.873457, -0.387105, -0.295333,
		-0.483374, -0.616530, -0.621483,
		28.363493, 18.966595, 29.474081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072918, 19.506851, 29.277765>,  <28.701855, 19.398167, 29.909119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072918, 19.506851, 29.277765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745878, 19.317139, 29.147175>,  <28.549654, 19.203312, 29.068821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745878, 19.317139, 29.147175>,  <29.072918, 19.506851, 29.277765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745878, 19.317139, 29.147175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067483, 0.484171, -0.872367,
		0.571818, -0.735280, -0.363853,
		-0.817601, -0.474281, -0.326477,
		28.500597, 19.174854, 29.049232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241791, 19.261566, 28.655600>,  <29.072918, 19.506851, 29.277765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241791, 19.261566, 28.655600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843287, 19.276321, 28.686848>,  <28.604183, 19.285173, 28.705597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843287, 19.276321, 28.686848>,  <29.241791, 19.261566, 28.655600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843287, 19.276321, 28.686848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041258, 0.591345, -0.805362,
		-0.075905, -0.805574, -0.587613,
		-0.996261, 0.036887, 0.078122,
		28.544409, 19.287388, 28.710285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010523, 19.170507, 27.973701>,  <29.241791, 19.261566, 28.655600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010523, 19.170507, 27.973701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.723166, 19.366505, 28.171211>,  <28.550751, 19.484104, 28.289717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.723166, 19.366505, 28.171211>,  <29.010523, 19.170507, 27.973701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723166, 19.366505, 28.171211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096919, 0.632393, -0.768561,
		-0.688850, -0.599986, -0.406818,
		-0.718395, 0.489995, 0.493774,
		28.507647, 19.513504, 28.319344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534048, 19.394512, 27.522537>,  <29.010523, 19.170507, 27.973701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534048, 19.394512, 27.522537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.426695, 19.629826, 27.827663>,  <28.362284, 19.771013, 28.010740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.426695, 19.629826, 27.827663>,  <28.534048, 19.394512, 27.522537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426695, 19.629826, 27.827663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001170, 0.792068, -0.610432,
		-0.963312, -0.162937, -0.213266,
		-0.268383, 0.588286, 0.762818,
		28.346180, 19.806311, 28.056509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996531, 19.841490, 27.320526>,  <28.534048, 19.394512, 27.522537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996531, 19.841490, 27.320526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.140852, 20.033535, 27.640354>,  <28.227446, 20.148762, 27.832251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.140852, 20.033535, 27.640354>,  <27.996531, 19.841490, 27.320526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140852, 20.033535, 27.640354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060166, 0.867513, -0.493762,
		-0.930699, 0.130044, 0.341889,
		0.360804, 0.480114, 0.799569,
		28.249094, 20.177568, 27.880224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624611, 20.403326, 27.343983>,  <27.996531, 19.841490, 27.320526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624611, 20.403326, 27.343983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.936609, 20.509293, 27.570759>,  <28.123808, 20.572872, 27.706825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.936609, 20.509293, 27.570759>,  <27.624611, 20.403326, 27.343983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936609, 20.509293, 27.570759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022147, 0.917090, -0.398065,
		-0.625391, 0.297933, 0.721195,
		0.779997, 0.264919, 0.566941,
		28.170609, 20.588768, 27.740841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421673, 21.011595, 27.762274>,  <27.624611, 20.403326, 27.343983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421673, 21.011595, 27.762274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.820864, 21.004261, 27.737915>,  <28.060377, 20.999861, 27.723299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.820864, 21.004261, 27.737915>,  <27.421673, 21.011595, 27.762274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820864, 21.004261, 27.737915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012179, 0.884715, -0.465973,
		0.062422, 0.465772, 0.882701,
		0.997975, -0.018336, -0.060898,
		28.120256, 20.998760, 27.719646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559065, 21.747141, 27.887148>,  <27.421673, 21.011595, 27.762274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559065, 21.747141, 27.887148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.893185, 21.592831, 27.730457>,  <28.093657, 21.500244, 27.636442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.893185, 21.592831, 27.730457>,  <27.559065, 21.747141, 27.887148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893185, 21.592831, 27.730457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154137, 0.848242, -0.506683,
		0.527746, 0.362853, 0.767999,
		0.835300, -0.385777, -0.391727,
		28.143774, 21.477098, 27.612940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089878, 22.245783, 28.020908>,  <27.559065, 21.747141, 27.887148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089878, 22.245783, 28.020908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.233210, 22.031570, 27.715019>,  <28.319208, 21.903042, 27.531485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.233210, 22.031570, 27.715019>,  <28.089878, 22.245783, 28.020908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233210, 22.031570, 27.715019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234618, 0.844486, -0.481454,
		0.903634, -0.006899, 0.428250,
		0.358330, -0.535533, -0.764725,
		28.340708, 21.870911, 27.485601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684662, 22.536034, 27.956676>,  <28.089878, 22.245783, 28.020908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684662, 22.536034, 27.956676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623001, 22.357006, 27.604332>,  <28.586004, 22.249590, 27.392925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623001, 22.357006, 27.604332>,  <28.684662, 22.536034, 27.956676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623001, 22.357006, 27.604332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239620, 0.847968, -0.472791,
		0.958551, -0.283954, -0.023470,
		-0.154152, -0.447571, -0.880862,
		28.576756, 22.222734, 27.340073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224182, 22.678598, 27.571951>,  <28.684662, 22.536034, 27.956676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224182, 22.678598, 27.571951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.920992, 22.588619, 27.327045>,  <28.739077, 22.534632, 27.180101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.920992, 22.588619, 27.327045>,  <29.224182, 22.678598, 27.571951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920992, 22.588619, 27.327045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119240, 0.875050, -0.469116,
		0.641289, -0.428586, -0.636445,
		-0.757978, -0.224949, -0.612265,
		28.693598, 22.521135, 27.143366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492176, 22.915743, 26.880217>,  <29.224182, 22.678598, 27.571951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492176, 22.915743, 26.880217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.093819, 22.907120, 26.845047>,  <28.854805, 22.901945, 26.823946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.093819, 22.907120, 26.845047>,  <29.492176, 22.915743, 26.880217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093819, 22.907120, 26.845047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032711, 0.819914, -0.571551,
		0.084410, -0.572080, -0.815842,
		-0.995894, -0.021558, -0.087922,
		28.795050, 22.900652, 26.818670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962885, 22.625820, 26.361807>,  <29.492176, 22.915743, 26.880217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962885, 22.625820, 26.361807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.331182, 22.690018, 26.504059>,  <30.552160, 22.728537, 26.589411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.331182, 22.690018, 26.504059>,  <29.962885, 22.625820, 26.361807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331182, 22.690018, 26.504059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041233, -0.866349, 0.497734,
		0.387983, -0.472949, -0.791067,
		0.920743, 0.160494, 0.355630,
		30.607405, 22.738167, 26.610748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182877, 22.011473, 26.534271>,  <29.962885, 22.625820, 26.361807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182877, 22.011473, 26.534271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463137, 22.223026, 26.725842>,  <30.631292, 22.349958, 26.840784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463137, 22.223026, 26.725842>,  <30.182877, 22.011473, 26.534271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463137, 22.223026, 26.725842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170559, -0.775920, 0.607337,
		0.692817, -0.343847, -0.633856,
		0.700652, 0.528883, 0.478924,
		30.673332, 22.381691, 26.869518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743221, 21.543377, 26.663944>,  <30.182877, 22.011473, 26.534271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743221, 21.543377, 26.663944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.787193, 21.843700, 26.924469>,  <30.813576, 22.023893, 27.080784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.787193, 21.843700, 26.924469>,  <30.743221, 21.543377, 26.663944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787193, 21.843700, 26.924469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218634, -0.657497, 0.721039,
		0.969595, 0.063135, -0.236430,
		0.109929, 0.750807, 0.651310,
		30.820171, 22.068943, 27.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410732, 21.371599, 26.963314>,  <30.743221, 21.543377, 26.663944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410732, 21.371599, 26.963314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211699, 21.634995, 27.189163>,  <31.092278, 21.793032, 27.324673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211699, 21.634995, 27.189163>,  <31.410732, 21.371599, 26.963314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211699, 21.634995, 27.189163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261526, -0.506747, 0.821469,
		0.827050, 0.556416, 0.079938,
		-0.497587, 0.658490, 0.564623,
		31.062422, 21.832542, 27.358549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906891, 21.591257, 27.413031>,  <31.410732, 21.371599, 26.963314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906891, 21.591257, 27.413031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557852, 21.667854, 27.592766>,  <31.348429, 21.713812, 27.700607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557852, 21.667854, 27.592766>,  <31.906891, 21.591257, 27.413031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557852, 21.667854, 27.592766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211401, -0.681257, 0.700856,
		0.440324, 0.706555, 0.553980,
		-0.872596, 0.191492, 0.449340,
		31.296072, 21.725302, 27.727568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090405, 21.646669, 28.154421>,  <31.906891, 21.591257, 27.413031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090405, 21.646669, 28.154421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694733, 21.588104, 28.150600>,  <31.457331, 21.552965, 28.148308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694733, 21.588104, 28.150600>,  <32.090405, 21.646669, 28.154421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694733, 21.588104, 28.150600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109107, -0.777538, 0.619299,
		-0.098102, 0.611554, 0.785097,
		-0.989177, -0.146414, -0.009553,
		31.397980, 21.544180, 28.147734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886551, 21.606596, 28.875610>,  <32.090405, 21.646669, 28.154421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886551, 21.606596, 28.875610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586710, 21.425686, 28.682304>,  <31.406805, 21.317139, 28.566320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586710, 21.425686, 28.682304>,  <31.886551, 21.606596, 28.875610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586710, 21.425686, 28.682304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072841, -0.782062, 0.618929,
		-0.657870, 0.428748, 0.619179,
		-0.749601, -0.452277, -0.483264,
		31.361830, 21.290003, 28.537325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266857, 21.892538, 28.932821>,  <31.886551, 21.606596, 28.875610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266857, 21.892538, 28.932821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440943, 21.956852, 29.287163>,  <31.545395, 21.995441, 29.499767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440943, 21.956852, 29.287163>,  <31.266857, 21.892538, 28.932821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440943, 21.956852, 29.287163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570511, 0.711914, -0.409505,
		-0.696495, 0.683612, 0.218105,
		0.435215, 0.160787, 0.885853,
		31.571507, 22.005089, 29.552919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186802, 22.610779, 29.086399>,  <31.266857, 21.892538, 28.932821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186802, 22.610779, 29.086399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.525061, 22.472618, 29.249165>,  <31.728016, 22.389721, 29.346825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.525061, 22.472618, 29.249165>,  <31.186802, 22.610779, 29.086399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525061, 22.472618, 29.249165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502846, 0.771194, -0.390391,
		-0.178968, 0.534749, 0.825841,
		0.845645, -0.345404, 0.406916,
		31.778755, 22.368998, 29.371239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501129, 23.241524, 29.496498>,  <31.186802, 22.610779, 29.086399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501129, 23.241524, 29.496498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791025, 22.969482, 29.452301>,  <31.964964, 22.806257, 29.425783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791025, 22.969482, 29.452301>,  <31.501129, 23.241524, 29.496498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791025, 22.969482, 29.452301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615238, 0.710957, -0.340621,
		0.310212, 0.178884, 0.933686,
		0.724742, -0.680104, -0.110491,
		32.008446, 22.765451, 29.419153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060734, 23.576054, 29.739239>,  <31.501129, 23.241524, 29.496498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060734, 23.576054, 29.739239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196514, 23.278584, 29.508858>,  <32.277981, 23.100101, 29.370628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196514, 23.278584, 29.508858>,  <32.060734, 23.576054, 29.739239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196514, 23.278584, 29.508858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694455, 0.611132, -0.379802,
		0.634432, -0.271050, 0.723898,
		0.339452, -0.743673, -0.575954,
		32.298351, 23.055481, 29.336071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771027, 23.730787, 29.818855>,  <32.060734, 23.576054, 29.739239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771027, 23.730787, 29.818855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678993, 23.500286, 29.505169>,  <32.623772, 23.361984, 29.316957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678993, 23.500286, 29.505169>,  <32.771027, 23.730787, 29.818855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678993, 23.500286, 29.505169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428676, 0.663427, -0.613271,
		0.873669, -0.477279, 0.094381,
		-0.230086, -0.576254, -0.784214,
		32.609966, 23.327410, 29.269905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417068, 23.720554, 29.467340>,  <32.771027, 23.730787, 29.818855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417068, 23.720554, 29.467340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126099, 23.612469, 29.215042>,  <32.951519, 23.547617, 29.063663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126099, 23.612469, 29.215042>,  <33.417068, 23.720554, 29.467340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126099, 23.612469, 29.215042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318898, 0.680780, -0.659426,
		0.607585, -0.680825, -0.409045,
		-0.727423, -0.270213, -0.630745,
		32.907871, 23.531404, 29.025818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676933, 23.705202, 28.787500>,  <33.417068, 23.720554, 29.467340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676933, 23.705202, 28.787500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287399, 23.758080, 28.713551>,  <33.053680, 23.789806, 28.669182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287399, 23.758080, 28.713551>,  <33.676933, 23.705202, 28.787500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287399, 23.758080, 28.713551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224769, 0.680601, -0.697325,
		0.033643, -0.720630, -0.692503,
		-0.973831, 0.132193, -0.184873,
		32.995251, 23.797737, 28.658089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.350294, 21.734003, 31.845385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.963367, 21.804676, 31.772633>,  <29.731211, 21.847080, 31.728981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.963367, 21.804676, 31.772633>,  <30.350294, 21.734003, 31.845385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963367, 21.804676, 31.772633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162197, 0.982482, 0.091767,
		0.194907, 0.059267, -0.979029,
		-0.967318, 0.176682, -0.181880,
		29.673172, 21.857681, 31.718069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366669, 22.362413, 31.510761>,  <30.350294, 21.734003, 31.845385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366669, 22.362413, 31.510761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973057, 22.340580, 31.578533>,  <29.736889, 22.327480, 31.619196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973057, 22.340580, 31.578533>,  <30.366669, 22.362413, 31.510761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973057, 22.340580, 31.578533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051862, 0.998445, 0.020446,
		-0.170282, 0.011333, -0.985330,
		-0.984030, -0.054582, 0.169430,
		29.677849, 22.324205, 31.629362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096697, 22.917418, 31.037306>,  <30.366669, 22.362413, 31.510761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096697, 22.917418, 31.037306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817669, 22.854259, 31.316868>,  <29.650253, 22.816364, 31.484606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817669, 22.854259, 31.316868>,  <30.096697, 22.917418, 31.037306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817669, 22.854259, 31.316868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038483, 0.982266, 0.183499,
		-0.715484, 0.101107, -0.691274,
		-0.697568, -0.157893, 0.698905,
		29.608398, 22.806892, 31.526539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489113, 23.282431, 30.870457>,  <30.096697, 22.917418, 31.037306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489113, 23.282431, 30.870457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.458187, 23.222919, 31.264793>,  <29.439631, 23.187212, 31.501396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.458187, 23.222919, 31.264793>,  <29.489113, 23.282431, 30.870457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458187, 23.222919, 31.264793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079833, 0.984704, 0.154868,
		-0.993805, 0.090677, -0.064256,
		-0.077316, -0.148779, 0.985843,
		29.434992, 23.178286, 31.560547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960287, 23.648170, 31.064936>,  <29.489113, 23.282431, 30.870457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960287, 23.648170, 31.064936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.133495, 23.596313, 31.421741>,  <29.237421, 23.565199, 31.635824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.133495, 23.596313, 31.421741>,  <28.960287, 23.648170, 31.064936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133495, 23.596313, 31.421741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127032, 0.970949, 0.202782,
		-0.892388, -0.201123, 0.403971,
		0.433020, -0.129643, 0.892013,
		29.263401, 23.557421, 31.689344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485468, 23.966578, 31.593521>,  <28.960287, 23.648170, 31.064936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485468, 23.966578, 31.593521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.849182, 23.967041, 31.759991>,  <29.067410, 23.967319, 31.859873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.849182, 23.967041, 31.759991>,  <28.485468, 23.966578, 31.593521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849182, 23.967041, 31.759991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077901, 0.982796, 0.167462,
		-0.408821, -0.184691, 0.893731,
		0.909284, 0.001160, 0.416175,
		29.121967, 23.967388, 31.884844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442896, 24.308609, 32.327553>,  <28.485468, 23.966578, 31.593521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442896, 24.308609, 32.327553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.812929, 24.330956, 32.177299>,  <29.034948, 24.344362, 32.087147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.812929, 24.330956, 32.177299>,  <28.442896, 24.308609, 32.327553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812929, 24.330956, 32.177299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022508, 0.995448, 0.092612,
		0.379098, -0.077219, 0.922129,
		0.925083, 0.055864, -0.375634,
		29.090454, 24.347715, 32.064610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787834, 24.784031, 32.717823>,  <28.442896, 24.308609, 32.327553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787834, 24.784031, 32.717823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044138, 24.783066, 32.410728>,  <29.197920, 24.782486, 32.226471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044138, 24.783066, 32.410728>,  <28.787834, 24.784031, 32.717823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044138, 24.783066, 32.410728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266335, 0.938594, 0.219333,
		0.720066, -0.345015, 0.602055,
		0.640758, -0.002414, -0.767739,
		29.236366, 24.782341, 32.180408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354862, 25.326412, 32.893829>,  <28.787834, 24.784031, 32.717823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354862, 25.326412, 32.893829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.372175, 25.271736, 32.497963>,  <29.382563, 25.238930, 32.260441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.372175, 25.271736, 32.497963>,  <29.354862, 25.326412, 32.893829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372175, 25.271736, 32.497963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200193, 0.971692, -0.125453,
		0.978800, -0.192695, 0.069420,
		0.043281, -0.136691, -0.989668,
		29.385159, 25.230728, 32.201061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982864, 25.719425, 32.806911>,  <29.354862, 25.326412, 32.893829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982864, 25.719425, 32.806911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818417, 25.666786, 32.446098>,  <29.719748, 25.635202, 32.229610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818417, 25.666786, 32.446098>,  <29.982864, 25.719425, 32.806911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818417, 25.666786, 32.446098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395908, 0.865552, -0.306717,
		0.821119, -0.483220, -0.303746,
		-0.411120, -0.131596, -0.902032,
		29.695080, 25.627308, 32.175488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590754, 25.868404, 32.368900>,  <29.982864, 25.719425, 32.806911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590754, 25.868404, 32.368900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.253414, 25.894939, 32.155598>,  <30.051010, 25.910860, 32.027615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.253414, 25.894939, 32.155598>,  <30.590754, 25.868404, 32.368900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253414, 25.894939, 32.155598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251148, 0.925958, -0.282005,
		0.475067, -0.371755, -0.797565,
		-0.843348, 0.066336, -0.533258,
		30.000410, 25.914841, 31.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829714, 26.096088, 31.796627>,  <30.590754, 25.868404, 32.368900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829714, 26.096088, 31.796627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.444052, 26.197765, 31.827072>,  <30.212654, 26.258772, 31.845339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.444052, 26.197765, 31.827072>,  <30.829714, 26.096088, 31.796627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444052, 26.197765, 31.827072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167816, 0.806351, -0.567130,
		-0.205533, -0.534028, -0.820104,
		-0.964155, 0.254190, 0.076113,
		30.154806, 26.274023, 31.849907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685986, 25.466513, 31.303080>,  <30.829714, 26.096088, 31.796627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685986, 25.466513, 31.303080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.075272, 25.528278, 31.234947>,  <31.308844, 25.565338, 31.194069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.075272, 25.528278, 31.234947>,  <30.685986, 25.466513, 31.303080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075272, 25.528278, 31.234947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228491, -0.731679, 0.642213,
		-0.025458, -0.663928, -0.747363,
		0.973213, 0.154416, -0.170329,
		31.367235, 25.574604, 31.183849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052202, 24.888071, 31.025579>,  <30.685986, 25.466513, 31.303080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052202, 24.888071, 31.025579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.325792, 25.101921, 31.224117>,  <31.489946, 25.230230, 31.343241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.325792, 25.101921, 31.224117>,  <31.052202, 24.888071, 31.025579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325792, 25.101921, 31.224117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199722, -0.791620, 0.577450,
		0.701635, -0.295829, -0.648223,
		0.683973, 0.534623, 0.496345,
		31.530985, 25.262308, 31.373020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511663, 24.472013, 31.098639>,  <31.052202, 24.888071, 31.025579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511663, 24.472013, 31.098639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.627953, 24.719986, 31.390163>,  <31.697725, 24.868769, 31.565079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.627953, 24.719986, 31.390163>,  <31.511663, 24.472013, 31.098639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627953, 24.719986, 31.390163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178767, -0.783494, 0.595130,
		0.939959, -0.042729, -0.338601,
		0.290722, 0.619929, 0.728814,
		31.715170, 24.905964, 31.608807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229568, 24.332697, 31.242188>,  <31.511663, 24.472013, 31.098639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229568, 24.332697, 31.242188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060104, 24.466003, 31.579102>,  <31.958426, 24.545988, 31.781250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060104, 24.466003, 31.579102>,  <32.229568, 24.332697, 31.242188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060104, 24.466003, 31.579102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465504, -0.717576, 0.518064,
		0.777058, 0.611570, 0.148871,
		-0.423658, 0.333266, 0.842287,
		31.933006, 24.565983, 31.831787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605843, 24.073959, 31.780537>,  <32.229568, 24.332697, 31.242188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605843, 24.073959, 31.780537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318848, 24.218842, 32.018536>,  <32.146652, 24.305771, 32.161335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318848, 24.218842, 32.018536>,  <32.605843, 24.073959, 31.780537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318848, 24.218842, 32.018536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264930, -0.648091, 0.713996,
		0.644224, 0.669915, 0.369037,
		-0.717487, 0.362204, 0.594997,
		32.103603, 24.327503, 32.197033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913628, 23.973621, 32.411640>,  <32.605843, 24.073959, 31.780537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913628, 23.973621, 32.411640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533272, 24.026821, 32.523445>,  <32.305058, 24.058741, 32.590527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533272, 24.026821, 32.523445>,  <32.913628, 23.973621, 32.411640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533272, 24.026821, 32.523445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123388, -0.665290, 0.736319,
		0.283885, 0.734644, 0.616204,
		-0.950886, 0.132998, 0.279512,
		32.248005, 24.066721, 32.607300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847473, 24.012869, 33.181446>,  <32.913628, 23.973621, 32.411640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847473, 24.012869, 33.181446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486134, 23.902142, 33.050396>,  <32.269329, 23.835705, 32.971767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486134, 23.902142, 33.050396>,  <32.847473, 24.012869, 33.181446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486134, 23.902142, 33.050396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082261, -0.637853, 0.765752,
		-0.420950, 0.718690, 0.553431,
		-0.903346, -0.276817, -0.327625,
		32.215130, 23.819096, 32.952110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397774, 23.863058, 33.748184>,  <32.847473, 24.012869, 33.181446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397774, 23.863058, 33.748184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.184147, 23.679157, 33.464382>,  <32.055973, 23.568817, 33.294102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.184147, 23.679157, 33.464382>,  <32.397774, 23.863058, 33.748184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184147, 23.679157, 33.464382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239380, -0.722642, 0.648449,
		-0.810846, 0.516157, 0.275882,
		-0.534065, -0.459752, -0.709509,
		32.023926, 23.541231, 33.251530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800913, 23.492659, 34.166416>,  <32.397774, 23.863058, 33.748184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800913, 23.492659, 34.166416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831823, 23.330978, 33.801857>,  <31.850370, 23.233971, 33.583122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831823, 23.330978, 33.801857>,  <31.800913, 23.492659, 34.166416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831823, 23.330978, 33.801857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408312, -0.846789, 0.340924,
		-0.909566, 0.345791, -0.230476,
		0.077276, -0.404199, -0.911401,
		31.855005, 23.209719, 33.528439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223175, 23.182360, 34.022984>,  <31.800913, 23.492659, 34.166416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223175, 23.182360, 34.022984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466272, 22.986183, 33.773148>,  <31.612131, 22.868477, 33.623245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466272, 22.986183, 33.773148>,  <31.223175, 23.182360, 34.022984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466272, 22.986183, 33.773148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570632, -0.816686, 0.086042,
		-0.552293, 0.304120, -0.776198,
		0.607743, -0.490443, -0.624591,
		31.648596, 22.839050, 33.585770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792049, 22.900383, 33.517979>,  <31.223175, 23.182360, 34.022984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792049, 22.900383, 33.517979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140863, 22.709343, 33.560783>,  <31.350153, 22.594719, 33.586468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140863, 22.709343, 33.560783>,  <30.792049, 22.900383, 33.517979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140863, 22.709343, 33.560783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489266, -0.856483, 0.164483,
		0.013098, -0.195793, -0.980558,
		0.872036, -0.477600, 0.107013,
		31.402473, 22.566063, 33.592888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604454, 22.182074, 33.299370>,  <30.792049, 22.900383, 33.517979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604454, 22.182074, 33.299370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954638, 22.159443, 33.491356>,  <31.164747, 22.145864, 33.606548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954638, 22.159443, 33.491356>,  <30.604454, 22.182074, 33.299370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954638, 22.159443, 33.491356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310945, -0.826214, 0.469771,
		0.369978, -0.560509, -0.740909,
		0.875460, -0.056577, 0.479968,
		31.217276, 22.142469, 33.635345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788305, 21.437840, 33.262550>,  <30.604454, 22.182074, 33.299370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788305, 21.437840, 33.262550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.008890, 21.597061, 33.555790>,  <31.141241, 21.692595, 33.731735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.008890, 21.597061, 33.555790>,  <30.788305, 21.437840, 33.262550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008890, 21.597061, 33.555790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169783, -0.806860, 0.565819,
		0.816739, -0.436497, -0.377371,
		0.551463, 0.398055, 0.733104,
		31.174330, 21.716478, 33.775723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248089, 20.914637, 33.490734>,  <30.788305, 21.437840, 33.262550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248089, 20.914637, 33.490734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200806, 21.168663, 33.796078>,  <31.172436, 21.321079, 33.979282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200806, 21.168663, 33.796078>,  <31.248089, 20.914637, 33.490734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200806, 21.168663, 33.796078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355616, -0.744836, 0.564585,
		0.927127, -0.204724, 0.313886,
		-0.118210, 0.635065, 0.763360,
		31.165342, 21.359182, 34.025085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282616, 21.085653, 32.832607>,  <31.248089, 20.914637, 33.490734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282616, 21.085653, 32.832607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534340, 20.861324, 32.617405>,  <31.685375, 20.726727, 32.488285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534340, 20.861324, 32.617405>,  <31.282616, 21.085653, 32.832607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534340, 20.861324, 32.617405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189374, 0.560746, -0.806040,
		0.753727, 0.609134, 0.246679,
		0.629311, -0.560820, -0.538004,
		31.723133, 20.693079, 32.456005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640274, 21.556923, 32.489838>,  <31.282616, 21.085653, 32.832607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640274, 21.556923, 32.489838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671352, 21.215057, 32.284504>,  <31.689999, 21.009939, 32.161304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671352, 21.215057, 32.284504>,  <31.640274, 21.556923, 32.489838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671352, 21.215057, 32.284504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032510, 0.512449, -0.858102,
		0.996447, 0.083360, 0.012030,
		0.077696, -0.854662, -0.513339,
		31.694660, 20.958658, 32.130501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109531, 21.734207, 31.988241>,  <31.640274, 21.556923, 32.489838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109531, 21.734207, 31.988241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.919516, 21.417549, 31.834549>,  <31.805506, 21.227554, 31.742332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.919516, 21.417549, 31.834549>,  <32.109531, 21.734207, 31.988241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919516, 21.417549, 31.834549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112061, 0.378666, -0.918724,
		0.872801, -0.479486, -0.091168,
		-0.475037, -0.791647, -0.384232,
		31.777004, 21.180056, 31.719280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529793, 21.500196, 31.401255>,  <32.109531, 21.734207, 31.988241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529793, 21.500196, 31.401255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.173393, 21.341904, 31.312241>,  <31.959555, 21.246927, 31.258833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.173393, 21.341904, 31.312241>,  <32.529793, 21.500196, 31.401255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173393, 21.341904, 31.312241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073990, 0.357032, -0.931157,
		0.447942, -0.846122, -0.288834,
		-0.890996, -0.395734, -0.222535,
		31.906094, 21.223185, 31.245480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597984, 21.168800, 30.727776>,  <32.529793, 21.500196, 31.401255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597984, 21.168800, 30.727776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208729, 21.242580, 30.782871>,  <31.975174, 21.286848, 30.815928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208729, 21.242580, 30.782871>,  <32.597984, 21.168800, 30.727776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208729, 21.242580, 30.782871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065991, 0.349695, -0.934537,
		-0.220542, -0.918527, -0.328131,
		-0.973142, 0.184451, 0.137737,
		31.916786, 21.297916, 30.824192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245983, 20.763866, 30.261871>,  <32.597984, 21.168800, 30.727776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245983, 20.763866, 30.261871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012863, 21.073078, 30.362087>,  <31.872992, 21.258606, 30.422216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012863, 21.073078, 30.362087>,  <32.245983, 20.763866, 30.261871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012863, 21.073078, 30.362087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072811, 0.257398, -0.963558,
		-0.809350, -0.579800, -0.093726,
		-0.582796, 0.773031, 0.250541,
		31.838024, 21.304987, 30.437250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752813, 20.834227, 29.701962>,  <32.245983, 20.763866, 30.261871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752813, 20.834227, 29.701962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.767256, 21.187439, 29.889130>,  <31.775921, 21.399366, 30.001431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.767256, 21.187439, 29.889130>,  <31.752813, 20.834227, 29.701962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767256, 21.187439, 29.889130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018373, 0.468735, -0.883148,
		-0.999179, 0.023291, 0.033148,
		0.036107, 0.883032, 0.467922,
		31.778088, 21.452349, 30.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272583, 21.349594, 29.430283>,  <31.752813, 20.834227, 29.701962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272583, 21.349594, 29.430283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190018, 21.141800, 29.098614>,  <31.140478, 21.017124, 28.899612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190018, 21.141800, 29.098614>,  <31.272583, 21.349594, 29.430283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190018, 21.141800, 29.098614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117350, -0.828162, 0.548066,
		-0.971402, 0.210432, 0.109983,
		-0.206414, -0.519486, -0.829173,
		31.128094, 20.985954, 28.849861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611523, 20.990469, 29.535219>,  <31.272583, 21.349594, 29.430283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611523, 20.990469, 29.535219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.802134, 20.777473, 29.255398>,  <30.916500, 20.649675, 29.087505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.802134, 20.777473, 29.255398>,  <30.611523, 20.990469, 29.535219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802134, 20.777473, 29.255398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382746, -0.841997, 0.380193,
		-0.791469, 0.086577, -0.605046,
		0.476531, -0.532490, -0.699552,
		30.945093, 20.617727, 29.045532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070070, 20.537420, 29.129669>,  <30.611523, 20.990469, 29.535219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070070, 20.537420, 29.129669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.430395, 20.366165, 29.100716>,  <30.646589, 20.263412, 29.083344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.430395, 20.366165, 29.100716>,  <30.070070, 20.537420, 29.129669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430395, 20.366165, 29.100716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378958, -0.856557, 0.350287,
		-0.211971, -0.288113, -0.933841,
		0.900810, -0.428138, -0.072383,
		30.700638, 20.237724, 29.079000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952929, 19.861462, 28.917959>,  <30.070070, 20.537420, 29.129669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952929, 19.861462, 28.917959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.327879, 19.830505, 29.053802>,  <30.552849, 19.811932, 29.135309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.327879, 19.830505, 29.053802>,  <29.952929, 19.861462, 28.917959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327879, 19.830505, 29.053802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198632, -0.919696, 0.338681,
		0.286127, -0.384929, -0.877474,
		0.937378, -0.077388, 0.339609,
		30.609093, 19.807289, 29.155685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016155, 19.178686, 28.845165>,  <29.952929, 19.861462, 28.917959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016155, 19.178686, 28.845165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326624, 19.274288, 29.078552>,  <30.512905, 19.331650, 29.218584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326624, 19.274288, 29.078552>,  <30.016155, 19.178686, 28.845165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326624, 19.274288, 29.078552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133180, -0.842351, 0.522214,
		0.616295, -0.483034, -0.621979,
		0.776172, 0.239003, 0.583467,
		30.559475, 19.345989, 29.253592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511244, 18.636656, 28.796484>,  <30.016155, 19.178686, 28.845165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511244, 18.636656, 28.796484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.529089, 18.841118, 29.139816>,  <30.539797, 18.963795, 29.345816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.529089, 18.841118, 29.139816>,  <30.511244, 18.636656, 28.796484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529089, 18.841118, 29.139816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212007, -0.834770, 0.508146,
		0.976249, -0.204643, 0.071126,
		0.044615, 0.511156, 0.858329,
		30.542473, 18.994465, 29.397314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914911, 18.302082, 29.272882>,  <30.511244, 18.636656, 28.796484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914911, 18.302082, 29.272882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.685480, 18.530560, 29.507744>,  <30.547821, 18.667646, 29.648661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.685480, 18.530560, 29.507744>,  <30.914911, 18.302082, 29.272882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685480, 18.530560, 29.507744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121125, -0.768042, 0.628841,
		0.810146, 0.289571, 0.509718,
		-0.573578, 0.571192, 0.587152,
		30.513407, 18.701918, 29.683889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091835, 18.116219, 29.948294>,  <30.914911, 18.302082, 29.272882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091835, 18.116219, 29.948294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.746275, 18.307404, 30.011833>,  <30.538939, 18.422115, 30.049957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.746275, 18.307404, 30.011833>,  <31.091835, 18.116219, 29.948294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746275, 18.307404, 30.011833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311276, -0.754601, 0.577655,
		0.395964, 0.449589, 0.800676,
		-0.863898, 0.477962, 0.158849,
		30.487106, 18.450792, 30.059488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981037, 17.927111, 30.610529>,  <31.091835, 18.116219, 29.948294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981037, 17.927111, 30.610529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.624386, 18.064995, 30.493107>,  <30.410395, 18.147726, 30.422653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.624386, 18.064995, 30.493107>,  <30.981037, 17.927111, 30.610529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624386, 18.064995, 30.493107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452747, -0.672439, 0.585531,
		0.004441, 0.654981, 0.755632,
		-0.891628, 0.344710, -0.293554,
		30.356897, 18.168407, 30.405041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.702326, 32.605782, 22.206709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335466, 32.460674, 22.140694>,  <31.115351, 32.373611, 22.101084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335466, 32.460674, 22.140694>,  <31.702326, 32.605782, 22.206709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335466, 32.460674, 22.140694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281166, -0.882432, 0.377174,
		-0.282462, 0.299521, 0.911319,
		-0.917148, -0.362769, -0.165039,
		31.060322, 32.351845, 22.091183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424030, 32.213211, 22.787184>,  <31.702326, 32.605782, 22.206709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424030, 32.213211, 22.787184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226460, 32.065872, 22.472134>,  <31.107918, 31.977468, 22.283104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226460, 32.065872, 22.472134>,  <31.424030, 32.213211, 22.787184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226460, 32.065872, 22.472134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171150, -0.929301, 0.327274,
		-0.852492, 0.026847, 0.522050,
		-0.493928, -0.368347, -0.787627,
		31.078281, 31.955368, 22.235846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963425, 31.695250, 23.127584>,  <31.424030, 32.213211, 22.787184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963425, 31.695250, 23.127584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997028, 31.593925, 22.742092>,  <31.017191, 31.533131, 22.510798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997028, 31.593925, 22.742092>,  <30.963425, 31.695250, 23.127584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997028, 31.593925, 22.742092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015516, -0.966700, 0.255441,
		-0.996344, -0.036412, -0.077280,
		0.084007, -0.253309, -0.963731,
		31.022230, 31.517933, 22.452972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477676, 31.247677, 23.058140>,  <30.963425, 31.695250, 23.127584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477676, 31.247677, 23.058140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707209, 31.142616, 22.747852>,  <30.844927, 31.079580, 22.561680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707209, 31.142616, 22.747852>,  <30.477676, 31.247677, 23.058140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707209, 31.142616, 22.747852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164023, -0.964845, 0.205353,
		-0.802382, 0.009398, -0.596736,
		0.573828, -0.262650, -0.775717,
		30.879356, 31.063822, 22.515137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278645, 30.654753, 22.870607>,  <30.477676, 31.247677, 23.058140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278645, 30.654753, 22.870607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602819, 30.600372, 22.642673>,  <30.797325, 30.567745, 22.505913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602819, 30.600372, 22.642673>,  <30.278645, 30.654753, 22.870607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602819, 30.600372, 22.642673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146623, -0.988814, 0.027375,
		-0.567181, 0.061365, -0.821304,
		0.810437, -0.135949, -0.569834,
		30.845951, 30.559587, 22.471724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116917, 30.041676, 22.447531>,  <30.278645, 30.654753, 22.870607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116917, 30.041676, 22.447531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514725, 30.078873, 22.466629>,  <30.753410, 30.101191, 22.478088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514725, 30.078873, 22.466629>,  <30.116917, 30.041676, 22.447531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514725, 30.078873, 22.466629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067651, -0.920772, 0.384190,
		0.079691, -0.378855, -0.922018,
		0.994521, 0.092992, 0.047747,
		30.813082, 30.106770, 22.480953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400585, 29.414181, 21.980984>,  <30.116917, 30.041676, 22.447531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400585, 29.414181, 21.980984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677147, 29.543541, 22.239403>,  <30.843084, 29.621157, 22.394453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677147, 29.543541, 22.239403>,  <30.400585, 29.414181, 21.980984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677147, 29.543541, 22.239403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134502, -0.936204, 0.324703,
		0.709839, -0.137606, -0.690792,
		0.691403, 0.323400, 0.646046,
		30.884567, 29.640560, 22.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972862, 28.973782, 21.928717>,  <30.400585, 29.414181, 21.980984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972862, 28.973782, 21.928717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024132, 29.106064, 22.302711>,  <31.054893, 29.185432, 22.527109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024132, 29.106064, 22.302711>,  <30.972862, 28.973782, 21.928717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024132, 29.106064, 22.302711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190817, -0.933374, 0.303976,
		0.973222, 0.139450, -0.182739,
		0.128175, 0.330706, 0.934989,
		31.062584, 29.205276, 22.583208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520788, 28.571159, 22.234697>,  <30.972862, 28.973782, 21.928717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520788, 28.571159, 22.234697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360529, 28.733902, 22.563076>,  <31.264374, 28.831547, 22.760103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360529, 28.733902, 22.563076>,  <31.520788, 28.571159, 22.234697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360529, 28.733902, 22.563076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171683, -0.846794, 0.503453,
		0.900004, 0.342649, 0.269416,
		-0.400647, 0.406856, 0.820945,
		31.240335, 28.855959, 22.809359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021736, 28.545477, 22.759432>,  <31.520788, 28.571159, 22.234697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021736, 28.545477, 22.759432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675331, 28.595749, 22.953022>,  <31.467489, 28.625912, 23.069176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675331, 28.595749, 22.953022>,  <32.021736, 28.545477, 22.759432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675331, 28.595749, 22.953022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206447, -0.791681, 0.574997,
		0.455420, 0.597868, 0.659656,
		-0.866009, 0.125681, 0.483976,
		31.415529, 28.633453, 23.098215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246643, 28.224535, 23.330553>,  <32.021736, 28.545477, 22.759432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246643, 28.224535, 23.330553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849390, 28.251850, 23.368546>,  <31.611038, 28.268240, 23.391340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849390, 28.251850, 23.368546>,  <32.246643, 28.224535, 23.330553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849390, 28.251850, 23.368546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004727, -0.834686, 0.550706,
		0.116886, 0.546476, 0.829278,
		-0.993134, 0.068290, 0.094980,
		31.551451, 28.272337, 23.397039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014217, 28.314497, 24.118402>,  <32.246643, 28.224535, 23.330553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014217, 28.314497, 24.118402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730551, 28.154068, 23.886463>,  <31.560350, 28.057812, 23.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730551, 28.154068, 23.886463>,  <32.014217, 28.314497, 24.118402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730551, 28.154068, 23.886463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074854, -0.860615, 0.503725,
		-0.701054, 0.313822, 0.640343,
		-0.709168, -0.401071, -0.579847,
		31.517799, 28.033747, 23.712509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048462, 28.628830, 24.784922>,  <32.014217, 28.314497, 24.118402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048462, 28.628830, 24.784922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439182, 28.607201, 24.867798>,  <32.673615, 28.594223, 24.917524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439182, 28.607201, 24.867798>,  <32.048462, 28.628830, 24.784922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439182, 28.607201, 24.867798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133194, 0.911056, -0.390176,
		-0.167665, 0.408722, 0.897126,
		0.976805, -0.054073, 0.207191,
		32.732224, 28.590979, 24.929955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229443, 29.279278, 25.121708>,  <32.048462, 28.628830, 24.784922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229443, 29.279278, 25.121708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583706, 29.132782, 25.007526>,  <32.796265, 29.044886, 24.939018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583706, 29.132782, 25.007526>,  <32.229443, 29.279278, 25.121708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583706, 29.132782, 25.007526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239527, 0.886979, -0.394836,
		0.397793, 0.281316, 0.873282,
		0.885656, -0.366238, -0.285452,
		32.849403, 29.022911, 24.921890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719738, 29.776590, 25.330509>,  <32.229443, 29.279278, 25.121708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719738, 29.776590, 25.330509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888382, 29.575710, 25.028507>,  <32.989571, 29.455183, 24.847305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888382, 29.575710, 25.028507>,  <32.719738, 29.776590, 25.330509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888382, 29.575710, 25.028507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128729, 0.857345, -0.498386,
		0.897591, 0.112936, 0.426117,
		0.421615, -0.502201, -0.755007,
		33.014866, 29.425051, 24.802006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379765, 30.136826, 25.163797>,  <32.719738, 29.776590, 25.330509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379765, 30.136826, 25.163797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324543, 29.898521, 24.847313>,  <33.291412, 29.755539, 24.657423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324543, 29.898521, 24.847313>,  <33.379765, 30.136826, 25.163797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324543, 29.898521, 24.847313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329000, 0.725911, -0.603997,
		0.934184, -0.343690, 0.095792,
		-0.138051, -0.595760, -0.791209,
		33.283127, 29.719793, 24.609951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023468, 30.031542, 24.917486>,  <33.379765, 30.136826, 25.163797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023468, 30.031542, 24.917486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744362, 30.006851, 24.632023>,  <33.576897, 29.992037, 24.460745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744362, 30.006851, 24.632023>,  <34.023468, 30.031542, 24.917486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744362, 30.006851, 24.632023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450305, 0.737010, -0.504026,
		0.557086, -0.673057, -0.486466,
		-0.697768, -0.061728, -0.713659,
		33.535030, 29.988333, 24.417925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420738, 30.085663, 24.350746>,  <34.023468, 30.031542, 24.917486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420738, 30.085663, 24.350746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058067, 30.143173, 24.192120>,  <33.840466, 30.177679, 24.096945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058067, 30.143173, 24.192120>,  <34.420738, 30.085663, 24.350746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058067, 30.143173, 24.192120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371099, 0.718842, -0.587837,
		0.200550, -0.680143, -0.705113,
		-0.906678, 0.143776, -0.396564,
		33.786064, 30.186306, 24.073151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466763, 29.981613, 23.563536>,  <34.420738, 30.085663, 24.350746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466763, 29.981613, 23.563536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138786, 30.196186, 23.643475>,  <33.942001, 30.324930, 23.691439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138786, 30.196186, 23.643475>,  <34.466763, 29.981613, 23.563536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138786, 30.196186, 23.643475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334422, 0.732206, -0.593326,
		-0.464610, -0.419657, -0.779760,
		-0.819938, 0.536435, 0.199848,
		33.892803, 30.357117, 23.703428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244068, 30.202599, 22.918385>,  <34.466763, 29.981613, 23.563536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244068, 30.202599, 22.918385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058834, 30.456379, 23.165939>,  <33.947693, 30.608646, 23.314472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058834, 30.456379, 23.165939>,  <34.244068, 30.202599, 22.918385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058834, 30.456379, 23.165939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213159, 0.757501, -0.617053,
		-0.860299, -0.153827, -0.486028,
		-0.463086, 0.634452, 0.618888,
		33.919907, 30.646715, 23.351606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961769, 30.634045, 22.515079>,  <34.244068, 30.202599, 22.918385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961769, 30.634045, 22.515079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957565, 30.836460, 22.860058>,  <33.955044, 30.957909, 23.067045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957565, 30.836460, 22.860058>,  <33.961769, 30.634045, 22.515079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957565, 30.836460, 22.860058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176654, 0.849868, -0.496505,
		-0.984217, 0.147139, -0.098321,
		-0.010505, 0.506038, 0.862448,
		33.954414, 30.988272, 23.118792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489376, 31.131609, 22.511576>,  <33.961769, 30.634045, 22.515079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489376, 31.131609, 22.511576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718121, 31.276218, 22.806133>,  <33.855366, 31.362984, 22.982868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718121, 31.276218, 22.806133>,  <33.489376, 31.131609, 22.511576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718121, 31.276218, 22.806133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117241, 0.852426, -0.509533,
		-0.811929, 0.377718, 0.445084,
		0.571861, 0.361523, 0.736394,
		33.889679, 31.384676, 23.027052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415936, 31.811548, 22.409946>,  <33.489376, 31.131609, 22.511576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415936, 31.811548, 22.409946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704636, 31.836754, 22.685658>,  <33.877857, 31.851877, 22.851084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704636, 31.836754, 22.685658>,  <33.415936, 31.811548, 22.409946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704636, 31.836754, 22.685658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238746, 0.912063, -0.333378,
		-0.649674, 0.405178, 0.643238,
		0.721751, 0.063016, 0.689278,
		33.921162, 31.855659, 22.892441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350071, 32.473618, 22.895855>,  <33.415936, 31.811548, 22.409946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350071, 32.473618, 22.895855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733418, 32.359413, 22.893917>,  <33.963425, 32.290890, 22.892754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733418, 32.359413, 22.893917>,  <33.350071, 32.473618, 22.895855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733418, 32.359413, 22.893917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278584, 0.938563, -0.203694,
		0.062704, 0.193863, 0.979023,
		0.958363, -0.285512, -0.004844,
		34.020927, 32.273758, 22.892464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679394, 32.918415, 23.309566>,  <33.350071, 32.473618, 22.895855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679394, 32.918415, 23.309566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944801, 32.744732, 23.065861>,  <34.104046, 32.640522, 22.919638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944801, 32.744732, 23.065861>,  <33.679394, 32.918415, 23.309566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944801, 32.744732, 23.065861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385765, 0.896309, -0.218666,
		0.641036, -0.089943, 0.762222,
		0.663520, -0.434211, -0.609264,
		34.143856, 32.614468, 22.883081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325687, 33.173553, 23.410439>,  <33.679394, 32.918415, 23.309566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325687, 33.173553, 23.410439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314518, 33.055317, 23.028477>,  <34.307816, 32.984375, 22.799299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314518, 33.055317, 23.028477>,  <34.325687, 33.173553, 23.410439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314518, 33.055317, 23.028477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343187, 0.894379, -0.286895,
		0.938852, -0.335722, 0.076471,
		-0.027923, -0.295596, -0.954905,
		34.306141, 32.966637, 22.742004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920708, 33.667171, 23.813831>,  <34.325687, 33.173553, 23.410439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920708, 33.667171, 23.813831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688507, 33.954590, 23.967041>,  <33.549187, 34.127041, 24.058968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688507, 33.954590, 23.967041>,  <33.920708, 33.667171, 23.813831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688507, 33.954590, 23.967041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163131, -0.563490, 0.809856,
		0.797749, 0.407641, 0.444326,
		-0.580504, 0.718545, 0.383025,
		33.514355, 34.170155, 24.081949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794189, 33.399014, 24.371033>,  <33.920708, 33.667171, 23.813831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794189, 33.399014, 24.371033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632713, 33.752209, 24.466831>,  <33.535828, 33.964127, 24.524311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632713, 33.752209, 24.466831>,  <33.794189, 33.399014, 24.371033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632713, 33.752209, 24.466831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054297, -0.284439, 0.957155,
		0.913281, 0.373394, 0.162770,
		-0.403694, 0.882990, 0.239498,
		33.511604, 34.017105, 24.538681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130974, 33.821522, 24.914501>,  <33.794189, 33.399014, 24.371033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130974, 33.821522, 24.914501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742455, 33.916645, 24.916512>,  <33.509342, 33.973717, 24.917719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742455, 33.916645, 24.916512>,  <34.130974, 33.821522, 24.914501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742455, 33.916645, 24.916512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092448, -0.396901, 0.913194,
		0.219157, 0.886521, 0.407494,
		-0.971300, 0.237805, 0.005027,
		33.451065, 33.987988, 24.918020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950523, 34.245388, 25.576303>,  <34.130974, 33.821522, 24.914501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950523, 34.245388, 25.576303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631248, 34.053082, 25.431110>,  <33.439682, 33.937698, 25.343994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631248, 34.053082, 25.431110>,  <33.950523, 34.245388, 25.576303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631248, 34.053082, 25.431110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184652, -0.378285, 0.907085,
		-0.573410, 0.791050, 0.213168,
		-0.798188, -0.480770, -0.362981,
		33.391792, 33.908852, 25.322216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444324, 34.163059, 26.164988>,  <33.950523, 34.245388, 25.576303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444324, 34.163059, 26.164988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310478, 33.912708, 25.883190>,  <33.230171, 33.762497, 25.714111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310478, 33.912708, 25.883190>,  <33.444324, 34.163059, 26.164988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310478, 33.912708, 25.883190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294377, -0.640752, 0.709069,
		-0.895195, 0.444653, 0.030163,
		-0.334617, -0.625876, -0.704493,
		33.210094, 33.724945, 25.671843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795811, 33.973232, 26.367609>,  <33.444324, 34.163059, 26.164988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795811, 33.973232, 26.367609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894226, 33.664410, 26.133209>,  <32.953274, 33.479115, 25.992569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894226, 33.664410, 26.133209>,  <32.795811, 33.973232, 26.367609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894226, 33.664410, 26.133209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056457, -0.614973, 0.786525,
		-0.967615, -0.160430, -0.194894,
		0.246036, -0.772056, -0.585999,
		32.968037, 33.432793, 25.957409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301712, 33.392078, 26.616930>,  <32.795811, 33.973232, 26.367609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301712, 33.392078, 26.616930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555424, 33.199398, 26.375053>,  <32.707653, 33.083790, 26.229927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555424, 33.199398, 26.375053>,  <32.301712, 33.392078, 26.616930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555424, 33.199398, 26.375053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054291, -0.807987, 0.586694,
		-0.771192, -0.339302, -0.538644,
		0.634284, -0.481697, -0.604692,
		32.745708, 33.054890, 26.193645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945078, 32.870033, 26.402422>,  <32.301712, 33.392078, 26.616930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945078, 32.870033, 26.402422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331245, 32.786472, 26.340031>,  <32.562946, 32.736336, 26.302595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331245, 32.786472, 26.340031>,  <31.945078, 32.870033, 26.402422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331245, 32.786472, 26.340031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127445, -0.900083, 0.416664,
		-0.227434, -0.382376, -0.895579,
		0.965418, -0.208901, -0.155978,
		32.620872, 32.723801, 26.293238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944048, 32.113968, 26.135870>,  <31.945078, 32.870033, 26.402422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944048, 32.113968, 26.135870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312782, 32.189178, 26.271439>,  <32.534023, 32.234303, 26.352779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312782, 32.189178, 26.271439>,  <31.944048, 32.113968, 26.135870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312782, 32.189178, 26.271439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015180, -0.856264, 0.516315,
		0.387286, -0.481102, -0.786479,
		0.921834, 0.188023, 0.338923,
		32.589333, 32.245586, 26.373116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286911, 31.465775, 25.978331>,  <31.944048, 32.113968, 26.135870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286911, 31.465775, 25.978331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486797, 31.660580, 26.264854>,  <32.606731, 31.777462, 26.436769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486797, 31.660580, 26.264854>,  <32.286911, 31.465775, 25.978331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486797, 31.660580, 26.264854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147120, -0.862675, 0.483888,
		0.853603, -0.136423, -0.502743,
		0.499718, 0.487012, 0.716311,
		32.636711, 31.806683, 26.479748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964169, 31.165695, 26.109844>,  <32.286911, 31.465775, 25.978331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964169, 31.165695, 26.109844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861115, 31.320801, 26.463852>,  <32.799282, 31.413864, 26.676256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861115, 31.320801, 26.463852>,  <32.964169, 31.165695, 26.109844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861115, 31.320801, 26.463852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140105, -0.891270, 0.431288,
		0.956030, 0.235112, 0.175298,
		-0.257638, 0.387764, 0.885021,
		32.783825, 31.437130, 26.729359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067787, 30.579029, 26.474089>,  <32.964169, 31.165695, 26.109844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067787, 30.579029, 26.474089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927742, 30.831997, 26.750484>,  <32.843716, 30.983778, 26.916321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927742, 30.831997, 26.750484>,  <33.067787, 30.579029, 26.474089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927742, 30.831997, 26.750484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056943, -0.721944, 0.689604,
		0.934975, 0.280786, 0.216750,
		-0.350113, 0.632421, 0.690988,
		32.822708, 31.021723, 26.957781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560673, 30.506756, 27.023573>,  <33.067787, 30.579029, 26.474089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560673, 30.506756, 27.023573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197472, 30.622768, 27.144512>,  <32.979549, 30.692375, 27.217075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197472, 30.622768, 27.144512>,  <33.560673, 30.506756, 27.023573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197472, 30.622768, 27.144512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052581, -0.794835, 0.604543,
		0.415651, 0.533029, 0.736963,
		-0.908003, 0.290030, 0.302347,
		32.925072, 30.709778, 27.235216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570305, 30.399351, 27.651253>,  <33.560673, 30.506756, 27.023573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570305, 30.399351, 27.651253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177406, 30.394432, 27.576366>,  <32.941669, 30.391481, 27.531435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177406, 30.394432, 27.576366>,  <33.570305, 30.399351, 27.651253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177406, 30.394432, 27.576366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105406, -0.789323, 0.604862,
		-0.155210, 0.613855, 0.774010,
		-0.982242, -0.012295, -0.187215,
		32.882732, 30.390743, 27.520203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400093, 30.303890, 28.244968>,  <33.570305, 30.399351, 27.651253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400093, 30.303890, 28.244968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086960, 30.191162, 28.023067>,  <32.899082, 30.123526, 27.889927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086960, 30.191162, 28.023067>,  <33.400093, 30.303890, 28.244968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086960, 30.191162, 28.023067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210867, -0.718642, 0.662638,
		-0.585415, 0.635713, 0.503149,
		-0.782831, -0.281821, -0.554754,
		32.852112, 30.106615, 27.856642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828983, 30.278070, 28.723803>,  <33.400093, 30.303890, 28.244968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828983, 30.278070, 28.723803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739441, 30.049053, 28.408314>,  <32.685715, 29.911642, 28.219021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739441, 30.049053, 28.408314>,  <32.828983, 30.278070, 28.723803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739441, 30.049053, 28.408314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220374, -0.758565, 0.613200,
		-0.949380, 0.311085, 0.043639,
		-0.223860, -0.572543, -0.788721,
		32.672283, 29.877291, 28.171698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179825, 30.029896, 28.873425>,  <32.828983, 30.278070, 28.723803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179825, 30.029896, 28.873425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345421, 29.793335, 28.596626>,  <32.444778, 29.651400, 28.430548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345421, 29.793335, 28.596626>,  <32.179825, 30.029896, 28.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345421, 29.793335, 28.596626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227932, -0.803331, 0.550188,
		-0.881284, -0.070043, -0.467368,
		0.413988, -0.591400, -0.691997,
		32.469616, 29.615915, 28.389027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626562, 29.505739, 28.791315>,  <32.179825, 30.029896, 28.873425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626562, 29.505739, 28.791315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938631, 29.334888, 28.608498>,  <32.125874, 29.232378, 28.498808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938631, 29.334888, 28.608498>,  <31.626562, 29.505739, 28.791315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938631, 29.334888, 28.608498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198736, -0.861997, 0.466331,
		-0.593154, -0.272988, -0.757394,
		0.780175, -0.427128, -0.457044,
		32.172684, 29.206751, 28.471384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387493, 28.880751, 28.445795>,  <31.626562, 29.505739, 28.791315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387493, 28.880751, 28.445795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780783, 28.810020, 28.463718>,  <32.016754, 28.767582, 28.474472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780783, 28.810020, 28.463718>,  <31.387493, 28.880751, 28.445795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780783, 28.810020, 28.463718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174856, -0.843616, 0.507678,
		-0.051968, -0.506995, -0.860381,
		0.983222, -0.176825, 0.044810,
		32.075748, 28.756973, 28.477161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501703, 28.160208, 28.177263>,  <31.387493, 28.880751, 28.445795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501703, 28.160208, 28.177263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815645, 28.248066, 28.409042>,  <32.004009, 28.300781, 28.548109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815645, 28.248066, 28.409042>,  <31.501703, 28.160208, 28.177263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815645, 28.248066, 28.409042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192086, -0.802783, 0.564485,
		0.589156, -0.554343, -0.587877,
		0.784856, 0.219646, 0.579446,
		32.051102, 28.313959, 28.582876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764969, 27.522829, 28.298052>,  <31.501703, 28.160208, 28.177263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764969, 27.522829, 28.298052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947611, 27.740746, 28.579395>,  <32.057198, 27.871496, 28.748201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947611, 27.740746, 28.579395>,  <31.764969, 27.522829, 28.298052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947611, 27.740746, 28.579395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122354, -0.744621, 0.656178,
		0.881216, -0.385673, -0.273339,
		0.456604, 0.544791, 0.703360,
		32.084591, 27.904182, 28.790403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330696, 27.117447, 28.580866>,  <31.764969, 27.522829, 28.298052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330696, 27.117447, 28.580866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230793, 27.388004, 28.858028>,  <32.170853, 27.550339, 29.024326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230793, 27.388004, 28.858028>,  <32.330696, 27.117447, 28.580866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230793, 27.388004, 28.858028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001558, -0.715862, 0.698240,
		0.968307, 0.173310, 0.179845,
		-0.249757, 0.676391, 0.692904,
		32.155865, 27.590921, 29.065899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697300, 26.915550, 29.016096>,  <32.330696, 27.117447, 28.580866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697300, 26.915550, 29.016096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393410, 27.102283, 29.197151>,  <32.211075, 27.214323, 29.305784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393410, 27.102283, 29.197151>,  <32.697300, 26.915550, 29.016096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393410, 27.102283, 29.197151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090855, -0.613067, 0.784789,
		0.643865, 0.637349, 0.423349,
		-0.759726, 0.466835, 0.452638,
		32.165493, 27.242334, 29.332943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915707, 26.981146, 29.750988>,  <32.697300, 26.915550, 29.016096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915707, 26.981146, 29.750988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517174, 27.015331, 29.749592>,  <32.278053, 27.035843, 29.748755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517174, 27.015331, 29.749592>,  <32.915707, 26.981146, 29.750988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517174, 27.015331, 29.749592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061108, -0.682656, 0.728180,
		0.059848, 0.725725, 0.685377,
		-0.996335, 0.085462, -0.003492,
		32.218273, 27.040970, 29.748545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945400, 26.932663, 30.373716>,  <32.915707, 26.981146, 29.750988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945400, 26.932663, 30.373716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556759, 26.913143, 30.281101>,  <32.323574, 26.901432, 30.225533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556759, 26.913143, 30.281101>,  <32.945400, 26.932663, 30.373716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556759, 26.913143, 30.281101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167840, -0.547617, 0.819723,
		-0.166795, 0.835305, 0.523875,
		-0.971601, -0.048798, -0.231537,
		32.265278, 26.898504, 30.211639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459511, 27.145851, 31.007828>,  <32.945400, 26.932663, 30.373716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459511, 27.145851, 31.007828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237148, 26.917686, 30.765968>,  <32.103729, 26.780788, 30.620853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237148, 26.917686, 30.765968>,  <32.459511, 27.145851, 31.007828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237148, 26.917686, 30.765968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307026, -0.535065, 0.787045,
		-0.772466, 0.623165, 0.122314,
		-0.555905, -0.570412, -0.604648,
		32.070377, 26.746563, 30.584574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763420, 27.159683, 31.279543>,  <32.459511, 27.145851, 31.007828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763420, 27.159683, 31.279543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777632, 26.837505, 31.042900>,  <31.786158, 26.644199, 30.900915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777632, 26.837505, 31.042900>,  <31.763420, 27.159683, 31.279543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777632, 26.837505, 31.042900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345389, -0.565398, 0.749021,
		-0.937787, 0.177723, -0.298278,
		0.035527, -0.805444, -0.591606,
		31.788290, 26.595873, 30.865417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091036, 26.812572, 31.256504>,  <31.763420, 27.159683, 31.279543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091036, 26.812572, 31.256504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346668, 26.526955, 31.142162>,  <31.500048, 26.355583, 31.073557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346668, 26.526955, 31.142162>,  <31.091036, 26.812572, 31.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346668, 26.526955, 31.142162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333546, -0.592182, 0.733531,
		-0.693052, -0.373441, -0.616620,
		0.639082, -0.714046, -0.285853,
		31.538393, 26.312740, 31.056406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624529, 26.243084, 31.087944>,  <31.091036, 26.812572, 31.256504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624529, 26.243084, 31.087944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341074, 26.418446, 31.309082>,  <30.171001, 26.523663, 31.441765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341074, 26.418446, 31.309082>,  <30.624529, 26.243084, 31.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341074, 26.418446, 31.309082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113340, 0.702633, -0.702468,
		-0.696413, -0.560453, -0.448221,
		-0.708635, 0.438406, 0.552844,
		30.128483, 26.549967, 31.474936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119009, 26.535011, 30.546648>,  <30.624529, 26.243084, 31.087944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119009, 26.535011, 30.546648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985437, 26.714317, 30.878323>,  <29.905294, 26.821901, 31.077328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985437, 26.714317, 30.878323>,  <30.119009, 26.535011, 30.546648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985437, 26.714317, 30.878323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141926, 0.845740, -0.514374,
		-0.931852, -0.289448, -0.218797,
		-0.333930, 0.448267, 0.829185,
		29.885258, 26.848797, 31.127077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404112, 26.645876, 30.444927>,  <30.119009, 26.535011, 30.546648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404112, 26.645876, 30.444927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552515, 26.912617, 30.703434>,  <29.641558, 27.072660, 30.858538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552515, 26.912617, 30.703434>,  <29.404112, 26.645876, 30.444927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552515, 26.912617, 30.703434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375021, 0.744256, -0.552668,
		-0.849536, -0.037321, 0.526208,
		0.371008, 0.666851, 0.646269,
		29.663818, 27.112673, 30.897314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829214, 27.044035, 30.608006>,  <29.404112, 26.645876, 30.444927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829214, 27.044035, 30.608006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146240, 27.271042, 30.697235>,  <29.336456, 27.407246, 30.750772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146240, 27.271042, 30.697235>,  <28.829214, 27.044035, 30.608006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146240, 27.271042, 30.697235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359156, 0.730092, -0.581354,
		-0.492791, 0.380644, 0.782475,
		0.792568, 0.567517, 0.223072,
		29.384010, 27.441298, 30.764156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599833, 27.792221, 30.748188>,  <28.829214, 27.044035, 30.608006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599833, 27.792221, 30.748188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987652, 27.836754, 30.660934>,  <29.220343, 27.863474, 30.608582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987652, 27.836754, 30.660934>,  <28.599833, 27.792221, 30.748188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987652, 27.836754, 30.660934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222364, 0.773433, -0.593596,
		0.102624, 0.624024, 0.774637,
		0.969548, 0.111334, -0.218133,
		29.278517, 27.870153, 30.595495>
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
