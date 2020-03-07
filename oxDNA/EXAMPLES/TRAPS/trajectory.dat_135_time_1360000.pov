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
	<36.238605, 53.535629, 49.531879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852486, 53.466801, 49.453300>,  <35.620815, 53.425503, 49.406155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852486, 53.466801, 49.453300>,  <36.238605, 53.535629, 49.531879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852486, 53.466801, 49.453300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129772, -0.336729, 0.932616,
		-0.226629, 0.925745, 0.302713,
		-0.965297, -0.172074, -0.196448,
		35.562897, 53.415180, 49.394367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041985, 53.712917, 48.851372>,  <36.238605, 53.535629, 49.531879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041985, 53.712917, 48.851372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951298, 53.948746, 48.541275>,  <35.896885, 54.090244, 48.355217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951298, 53.948746, 48.541275>,  <36.041985, 53.712917, 48.851372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951298, 53.948746, 48.541275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003394, 0.795488, 0.605960,
		0.973955, 0.140011, -0.178349,
		-0.226716, 0.589573, -0.775244,
		35.883282, 54.125618, 48.308701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389164, 54.334511, 48.952900>,  <36.041985, 53.712917, 48.851372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389164, 54.334511, 48.952900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099140, 54.439453, 48.698196>,  <35.925125, 54.502419, 48.545376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099140, 54.439453, 48.698196>,  <36.389164, 54.334511, 48.952900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099140, 54.439453, 48.698196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039516, 0.907222, 0.418792,
		0.687551, 0.328811, -0.647423,
		-0.725060, 0.262358, -0.636755,
		35.881622, 54.518162, 48.507172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835098, 54.328365, 49.529266>,  <36.389164, 54.334511, 48.952900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835098, 54.328365, 49.529266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782906, 54.701866, 49.662582>,  <36.751591, 54.925968, 49.742573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782906, 54.701866, 49.662582>,  <36.835098, 54.328365, 49.529266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782906, 54.701866, 49.662582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944410, -0.219375, 0.244877,
		0.301770, -0.282807, 0.910470,
		-0.130481, 0.933753, 0.333286,
		36.743763, 54.981991, 49.762569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300022, 53.781143, 49.898144>,  <36.835098, 54.328365, 49.529266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300022, 53.781143, 49.898144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685444, 53.865482, 49.832291>,  <37.916698, 53.916088, 49.792778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685444, 53.865482, 49.832291>,  <37.300022, 53.781143, 49.898144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685444, 53.865482, 49.832291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156920, 0.943921, 0.290498,
		0.216652, -0.254077, 0.942607,
		0.963555, 0.210851, -0.164633,
		37.974510, 53.928738, 49.782902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552029, 53.950447, 50.563992>,  <37.300022, 53.781143, 49.898144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552029, 53.950447, 50.563992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763435, 54.125156, 50.272816>,  <37.890278, 54.229984, 50.098110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763435, 54.125156, 50.272816>,  <37.552029, 53.950447, 50.563992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763435, 54.125156, 50.272816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039421, 0.843934, 0.534997,
		0.848011, -0.311448, 0.428810,
		0.528511, 0.436779, -0.727942,
		37.921989, 54.256191, 50.054432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129379, 54.293480, 50.897243>,  <37.552029, 53.950447, 50.563992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129379, 54.293480, 50.897243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072163, 54.451649, 50.534325>,  <38.037834, 54.546551, 50.316574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072163, 54.451649, 50.534325>,  <38.129379, 54.293480, 50.897243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072163, 54.451649, 50.534325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103541, 0.905713, 0.411052,
		0.984286, 0.152739, -0.088611,
		-0.143040, 0.395418, -0.907295,
		38.029251, 54.570274, 50.262135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656689, 54.740791, 50.583851>,  <38.129379, 54.293480, 50.897243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656689, 54.740791, 50.583851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295296, 54.841850, 50.445351>,  <38.078461, 54.902485, 50.362251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295296, 54.841850, 50.445351>,  <38.656689, 54.740791, 50.583851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295296, 54.841850, 50.445351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069010, 0.883016, 0.464242,
		0.423035, 0.395539, -0.815224,
		-0.903481, 0.252650, -0.346251,
		38.024250, 54.917645, 50.341476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567539, 55.521496, 50.309311>,  <38.656689, 54.740791, 50.583851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567539, 55.521496, 50.309311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233948, 55.387695, 50.484848>,  <38.033791, 55.307415, 50.590172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233948, 55.387695, 50.484848>,  <38.567539, 55.521496, 50.309311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233948, 55.387695, 50.484848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065558, 0.729612, 0.680712,
		-0.547883, 0.596472, -0.586554,
		-0.833982, -0.334497, 0.438845,
		37.983753, 55.287346, 50.616501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337112, 56.116688, 50.579647>,  <38.567539, 55.521496, 50.309311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337112, 56.116688, 50.579647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095493, 55.856445, 50.763748>,  <37.950520, 55.700302, 50.874210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095493, 55.856445, 50.763748>,  <38.337112, 56.116688, 50.579647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095493, 55.856445, 50.763748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106998, 0.638506, 0.762143,
		-0.789729, 0.411128, -0.455304,
		-0.604053, -0.650603, 0.460257,
		37.914276, 55.661266, 50.901825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944302, 56.377335, 50.300285>,  <38.337112, 56.116688, 50.579647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944302, 56.377335, 50.300285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219578, 56.101082, 50.211357>,  <39.384743, 55.935329, 50.158001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219578, 56.101082, 50.211357>,  <38.944302, 56.377335, 50.300285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219578, 56.101082, 50.211357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671090, 0.489462, 0.556835,
		-0.275750, -0.532404, 0.800317,
		0.688186, -0.690632, -0.222322,
		39.426033, 55.893890, 50.144661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443951, 56.817684, 49.925076>,  <38.944302, 56.377335, 50.300285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443951, 56.817684, 49.925076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783791, 56.680954, 50.085739>,  <39.987694, 56.598915, 50.182137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783791, 56.680954, 50.085739>,  <39.443951, 56.817684, 49.925076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783791, 56.680954, 50.085739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468259, 0.839320, -0.276182,
		-0.242718, 0.422727, 0.873149,
		0.849601, -0.341826, 0.401664,
		40.038670, 56.578407, 50.206238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589771, 57.270203, 50.420784>,  <39.443951, 56.817684, 49.925076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589771, 57.270203, 50.420784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919201, 57.111221, 50.258919>,  <40.116859, 57.015831, 50.161800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919201, 57.111221, 50.258919>,  <39.589771, 57.270203, 50.420784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919201, 57.111221, 50.258919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259269, 0.898329, -0.354661,
		0.504485, 0.187173, 0.842889,
		0.823574, -0.397456, -0.404665,
		40.166275, 56.991985, 50.137520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198017, 57.591969, 50.644314>,  <39.589771, 57.270203, 50.420784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198017, 57.591969, 50.644314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297039, 57.452602, 50.282692>,  <40.356453, 57.368984, 50.065720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297039, 57.452602, 50.282692>,  <40.198017, 57.591969, 50.644314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297039, 57.452602, 50.282692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417892, 0.880243, -0.224807,
		0.874117, -0.322146, 0.363512,
		0.247559, -0.348416, -0.904058,
		40.371307, 57.348076, 50.011475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984486, 57.539467, 50.636444>,  <40.198017, 57.591969, 50.644314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984486, 57.539467, 50.636444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817547, 57.570168, 50.274242>,  <40.717384, 57.588589, 50.056923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817547, 57.570168, 50.274242>,  <40.984486, 57.539467, 50.636444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817547, 57.570168, 50.274242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438409, 0.889808, -0.126647,
		0.796002, -0.449835, -0.405007,
		-0.417349, 0.076748, -0.905500,
		40.692341, 57.593193, 50.002594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366451, 57.451786, 51.197029>,  <40.984486, 57.539467, 50.636444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366451, 57.451786, 51.197029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224800, 57.091694, 51.095695>,  <41.139809, 56.875637, 51.034897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224800, 57.091694, 51.095695>,  <41.366451, 57.451786, 51.197029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224800, 57.091694, 51.095695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470901, -0.405688, 0.783371,
		-0.807987, 0.158122, 0.567586,
		-0.354131, -0.900230, -0.253331,
		41.118561, 56.821625, 51.019695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232574, 57.048840, 51.826096>,  <41.366451, 57.451786, 51.197029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232574, 57.048840, 51.826096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322586, 56.800888, 51.525398>,  <41.376595, 56.652119, 51.344982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322586, 56.800888, 51.525398>,  <41.232574, 57.048840, 51.826096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322586, 56.800888, 51.525398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639559, -0.488084, 0.593918,
		-0.735069, -0.614430, 0.286616,
		0.225028, -0.619878, -0.751740,
		41.390095, 56.614925, 51.299877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338737, 56.333759, 52.082539>,  <41.232574, 57.048840, 51.826096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338737, 56.333759, 52.082539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560570, 56.338387, 51.749718>,  <41.693668, 56.341164, 51.550026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560570, 56.338387, 51.749718>,  <41.338737, 56.333759, 52.082539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560570, 56.338387, 51.749718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746611, -0.448442, 0.491398,
		-0.367444, -0.893737, -0.257330,
		0.554579, 0.011564, -0.832051,
		41.726944, 56.341854, 51.500103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586227, 55.651520, 51.948944>,  <41.338737, 56.333759, 52.082539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586227, 55.651520, 51.948944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842781, 55.922585, 51.805054>,  <41.996716, 56.085224, 51.718719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842781, 55.922585, 51.805054>,  <41.586227, 55.651520, 51.948944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842781, 55.922585, 51.805054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692666, -0.309859, 0.651307,
		0.329901, -0.666908, -0.668131,
		0.641389, 0.677658, -0.359722,
		42.035198, 56.125881, 51.697136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282555, 55.382374, 51.744171>,  <41.586227, 55.651520, 51.948944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282555, 55.382374, 51.744171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317139, 55.763588, 51.860268>,  <42.337891, 55.992317, 51.929924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317139, 55.763588, 51.860268>,  <42.282555, 55.382374, 51.744171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317139, 55.763588, 51.860268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816375, -0.234758, 0.527656,
		0.571014, 0.191322, -0.798335,
		0.086463, 0.953040, 0.290241,
		42.343079, 56.049500, 51.947338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441925, 55.585476, 52.423225>,  <42.282555, 55.382374, 51.744171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441925, 55.585476, 52.423225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716747, 55.509007, 52.142822>,  <42.881641, 55.463123, 51.974583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716747, 55.509007, 52.142822>,  <42.441925, 55.585476, 52.423225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716747, 55.509007, 52.142822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071761, 0.977903, -0.196357,
		0.723052, 0.084603, 0.685593,
		0.687056, -0.191175, -0.701004,
		42.922863, 55.451653, 51.932522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155216, 55.820915, 52.493202>,  <42.441925, 55.585476, 52.423225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155216, 55.820915, 52.493202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057545, 55.822823, 52.105316>,  <42.998943, 55.823967, 51.872585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057545, 55.822823, 52.105316>,  <43.155216, 55.820915, 52.493202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057545, 55.822823, 52.105316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002939, 0.999987, 0.004179,
		0.969726, -0.001830, -0.244190,
		-0.244179, 0.004770, -0.969718,
		42.984291, 55.824253, 51.814400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637295, 55.442245, 52.159416>,  <43.155216, 55.820915, 52.493202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637295, 55.442245, 52.159416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783379, 55.689320, 51.880825>,  <43.871029, 55.837566, 51.713669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783379, 55.689320, 51.880825>,  <43.637295, 55.442245, 52.159416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783379, 55.689320, 51.880825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880964, 0.012485, 0.473019,
		0.300873, -0.786324, -0.539601,
		0.365209, 0.617688, -0.696480,
		43.892941, 55.874626, 51.671883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260681, 55.227779, 52.014145>,  <43.637295, 55.442245, 52.159416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260681, 55.227779, 52.014145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269985, 55.616287, 51.919403>,  <44.275566, 55.849392, 51.862560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269985, 55.616287, 51.919403>,  <44.260681, 55.227779, 52.014145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269985, 55.616287, 51.919403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924421, 0.069316, 0.375022,
		0.380664, -0.227671, -0.896248,
		0.023257, 0.971268, -0.236850,
		44.276962, 55.907669, 51.848347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755474, 55.487930, 51.460777>,  <44.260681, 55.227779, 52.014145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755474, 55.487930, 51.460777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707928, 55.788773, 51.720070>,  <44.679398, 55.969280, 51.875645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707928, 55.788773, 51.720070>,  <44.755474, 55.487930, 51.460777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707928, 55.788773, 51.720070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962223, -0.073797, 0.262072,
		0.244945, 0.654892, -0.714925,
		-0.118869, 0.752110, 0.648229,
		44.672268, 56.014404, 51.914539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063904, 56.166298, 51.293499>,  <44.755474, 55.487930, 51.460777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063904, 56.166298, 51.293499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050446, 56.035961, 51.671429>,  <45.042370, 55.957760, 51.898186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050446, 56.035961, 51.671429>,  <45.063904, 56.166298, 51.293499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050446, 56.035961, 51.671429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998468, -0.052511, 0.017448,
		0.043929, 0.943963, 0.327114,
		-0.033648, -0.325846, 0.944824,
		45.040352, 55.938206, 51.954876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501682, 56.656998, 51.622032>,  <45.063904, 56.166298, 51.293499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501682, 56.656998, 51.622032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508312, 56.304222, 51.810463>,  <45.512291, 56.092556, 51.923523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508312, 56.304222, 51.810463>,  <45.501682, 56.656998, 51.622032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508312, 56.304222, 51.810463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991199, -0.047391, -0.123607,
		0.131338, 0.468981, 0.873388,
		0.016579, -0.881936, 0.471078,
		45.513287, 56.039642, 51.951786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096401, 56.526215, 52.114674>,  <45.501682, 56.656998, 51.622032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096401, 56.526215, 52.114674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011806, 56.153893, 51.995422>,  <45.961048, 55.930500, 51.923870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011806, 56.153893, 51.995422>,  <46.096401, 56.526215, 52.114674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011806, 56.153893, 51.995422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976630, -0.213207, -0.027139,
		-0.038302, -0.296901, 0.954140,
		-0.211487, -0.930802, -0.298128,
		45.948360, 55.874653, 51.905983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.400703, 55.860081, 52.557148>,  <46.096401, 56.526215, 52.114674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.400703, 55.860081, 52.557148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368340, 55.767563, 52.169342>,  <46.348923, 55.712051, 51.936657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368340, 55.767563, 52.169342>,  <46.400703, 55.860081, 52.557148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368340, 55.767563, 52.169342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992945, -0.103305, -0.058216,
		-0.086691, -0.967384, 0.238019,
		-0.080906, -0.231293, -0.969514,
		46.344067, 55.698174, 51.878487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835320, 55.306202, 52.546776>,  <46.400703, 55.860081, 52.557148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835320, 55.306202, 52.546776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801483, 55.511826, 52.205345>,  <46.781181, 55.635201, 52.000488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801483, 55.511826, 52.205345>,  <46.835320, 55.306202, 52.546776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.801483, 55.511826, 52.205345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983064, 0.182825, 0.012684,
		0.162575, -0.838046, -0.520814,
		-0.084588, 0.514056, -0.853576,
		46.776108, 55.666042, 51.949272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149044, 54.956512, 51.916588>,  <46.835320, 55.306202, 52.546776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149044, 54.956512, 51.916588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146618, 55.356262, 51.902634>,  <47.145164, 55.596111, 51.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146618, 55.356262, 51.902634>,  <47.149044, 54.956512, 51.916588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146618, 55.356262, 51.902634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999722, 0.006850, 0.022547,
		0.022771, -0.034737, -0.999137,
		-0.006061, 0.999373, -0.034883,
		47.144798, 55.656075, 51.892170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.560596, 55.353966, 51.324646>,  <47.149044, 54.956512, 51.916588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.560596, 55.353966, 51.324646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558308, 55.541176, 51.678123>,  <47.556934, 55.653503, 51.890209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558308, 55.541176, 51.678123>,  <47.560596, 55.353966, 51.324646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.558308, 55.541176, 51.678123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997136, -0.063972, 0.040343,
		0.075414, 0.881394, -0.466323,
		-0.005727, 0.468030, 0.883694,
		47.556591, 55.681583, 51.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.274269, 55.383633, 51.373005>,  <47.560596, 55.353966, 51.324646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.274269, 55.383633, 51.373005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.134125, 55.522526, 51.720955>,  <48.050037, 55.605862, 51.929726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.134125, 55.522526, 51.720955>,  <48.274269, 55.383633, 51.373005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.134125, 55.522526, 51.720955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929484, 0.014530, 0.368575,
		0.115340, 0.937668, -0.327835,
		-0.350365, 0.347229, 0.869872,
		48.029015, 55.626694, 51.981918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.671986, 56.035809, 51.561768>,  <48.274269, 55.383633, 51.373005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.671986, 56.035809, 51.561768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.505276, 55.829002, 51.860832>,  <48.405251, 55.704918, 52.040272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.505276, 55.829002, 51.860832>,  <48.671986, 56.035809, 51.561768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.505276, 55.829002, 51.860832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892210, -0.075270, 0.445305,
		-0.173953, 0.852661, 0.492656,
		-0.416776, -0.517015, 0.747658,
		48.380241, 55.673897, 52.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.967976, 56.250912, 52.134022>,  <48.671986, 56.035809, 51.561768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.967976, 56.250912, 52.134022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.838440, 55.883007, 52.222713>,  <48.760719, 55.662262, 52.275928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.838440, 55.883007, 52.222713>,  <48.967976, 56.250912, 52.134022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.838440, 55.883007, 52.222713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859293, -0.187858, 0.475737,
		-0.395913, 0.344590, 0.851182,
		-0.323835, -0.919765, 0.221728,
		48.741291, 55.607079, 52.289230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.074432, 56.276745, 52.774185>,  <48.967976, 56.250912, 52.134022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.074432, 56.276745, 52.774185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.082317, 55.916069, 52.601410>,  <49.087048, 55.699665, 52.497746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.082317, 55.916069, 52.601410>,  <49.074432, 56.276745, 52.774185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.082317, 55.916069, 52.601410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916927, -0.155916, 0.367336,
		-0.398568, -0.403298, 0.823707,
		0.019717, -0.901688, -0.431938,
		49.088234, 55.645561, 52.471828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.144371, 55.624535, 53.180962>,  <49.074432, 56.276745, 52.774185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.144371, 55.624535, 53.180962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.313049, 55.484837, 52.846249>,  <49.414257, 55.401016, 52.645420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.313049, 55.484837, 52.846249>,  <49.144371, 55.624535, 53.180962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.313049, 55.484837, 52.846249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825409, -0.234139, 0.513691,
		-0.375326, -0.907308, 0.189533,
		0.421699, -0.349244, -0.836779,
		49.439560, 55.380062, 52.595215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.386086, 54.790958, 53.203396>,  <49.144371, 55.624535, 53.180962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.386086, 54.790958, 53.203396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.601223, 55.047478, 52.984505>,  <49.730305, 55.201389, 52.853168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.601223, 55.047478, 52.984505>,  <49.386086, 54.790958, 53.203396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.601223, 55.047478, 52.984505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820586, -0.249415, 0.514228,
		0.193284, -0.725626, -0.660385,
		0.537847, 0.641295, -0.547231,
		49.762577, 55.239864, 52.820335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.113735, 54.586826, 53.148083>,  <49.386086, 54.790958, 53.203396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.113735, 54.586826, 53.148083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.185860, 54.942196, 52.979233>,  <50.229134, 55.155418, 52.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.185860, 54.942196, 52.979233>,  <50.113735, 54.586826, 53.148083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.185860, 54.942196, 52.979233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983451, -0.170551, 0.061131,
		-0.017685, -0.426165, -0.904473,
		0.180310, 0.888423, -0.422128,
		50.239952, 55.208721, 52.852592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.579193, 54.376301, 52.688622>,  <50.113735, 54.586826, 53.148083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.579193, 54.376301, 52.688622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.698425, 54.742298, 52.797379>,  <50.769966, 54.961899, 52.862633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.698425, 54.742298, 52.797379>,  <50.579193, 54.376301, 52.688622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.698425, 54.742298, 52.797379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939481, -0.230831, -0.253163,
		-0.168882, 0.330902, -0.928430,
		0.298083, 0.914998, 0.271893,
		50.787849, 55.016796, 52.878948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.316692, 54.352631, 52.727119>,  <50.579193, 54.376301, 52.688622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.316692, 54.352631, 52.727119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.250786, 54.746750, 52.745155>,  <51.211243, 54.983223, 52.755978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.250786, 54.746750, 52.745155>,  <51.316692, 54.352631, 52.727119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.250786, 54.746750, 52.745155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970223, 0.170135, -0.172398,
		-0.177536, 0.015346, -0.983995,
		-0.164766, 0.985301, 0.045095,
		51.201355, 55.042339, 52.758682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.645218, 54.623363, 52.106255>,  <51.316692, 54.352631, 52.727119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.645218, 54.623363, 52.106255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.595295, 54.914303, 52.376183>,  <51.565342, 55.088867, 52.538139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.595295, 54.914303, 52.376183>,  <51.645218, 54.623363, 52.106255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.595295, 54.914303, 52.376183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959951, 0.260469, -0.103202,
		-0.250834, 0.634913, -0.730731,
		-0.124809, 0.727352, 0.674820,
		51.557854, 55.132507, 52.578629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.899139, 55.308784, 51.975742>,  <51.645218, 54.623363, 52.106255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.899139, 55.308784, 51.975742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.922535, 55.332294, 52.374367>,  <51.936573, 55.346401, 52.613541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.922535, 55.332294, 52.374367>,  <51.899139, 55.308784, 51.975742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.922535, 55.332294, 52.374367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927693, 0.365525, -0.076004,
		-0.368733, 0.928944, -0.033144,
		0.058488, 0.058773, 0.996557,
		51.940083, 55.349926, 52.673332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.262627, 56.032551, 52.203323>,  <51.899139, 55.308784, 51.975742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.262627, 56.032551, 52.203323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.277363, 55.728573, 52.462902>,  <52.286205, 55.546188, 52.618649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.277363, 55.728573, 52.462902>,  <52.262627, 56.032551, 52.203323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.277363, 55.728573, 52.462902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999182, 0.038856, -0.011214,
		-0.016694, 0.648829, 0.760751,
		0.036836, -0.759942, 0.648947,
		52.288414, 55.500591, 52.657585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.653339, 56.232014, 52.836098>,  <52.262627, 56.032551, 52.203323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.653339, 56.232014, 52.836098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.681507, 55.836479, 52.783577>,  <52.698410, 55.599159, 52.752064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.681507, 55.836479, 52.783577>,  <52.653339, 56.232014, 52.836098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.681507, 55.836479, 52.783577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958819, 0.030795, 0.282345,
		-0.275150, -0.145774, 0.950285,
		0.070422, -0.988838, -0.131298,
		52.702633, 55.539829, 52.744186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.805527, 55.883221, 53.492813>,  <52.653339, 56.232014, 52.836098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.805527, 55.883221, 53.492813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.952679, 55.680374, 53.181046>,  <53.040970, 55.558666, 52.993984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.952679, 55.680374, 53.181046>,  <52.805527, 55.883221, 53.492813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.952679, 55.680374, 53.181046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927408, 0.139077, 0.347235,
		-0.067689, -0.850581, 0.521469,
		0.367875, -0.507119, -0.779422,
		53.063042, 55.528240, 52.947220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.244301, 55.310154, 53.736561>,  <52.805527, 55.883221, 53.492813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.244301, 55.310154, 53.736561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.322693, 55.494537, 53.390354>,  <53.369728, 55.605167, 53.182632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.322693, 55.494537, 53.390354>,  <53.244301, 55.310154, 53.736561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.322693, 55.494537, 53.390354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871247, 0.323209, 0.369411,
		0.450023, -0.826473, -0.338263,
		0.195979, 0.460954, -0.865514,
		53.381485, 55.632824, 53.130699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.856228, 55.102547, 53.539917>,  <53.244301, 55.310154, 53.736561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.856228, 55.102547, 53.539917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.797543, 55.456238, 53.362549>,  <53.762333, 55.668453, 53.256130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.797543, 55.456238, 53.362549>,  <53.856228, 55.102547, 53.539917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.797543, 55.456238, 53.362549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887822, 0.315368, 0.335136,
		0.436176, -0.344508, -0.831303,
		-0.146710, 0.884227, -0.443417,
		53.753529, 55.721504, 53.229523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.006771, 54.392284, 53.592224>,  <53.856228, 55.102547, 53.539917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.006771, 54.392284, 53.592224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.671463, 54.205437, 53.704723>,  <53.470276, 54.093327, 53.772221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.671463, 54.205437, 53.704723>,  <54.006771, 54.392284, 53.592224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.671463, 54.205437, 53.704723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135515, -0.321136, -0.937287,
		0.528143, -0.823815, 0.205898,
		-0.838272, -0.467120, 0.281245,
		53.419983, 54.065300, 53.789097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.145920, 53.710331, 53.483017>,  <54.006771, 54.392284, 53.592224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.145920, 53.710331, 53.483017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.341614, 53.908390, 53.770206>,  <54.459030, 54.027225, 53.942520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.341614, 53.908390, 53.770206>,  <54.145920, 53.710331, 53.483017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.341614, 53.908390, 53.770206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269596, -0.868756, 0.415429,
		0.829439, -0.009680, -0.558513,
		0.489233, 0.495146, 0.717970,
		54.488384, 54.056934, 53.985596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.850773, 53.423672, 53.417252>,  <54.145920, 53.710331, 53.483017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.850773, 53.423672, 53.417252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.716026, 53.572559, 53.763195>,  <54.635178, 53.661892, 53.970760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.716026, 53.572559, 53.763195>,  <54.850773, 53.423672, 53.417252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.716026, 53.572559, 53.763195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195240, -0.870963, 0.450893,
		0.921087, 0.320745, 0.220727,
		-0.336867, 0.372218, 0.864855,
		54.614967, 53.684223, 54.022652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.384895, 53.404060, 53.917877>,  <54.850773, 53.423672, 53.417252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.384895, 53.404060, 53.917877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.018211, 53.366913, 54.073318>,  <54.798199, 53.344624, 54.166584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.018211, 53.366913, 54.073318>,  <55.384895, 53.404060, 53.917877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.018211, 53.366913, 54.073318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231022, -0.916741, 0.325906,
		0.325984, 0.388539, 0.861843,
		-0.916713, -0.092864, 0.388603,
		54.743198, 53.339054, 54.189899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.617447, 53.224873, 54.434811>,  <55.384895, 53.404060, 53.917877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.617447, 53.224873, 54.434811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.254608, 53.056557, 54.430714>,  <55.036903, 52.955566, 54.428257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.254608, 53.056557, 54.430714>,  <55.617447, 53.224873, 54.434811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.254608, 53.056557, 54.430714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398836, -0.867040, 0.298617,
		-0.134534, 0.266791, 0.954318,
		-0.907100, -0.420790, -0.010240,
		54.982479, 52.930321, 54.427643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.715965, 53.378044, 55.158478>,  <55.617447, 53.224873, 54.434811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.715965, 53.378044, 55.158478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.111160, 53.401146, 55.101151>,  <56.348278, 53.415005, 55.066753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.111160, 53.401146, 55.101151>,  <55.715965, 53.378044, 55.158478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.111160, 53.401146, 55.101151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010467, 0.900385, 0.434967,
		0.154161, -0.431243, 0.888968,
		0.987990, 0.057750, -0.143318,
		56.407558, 53.418472, 55.058155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.132408, 53.312305, 55.788105>,  <55.715965, 53.378044, 55.158478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.132408, 53.312305, 55.788105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.256073, 53.585678, 55.523575>,  <56.330273, 53.749702, 55.364857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.256073, 53.585678, 55.523575>,  <56.132408, 53.312305, 55.788105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.256073, 53.585678, 55.523575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171598, 0.724063, 0.668046,
		0.935401, -0.093052, 0.341126,
		0.309160, 0.683427, -0.661322,
		56.348820, 53.790707, 55.325180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.658062, 53.791794, 56.004360>,  <56.132408, 53.312305, 55.788105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.658062, 53.791794, 56.004360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.463951, 54.010902, 55.731758>,  <56.347485, 54.142368, 55.568199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.463951, 54.010902, 55.731758>,  <56.658062, 53.791794, 56.004360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.463951, 54.010902, 55.731758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153979, 0.820790, 0.550086,
		0.860694, 0.162008, -0.482658,
		-0.485280, 0.547775, -0.681503,
		56.318367, 54.175236, 55.527306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.653801, 53.404034, 56.661171>,  <56.658062, 53.791794, 56.004360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.653801, 53.404034, 56.661171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.708824, 53.391670, 57.057175>,  <56.741837, 53.384251, 57.294777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.708824, 53.391670, 57.057175>,  <56.653801, 53.404034, 56.661171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.708824, 53.391670, 57.057175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842121, -0.522548, -0.133325,
		0.521449, 0.852049, -0.045850,
		0.137558, -0.030911, 0.990011,
		56.750092, 53.382397, 57.354179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.316044, 53.651680, 56.908966>,  <56.653801, 53.404034, 56.661171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.316044, 53.651680, 56.908966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.209320, 53.400459, 57.201370>,  <57.145287, 53.249729, 57.376812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.209320, 53.400459, 57.201370>,  <57.316044, 53.651680, 56.908966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.209320, 53.400459, 57.201370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868117, -0.486031, -0.100727,
		0.418554, 0.607726, 0.674894,
		-0.266805, -0.628047, 0.731008,
		57.129280, 53.212044, 57.420673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.714634, 53.706730, 57.548286>,  <57.316044, 53.651680, 56.908966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.714634, 53.706730, 57.548286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.554344, 53.341526, 57.517738>,  <57.458172, 53.122402, 57.499409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.554344, 53.341526, 57.517738>,  <57.714634, 53.706730, 57.548286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.554344, 53.341526, 57.517738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914097, -0.404054, 0.034150,
		-0.062039, -0.056129, 0.996494,
		-0.400721, -0.913011, -0.076375,
		57.434128, 53.067623, 57.494827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.745640, 53.319115, 58.138878>,  <57.714634, 53.706730, 57.548286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.745640, 53.319115, 58.138878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.758209, 53.099556, 57.804756>,  <57.765751, 52.967819, 57.604282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.758209, 53.099556, 57.804756>,  <57.745640, 53.319115, 58.138878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.758209, 53.099556, 57.804756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968437, -0.190029, 0.161304,
		-0.247270, -0.814003, 0.525601,
		0.031423, -0.548897, -0.835299,
		57.767635, 52.934887, 57.554165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.455040, 53.537495, 58.379150>,  <57.745640, 53.319115, 58.138878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.455040, 53.537495, 58.379150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.246887, 53.499184, 58.718567>,  <58.121994, 53.476196, 58.922218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.246887, 53.499184, 58.718567>,  <58.455040, 53.537495, 58.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.246887, 53.499184, 58.718567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849950, -0.153952, 0.503868,
		0.082375, 0.983425, 0.161522,
		-0.520383, -0.095779, 0.848544,
		58.090771, 53.470451, 58.973129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.860210, 53.931873, 58.827705>,  <58.455040, 53.537495, 58.379150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.860210, 53.931873, 58.827705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.628792, 53.689274, 59.045860>,  <58.489941, 53.543716, 59.176754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.628792, 53.689274, 59.045860>,  <58.860210, 53.931873, 58.827705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.628792, 53.689274, 59.045860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796793, -0.277305, 0.536865,
		-0.174368, 0.745161, 0.643685,
		-0.578548, -0.606495, 0.545386,
		58.455227, 53.507324, 59.209476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.446926, 54.405102, 58.645763>,  <58.860210, 53.931873, 58.827705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.446926, 54.405102, 58.645763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.747665, 54.636955, 58.520073>,  <59.928108, 54.776070, 58.444656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.747665, 54.636955, 58.520073>,  <59.446926, 54.405102, 58.645763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.747665, 54.636955, 58.520073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021596, 0.497980, 0.866919,
		0.658980, -0.645008, 0.386925,
		0.751851, 0.579638, -0.314229,
		59.973221, 54.810848, 58.425804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.902954, 54.343807, 59.129772>,  <59.446926, 54.405102, 58.645763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.902954, 54.343807, 59.129772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.898178, 54.709938, 58.968758>,  <59.895313, 54.929615, 58.872150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.898178, 54.709938, 58.968758>,  <59.902954, 54.343807, 59.129772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.898178, 54.709938, 58.968758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112756, 0.398762, 0.910096,
		0.993551, 0.056256, 0.098447,
		-0.011942, 0.915327, -0.402533,
		59.894596, 54.984535, 58.847996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.875278, 53.649349, 59.515163>,  <59.902954, 54.343807, 59.129772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.875278, 53.649349, 59.515163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.045021, 53.969486, 59.684570>,  <60.146866, 54.161568, 59.786213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.045021, 53.969486, 59.684570>,  <59.875278, 53.649349, 59.515163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.045021, 53.969486, 59.684570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766172, -0.566648, 0.303134,
		0.482597, 0.195851, -0.853664,
		0.424358, 0.800345, 0.423518,
		60.172329, 54.209591, 59.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.554176, 53.773964, 59.302330>,  <59.875278, 53.649349, 59.515163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.554176, 53.773964, 59.302330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.538559, 53.920891, 59.674042>,  <60.529190, 54.009045, 59.897068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.538559, 53.920891, 59.674042>,  <60.554176, 53.773964, 59.302330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.538559, 53.920891, 59.674042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867873, -0.448464, 0.213723,
		0.495251, 0.814838, -0.301273,
		-0.039040, 0.367313, 0.929277,
		60.526848, 54.031086, 59.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.208538, 53.966465, 59.420624>,  <60.554176, 53.773964, 59.302330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.208538, 53.966465, 59.420624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.059349, 53.863903, 59.777306>,  <60.969833, 53.802364, 59.991314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.059349, 53.863903, 59.777306>,  <61.208538, 53.966465, 59.420624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.059349, 53.863903, 59.777306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838180, -0.505279, 0.205297,
		0.397922, 0.823983, 0.403372,
		-0.372977, -0.256406, 0.891708,
		60.947456, 53.786980, 60.044819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.750912, 54.110413, 59.997215>,  <61.208538, 53.966465, 59.420624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.750912, 54.110413, 59.997215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487358, 53.832291, 60.112053>,  <61.329227, 53.665417, 60.180954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487358, 53.832291, 60.112053>,  <61.750912, 54.110413, 59.997215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.487358, 53.832291, 60.112053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707603, -0.443345, 0.550221,
		-0.255293, 0.565677, 0.784114,
		-0.658880, -0.695309, 0.287092,
		61.289696, 53.623699, 60.198181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.470715, 54.446266, 60.207375>,  <61.750912, 54.110413, 59.997215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.470715, 54.446266, 60.207375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.741493, 54.319565, 59.941620>,  <62.903961, 54.243542, 59.782166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.741493, 54.319565, 59.941620>,  <62.470715, 54.446266, 60.207375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.741493, 54.319565, 59.941620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689426, 0.588986, 0.421648,
		0.257755, -0.743478, 0.617092,
		0.676945, -0.316758, -0.664387,
		62.944576, 54.224537, 59.742302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.169228, 54.309509, 60.578159>,  <62.470715, 54.446266, 60.207375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.169228, 54.309509, 60.578159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.246712, 54.359390, 60.188919>,  <63.293201, 54.389320, 59.955376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.246712, 54.359390, 60.188919>,  <63.169228, 54.309509, 60.578159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.246712, 54.359390, 60.188919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832567, 0.503784, 0.230290,
		0.518951, -0.854782, -0.006237,
		0.193705, 0.124702, -0.973102,
		63.304825, 54.396801, 59.896988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.497276, 54.527313, 61.184387>,  <63.169228, 54.309509, 60.578159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.497276, 54.527313, 61.184387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.378883, 54.891373, 61.300331>,  <63.307846, 55.109810, 61.369896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.378883, 54.891373, 61.300331>,  <63.497276, 54.527313, 61.184387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.378883, 54.891373, 61.300331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953415, 0.263005, 0.147741,
		0.058233, 0.320084, -0.945598,
		-0.295987, 0.910151, 0.289857,
		63.290089, 55.164417, 61.387287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.922283, 54.912590, 60.700638>,  <63.497276, 54.527313, 61.184387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.922283, 54.912590, 60.700638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.847778, 55.063889, 61.063347>,  <63.803078, 55.154667, 61.280972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.847778, 55.063889, 61.063347>,  <63.922283, 54.912590, 60.700638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.847778, 55.063889, 61.063347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977407, 0.165194, 0.131859,
		-0.099918, 0.910847, -0.400468,
		-0.186259, 0.378246, 0.906773,
		63.791901, 55.177361, 61.335381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.332542, 55.496902, 60.709602>,  <63.922283, 54.912590, 60.700638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.332542, 55.496902, 60.709602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.275398, 55.328091, 61.067703>,  <64.241112, 55.226803, 61.282566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.275398, 55.328091, 61.067703>,  <64.332542, 55.496902, 60.709602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.275398, 55.328091, 61.067703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967306, 0.131972, 0.216570,
		-0.209548, 0.896924, 0.389380,
		-0.142860, -0.422032, 0.895254,
		64.232544, 55.201481, 61.336281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.807617, 55.895931, 61.067677>,  <64.332542, 55.496902, 60.709602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.807617, 55.895931, 61.067677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.709541, 55.562180, 61.265137>,  <64.650696, 55.361927, 61.383614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.709541, 55.562180, 61.265137>,  <64.807617, 55.895931, 61.067677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.709541, 55.562180, 61.265137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881426, 0.020172, 0.471890,
		-0.403693, 0.550823, 0.730497,
		-0.245192, -0.834378, 0.493654,
		64.635986, 55.311867, 61.413235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.721588, 56.025383, 61.842621>,  <64.807617, 55.895931, 61.067677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.721588, 56.025383, 61.842621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.857796, 55.678001, 61.698486>,  <64.939522, 55.469574, 61.612007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.857796, 55.678001, 61.698486>,  <64.721588, 56.025383, 61.842621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.857796, 55.678001, 61.698486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857039, 0.129071, 0.498824,
		-0.386695, -0.478680, 0.788247,
		0.340517, -0.868450, -0.360336,
		64.959953, 55.417465, 61.590385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.180809, 55.757271, 62.356628>,  <64.721588, 56.025383, 61.842621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.180809, 55.757271, 62.356628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.263527, 55.551716, 62.023605>,  <65.313156, 55.428383, 61.823792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.263527, 55.551716, 62.023605>,  <65.180809, 55.757271, 62.356628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.263527, 55.551716, 62.023605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973842, 0.026217, 0.225708,
		-0.094162, -0.857456, 0.505868,
		0.206797, -0.513888, -0.832559,
		65.325569, 55.397549, 61.773838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.777527, 55.268753, 62.432438>,  <65.180809, 55.757271, 62.356628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.777527, 55.268753, 62.432438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.759529, 55.380196, 62.048698>,  <65.748726, 55.447060, 61.818455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.759529, 55.380196, 62.048698>,  <65.777527, 55.268753, 62.432438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.759529, 55.380196, 62.048698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984208, 0.176942, 0.005220,
		0.171204, -0.943966, -0.282166,
		-0.045000, 0.278603, -0.959351,
		65.746033, 55.463776, 61.760895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.249718, 54.900944, 61.979916>,  <65.777527, 55.268753, 62.432438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.249718, 54.900944, 61.979916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.179626, 55.265553, 61.831093>,  <66.137573, 55.484318, 61.741798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.179626, 55.265553, 61.831093>,  <66.249718, 54.900944, 61.979916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.179626, 55.265553, 61.831093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951103, 0.254358, 0.175227,
		0.254358, -0.323156, -0.911522,
		-0.175227, 0.911522, -0.372053,
		66.127060, 55.539009, 61.719479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.748512, 55.103188, 61.489468>,  <66.249718, 54.900944, 61.979916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.748512, 55.103188, 61.489468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.609665, 55.455486, 61.618332>,  <66.526352, 55.666866, 61.695652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.609665, 55.455486, 61.618332>,  <66.748512, 55.103188, 61.489468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.609665, 55.455486, 61.618332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937817, 0.325488, 0.120648,
		0.001400, 0.344010, -0.938965,
		-0.347126, 0.880747, 0.322163,
		66.505524, 55.719711, 61.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.168129, 55.671135, 61.202522>,  <66.748512, 55.103188, 61.489468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.168129, 55.671135, 61.202522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.001991, 55.823795, 61.532814>,  <66.902306, 55.915394, 61.730988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.001991, 55.823795, 61.532814>,  <67.168129, 55.671135, 61.202522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.001991, 55.823795, 61.532814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865967, 0.443845, 0.230441,
		-0.278547, 0.810766, -0.514849,
		-0.415347, 0.381653, 0.825728,
		66.877388, 55.938290, 61.780533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.454041, 55.881149, 60.496593>,  <67.168129, 55.671135, 61.202522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.454041, 55.881149, 60.496593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406174, 56.273556, 60.435547>,  <67.377457, 56.508999, 60.398918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406174, 56.273556, 60.435547>,  <67.454041, 55.881149, 60.496593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.406174, 56.273556, 60.435547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010620, 0.152452, 0.988254,
		0.992757, 0.119883, -0.007826,
		-0.119668, 0.981013, -0.152621,
		67.370270, 56.567860, 60.389759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.824631, 56.336510, 61.008461>,  <67.454041, 55.881149, 60.496593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.824631, 56.336510, 61.008461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.492188, 56.509548, 60.868683>,  <67.292717, 56.613373, 60.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.492188, 56.509548, 60.868683>,  <67.824631, 56.336510, 61.008461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.492188, 56.509548, 60.868683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278149, 0.220758, 0.934826,
		0.481545, 0.874144, -0.063149,
		-0.831113, 0.432595, -0.349447,
		67.242851, 56.639328, 60.763847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.757317, 57.080845, 61.153755>,  <67.824631, 56.336510, 61.008461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.757317, 57.080845, 61.153755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.428291, 56.853401, 61.156998>,  <67.230873, 56.716934, 61.158943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.428291, 56.853401, 61.156998>,  <67.757317, 57.080845, 61.153755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.428291, 56.853401, 61.156998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180174, 0.274114, 0.944669,
		-0.539370, 0.775593, -0.327926,
		-0.822568, -0.568609, 0.008107,
		67.181519, 56.682819, 61.159431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.939224, 57.339146, 60.471981>,  <67.757317, 57.080845, 61.153755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.939224, 57.339146, 60.471981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.707939, 57.631744, 60.327438>,  <67.569168, 57.807304, 60.240711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.707939, 57.631744, 60.327438>,  <67.939224, 57.339146, 60.471981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.707939, 57.631744, 60.327438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783727, 0.621096, 0.003250,
		0.226817, -0.281329, -0.932420,
		-0.578209, 0.731501, -0.361361,
		67.534477, 57.851196, 60.219028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.087090, 57.558254, 59.879841>,  <67.939224, 57.339146, 60.471981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.087090, 57.558254, 59.879841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.936508, 57.872078, 60.076920>,  <67.846161, 58.060371, 60.195168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.936508, 57.872078, 60.076920>,  <68.087090, 57.558254, 59.879841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.936508, 57.872078, 60.076920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861047, 0.492556, -0.126438,
		-0.341880, 0.376641, -0.860964,
		-0.376452, 0.784557, 0.492701,
		67.823570, 58.107445, 60.224731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.267273, 58.144688, 59.582680>,  <68.087090, 57.558254, 59.879841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.267273, 58.144688, 59.582680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.213066, 58.221123, 59.971550>,  <68.180542, 58.266983, 60.204872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.213066, 58.221123, 59.971550>,  <68.267273, 58.144688, 59.582680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.213066, 58.221123, 59.971550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907031, 0.418746, 0.044127,
		-0.398662, 0.887772, -0.230064,
		-0.135513, 0.191083, 0.972175,
		68.172409, 58.278446, 60.263203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.417923, 58.896317, 59.814457>,  <68.267273, 58.144688, 59.582680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.417923, 58.896317, 59.814457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.478256, 58.662048, 60.133011>,  <68.514458, 58.521488, 60.324142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.478256, 58.662048, 60.133011>,  <68.417923, 58.896317, 59.814457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.478256, 58.662048, 60.133011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957630, 0.286505, 0.029321,
		-0.245341, 0.758223, 0.604074,
		0.150838, -0.585673, 0.796389,
		68.523506, 58.486347, 60.371929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.848892, 59.222702, 60.378311>,  <68.417923, 58.896317, 59.814457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.848892, 59.222702, 60.378311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.920593, 58.829559, 60.361023>,  <68.963615, 58.593674, 60.350651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.920593, 58.829559, 60.361023>,  <68.848892, 59.222702, 60.378311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.920593, 58.829559, 60.361023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975920, 0.183196, -0.118399,
		0.124287, -0.020957, 0.992025,
		0.179254, -0.982853, -0.043221,
		68.974373, 58.534702, 60.348057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.209518, 58.811581, 60.961243>,  <68.848892, 59.222702, 60.378311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.209518, 58.811581, 60.961243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.324829, 58.692734, 60.597130>,  <69.394020, 58.621426, 60.378662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.324829, 58.692734, 60.597130>,  <69.209518, 58.811581, 60.961243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.324829, 58.692734, 60.597130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952524, 0.186205, 0.240886,
		0.097928, -0.936510, 0.336688,
		0.288285, -0.297114, -0.910283,
		69.411316, 58.603600, 60.324043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.499687, 58.118393, 60.999680>,  <69.209518, 58.811581, 60.961243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.499687, 58.118393, 60.999680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.789833, 58.049461, 61.266258>,  <69.963921, 58.008102, 61.426205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.789833, 58.049461, 61.266258>,  <69.499687, 58.118393, 60.999680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.789833, 58.049461, 61.266258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213677, 0.976700, 0.019985,
		-0.654366, 0.127909, 0.745281,
		0.725360, -0.172328, 0.666451,
		70.007439, 57.997765, 61.466194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.969551, 57.788719, 61.359524>,  <69.499687, 58.118393, 60.999680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.969551, 57.788719, 61.359524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.829353, 57.588692, 61.042770>,  <68.745232, 57.468674, 60.852718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.829353, 57.588692, 61.042770>,  <68.969551, 57.788719, 61.359524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.829353, 57.588692, 61.042770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930295, -0.088242, -0.356040,
		0.108168, -0.861477, 0.496143,
		-0.350501, -0.500072, -0.791882,
		68.724205, 57.438671, 60.805206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.470078, 57.332264, 61.654934>,  <68.969551, 57.788719, 61.359524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.470078, 57.332264, 61.654934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.704987, 57.102760, 61.883286>,  <69.845932, 56.965057, 62.020294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.704987, 57.102760, 61.883286>,  <69.470078, 57.332264, 61.654934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.704987, 57.102760, 61.883286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212224, -0.789804, -0.575474,
		0.781066, 0.216810, -0.585602,
		0.587279, -0.573762, 0.570877,
		69.881172, 56.930634, 62.054550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.790215, 56.551247, 61.487179>,  <69.470078, 57.332264, 61.654934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.790215, 56.551247, 61.487179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.567070, 56.661530, 61.174057>,  <69.433182, 56.727699, 60.986183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.567070, 56.661530, 61.174057>,  <69.790215, 56.551247, 61.487179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.567070, 56.661530, 61.174057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295842, -0.815190, -0.497938,
		-0.775421, -0.509364, 0.373190,
		-0.557852, 0.275706, -0.782807,
		69.399712, 56.744240, 60.939217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.038139, 57.187664, 61.175297>,  <69.790215, 56.551247, 61.487179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.038139, 57.187664, 61.175297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.096893, 56.992104, 60.831345>,  <70.132149, 56.874767, 60.624973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.096893, 56.992104, 60.831345>,  <70.038139, 57.187664, 61.175297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.096893, 56.992104, 60.831345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276648, 0.814317, -0.510248,
		0.949679, 0.312834, -0.015642,
		0.146885, -0.488899, -0.859885,
		70.140961, 56.845432, 60.573380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.565018, 57.551361, 60.744282>,  <70.038139, 57.187664, 61.175297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.565018, 57.551361, 60.744282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.320068, 57.343281, 60.506165>,  <70.173096, 57.218433, 60.363293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.320068, 57.343281, 60.506165>,  <70.565018, 57.551361, 60.744282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.320068, 57.343281, 60.506165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293614, 0.848800, -0.439692,
		0.734015, -0.094473, -0.672530,
		-0.612383, -0.520205, -0.595293,
		70.136353, 57.187218, 60.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.274559, 57.698566, 60.520939>,  <70.565018, 57.551361, 60.744282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.274559, 57.698566, 60.520939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.504601, 57.487614, 60.270782>,  <71.642624, 57.361042, 60.120689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.504601, 57.487614, 60.270782>,  <71.274559, 57.698566, 60.520939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.504601, 57.487614, 60.270782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796625, 0.534944, 0.281465,
		0.186109, -0.660075, 0.727780,
		0.575110, -0.527385, -0.625391,
		71.677132, 57.329399, 60.083164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.931099, 57.337757, 60.751842>,  <71.274559, 57.698566, 60.520939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.931099, 57.337757, 60.751842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.966888, 57.449364, 60.369400>,  <71.988358, 57.516327, 60.139935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.966888, 57.449364, 60.369400>,  <71.931099, 57.337757, 60.751842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.966888, 57.449364, 60.369400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842226, 0.491223, 0.222161,
		0.531649, -0.825137, -0.191043,
		0.089468, 0.279013, -0.956110,
		71.993729, 57.533066, 60.082565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.609505, 57.144794, 60.663345>,  <71.931099, 57.337757, 60.751842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.609505, 57.144794, 60.663345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.476540, 57.416668, 60.401802>,  <72.396759, 57.579792, 60.244877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.476540, 57.416668, 60.401802>,  <72.609505, 57.144794, 60.663345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.476540, 57.416668, 60.401802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877124, 0.477596, 0.050552,
		0.346639, -0.556710, -0.754927,
		-0.332407, 0.679688, -0.653857,
		72.376816, 57.620575, 60.205647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.989098, 57.169613, 60.108330>,  <72.609505, 57.144794, 60.663345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.989098, 57.169613, 60.108330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.843185, 57.540882, 60.137810>,  <72.755638, 57.763645, 60.155499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.843185, 57.540882, 60.137810>,  <72.989098, 57.169613, 60.108330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.843185, 57.540882, 60.137810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910785, 0.372140, -0.178837,
		-0.193420, 0.001894, -0.981114,
		-0.364773, 0.928175, 0.073705,
		72.733757, 57.819336, 60.159920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.975700, 57.614651, 59.510857>,  <72.989098, 57.169613, 60.108330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.975700, 57.614651, 59.510857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.047241, 57.782570, 59.866783>,  <73.090164, 57.883324, 60.080341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.047241, 57.782570, 59.866783>,  <72.975700, 57.614651, 59.510857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.047241, 57.782570, 59.866783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967298, 0.090307, -0.237022,
		-0.179859, 0.903112, -0.389922,
		0.178844, 0.419802, 0.889821,
		73.100891, 57.908512, 60.133728>
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
