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
	<36.656921, 52.867931, 50.609097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714146, 52.897064, 50.214283>,  <36.748478, 52.914543, 49.977394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714146, 52.897064, 50.214283>,  <36.656921, 52.867931, 50.609097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714146, 52.897064, 50.214283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974497, -0.184578, 0.127622,
		-0.172890, -0.980116, -0.097378,
		0.143058, 0.072830, -0.987031,
		36.757065, 52.918915, 49.918175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891361, 52.300297, 50.346203>,  <36.656921, 52.867931, 50.609097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891361, 52.300297, 50.346203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034515, 52.586716, 50.106468>,  <37.120407, 52.758568, 49.962627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034515, 52.586716, 50.106468>,  <36.891361, 52.300297, 50.346203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034515, 52.586716, 50.106468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933764, -0.276056, 0.227768,
		-0.002358, -0.641151, -0.767411,
		0.357882, 0.716044, -0.599335,
		37.141880, 52.801529, 49.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491299, 52.100182, 50.261951>,  <36.891361, 52.300297, 50.346203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491299, 52.100182, 50.261951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558414, 52.481407, 50.161148>,  <37.598686, 52.710144, 50.100666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558414, 52.481407, 50.161148>,  <37.491299, 52.100182, 50.261951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558414, 52.481407, 50.161148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939116, -0.076779, 0.334911,
		0.299843, -0.292860, -0.907924,
		0.167792, 0.953068, -0.252008,
		37.608753, 52.767326, 50.085545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067883, 52.169319, 49.882114>,  <37.491299, 52.100182, 50.261951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067883, 52.169319, 49.882114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047092, 52.518753, 50.075668>,  <38.034618, 52.728413, 50.191803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047092, 52.518753, 50.075668>,  <38.067883, 52.169319, 49.882114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047092, 52.518753, 50.075668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991219, -0.013868, 0.131499,
		0.121586, 0.486475, -0.865193,
		-0.051973, 0.873585, 0.483889,
		38.031502, 52.780830, 50.220837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626831, 52.689537, 49.662533>,  <38.067883, 52.169319, 49.882114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626831, 52.689537, 49.662533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507969, 52.724075, 50.042900>,  <38.436653, 52.744797, 50.271122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507969, 52.724075, 50.042900>,  <38.626831, 52.689537, 49.662533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507969, 52.724075, 50.042900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952802, -0.038053, 0.301197,
		0.062193, 0.995538, -0.070964,
		-0.297153, 0.086346, 0.950918,
		38.418823, 52.749981, 50.328175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007488, 53.238422, 49.892040>,  <38.626831, 52.689537, 49.662533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007488, 53.238422, 49.892040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926247, 52.963932, 50.171425>,  <38.877502, 52.799240, 50.339054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926247, 52.963932, 50.171425>,  <39.007488, 53.238422, 49.892040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926247, 52.963932, 50.171425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971548, -0.052478, 0.230955,
		-0.121833, 0.725497, 0.677356,
		-0.203104, -0.686221, 0.698462,
		38.865314, 52.758064, 50.380962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131481, 53.192387, 50.749359>,  <39.007488, 53.238422, 49.892040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131481, 53.192387, 50.749359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457901, 53.341850, 50.925743>,  <39.653751, 53.431530, 51.031574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457901, 53.341850, 50.925743>,  <39.131481, 53.192387, 50.749359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457901, 53.341850, 50.925743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393669, -0.917929, 0.049308,
		0.423195, 0.133355, -0.896171,
		0.816046, 0.373662, 0.440960,
		39.702713, 53.453949, 51.058033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673717, 52.759460, 50.318554>,  <39.131481, 53.192387, 50.749359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673717, 52.759460, 50.318554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751232, 52.900017, 50.684937>,  <39.797741, 52.984352, 50.904766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751232, 52.900017, 50.684937>,  <39.673717, 52.759460, 50.318554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751232, 52.900017, 50.684937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379670, -0.887761, 0.260252,
		0.904598, 0.297327, -0.305450,
		0.193786, 0.351394, 0.915953,
		39.809368, 53.005436, 50.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466686, 52.858765, 50.612713>,  <39.673717, 52.759460, 50.318554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466686, 52.858765, 50.612713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192802, 52.747910, 50.882339>,  <40.028473, 52.681396, 51.044117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192802, 52.747910, 50.882339>,  <40.466686, 52.858765, 50.612713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192802, 52.747910, 50.882339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538460, -0.815647, 0.211614,
		0.491158, 0.507854, 0.707706,
		-0.684708, -0.277136, 0.674071,
		39.987389, 52.664768, 51.084560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736309, 52.797096, 51.355339>,  <40.466686, 52.858765, 50.612713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736309, 52.797096, 51.355339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437084, 52.549141, 51.260567>,  <40.257549, 52.400368, 51.203701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437084, 52.549141, 51.260567>,  <40.736309, 52.797096, 51.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437084, 52.549141, 51.260567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610222, -0.782853, 0.121533,
		-0.260821, -0.053668, 0.963894,
		-0.748065, -0.619888, -0.236934,
		40.212666, 52.363174, 51.189487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079224, 53.287003, 51.359196>,  <40.736309, 52.797096, 51.355339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079224, 53.287003, 51.359196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966610, 53.426376, 51.716816>,  <40.899044, 53.510002, 51.931389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966610, 53.426376, 51.716816>,  <41.079224, 53.287003, 51.359196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966610, 53.426376, 51.716816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568375, -0.690141, 0.447945,
		0.773105, 0.634267, -0.003749,
		-0.281529, 0.348439, 0.894053,
		40.882153, 53.530907, 51.985031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714249, 53.365135, 51.725582>,  <41.079224, 53.287003, 51.359196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714249, 53.365135, 51.725582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394150, 53.305153, 51.957829>,  <41.202091, 53.269161, 52.097176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394150, 53.305153, 51.957829>,  <41.714249, 53.365135, 51.725582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394150, 53.305153, 51.957829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419526, -0.831837, 0.363381,
		0.428486, 0.534379, 0.728588,
		-0.800249, -0.149958, 0.580616,
		41.154076, 53.260166, 52.132011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989105, 53.327061, 52.401943>,  <41.714249, 53.365135, 51.725582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989105, 53.327061, 52.401943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663162, 53.100800, 52.351292>,  <41.467594, 52.965042, 52.320900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663162, 53.100800, 52.351292>,  <41.989105, 53.327061, 52.401943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663162, 53.100800, 52.351292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508517, -0.802445, 0.312238,
		-0.278233, 0.190038, 0.941527,
		-0.814860, -0.565658, -0.126629,
		41.418705, 52.931103, 52.313301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771023, 53.141876, 53.109375>,  <41.989105, 53.327061, 52.401943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771023, 53.141876, 53.109375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669785, 52.899475, 52.807724>,  <41.609043, 52.754036, 52.626732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669785, 52.899475, 52.807724>,  <41.771023, 53.141876, 53.109375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669785, 52.899475, 52.807724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550026, -0.731400, 0.403144,
		-0.795874, -0.312756, 0.518428,
		-0.253093, -0.606001, -0.754127,
		41.593857, 52.717674, 52.581486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289639, 52.589573, 53.294319>,  <41.771023, 53.141876, 53.109375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289639, 52.589573, 53.294319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339973, 52.701450, 53.675041>,  <42.370174, 52.768578, 53.903473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339973, 52.701450, 53.675041>,  <42.289639, 52.589573, 53.294319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339973, 52.701450, 53.675041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984013, -0.157073, -0.083943,
		0.126025, 0.947154, -0.294988,
		0.125842, 0.279693, 0.951807,
		42.377728, 52.785358, 53.960583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944206, 53.007870, 53.347992>,  <42.289639, 52.589573, 53.294319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944206, 53.007870, 53.347992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886562, 52.870285, 53.719135>,  <42.851974, 52.787735, 53.941822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886562, 52.870285, 53.719135>,  <42.944206, 53.007870, 53.347992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886562, 52.870285, 53.719135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977036, -0.198174, 0.078286,
		0.156950, 0.917832, 0.364626,
		-0.144112, -0.343965, 0.927858,
		42.843330, 52.767094, 53.997494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404251, 53.471279, 53.856335>,  <42.944206, 53.007870, 53.347992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404251, 53.471279, 53.856335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319260, 53.086189, 53.923286>,  <43.268265, 52.855137, 53.963455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319260, 53.086189, 53.923286>,  <43.404251, 53.471279, 53.856335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319260, 53.086189, 53.923286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950309, -0.243469, -0.194001,
		0.227521, 0.117838, 0.966617,
		-0.212480, -0.962724, 0.167377,
		43.255516, 52.797371, 53.973499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917442, 53.194859, 54.063122>,  <43.404251, 53.471279, 53.856335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917442, 53.194859, 54.063122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715958, 52.905731, 53.873886>,  <43.595066, 52.732254, 53.760345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715958, 52.905731, 53.873886>,  <43.917442, 53.194859, 54.063122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715958, 52.905731, 53.873886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863199, -0.442711, -0.242683,
		-0.034025, -0.530610, 0.846933,
		-0.503716, -0.722814, -0.473085,
		43.564842, 52.688889, 53.731960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132023, 52.567051, 54.278233>,  <43.917442, 53.194859, 54.063122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132023, 52.567051, 54.278233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023884, 52.535622, 53.894413>,  <43.959000, 52.516766, 53.664120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023884, 52.535622, 53.894413>,  <44.132023, 52.567051, 54.278233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023884, 52.535622, 53.894413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921935, -0.308288, -0.234509,
		-0.277392, -0.948043, 0.155785,
		-0.270351, -0.078573, -0.959550,
		43.942780, 52.512051, 53.606548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249138, 51.876972, 53.894722>,  <44.132023, 52.567051, 54.278233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249138, 51.876972, 53.894722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299908, 52.165310, 53.622169>,  <44.330368, 52.338314, 53.458637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299908, 52.165310, 53.622169>,  <44.249138, 51.876972, 53.894722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299908, 52.165310, 53.622169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815994, -0.466437, -0.341453,
		-0.563954, -0.512661, -0.647406,
		0.126924, 0.720843, -0.681377,
		44.337986, 52.381561, 53.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924988, 52.145817, 54.007999>,  <44.249138, 51.876972, 53.894722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924988, 52.145817, 54.007999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747307, 51.805740, 53.894958>,  <44.640697, 51.601696, 53.827133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747307, 51.805740, 53.894958>,  <44.924988, 52.145817, 54.007999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747307, 51.805740, 53.894958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633610, -0.075096, -0.769999,
		0.633421, -0.521097, 0.572045,
		-0.444203, -0.850187, -0.282605,
		44.614044, 51.550686, 53.810177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431461, 51.648476, 53.919918>,  <44.924988, 52.145817, 54.007999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431461, 51.648476, 53.919918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121231, 51.558182, 53.684113>,  <44.935093, 51.504005, 53.542629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121231, 51.558182, 53.684113>,  <45.431461, 51.648476, 53.919918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121231, 51.558182, 53.684113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623395, -0.127005, -0.771523,
		0.099291, -0.965873, 0.239226,
		-0.775577, -0.225738, -0.589510,
		44.888557, 51.490459, 53.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851856, 51.700401, 54.533478>,  <45.431461, 51.648476, 53.919918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851856, 51.700401, 54.533478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546638, 51.729622, 54.790359>,  <45.363510, 51.747154, 54.944489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546638, 51.729622, 54.790359>,  <45.851856, 51.700401, 54.533478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546638, 51.729622, 54.790359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458164, -0.639710, 0.617136,
		0.455910, 0.765137, 0.454655,
		-0.763041, 0.073052, 0.642209,
		45.317726, 51.751537, 54.983021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232334, 51.848255, 55.123074>,  <45.851856, 51.700401, 54.533478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232334, 51.848255, 55.123074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396786, 52.042198, 55.431847>,  <46.495457, 52.158566, 55.617111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396786, 52.042198, 55.431847>,  <46.232334, 51.848255, 55.123074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396786, 52.042198, 55.431847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798152, -0.600551, -0.047879,
		0.440371, 0.635806, -0.633896,
		0.411128, 0.484860, 0.771935,
		46.520123, 52.187656, 55.663425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882500, 52.264217, 55.005680>,  <46.232334, 51.848255, 55.123074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882500, 52.264217, 55.005680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864155, 52.093605, 55.367004>,  <46.853146, 51.991238, 55.583797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864155, 52.093605, 55.367004>,  <46.882500, 52.264217, 55.005680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864155, 52.093605, 55.367004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909355, -0.392119, -0.138984,
		0.413486, 0.815053, 0.405855,
		-0.045864, -0.426535, 0.903308,
		46.850395, 51.965645, 55.637997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536819, 52.366734, 55.401955>,  <46.882500, 52.264217, 55.005680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536819, 52.366734, 55.401955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348278, 52.033363, 55.517349>,  <47.235153, 51.833340, 55.586586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348278, 52.033363, 55.517349>,  <47.536819, 52.366734, 55.401955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348278, 52.033363, 55.517349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864129, -0.501840, -0.037919,
		0.176376, 0.231415, 0.956733,
		-0.471352, -0.833429, 0.288485,
		47.206871, 51.783333, 55.603893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.793438, 52.985378, 55.745010>,  <47.536819, 52.366734, 55.401955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.793438, 52.985378, 55.745010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.137959, 53.180492, 55.801903>,  <48.344669, 53.297562, 55.836040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.137959, 53.180492, 55.801903>,  <47.793438, 52.985378, 55.745010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.137959, 53.180492, 55.801903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503314, -0.780775, -0.370223,
		-0.069535, 0.390461, -0.917990,
		0.861301, 0.487781, 0.142233,
		48.396347, 53.326828, 55.844574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.214260, 52.858707, 55.199265>,  <47.793438, 52.985378, 55.745010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.214260, 52.858707, 55.199265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.457367, 52.963333, 55.499184>,  <48.603230, 53.026108, 55.679134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.457367, 52.963333, 55.499184>,  <48.214260, 52.858707, 55.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.457367, 52.963333, 55.499184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499529, -0.859920, -0.104921,
		0.617325, 0.438315, -0.653292,
		0.607767, 0.261568, 0.749801,
		48.639698, 53.041805, 55.724125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.970966, 52.839672, 55.025269>,  <48.214260, 52.858707, 55.199265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.970966, 52.839672, 55.025269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.924789, 52.723289, 55.405167>,  <48.897083, 52.653461, 55.633106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.924789, 52.723289, 55.405167>,  <48.970966, 52.839672, 55.025269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.924789, 52.723289, 55.405167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408967, -0.885262, -0.221490,
		0.905217, 0.362845, 0.221190,
		-0.115445, -0.290955, 0.949746,
		48.890156, 52.636002, 55.690090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.617897, 52.606487, 55.396126>,  <48.970966, 52.839672, 55.025269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.617897, 52.606487, 55.396126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.258324, 52.441551, 55.455315>,  <49.042580, 52.342590, 55.490826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.258324, 52.441551, 55.455315>,  <49.617897, 52.606487, 55.396126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.258324, 52.441551, 55.455315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330041, -0.859546, -0.390197,
		0.288080, -0.301925, 0.908764,
		-0.898934, -0.412337, 0.147970,
		48.988644, 52.317848, 55.499706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.169765, 52.690929, 55.943653>,  <49.617897, 52.606487, 55.396126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.169765, 52.690929, 55.943653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.543137, 52.649837, 56.081154>,  <50.767159, 52.625183, 56.163654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.543137, 52.649837, 56.081154>,  <50.169765, 52.690929, 55.943653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.543137, 52.649837, 56.081154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348079, 0.027093, -0.937074,
		0.086955, 0.994340, 0.061048,
		0.933424, -0.102732, 0.343753,
		50.823162, 52.619019, 56.184280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.802986, 53.189014, 55.732536>,  <50.169765, 52.690929, 55.943653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.802986, 53.189014, 55.732536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.961586, 52.831947, 55.818268>,  <51.056747, 52.617706, 55.869705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.961586, 52.831947, 55.818268>,  <50.802986, 53.189014, 55.732536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.961586, 52.831947, 55.818268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240660, -0.124232, -0.962626,
		0.885930, 0.433260, 0.165571,
		0.396498, -0.892666, 0.214330,
		51.080536, 52.564148, 55.882568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.559105, 53.156235, 55.636269>,  <50.802986, 53.189014, 55.732536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.559105, 53.156235, 55.636269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.392399, 52.823681, 55.489243>,  <51.292374, 52.624149, 55.401028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.392399, 52.823681, 55.489243>,  <51.559105, 53.156235, 55.636269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.392399, 52.823681, 55.489243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287926, 0.262802, -0.920887,
		0.862208, -0.489628, 0.129849,
		-0.416768, -0.831384, -0.367567,
		51.267368, 52.574265, 55.378971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.043427, 52.599186, 55.237354>,  <51.559105, 53.156235, 55.636269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.043427, 52.599186, 55.237354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.670383, 52.663048, 55.107887>,  <51.446560, 52.701366, 55.030209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.670383, 52.663048, 55.107887>,  <52.043427, 52.599186, 55.237354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.670383, 52.663048, 55.107887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350332, 0.185014, -0.918171,
		-0.086709, -0.969680, -0.228478,
		-0.932603, 0.159657, -0.323667,
		51.390602, 52.710945, 55.010788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.828354, 52.271900, 54.558411>,  <52.043427, 52.599186, 55.237354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.828354, 52.271900, 54.558411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.577316, 52.579781, 54.605202>,  <51.426693, 52.764507, 54.633278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.577316, 52.579781, 54.605202>,  <51.828354, 52.271900, 54.558411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.577316, 52.579781, 54.605202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108232, 0.235056, -0.965937,
		-0.770977, -0.593560, -0.230827,
		-0.627599, 0.769699, 0.116980,
		51.389038, 52.810692, 54.640297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.323517, 52.578285, 54.089767>,  <51.828354, 52.271900, 54.558411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.323517, 52.578285, 54.089767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.590515, 52.846893, 54.218452>,  <52.750713, 53.008060, 54.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.590515, 52.846893, 54.218452>,  <52.323517, 52.578285, 54.089767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.590515, 52.846893, 54.218452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607470, -0.241247, -0.756823,
		-0.430611, 0.700611, -0.568962,
		0.667499, 0.671523, 0.321717,
		52.790764, 53.048351, 54.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.516842, 52.920109, 53.422951>,  <52.323517, 52.578285, 54.089767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.516842, 52.920109, 53.422951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.755627, 52.910740, 53.743721>,  <52.898899, 52.905117, 53.936184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.755627, 52.910740, 53.743721>,  <52.516842, 52.920109, 53.422951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.755627, 52.910740, 53.743721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656948, -0.559468, -0.505386,
		0.460490, 0.828521, -0.318594,
		0.596966, -0.023425, 0.801924,
		52.934715, 52.903713, 53.984299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.176498, 53.110977, 53.246365>,  <52.516842, 52.920109, 53.422951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.176498, 53.110977, 53.246365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.183159, 52.872055, 53.567101>,  <53.187157, 52.728703, 53.759544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.183159, 52.872055, 53.567101>,  <53.176498, 53.110977, 53.246365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.183159, 52.872055, 53.567101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717834, -0.551108, -0.425434,
		0.696015, 0.582674, 0.419588,
		0.016652, -0.597303, 0.801843,
		53.188156, 52.692863, 53.807652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.811825, 52.866135, 52.908985>,  <53.176498, 53.110977, 53.246365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.811825, 52.866135, 52.908985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.827553, 52.466949, 52.888924>,  <53.836990, 52.227436, 52.876884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.827553, 52.466949, 52.888924>,  <53.811825, 52.866135, 52.908985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.827553, 52.466949, 52.888924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990706, 0.032398, 0.132108,
		-0.130214, -0.054886, 0.989965,
		0.039323, -0.997967, -0.050157,
		53.839352, 52.167561, 52.873875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.116314, 52.774807, 53.500198>,  <53.811825, 52.866135, 52.908985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.116314, 52.774807, 53.500198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.177773, 52.483845, 53.232685>,  <54.214645, 52.309265, 53.072178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.177773, 52.483845, 53.232685>,  <54.116314, 52.774807, 53.500198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.177773, 52.483845, 53.232685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976377, 0.007697, 0.215934,
		-0.151924, -0.686163, 0.711407,
		0.153642, -0.727407, -0.668784,
		54.223866, 52.265621, 53.032051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.266056, 52.069897, 53.733585>,  <54.116314, 52.774807, 53.500198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.266056, 52.069897, 53.733585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.449295, 52.122391, 53.381920>,  <54.559238, 52.153889, 53.170921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.449295, 52.122391, 53.381920>,  <54.266056, 52.069897, 53.733585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.449295, 52.122391, 53.381920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888582, -0.041052, 0.456878,
		0.023869, -0.990500, -0.135421,
		0.458097, 0.131238, -0.879161,
		54.586723, 52.161762, 53.118172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.690964, 51.475620, 53.579792>,  <54.266056, 52.069897, 53.733585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.690964, 51.475620, 53.579792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.801811, 51.822952, 53.415253>,  <54.868320, 52.031353, 53.316528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.801811, 51.822952, 53.415253>,  <54.690964, 51.475620, 53.579792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.801811, 51.822952, 53.415253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872891, -0.048583, 0.485490,
		0.401582, -0.493598, -0.771422,
		0.277115, 0.868332, -0.411347,
		54.884945, 52.083450, 53.291847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.408783, 51.357677, 53.420708>,  <54.690964, 51.475620, 53.579792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.408783, 51.357677, 53.420708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.337456, 51.749760, 53.455105>,  <55.294659, 51.985008, 53.475742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.337456, 51.749760, 53.455105>,  <55.408783, 51.357677, 53.420708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.337456, 51.749760, 53.455105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938578, 0.143205, 0.313950,
		0.295421, 0.136694, -0.945537,
		-0.178321, 0.980208, 0.085993,
		55.283958, 52.043823, 53.480904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.072018, 51.529442, 53.553852>,  <55.408783, 51.357677, 53.420708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.072018, 51.529442, 53.553852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.838852, 51.848072, 53.617958>,  <55.698952, 52.039249, 53.656422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.838852, 51.848072, 53.617958>,  <56.072018, 51.529442, 53.553852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.838852, 51.848072, 53.617958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709671, 0.403065, 0.577846,
		0.395700, 0.450568, -0.800256,
		-0.582914, 0.796572, 0.160263,
		55.663979, 52.087044, 53.666039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.515530, 51.953026, 53.651810>,  <56.072018, 51.529442, 53.553852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.515530, 51.953026, 53.651810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.189804, 52.106045, 53.826420>,  <55.994370, 52.197857, 53.931187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.189804, 52.106045, 53.826420>,  <56.515530, 51.953026, 53.651810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.189804, 52.106045, 53.826420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572582, 0.406204, 0.712143,
		0.095107, 0.829855, -0.549815,
		-0.814313, 0.382544, 0.436527,
		55.945511, 52.220806, 53.957378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.318867, 52.678425, 53.526302>,  <56.515530, 51.953026, 53.651810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.318867, 52.678425, 53.526302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.226990, 52.595833, 53.906746>,  <56.171864, 52.546276, 54.135014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.226990, 52.595833, 53.906746>,  <56.318867, 52.678425, 53.526302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.226990, 52.595833, 53.906746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733112, 0.606055, 0.308617,
		-0.640148, 0.768156, 0.012169,
		-0.229690, -0.206482, 0.951109,
		56.158081, 52.533890, 54.192078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.451954, 53.326229, 53.688560>,  <56.318867, 52.678425, 53.526302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.451954, 53.326229, 53.688560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.442177, 53.080730, 54.004211>,  <56.436310, 52.933434, 54.193604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.442177, 53.080730, 54.004211>,  <56.451954, 53.326229, 53.688560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.442177, 53.080730, 54.004211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751656, 0.509142, 0.419271,
		-0.659102, 0.603401, 0.448877,
		-0.024446, -0.613744, 0.789127,
		56.434841, 52.896606, 54.240948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.826672, 53.857895, 54.149342>,  <56.451954, 53.326229, 53.688560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.826672, 53.857895, 54.149342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.669281, 54.129852, 54.396866>,  <56.574848, 54.293026, 54.545380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.669281, 54.129852, 54.396866>,  <56.826672, 53.857895, 54.149342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.669281, 54.129852, 54.396866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880696, -0.085667, -0.465870,
		-0.263731, -0.728290, 0.632487,
		-0.393472, 0.679893, 0.618809,
		56.551239, 54.333820, 54.582508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.179211, 53.607956, 53.505241>,  <56.826672, 53.857895, 54.149342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.179211, 53.607956, 53.505241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.279541, 53.732243, 53.871964>,  <57.339741, 53.806816, 54.091999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.279541, 53.732243, 53.871964>,  <57.179211, 53.607956, 53.505241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.279541, 53.732243, 53.871964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837217, 0.405809, -0.366587,
		-0.485956, 0.859518, -0.158351,
		0.250828, 0.310720, 0.916809,
		57.354790, 53.825459, 54.147007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.255047, 54.438488, 53.646019>,  <57.179211, 53.607956, 53.505241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.255047, 54.438488, 53.646019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510834, 54.246498, 53.886253>,  <57.664307, 54.131306, 54.030396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510834, 54.246498, 53.886253>,  <57.255047, 54.438488, 53.646019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.510834, 54.246498, 53.886253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760238, 0.511145, -0.400960,
		-0.114535, 0.712989, 0.691757,
		0.639469, -0.479976, 0.600585,
		57.702675, 54.102505, 54.066429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.893051, 54.772205, 53.395111>,  <57.255047, 54.438488, 53.646019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.893051, 54.772205, 53.395111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.047974, 54.548901, 53.688599>,  <58.140926, 54.414917, 53.864689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.047974, 54.548901, 53.688599>,  <57.893051, 54.772205, 53.395111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.047974, 54.548901, 53.688599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918137, 0.305870, -0.251928,
		-0.083780, 0.771226, 0.631024,
		0.387305, -0.558261, 0.733717,
		58.164165, 54.381424, 53.908714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.541191, 55.051479, 53.682602>,  <57.893051, 54.772205, 53.395111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.541191, 55.051479, 53.682602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.576172, 54.673824, 53.809696>,  <58.597160, 54.447231, 53.885952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.576172, 54.673824, 53.809696>,  <58.541191, 55.051479, 53.682602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.576172, 54.673824, 53.809696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977341, 0.143037, 0.156029,
		-0.192761, 0.296894, 0.935252,
		0.087451, -0.944137, 0.317739,
		58.602406, 54.390583, 53.905018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.858944, 55.012825, 54.348534>,  <58.541191, 55.051479, 53.682602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.858944, 55.012825, 54.348534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.935783, 54.717960, 54.089401>,  <58.981888, 54.541042, 53.933922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.935783, 54.717960, 54.089401>,  <58.858944, 55.012825, 54.348534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.935783, 54.717960, 54.089401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981366, 0.147170, 0.123538,
		0.004273, -0.659490, 0.751701,
		0.192100, -0.737166, -0.647830,
		58.993412, 54.496811, 53.895054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.406994, 54.660118, 54.635792>,  <58.858944, 55.012825, 54.348534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.406994, 54.660118, 54.635792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.423561, 54.651901, 54.236221>,  <59.433502, 54.646973, 53.996479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.423561, 54.651901, 54.236221>,  <59.406994, 54.660118, 54.635792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.423561, 54.651901, 54.236221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978930, 0.200914, 0.036456,
		0.199950, -0.979394, 0.028429,
		0.041417, -0.020541, -0.998931,
		59.435986, 54.645741, 53.936543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.011246, 54.976212, 54.982208>,  <59.406994, 54.660118, 54.635792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.011246, 54.976212, 54.982208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.965584, 55.370094, 55.034851>,  <59.938187, 55.606422, 55.066437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.965584, 55.370094, 55.034851>,  <60.011246, 54.976212, 54.982208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.965584, 55.370094, 55.034851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771095, 0.004296, 0.636706,
		0.626404, 0.174160, -0.759793,
		-0.114152, 0.984708, 0.131603,
		59.931339, 55.665508, 55.074333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.119270, 55.052589, 55.722214>,  <60.011246, 54.976212, 54.982208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.119270, 55.052589, 55.722214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.346664, 55.141705, 56.038994>,  <60.483101, 55.195171, 56.229061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.346664, 55.141705, 56.038994>,  <60.119270, 55.052589, 55.722214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.346664, 55.141705, 56.038994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752843, -0.247288, 0.609981,
		0.331735, -0.942982, 0.027142,
		0.568489, 0.222785, 0.791951,
		60.517212, 55.208542, 56.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.075321, 54.473602, 56.182064>,  <60.119270, 55.052589, 55.722214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.075321, 54.473602, 56.182064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.155128, 54.819935, 56.365601>,  <60.203014, 55.027733, 56.475723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.155128, 54.819935, 56.365601>,  <60.075321, 54.473602, 56.182064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.155128, 54.819935, 56.365601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609904, -0.256766, 0.749726,
		0.766949, -0.429430, 0.476843,
		0.199518, 0.865830, 0.458838,
		60.214985, 55.079685, 56.503250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.107597, 54.246971, 56.855850>,  <60.075321, 54.473602, 56.182064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.107597, 54.246971, 56.855850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.009697, 54.633411, 56.823006>,  <59.950958, 54.865276, 56.803299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.009697, 54.633411, 56.823006>,  <60.107597, 54.246971, 56.855850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.009697, 54.633411, 56.823006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822990, -0.162222, 0.544401,
		0.512627, 0.200818, 0.834797,
		-0.244748, 0.966104, -0.082111,
		59.936272, 54.923241, 56.798374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.918827, 54.657471, 57.500015>,  <60.107597, 54.246971, 56.855850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.918827, 54.657471, 57.500015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.697624, 54.861034, 57.236137>,  <59.564903, 54.983173, 57.077812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.697624, 54.861034, 57.236137>,  <59.918827, 54.657471, 57.500015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.697624, 54.861034, 57.236137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792129, -0.075685, 0.605644,
		0.258289, 0.857487, 0.444976,
		-0.553010, 0.508909, -0.659691,
		59.531723, 55.013706, 57.038231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.127869, 54.376522, 58.196354>,  <59.918827, 54.657471, 57.500015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.127869, 54.376522, 58.196354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.508537, 54.320847, 58.086845>,  <60.736938, 54.287441, 58.021141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.508537, 54.320847, 58.086845>,  <60.127869, 54.376522, 58.196354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.508537, 54.320847, 58.086845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301964, 0.586726, 0.751379,
		0.056044, -0.797733, 0.600400,
		0.951671, -0.139189, -0.273769,
		60.794037, 54.279091, 58.004715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.548649, 54.028355, 58.699825>,  <60.127869, 54.376522, 58.196354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.548649, 54.028355, 58.699825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.761528, 54.278587, 58.471642>,  <60.889256, 54.428726, 58.334732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.761528, 54.278587, 58.471642>,  <60.548649, 54.028355, 58.699825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.761528, 54.278587, 58.471642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262039, 0.519003, 0.813616,
		0.805050, -0.582483, 0.112283,
		0.532193, 0.625579, -0.570457,
		60.921185, 54.466263, 58.300503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.146809, 54.657948, 59.175087>,  <60.548649, 54.028355, 58.699825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.146809, 54.657948, 59.175087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.523849, 54.595551, 59.293182>,  <60.750076, 54.558113, 59.364040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.523849, 54.595551, 59.293182>,  <60.146809, 54.657948, 59.175087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.523849, 54.595551, 59.293182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304711, 0.040230, -0.951595,
		0.136562, 0.986939, 0.085452,
		0.942604, -0.155990, 0.295237,
		60.806629, 54.548752, 59.381752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.573856, 54.928421, 58.621315>,  <60.146809, 54.657948, 59.175087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.573856, 54.928421, 58.621315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837532, 54.695023, 58.811050>,  <60.995739, 54.554981, 58.924892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837532, 54.695023, 58.811050>,  <60.573856, 54.928421, 58.621315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.837532, 54.695023, 58.811050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561138, -0.038228, -0.826839,
		0.500594, 0.811213, 0.302225,
		0.659189, -0.583500, 0.474339,
		61.035290, 54.519974, 58.953354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.276691, 55.112839, 58.697433>,  <60.573856, 54.928421, 58.621315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.276691, 55.112839, 58.697433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.367104, 54.723663, 58.716621>,  <61.421352, 54.490158, 58.728134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.367104, 54.723663, 58.716621>,  <61.276691, 55.112839, 58.697433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.367104, 54.723663, 58.716621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652078, 0.114542, -0.749450,
		0.723674, 0.200679, 0.660321,
		0.226033, -0.972938, 0.047968,
		61.434914, 54.431782, 58.731010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.073277, 55.121151, 58.523560>,  <61.276691, 55.112839, 58.697433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.073277, 55.121151, 58.523560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.862312, 54.793022, 58.435104>,  <61.735733, 54.596146, 58.382030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.862312, 54.793022, 58.435104>,  <62.073277, 55.121151, 58.523560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.862312, 54.793022, 58.435104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551481, -0.132545, -0.823590,
		0.646300, -0.556328, 0.522299,
		-0.527414, -0.820324, -0.221141,
		61.704086, 54.546925, 58.368763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.983620, 55.843697, 58.660648>,  <62.073277, 55.121151, 58.523560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.983620, 55.843697, 58.660648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.055458, 56.212326, 58.798309>,  <62.098560, 56.433506, 58.880905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.055458, 56.212326, 58.798309>,  <61.983620, 55.843697, 58.660648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.055458, 56.212326, 58.798309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364537, -0.262588, 0.893398,
		0.913706, -0.285904, 0.288790,
		0.179593, 0.921578, 0.344151,
		62.109337, 56.488800, 58.901554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.441612, 55.997433, 59.231743>,  <61.983620, 55.843697, 58.660648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.441612, 55.997433, 59.231743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.131035, 56.249447, 59.226089>,  <61.944691, 56.400654, 59.222698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.131035, 56.249447, 59.226089>,  <62.441612, 55.997433, 59.231743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.131035, 56.249447, 59.226089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426478, -0.508804, 0.747820,
		0.463960, 0.586666, 0.663751,
		-0.776439, 0.630033, -0.014135,
		61.898102, 56.438457, 59.221848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.045624, 55.613945, 59.659035>,  <62.441612, 55.997433, 59.231743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.045624, 55.613945, 59.659035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.280502, 55.551876, 59.341263>,  <62.421429, 55.514633, 59.150600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.280502, 55.551876, 59.341263>,  <62.045624, 55.613945, 59.659035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.280502, 55.551876, 59.341263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738333, 0.504939, 0.447102,
		0.331760, -0.849092, 0.411071,
		0.587196, -0.155177, -0.794431,
		62.456661, 55.505322, 59.102932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.746185, 55.435604, 59.903893>,  <62.045624, 55.613945, 59.659035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.746185, 55.435604, 59.903893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.828766, 55.601730, 59.549515>,  <62.878315, 55.701405, 59.336887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.828766, 55.601730, 59.549515>,  <62.746185, 55.435604, 59.903893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.828766, 55.601730, 59.549515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753187, 0.510510, 0.414837,
		0.624569, -0.752924, -0.207412,
		0.206455, 0.415314, -0.885940,
		62.890701, 55.726326, 59.283733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.492168, 55.342884, 59.754974>,  <62.746185, 55.435604, 59.903893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.492168, 55.342884, 59.754974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.351837, 55.670563, 59.573502>,  <63.267639, 55.867172, 59.464619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.351837, 55.670563, 59.573502>,  <63.492168, 55.342884, 59.754974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.351837, 55.670563, 59.573502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655830, 0.560764, 0.505401,
		0.668435, -0.120231, -0.733989,
		-0.350829, 0.819200, -0.453686,
		63.246590, 55.916321, 59.437397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.232655, 55.304955, 60.491673>,  <63.492168, 55.342884, 59.754974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.232655, 55.304955, 60.491673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.482277, 55.163490, 60.770378>,  <63.632050, 55.078613, 60.937603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.482277, 55.163490, 60.770378>,  <63.232655, 55.304955, 60.491673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.482277, 55.163490, 60.770378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524688, -0.471111, -0.709054,
		0.579017, 0.808072, -0.108438,
		0.624053, -0.353658, 0.696767,
		63.669495, 55.057392, 60.979408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.835735, 55.586590, 60.503094>,  <63.232655, 55.304955, 60.491673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.835735, 55.586590, 60.503094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.851082, 55.203793, 60.618118>,  <63.860291, 54.974113, 60.687134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.851082, 55.203793, 60.618118>,  <63.835735, 55.586590, 60.503094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.851082, 55.203793, 60.618118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254854, -0.268887, -0.928843,
		0.966218, 0.108919, 0.233578,
		0.038363, -0.956993, 0.287562,
		63.862591, 54.916695, 60.704388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.601128, 55.570240, 60.665699>,  <63.835735, 55.586590, 60.503094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.601128, 55.570240, 60.665699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.977074, 55.579521, 60.529396>,  <65.202644, 55.585091, 60.447617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.977074, 55.579521, 60.529396>,  <64.601128, 55.570240, 60.665699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.977074, 55.579521, 60.529396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087468, 0.980768, -0.174481,
		0.330152, 0.193794, 0.923820,
		0.939866, 0.023199, -0.340754,
		65.259033, 55.586479, 60.427170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.962631, 56.148735, 61.016003>,  <64.601128, 55.570240, 60.665699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.962631, 56.148735, 61.016003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.088692, 56.072887, 60.644043>,  <65.164330, 56.027378, 60.420868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.088692, 56.072887, 60.644043>,  <64.962631, 56.148735, 61.016003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.088692, 56.072887, 60.644043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109764, 0.965977, -0.234180,
		0.942670, 0.175873, 0.283622,
		0.315158, -0.189623, -0.929902,
		65.183243, 56.015999, 60.365070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.439247, 55.543415, 61.187344>,  <64.962631, 56.148735, 61.016003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.439247, 55.543415, 61.187344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.651184, 55.207939, 61.237732>,  <65.778343, 55.006653, 61.267963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.651184, 55.207939, 61.237732>,  <65.439247, 55.543415, 61.187344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.651184, 55.207939, 61.237732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759656, -0.535360, -0.369205,
		0.377086, 0.099927, -0.920772,
		0.529838, -0.838692, 0.125967,
		65.810135, 54.956333, 61.275520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.568687, 55.029186, 60.525211>,  <65.439247, 55.543415, 61.187344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.568687, 55.029186, 60.525211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.557251, 54.835136, 60.874802>,  <65.550385, 54.718708, 61.084557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.557251, 54.835136, 60.874802>,  <65.568687, 55.029186, 60.525211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.557251, 54.835136, 60.874802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845474, -0.454691, -0.280053,
		0.533250, -0.746936, -0.397154,
		-0.028599, -0.485122, 0.873979,
		65.548668, 54.689598, 61.136993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.093086, 54.544899, 60.413933>,  <65.568687, 55.029186, 60.525211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.093086, 54.544899, 60.413933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.126747, 54.496796, 60.809601>,  <65.146942, 54.467934, 61.047001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.126747, 54.496796, 60.809601>,  <65.093086, 54.544899, 60.413933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.126747, 54.496796, 60.809601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841531, -0.540177, 0.005921,
		0.533615, -0.832915, -0.146656,
		0.084152, -0.120256, 0.989170,
		65.151993, 54.460720, 61.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.624184, 54.380344, 59.824440>,  <65.093086, 54.544899, 60.413933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.624184, 54.380344, 59.824440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.751099, 54.176865, 59.504303>,  <64.827248, 54.054775, 59.312222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.751099, 54.176865, 59.504303>,  <64.624184, 54.380344, 59.824440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.751099, 54.176865, 59.504303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539077, 0.597579, -0.593544,
		0.780204, 0.619775, -0.084620,
		0.317296, -0.508703, -0.800340,
		64.846291, 54.024254, 59.264202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.746803, 54.925442, 59.366325>,  <64.624184, 54.380344, 59.824440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.746803, 54.925442, 59.366325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.658318, 54.581779, 59.181755>,  <64.605225, 54.375584, 59.071011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.658318, 54.581779, 59.181755>,  <64.746803, 54.925442, 59.366325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.658318, 54.581779, 59.181755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598361, 0.493200, -0.631441,
		0.770082, 0.136414, -0.623190,
		-0.221219, -0.859154, -0.461429,
		64.591949, 54.324032, 59.043327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.969452, 54.878979, 58.672485>,  <64.746803, 54.925442, 59.366325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.969452, 54.878979, 58.672485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.667389, 54.616783, 58.675941>,  <64.486153, 54.459465, 58.678017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.667389, 54.616783, 58.675941>,  <64.969452, 54.878979, 58.672485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.667389, 54.616783, 58.675941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465417, 0.526814, -0.711234,
		0.461651, -0.541116, -0.702902,
		-0.755159, -0.655485, 0.008640,
		64.440842, 54.420135, 58.678532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.641983, 55.104183, 58.846138>,  <64.969452, 54.878979, 58.672485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.641983, 55.104183, 58.846138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.506485, 55.301785, 59.166443>,  <65.425186, 55.420345, 59.358624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.506485, 55.301785, 59.166443>,  <65.641983, 55.104183, 58.846138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.506485, 55.301785, 59.166443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026488, -0.845729, 0.532955,
		0.940509, 0.201741, 0.273393,
		-0.338736, 0.494007, 0.800759,
		65.404861, 55.449986, 59.406670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.160881, 55.365322, 58.556442>,  <65.641983, 55.104183, 58.846138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.160881, 55.365322, 58.556442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.138954, 55.358727, 58.955788>,  <66.125793, 55.354771, 59.195393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.138954, 55.358727, 58.955788>,  <66.160881, 55.365322, 58.556442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.138954, 55.358727, 58.955788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949480, 0.310286, -0.047012,
		-0.309002, -0.950501, -0.032658,
		-0.054818, -0.016481, 0.998360,
		66.122505, 55.353779, 59.255295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.725624, 55.350483, 58.078003>,  <66.160881, 55.365322, 58.556442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.725624, 55.350483, 58.078003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.789558, 55.052971, 58.337616>,  <66.827919, 54.874462, 58.493382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.789558, 55.052971, 58.337616>,  <66.725624, 55.350483, 58.078003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.789558, 55.052971, 58.337616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855516, 0.432393, 0.284830,
		-0.492487, 0.509729, 0.705431,
		0.159837, -0.743783, 0.649029,
		66.837509, 54.829838, 58.532326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.897491, 55.605141, 58.739437>,  <66.725624, 55.350483, 58.078003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.897491, 55.605141, 58.739437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.085373, 55.252708, 58.717278>,  <67.198105, 55.041248, 58.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.085373, 55.252708, 58.717278>,  <66.897491, 55.605141, 58.739437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.085373, 55.252708, 58.717278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785516, 0.388470, 0.481722,
		-0.402917, -0.269782, 0.874572,
		0.469705, -0.881084, -0.055397,
		67.226288, 54.988384, 58.700657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.200653, 55.463776, 59.418156>,  <66.897491, 55.605141, 58.739437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.200653, 55.463776, 59.418156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.400101, 55.291042, 59.117516>,  <67.519768, 55.187401, 58.937130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.400101, 55.291042, 59.117516>,  <67.200653, 55.463776, 59.418156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.400101, 55.291042, 59.117516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819907, 0.516346, 0.247263,
		0.281309, -0.739531, 0.611522,
		0.498615, -0.431834, -0.751600,
		67.549683, 55.161491, 58.892036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.840843, 55.202190, 59.689838>,  <67.200653, 55.463776, 59.418156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.840843, 55.202190, 59.689838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.923210, 55.282257, 59.306686>,  <67.972633, 55.330299, 59.076797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.923210, 55.282257, 59.306686>,  <67.840843, 55.202190, 59.689838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.923210, 55.282257, 59.306686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614482, 0.735357, 0.285766,
		0.761584, -0.647443, 0.028424,
		0.205919, 0.200168, -0.957878,
		67.984985, 55.342308, 59.019321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.623917, 55.202896, 59.538898>,  <67.840843, 55.202190, 59.689838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.623917, 55.202896, 59.538898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.426605, 55.457809, 59.302071>,  <68.308220, 55.610756, 59.159973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.426605, 55.457809, 59.302071>,  <68.623917, 55.202896, 59.538898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.426605, 55.457809, 59.302071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596435, 0.743240, 0.303083,
		0.633201, -0.203629, -0.746721,
		-0.493277, 0.637282, -0.592072,
		68.278625, 55.648994, 59.124451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.046021, 55.397560, 58.896572>,  <68.623917, 55.202896, 59.538898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.046021, 55.397560, 58.896572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.799248, 55.677650, 59.040276>,  <68.651184, 55.845703, 59.126499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.799248, 55.677650, 59.040276>,  <69.046021, 55.397560, 58.896572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.799248, 55.677650, 59.040276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763705, 0.642920, 0.058375,
		-0.190102, 0.310385, -0.931409,
		-0.616940, 0.700225, 0.359263,
		68.614166, 55.887718, 59.148056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.715614, 55.210728, 58.883652>,  <69.046021, 55.397560, 58.896572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.715614, 55.210728, 58.883652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.763130, 55.503456, 58.615227>,  <69.791641, 55.679092, 58.454170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.763130, 55.503456, 58.615227>,  <69.715614, 55.210728, 58.883652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.763130, 55.503456, 58.615227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510405, 0.534711, 0.673477,
		0.851690, -0.422513, -0.310009,
		0.118788, 0.731824, -0.671061,
		69.798767, 55.723003, 58.413910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.361031, 55.336460, 58.719780>,  <69.715614, 55.210728, 58.883652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.361031, 55.336460, 58.719780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.159912, 55.680157, 58.682030>,  <70.039238, 55.886375, 58.659378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.159912, 55.680157, 58.682030>,  <70.361031, 55.336460, 58.719780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.159912, 55.680157, 58.682030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571933, 0.412550, 0.709010,
		0.648144, 0.302507, -0.698855,
		-0.502793, 0.859239, -0.094378,
		70.009071, 55.937927, 58.653717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.725830, 55.983307, 58.553093>,  <70.361031, 55.336460, 58.719780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.725830, 55.983307, 58.553093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.603729, 56.288372, 58.324997>,  <70.530472, 56.471409, 58.188141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.603729, 56.288372, 58.324997>,  <70.725830, 55.983307, 58.553093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.603729, 56.288372, 58.324997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588948, 0.621754, 0.516296,
		0.748308, -0.178245, -0.638955,
		-0.305246, 0.762660, -0.570241,
		70.512154, 56.517170, 58.153923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.268196, 56.279175, 58.164173>,  <70.725830, 55.983307, 58.553093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.268196, 56.279175, 58.164173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.987114, 56.542305, 58.272598>,  <70.818466, 56.700184, 58.337654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.987114, 56.542305, 58.272598>,  <71.268196, 56.279175, 58.164173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.987114, 56.542305, 58.272598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682246, 0.514900, 0.519055,
		0.201879, 0.549672, -0.810621,
		-0.702698, 0.657829, 0.271064,
		70.776306, 56.739655, 58.353916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.448502, 56.988419, 57.854233>,  <71.268196, 56.279175, 58.164173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.448502, 56.988419, 57.854233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.231834, 57.004807, 58.190071>,  <71.101837, 57.014637, 58.391575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.231834, 57.004807, 58.190071>,  <71.448502, 56.988419, 57.854233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.231834, 57.004807, 58.190071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679495, 0.609340, 0.408647,
		-0.494858, 0.791850, -0.357895,
		-0.541666, 0.040965, 0.839595,
		71.069336, 57.017097, 58.441948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.331436, 57.693405, 58.073368>,  <71.448502, 56.988419, 57.854233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.331436, 57.693405, 58.073368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.320953, 57.451393, 58.391678>,  <71.314667, 57.306187, 58.582664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.320953, 57.451393, 58.391678>,  <71.331436, 57.693405, 58.073368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.320953, 57.451393, 58.391678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504186, 0.679382, 0.533139,
		-0.863198, 0.415186, 0.287246,
		-0.026202, -0.605030, 0.795771,
		71.313095, 57.269886, 58.630409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.857185, 57.921024, 58.695210>,  <71.331436, 57.693405, 58.073368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.857185, 57.921024, 58.695210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.160553, 57.688217, 58.812546>,  <71.342575, 57.548534, 58.882950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.160553, 57.688217, 58.812546>,  <70.857185, 57.921024, 58.695210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.160553, 57.688217, 58.812546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425837, 0.783227, 0.453011,
		-0.493415, -0.218657, 0.841861,
		0.758422, -0.582018, 0.293344,
		71.388077, 57.513611, 58.900551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.719185, 57.845600, 59.441555>,  <70.857185, 57.921024, 58.695210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.719185, 57.845600, 59.441555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.084038, 57.862457, 59.278465>,  <71.302948, 57.872570, 59.180611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.084038, 57.862457, 59.278465>,  <70.719185, 57.845600, 59.441555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.084038, 57.862457, 59.278465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202423, 0.818634, 0.537460,
		0.356425, -0.572767, 0.738173,
		0.912133, 0.042141, -0.407723,
		71.357681, 57.875099, 59.156147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.293495, 57.999710, 60.013409>,  <70.719185, 57.845600, 59.441555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.293495, 57.999710, 60.013409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.391945, 58.143105, 59.653206>,  <71.451012, 58.229141, 59.437084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.391945, 58.143105, 59.653206>,  <71.293495, 57.999710, 60.013409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.391945, 58.143105, 59.653206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352880, 0.832178, 0.427732,
		0.902719, -0.423043, 0.078310,
		0.246117, 0.358488, -0.900507,
		71.465782, 58.250652, 59.383053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.048431, 58.034184, 59.877590>,  <71.293495, 57.999710, 60.013409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.048431, 58.034184, 59.877590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.838455, 58.302505, 59.668037>,  <71.712471, 58.463501, 59.542305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.838455, 58.302505, 59.668037>,  <72.048431, 58.034184, 59.877590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.838455, 58.302505, 59.668037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557665, 0.736060, 0.383702,
		0.643001, -0.090732, -0.760472,
		-0.524939, 0.670809, -0.523884,
		71.680977, 58.503750, 59.510872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.515068, 58.578457, 59.625542>,  <72.048431, 58.034184, 59.877590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.515068, 58.578457, 59.625542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.160736, 58.764000, 59.621101>,  <71.948135, 58.875328, 59.618439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.160736, 58.764000, 59.621101>,  <72.515068, 58.578457, 59.625542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.160736, 58.764000, 59.621101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414093, 0.801131, 0.432106,
		0.209328, 0.378181, -0.901755,
		-0.885838, 0.463862, -0.011097,
		71.894981, 58.903160, 59.617771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.039017, 58.045635, 59.939980>,  <72.515068, 58.578457, 59.625542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.039017, 58.045635, 59.939980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.758041, 57.764454, 59.984558>,  <72.589455, 57.595745, 60.011307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.758041, 57.764454, 59.984558>,  <73.039017, 58.045635, 59.939980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.758041, 57.764454, 59.984558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695461, 0.711211, 0.102532,
		-0.151340, -0.005485, -0.988467,
		-0.702446, -0.702957, 0.111450,
		72.547310, 57.553566, 60.017994>
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
