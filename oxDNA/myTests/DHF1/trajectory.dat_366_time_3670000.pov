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
	<3.704950, 0.708992, 2.600567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760120, 1.064491, 2.775429>,  <3.793223, 1.277791, 2.880346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760120, 1.064491, 2.775429>,  <3.704950, 0.708992, 2.600567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.760120, 1.064491, 2.775429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444121, 0.339015, -0.829352,
		-0.885287, 0.308539, -0.347953,
		0.137926, 0.888748, 0.437154,
		3.801498, 1.331116, 2.906575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.401965, 1.452672, 2.242553>,  <3.704950, 0.708992, 2.600567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.401965, 1.452672, 2.242553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.736320, 1.448967, 2.462082>,  <3.936934, 1.446744, 2.593799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.736320, 1.448967, 2.462082>,  <3.401965, 1.452672, 2.242553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.736320, 1.448967, 2.462082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513125, 0.368240, -0.775307,
		-0.194918, 0.929685, 0.312560,
		0.835888, -0.009261, 0.548821,
		3.987087, 1.446189, 2.626728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.855107, 2.106546, 2.300608>,  <3.401965, 1.452672, 2.242553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.855107, 2.106546, 2.300608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089912, 1.789917, 2.368523>,  <4.230796, 1.599939, 2.409271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089912, 1.789917, 2.368523>,  <3.855107, 2.106546, 2.300608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089912, 1.789917, 2.368523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534237, 0.221177, -0.815887,
		0.608281, 0.569642, 0.552722,
		0.587013, -0.791573, 0.169786,
		4.266016, 1.552445, 2.419458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.564736, 2.372725, 2.208414>,  <3.855107, 2.106546, 2.300608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.564736, 2.372725, 2.208414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.528770, 1.982819, 2.126686>,  <4.507191, 1.748875, 2.077650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.528770, 1.982819, 2.126686>,  <4.564736, 2.372725, 2.208414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.528770, 1.982819, 2.126686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298682, 0.169316, -0.939213,
		0.950108, -0.145475, 0.275921,
		-0.089914, -0.974766, -0.204319,
		4.501796, 1.690389, 2.065390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.201828, 2.138356, 1.872020>,  <4.564736, 2.372725, 2.208414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.201828, 2.138356, 1.872020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.899113, 1.896523, 1.772621>,  <4.717484, 1.751423, 1.712982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.899113, 1.896523, 1.772621>,  <5.201828, 2.138356, 1.872020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.899113, 1.896523, 1.772621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203014, 0.143964, -0.968535,
		0.621334, -0.783424, 0.013789,
		-0.756788, -0.604583, -0.248496,
		4.672076, 1.715148, 1.698072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.391469, 1.810812, 1.333092>,  <5.201828, 2.138356, 1.872020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.391469, 1.810812, 1.333092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.006023, 1.724228, 1.270363>,  <4.774756, 1.672277, 1.232725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.006023, 1.724228, 1.270363>,  <5.391469, 1.810812, 1.333092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.006023, 1.724228, 1.270363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169655, -0.041905, -0.984612,
		0.206559, -0.975392, 0.077104,
		-0.963614, -0.216461, -0.156824,
		4.716939, 1.659290, 1.223316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.395514, 1.266608, 0.753473>,  <5.391469, 1.810812, 1.333092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.395514, 1.266608, 0.753473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.045353, 1.457748, 0.782669>,  <4.835256, 1.572433, 0.800187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.045353, 1.457748, 0.782669>,  <5.395514, 1.266608, 0.753473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.045353, 1.457748, 0.782669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017396, 0.182041, -0.983137,
		-0.483081, -0.859371, -0.167672,
		-0.875403, 0.477852, 0.072991,
		4.782732, 1.601104, 0.804566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.104246, 1.010679, 0.239156>,  <5.395514, 1.266608, 0.753473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.104246, 1.010679, 0.239156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.896435, 1.342262, 0.322021>,  <4.771748, 1.541212, 0.371741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.896435, 1.342262, 0.322021>,  <5.104246, 1.010679, 0.239156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.896435, 1.342262, 0.322021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010256, 0.248485, -0.968581,
		-0.854391, -0.501081, -0.137597,
		-0.519528, 0.828959, 0.207164,
		4.740576, 1.590950, 0.384171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.602121, 2.016859, -0.464731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.275354, 2.245209, -0.497597>,  <5.079295, 2.382219, -0.517316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.275354, 2.245209, -0.497597>,  <5.602121, 2.016859, -0.464731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.275354, 2.245209, -0.497597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356647, -0.388043, 0.849838,
		0.453267, 0.723550, 0.520599,
		-0.816916, 0.570874, -0.082165,
		5.030280, 2.416471, -0.522246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.554866, 2.399474, 0.130177>,  <5.602121, 2.016859, -0.464731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.554866, 2.399474, 0.130177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191407, 2.384277, -0.036156>,  <4.973331, 2.375159, -0.135955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191407, 2.384277, -0.036156>,  <5.554866, 2.399474, 0.130177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.191407, 2.384277, -0.036156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344345, -0.495111, 0.797679,
		-0.236189, 0.867999, 0.436799,
		-0.908648, -0.037993, -0.415831,
		4.918813, 2.372880, -0.160905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.953120, 2.670971, 0.576993>,  <5.554866, 2.399474, 0.130177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.953120, 2.670971, 0.576993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793617, 2.395348, 0.334938>,  <4.697916, 2.229974, 0.189705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793617, 2.395348, 0.334938>,  <4.953120, 2.670971, 0.576993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.793617, 2.395348, 0.334938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381075, -0.475697, 0.792776,
		-0.834131, 0.546728, -0.072895,
		-0.398757, -0.689058, -0.605138,
		4.673990, 2.188630, 0.153397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.155829, 2.687256, 0.692902>,  <4.953120, 2.670971, 0.576993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.155829, 2.687256, 0.692902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.312776, 2.336891, 0.580597>,  <4.406944, 2.126673, 0.513214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.312776, 2.336891, 0.580597>,  <4.155829, 2.687256, 0.692902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.312776, 2.336891, 0.580597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437313, -0.446179, 0.780822,
		-0.809201, -0.183587, -0.558113,
		0.392367, -0.875911, -0.280764,
		4.430486, 2.074118, 0.496368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.613852, 2.142533, 0.868720>,  <4.155829, 2.687256, 0.692902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.613852, 2.142533, 0.868720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.970600, 1.962868, 0.847473>,  <4.184649, 1.855069, 0.834725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.970600, 1.962868, 0.847473>,  <3.613852, 2.142533, 0.868720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.970600, 1.962868, 0.847473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169606, -0.440997, 0.881337,
		-0.419291, -0.777028, -0.469492,
		0.891868, -0.449165, -0.053118,
		4.238161, 1.828119, 0.831538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.464527, 1.427490, 1.105065>,  <3.613852, 2.142533, 0.868720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.464527, 1.427490, 1.105065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.856400, 1.497772, 1.143738>,  <4.091525, 1.539941, 1.166941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.856400, 1.497772, 1.143738>,  <3.464527, 1.427490, 1.105065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.856400, 1.497772, 1.143738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015887, -0.412576, 0.910785,
		0.199918, -0.893817, -0.401402,
		0.979684, 0.175705, 0.096681,
		4.150306, 1.550484, 1.172742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.774902, 0.810559, 1.363965>,  <3.464527, 1.427490, 1.105065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.774902, 0.810559, 1.363965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.051998, 1.083160, 1.458336>,  <4.218256, 1.246721, 1.514959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.051998, 1.083160, 1.458336>,  <3.774902, 0.810559, 1.363965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.051998, 1.083160, 1.458336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126528, -0.436914, 0.890560,
		0.710000, -0.587076, -0.388898,
		0.692741, 0.681504, 0.235928,
		4.259820, 1.287611, 1.529114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.162168, 0.462077, 1.698348>,  <3.774902, 0.810559, 1.363965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.162168, 0.462077, 1.698348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233191, 0.834549, 1.825706>,  <4.275805, 1.058032, 1.902122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233191, 0.834549, 1.825706>,  <4.162168, 0.462077, 1.698348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233191, 0.834549, 1.825706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188376, -0.349714, 0.917723,
		0.965913, -0.102970, -0.237507,
		0.177558, 0.931181, 0.318396,
		4.286458, 1.113903, 1.921225>
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
