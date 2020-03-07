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
	<3.251637, 0.723635, 2.242485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.644817, 0.717568, 2.169189>,  <3.880726, 0.713928, 2.125212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.644817, 0.717568, 2.169189>,  <3.251637, 0.723635, 2.242485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.644817, 0.717568, 2.169189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004870, -0.994095, 0.108404,
		-0.183801, -0.107448, -0.977073,
		0.982952, -0.015167, -0.183239,
		3.939703, 0.713018, 2.114218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.339965, 0.442477, 1.599575>,  <3.251637, 0.723635, 2.242485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.339965, 0.442477, 1.599575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631725, 0.392130, 1.868538>,  <3.806782, 0.361922, 2.029916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631725, 0.392130, 1.868538>,  <3.339965, 0.442477, 1.599575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.631725, 0.392130, 1.868538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298900, -0.942776, 0.147757,
		0.615331, -0.308757, -0.725284,
		0.729402, -0.125868, 0.672407,
		3.850546, 0.354370, 2.070260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.826510, 1.104795, 1.414608>,  <3.339965, 0.442477, 1.599575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.826510, 1.104795, 1.414608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.166683, 1.137398, 1.206717>,  <4.370787, 1.156960, 1.081981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.166683, 1.137398, 1.206717>,  <3.826510, 1.104795, 1.414608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.166683, 1.137398, 1.206717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336397, -0.843812, 0.418113,
		-0.404475, -0.530413, -0.745025,
		0.850433, 0.081508, -0.519730,
		4.421813, 1.161851, 1.050798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.986126, 0.493193, 0.858409>,  <3.826510, 1.104795, 1.414608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.986126, 0.493193, 0.858409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308449, 0.655502, 1.030931>,  <4.501842, 0.752888, 1.134445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308449, 0.655502, 1.030931>,  <3.986126, 0.493193, 0.858409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.308449, 0.655502, 1.030931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209982, -0.876800, 0.432584,
		0.553701, -0.258012, -0.791736,
		0.805806, 0.405773, 0.431307,
		4.550190, 0.777234, 1.160324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.567048, 0.109385, 0.758846>,  <3.986126, 0.493193, 0.858409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.567048, 0.109385, 0.758846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.598301, 0.290768, 1.113985>,  <4.617053, 0.399597, 1.327068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.598301, 0.290768, 1.113985>,  <4.567048, 0.109385, 0.758846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.598301, 0.290768, 1.113985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210671, -0.877968, 0.429871,
		0.974430, 0.153456, -0.164128,
		0.078133, 0.453456, 0.887847,
		4.621741, 0.426805, 1.380339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.275179, -0.052620, 0.999477>,  <4.567048, 0.109385, 0.758846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.275179, -0.052620, 0.999477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073380, 0.014586, 1.338240>,  <4.952300, 0.054909, 1.541498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073380, 0.014586, 1.338240>,  <5.275179, -0.052620, 0.999477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.073380, 0.014586, 1.338240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351946, -0.855678, 0.379406,
		0.788426, 0.489475, 0.372556,
		-0.504498, 0.168014, 0.846908,
		4.922030, 0.064990, 1.592312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.593271, 0.021607, 1.628323>,  <5.275179, -0.052620, 0.999477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.593271, 0.021607, 1.628323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.247566, -0.166892, 1.698725>,  <5.040143, -0.279991, 1.740966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.247566, -0.166892, 1.698725>,  <5.593271, 0.021607, 1.628323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.247566, -0.166892, 1.698725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498451, -0.755085, 0.425903,
		-0.067808, 0.455821, 0.887485,
		-0.864262, -0.471248, 0.176004,
		4.988288, -0.308266, 1.751526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.592847, -0.213205, 2.330102>,  <5.593271, 0.021607, 1.628323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.592847, -0.213205, 2.330102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.336552, -0.457845, 2.144457>,  <5.182775, -0.604629, 2.033070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.336552, -0.457845, 2.144457>,  <5.592847, -0.213205, 2.330102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.336552, -0.457845, 2.144457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334028, -0.766357, 0.548745,
		-0.691289, 0.196575, 0.695326,
		-0.640737, -0.611600, -0.464113,
		5.144331, -0.641325, 2.005223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.201169, 3.529310, 2.409970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.843361, 3.503017, 2.586838>,  <5.628676, 3.487242, 2.692959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.843361, 3.503017, 2.586838>,  <6.201169, 3.529310, 2.409970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.843361, 3.503017, 2.586838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297400, 0.825985, -0.478855,
		-0.333750, -0.559846, -0.758409,
		-0.894519, -0.065733, 0.442171,
		5.575005, 3.483298, 2.719489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722818, 3.613224, 1.936763>,  <6.201169, 3.529310, 2.409970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722818, 3.613224, 1.936763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.520958, 3.707354, 2.269016>,  <5.399842, 3.763831, 2.468368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.520958, 3.707354, 2.269016>,  <5.722818, 3.613224, 1.936763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.520958, 3.707354, 2.269016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396899, 0.791190, -0.465285,
		-0.766681, -0.564483, -0.305873,
		-0.504649, 0.235325, 0.830633,
		5.369563, 3.777951, 2.518206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.059416, 3.817845, 1.708482>,  <5.722818, 3.613224, 1.936763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.059416, 3.817845, 1.708482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.118011, 3.991426, 2.064060>,  <5.153169, 4.095575, 2.277407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.118011, 3.991426, 2.064060>,  <5.059416, 3.817845, 1.708482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.118011, 3.991426, 2.064060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471342, 0.820691, -0.322961,
		-0.869700, -0.371688, 0.324762,
		0.146488, 0.433954, 0.888947,
		5.161958, 4.121613, 2.330744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.443525, 4.021075, 2.089001>,  <5.059416, 3.817845, 1.708482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.443525, 4.021075, 2.089001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734436, 4.278763, 2.183701>,  <4.908982, 4.433375, 2.240520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734436, 4.278763, 2.183701>,  <4.443525, 4.021075, 2.089001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.734436, 4.278763, 2.183701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538266, 0.749377, -0.385621,
		-0.425839, 0.153019, 0.891766,
		0.727277, 0.644220, 0.236749,
		4.952619, 4.472029, 2.254725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.253453, 4.597013, 2.553078>,  <4.443525, 4.021075, 2.089001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.253453, 4.597013, 2.553078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.578148, 4.722132, 2.355801>,  <4.772965, 4.797204, 2.237434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.578148, 4.722132, 2.355801>,  <4.253453, 4.597013, 2.553078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.578148, 4.722132, 2.355801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450086, 0.873189, -0.186984,
		0.372163, 0.373761, 0.849587,
		0.811737, 0.312798, -0.493193,
		4.821669, 4.815971, 2.207843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.400717, 5.276917, 2.738472>,  <4.253453, 4.597013, 2.553078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.400717, 5.276917, 2.738472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.582314, 5.236568, 2.384361>,  <4.691272, 5.212360, 2.171895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.582314, 5.236568, 2.384361>,  <4.400717, 5.276917, 2.738472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.582314, 5.236568, 2.384361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258112, 0.936080, -0.239025,
		0.852801, 0.337016, 0.398937,
		0.453992, -0.100870, -0.885277,
		4.718511, 5.206307, 2.118778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.722912, 5.870082, 2.566270>,  <4.400717, 5.276917, 2.738472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.722912, 5.870082, 2.566270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.688644, 5.735727, 2.191071>,  <4.668084, 5.655114, 1.965951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.688644, 5.735727, 2.191071>,  <4.722912, 5.870082, 2.566270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.688644, 5.735727, 2.191071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361903, 0.887645, -0.284803,
		0.928271, 0.315066, -0.197602,
		-0.085669, -0.335887, -0.937998,
		4.662944, 5.634961, 1.909671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.118755, 6.257091, 1.968233>,  <4.722912, 5.870082, 2.566270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.118755, 6.257091, 1.968233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.778397, 6.094162, 1.835529>,  <4.574182, 5.996405, 1.755907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.778397, 6.094162, 1.835529>,  <5.118755, 6.257091, 1.968233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.778397, 6.094162, 1.835529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336281, 0.907503, -0.251702,
		0.403596, -0.102609, -0.909166,
		-0.850897, -0.407321, -0.331759,
		4.523128, 5.971966, 1.736001>
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
