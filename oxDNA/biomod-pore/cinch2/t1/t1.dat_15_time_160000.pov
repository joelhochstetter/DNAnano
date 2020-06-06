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
	<43.277866, 32.912338, 22.423550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432499, 32.805561, 22.776661>,  <43.525280, 32.741493, 22.988527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432499, 32.805561, 22.776661>,  <43.277866, 32.912338, 22.423550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432499, 32.805561, 22.776661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463767, 0.883634, 0.064115,
		-0.797168, 0.384617, 0.465396,
		0.386580, -0.266945, 0.882778,
		43.548473, 32.725479, 23.041494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130745, 33.448303, 22.942495>,  <43.277866, 32.912338, 22.423550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130745, 33.448303, 22.942495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467567, 33.267818, 23.060719>,  <43.669659, 33.159527, 23.131653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467567, 33.267818, 23.060719>,  <43.130745, 33.448303, 22.942495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467567, 33.267818, 23.060719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424125, 0.892408, 0.154034,
		-0.333261, -0.004351, 0.942825,
		0.842054, -0.451209, 0.295559,
		43.720184, 33.132454, 23.149385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430817, 33.802921, 22.878166>,  <43.130745, 33.448303, 22.942495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430817, 33.802921, 22.878166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400974, 34.032276, 22.551815>,  <42.383068, 34.169891, 22.356005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400974, 34.032276, 22.551815>,  <42.430817, 33.802921, 22.878166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400974, 34.032276, 22.551815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008766, -0.817750, -0.575507,
		-0.997174, -0.050089, 0.055985,
		-0.074608, 0.573390, -0.815878,
		42.378593, 34.204292, 22.307051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790150, 33.653744, 22.309601>,  <42.430817, 33.802921, 22.878166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790150, 33.653744, 22.309601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128628, 33.792278, 22.147614>,  <42.331715, 33.875401, 22.050421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128628, 33.792278, 22.147614>,  <41.790150, 33.653744, 22.309601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128628, 33.792278, 22.147614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099514, -0.849318, -0.518416,
		-0.523496, 0.398382, -0.753156,
		0.846197, 0.346339, -0.404970,
		42.382488, 33.896179, 22.026123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757099, 33.863686, 21.534517>,  <41.790150, 33.653744, 22.309601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757099, 33.863686, 21.534517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748688, 33.886986, 21.135284>,  <41.743641, 33.900967, 20.895744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748688, 33.886986, 21.135284>,  <41.757099, 33.863686, 21.534517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748688, 33.886986, 21.135284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870129, 0.490582, 0.046966,
		0.492376, 0.869446, 0.040372,
		-0.021029, 0.058253, -0.998080,
		41.742378, 33.904461, 20.835861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571812, 34.642467, 21.309877>,  <41.757099, 33.863686, 21.534517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571812, 34.642467, 21.309877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461601, 34.349079, 21.061329>,  <41.395477, 34.173046, 20.912201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461601, 34.349079, 21.061329>,  <41.571812, 34.642467, 21.309877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461601, 34.349079, 21.061329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933461, 0.358558, -0.009340,
		0.229648, 0.577451, -0.783462,
		-0.275523, -0.733476, -0.621370,
		41.378944, 34.129036, 20.874918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831425, 35.017654, 21.424725>,  <41.571812, 34.642467, 21.309877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831425, 35.017654, 21.424725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466000, 34.962894, 21.271538>,  <40.246746, 34.930038, 21.179626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466000, 34.962894, 21.271538>,  <40.831425, 35.017654, 21.424725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466000, 34.962894, 21.271538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003887, 0.944540, -0.328373,
		0.406682, -0.298500, -0.863428,
		-0.913562, -0.136899, -0.382967,
		40.191933, 34.921825, 21.156647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868103, 35.163879, 20.769335>,  <40.831425, 35.017654, 21.424725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868103, 35.163879, 20.769335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478348, 35.201374, 20.851105>,  <40.244495, 35.223873, 20.900167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478348, 35.201374, 20.851105>,  <40.868103, 35.163879, 20.769335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478348, 35.201374, 20.851105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004912, 0.917644, -0.397373,
		-0.224839, -0.386189, -0.894598,
		-0.974383, 0.093739, 0.204425,
		40.186031, 35.229496, 20.912432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462872, 35.316963, 20.061167>,  <40.868103, 35.163879, 20.769335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462872, 35.316963, 20.061167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252716, 35.443031, 20.377300>,  <40.126621, 35.518673, 20.566980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252716, 35.443031, 20.377300>,  <40.462872, 35.316963, 20.061167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252716, 35.443031, 20.377300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141552, 0.883546, -0.446442,
		-0.839003, -0.346430, -0.419595,
		-0.525392, 0.315171, 0.790335,
		40.095097, 35.537582, 20.614401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891346, 35.462551, 19.811052>,  <40.462872, 35.316963, 20.061167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891346, 35.462551, 19.811052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925385, 35.677586, 20.146614>,  <39.945808, 35.806606, 20.347952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925385, 35.677586, 20.146614>,  <39.891346, 35.462551, 19.811052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925385, 35.677586, 20.146614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122254, 0.841232, -0.526672,
		-0.988844, -0.057739, 0.137311,
		0.085101, 0.537583, 0.838905,
		39.950916, 35.838860, 20.398285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355537, 35.856026, 19.783777>,  <39.891346, 35.462551, 19.811052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355537, 35.856026, 19.783777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559444, 36.074207, 20.049896>,  <39.681789, 36.205116, 20.209568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559444, 36.074207, 20.049896>,  <39.355537, 35.856026, 19.783777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559444, 36.074207, 20.049896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215327, 0.829600, -0.515167,
		-0.832929, 0.119359, 0.540354,
		0.509767, 0.545451, 0.665297,
		39.712376, 36.237843, 20.249485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978725, 36.445499, 19.831356>,  <39.355537, 35.856026, 19.783777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978725, 36.445499, 19.831356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309750, 36.559418, 20.024864>,  <39.508366, 36.627769, 20.140970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309750, 36.559418, 20.024864>,  <38.978725, 36.445499, 19.831356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309750, 36.559418, 20.024864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100319, 0.922915, -0.371704,
		-0.552340, 0.259076, 0.792338,
		0.827561, 0.284794, 0.483773,
		39.558018, 36.644855, 20.169996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917721, 37.034985, 20.213293>,  <38.978725, 36.445499, 19.831356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917721, 37.034985, 20.213293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307629, 37.069237, 20.130840>,  <39.541573, 37.089787, 20.081369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307629, 37.069237, 20.130840>,  <38.917721, 37.034985, 20.213293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307629, 37.069237, 20.130840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155346, 0.923384, -0.351041,
		0.160279, 0.374206, 0.913390,
		0.974771, 0.085628, -0.206130,
		39.600060, 37.094925, 20.069000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137745, 37.658230, 20.479565>,  <38.917721, 37.034985, 20.213293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137745, 37.658230, 20.479565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419785, 37.576126, 20.208065>,  <39.589008, 37.526863, 20.045166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419785, 37.576126, 20.208065>,  <39.137745, 37.658230, 20.479565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419785, 37.576126, 20.208065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098229, 0.919689, -0.380163,
		0.702268, 0.334728, 0.628313,
		0.705104, -0.205258, -0.678748,
		39.631317, 37.514549, 20.004440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359070, 38.233429, 20.383223>,  <39.137745, 37.658230, 20.479565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359070, 38.233429, 20.383223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562523, 38.060822, 20.085205>,  <39.684593, 37.957256, 19.906395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562523, 38.060822, 20.085205>,  <39.359070, 38.233429, 20.383223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562523, 38.060822, 20.085205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046615, 0.850267, -0.524283,
		0.859722, 0.301397, 0.412357,
		0.508631, -0.431516, -0.745043,
		39.715111, 37.931366, 19.861692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017147, 38.643166, 20.168623>,  <39.359070, 38.233429, 20.383223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017147, 38.643166, 20.168623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891003, 38.459999, 19.836151>,  <39.815315, 38.350101, 19.636667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891003, 38.459999, 19.836151>,  <40.017147, 38.643166, 20.168623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891003, 38.459999, 19.836151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084650, 0.858810, -0.505252,
		0.945188, -0.229697, -0.232075,
		-0.315363, -0.457913, -0.831181,
		39.796394, 38.322624, 19.586796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255566, 39.079613, 19.628035>,  <40.017147, 38.643166, 20.168623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255566, 39.079613, 19.628035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998940, 38.829155, 19.450794>,  <39.844963, 38.678883, 19.344450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998940, 38.829155, 19.450794>,  <40.255566, 39.079613, 19.628035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998940, 38.829155, 19.450794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213338, 0.700518, -0.681000,
		0.736803, -0.342377, -0.583009,
		-0.641567, -0.626141, -0.443102,
		39.806469, 38.641312, 19.317863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386333, 38.989502, 18.851368>,  <40.255566, 39.079613, 19.628035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386333, 38.989502, 18.851368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000614, 38.890697, 18.889545>,  <39.769180, 38.831413, 18.912451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000614, 38.890697, 18.889545>,  <40.386333, 38.989502, 18.851368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000614, 38.890697, 18.889545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218545, 0.538808, -0.813587,
		0.149541, -0.805401, -0.573556,
		-0.964300, -0.247012, 0.095442,
		39.711323, 38.816593, 18.918179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131470, 38.765530, 18.182301>,  <40.386333, 38.989502, 18.851368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131470, 38.765530, 18.182301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813583, 38.875027, 18.399002>,  <39.622852, 38.940723, 18.529022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813583, 38.875027, 18.399002>,  <40.131470, 38.765530, 18.182301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813583, 38.875027, 18.399002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488566, 0.241151, -0.838540,
		-0.360185, -0.931082, -0.057907,
		-0.794714, 0.273738, 0.541754,
		39.575169, 38.957150, 18.561527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657135, 38.793308, 17.682301>,  <40.131470, 38.765530, 18.182301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657135, 38.793308, 17.682301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474251, 38.968178, 17.992096>,  <39.364521, 39.073101, 18.177973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474251, 38.968178, 17.992096>,  <39.657135, 38.793308, 17.682301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474251, 38.968178, 17.992096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482192, 0.609879, -0.628918,
		-0.747293, -0.661002, -0.068041,
		-0.457213, 0.437177, 0.774488,
		39.337086, 39.099331, 18.224442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943752, 38.786480, 17.579218>,  <39.657135, 38.793308, 17.682301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943752, 38.786480, 17.579218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033394, 39.097298, 17.814499>,  <39.087177, 39.283787, 17.955667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033394, 39.097298, 17.814499>,  <38.943752, 38.786480, 17.579218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033394, 39.097298, 17.814499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310665, 0.629023, -0.712613,
		-0.923724, -0.023036, 0.382365,
		0.224101, 0.777045, 0.588200,
		39.100624, 39.330410, 17.990959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506454, 39.185143, 17.348103>,  <38.943752, 38.786480, 17.579218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506454, 39.185143, 17.348103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741730, 39.444252, 17.541775>,  <38.882893, 39.599716, 17.657978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741730, 39.444252, 17.541775>,  <38.506454, 39.185143, 17.348103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741730, 39.444252, 17.541775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309032, 0.733285, -0.605633,
		-0.747354, 0.206598, 0.631490,
		0.588185, 0.647773, 0.484179,
		38.918186, 39.638584, 17.687029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085239, 39.774559, 17.598616>,  <38.506454, 39.185143, 17.348103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085239, 39.774559, 17.598616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465572, 39.891663, 17.558186>,  <38.693771, 39.961926, 17.533928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465572, 39.891663, 17.558186>,  <38.085239, 39.774559, 17.598616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465572, 39.891663, 17.558186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280077, 0.673444, -0.684127,
		-0.132213, 0.678798, 0.722325,
		0.950829, 0.292757, -0.101077,
		38.750820, 39.979488, 17.527863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996147, 40.419395, 17.583542>,  <38.085239, 39.774559, 17.598616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996147, 40.419395, 17.583542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367161, 40.383217, 17.438492>,  <38.589771, 40.361511, 17.351461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367161, 40.383217, 17.438492>,  <37.996147, 40.419395, 17.583542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367161, 40.383217, 17.438492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231191, 0.623495, -0.746863,
		0.293646, 0.776578, 0.557404,
		0.927536, -0.090447, -0.362624,
		38.645420, 40.356083, 17.329704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990383, 40.914463, 17.226103>,  <37.996147, 40.419395, 17.583542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990383, 40.914463, 17.226103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322079, 40.736984, 17.090164>,  <38.521095, 40.630497, 17.008602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322079, 40.736984, 17.090164>,  <37.990383, 40.914463, 17.226103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322079, 40.736984, 17.090164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155238, 0.401286, -0.902702,
		0.536901, 0.801313, 0.263884,
		0.829239, -0.443697, -0.339845,
		38.570850, 40.603874, 16.988211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378323, 41.419373, 16.879126>,  <37.990383, 40.914463, 17.226103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378323, 41.419373, 16.879126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486530, 41.056065, 16.751457>,  <38.551456, 40.838081, 16.674856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486530, 41.056065, 16.751457>,  <38.378323, 41.419373, 16.879126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486530, 41.056065, 16.751457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290804, 0.238952, -0.926464,
		0.917743, 0.343443, -0.199487,
		0.270520, -0.908267, -0.319171,
		38.567688, 40.783585, 16.655706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985287, 41.310234, 16.389662>,  <38.378323, 41.419373, 16.879126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985287, 41.310234, 16.389662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709324, 41.026569, 16.331535>,  <38.543747, 40.856369, 16.296659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709324, 41.026569, 16.331535>,  <38.985287, 41.310234, 16.389662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709324, 41.026569, 16.331535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167609, 0.351770, -0.920959,
		0.704229, -0.611018, -0.361550,
		-0.689905, -0.709165, -0.145315,
		38.502354, 40.813820, 16.287941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061123, 40.661911, 15.818844>,  <38.985287, 41.310234, 16.389662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061123, 40.661911, 15.818844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708534, 40.839832, 15.882295>,  <38.496983, 40.946583, 15.920365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708534, 40.839832, 15.882295>,  <39.061123, 40.661911, 15.818844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708534, 40.839832, 15.882295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055329, 0.236314, -0.970100,
		-0.468987, -0.863891, -0.183693,
		-0.881470, 0.444801, 0.158627,
		38.444092, 40.973274, 15.929883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588520, 40.368561, 15.361132>,  <39.061123, 40.661911, 15.818844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588520, 40.368561, 15.361132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427273, 40.731331, 15.410089>,  <38.330524, 40.948994, 15.439463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427273, 40.731331, 15.410089>,  <38.588520, 40.368561, 15.361132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427273, 40.731331, 15.410089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029614, 0.120744, -0.992242,
		-0.914668, -0.403617, -0.021817,
		-0.403120, 0.906926, 0.122393,
		38.306335, 41.003410, 15.446806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957527, 40.323292, 15.008813>,  <38.588520, 40.368561, 15.361132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957527, 40.323292, 15.008813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174473, 40.657822, 15.040792>,  <38.304642, 40.858540, 15.059978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174473, 40.657822, 15.040792>,  <37.957527, 40.323292, 15.008813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174473, 40.657822, 15.040792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054046, 0.129693, -0.990080,
		-0.838401, 0.532667, 0.115542,
		0.542368, 0.836329, 0.079946,
		38.337185, 40.908722, 15.064775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563339, 41.004536, 14.783083>,  <37.957527, 40.323292, 15.008813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563339, 41.004536, 14.783083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958683, 40.985313, 14.725335>,  <38.195889, 40.973782, 14.690686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958683, 40.985313, 14.725335>,  <37.563339, 41.004536, 14.783083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958683, 40.985313, 14.725335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113038, 0.403243, -0.908085,
		0.101854, 0.913831, 0.393116,
		0.988356, -0.048055, -0.144370,
		38.255192, 40.970898, 14.682024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248554, 40.589592, 14.261824>,  <37.563339, 41.004536, 14.783083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248554, 40.589592, 14.261824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009079, 40.279476, 14.342319>,  <36.865395, 40.093407, 14.390615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009079, 40.279476, 14.342319>,  <37.248554, 40.589592, 14.261824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009079, 40.279476, 14.342319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252957, -0.421389, -0.870887,
		0.759988, -0.470488, 0.448397,
		-0.598692, -0.775289, 0.201237,
		36.829472, 40.046890, 14.402690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612049, 39.920097, 14.195427>,  <37.248554, 40.589592, 14.261824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612049, 39.920097, 14.195427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240513, 39.841236, 14.069964>,  <37.017590, 39.793919, 13.994687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240513, 39.841236, 14.069964>,  <37.612049, 39.920097, 14.195427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240513, 39.841236, 14.069964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366819, -0.370838, -0.853184,
		0.051889, -0.907530, 0.416769,
		-0.928844, -0.197150, -0.313657,
		36.961861, 39.782093, 13.975867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525654, 39.345863, 13.755603>,  <37.612049, 39.920097, 14.195427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525654, 39.345863, 13.755603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430553, 38.959995, 13.710208>,  <37.373493, 38.728474, 13.682971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430553, 38.959995, 13.710208>,  <37.525654, 39.345863, 13.755603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430553, 38.959995, 13.710208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365316, 0.019454, -0.930680,
		0.900011, -0.262725, 0.347786,
		-0.237747, -0.964675, -0.113487,
		37.359230, 38.670593, 13.676162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217560, 38.947166, 13.541722>,  <37.525654, 39.345863, 13.755603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217560, 38.947166, 13.541722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866924, 38.780369, 13.445640>,  <37.656544, 38.680290, 13.387990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866924, 38.780369, 13.445640>,  <38.217560, 38.947166, 13.541722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866924, 38.780369, 13.445640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282258, -0.041247, -0.958451,
		0.389765, -0.907971, 0.153858,
		-0.876592, -0.416999, -0.240206,
		37.603947, 38.655270, 13.373578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336220, 38.337139, 13.113384>,  <38.217560, 38.947166, 13.541722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336220, 38.337139, 13.113384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966011, 38.466690, 13.034881>,  <37.743885, 38.544422, 12.987779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966011, 38.466690, 13.034881>,  <38.336220, 38.337139, 13.113384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966011, 38.466690, 13.034881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167613, -0.114384, -0.979195,
		-0.339590, -0.939158, 0.051578,
		-0.925518, 0.323879, -0.196259,
		37.688354, 38.563854, 12.976003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716400, 37.690159, 13.238445>,  <38.336220, 38.337139, 13.113384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716400, 37.690159, 13.238445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068684, 37.792133, 13.398120>,  <39.280056, 37.853317, 13.493925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068684, 37.792133, 13.398120>,  <38.716400, 37.690159, 13.238445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068684, 37.792133, 13.398120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054853, -0.892018, 0.448660,
		0.470463, -0.373244, -0.799596,
		0.880713, 0.254938, 0.399187,
		39.332897, 37.868614, 13.517876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279583, 37.155216, 13.118685>,  <38.716400, 37.690159, 13.238445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279583, 37.155216, 13.118685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372997, 37.364700, 13.446389>,  <39.429047, 37.490391, 13.643012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372997, 37.364700, 13.446389>,  <39.279583, 37.155216, 13.118685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372997, 37.364700, 13.446389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134032, -0.851853, 0.506341,
		0.963067, -0.008441, -0.269131,
		0.233534, 0.523713, 0.819260,
		39.443058, 37.521812, 13.692167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666523, 36.572060, 13.493221>,  <39.279583, 37.155216, 13.118685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666523, 36.572060, 13.493221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602654, 36.872787, 13.749120>,  <39.564331, 37.053223, 13.902659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602654, 36.872787, 13.749120>,  <39.666523, 36.572060, 13.493221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602654, 36.872787, 13.749120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129723, -0.626462, 0.768581,
		0.978609, 0.205714, 0.002504,
		-0.159676, 0.751816, 0.639747,
		39.554752, 37.098331, 13.941044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173397, 36.467781, 13.906157>,  <39.666523, 36.572060, 13.493221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173397, 36.467781, 13.906157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895721, 36.663040, 14.117747>,  <39.729115, 36.780193, 14.244702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895721, 36.663040, 14.117747>,  <40.173397, 36.467781, 13.906157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895721, 36.663040, 14.117747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221821, -0.554053, 0.802384,
		0.684761, 0.674344, 0.276337,
		-0.694188, 0.488144, 0.528978,
		39.687466, 36.809483, 14.276441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498463, 36.600811, 14.556250>,  <40.173397, 36.467781, 13.906157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498463, 36.600811, 14.556250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106483, 36.628315, 14.631047>,  <39.871296, 36.644817, 14.675926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106483, 36.628315, 14.631047>,  <40.498463, 36.600811, 14.556250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106483, 36.628315, 14.631047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107314, -0.608620, 0.786172,
		0.167864, 0.790477, 0.589039,
		-0.979952, 0.068757, 0.186995,
		39.812496, 36.648941, 14.687145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403996, 36.654964, 15.296461>,  <40.498463, 36.600811, 14.556250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403996, 36.654964, 15.296461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039135, 36.534618, 15.185136>,  <39.820217, 36.462410, 15.118340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039135, 36.534618, 15.185136>,  <40.403996, 36.654964, 15.296461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039135, 36.534618, 15.185136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040016, -0.610439, 0.791052,
		-0.407895, 0.732696, 0.544774,
		-0.912152, -0.300866, -0.278314,
		39.765488, 36.444359, 15.101642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891232, 36.813721, 15.883842>,  <40.403996, 36.654964, 15.296461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891232, 36.813721, 15.883842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694073, 36.539467, 15.669570>,  <39.575779, 36.374912, 15.541007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694073, 36.539467, 15.669570>,  <39.891232, 36.813721, 15.883842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694073, 36.539467, 15.669570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188736, -0.516752, 0.835073,
		-0.849371, 0.512707, 0.125301,
		-0.492897, -0.685638, -0.535680,
		39.546204, 36.333775, 15.508866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189476, 36.733025, 16.197903>,  <39.891232, 36.813721, 15.883842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189476, 36.733025, 16.197903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253479, 36.409534, 15.971498>,  <39.291882, 36.215443, 15.835654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253479, 36.409534, 15.971498>,  <39.189476, 36.733025, 16.197903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253479, 36.409534, 15.971498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370081, -0.580722, 0.725122,
		-0.915117, 0.093449, -0.392210,
		0.160003, -0.808721, -0.566013,
		39.301479, 36.166920, 15.801694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556740, 36.406590, 16.181734>,  <39.189476, 36.733025, 16.197903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556740, 36.406590, 16.181734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825546, 36.130608, 16.074135>,  <38.986828, 35.965019, 16.009575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825546, 36.130608, 16.074135>,  <38.556740, 36.406590, 16.181734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825546, 36.130608, 16.074135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382217, -0.634278, 0.672013,
		-0.634278, -0.348786, -0.689956,
		-0.672013, 0.689956, 0.268997,
		39.027149, 35.923622, 15.993436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173885, 35.779564, 15.957643>,  <38.556740, 36.406590, 16.181734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173885, 35.779564, 15.957643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549194, 35.696980, 16.068657>,  <38.774380, 35.647430, 16.135265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549194, 35.696980, 16.068657>,  <38.173885, 35.779564, 15.957643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549194, 35.696980, 16.068657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336470, -0.730863, 0.593823,
		0.080242, -0.650549, -0.755213,
		0.938269, -0.206458, 0.277536,
		38.830673, 35.635040, 16.151918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141052, 35.112244, 16.078318>,  <38.173885, 35.779564, 15.957643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141052, 35.112244, 16.078318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471622, 35.229511, 16.270599>,  <38.669964, 35.299873, 16.385969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471622, 35.229511, 16.270599>,  <38.141052, 35.112244, 16.078318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471622, 35.229511, 16.270599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176411, -0.675946, 0.715526,
		0.534702, -0.676127, -0.506898,
		0.826422, 0.293171, 0.480706,
		38.719547, 35.317463, 16.414810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581623, 34.481270, 16.279369>,  <38.141052, 35.112244, 16.078318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581623, 34.481270, 16.279369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694832, 34.777313, 16.523384>,  <38.762756, 34.954937, 16.669792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694832, 34.777313, 16.523384>,  <38.581623, 34.481270, 16.279369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694832, 34.777313, 16.523384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144032, -0.596031, 0.789938,
		0.948236, -0.311437, -0.062094,
		0.283026, 0.740104, 0.610035,
		38.779739, 34.999344, 16.706394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106976, 34.163136, 16.786871>,  <38.581623, 34.481270, 16.279369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106976, 34.163136, 16.786871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004715, 34.502972, 16.971409>,  <38.943359, 34.706875, 17.082132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004715, 34.502972, 16.971409>,  <39.106976, 34.163136, 16.786871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004715, 34.502972, 16.971409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051985, -0.488593, 0.870962,
		0.965371, 0.198676, 0.169073,
		-0.255647, 0.849591, 0.461346,
		38.928020, 34.757851, 17.109812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518311, 34.264977, 17.501476>,  <39.106976, 34.163136, 16.786871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518311, 34.264977, 17.501476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214569, 34.520424, 17.551350>,  <39.032326, 34.673695, 17.581274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214569, 34.520424, 17.551350>,  <39.518311, 34.264977, 17.501476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214569, 34.520424, 17.551350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150727, -0.359049, 0.921067,
		0.632980, 0.680622, 0.368903,
		-0.759353, 0.638621, 0.124683,
		38.986763, 34.712009, 17.588755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482307, 34.498989, 18.203438>,  <39.518311, 34.264977, 17.501476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482307, 34.498989, 18.203438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100563, 34.564781, 18.103725>,  <38.871517, 34.604256, 18.043898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100563, 34.564781, 18.103725>,  <39.482307, 34.498989, 18.203438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100563, 34.564781, 18.103725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293210, -0.357437, 0.886717,
		0.056742, 0.919340, 0.389350,
		-0.954363, 0.164476, -0.249279,
		38.814255, 34.614124, 18.028942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188789, 34.919392, 18.667408>,  <39.482307, 34.498989, 18.203438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188789, 34.919392, 18.667408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884022, 34.718346, 18.504017>,  <38.701160, 34.597717, 18.405983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884022, 34.718346, 18.504017>,  <39.188789, 34.919392, 18.667408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884022, 34.718346, 18.504017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253396, -0.349082, 0.902182,
		-0.596040, 0.790900, 0.138614,
		-0.761923, -0.502612, -0.408477,
		38.655445, 34.567562, 18.381474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586884, 35.064407, 19.123280>,  <39.188789, 34.919392, 18.667408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586884, 35.064407, 19.123280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457207, 34.751621, 18.910328>,  <38.379398, 34.563950, 18.782557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457207, 34.751621, 18.910328>,  <38.586884, 35.064407, 19.123280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457207, 34.751621, 18.910328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552704, -0.300159, 0.777446,
		-0.767734, 0.546293, -0.334885,
		-0.324194, -0.781965, -0.532381,
		38.359947, 34.517033, 18.750614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861656, 35.096992, 19.193054>,  <38.586884, 35.064407, 19.123280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861656, 35.096992, 19.193054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923779, 34.718830, 19.078453>,  <37.961052, 34.491932, 19.009693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923779, 34.718830, 19.078453>,  <37.861656, 35.096992, 19.193054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923779, 34.718830, 19.078453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666241, -0.314378, 0.676232,
		-0.729385, 0.085854, -0.678695,
		0.155310, -0.945408, -0.286502,
		37.970371, 34.435207, 18.992502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247459, 34.719501, 19.385332>,  <37.861656, 35.096992, 19.193054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247459, 34.719501, 19.385332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510841, 34.423985, 19.327888>,  <37.668869, 34.246674, 19.293423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510841, 34.423985, 19.327888>,  <37.247459, 34.719501, 19.385332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510841, 34.423985, 19.327888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413224, -0.514363, 0.751449,
		-0.629032, -0.435452, -0.643972,
		0.658455, -0.738791, -0.143612,
		37.708378, 34.202347, 19.284805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885403, 34.022301, 19.355064>,  <37.247459, 34.719501, 19.385332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885403, 34.022301, 19.355064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268795, 33.975449, 19.459061>,  <37.498829, 33.947338, 19.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268795, 33.975449, 19.459061>,  <36.885403, 34.022301, 19.355064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268795, 33.975449, 19.459061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284080, -0.471301, 0.834969,
		0.024734, -0.874160, -0.485007,
		0.958482, -0.117128, 0.259989,
		37.556339, 33.940311, 19.537058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001663, 33.335434, 19.512264>,  <36.885403, 34.022301, 19.355064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001663, 33.335434, 19.512264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319630, 33.498119, 19.692348>,  <37.510410, 33.595730, 19.800398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319630, 33.498119, 19.692348>,  <37.001663, 33.335434, 19.512264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319630, 33.498119, 19.692348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391990, -0.222092, 0.892759,
		0.463082, -0.886150, -0.017120,
		0.794920, 0.406710, 0.450208,
		37.558105, 33.620132, 19.827412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408264, 32.907066, 20.050228>,  <37.001663, 33.335434, 19.512264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408264, 32.907066, 20.050228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390953, 33.300018, 20.122948>,  <37.380566, 33.535789, 20.166580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390953, 33.300018, 20.122948>,  <37.408264, 32.907066, 20.050228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390953, 33.300018, 20.122948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154064, -0.186356, 0.970328,
		0.987113, 0.013984, 0.159415,
		-0.043277, 0.982383, 0.181800,
		37.377972, 33.594734, 20.177488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790497, 33.081879, 20.642237>,  <37.408264, 32.907066, 20.050228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790497, 33.081879, 20.642237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522579, 33.374737, 20.592705>,  <37.361828, 33.550453, 20.562986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522579, 33.374737, 20.592705>,  <37.790497, 33.081879, 20.642237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522579, 33.374737, 20.592705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523909, -0.347783, 0.777539,
		0.526208, 0.585666, 0.616522,
		-0.669794, 0.732149, -0.123829,
		37.321640, 33.594383, 20.555555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706516, 33.590221, 21.227295>,  <37.790497, 33.081879, 20.642237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706516, 33.590221, 21.227295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339741, 33.573517, 21.068558>,  <37.119675, 33.563496, 20.973316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339741, 33.573517, 21.068558>,  <37.706516, 33.590221, 21.227295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339741, 33.573517, 21.068558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372469, -0.267220, 0.888741,
		-0.143157, 0.962730, 0.229470,
		-0.916937, -0.041759, -0.396842,
		37.064659, 33.560989, 20.949505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189163, 34.061947, 21.532482>,  <37.706516, 33.590221, 21.227295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189163, 34.061947, 21.532482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014439, 33.720860, 21.417896>,  <36.909603, 33.516205, 21.349144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014439, 33.720860, 21.417896>,  <37.189163, 34.061947, 21.532482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014439, 33.720860, 21.417896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406925, -0.096699, 0.908329,
		-0.802254, 0.513335, -0.304756,
		-0.436807, -0.852723, -0.286466,
		36.883396, 33.465042, 21.331957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390671, 33.940228, 21.533920>,  <37.189163, 34.061947, 21.532482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390671, 33.940228, 21.533920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583027, 33.606941, 21.643097>,  <36.698441, 33.406971, 21.708603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583027, 33.606941, 21.643097>,  <36.390671, 33.940228, 21.533920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583027, 33.606941, 21.643097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467900, 0.019384, 0.883569,
		-0.741492, -0.552612, -0.380539,
		0.480895, -0.833213, 0.272940,
		36.727295, 33.356976, 21.724979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840462, 33.427200, 21.481173>,  <36.390671, 33.940228, 21.533920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840462, 33.427200, 21.481173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106136, 33.321281, 21.760811>,  <36.265541, 33.257729, 21.928595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106136, 33.321281, 21.760811>,  <35.840462, 33.427200, 21.481173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106136, 33.321281, 21.760811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738995, -0.373766, 0.560523,
		0.112874, -0.888922, -0.443934,
		0.664189, -0.264797, 0.699097,
		36.305393, 33.241844, 21.970539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829174, 32.698418, 21.591152>,  <35.840462, 33.427200, 21.481173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829174, 32.698418, 21.591152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948536, 32.863789, 21.935253>,  <36.020153, 32.963009, 22.141714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948536, 32.863789, 21.935253>,  <35.829174, 32.698418, 21.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948536, 32.863789, 21.935253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726977, -0.485558, 0.485529,
		0.618431, -0.770269, 0.155655,
		0.298408, 0.413424, 0.860252,
		36.038059, 32.987816, 22.193329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682339, 32.165298, 22.149107>,  <35.829174, 32.698418, 21.591152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682339, 32.165298, 22.149107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703182, 32.537872, 22.293171>,  <35.715687, 32.761417, 22.379610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703182, 32.537872, 22.293171>,  <35.682339, 32.165298, 22.149107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703182, 32.537872, 22.293171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738155, -0.206988, 0.642093,
		0.672616, -0.299310, 0.676758,
		0.052104, 0.931434, 0.360160,
		35.718815, 32.817303, 22.401218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638966, 31.982473, 22.854229>,  <35.682339, 32.165298, 22.149107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638966, 31.982473, 22.854229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571552, 32.376656, 22.845501>,  <35.531105, 32.613163, 22.840263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571552, 32.376656, 22.845501>,  <35.638966, 31.982473, 22.854229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571552, 32.376656, 22.845501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621528, -0.089060, 0.778313,
		0.765049, 0.144733, 0.627497,
		-0.168532, 0.985454, -0.021820,
		35.520992, 32.672291, 22.838955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533241, 32.011379, 23.463667>,  <35.638966, 31.982473, 22.854229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533241, 32.011379, 23.463667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401093, 32.367599, 23.338593>,  <35.321804, 32.581333, 23.263548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401093, 32.367599, 23.338593>,  <35.533241, 32.011379, 23.463667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401093, 32.367599, 23.338593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534805, 0.096350, 0.839464,
		0.777713, 0.444563, 0.444440,
		-0.330373, 0.890551, -0.312687,
		35.301979, 32.634766, 23.244787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731895, 32.628735, 23.895559>,  <35.533241, 32.011379, 23.463667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731895, 32.628735, 23.895559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388680, 32.715534, 23.709362>,  <35.182751, 32.767612, 23.597643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388680, 32.715534, 23.709362>,  <35.731895, 32.628735, 23.895559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388680, 32.715534, 23.709362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445606, 0.136105, 0.884823,
		0.255359, 0.966637, -0.020089,
		-0.858037, 0.216996, -0.465495,
		35.131268, 32.780632, 23.569714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431236, 33.170918, 24.321299>,  <35.731895, 32.628735, 23.895559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431236, 33.170918, 24.321299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118240, 33.054108, 24.101326>,  <34.930443, 32.984020, 23.969343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118240, 33.054108, 24.101326>,  <35.431236, 33.170918, 24.321299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118240, 33.054108, 24.101326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604722, 0.145962, 0.782948,
		-0.148372, 0.945207, -0.290809,
		-0.782495, -0.292026, -0.549930,
		34.883492, 32.966499, 23.936346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937183, 33.462341, 24.814426>,  <35.431236, 33.170918, 24.321299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937183, 33.462341, 24.814426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769222, 33.184204, 24.581127>,  <34.668446, 33.017323, 24.441147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769222, 33.184204, 24.581127>,  <34.937183, 33.462341, 24.814426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769222, 33.184204, 24.581127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715547, -0.141668, 0.684049,
		-0.558274, 0.704579, -0.438061,
		-0.419908, -0.695340, -0.583249,
		34.643250, 32.975601, 24.406153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174801, 33.637608, 24.800947>,  <34.937183, 33.462341, 24.814426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174801, 33.637608, 24.800947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208511, 33.249409, 24.710579>,  <34.228737, 33.016491, 24.656359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208511, 33.249409, 24.710579>,  <34.174801, 33.637608, 24.800947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208511, 33.249409, 24.710579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679208, -0.221842, 0.699616,
		-0.729092, 0.094489, -0.677862,
		0.084272, -0.970494, -0.225921,
		34.233791, 32.958260, 24.642803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497608, 33.385662, 24.934465>,  <34.174801, 33.637608, 24.800947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497608, 33.385662, 24.934465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736828, 33.065079, 24.934128>,  <33.880360, 32.872730, 24.933926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736828, 33.065079, 24.934128>,  <33.497608, 33.385662, 24.934465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736828, 33.065079, 24.934128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457855, -0.342514, 0.820398,
		-0.657805, -0.490251, -0.571792,
		0.598048, -0.801460, -0.000844,
		33.916241, 32.824642, 24.933874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036884, 32.910984, 25.151768>,  <33.497608, 33.385662, 24.934465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036884, 32.910984, 25.151768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387039, 32.728882, 25.216808>,  <33.597134, 32.619621, 25.255833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387039, 32.728882, 25.216808>,  <33.036884, 32.910984, 25.151768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387039, 32.728882, 25.216808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372776, -0.421544, 0.826643,
		-0.307792, -0.784246, -0.538723,
		0.875387, -0.455257, 0.162600,
		33.649654, 32.592304, 25.265589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882454, 32.223938, 25.225565>,  <33.036884, 32.910984, 25.151768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882454, 32.223938, 25.225565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233883, 32.274704, 25.409737>,  <33.444740, 32.305164, 25.520239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233883, 32.274704, 25.409737>,  <32.882454, 32.223938, 25.225565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233883, 32.274704, 25.409737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367701, -0.435482, 0.821676,
		0.304792, -0.891206, -0.335937,
		0.878577, 0.126916, 0.460428,
		33.497456, 32.312778, 25.547865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034611, 31.547819, 25.532576>,  <32.882454, 32.223938, 25.225565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034611, 31.547819, 25.532576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273140, 31.801540, 25.729374>,  <33.416256, 31.953773, 25.847452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273140, 31.801540, 25.729374>,  <33.034611, 31.547819, 25.532576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273140, 31.801540, 25.729374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235861, -0.447394, 0.862675,
		0.767313, -0.630475, -0.117184,
		0.596323, 0.634302, 0.491996,
		33.452038, 31.991831, 25.876972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467556, 31.145805, 26.001772>,  <33.034611, 31.547819, 25.532576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467556, 31.145805, 26.001772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439762, 31.516457, 26.149570>,  <33.423084, 31.738848, 26.238251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439762, 31.516457, 26.149570>,  <33.467556, 31.145805, 26.001772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439762, 31.516457, 26.149570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206514, -0.375731, 0.903426,
		0.975973, -0.013529, 0.217471,
		-0.069488, 0.926630, 0.369497,
		33.418915, 31.794445, 26.260420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919426, 31.172647, 26.538870>,  <33.467556, 31.145805, 26.001772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919426, 31.172647, 26.538870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636292, 31.448814, 26.598587>,  <33.466412, 31.614515, 26.634417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636292, 31.448814, 26.598587>,  <33.919426, 31.172647, 26.538870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636292, 31.448814, 26.598587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078010, -0.286462, 0.954911,
		0.702054, 0.664275, 0.256628,
		-0.707837, 0.690419, 0.149291,
		33.423939, 31.655939, 26.643373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137131, 31.428383, 27.153433>,  <33.919426, 31.172647, 26.538870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137131, 31.428383, 27.153433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756508, 31.546558, 27.119370>,  <33.528133, 31.617464, 27.098932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756508, 31.546558, 27.119370>,  <34.137131, 31.428383, 27.153433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756508, 31.546558, 27.119370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154417, -0.219696, 0.963270,
		0.265879, 0.929758, 0.254674,
		-0.951559, 0.295439, -0.085158,
		33.471039, 31.635191, 27.093822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014172, 32.008198, 27.696224>,  <34.137131, 31.428383, 27.153433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014172, 32.008198, 27.696224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667686, 31.825035, 27.616230>,  <33.459793, 31.715139, 27.568233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667686, 31.825035, 27.616230>,  <34.014172, 32.008198, 27.696224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667686, 31.825035, 27.616230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197457, -0.053966, 0.978825,
		-0.458999, 0.887363, -0.043670,
		-0.866216, -0.457902, -0.199987,
		33.407822, 31.687664, 27.556234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678722, 32.205719, 28.237778>,  <34.014172, 32.008198, 27.696224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678722, 32.205719, 28.237778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442333, 31.921658, 28.084713>,  <33.300499, 31.751221, 27.992874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442333, 31.921658, 28.084713>,  <33.678722, 32.205719, 28.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442333, 31.921658, 28.084713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469617, -0.082826, 0.878976,
		-0.655901, 0.699160, -0.284551,
		-0.590977, -0.710152, -0.382663,
		33.265041, 31.708612, 27.969913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112022, 32.341160, 28.601530>,  <33.678722, 32.205719, 28.237778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112022, 32.341160, 28.601530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104965, 31.958912, 28.483906>,  <33.100731, 31.729563, 28.413332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104965, 31.958912, 28.483906>,  <33.112022, 32.341160, 28.601530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104965, 31.958912, 28.483906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009296, -0.293936, 0.955780,
		-0.999801, 0.019601, -0.003696,
		-0.017648, -0.955624, -0.294060,
		33.099670, 31.672224, 28.395687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701252, 32.089775, 29.049820>,  <33.112022, 32.341160, 28.601530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701252, 32.089775, 29.049820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901981, 31.780445, 28.894829>,  <33.022419, 31.594847, 28.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901981, 31.780445, 28.894829>,  <32.701252, 32.089775, 29.049820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901981, 31.780445, 28.894829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052783, -0.419755, 0.906102,
		-0.863357, -0.475157, -0.169824,
		0.501825, -0.773325, -0.387479,
		33.052528, 31.548447, 28.778585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250313, 31.427849, 29.283186>,  <32.701252, 32.089775, 29.049820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250313, 31.427849, 29.283186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621246, 31.307419, 29.194283>,  <32.843807, 31.235161, 29.140940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621246, 31.307419, 29.194283>,  <32.250313, 31.427849, 29.283186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621246, 31.307419, 29.194283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057535, -0.472155, 0.879636,
		-0.369775, -0.828508, -0.420525,
		0.927338, -0.301073, -0.222259,
		32.899448, 31.217096, 29.127605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431770, 30.731836, 29.469486>,  <32.250313, 31.427849, 29.283186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431770, 30.731836, 29.469486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814316, 30.844887, 29.439854>,  <33.043842, 30.912718, 29.422073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814316, 30.844887, 29.439854>,  <32.431770, 30.731836, 29.469486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814316, 30.844887, 29.439854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257568, -0.695836, 0.670426,
		0.137931, -0.660253, -0.738269,
		0.956365, 0.282627, -0.074083,
		33.101227, 30.929674, 29.417629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810066, 30.100107, 29.377392>,  <32.431770, 30.731836, 29.469486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810066, 30.100107, 29.377392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070786, 30.379307, 29.496025>,  <33.227215, 30.546825, 29.567205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070786, 30.379307, 29.496025>,  <32.810066, 30.100107, 29.377392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070786, 30.379307, 29.496025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362556, -0.630269, 0.686523,
		0.666119, -0.339944, -0.663870,
		0.651796, 0.697997, 0.296585,
		33.266323, 30.588705, 29.585001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531460, 29.771799, 29.376534>,  <32.810066, 30.100107, 29.377392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531460, 29.771799, 29.376534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527298, 30.075783, 29.636490>,  <33.524803, 30.258173, 29.792463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527298, 30.075783, 29.636490>,  <33.531460, 29.771799, 29.376534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527298, 30.075783, 29.636490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212894, -0.633340, 0.744013,
		0.977020, 0.146097, -0.155202,
		-0.010402, 0.759958, 0.649889,
		33.524178, 30.303770, 29.831457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024601, 29.653692, 29.851490>,  <33.531460, 29.771799, 29.376534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024601, 29.653692, 29.851490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827122, 29.929691, 30.063213>,  <33.708633, 30.095291, 30.190247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827122, 29.929691, 30.063213>,  <34.024601, 29.653692, 29.851490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827122, 29.929691, 30.063213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178800, -0.515114, 0.838265,
		0.851057, 0.508486, 0.130937,
		-0.493694, 0.689999, 0.529309,
		33.679012, 30.136692, 30.222006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450733, 30.016357, 30.358494>,  <34.024601, 29.653692, 29.851490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450733, 30.016357, 30.358494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071690, 30.021706, 30.486153>,  <33.844265, 30.024914, 30.562748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071690, 30.021706, 30.486153>,  <34.450733, 30.016357, 30.358494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071690, 30.021706, 30.486153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304836, -0.260685, 0.916034,
		0.095444, 0.965331, 0.242952,
		-0.947610, 0.013370, 0.319149,
		33.787407, 30.025717, 30.581898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575577, 30.133461, 31.112572>,  <34.450733, 30.016357, 30.358494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575577, 30.133461, 31.112572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181301, 30.075546, 31.078041>,  <33.944736, 30.040798, 31.057323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181301, 30.075546, 31.078041>,  <34.575577, 30.133461, 31.112572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181301, 30.075546, 31.078041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046630, -0.257924, 0.965039,
		-0.161990, 0.955255, 0.247482,
		-0.985690, -0.144786, -0.086324,
		33.885593, 30.032110, 31.052143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313011, 30.402397, 31.690939>,  <34.575577, 30.133461, 31.112572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313011, 30.402397, 31.690939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014103, 30.171776, 31.558769>,  <33.834759, 30.033403, 31.479467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014103, 30.171776, 31.558769>,  <34.313011, 30.402397, 31.690939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014103, 30.171776, 31.558769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111250, -0.381674, 0.917577,
		-0.655147, 0.722434, 0.221070,
		-0.747266, -0.576554, -0.330423,
		33.789925, 29.998810, 31.459642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660126, 30.568203, 32.112659>,  <34.313011, 30.402397, 31.690939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660126, 30.568203, 32.112659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649918, 30.194386, 31.970684>,  <33.643791, 29.970095, 31.885500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649918, 30.194386, 31.970684>,  <33.660126, 30.568203, 32.112659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649918, 30.194386, 31.970684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079529, -0.352027, 0.932605,
		-0.996506, 0.052028, -0.065340,
		-0.025520, -0.934543, -0.354934,
		33.642262, 29.914022, 31.864204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154850, 30.227547, 32.575325>,  <33.660126, 30.568203, 32.112659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154850, 30.227547, 32.575325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307556, 29.904072, 32.396317>,  <33.399181, 29.709986, 32.288910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307556, 29.904072, 32.396317>,  <33.154850, 30.227547, 32.575325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307556, 29.904072, 32.396317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161013, -0.534984, 0.829378,
		-0.910126, -0.244572, -0.334448,
		0.381767, -0.808689, -0.447524,
		33.422085, 29.661465, 32.262058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598297, 29.744432, 32.711018>,  <33.154850, 30.227547, 32.575325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598297, 29.744432, 32.711018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956421, 29.587494, 32.626659>,  <33.171295, 29.493330, 32.576042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956421, 29.587494, 32.626659>,  <32.598297, 29.744432, 32.711018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956421, 29.587494, 32.626659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161343, -0.726955, 0.667461,
		-0.415191, -0.563559, -0.714155,
		0.895313, -0.392348, -0.210899,
		33.225014, 29.469790, 32.563389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569901, 28.983086, 32.550526>,  <32.598297, 29.744432, 32.711018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569901, 28.983086, 32.550526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938950, 29.051353, 32.688885>,  <33.160378, 29.092314, 32.771900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938950, 29.051353, 32.688885>,  <32.569901, 28.983086, 32.550526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938950, 29.051353, 32.688885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123156, -0.719484, 0.683502,
		0.365517, -0.673213, -0.642792,
		0.922621, 0.170668, 0.345894,
		33.215736, 29.102554, 32.792652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899834, 28.363619, 32.685387>,  <32.569901, 28.983086, 32.550526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899834, 28.363619, 32.685387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123455, 28.602974, 32.914959>,  <33.257626, 28.746586, 33.052704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123455, 28.602974, 32.914959>,  <32.899834, 28.363619, 32.685387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123455, 28.602974, 32.914959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062530, -0.659806, 0.748830,
		0.826773, -0.454521, -0.331447,
		0.559050, 0.598387, 0.573931,
		33.291168, 28.782490, 33.087139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254051, 27.807819, 33.079166>,  <32.899834, 28.363619, 32.685387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254051, 27.807819, 33.079166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305092, 28.153984, 33.272984>,  <33.335716, 28.361683, 33.389275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305092, 28.153984, 33.272984>,  <33.254051, 27.807819, 33.079166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305092, 28.153984, 33.272984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076106, -0.478555, 0.874753,
		0.988901, -0.148496, 0.004798,
		0.127601, 0.865410, 0.484545,
		33.343372, 28.413607, 33.418346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579109, 27.587706, 33.731346>,  <33.254051, 27.807819, 33.079166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579109, 27.587706, 33.731346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467480, 27.967175, 33.790859>,  <33.400501, 28.194857, 33.826569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467480, 27.967175, 33.790859>,  <33.579109, 27.587706, 33.731346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467480, 27.967175, 33.790859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336837, -0.241805, 0.909984,
		0.899255, 0.203836, 0.387030,
		-0.279073, 0.948673, 0.148785,
		33.383759, 28.251776, 33.835495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896648, 27.730446, 34.332485>,  <33.579109, 27.587706, 33.731346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896648, 27.730446, 34.332485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591122, 27.986450, 34.299080>,  <33.407806, 28.140053, 34.279037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591122, 27.986450, 34.299080>,  <33.896648, 27.730446, 34.332485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591122, 27.986450, 34.299080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267099, -0.195643, 0.943601,
		0.587574, 0.743043, 0.320381,
		-0.763816, 0.640008, -0.083511,
		33.361977, 28.178453, 34.274025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979572, 28.069057, 34.896824>,  <33.896648, 27.730446, 34.332485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979572, 28.069057, 34.896824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603230, 28.142422, 34.782875>,  <33.377422, 28.186440, 34.714508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603230, 28.142422, 34.782875>,  <33.979572, 28.069057, 34.896824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603230, 28.142422, 34.782875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308643, -0.117178, 0.943933,
		0.139745, 0.976028, 0.166856,
		-0.940857, 0.183408, -0.284869,
		33.320972, 28.197445, 34.697414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752125, 28.671801, 35.258842>,  <33.979572, 28.069057, 34.896824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752125, 28.671801, 35.258842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404842, 28.498253, 35.162529>,  <33.196472, 28.394123, 35.104740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404842, 28.498253, 35.162529>,  <33.752125, 28.671801, 35.258842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404842, 28.498253, 35.162529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190387, -0.156844, 0.969099,
		-0.458229, 0.887218, 0.053569,
		-0.868205, -0.433870, -0.240785,
		33.144382, 28.368092, 35.090294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222977, 28.866514, 35.778442>,  <33.752125, 28.671801, 35.258842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222977, 28.866514, 35.778442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068386, 28.547073, 35.593891>,  <32.975632, 28.355410, 35.483162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068386, 28.547073, 35.593891>,  <33.222977, 28.866514, 35.778442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068386, 28.547073, 35.593891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413677, -0.297010, 0.860614,
		-0.824322, 0.523470, -0.215575,
		-0.386478, -0.798601, -0.461379,
		32.952442, 28.307493, 35.455479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641342, 28.924387, 36.066422>,  <33.222977, 28.866514, 35.778442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641342, 28.924387, 36.066422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722069, 28.554806, 35.936451>,  <32.770504, 28.333057, 35.858467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722069, 28.554806, 35.936451>,  <32.641342, 28.924387, 36.066422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722069, 28.554806, 35.936451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320826, -0.375815, 0.869387,
		-0.925386, -0.071215, -0.372275,
		0.201820, -0.923954, -0.324927,
		32.782616, 28.277620, 35.838974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062740, 28.523048, 36.163849>,  <32.641342, 28.924387, 36.066422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062740, 28.523048, 36.163849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345806, 28.241005, 36.145832>,  <32.515648, 28.071779, 36.135021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345806, 28.241005, 36.145832>,  <32.062740, 28.523048, 36.163849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345806, 28.241005, 36.145832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388183, -0.441280, 0.809065,
		-0.590355, -0.555064, -0.585990,
		0.707669, -0.705108, -0.045045,
		32.558105, 28.029472, 36.132320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731571, 27.823988, 36.363689>,  <32.062740, 28.523048, 36.163849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731571, 27.823988, 36.363689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118774, 27.728302, 36.393974>,  <32.351097, 27.670891, 36.412144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118774, 27.728302, 36.393974>,  <31.731571, 27.823988, 36.363689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118774, 27.728302, 36.393974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209882, -0.606628, 0.766780,
		-0.137497, -0.758142, -0.637429,
		0.968010, -0.239215, 0.075711,
		32.409176, 27.656538, 36.416687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853786, 27.073555, 36.414154>,  <31.731571, 27.823988, 36.363689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853786, 27.073555, 36.414154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168369, 27.257038, 36.579597>,  <32.357121, 27.367128, 36.678864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168369, 27.257038, 36.579597>,  <31.853786, 27.073555, 36.414154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168369, 27.257038, 36.579597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094775, -0.572100, 0.814690,
		0.610328, -0.679919, -0.406459,
		0.786459, 0.458706, 0.413608,
		32.404308, 27.394650, 36.703678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224884, 26.487339, 36.701527>,  <31.853786, 27.073555, 36.414154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224884, 26.487339, 36.701527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393520, 26.799473, 36.886280>,  <32.494701, 26.986753, 36.997131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393520, 26.799473, 36.886280>,  <32.224884, 26.487339, 36.701527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393520, 26.799473, 36.886280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073580, -0.537125, 0.840287,
		0.903796, -0.320272, -0.283864,
		0.421591, 0.780335, 0.461886,
		32.519997, 27.033573, 37.024845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932972, 26.315298, 36.898209>,  <32.224884, 26.487339, 36.701527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932972, 26.315298, 36.898209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789833, 26.596912, 37.143574>,  <32.703949, 26.765881, 37.290794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789833, 26.596912, 37.143574>,  <32.932972, 26.315298, 36.898209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789833, 26.596912, 37.143574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116708, -0.618045, 0.777432,
		0.926456, 0.349796, 0.139002,
		-0.357852, 0.704034, 0.613415,
		32.682476, 26.808123, 37.327599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378883, 26.593039, 37.449970>,  <32.932972, 26.315298, 36.898209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378883, 26.593039, 37.449970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996094, 26.529457, 37.547073>,  <32.766418, 26.491308, 37.605335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996094, 26.529457, 37.547073>,  <33.378883, 26.593039, 37.449970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996094, 26.529457, 37.547073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278183, -0.740512, 0.611765,
		0.082521, 0.652975, 0.752871,
		-0.956977, -0.158953, 0.242755,
		32.709000, 26.481771, 37.619900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141956, 26.762890, 38.198154>,  <33.378883, 26.593039, 37.449970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141956, 26.762890, 38.198154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914688, 26.474880, 38.038780>,  <32.778328, 26.302074, 37.943153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914688, 26.474880, 38.038780>,  <33.141956, 26.762890, 38.198154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914688, 26.474880, 38.038780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127108, -0.555157, 0.821976,
		-0.813036, 0.416376, 0.406943,
		-0.568169, -0.720022, -0.398438,
		32.744236, 26.258873, 37.919250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667767, 26.491770, 38.692329>,  <33.141956, 26.762890, 38.198154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667767, 26.491770, 38.692329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781670, 26.197277, 38.446770>,  <32.850010, 26.020582, 38.299435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781670, 26.197277, 38.446770>,  <32.667767, 26.491770, 38.692329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781670, 26.197277, 38.446770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152899, -0.597333, 0.787283,
		-0.946328, -0.318048, -0.057525,
		0.284755, -0.736232, -0.613902,
		32.867096, 25.976408, 38.262600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956200, 26.610840, 38.716129>,  <32.667767, 26.491770, 38.692329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956200, 26.610840, 38.716129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163712, 26.892212, 38.521790>,  <32.288219, 27.061035, 38.405186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163712, 26.892212, 38.521790>,  <31.956200, 26.610840, 38.716129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163712, 26.892212, 38.521790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761150, 0.121282, -0.637136,
		-0.389256, 0.700339, 0.598335,
		0.518779, 0.703431, -0.485853,
		32.319344, 27.103241, 38.376034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403248, 26.876564, 38.346184>,  <31.956200, 26.610840, 38.716129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403248, 26.876564, 38.346184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683807, 27.116501, 38.192181>,  <31.852142, 27.260462, 38.099777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683807, 27.116501, 38.192181>,  <31.403248, 26.876564, 38.346184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683807, 27.116501, 38.192181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705459, 0.507045, -0.495210,
		-0.101830, 0.618948, 0.778803,
		0.701397, 0.599841, -0.385010,
		31.894226, 27.296453, 38.076679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655888, 27.475737, 38.697044>,  <31.403248, 26.876564, 38.346184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655888, 27.475737, 38.697044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862955, 27.689926, 38.963963>,  <31.987196, 27.818439, 39.124115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862955, 27.689926, 38.963963>,  <31.655888, 27.475737, 38.697044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862955, 27.689926, 38.963963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308786, 0.610438, -0.729394,
		-0.797916, 0.583637, 0.150658,
		0.517669, 0.535474, 0.667297,
		32.018257, 27.850569, 39.164150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740265, 27.967791, 38.217236>,  <31.655888, 27.475737, 38.697044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740265, 27.967791, 38.217236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991323, 28.089508, 38.503860>,  <32.141960, 28.162539, 38.675835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991323, 28.089508, 38.503860>,  <31.740265, 27.967791, 38.217236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991323, 28.089508, 38.503860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324478, 0.734429, -0.596094,
		-0.707653, 0.606646, 0.362227,
		0.627648, 0.304293, 0.716564,
		32.179619, 28.180796, 38.718830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585020, 28.677616, 38.555214>,  <31.740265, 27.967791, 38.217236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585020, 28.677616, 38.555214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974974, 28.589500, 38.568302>,  <32.208946, 28.536631, 38.576157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974974, 28.589500, 38.568302>,  <31.585020, 28.677616, 38.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974974, 28.589500, 38.568302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221194, 0.940652, -0.257383,
		0.025921, 0.258157, 0.965755,
		0.974885, -0.220291, 0.032721,
		32.267441, 28.523413, 38.578117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083336, 29.178946, 39.030903>,  <31.585020, 28.677616, 38.555214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083336, 29.178946, 39.030903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317215, 29.044643, 38.735500>,  <32.457542, 28.964062, 38.558258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317215, 29.044643, 38.735500>,  <32.083336, 29.178946, 39.030903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317215, 29.044643, 38.735500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186277, 0.941577, -0.280595,
		0.789572, 0.026497, 0.613086,
		0.584702, -0.335754, -0.738507,
		32.492626, 28.943916, 38.513947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570904, 29.640060, 38.872250>,  <32.083336, 29.178946, 39.030903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570904, 29.640060, 38.872250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641663, 29.435940, 38.535606>,  <32.684120, 29.313467, 38.333622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641663, 29.435940, 38.535606>,  <32.570904, 29.640060, 38.872250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641663, 29.435940, 38.535606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137608, 0.859516, -0.492237,
		0.974562, -0.028736, 0.222269,
		0.176899, -0.510301, -0.841605,
		32.694733, 29.282850, 38.283123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102726, 30.031290, 38.564705>,  <32.570904, 29.640060, 38.872250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102726, 30.031290, 38.564705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963207, 29.810608, 38.261665>,  <32.879498, 29.678198, 38.079842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963207, 29.810608, 38.261665>,  <33.102726, 30.031290, 38.564705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963207, 29.810608, 38.261665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110492, 0.778524, -0.617813,
		0.930663, -0.299199, -0.210586,
		-0.348795, -0.551708, -0.757602,
		32.858570, 29.645096, 38.034386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681221, 29.891510, 38.118061>,  <33.102726, 30.031290, 38.564705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681221, 29.891510, 38.118061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341988, 29.876968, 37.906616>,  <33.138447, 29.868244, 37.779747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341988, 29.876968, 37.906616>,  <33.681221, 29.891510, 38.118061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341988, 29.876968, 37.906616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352237, 0.706606, -0.613707,
		0.395833, -0.706673, -0.586456,
		-0.848083, -0.036354, -0.528615,
		33.087563, 29.866062, 37.748032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850323, 30.163054, 37.397068>,  <33.681221, 29.891510, 38.118061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850323, 30.163054, 37.397068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450436, 30.154362, 37.393211>,  <33.210503, 30.149147, 37.390896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450436, 30.154362, 37.393211>,  <33.850323, 30.163054, 37.397068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450436, 30.154362, 37.393211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010115, 0.755966, -0.654533,
		0.021514, -0.654251, -0.755972,
		-0.999717, -0.021729, -0.009646,
		33.150520, 30.147842, 37.390316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615128, 29.985088, 36.654057>,  <33.850323, 30.163054, 37.397068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615128, 29.985088, 36.654057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301277, 30.157333, 36.832466>,  <33.112968, 30.260681, 36.939514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301277, 30.157333, 36.832466>,  <33.615128, 29.985088, 36.654057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301277, 30.157333, 36.832466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137718, 0.580394, -0.802606,
		-0.604484, -0.691169, -0.396087,
		-0.784623, 0.430614, 0.446026,
		33.065891, 30.286518, 36.966274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036469, 30.016731, 36.177265>,  <33.615128, 29.985088, 36.654057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036469, 30.016731, 36.177265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972401, 30.291496, 36.460815>,  <32.933960, 30.456356, 36.630943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972401, 30.291496, 36.460815>,  <33.036469, 30.016731, 36.177265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972401, 30.291496, 36.460815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148550, 0.693190, -0.705280,
		-0.975848, -0.218265, -0.008984,
		-0.160165, 0.686912, 0.708872,
		32.924351, 30.497570, 36.673477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565834, 30.371117, 35.834099>,  <33.036469, 30.016731, 36.177265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565834, 30.371117, 35.834099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718868, 30.604668, 36.120514>,  <32.810688, 30.744799, 36.292362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718868, 30.604668, 36.120514>,  <32.565834, 30.371117, 35.834099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718868, 30.604668, 36.120514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036830, 0.784025, -0.619635,
		-0.923185, 0.210692, 0.321462,
		0.382586, 0.583878, 0.716041,
		32.833645, 30.779831, 36.335327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043861, 30.885675, 35.675831>,  <32.565834, 30.371117, 35.834099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043861, 30.885675, 35.675831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369030, 31.008896, 35.873524>,  <32.564129, 31.082829, 35.992142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369030, 31.008896, 35.873524>,  <32.043861, 30.885675, 35.675831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369030, 31.008896, 35.873524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095185, 0.766962, -0.634594,
		-0.574547, 0.562917, 0.594155,
		0.812918, 0.308049, 0.494236,
		32.612904, 31.101311, 36.021793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918524, 31.458630, 35.790798>,  <32.043861, 30.885675, 35.675831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918524, 31.458630, 35.790798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318188, 31.443607, 35.797394>,  <32.557987, 31.434595, 35.801353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318188, 31.443607, 35.797394>,  <31.918524, 31.458630, 35.790798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318188, 31.443607, 35.797394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038876, 0.738926, -0.672664,
		0.013074, 0.672739, 0.739764,
		0.999158, -0.037553, 0.016493,
		32.617935, 31.432341, 35.802341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209820, 32.135681, 35.749920>,  <31.918524, 31.458630, 35.790798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209820, 32.135681, 35.749920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542492, 31.935913, 35.652851>,  <32.742096, 31.816053, 35.594608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542492, 31.935913, 35.652851>,  <32.209820, 32.135681, 35.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542492, 31.935913, 35.652851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199186, 0.676304, -0.709181,
		0.518298, 0.541475, 0.661946,
		0.831680, -0.499417, -0.242673,
		32.791996, 31.786087, 35.580048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692482, 32.666382, 35.736805>,  <32.209820, 32.135681, 35.749920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692482, 32.666382, 35.736805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862663, 32.361362, 35.541866>,  <32.964771, 32.178349, 35.424904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862663, 32.361362, 35.541866>,  <32.692482, 32.666382, 35.736805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862663, 32.361362, 35.541866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386787, 0.640069, -0.663858,
		0.818160, 0.093942, 0.567264,
		0.425452, -0.762553, -0.487344,
		32.990299, 32.132595, 35.395664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155621, 33.032410, 35.362339>,  <32.692482, 32.666382, 35.736805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155621, 33.032410, 35.362339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239437, 32.679188, 35.194386>,  <33.289726, 32.467255, 35.093613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239437, 32.679188, 35.194386>,  <33.155621, 33.032410, 35.362339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239437, 32.679188, 35.194386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212214, 0.460255, -0.862050,
		0.954492, 0.091534, 0.283841,
		0.209546, -0.883055, -0.419885,
		33.302299, 32.414272, 35.068420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828430, 32.969906, 34.980358>,  <33.155621, 33.032410, 35.362339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828430, 32.969906, 34.980358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597015, 32.713600, 34.778477>,  <33.458168, 32.559818, 34.657349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597015, 32.713600, 34.778477>,  <33.828430, 32.969906, 34.980358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597015, 32.713600, 34.778477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279643, 0.425447, -0.860694,
		0.766225, -0.639075, -0.066950,
		-0.578532, -0.640763, -0.504701,
		33.423454, 32.521370, 34.627068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199341, 32.719013, 34.379681>,  <33.828430, 32.969906, 34.980358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199341, 32.719013, 34.379681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819183, 32.622898, 34.300671>,  <33.591087, 32.565231, 34.253265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819183, 32.622898, 34.300671>,  <34.199341, 32.719013, 34.379681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819183, 32.622898, 34.300671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127584, 0.278009, -0.952068,
		0.283694, -0.930036, -0.233559,
		-0.950389, -0.240298, -0.197527,
		33.534065, 32.550812, 34.241413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226765, 32.299774, 33.679543>,  <34.199341, 32.719013, 34.379681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226765, 32.299774, 33.679543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869759, 32.465736, 33.750278>,  <33.655556, 32.565311, 33.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869759, 32.465736, 33.750278>,  <34.226765, 32.299774, 33.679543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869759, 32.465736, 33.750278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012665, 0.368886, -0.929388,
		-0.450841, -0.831732, -0.323981,
		-0.892514, 0.414903, 0.176843,
		33.602005, 32.590206, 33.803333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749573, 31.996536, 33.210911>,  <34.226765, 32.299774, 33.679543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749573, 31.996536, 33.210911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562283, 32.336929, 33.306068>,  <33.449909, 32.541164, 33.363163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562283, 32.336929, 33.306068>,  <33.749573, 31.996536, 33.210911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562283, 32.336929, 33.306068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025281, 0.256220, -0.966288,
		-0.883248, -0.458453, -0.098455,
		-0.468224, 0.850983, 0.237896,
		33.421814, 32.592224, 33.377438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320656, 32.069771, 32.730774>,  <33.749573, 31.996536, 33.210911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320656, 32.069771, 32.730774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365952, 32.440784, 32.873241>,  <33.393131, 32.663391, 32.958721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365952, 32.440784, 32.873241>,  <33.320656, 32.069771, 32.730774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365952, 32.440784, 32.873241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043137, 0.362726, -0.930897,
		-0.992631, 0.090052, 0.081087,
		0.113241, 0.927535, 0.356169,
		33.399925, 32.719044, 32.980091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812660, 32.486427, 32.359467>,  <33.320656, 32.069771, 32.730774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812660, 32.486427, 32.359467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105949, 32.732796, 32.474720>,  <33.281921, 32.880619, 32.543873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105949, 32.732796, 32.474720>,  <32.812660, 32.486427, 32.359467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105949, 32.732796, 32.474720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030828, 0.453410, -0.890769,
		-0.679291, 0.644248, 0.351437,
		0.733221, 0.615925, 0.288137,
		33.325916, 32.917572, 32.561161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825443, 33.058197, 31.894228>,  <32.812660, 32.486427, 32.359467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825443, 33.058197, 31.894228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171432, 33.159790, 32.067348>,  <33.379025, 33.220745, 32.171219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171432, 33.159790, 32.067348>,  <32.825443, 33.058197, 31.894228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171432, 33.159790, 32.067348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388606, 0.206669, -0.897927,
		-0.317505, 0.944871, 0.080064,
		0.864972, 0.253983, 0.432801,
		33.430923, 33.235985, 32.197189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074345, 33.631245, 31.518709>,  <32.825443, 33.058197, 31.894228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074345, 33.631245, 31.518709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414177, 33.532722, 31.705276>,  <33.618076, 33.473610, 31.817217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414177, 33.532722, 31.705276>,  <33.074345, 33.631245, 31.518709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414177, 33.532722, 31.705276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521244, 0.256710, -0.813883,
		0.080732, 0.934576, 0.346483,
		0.849581, -0.246308, 0.466417,
		33.669052, 33.458832, 31.845201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628246, 34.213787, 31.504288>,  <33.074345, 33.631245, 31.518709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628246, 34.213787, 31.504288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835575, 33.875645, 31.555992>,  <33.959972, 33.672760, 31.587015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835575, 33.875645, 31.555992>,  <33.628246, 34.213787, 31.504288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835575, 33.875645, 31.555992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643229, 0.285775, -0.710344,
		0.563557, 0.451332, 0.691884,
		0.518324, -0.845359, 0.129260,
		33.991074, 33.622036, 31.594770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345158, 34.385506, 31.446583>,  <33.628246, 34.213787, 31.504288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345158, 34.385506, 31.446583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343441, 33.988770, 31.395607>,  <34.342411, 33.750729, 31.365021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343441, 33.988770, 31.395607>,  <34.345158, 34.385506, 31.446583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343441, 33.988770, 31.395607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662176, 0.092677, -0.743595,
		0.749336, -0.087583, 0.656373,
		-0.004296, -0.991837, -0.127441,
		34.342152, 33.691219, 31.357374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060318, 34.193420, 31.268824>,  <34.345158, 34.385506, 31.446583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060318, 34.193420, 31.268824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808857, 33.900642, 31.163704>,  <34.657982, 33.724976, 31.100632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808857, 33.900642, 31.163704>,  <35.060318, 34.193420, 31.268824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808857, 33.900642, 31.163704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423302, -0.038572, -0.905167,
		0.652392, -0.680276, 0.334080,
		-0.628650, -0.731941, -0.262798,
		34.620262, 33.681061, 31.084864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465801, 33.752892, 30.944668>,  <35.060318, 34.193420, 31.268824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465801, 33.752892, 30.944668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117619, 33.611774, 30.807354>,  <34.908710, 33.527103, 30.724966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117619, 33.611774, 30.807354>,  <35.465801, 33.752892, 30.944668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117619, 33.611774, 30.807354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413319, -0.145070, -0.898956,
		0.267344, -0.924388, 0.272092,
		-0.870457, -0.352791, -0.343283,
		34.856483, 33.505936, 30.704369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640392, 33.149101, 30.582932>,  <35.465801, 33.752892, 30.944668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640392, 33.149101, 30.582932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288147, 33.277134, 30.443176>,  <35.076801, 33.353954, 30.359324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288147, 33.277134, 30.443176>,  <35.640392, 33.149101, 30.582932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288147, 33.277134, 30.443176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297249, -0.201053, -0.933392,
		-0.369009, -0.925810, 0.081904,
		-0.880611, 0.320084, -0.349386,
		35.023964, 33.373158, 30.338360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306595, 32.692799, 29.994196>,  <35.640392, 33.149101, 30.582932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306595, 32.692799, 29.994196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122734, 33.044670, 29.945393>,  <35.012417, 33.255795, 29.916111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122734, 33.044670, 29.945393>,  <35.306595, 32.692799, 29.994196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122734, 33.044670, 29.945393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219275, -0.020714, -0.975443,
		-0.860606, -0.475113, -0.183371,
		-0.459647, 0.879681, -0.122007,
		34.984840, 33.308575, 29.908791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968163, 32.654381, 29.398495>,  <35.306595, 32.692799, 29.994196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968163, 32.654381, 29.398495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989399, 33.049362, 29.457985>,  <35.002140, 33.286350, 29.493679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989399, 33.049362, 29.457985>,  <34.968163, 32.654381, 29.398495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989399, 33.049362, 29.457985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187063, 0.136466, -0.972823,
		-0.980912, 0.079471, -0.177470,
		0.053093, 0.987452, 0.148728,
		35.005325, 33.345596, 29.502604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670883, 32.901264, 28.780758>,  <34.968163, 32.654381, 29.398495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670883, 32.901264, 28.780758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843685, 33.235538, 28.916401>,  <34.947369, 33.436104, 28.997787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843685, 33.235538, 28.916401>,  <34.670883, 32.901264, 28.780758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843685, 33.235538, 28.916401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129349, 0.314704, -0.940335,
		-0.892545, 0.450096, 0.027860,
		0.432009, 0.835688, 0.339107,
		34.973289, 33.486244, 29.018133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343929, 33.531044, 28.399036>,  <34.670883, 32.901264, 28.780758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343929, 33.531044, 28.399036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699104, 33.641800, 28.545948>,  <34.912209, 33.708252, 28.634096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699104, 33.641800, 28.545948>,  <34.343929, 33.531044, 28.399036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699104, 33.641800, 28.545948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228513, 0.427430, -0.874691,
		-0.399180, 0.860602, 0.316259,
		0.887940, 0.276890, 0.367280,
		34.965485, 33.724865, 28.656132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462852, 34.264011, 28.218578>,  <34.343929, 33.531044, 28.399036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462852, 34.264011, 28.218578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821171, 34.099655, 28.286366>,  <35.036163, 34.001041, 28.327038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821171, 34.099655, 28.286366>,  <34.462852, 34.264011, 28.218578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821171, 34.099655, 28.286366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344064, 0.399691, -0.849628,
		0.281366, 0.819402, 0.499413,
		0.895797, -0.410887, 0.169467,
		35.089909, 33.976391, 28.337206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935684, 34.732147, 27.913107>,  <34.462852, 34.264011, 28.218578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935684, 34.732147, 27.913107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151905, 34.396381, 27.935696>,  <35.281635, 34.194923, 27.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151905, 34.396381, 27.935696>,  <34.935684, 34.732147, 27.913107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151905, 34.396381, 27.935696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470640, 0.246068, -0.847319,
		0.697356, 0.484594, 0.528074,
		0.540548, -0.839416, 0.056472,
		35.314068, 34.144558, 27.952637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564877, 34.976826, 27.694845>,  <34.935684, 34.732147, 27.913107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564877, 34.976826, 27.694845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609188, 34.580906, 27.659027>,  <35.635777, 34.343353, 27.637537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609188, 34.580906, 27.659027>,  <35.564877, 34.976826, 27.694845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609188, 34.580906, 27.659027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335113, 0.122023, -0.934243,
		0.935643, 0.073486, 0.345214,
		0.110778, -0.989803, -0.089544,
		35.642422, 34.283966, 27.632164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213684, 34.884624, 27.400906>,  <35.564877, 34.976826, 27.694845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213684, 34.884624, 27.400906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015858, 34.546017, 27.322105>,  <35.897160, 34.342854, 27.274826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015858, 34.546017, 27.322105>,  <36.213684, 34.884624, 27.400906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015858, 34.546017, 27.322105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288811, 0.053716, -0.955878,
		0.819751, -0.529642, 0.217917,
		-0.494568, -0.846519, -0.197000,
		35.867489, 34.292061, 27.263006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680389, 34.438259, 26.993221>,  <36.213684, 34.884624, 27.400906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680389, 34.438259, 26.993221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309353, 34.306198, 26.923286>,  <36.086731, 34.226959, 26.881327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309353, 34.306198, 26.923286>,  <36.680389, 34.438259, 26.993221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309353, 34.306198, 26.923286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212206, -0.080472, -0.973906,
		0.307472, -0.940490, 0.144706,
		-0.927594, -0.330156, -0.174835,
		36.031075, 34.207153, 26.870836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725212, 33.784435, 26.627949>,  <36.680389, 34.438259, 26.993221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725212, 33.784435, 26.627949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381313, 33.962742, 26.528244>,  <36.174976, 34.069725, 26.468422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381313, 33.962742, 26.528244>,  <36.725212, 33.784435, 26.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381313, 33.962742, 26.528244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282259, 0.007967, -0.959305,
		-0.425643, -0.895113, -0.132672,
		-0.859743, 0.445769, -0.249262,
		36.123390, 34.096474, 26.453465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650257, 33.617302, 25.931978>,  <36.725212, 33.784435, 26.627949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650257, 33.617302, 25.931978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371674, 33.900158, 25.980804>,  <36.204521, 34.069870, 26.010099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371674, 33.900158, 25.980804>,  <36.650257, 33.617302, 25.931978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371674, 33.900158, 25.980804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100647, 0.264683, -0.959069,
		-0.710500, -0.655670, -0.255512,
		-0.696462, 0.707135, 0.122066,
		36.162735, 34.112297, 26.017424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111126, 33.513977, 25.472013>,  <36.650257, 33.617302, 25.931978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111126, 33.513977, 25.472013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084202, 33.905655, 25.548595>,  <36.068047, 34.140659, 25.594545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084202, 33.905655, 25.548595>,  <36.111126, 33.513977, 25.472013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084202, 33.905655, 25.548595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189362, 0.175866, -0.966029,
		-0.979598, -0.101278, 0.173584,
		-0.067310, 0.979190, 0.191457,
		36.064011, 34.199413, 25.606033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650925, 33.811562, 25.006422>,  <36.111126, 33.513977, 25.472013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650925, 33.811562, 25.006422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812904, 34.153202, 25.136978>,  <35.910091, 34.358185, 25.215311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812904, 34.153202, 25.136978>,  <35.650925, 33.811562, 25.006422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812904, 34.153202, 25.136978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260091, 0.449822, -0.854408,
		-0.876567, 0.261100, 0.404298,
		0.404948, 0.854100, 0.326389,
		35.934387, 34.409431, 25.234896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205002, 34.362904, 24.793905>,  <35.650925, 33.811562, 25.006422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205002, 34.362904, 24.793905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567909, 34.517967, 24.859127>,  <35.785652, 34.611008, 24.898260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567909, 34.517967, 24.859127>,  <35.205002, 34.362904, 24.793905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567909, 34.517967, 24.859127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021305, 0.344846, -0.938418,
		-0.420017, 0.854868, 0.304608,
		0.907266, 0.387662, 0.163054,
		35.840088, 34.634266, 24.908043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221619, 35.041912, 24.532711>,  <35.205002, 34.362904, 24.793905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221619, 35.041912, 24.532711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606796, 34.934246, 24.539490>,  <35.837902, 34.869644, 24.543556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606796, 34.934246, 24.539490>,  <35.221619, 35.041912, 24.532711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606796, 34.934246, 24.539490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088190, 0.254873, -0.962945,
		0.254873, 0.928757, 0.269167,
		0.962945, -0.269167, 0.016946,
		35.895679, 34.853497, 24.544573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641972, 35.468266, 24.905823>,  <35.221619, 35.041912, 24.532711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641972, 35.468266, 24.905823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365902, 35.756092, 24.936527>,  <34.200260, 35.928787, 24.954950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365902, 35.756092, 24.936527>,  <34.641972, 35.468266, 24.905823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365902, 35.756092, 24.936527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347309, -0.422435, 0.837213,
		0.634856, 0.551158, 0.541463,
		-0.690170, 0.719564, 0.076763,
		34.158852, 35.971962, 24.959557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644913, 35.733677, 25.599653>,  <34.641972, 35.468266, 24.905823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644913, 35.733677, 25.599653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274590, 35.838547, 25.490738>,  <34.052395, 35.901466, 25.425388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274590, 35.838547, 25.490738>,  <34.644913, 35.733677, 25.599653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274590, 35.838547, 25.490738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339148, -0.258106, 0.904633,
		0.166890, 0.929864, 0.327872,
		-0.925811, 0.262171, -0.272287,
		33.996845, 35.917198, 25.409052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368546, 36.022831, 26.237986>,  <34.644913, 35.733677, 25.599653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368546, 36.022831, 26.237986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066044, 35.950737, 25.986401>,  <33.884544, 35.907478, 25.835449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066044, 35.950737, 25.986401>,  <34.368546, 36.022831, 26.237986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066044, 35.950737, 25.986401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575669, -0.273556, 0.770566,
		-0.310942, 0.944818, 0.103120,
		-0.756254, -0.180238, -0.628963,
		33.839169, 35.896664, 25.797712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696785, 36.266399, 26.630114>,  <34.368546, 36.022831, 26.237986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696785, 36.266399, 26.630114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569290, 36.023949, 26.338631>,  <33.492794, 35.878479, 26.163740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569290, 36.023949, 26.338631>,  <33.696785, 36.266399, 26.630114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569290, 36.023949, 26.338631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598244, -0.467678, 0.650678,
		-0.735194, 0.643341, -0.213546,
		-0.318736, -0.606128, -0.728709,
		33.473671, 35.842110, 26.120018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997608, 36.266567, 26.679888>,  <33.696785, 36.266399, 26.630114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997608, 36.266567, 26.679888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060638, 35.924129, 26.483002>,  <33.098457, 35.718666, 26.364870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060638, 35.924129, 26.483002>,  <32.997608, 36.266567, 26.679888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060638, 35.924129, 26.483002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580523, -0.483524, 0.655132,
		-0.798852, 0.182513, -0.573170,
		0.157571, -0.856092, -0.492217,
		33.107910, 35.667301, 26.335337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311104, 36.041298, 26.547598>,  <32.997608, 36.266567, 26.679888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311104, 36.041298, 26.547598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549759, 35.721664, 26.517990>,  <32.692951, 35.529884, 26.500225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549759, 35.721664, 26.517990>,  <32.311104, 36.041298, 26.547598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549759, 35.721664, 26.517990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554542, -0.477201, 0.681735,
		-0.580089, -0.365703, -0.727845,
		0.596641, -0.799088, -0.074021,
		32.728752, 35.481937, 26.495785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851492, 35.545151, 26.515903>,  <32.311104, 36.041298, 26.547598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851492, 35.545151, 26.515903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195049, 35.388149, 26.647503>,  <32.401184, 35.293949, 26.726461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195049, 35.388149, 26.647503>,  <31.851492, 35.545151, 26.515903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195049, 35.388149, 26.647503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481670, -0.400757, 0.779351,
		-0.174052, -0.827849, -0.533266,
		0.858895, -0.392506, 0.328998,
		32.452717, 35.270397, 26.746202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599133, 34.855236, 26.735550>,  <31.851492, 35.545151, 26.515903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599133, 34.855236, 26.735550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949514, 34.922958, 26.916233>,  <32.159744, 34.963593, 27.024643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949514, 34.922958, 26.916233>,  <31.599133, 34.855236, 26.735550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949514, 34.922958, 26.916233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387362, -0.311194, 0.867818,
		0.287496, -0.935143, -0.207009,
		0.875955, 0.169307, 0.451706,
		32.212299, 34.973751, 27.051744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762297, 34.229759, 27.177330>,  <31.599133, 34.855236, 26.735550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762297, 34.229759, 27.177330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996256, 34.521317, 27.319656>,  <32.136631, 34.696251, 27.405052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996256, 34.521317, 27.319656>,  <31.762297, 34.229759, 27.177330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996256, 34.521317, 27.319656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290656, -0.221196, 0.930909,
		0.757241, -0.647907, 0.082480,
		0.584898, 0.728896, 0.355817,
		32.171726, 34.739986, 27.426401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160557, 33.955620, 27.682320>,  <31.762297, 34.229759, 27.177330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160557, 33.955620, 27.682320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155075, 34.348564, 27.756912>,  <32.151787, 34.584332, 27.801668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155075, 34.348564, 27.756912>,  <32.160557, 33.955620, 27.682320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155075, 34.348564, 27.756912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257749, -0.183666, 0.948595,
		0.966115, -0.035062, 0.255721,
		-0.013708, 0.982363, 0.186480,
		32.150963, 34.643272, 27.812857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485836, 34.028400, 28.279991>,  <32.160557, 33.955620, 27.682320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485836, 34.028400, 28.279991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246819, 34.347511, 28.247753>,  <32.103409, 34.538979, 28.228411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246819, 34.347511, 28.247753>,  <32.485836, 34.028400, 28.279991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246819, 34.347511, 28.247753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265573, -0.102068, 0.958673,
		0.756579, 0.594253, 0.272858,
		-0.597545, 0.797775, -0.080595,
		32.067554, 34.586845, 28.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514793, 34.336975, 28.830761>,  <32.485836, 34.028400, 28.279991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514793, 34.336975, 28.830761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174797, 34.501099, 28.698605>,  <31.970798, 34.599575, 28.619310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174797, 34.501099, 28.698605>,  <32.514793, 34.336975, 28.830761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174797, 34.501099, 28.698605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378640, -0.039812, 0.924687,
		0.366256, 0.911076, 0.189200,
		-0.849993, 0.410311, -0.330389,
		31.919800, 34.624191, 28.599487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388367, 34.820511, 29.351990>,  <32.514793, 34.336975, 28.830761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388367, 34.820511, 29.351990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052788, 34.753166, 29.144981>,  <31.851440, 34.712761, 29.020777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052788, 34.753166, 29.144981>,  <32.388367, 34.820511, 29.351990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052788, 34.753166, 29.144981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476444, -0.232352, 0.847946,
		-0.263009, 0.957949, 0.114715,
		-0.838944, -0.168363, -0.517520,
		31.801105, 34.702656, 28.989725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876621, 35.281513, 29.525011>,  <32.388367, 34.820511, 29.351990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876621, 35.281513, 29.525011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694540, 34.949982, 29.394882>,  <31.585291, 34.751064, 29.316805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694540, 34.949982, 29.394882>,  <31.876621, 35.281513, 29.525011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694540, 34.949982, 29.394882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498057, -0.065842, 0.864641,
		-0.738058, 0.555617, -0.382831,
		-0.455203, -0.828827, -0.325324,
		31.557980, 34.701332, 29.297285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295914, 35.411423, 29.797462>,  <31.876621, 35.281513, 29.525011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295914, 35.411423, 29.797462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343479, 35.022198, 29.718456>,  <31.372019, 34.788662, 29.671053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343479, 35.022198, 29.718456>,  <31.295914, 35.411423, 29.797462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343479, 35.022198, 29.718456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344364, -0.226999, 0.910980,
		-0.931275, -0.040308, -0.362080,
		0.118912, -0.973061, -0.197518,
		31.379152, 34.730278, 29.659201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705271, 35.050022, 30.010002>,  <31.295914, 35.411423, 29.797462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705271, 35.050022, 30.010002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983889, 34.763077, 30.004192>,  <31.151060, 34.590908, 30.000708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983889, 34.763077, 30.004192>,  <30.705271, 35.050022, 30.010002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983889, 34.763077, 30.004192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352563, -0.359818, 0.863846,
		-0.624920, -0.596587, -0.503547,
		0.696544, -0.717367, -0.014523,
		31.192852, 34.547867, 29.999836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336466, 34.508278, 30.309156>,  <30.705271, 35.050022, 30.010002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336466, 34.508278, 30.309156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715420, 34.382793, 30.334610>,  <30.942793, 34.307503, 30.349882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715420, 34.382793, 30.334610>,  <30.336466, 34.508278, 30.309156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715420, 34.382793, 30.334610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171698, -0.330245, 0.928148,
		-0.270152, -0.890239, -0.366732,
		0.947385, -0.313708, 0.063636,
		30.999636, 34.288681, 30.353701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336279, 33.909313, 30.589760>,  <30.336466, 34.508278, 30.309156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336279, 33.909313, 30.589760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723316, 33.983845, 30.657932>,  <30.955538, 34.028564, 30.698835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723316, 33.983845, 30.657932>,  <30.336279, 33.909313, 30.589760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723316, 33.983845, 30.657932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169022, -0.023537, 0.985331,
		0.187607, -0.982205, 0.008719,
		0.967592, 0.186329, 0.170430,
		31.013594, 34.039742, 30.709061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769211, 33.248783, 30.941828>,  <30.336279, 33.909313, 30.589760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769211, 33.248783, 30.941828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935059, 33.604252, 31.020168>,  <31.034567, 33.817532, 31.067173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935059, 33.604252, 31.020168>,  <30.769211, 33.248783, 30.941828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935059, 33.604252, 31.020168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059431, -0.188321, 0.980308,
		0.908052, -0.418094, -0.025267,
		0.414620, 0.888669, 0.195853,
		31.059444, 33.870853, 31.078924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235703, 33.022663, 31.472065>,  <30.769211, 33.248783, 30.941828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235703, 33.022663, 31.472065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201038, 33.421150, 31.469524>,  <31.180241, 33.660244, 31.468000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201038, 33.421150, 31.469524>,  <31.235703, 33.022663, 31.472065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201038, 33.421150, 31.469524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070858, 0.012521, 0.997408,
		0.993715, 0.085986, -0.071675,
		-0.086660, 0.996218, -0.006349,
		31.175041, 33.720016, 31.467619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955235, 33.287205, 31.789606>,  <31.235703, 33.022663, 31.472065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955235, 33.287205, 31.789606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672384, 33.566380, 31.834969>,  <31.502674, 33.733883, 31.862186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672384, 33.566380, 31.834969>,  <31.955235, 33.287205, 31.789606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672384, 33.566380, 31.834969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013605, -0.173786, 0.984689,
		0.706958, 0.694755, 0.132384,
		-0.707125, 0.697935, 0.113408,
		31.460247, 33.775761, 31.868992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065998, 33.622543, 32.432327>,  <31.955235, 33.287205, 31.789606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065998, 33.622543, 32.432327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684805, 33.709373, 32.347759>,  <31.456089, 33.761471, 32.297016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684805, 33.709373, 32.347759>,  <32.065998, 33.622543, 32.432327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684805, 33.709373, 32.347759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246531, -0.149728, 0.957499,
		0.176192, 0.964604, 0.196204,
		-0.952984, 0.217074, -0.211424,
		31.398911, 33.774494, 32.284332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898924, 34.158329, 32.966530>,  <32.065998, 33.622543, 32.432327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898924, 34.158329, 32.966530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590857, 33.946400, 32.824471>,  <31.406015, 33.819241, 32.739235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590857, 33.946400, 32.824471>,  <31.898924, 34.158329, 32.966530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590857, 33.946400, 32.824471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362113, -0.095177, 0.927263,
		-0.525086, 0.842751, -0.118553,
		-0.770168, -0.529823, -0.355147,
		31.359806, 33.787453, 32.717926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346174, 34.450439, 33.387589>,  <31.898924, 34.158329, 32.966530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346174, 34.450439, 33.387589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210508, 34.093517, 33.268425>,  <31.129108, 33.879364, 33.196926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210508, 34.093517, 33.268425>,  <31.346174, 34.450439, 33.387589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210508, 34.093517, 33.268425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305337, -0.195119, 0.932039,
		-0.889795, 0.407080, -0.206277,
		-0.339166, -0.892309, -0.297913,
		31.108759, 33.825825, 33.179050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784119, 34.344086, 33.709373>,  <31.346174, 34.450439, 33.387589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784119, 34.344086, 33.709373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848507, 33.967430, 33.591114>,  <30.887140, 33.741436, 33.520157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848507, 33.967430, 33.591114>,  <30.784119, 34.344086, 33.709373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848507, 33.967430, 33.591114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400364, -0.336104, 0.852492,
		-0.902107, -0.018858, -0.431100,
		0.160971, -0.941636, -0.295652,
		30.896799, 33.684940, 33.502419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170990, 33.910873, 33.791927>,  <30.784119, 34.344086, 33.709373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170990, 33.910873, 33.791927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463980, 33.638672, 33.783932>,  <30.639774, 33.475353, 33.779137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463980, 33.638672, 33.783932>,  <30.170990, 33.910873, 33.791927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463980, 33.638672, 33.783932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402062, -0.456087, 0.793934,
		-0.549389, -0.573501, -0.607675,
		0.732474, -0.680501, -0.019986,
		30.683722, 33.434521, 33.777935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866770, 33.295029, 33.966549>,  <30.170990, 33.910873, 33.791927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866770, 33.295029, 33.966549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242229, 33.185852, 34.050873>,  <30.467506, 33.120346, 34.101467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242229, 33.185852, 34.050873>,  <29.866770, 33.295029, 33.966549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242229, 33.185852, 34.050873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337880, -0.605396, 0.720648,
		-0.069070, -0.747664, -0.660476,
		0.938651, -0.272937, 0.210806,
		30.523825, 33.103970, 34.114113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756378, 32.574322, 33.956676>,  <29.866770, 33.295029, 33.966549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756378, 32.574322, 33.956676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110670, 32.600899, 34.140446>,  <30.323246, 32.616844, 34.250706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110670, 32.600899, 34.140446>,  <29.756378, 32.574322, 33.956676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110670, 32.600899, 34.140446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318374, -0.633298, 0.705388,
		0.337816, -0.771051, -0.539778,
		0.885731, 0.066440, 0.459420,
		30.376389, 32.620831, 34.278271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028677, 31.856941, 34.186890>,  <29.756378, 32.574322, 33.956676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028677, 31.856941, 34.186890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206188, 32.117954, 34.432575>,  <30.312695, 32.274563, 34.579987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206188, 32.117954, 34.432575>,  <30.028677, 31.856941, 34.186890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206188, 32.117954, 34.432575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181367, -0.605821, 0.774652,
		0.877592, -0.455172, -0.150502,
		0.443777, 0.652533, 0.614217,
		30.339321, 32.313713, 34.616840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439466, 31.438431, 34.524853>,  <30.028677, 31.856941, 34.186890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439466, 31.438431, 34.524853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419445, 31.770790, 34.746521>,  <30.407433, 31.970205, 34.879520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419445, 31.770790, 34.746521>,  <30.439466, 31.438431, 34.524853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419445, 31.770790, 34.746521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107980, -0.556113, 0.824063,
		0.992892, -0.018594, 0.117554,
		-0.050051, 0.830899, 0.554168,
		30.404430, 32.020061, 34.912773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740583, 31.183235, 35.161098>,  <30.439466, 31.438431, 34.524853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740583, 31.183235, 35.161098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559450, 31.527954, 35.252529>,  <30.450769, 31.734785, 35.307388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559450, 31.527954, 35.252529>,  <30.740583, 31.183235, 35.161098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559450, 31.527954, 35.252529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195448, -0.346082, 0.917620,
		0.869908, 0.370856, 0.325154,
		-0.452835, 0.861796, 0.228577,
		30.423599, 31.786493, 35.321102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036104, 31.369677, 35.918690>,  <30.740583, 31.183235, 35.161098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036104, 31.369677, 35.918690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687704, 31.551704, 35.844646>,  <30.478664, 31.660921, 35.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687704, 31.551704, 35.844646>,  <31.036104, 31.369677, 35.918690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687704, 31.551704, 35.844646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339451, -0.285085, 0.896381,
		0.355146, 0.843585, 0.402784,
		-0.871002, 0.455072, -0.185109,
		30.426403, 31.688227, 35.789112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887060, 31.813356, 36.478470>,  <31.036104, 31.369677, 35.918690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887060, 31.813356, 36.478470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543062, 31.724541, 36.294685>,  <30.336662, 31.671251, 36.184414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543062, 31.724541, 36.294685>,  <30.887060, 31.813356, 36.478470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543062, 31.724541, 36.294685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363390, -0.365656, 0.856880,
		-0.358266, 0.903878, 0.233776,
		-0.859996, -0.222039, -0.459462,
		30.285063, 31.657928, 36.156845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489841, 31.879173, 37.014141>,  <30.887060, 31.813356, 36.478470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489841, 31.879173, 37.014141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247240, 31.688370, 36.759705>,  <30.101679, 31.573889, 36.607040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247240, 31.688370, 36.759705>,  <30.489841, 31.879173, 37.014141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247240, 31.688370, 36.759705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361225, -0.547387, 0.754907,
		-0.708286, 0.687627, 0.159685,
		-0.606504, -0.477008, -0.636095,
		30.065289, 31.545267, 36.568874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840057, 31.934801, 37.324272>,  <30.489841, 31.879173, 37.014141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840057, 31.934801, 37.324272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817947, 31.618080, 37.080963>,  <29.804682, 31.428047, 36.934978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817947, 31.618080, 37.080963>,  <29.840057, 31.934801, 37.324272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817947, 31.618080, 37.080963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267076, -0.575280, 0.773126,
		-0.962089, 0.205188, -0.179673,
		-0.055274, -0.791802, -0.608271,
		29.801365, 31.380539, 36.898483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191202, 31.745413, 37.346134>,  <29.840057, 31.934801, 37.324272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191202, 31.745413, 37.346134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346565, 31.419029, 37.174858>,  <29.439783, 31.223198, 37.072094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346565, 31.419029, 37.174858>,  <29.191202, 31.745413, 37.346134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346565, 31.419029, 37.174858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475645, -0.575511, 0.665243,
		-0.789240, -0.054720, -0.611642,
		0.388408, -0.815961, -0.428189,
		29.463087, 31.174240, 37.046402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642344, 31.395153, 37.267723>,  <29.191202, 31.745413, 37.346134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642344, 31.395153, 37.267723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933601, 31.121090, 37.260128>,  <29.108356, 30.956652, 37.255569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933601, 31.121090, 37.260128>,  <28.642344, 31.395153, 37.267723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933601, 31.121090, 37.260128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499820, -0.549726, 0.669314,
		-0.469023, -0.477869, -0.742737,
		0.728147, -0.685158, -0.018986,
		29.152044, 30.915543, 37.254433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287323, 30.739367, 37.044003>,  <28.642344, 31.395153, 37.267723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287323, 30.739367, 37.044003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628626, 30.646297, 37.230686>,  <28.833406, 30.590456, 37.342697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628626, 30.646297, 37.230686>,  <28.287323, 30.739367, 37.044003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628626, 30.646297, 37.230686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493262, -0.650550, 0.577475,
		0.169259, -0.722944, -0.669853,
		0.853255, -0.232670, 0.466712,
		28.884602, 30.576496, 37.370701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255037, 30.017967, 36.760647>,  <28.287323, 30.739367, 37.044003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255037, 30.017967, 36.760647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891289, 30.084656, 36.913090>,  <27.673038, 30.124670, 37.004555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891289, 30.084656, 36.913090>,  <28.255037, 30.017967, 36.760647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891289, 30.084656, 36.913090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316763, 0.316314, -0.894207,
		-0.269636, -0.933889, -0.234835,
		-0.909372, 0.166723, 0.381111,
		27.618477, 30.134672, 37.027424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805975, 29.683039, 36.317642>,  <28.255037, 30.017967, 36.760647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805975, 29.683039, 36.317642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592958, 29.959324, 36.513325>,  <27.465149, 30.125095, 36.630733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592958, 29.959324, 36.513325>,  <27.805975, 29.683039, 36.317642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592958, 29.959324, 36.513325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381010, 0.320479, -0.867251,
		-0.755800, -0.648236, 0.092501,
		-0.532539, 0.690712, 0.489202,
		27.433197, 30.166538, 36.660084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174723, 29.610571, 36.019753>,  <27.805975, 29.683039, 36.317642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174723, 29.610571, 36.019753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191868, 29.976921, 36.179417>,  <27.202154, 30.196732, 36.275215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191868, 29.976921, 36.179417>,  <27.174723, 29.610571, 36.019753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191868, 29.976921, 36.179417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287417, 0.393945, -0.873040,
		-0.956846, -0.077306, 0.280124,
		0.042862, 0.915877, 0.399164,
		27.204727, 30.251684, 36.299168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532633, 29.935932, 35.670334>,  <27.174723, 29.610571, 36.019753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532633, 29.935932, 35.670334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795076, 30.205196, 35.806789>,  <26.952543, 30.366755, 35.888664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795076, 30.205196, 35.806789>,  <26.532633, 29.935932, 35.670334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795076, 30.205196, 35.806789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012420, 0.461613, -0.886995,
		-0.754565, 0.577727, 0.311228,
		0.656108, 0.673160, 0.341141,
		26.991909, 30.407145, 35.909130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351542, 30.544857, 35.295120>,  <26.532633, 29.935932, 35.670334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351542, 30.544857, 35.295120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716545, 30.622906, 35.438927>,  <26.935547, 30.669735, 35.525211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716545, 30.622906, 35.438927>,  <26.351542, 30.544857, 35.295120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716545, 30.622906, 35.438927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220322, 0.506069, -0.833878,
		-0.344648, 0.840132, 0.418803,
		0.912511, 0.195122, 0.359515,
		26.990299, 30.681442, 35.546780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425386, 31.293020, 35.245953>,  <26.351542, 30.544857, 35.295120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425386, 31.293020, 35.245953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792397, 31.133957, 35.244198>,  <27.012602, 31.038519, 35.243145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792397, 31.133957, 35.244198>,  <26.425386, 31.293020, 35.245953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792397, 31.133957, 35.244198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290476, 0.677682, -0.675552,
		0.271614, 0.618560, 0.737299,
		0.917524, -0.397657, -0.004391,
		27.067654, 31.014660, 35.242882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960314, 31.948378, 35.204185>,  <26.425386, 31.293020, 35.245953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960314, 31.948378, 35.204185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188786, 31.630035, 35.123821>,  <27.325869, 31.439030, 35.075603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188786, 31.630035, 35.123821>,  <26.960314, 31.948378, 35.204185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188786, 31.630035, 35.123821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509364, 0.535603, -0.673555,
		0.643661, 0.282386, 0.711308,
		0.571182, -0.795856, -0.200910,
		27.360140, 31.391279, 35.063549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617420, 32.117580, 35.220993>,  <26.960314, 31.948378, 35.204185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617420, 32.117580, 35.220993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615179, 31.790516, 34.990726>,  <27.613834, 31.594276, 34.852566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615179, 31.790516, 34.990726>,  <27.617420, 32.117580, 35.220993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615179, 31.790516, 34.990726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632096, 0.443187, -0.635641,
		0.774870, -0.367439, 0.514359,
		-0.005602, -0.817664, -0.575669,
		27.613499, 31.545218, 34.818027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216074, 32.222408, 34.818901>,  <27.617420, 32.117580, 35.220993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216074, 32.222408, 34.818901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030146, 31.933392, 34.614204>,  <27.918589, 31.759983, 34.491386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030146, 31.933392, 34.614204>,  <28.216074, 32.222408, 34.818901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030146, 31.933392, 34.614204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387376, 0.353763, -0.851347,
		0.796167, -0.593959, 0.115458,
		-0.464821, -0.722540, -0.511740,
		27.890699, 31.716629, 34.460682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706976, 31.916166, 34.295322>,  <28.216074, 32.222408, 34.818901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706976, 31.916166, 34.295322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352541, 31.783928, 34.165367>,  <28.139879, 31.704584, 34.087395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352541, 31.783928, 34.165367>,  <28.706976, 31.916166, 34.295322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352541, 31.783928, 34.165367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307648, 0.104793, -0.945712,
		0.346697, -0.937936, 0.008852,
		-0.886089, -0.330599, -0.324885,
		28.086714, 31.684748, 34.067902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792675, 31.492224, 33.659931>,  <28.706976, 31.916166, 34.295322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792675, 31.492224, 33.659931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403481, 31.582409, 33.640083>,  <28.169964, 31.636520, 33.628174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403481, 31.582409, 33.640083>,  <28.792675, 31.492224, 33.659931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403481, 31.582409, 33.640083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105389, 0.242559, -0.964395,
		-0.205400, -0.943574, -0.259768,
		-0.972987, 0.225464, -0.049620,
		28.111584, 31.650047, 33.625198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497622, 31.063784, 33.134895>,  <28.792675, 31.492224, 33.659931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497622, 31.063784, 33.134895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270567, 31.389587, 33.182827>,  <28.134335, 31.585070, 33.211586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270567, 31.389587, 33.182827>,  <28.497622, 31.063784, 33.134895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270567, 31.389587, 33.182827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014685, 0.155551, -0.987719,
		-0.823147, -0.558907, -0.100258,
		-0.567638, 0.814510, 0.119834,
		28.100275, 31.633940, 33.218777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144535, 31.017941, 32.589684>,  <28.497622, 31.063784, 33.134895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144535, 31.017941, 32.589684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135077, 31.389805, 32.736748>,  <28.129402, 31.612923, 32.824986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135077, 31.389805, 32.736748>,  <28.144535, 31.017941, 32.589684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135077, 31.389805, 32.736748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168412, 0.366210, -0.915165,
		-0.985433, 0.040277, -0.165225,
		-0.023647, 0.929660, 0.367659,
		28.127983, 31.668703, 32.847046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735874, 31.311985, 32.140621>,  <28.144535, 31.017941, 32.589684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735874, 31.311985, 32.140621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907307, 31.635460, 32.301788>,  <28.010166, 31.829546, 32.398487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907307, 31.635460, 32.301788>,  <27.735874, 31.311985, 32.140621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907307, 31.635460, 32.301788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080402, 0.478316, -0.874500,
		-0.899919, 0.342399, 0.270017,
		0.428581, 0.808688, 0.402916,
		28.035881, 31.878067, 32.422665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395514, 31.834543, 31.868347>,  <27.735874, 31.311985, 32.140621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395514, 31.834543, 31.868347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744617, 31.986141, 31.991409>,  <27.954081, 32.077099, 32.065247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744617, 31.986141, 31.991409>,  <27.395514, 31.834543, 31.868347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744617, 31.986141, 31.991409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073867, 0.520461, -0.850685,
		-0.482527, 0.765170, 0.426242,
		0.872761, 0.378993, 0.307657,
		28.006445, 32.099838, 32.083706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409237, 32.565834, 31.665844>,  <27.395514, 31.834543, 31.868347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409237, 32.565834, 31.665844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793358, 32.493729, 31.751003>,  <28.023830, 32.450466, 31.802099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793358, 32.493729, 31.751003>,  <27.409237, 32.565834, 31.665844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793358, 32.493729, 31.751003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278952, 0.613133, -0.739090,
		0.002700, 0.769137, 0.639079,
		0.960301, -0.180268, 0.212897,
		28.081448, 32.439648, 31.814873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783228, 33.156693, 31.786312>,  <27.409237, 32.565834, 31.665844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783228, 33.156693, 31.786312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066984, 32.895924, 31.679157>,  <28.237238, 32.739464, 31.614864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066984, 32.895924, 31.679157>,  <27.783228, 33.156693, 31.786312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066984, 32.895924, 31.679157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357415, 0.660323, -0.660475,
		0.607469, 0.372789, 0.701434,
		0.709391, -0.651922, -0.267885,
		28.279802, 32.700348, 31.598791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343563, 33.623222, 31.656385>,  <27.783228, 33.156693, 31.786312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343563, 33.623222, 31.656385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446383, 33.285675, 31.467995>,  <28.508074, 33.083149, 31.354959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446383, 33.285675, 31.467995>,  <28.343563, 33.623222, 31.656385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446383, 33.285675, 31.467995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389194, 0.536479, -0.748811,
		0.884564, 0.009180, 0.466329,
		0.257050, -0.843864, -0.470977,
		28.523497, 33.032516, 31.326702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041567, 33.727356, 31.437445>,  <28.343563, 33.623222, 31.656385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041567, 33.727356, 31.437445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928511, 33.420620, 31.206944>,  <28.860678, 33.236576, 31.068644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928511, 33.420620, 31.206944>,  <29.041567, 33.727356, 31.437445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928511, 33.420620, 31.206944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281012, 0.508197, -0.814106,
		0.917141, -0.392032, 0.071856,
		-0.282639, -0.766842, -0.576254,
		28.843719, 33.190567, 31.034067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578224, 33.533394, 31.109762>,  <29.041567, 33.727356, 31.437445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578224, 33.533394, 31.109762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292347, 33.377422, 30.877499>,  <29.120821, 33.283840, 30.738140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292347, 33.377422, 30.877499>,  <29.578224, 33.533394, 31.109762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292347, 33.377422, 30.877499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376605, 0.485031, -0.789249,
		0.589391, -0.782751, -0.199798,
		-0.714693, -0.389931, -0.580661,
		29.077938, 33.260445, 30.703300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846365, 33.333599, 30.372610>,  <29.578224, 33.533394, 31.109762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846365, 33.333599, 30.372610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453186, 33.387936, 30.323032>,  <29.217279, 33.420540, 30.293285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453186, 33.387936, 30.323032>,  <29.846365, 33.333599, 30.372610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453186, 33.387936, 30.323032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178022, 0.534041, -0.826504,
		-0.046085, -0.834474, -0.549117,
		-0.982947, 0.135845, -0.123943,
		29.158302, 33.428688, 30.285849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685553, 33.079666, 29.568949>,  <29.846365, 33.333599, 30.372610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685553, 33.079666, 29.568949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417057, 33.335709, 29.718460>,  <29.255960, 33.489334, 29.808167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417057, 33.335709, 29.718460>,  <29.685553, 33.079666, 29.568949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417057, 33.335709, 29.718460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066322, 0.554100, -0.829804,
		-0.738269, -0.532206, -0.414386,
		-0.671238, 0.640102, 0.373777,
		29.215685, 33.527740, 29.830593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266645, 33.281506, 29.024210>,  <29.685553, 33.079666, 29.568949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266645, 33.281506, 29.024210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150494, 33.575554, 29.269249>,  <29.080803, 33.751984, 29.416273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150494, 33.575554, 29.269249>,  <29.266645, 33.281506, 29.024210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150494, 33.575554, 29.269249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139753, 0.600739, -0.787135,
		-0.946652, -0.314178, -0.071705,
		-0.290377, 0.735122, 0.612598,
		29.063381, 33.796089, 29.453028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751696, 33.606663, 28.705944>,  <29.266645, 33.281506, 29.024210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751696, 33.606663, 28.705944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837482, 33.899315, 28.964779>,  <28.888954, 34.074905, 29.120079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837482, 33.899315, 28.964779>,  <28.751696, 33.606663, 28.705944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837482, 33.899315, 28.964779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143708, 0.678929, -0.720002,
		-0.966101, 0.061425, 0.250749,
		0.214467, 0.731630, 0.647087,
		28.901823, 34.118805, 29.158905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162886, 34.141537, 28.749666>,  <28.751696, 33.606663, 28.705944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162886, 34.141537, 28.749666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523119, 34.286770, 28.845264>,  <28.739260, 34.373909, 28.902624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523119, 34.286770, 28.845264>,  <28.162886, 34.141537, 28.749666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523119, 34.286770, 28.845264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044928, 0.624625, -0.779631,
		-0.432353, 0.691386, 0.578840,
		0.900584, 0.363082, 0.238996,
		28.793295, 34.395695, 28.916964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086874, 34.788216, 28.578037>,  <28.162886, 34.141537, 28.749666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086874, 34.788216, 28.578037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485584, 34.771683, 28.605553>,  <28.724810, 34.761761, 28.622061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485584, 34.771683, 28.605553>,  <28.086874, 34.788216, 28.578037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485584, 34.771683, 28.605553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076140, 0.757966, -0.647836,
		-0.025359, 0.650984, 0.758668,
		0.996775, -0.041336, 0.068787,
		28.784616, 34.759281, 28.626188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487299, 35.311615, 28.975252>,  <28.086874, 34.788216, 28.578037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487299, 35.311615, 28.975252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717319, 35.186951, 28.672680>,  <28.855331, 35.112152, 28.491137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717319, 35.186951, 28.672680>,  <28.487299, 35.311615, 28.975252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717319, 35.186951, 28.672680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102430, 0.889893, -0.444521,
		0.811680, 0.333103, 0.479810,
		0.575050, -0.311662, -0.756428,
		28.889835, 35.093452, 28.445751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485933, 35.883915, 28.614418>,  <28.487299, 35.311615, 28.975252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485933, 35.883915, 28.614418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745552, 35.670517, 28.397484>,  <28.901323, 35.542480, 28.267324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745552, 35.670517, 28.397484>,  <28.485933, 35.883915, 28.614418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745552, 35.670517, 28.397484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005311, 0.716055, -0.698024,
		0.760731, 0.450169, 0.467585,
		0.649045, -0.533492, -0.542334,
		28.940266, 35.510471, 28.234783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999262, 36.371700, 28.458147>,  <28.485933, 35.883915, 28.614418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999262, 36.371700, 28.458147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032486, 36.050301, 28.222355>,  <29.052420, 35.857460, 28.080879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032486, 36.050301, 28.222355>,  <28.999262, 36.371700, 28.458147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032486, 36.050301, 28.222355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151058, 0.574540, -0.804416,
		0.985029, 0.155859, -0.073655,
		0.083058, -0.803500, -0.589482,
		29.057404, 35.809250, 28.045509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671644, 36.463989, 28.106731>,  <28.999262, 36.371700, 28.458147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671644, 36.463989, 28.106731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485929, 36.217613, 27.852158>,  <29.374500, 36.069786, 27.699413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485929, 36.217613, 27.852158>,  <29.671644, 36.463989, 28.106731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485929, 36.217613, 27.852158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112184, 0.753690, -0.647585,
		0.878550, -0.229269, -0.419029,
		-0.464289, -0.615944, -0.636434,
		29.346643, 36.032829, 27.661226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906519, 36.716255, 27.426254>,  <29.671644, 36.463989, 28.106731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906519, 36.716255, 27.426254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575270, 36.506145, 27.347977>,  <29.376520, 36.380077, 27.301010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575270, 36.506145, 27.347977>,  <29.906519, 36.716255, 27.426254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575270, 36.506145, 27.347977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182351, 0.582571, -0.792060,
		0.530054, -0.620240, -0.578226,
		-0.828125, -0.525274, -0.195692,
		29.326832, 36.348564, 27.289268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916977, 36.750141, 26.797003>,  <29.906519, 36.716255, 27.426254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916977, 36.750141, 26.797003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540819, 36.630859, 26.862404>,  <29.315125, 36.559292, 26.901644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540819, 36.630859, 26.862404>,  <29.916977, 36.750141, 26.797003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540819, 36.630859, 26.862404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311029, 0.559693, -0.768118,
		0.137544, -0.773188, -0.619082,
		-0.940395, -0.298203, 0.163501,
		29.258701, 36.541397, 26.911455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655407, 36.799732, 26.100864>,  <29.916977, 36.750141, 26.797003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655407, 36.799732, 26.100864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340343, 36.803078, 26.347286>,  <29.151306, 36.805084, 26.495140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340343, 36.803078, 26.347286>,  <29.655407, 36.799732, 26.100864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340343, 36.803078, 26.347286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583776, 0.309545, -0.750592,
		-0.196975, -0.950848, -0.238932,
		-0.787659, 0.008365, 0.616055,
		29.104046, 36.805588, 26.532103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069050, 36.761551, 25.635279>,  <29.655407, 36.799732, 26.100864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069050, 36.761551, 25.635279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872477, 36.873455, 25.965183>,  <28.754534, 36.940598, 26.163126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872477, 36.873455, 25.965183>,  <29.069050, 36.761551, 25.635279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872477, 36.873455, 25.965183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760196, 0.324306, -0.562964,
		-0.424967, -0.903639, 0.053295,
		-0.491432, 0.279756, 0.824761,
		28.725046, 36.957382, 26.212612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378420, 36.414387, 25.556456>,  <29.069050, 36.761551, 25.635279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378420, 36.414387, 25.556456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397173, 36.740974, 25.786648>,  <28.408424, 36.936928, 25.924763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397173, 36.740974, 25.786648>,  <28.378420, 36.414387, 25.556456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397173, 36.740974, 25.786648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695233, 0.440346, -0.568107,
		-0.717254, -0.373459, 0.588282,
		0.046883, 0.816470, 0.575481,
		28.411238, 36.985916, 25.959291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729088, 36.632721, 25.612606>,  <28.378420, 36.414387, 25.556456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729088, 36.632721, 25.612606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900732, 36.975658, 25.726330>,  <28.003719, 37.181419, 25.794563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900732, 36.975658, 25.726330>,  <27.729088, 36.632721, 25.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900732, 36.975658, 25.726330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735056, 0.514382, -0.441705,
		-0.524935, -0.019444, 0.850920,
		0.429110, 0.857341, 0.284310,
		28.029465, 37.232861, 25.811623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229584, 36.966373, 25.932768>,  <27.729088, 36.632721, 25.612606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229584, 36.966373, 25.932768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507288, 37.236977, 25.834507>,  <27.673910, 37.399338, 25.775551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507288, 37.236977, 25.834507>,  <27.229584, 36.966373, 25.932768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507288, 37.236977, 25.834507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664758, 0.471909, -0.579137,
		-0.275862, 0.565372, 0.777339,
		0.694260, 0.676504, -0.245653,
		27.715567, 37.439926, 25.760811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878269, 37.556923, 25.915808>,  <27.229584, 36.966373, 25.932768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878269, 37.556923, 25.915808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193832, 37.658844, 25.692131>,  <27.383171, 37.719997, 25.557924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193832, 37.658844, 25.692131>,  <26.878269, 37.556923, 25.915808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193832, 37.658844, 25.692131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579960, 0.609560, -0.540447,
		0.203153, 0.750673, 0.628665,
		0.788908, 0.254807, -0.559194,
		27.430504, 37.735287, 25.524372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926802, 38.304104, 25.893770>,  <26.878269, 37.556923, 25.915808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926802, 38.304104, 25.893770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094263, 38.169514, 25.556366>,  <27.194740, 38.088760, 25.353924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094263, 38.169514, 25.556366>,  <26.926802, 38.304104, 25.893770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094263, 38.169514, 25.556366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581667, 0.613950, -0.533600,
		0.697418, 0.714037, 0.061317,
		0.418656, -0.336476, -0.843511,
		27.219860, 38.068569, 25.303312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997570, 38.858772, 25.507854>,  <26.926802, 38.304104, 25.893770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997570, 38.858772, 25.507854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014406, 38.570576, 25.230980>,  <27.024508, 38.397659, 25.064856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014406, 38.570576, 25.230980>,  <26.997570, 38.858772, 25.507854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014406, 38.570576, 25.230980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670931, 0.492969, -0.553925,
		0.740324, 0.487723, -0.462652,
		0.042089, -0.720491, -0.692185,
		27.027033, 38.354427, 25.023325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689468, 39.156239, 24.964653>,  <26.997570, 38.858772, 25.507854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689468, 39.156239, 24.964653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638355, 38.774319, 24.857300>,  <26.607687, 38.545166, 24.792887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638355, 38.774319, 24.857300>,  <26.689468, 39.156239, 24.964653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638355, 38.774319, 24.857300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847482, 0.245685, -0.470545,
		0.515214, 0.167323, -0.840570,
		-0.127782, -0.954799, -0.268384,
		26.600021, 38.487881, 24.776785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431177, 39.276180, 24.292957>,  <26.689468, 39.156239, 24.964653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431177, 39.276180, 24.292957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289890, 39.015812, 24.561745>,  <26.205118, 38.859592, 24.723017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289890, 39.015812, 24.561745>,  <26.431177, 39.276180, 24.292957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289890, 39.015812, 24.561745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912161, 0.399188, -0.092791,
		-0.207842, -0.645718, -0.734744,
		-0.353218, -0.650920, 0.671967,
		26.183926, 38.820538, 24.763334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941219, 38.947086, 24.047846>,  <26.431177, 39.276180, 24.292957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941219, 38.947086, 24.047846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871548, 38.911930, 24.440159>,  <25.829744, 38.890835, 24.675547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871548, 38.911930, 24.440159>,  <25.941219, 38.947086, 24.047846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871548, 38.911930, 24.440159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883277, 0.454235, -0.116155,
		-0.435298, -0.886535, -0.156751,
		-0.174177, -0.087892, 0.980784,
		25.819294, 38.885563, 24.734394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257669, 38.508060, 24.114605>,  <25.941219, 38.947086, 24.047846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257669, 38.508060, 24.114605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337683, 38.788387, 24.388493>,  <25.385691, 38.956585, 24.552824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337683, 38.788387, 24.388493>,  <25.257669, 38.508060, 24.114605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337683, 38.788387, 24.388493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901479, 0.405411, -0.151586,
		-0.383826, -0.586936, 0.712870,
		0.200034, 0.700819, 0.684718,
		25.397694, 38.998634, 24.593908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692921, 38.559814, 24.558462>,  <25.257669, 38.508060, 24.114605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692921, 38.559814, 24.558462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880098, 38.913082, 24.545593>,  <24.992405, 39.125042, 24.537872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880098, 38.913082, 24.545593>,  <24.692921, 38.559814, 24.558462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880098, 38.913082, 24.545593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881039, 0.463340, -0.095324,
		-0.069282, 0.072949, 0.994926,
		0.467943, 0.883173, -0.032170,
		25.020481, 39.178036, 24.535942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398252, 38.994194, 25.024168>,  <24.692921, 38.559814, 24.558462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398252, 38.994194, 25.024168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574104, 39.182030, 24.717911>,  <24.679615, 39.294731, 24.534157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574104, 39.182030, 24.717911>,  <24.398252, 38.994194, 25.024168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574104, 39.182030, 24.717911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875533, 0.414264, -0.248652,
		0.200415, 0.779662, 0.593263,
		0.439632, 0.469588, -0.765644,
		24.705994, 39.322906, 24.488218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149454, 39.634808, 25.027760>,  <24.398252, 38.994194, 25.024168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149454, 39.634808, 25.027760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262321, 39.536705, 24.656765>,  <24.330042, 39.477844, 24.434168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262321, 39.536705, 24.656765>,  <24.149454, 39.634808, 25.027760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262321, 39.536705, 24.656765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830283, 0.421920, -0.364163,
		0.480638, 0.872831, -0.084580,
		0.282167, -0.245256, -0.927487,
		24.346972, 39.463127, 24.378519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588366, 39.128811, 25.116064>,  <24.149454, 39.634808, 25.027760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588366, 39.128811, 25.116064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215006, 39.272144, 25.108402>,  <22.990990, 39.358143, 25.103806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215006, 39.272144, 25.108402>,  <23.588366, 39.128811, 25.116064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.215006, 39.272144, 25.108402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068772, 0.126241, -0.989613,
		-0.352193, -0.925019, -0.142477,
		-0.933398, 0.358333, -0.019155,
		22.934986, 39.379642, 25.102655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.454374, 39.029789, 24.508554>,  <23.588366, 39.128811, 25.116064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.454374, 39.029789, 24.508554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.131199, 39.256210, 24.574062>,  <22.937294, 39.392063, 24.613367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.131199, 39.256210, 24.574062>,  <23.454374, 39.029789, 24.508554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.131199, 39.256210, 24.574062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028617, 0.239903, -0.970375,
		-0.588574, -0.788688, -0.177627,
		-0.807937, 0.566055, 0.163770,
		22.888819, 39.426025, 24.623194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.049345, 38.926392, 23.915077>,  <23.454374, 39.029789, 24.508554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.049345, 38.926392, 23.915077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.924131, 39.267780, 24.081734>,  <22.849003, 39.472614, 24.181726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.924131, 39.267780, 24.081734>,  <23.049345, 38.926392, 23.915077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.924131, 39.267780, 24.081734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196822, 0.487460, -0.850673,
		-0.929124, -0.184285, -0.320574,
		-0.313033, 0.853477, 0.416639,
		22.830221, 39.523823, 24.206726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.624184, 39.190720, 23.508753>,  <23.049345, 38.926392, 23.915077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.624184, 39.190720, 23.508753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719841, 39.523426, 23.709141>,  <22.777235, 39.723049, 23.829374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719841, 39.523426, 23.709141>,  <22.624184, 39.190720, 23.508753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.719841, 39.523426, 23.709141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153353, 0.477111, -0.865360,
		-0.958798, 0.283771, -0.013456,
		0.239144, 0.831769, 0.500970,
		22.791584, 39.772957, 23.859432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.205828, 39.741577, 23.348213>,  <22.624184, 39.190720, 23.508753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.205828, 39.741577, 23.348213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573084, 39.875153, 23.433537>,  <22.793438, 39.955299, 23.484730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573084, 39.875153, 23.433537>,  <22.205828, 39.741577, 23.348213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.573084, 39.875153, 23.433537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044196, 0.448655, -0.892612,
		-0.393782, 0.828971, 0.397169,
		0.918141, 0.333941, 0.213309,
		22.848526, 39.975334, 23.497530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.308279, 40.538689, 23.124744>,  <22.205828, 39.741577, 23.348213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.308279, 40.538689, 23.124744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689077, 40.440205, 23.197502>,  <22.917557, 40.381115, 23.241158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689077, 40.440205, 23.197502>,  <22.308279, 40.538689, 23.124744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689077, 40.440205, 23.197502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290131, 0.536234, -0.792639,
		0.097617, 0.807362, 0.581925,
		0.951995, -0.246210, 0.181896,
		22.974676, 40.366341, 23.252071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.708883, 41.194984, 23.061146>,  <22.308279, 40.538689, 23.124744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.708883, 41.194984, 23.061146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.961988, 40.889927, 23.007496>,  <23.113852, 40.706894, 22.975306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.961988, 40.889927, 23.007496>,  <22.708883, 41.194984, 23.061146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.961988, 40.889927, 23.007496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338244, 0.428037, -0.838078,
		0.696562, 0.484939, 0.528805,
		0.632765, -0.762639, -0.134127,
		23.151817, 40.661137, 22.967258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364056, 41.521114, 22.849213>,  <22.708883, 41.194984, 23.061146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364056, 41.521114, 22.849213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.383911, 41.139069, 22.732388>,  <23.395824, 40.909843, 22.662292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.383911, 41.139069, 22.732388>,  <23.364056, 41.521114, 22.849213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.383911, 41.139069, 22.732388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400045, 0.286954, -0.870415,
		0.915151, -0.073631, 0.396331,
		0.049639, -0.955111, -0.292062,
		23.398804, 40.852535, 22.644770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.996254, 41.453484, 22.554667>,  <23.364056, 41.521114, 22.849213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.996254, 41.453484, 22.554667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.777174, 41.160793, 22.392384>,  <23.645725, 40.985180, 22.295013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.777174, 41.160793, 22.392384>,  <23.996254, 41.453484, 22.554667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.777174, 41.160793, 22.392384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304374, 0.277421, -0.911259,
		0.779345, -0.622585, 0.070775,
		-0.547702, -0.731728, -0.405705,
		23.612864, 40.941277, 22.270672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361052, 41.338207, 22.002766>,  <23.996254, 41.453484, 22.554667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361052, 41.338207, 22.002766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.057045, 41.096840, 21.906219>,  <23.874641, 40.952019, 21.848291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.057045, 41.096840, 21.906219>,  <24.361052, 41.338207, 22.002766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.057045, 41.096840, 21.906219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129422, 0.223425, -0.966091,
		0.636886, -0.765484, -0.091711,
		-0.760017, -0.603420, -0.241367,
		23.829041, 40.915813, 21.833809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608736, 41.124195, 21.430536>,  <24.361052, 41.338207, 22.002766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608736, 41.124195, 21.430536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211740, 41.076397, 21.420052>,  <23.973543, 41.047718, 21.413761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211740, 41.076397, 21.420052>,  <24.608736, 41.124195, 21.430536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211740, 41.076397, 21.420052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019506, 0.366116, -0.930365,
		0.120769, -0.922865, -0.365697,
		-0.992489, -0.119493, -0.026214,
		23.913994, 41.040550, 21.412188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.376753, 40.747623, 20.815411>,  <24.608736, 41.124195, 21.430536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.376753, 40.747623, 20.815411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.058508, 40.959095, 20.933731>,  <23.867561, 41.085976, 21.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.058508, 40.959095, 20.933731>,  <24.376753, 40.747623, 20.815411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.058508, 40.959095, 20.933731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064262, 0.559176, -0.826555,
		-0.602385, -0.638610, -0.478862,
		-0.795615, 0.528677, 0.295801,
		23.819824, 41.117699, 21.022470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.060684, 40.868576, 20.292513>,  <24.376753, 40.747623, 20.815411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.060684, 40.868576, 20.292513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.880938, 41.163525, 20.494247>,  <23.773090, 41.340492, 20.615288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.880938, 41.163525, 20.494247>,  <24.060684, 40.868576, 20.292513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.880938, 41.163525, 20.494247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146466, 0.496099, -0.855823,
		-0.881259, -0.458446, -0.114931,
		-0.449366, 0.737369, 0.504339,
		23.746128, 41.384735, 20.645550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.374992, 41.032406, 20.056587>,  <24.060684, 40.868576, 20.292513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.374992, 41.032406, 20.056587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.469570, 41.368591, 20.251610>,  <23.526318, 41.570305, 20.368624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.469570, 41.368591, 20.251610>,  <23.374992, 41.032406, 20.056587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.469570, 41.368591, 20.251610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257316, 0.538031, -0.802690,
		-0.936953, 0.064338, 0.343481,
		0.236447, 0.840466, 0.487555,
		23.540504, 41.620731, 20.397877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.899120, 41.471626, 19.870415>,  <23.374992, 41.032406, 20.056587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.899120, 41.471626, 19.870415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202362, 41.699047, 19.998180>,  <23.384308, 41.835499, 20.074841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202362, 41.699047, 19.998180>,  <22.899120, 41.471626, 19.870415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202362, 41.699047, 19.998180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154184, 0.632182, -0.759324,
		-0.633643, 0.526399, 0.566922,
		0.758105, 0.568551, 0.319415,
		23.429794, 41.869614, 20.094006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653278, 42.081268, 20.129673>,  <22.899120, 41.471626, 19.870415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653278, 42.081268, 20.129673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032837, 42.145241, 20.020847>,  <23.260572, 42.183624, 19.955553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032837, 42.145241, 20.020847>,  <22.653278, 42.081268, 20.129673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.032837, 42.145241, 20.020847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314351, 0.555291, -0.769958,
		0.027932, 0.816133, 0.577189,
		0.948896, 0.159934, -0.272063,
		23.317505, 42.193222, 19.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.698372, 42.725895, 19.956549>,  <22.653278, 42.081268, 20.129673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.698372, 42.725895, 19.956549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035383, 42.588024, 19.790974>,  <23.237591, 42.505302, 19.691629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035383, 42.588024, 19.790974>,  <22.698372, 42.725895, 19.956549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035383, 42.588024, 19.790974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096705, 0.659198, -0.745726,
		0.529897, 0.668326, 0.522062,
		0.842530, -0.344672, -0.413937,
		23.288143, 42.484623, 19.666792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.082859, 43.349590, 19.739054>,  <22.698372, 42.725895, 19.956549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.082859, 43.349590, 19.739054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257248, 43.045994, 19.545616>,  <23.361881, 42.863838, 19.429554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257248, 43.045994, 19.545616>,  <23.082859, 43.349590, 19.739054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.257248, 43.045994, 19.545616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123724, 0.582797, -0.803144,
		0.891415, 0.290315, 0.347988,
		0.435971, -0.758989, -0.483596,
		23.388039, 42.818298, 19.400537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712479, 43.562565, 19.501856>,  <23.082859, 43.349590, 19.739054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712479, 43.562565, 19.501856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.594801, 43.258518, 19.270103>,  <23.524195, 43.076092, 19.131052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.594801, 43.258518, 19.270103>,  <23.712479, 43.562565, 19.501856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.594801, 43.258518, 19.270103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011013, 0.608862, -0.793200,
		0.955683, -0.226973, -0.187494,
		-0.294193, -0.760112, -0.579379,
		23.506542, 43.030483, 19.096291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.163074, 43.692520, 18.893847>,  <23.712479, 43.562565, 19.501856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.163074, 43.692520, 18.893847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854094, 43.458050, 18.796097>,  <23.668705, 43.317368, 18.737448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854094, 43.458050, 18.796097>,  <24.163074, 43.692520, 18.893847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854094, 43.458050, 18.796097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077093, 0.468498, -0.880095,
		0.630379, -0.660990, -0.407081,
		-0.772450, -0.586176, -0.244373,
		23.622358, 43.282196, 18.722784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194023, 43.547382, 18.128674>,  <24.163074, 43.692520, 18.893847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194023, 43.547382, 18.128674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.813368, 43.493244, 18.238995>,  <23.584974, 43.460762, 18.305187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.813368, 43.493244, 18.238995>,  <24.194023, 43.547382, 18.128674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.813368, 43.493244, 18.238995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306961, 0.455801, -0.835476,
		-0.012636, -0.879732, -0.475302,
		-0.951639, -0.135342, 0.275803,
		23.527876, 43.452641, 18.321735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.956606, 43.037502, 17.770552>,  <24.194023, 43.547382, 18.128674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.956606, 43.037502, 17.770552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.669355, 43.305271, 17.846626>,  <23.497005, 43.465931, 17.892271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.669355, 43.305271, 17.846626>,  <23.956606, 43.037502, 17.770552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.669355, 43.305271, 17.846626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123701, 0.146146, -0.981498,
		-0.684832, -0.728365, -0.022143,
		-0.718125, 0.669422, 0.190185,
		23.453918, 43.506096, 17.903683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.486650, 42.913330, 17.255997>,  <23.956606, 43.037502, 17.770552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.486650, 42.913330, 17.255997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465879, 43.289478, 17.390465>,  <23.453417, 43.515167, 17.471146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465879, 43.289478, 17.390465>,  <23.486650, 42.913330, 17.255997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465879, 43.289478, 17.390465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063310, 0.332849, -0.940852,
		-0.996642, -0.070139, 0.042251,
		-0.051927, 0.940368, 0.336172,
		23.450302, 43.571590, 17.491316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.908293, 43.142338, 16.945576>,  <23.486650, 42.913330, 17.255997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.908293, 43.142338, 16.945576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.153149, 43.440037, 17.052448>,  <23.300062, 43.618656, 17.116571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.153149, 43.440037, 17.052448>,  <22.908293, 43.142338, 16.945576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.153149, 43.440037, 17.052448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035528, 0.363424, -0.930946,
		-0.789953, 0.560375, 0.248907,
		0.612137, 0.744247, 0.267179,
		23.336790, 43.663311, 17.132603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.460861, 43.642418, 16.790497>,  <22.908293, 43.142338, 16.945576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.460861, 43.642418, 16.790497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852898, 43.721798, 16.787914>,  <23.088120, 43.769424, 16.786364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852898, 43.721798, 16.787914>,  <22.460861, 43.642418, 16.790497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852898, 43.721798, 16.787914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080870, 0.369273, -0.925795,
		-0.181337, 0.907885, 0.377970,
		0.980090, 0.198448, -0.006457,
		23.146925, 43.781334, 16.785976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827784, 44.168816, 16.649143>,  <22.460861, 43.642418, 16.790497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827784, 44.168816, 16.649143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690187, 44.538113, 16.717598>,  <21.607630, 44.759693, 16.758671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690187, 44.538113, 16.717598>,  <21.827784, 44.168816, 16.649143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.690187, 44.538113, 16.717598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803729, -0.383747, 0.454706,
		0.485479, 0.018867, 0.874045,
		-0.343991, 0.923246, 0.171137,
		21.586990, 44.815086, 16.768940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.686171, 44.249535, 17.361540>,  <21.827784, 44.168816, 16.649143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.686171, 44.249535, 17.361540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.448793, 44.506947, 17.168175>,  <21.306366, 44.661396, 17.052155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.448793, 44.506947, 17.168175>,  <21.686171, 44.249535, 17.361540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.448793, 44.506947, 17.168175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793843, -0.368883, 0.483465,
		0.132802, 0.670664, 0.729776,
		-0.593444, 0.643533, -0.483414,
		21.270760, 44.700005, 17.023151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.354441, 44.657459, 17.717747>,  <21.686171, 44.249535, 17.361540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.354441, 44.657459, 17.717747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088940, 44.602779, 17.423607>,  <20.929638, 44.569969, 17.247122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088940, 44.602779, 17.423607>,  <21.354441, 44.657459, 17.717747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088940, 44.602779, 17.423607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652875, -0.373814, 0.658800,
		-0.364945, 0.917374, 0.158871,
		-0.663754, -0.136703, -0.735352,
		20.889812, 44.561768, 17.203001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708477, 44.895985, 18.034191>,  <21.354441, 44.657459, 17.717747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708477, 44.895985, 18.034191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.696487, 44.619854, 17.745041>,  <20.689295, 44.454174, 17.571550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.696487, 44.619854, 17.745041>,  <20.708477, 44.895985, 18.034191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696487, 44.619854, 17.745041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649354, -0.536355, 0.539131,
		-0.759895, 0.485561, -0.432192,
		-0.029972, -0.690329, -0.722875,
		20.687496, 44.412754, 17.528179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002792, 44.764832, 17.840906>,  <20.708477, 44.895985, 18.034191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002792, 44.764832, 17.840906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.246195, 44.451031, 17.793102>,  <20.392237, 44.262753, 17.764420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.246195, 44.451031, 17.793102>,  <20.002792, 44.764832, 17.840906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.246195, 44.451031, 17.793102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458803, -0.470683, 0.753630,
		-0.647472, -0.403757, -0.646344,
		0.608506, -0.784499, -0.119508,
		20.428747, 44.215683, 17.757250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601864, 44.141045, 17.796986>,  <20.002792, 44.764832, 17.840906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601864, 44.141045, 17.796986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975201, 44.056583, 17.913116>,  <20.199202, 44.005905, 17.982796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975201, 44.056583, 17.913116>,  <19.601864, 44.141045, 17.796986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975201, 44.056583, 17.913116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358433, -0.593268, 0.720805,
		0.020043, -0.776819, -0.629405,
		0.933341, -0.211152, 0.290328,
		20.255203, 43.993237, 18.000216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.721830, 43.431057, 17.725258>,  <19.601864, 44.141045, 17.796986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.721830, 43.431057, 17.725258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.974905, 43.565357, 18.004395>,  <20.126749, 43.645939, 18.171877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.974905, 43.565357, 18.004395>,  <19.721830, 43.431057, 17.725258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.974905, 43.565357, 18.004395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266148, -0.751963, 0.603090,
		0.727238, -0.567295, -0.386396,
		0.632685, 0.335751, 0.697841,
		20.164711, 43.666084, 18.213747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054762, 42.814987, 18.041183>,  <19.721830, 43.431057, 17.725258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.054762, 42.814987, 18.041183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102421, 43.115181, 18.301205>,  <20.131016, 43.295300, 18.457218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102421, 43.115181, 18.301205>,  <20.054762, 42.814987, 18.041183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.102421, 43.115181, 18.301205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044776, -0.649991, 0.758621,
		0.991867, -0.119493, -0.043840,
		0.119146, 0.750488, 0.650055,
		20.138165, 43.340328, 18.496222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610361, 42.657822, 18.473812>,  <20.054762, 42.814987, 18.041183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610361, 42.657822, 18.473812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.384253, 42.909985, 18.686626>,  <20.248587, 43.061283, 18.814314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.384253, 42.909985, 18.686626>,  <20.610361, 42.657822, 18.473812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.384253, 42.909985, 18.686626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185011, -0.725420, 0.662976,
		0.803890, 0.276329, 0.526690,
		-0.565271, 0.630404, 0.532034,
		20.214672, 43.099106, 18.846237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865131, 42.685993, 19.099430>,  <20.610361, 42.657822, 18.473812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865131, 42.685993, 19.099430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488382, 42.807869, 19.156048>,  <20.262333, 42.880997, 19.190018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488382, 42.807869, 19.156048>,  <20.865131, 42.685993, 19.099430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488382, 42.807869, 19.156048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103415, -0.663784, 0.740740,
		0.319651, 0.683047, 0.656711,
		-0.941875, 0.304692, 0.141543,
		20.205820, 42.899277, 19.198511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.875347, 42.706638, 19.823740>,  <20.865131, 42.685993, 19.099430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.875347, 42.706638, 19.823740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.490484, 42.741001, 19.720299>,  <20.259567, 42.761620, 19.658234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.490484, 42.741001, 19.720299>,  <20.875347, 42.706638, 19.823740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.490484, 42.741001, 19.720299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253449, -0.630704, 0.733468,
		-0.100094, 0.771254, 0.628609,
		-0.962156, 0.085904, -0.258603,
		20.201838, 42.766773, 19.642717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.550215, 42.983688, 20.394159>,  <20.875347, 42.706638, 19.823740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.550215, 42.983688, 20.394159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275032, 42.772034, 20.195469>,  <20.109922, 42.645042, 20.076256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275032, 42.772034, 20.195469>,  <20.550215, 42.983688, 20.394159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275032, 42.772034, 20.195469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008234, -0.678692, 0.734377,
		-0.725705, 0.509310, 0.462554,
		-0.687957, -0.529132, -0.496724,
		20.068645, 42.613293, 20.046452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086212, 42.784447, 20.815300>,  <20.550215, 42.983688, 20.394159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086212, 42.784447, 20.815300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.976978, 42.501774, 20.554218>,  <19.911438, 42.332169, 20.397570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.976978, 42.501774, 20.554218>,  <20.086212, 42.784447, 20.815300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976978, 42.501774, 20.554218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116046, -0.697739, 0.706890,
		-0.954965, 0.117297, 0.272549,
		-0.273084, -0.706683, -0.652705,
		19.895054, 42.289768, 20.358406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597879, 42.261292, 21.202595>,  <20.086212, 42.784447, 20.815300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597879, 42.261292, 21.202595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794641, 42.109058, 20.889370>,  <19.912699, 42.017719, 20.701435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794641, 42.109058, 20.889370>,  <19.597879, 42.261292, 21.202595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794641, 42.109058, 20.889370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241035, -0.804718, 0.542522,
		-0.836621, -0.455613, -0.304108,
		0.491902, -0.380585, -0.783063,
		19.942213, 41.994884, 20.654451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.251799, 41.712765, 20.976294>,  <19.597879, 42.261292, 21.202595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.251799, 41.712765, 20.976294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.631668, 41.661682, 20.861885>,  <19.859591, 41.631031, 20.793240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.631668, 41.661682, 20.861885>,  <19.251799, 41.712765, 20.976294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.631668, 41.661682, 20.861885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072064, -0.799541, 0.596272,
		-0.304837, -0.586876, -0.750100,
		0.949674, -0.127710, -0.286023,
		19.916571, 41.623367, 20.776077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.260559, 40.979210, 20.734877>,  <19.251799, 41.712765, 20.976294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.260559, 40.979210, 20.734877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.644835, 41.071621, 20.796463>,  <19.875401, 41.127068, 20.833414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.644835, 41.071621, 20.796463>,  <19.260559, 40.979210, 20.734877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644835, 41.071621, 20.796463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144257, -0.889208, 0.434164,
		0.237210, -0.394886, -0.887579,
		0.960688, 0.231028, 0.153964,
		19.933041, 41.140930, 20.842651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565872, 40.252975, 20.824846>,  <19.260559, 40.979210, 20.734877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565872, 40.252975, 20.824846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821417, 40.519070, 20.979416>,  <19.974743, 40.678726, 21.072157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821417, 40.519070, 20.979416>,  <19.565872, 40.252975, 20.824846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821417, 40.519070, 20.979416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338096, -0.693961, 0.635696,
		0.691049, -0.275472, -0.668256,
		0.638860, 0.665232, 0.386425,
		20.013075, 40.718639, 21.095343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061731, 39.851742, 21.083452>,  <19.565872, 40.252975, 20.824846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061731, 39.851742, 21.083452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175829, 40.189499, 21.264843>,  <20.244287, 40.392151, 21.373678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175829, 40.189499, 21.264843>,  <20.061731, 39.851742, 21.083452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175829, 40.189499, 21.264843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391021, -0.534491, 0.749281,
		0.875065, -0.036409, -0.482635,
		0.285245, 0.844390, 0.453477,
		20.261402, 40.442818, 21.400887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813234, 39.708851, 21.353653>,  <20.061731, 39.851742, 21.083452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813234, 39.708851, 21.353653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622334, 40.007320, 21.539322>,  <20.507793, 40.186401, 21.650724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622334, 40.007320, 21.539322>,  <20.813234, 39.708851, 21.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622334, 40.007320, 21.539322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104927, -0.476045, 0.873139,
		0.872480, 0.465411, 0.148900,
		-0.477251, 0.746173, 0.464174,
		20.479158, 40.231171, 21.678574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190430, 39.982594, 21.933353>,  <20.813234, 39.708851, 21.353653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190430, 39.982594, 21.933353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.811937, 40.084808, 22.012699>,  <20.584843, 40.146137, 22.060307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.811937, 40.084808, 22.012699>,  <21.190430, 39.982594, 21.933353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811937, 40.084808, 22.012699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109206, -0.324874, 0.939431,
		0.304502, 0.910581, 0.279500,
		-0.946231, 0.255536, 0.198366,
		20.528069, 40.161469, 22.072208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.306128, 40.389633, 22.651850>,  <21.190430, 39.982594, 21.933353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.306128, 40.389633, 22.651850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930965, 40.254463, 22.620491>,  <20.705868, 40.173363, 22.601675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930965, 40.254463, 22.620491>,  <21.306128, 40.389633, 22.651850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930965, 40.254463, 22.620491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052630, -0.361991, 0.930695,
		-0.342881, 0.868776, 0.357297,
		-0.937903, -0.337923, -0.078396,
		20.649595, 40.153088, 22.596972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057472, 40.516197, 23.267017>,  <21.306128, 40.389633, 22.651850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.057472, 40.516197, 23.267017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792994, 40.250931, 23.126713>,  <20.634306, 40.091770, 23.042530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792994, 40.250931, 23.126713>,  <21.057472, 40.516197, 23.267017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792994, 40.250931, 23.126713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161353, -0.330902, 0.929768,
		-0.732657, 0.671355, 0.111788,
		-0.661196, -0.663164, -0.350763,
		20.594635, 40.051983, 23.021484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430597, 40.659859, 23.612825>,  <21.057472, 40.516197, 23.267017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430597, 40.659859, 23.612825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446165, 40.277771, 23.495491>,  <20.455505, 40.048519, 23.425091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446165, 40.277771, 23.495491>,  <20.430597, 40.659859, 23.612825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446165, 40.277771, 23.495491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183343, -0.295399, 0.937617,
		-0.982278, 0.017289, -0.186629,
		0.038919, -0.955218, -0.293334,
		20.457842, 39.991207, 23.407492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.871540, 40.379005, 23.898617>,  <20.430597, 40.659859, 23.612825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.871540, 40.379005, 23.898617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092737, 40.059498, 23.803814>,  <20.225456, 39.867794, 23.746933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092737, 40.059498, 23.803814>,  <19.871540, 40.379005, 23.898617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092737, 40.059498, 23.803814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149702, -0.375085, 0.914823,
		-0.819626, -0.470410, -0.326996,
		0.552993, -0.798765, -0.237008,
		20.258635, 39.819870, 23.732712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.475328, 39.815838, 23.970654>,  <19.871540, 40.379005, 23.898617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.475328, 39.815838, 23.970654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856819, 39.704620, 24.016426>,  <20.085714, 39.637890, 24.043890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856819, 39.704620, 24.016426>,  <19.475328, 39.815838, 23.970654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.856819, 39.704620, 24.016426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228228, -0.421685, 0.877550,
		-0.195741, -0.863061, -0.465629,
		0.953728, -0.278042, 0.114434,
		20.142937, 39.621208, 24.050756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364719, 39.311844, 24.433249>,  <19.475328, 39.815838, 23.970654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364719, 39.311844, 24.433249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757994, 39.384083, 24.444084>,  <19.993958, 39.427425, 24.450586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757994, 39.384083, 24.444084>,  <19.364719, 39.311844, 24.433249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757994, 39.384083, 24.444084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025728, -0.283837, 0.958527,
		0.180798, -0.941711, -0.283710,
		0.983184, 0.180599, 0.027089,
		20.052948, 39.438263, 24.452211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.932959, 38.620686, 24.380543>,  <19.364719, 39.311844, 24.433249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.932959, 38.620686, 24.380543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.550257, 38.504364, 24.383450>,  <18.320635, 38.434570, 24.385193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.550257, 38.504364, 24.383450>,  <18.932959, 38.620686, 24.380543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.550257, 38.504364, 24.383450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275626, -0.898257, 0.342294,
		-0.093015, 0.329494, 0.939565,
		-0.956754, -0.290807, 0.007266,
		18.263231, 38.417122, 24.385630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689405, 38.773521, 23.750765>,  <18.932959, 38.620686, 24.380543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689405, 38.773521, 23.750765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.539013, 38.745789, 23.381153>,  <18.448778, 38.729149, 23.159386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.539013, 38.745789, 23.381153>,  <18.689405, 38.773521, 23.750765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.539013, 38.745789, 23.381153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615737, -0.726509, 0.305047,
		-0.692464, 0.683651, 0.230466,
		-0.375981, -0.069328, -0.924030,
		18.426218, 38.724991, 23.103945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925661, 38.764885, 23.808441>,  <18.689405, 38.773521, 23.750765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925661, 38.764885, 23.808441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066320, 38.557117, 23.496918>,  <18.150717, 38.432457, 23.310003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066320, 38.557117, 23.496918>,  <17.925661, 38.764885, 23.808441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.066320, 38.557117, 23.496918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603976, -0.761515, 0.235176,
		-0.715231, 0.387684, -0.581503,
		0.351650, -0.519419, -0.778811,
		18.171816, 38.401291, 23.263275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504436, 38.252815, 24.076151>,  <17.925661, 38.764885, 23.808441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504436, 38.252815, 24.076151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711714, 38.153370, 23.748817>,  <17.836081, 38.093704, 23.552418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711714, 38.153370, 23.748817>,  <17.504436, 38.252815, 24.076151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711714, 38.153370, 23.748817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268541, -0.955726, 0.120304,
		-0.812012, 0.157416, -0.562011,
		0.518192, -0.248611, -0.818334,
		17.867170, 38.078785, 23.503317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017492, 37.952869, 23.624912>,  <17.504436, 38.252815, 24.076151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017492, 37.952869, 23.624912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393784, 37.838085, 23.552597>,  <17.619558, 37.769215, 23.509207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393784, 37.838085, 23.552597>,  <17.017492, 37.952869, 23.624912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393784, 37.838085, 23.552597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272195, -0.956788, 0.102307,
		-0.202335, -0.047033, -0.978186,
		0.940728, -0.286958, -0.180790,
		17.676003, 37.751999, 23.498360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069250, 37.500687, 23.025808>,  <17.017492, 37.952869, 23.624912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069250, 37.500687, 23.025808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379274, 37.415260, 23.263691>,  <17.565289, 37.364006, 23.406420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379274, 37.415260, 23.263691>,  <17.069250, 37.500687, 23.025808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379274, 37.415260, 23.263691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177852, -0.976836, -0.118998,
		0.606342, -0.013539, -0.795088,
		0.775060, -0.213562, 0.594705,
		17.611792, 37.351192, 23.442102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.669516, 29.207487, 29.664522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.047031, 29.078449, 29.693356>,  <30.273540, 29.001026, 29.710655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.047031, 29.078449, 29.693356>,  <29.669516, 29.207487, 29.664522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047031, 29.078449, 29.693356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290585, 0.705766, -0.646107,
		0.157556, 0.630735, 0.759835,
		0.943788, -0.322595, 0.072084,
		30.330168, 28.981670, 29.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042532, 29.774288, 29.894056>,  <29.669516, 29.207487, 29.664522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042532, 29.774288, 29.894056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.306803, 29.532944, 29.715412>,  <30.465364, 29.388138, 29.608225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.306803, 29.532944, 29.715412>,  <30.042532, 29.774288, 29.894056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306803, 29.532944, 29.715412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305255, 0.759477, -0.574468,
		0.685804, 0.243207, 0.685947,
		0.660676, -0.603361, -0.446612,
		30.505005, 29.351934, 29.581429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749870, 30.182793, 29.828959>,  <30.042532, 29.774288, 29.894056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749870, 30.182793, 29.828959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.796631, 29.883770, 29.567425>,  <30.824688, 29.704357, 29.410505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.796631, 29.883770, 29.567425>,  <30.749870, 30.182793, 29.828959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796631, 29.883770, 29.567425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334348, 0.649541, -0.682868,
		0.935171, -0.138778, 0.325877,
		0.116903, -0.747554, -0.653832,
		30.831701, 29.659504, 29.371275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392483, 30.284258, 29.550179>,  <30.749870, 30.182793, 29.828959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392483, 30.284258, 29.550179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.189823, 30.068111, 29.281460>,  <31.068228, 29.938423, 29.120230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.189823, 30.068111, 29.281460>,  <31.392483, 30.284258, 29.550179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189823, 30.068111, 29.281460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228742, 0.667030, -0.709047,
		0.831253, -0.512906, -0.214347,
		-0.506651, -0.540367, -0.671795,
		31.037828, 29.906002, 29.079922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840895, 30.337387, 28.957773>,  <31.392483, 30.284258, 29.550179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840895, 30.337387, 28.957773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.504698, 30.184834, 28.803825>,  <31.302980, 30.093302, 28.711456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.504698, 30.184834, 28.803825>,  <31.840895, 30.337387, 28.957773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504698, 30.184834, 28.803825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058430, 0.642375, -0.764160,
		0.538665, -0.664758, -0.517626,
		-0.840492, -0.381381, -0.384867,
		31.252550, 30.070419, 28.688366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888586, 29.944691, 28.213360>,  <31.840895, 30.337387, 28.957773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888586, 29.944691, 28.213360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532892, 30.119305, 28.268055>,  <31.319475, 30.224073, 28.300873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532892, 30.119305, 28.268055>,  <31.888586, 29.944691, 28.213360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532892, 30.119305, 28.268055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151457, 0.563010, -0.812453,
		-0.431651, -0.701752, -0.566765,
		-0.889235, 0.436537, 0.136739,
		31.266121, 30.250265, 28.309076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641932, 30.186342, 27.510359>,  <31.888586, 29.944691, 28.213360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641932, 30.186342, 27.510359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388182, 30.383545, 27.748524>,  <31.235931, 30.501867, 27.891422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388182, 30.383545, 27.748524>,  <31.641932, 30.186342, 27.510359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388182, 30.383545, 27.748524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217280, 0.625464, -0.749389,
		-0.741863, -0.604763, -0.289657,
		-0.634373, 0.493007, 0.595412,
		31.197870, 30.531446, 27.927147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981960, 30.252205, 27.092566>,  <31.641932, 30.186342, 27.510359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981960, 30.252205, 27.092566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932636, 30.531235, 27.374893>,  <30.903042, 30.698652, 27.544291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932636, 30.531235, 27.374893>,  <30.981960, 30.252205, 27.092566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932636, 30.531235, 27.374893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395235, 0.617881, -0.679715,
		-0.910265, -0.362781, 0.199515,
		-0.123311, 0.697576, 0.705820,
		30.895643, 30.740507, 27.586639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315662, 30.490709, 26.998091>,  <30.981960, 30.252205, 27.092566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315662, 30.490709, 26.998091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.487625, 30.788605, 27.202267>,  <30.590803, 30.967342, 27.324772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.487625, 30.788605, 27.202267>,  <30.315662, 30.490709, 26.998091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487625, 30.788605, 27.202267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367568, 0.660743, -0.654455,
		-0.824666, 0.093733, 0.557799,
		0.429906, 0.744736, 0.510439,
		30.616596, 31.012026, 27.355398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826712, 31.037830, 27.095903>,  <30.315662, 30.490709, 26.998091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826712, 31.037830, 27.095903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.186457, 31.206161, 27.143318>,  <30.402304, 31.307159, 27.171768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.186457, 31.206161, 27.143318>,  <29.826712, 31.037830, 27.095903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186457, 31.206161, 27.143318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254027, 0.723648, -0.641720,
		-0.355834, 0.547026, 0.757723,
		0.899362, 0.420827, 0.118539,
		30.456264, 31.332409, 27.178881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599476, 31.679625, 27.215992>,  <29.826712, 31.037830, 27.095903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599476, 31.679625, 27.215992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990290, 31.684509, 27.130898>,  <30.224777, 31.687441, 27.079842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990290, 31.684509, 27.130898>,  <29.599476, 31.679625, 27.215992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990290, 31.684509, 27.130898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139954, 0.789606, -0.597441,
		0.160682, 0.613493, 0.773180,
		0.977033, 0.012212, -0.212736,
		30.283400, 31.688173, 27.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830881, 32.356602, 27.271612>,  <29.599476, 31.679625, 27.215992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830881, 32.356602, 27.271612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.120140, 32.203121, 27.041889>,  <30.293695, 32.111031, 26.904055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.120140, 32.203121, 27.041889>,  <29.830881, 32.356602, 27.271612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120140, 32.203121, 27.041889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076356, 0.781985, -0.618603,
		0.686461, 0.491193, 0.536192,
		0.723147, -0.383705, -0.574307,
		30.337084, 32.088009, 26.869596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188282, 32.920609, 27.116179>,  <29.830881, 32.356602, 27.271612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188282, 32.920609, 27.116179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.260752, 32.647858, 26.832710>,  <30.304234, 32.484207, 26.662630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.260752, 32.647858, 26.832710>,  <30.188282, 32.920609, 27.116179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260752, 32.647858, 26.832710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095505, 0.704990, -0.702757,
		0.978802, 0.195004, 0.062604,
		0.181175, -0.681882, -0.708670,
		30.315104, 32.443295, 26.620110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610495, 33.259499, 26.815140>,  <30.188282, 32.920609, 27.116179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610495, 33.259499, 26.815140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.438597, 32.995510, 26.568642>,  <30.335459, 32.837116, 26.420744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.438597, 32.995510, 26.568642>,  <30.610495, 33.259499, 26.815140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438597, 32.995510, 26.568642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135797, 0.721954, -0.678484,
		0.892681, -0.207890, -0.399877,
		-0.429743, -0.659973, -0.616244,
		30.309673, 32.797520, 26.383768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908001, 33.435429, 26.206791>,  <30.610495, 33.259499, 26.815140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908001, 33.435429, 26.206791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.610033, 33.196377, 26.088177>,  <30.431252, 33.052944, 26.017008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.610033, 33.196377, 26.088177>,  <30.908001, 33.435429, 26.206791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610033, 33.196377, 26.088177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197219, 0.621875, -0.757877,
		0.637344, -0.506069, -0.581108,
		-0.744914, -0.597634, -0.296542,
		30.386557, 33.017086, 25.999216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053171, 33.225758, 25.493864>,  <30.908001, 33.435429, 26.206791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053171, 33.225758, 25.493864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.660849, 33.181770, 25.558270>,  <30.425455, 33.155376, 25.596912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.660849, 33.181770, 25.558270>,  <31.053171, 33.225758, 25.493864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660849, 33.181770, 25.558270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194956, 0.539193, -0.819306,
		0.003285, -0.834971, -0.550284,
		-0.980806, -0.109972, 0.161011,
		30.366606, 33.148777, 25.606573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813677, 33.121906, 24.895838>,  <31.053171, 33.225758, 25.493864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813677, 33.121906, 24.895838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.478542, 33.214939, 25.093395>,  <30.277462, 33.270760, 25.211929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.478542, 33.214939, 25.093395>,  <30.813677, 33.121906, 24.895838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478542, 33.214939, 25.093395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294156, 0.569802, -0.767331,
		-0.459892, -0.788182, -0.408986,
		-0.837838, 0.232584, 0.493896,
		30.227192, 33.284714, 25.241564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364393, 33.127728, 24.406996>,  <30.813677, 33.121906, 24.895838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364393, 33.127728, 24.406996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.203983, 33.366070, 24.685314>,  <30.107737, 33.509075, 24.852306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.203983, 33.366070, 24.685314>,  <30.364393, 33.127728, 24.406996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203983, 33.366070, 24.685314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272601, 0.647517, -0.711625,
		-0.874567, -0.475054, -0.097240,
		-0.401025, 0.595856, 0.695798,
		30.083675, 33.544827, 24.894054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771751, 33.415802, 24.117107>,  <30.364393, 33.127728, 24.406996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771751, 33.415802, 24.117107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844641, 33.690243, 24.398834>,  <29.888374, 33.854908, 24.567871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844641, 33.690243, 24.398834>,  <29.771751, 33.415802, 24.117107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844641, 33.690243, 24.398834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367881, 0.711858, -0.598266,
		-0.911844, -0.150088, 0.382119,
		0.182222, 0.686099, 0.704317,
		29.899307, 33.896072, 24.610130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177408, 33.853981, 24.115112>,  <29.771751, 33.415802, 24.117107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177408, 33.853981, 24.115112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.468838, 34.048641, 24.307922>,  <29.643696, 34.165440, 24.423609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.468838, 34.048641, 24.307922>,  <29.177408, 33.853981, 24.115112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468838, 34.048641, 24.307922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182878, 0.816377, -0.547799,
		-0.660103, 0.310960, 0.683789,
		0.728574, 0.486654, 0.482025,
		29.687410, 34.194637, 24.452530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899815, 34.427002, 24.373182>,  <29.177408, 33.853981, 24.115112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899815, 34.427002, 24.373182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268133, 34.581551, 24.394535>,  <29.489124, 34.674278, 24.407347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268133, 34.581551, 24.394535>,  <28.899815, 34.427002, 24.373182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268133, 34.581551, 24.394535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293145, 0.775822, -0.558719,
		-0.257288, 0.498818, 0.827637,
		0.920798, 0.386369, 0.053384,
		29.544373, 34.697460, 24.410551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837442, 35.229179, 24.519245>,  <28.899815, 34.427002, 24.373182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837442, 35.229179, 24.519245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.214041, 35.180973, 24.393349>,  <29.440001, 35.152050, 24.317810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.214041, 35.180973, 24.393349>,  <28.837442, 35.229179, 24.519245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214041, 35.180973, 24.393349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087464, 0.814508, -0.573521,
		0.325480, 0.567495, 0.756315,
		0.941495, -0.120519, -0.314741,
		29.496489, 35.144817, 24.298927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551306, 35.750740, 24.141933>,  <28.837442, 35.229179, 24.519245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551306, 35.750740, 24.141933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.154610, 35.746052, 24.090847>,  <27.916592, 35.743240, 24.060194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.154610, 35.746052, 24.090847>,  <28.551306, 35.750740, 24.141933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154610, 35.746052, 24.090847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079804, -0.723184, 0.686030,
		-0.100402, 0.690556, 0.716276,
		-0.991741, -0.011717, -0.127718,
		27.857088, 35.742538, 24.052532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271351, 35.888142, 24.767757>,  <28.551306, 35.750740, 24.141933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271351, 35.888142, 24.767757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.975306, 35.697300, 24.578186>,  <27.797678, 35.582794, 24.464443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.975306, 35.697300, 24.578186>,  <28.271351, 35.888142, 24.767757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975306, 35.697300, 24.578186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153221, -0.566568, 0.809644,
		-0.654796, 0.671843, 0.346222,
		-0.740112, -0.477103, -0.473926,
		27.753271, 35.554169, 24.436008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757324, 35.811188, 25.307560>,  <28.271351, 35.888142, 24.767757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757324, 35.811188, 25.307560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.647633, 35.537205, 25.037560>,  <27.581818, 35.372814, 24.875559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.647633, 35.537205, 25.037560>,  <27.757324, 35.811188, 25.307560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647633, 35.537205, 25.037560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073955, -0.684812, 0.724958,
		-0.958816, 0.248725, 0.137140,
		-0.274230, -0.684959, -0.675003,
		27.565363, 35.331718, 24.835058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234882, 35.473347, 25.667049>,  <27.757324, 35.811188, 25.307560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234882, 35.473347, 25.667049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.380419, 35.218609, 25.395153>,  <27.467741, 35.065765, 25.232016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.380419, 35.218609, 25.395153>,  <27.234882, 35.473347, 25.667049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380419, 35.218609, 25.395153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161260, -0.761805, 0.627414,
		-0.917397, -0.118663, -0.379872,
		0.363839, -0.636846, -0.679742,
		27.489571, 35.027554, 25.191231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855652, 34.990669, 25.825443>,  <27.234882, 35.473347, 25.667049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855652, 34.990669, 25.825443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.102880, 34.790985, 25.582535>,  <27.251217, 34.671173, 25.436790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.102880, 34.790985, 25.582535>,  <26.855652, 34.990669, 25.825443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102880, 34.790985, 25.582535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170138, -0.839124, 0.516646,
		-0.767489, -0.216004, -0.603574,
		0.618072, -0.499211, -0.607269,
		27.288301, 34.641220, 25.400354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535370, 34.306561, 25.608768>,  <26.855652, 34.990669, 25.825443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535370, 34.306561, 25.608768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.932997, 34.263683, 25.616127>,  <27.171574, 34.237957, 25.620543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.932997, 34.263683, 25.616127>,  <26.535370, 34.306561, 25.608768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932997, 34.263683, 25.616127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102168, -0.862357, 0.495885,
		-0.037290, -0.494823, -0.868193,
		0.994068, -0.107193, 0.018398,
		27.231216, 34.231525, 25.621647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700232, 33.630802, 25.460739>,  <26.535370, 34.306561, 25.608768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700232, 33.630802, 25.460739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.043629, 33.753571, 25.625072>,  <27.249666, 33.827232, 25.723673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.043629, 33.753571, 25.625072>,  <26.700232, 33.630802, 25.460739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043629, 33.753571, 25.625072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029213, -0.770553, 0.636706,
		0.511992, -0.558609, -0.652549,
		0.858493, 0.306926, 0.410836,
		27.301176, 33.845650, 25.748323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096748, 33.070599, 25.485723>,  <26.700232, 33.630802, 25.460739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096748, 33.070599, 25.485723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.258776, 33.310795, 25.761501>,  <27.355991, 33.454910, 25.926968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.258776, 33.310795, 25.761501>,  <27.096748, 33.070599, 25.485723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258776, 33.310795, 25.761501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119028, -0.713029, 0.690957,
		0.906506, -0.361947, -0.217350,
		0.405067, 0.600486, 0.689447,
		27.380297, 33.490940, 25.968336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633017, 32.736610, 25.790421>,  <27.096748, 33.070599, 25.485723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633017, 32.736610, 25.790421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.555050, 33.008202, 26.073544>,  <27.508270, 33.171158, 26.243418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.555050, 33.008202, 26.073544>,  <27.633017, 32.736610, 25.790421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555050, 33.008202, 26.073544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086909, -0.706854, 0.702000,
		0.976962, 0.198346, 0.078768,
		-0.194916, 0.678982, 0.707808,
		27.496574, 33.211895, 26.285887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174698, 32.588646, 26.311924>,  <27.633017, 32.736610, 25.790421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174698, 32.588646, 26.311924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.883364, 32.783119, 26.505070>,  <27.708563, 32.899803, 26.620956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.883364, 32.783119, 26.505070>,  <28.174698, 32.588646, 26.311924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883364, 32.783119, 26.505070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200229, -0.522919, 0.828531,
		0.655312, 0.700132, 0.283514,
		-0.728336, 0.486179, 0.482862,
		27.664864, 32.928974, 26.649929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494537, 32.784084, 26.836248>,  <28.174698, 32.588646, 26.311924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494537, 32.784084, 26.836248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.106054, 32.814777, 26.926468>,  <27.872965, 32.833195, 26.980598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.106054, 32.814777, 26.926468>,  <28.494537, 32.784084, 26.836248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106054, 32.814777, 26.926468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167636, -0.452590, 0.875820,
		0.169289, 0.888411, 0.426694,
		-0.971205, 0.076737, 0.225548,
		27.814693, 32.837799, 26.994133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486967, 32.952835, 27.480917>,  <28.494537, 32.784084, 26.836248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486967, 32.952835, 27.480917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.123238, 32.798038, 27.419765>,  <27.905001, 32.705162, 27.383074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.123238, 32.798038, 27.419765>,  <28.486967, 32.952835, 27.480917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123238, 32.798038, 27.419765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105523, -0.569887, 0.814920,
		-0.402488, 0.724893, 0.559047,
		-0.909323, -0.386988, -0.152880,
		27.850441, 32.681942, 27.373901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135597, 32.974739, 28.065344>,  <28.486967, 32.952835, 27.480917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135597, 32.974739, 28.065344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.945835, 32.680443, 27.872005>,  <27.831978, 32.503864, 27.756002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.945835, 32.680443, 27.872005>,  <28.135597, 32.974739, 28.065344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945835, 32.680443, 27.872005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108395, -0.593706, 0.797348,
		-0.873609, 0.325873, 0.361407,
		-0.474403, -0.735745, -0.483344,
		27.803514, 32.459721, 27.727003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771486, 32.693081, 28.586155>,  <28.135597, 32.974739, 28.065344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771486, 32.693081, 28.586155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.734207, 32.409679, 28.306343>,  <27.711840, 32.239639, 28.138456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.734207, 32.409679, 28.306343>,  <27.771486, 32.693081, 28.586155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734207, 32.409679, 28.306343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099945, -0.705694, 0.701432,
		-0.990618, -0.004542, 0.136581,
		-0.093199, -0.708502, -0.699527,
		27.706247, 32.197128, 28.096485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243807, 32.250881, 28.817429>,  <27.771486, 32.693081, 28.586155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243807, 32.250881, 28.817429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.474442, 32.039143, 28.568481>,  <27.612822, 31.912100, 28.419113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.474442, 32.039143, 28.568481>,  <27.243807, 32.250881, 28.817429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474442, 32.039143, 28.568481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043969, -0.780741, 0.623306,
		-0.815854, -0.332023, -0.473437,
		0.576583, -0.529343, -0.622372,
		27.647417, 31.880341, 28.381771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950972, 31.527750, 28.829174>,  <27.243807, 32.250881, 28.817429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950972, 31.527750, 28.829174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.311832, 31.469505, 28.666733>,  <27.528349, 31.434559, 28.569269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.311832, 31.469505, 28.666733>,  <26.950972, 31.527750, 28.829174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311832, 31.469505, 28.666733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128140, -0.808398, 0.574520,
		-0.411948, -0.570342, -0.710639,
		0.902152, -0.145611, -0.406102,
		27.582478, 31.425821, 28.544903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113260, 30.755104, 28.888731>,  <26.950972, 31.527750, 28.829174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113260, 30.755104, 28.888731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.467045, 30.930088, 28.823795>,  <27.679316, 31.035078, 28.784834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.467045, 30.930088, 28.823795>,  <27.113260, 30.755104, 28.888731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467045, 30.930088, 28.823795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425022, -0.611718, 0.667201,
		0.192567, -0.659113, -0.726972,
		0.884463, 0.437460, -0.162341,
		27.732384, 31.061325, 28.775093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577883, 30.268631, 28.517172>,  <27.113260, 30.755104, 28.888731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577883, 30.268631, 28.517172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.774712, 30.532856, 28.743984>,  <27.892809, 30.691391, 28.880072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.774712, 30.532856, 28.743984>,  <27.577883, 30.268631, 28.517172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774712, 30.532856, 28.743984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383414, -0.749215, 0.540066,
		0.781575, -0.048343, -0.621935,
		0.492071, 0.660561, 0.567032,
		27.922333, 30.731024, 28.914093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.215332, 29.911589, 28.558332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.213305, 30.205837, 28.829281>,  <28.212088, 30.382387, 28.991850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.213305, 30.205837, 28.829281>,  <28.215332, 29.911589, 28.558332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213305, 30.205837, 28.829281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194391, -0.663735, 0.722266,
		0.980911, 0.135337, -0.139633,
		-0.005070, 0.735622, 0.677373,
		28.211784, 30.426523, 29.032494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794241, 29.799753, 28.868633>,  <28.215332, 29.911589, 28.558332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794241, 29.799753, 28.868633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.539936, 29.988163, 29.113235>,  <28.387354, 30.101210, 29.259996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.539936, 29.988163, 29.113235>,  <28.794241, 29.799753, 28.868633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539936, 29.988163, 29.113235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279142, -0.598305, 0.751073,
		0.719643, 0.648201, 0.248897,
		-0.635763, 0.471027, 0.611506,
		28.349207, 30.129471, 29.296688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202682, 29.865334, 29.508127>,  <28.794241, 29.799753, 28.868633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202682, 29.865334, 29.508127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818415, 29.917664, 29.606102>,  <28.587854, 29.949062, 29.664886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818415, 29.917664, 29.606102>,  <29.202682, 29.865334, 29.508127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818415, 29.917664, 29.606102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129046, -0.570703, 0.810953,
		0.245881, 0.810668, 0.531376,
		-0.960671, 0.130826, 0.244938,
		28.530212, 29.956911, 29.679583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191053, 29.899839, 30.263288>,  <29.202682, 29.865334, 29.508127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191053, 29.899839, 30.263288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803782, 29.856667, 30.172977>,  <28.571419, 29.830763, 30.118790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803782, 29.856667, 30.172977>,  <29.191053, 29.899839, 30.263288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803782, 29.856667, 30.172977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177654, -0.338989, 0.923864,
		-0.176249, 0.934579, 0.309029,
		-0.968181, -0.107930, -0.225779,
		28.513327, 29.824287, 30.105244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903954, 30.247110, 30.766172>,  <29.191053, 29.899839, 30.263288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903954, 30.247110, 30.766172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.633358, 29.993656, 30.616039>,  <28.471001, 29.841583, 30.525959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.633358, 29.993656, 30.616039>,  <28.903954, 30.247110, 30.766172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633358, 29.993656, 30.616039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128736, -0.400058, 0.907403,
		-0.725116, 0.662165, 0.189062,
		-0.676487, -0.633633, -0.375332,
		28.430412, 29.803566, 30.503439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245682, 30.411087, 31.181747>,  <28.903954, 30.247110, 30.766172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245682, 30.411087, 31.181747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231354, 30.043064, 31.025688>,  <28.222757, 29.822250, 30.932053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231354, 30.043064, 31.025688>,  <28.245682, 30.411087, 31.181747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231354, 30.043064, 31.025688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093915, -0.385572, 0.917886,
		-0.994936, 0.069519, -0.072596,
		-0.035819, -0.920055, -0.390148,
		28.220608, 29.767048, 30.908644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756353, 30.049370, 31.546841>,  <28.245682, 30.411087, 31.181747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756353, 30.049370, 31.546841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.933275, 29.739166, 31.366638>,  <28.039429, 29.553043, 31.258516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.933275, 29.739166, 31.366638>,  <27.756353, 30.049370, 31.546841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933275, 29.739166, 31.366638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055454, -0.524996, 0.849296,
		-0.895149, -0.350664, -0.275213,
		0.442304, -0.775509, -0.450504,
		28.065966, 29.506514, 31.231487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244610, 29.495041, 31.545397>,  <27.756353, 30.049370, 31.546841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244610, 29.495041, 31.545397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.619215, 29.357838, 31.516300>,  <27.843977, 29.275515, 31.498842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.619215, 29.357838, 31.516300>,  <27.244610, 29.495041, 31.545397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619215, 29.357838, 31.516300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172228, -0.630696, 0.756677,
		-0.305425, -0.696109, -0.649730,
		0.936511, -0.343009, -0.072741,
		27.900167, 29.254934, 31.494478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226471, 28.709867, 31.448843>,  <27.244610, 29.495041, 31.545397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226471, 28.709867, 31.448843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.562040, 28.853672, 31.612286>,  <27.763382, 28.939955, 31.710352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.562040, 28.853672, 31.612286>,  <27.226471, 28.709867, 31.448843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562040, 28.853672, 31.612286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069459, -0.673908, 0.735543,
		0.539798, -0.645446, -0.540386,
		0.838924, 0.359510, 0.408607,
		27.813717, 28.961525, 31.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202057, 28.281744, 31.924395>,  <27.226471, 28.709867, 31.448843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202057, 28.281744, 31.924395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517651, 28.508179, 32.019936>,  <27.707006, 28.644039, 32.077259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517651, 28.508179, 32.019936>,  <27.202057, 28.281744, 31.924395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517651, 28.508179, 32.019936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116283, -0.519300, 0.846644,
		0.603310, -0.640214, -0.475545,
		0.788983, 0.566087, 0.238853,
		27.754345, 28.678005, 32.091591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677328, 27.881313, 32.279205>,  <27.202057, 28.281744, 31.924395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677328, 27.881313, 32.279205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.796312, 28.247440, 32.387806>,  <27.867702, 28.467115, 32.452969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.796312, 28.247440, 32.387806>,  <27.677328, 27.881313, 32.279205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796312, 28.247440, 32.387806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208300, -0.339746, 0.917161,
		0.931734, -0.216264, -0.291721,
		0.297460, 0.915316, 0.271506,
		27.885550, 28.522036, 32.469257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275400, 27.789345, 32.669521>,  <27.677328, 27.881313, 32.279205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275400, 27.789345, 32.669521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.117348, 28.141964, 32.772858>,  <28.022516, 28.353537, 32.834858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.117348, 28.141964, 32.772858>,  <28.275400, 27.789345, 32.669521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117348, 28.141964, 32.772858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037799, -0.265385, 0.963401,
		0.917846, 0.390437, 0.071540,
		-0.395133, 0.881550, 0.258340,
		27.998808, 28.406429, 32.850361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727352, 28.097633, 33.140224>,  <28.275400, 27.789345, 32.669521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727352, 28.097633, 33.140224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368198, 28.267601, 33.186275>,  <28.152706, 28.369581, 33.213905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368198, 28.267601, 33.186275>,  <28.727352, 28.097633, 33.140224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368198, 28.267601, 33.186275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030690, -0.200451, 0.979223,
		0.439165, 0.882760, 0.166940,
		-0.897882, 0.424917, 0.115123,
		28.098833, 28.395077, 33.220814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827349, 28.564323, 33.617908>,  <28.727352, 28.097633, 33.140224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827349, 28.564323, 33.617908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.438866, 28.469425, 33.626560>,  <28.205776, 28.412487, 33.631752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.438866, 28.469425, 33.626560>,  <28.827349, 28.564323, 33.617908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438866, 28.469425, 33.626560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049548, -0.112365, 0.992431,
		-0.233019, 0.964929, 0.120885,
		-0.971209, -0.237245, 0.021627,
		28.147503, 28.398252, 33.633049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686237, 28.758539, 34.252636>,  <28.827349, 28.564323, 33.617908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686237, 28.758539, 34.252636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.360792, 28.554070, 34.141830>,  <28.165525, 28.431387, 34.075348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.360792, 28.554070, 34.141830>,  <28.686237, 28.758539, 34.252636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360792, 28.554070, 34.141830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231780, -0.151794, 0.960852,
		-0.533212, 0.845967, 0.005021,
		-0.813611, -0.511174, -0.277017,
		28.116709, 28.400717, 34.058727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151503, 28.977118, 34.658669>,  <28.686237, 28.758539, 34.252636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151503, 28.977118, 34.658669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.046761, 28.606438, 34.550842>,  <27.983915, 28.384029, 34.486149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.046761, 28.606438, 34.550842>,  <28.151503, 28.977118, 34.658669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046761, 28.606438, 34.550842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174448, -0.229261, 0.957605,
		-0.949211, 0.297777, -0.101628,
		-0.261853, -0.926698, -0.269563,
		27.968204, 28.328428, 34.469975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570238, 28.951540, 34.945820>,  <28.151503, 28.977118, 34.658669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570238, 28.951540, 34.945820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.650620, 28.568287, 34.864239>,  <27.698849, 28.338335, 34.815289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.650620, 28.568287, 34.864239>,  <27.570238, 28.951540, 34.945820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650620, 28.568287, 34.864239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314842, -0.260325, 0.912746,
		-0.927627, -0.119206, -0.353974,
		0.200953, -0.958134, -0.203954,
		27.710905, 28.280848, 34.803051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020674, 28.672382, 35.030266>,  <27.570238, 28.951540, 34.945820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020674, 28.672382, 35.030266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.261915, 28.358112, 35.085369>,  <27.406660, 28.169550, 35.118431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.261915, 28.358112, 35.085369>,  <27.020674, 28.672382, 35.030266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261915, 28.358112, 35.085369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413337, -0.160123, 0.896389,
		-0.682214, -0.597556, -0.421320,
		0.603105, -0.785676, 0.137754,
		27.442846, 28.122410, 35.126694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619215, 28.031054, 35.206036>,  <27.020674, 28.672382, 35.030266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619215, 28.031054, 35.206036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.991110, 27.955929, 35.332729>,  <27.214247, 27.910854, 35.408745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.991110, 27.955929, 35.332729>,  <26.619215, 28.031054, 35.206036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991110, 27.955929, 35.332729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358810, -0.268773, 0.893877,
		-0.082751, -0.944716, -0.317276,
		0.929735, -0.187811, 0.316732,
		27.270031, 27.899586, 35.427750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557634, 27.416998, 35.634480>,  <26.619215, 28.031054, 35.206036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557634, 27.416998, 35.634480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.899618, 27.589764, 35.749367>,  <27.104809, 27.693424, 35.818298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.899618, 27.589764, 35.749367>,  <26.557634, 27.416998, 35.634480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899618, 27.589764, 35.749367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148770, -0.326278, 0.933494,
		0.496903, -0.840828, -0.214698,
		0.854959, 0.431915, 0.287218,
		27.156105, 27.719337, 35.835533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984562, 26.828762, 36.025566>,  <26.557634, 27.416998, 35.634480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984562, 26.828762, 36.025566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.083878, 27.205959, 36.114212>,  <27.143467, 27.432278, 36.167400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.083878, 27.205959, 36.114212>,  <26.984562, 26.828762, 36.025566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083878, 27.205959, 36.114212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104260, -0.201435, 0.973937,
		0.963058, -0.264925, 0.048302,
		0.248291, 0.942994, 0.221615,
		27.158365, 27.488857, 36.180698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329803, 26.831577, 36.656296>,  <26.984562, 26.828762, 36.025566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329803, 26.831577, 36.656296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.240419, 27.220932, 36.635960>,  <27.186789, 27.454544, 36.623756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.240419, 27.220932, 36.635960>,  <27.329803, 26.831577, 36.656296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240419, 27.220932, 36.635960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102319, 0.028447, 0.994345,
		0.969328, 0.227401, 0.093239,
		-0.223462, 0.973386, -0.050842,
		27.173380, 27.512947, 36.620708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037170, 26.689213, 36.973232>,  <27.329803, 26.831577, 36.656296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037170, 26.689213, 36.973232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081266, 26.966408, 37.258221>,  <28.107725, 27.132725, 37.429214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081266, 26.966408, 37.258221>,  <28.037170, 26.689213, 36.973232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081266, 26.966408, 37.258221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992903, -0.044612, -0.110242,
		-0.044612, 0.719567, -0.692988,
		0.110242, 0.692988, 0.712471,
		28.114340, 27.174305, 37.471962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217569, 27.449030, 36.725891>,  <28.037170, 26.689213, 36.973232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217569, 27.449030, 36.725891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378345, 27.323895, 37.070118>,  <28.474812, 27.248814, 37.276653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378345, 27.323895, 37.070118>,  <28.217569, 27.449030, 36.725891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378345, 27.323895, 37.070118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915571, 0.123782, -0.382633,
		0.013179, 0.941706, 0.336178,
		0.401941, -0.312837, 0.860568,
		28.498928, 27.230043, 37.328289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869232, 27.411100, 37.033173>,  <28.217569, 27.449030, 36.725891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869232, 27.411100, 37.033173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156511, 27.152790, 37.136837>,  <29.328878, 26.997805, 37.199036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156511, 27.152790, 37.136837>,  <28.869232, 27.411100, 37.033173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156511, 27.152790, 37.136837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516188, 0.244685, -0.820780,
		0.466625, 0.723261, 0.509073,
		0.718200, -0.645774, 0.259162,
		29.371971, 26.959059, 37.214584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525692, 27.736540, 37.059689>,  <28.869232, 27.411100, 37.033173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525692, 27.736540, 37.059689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598736, 27.348419, 36.996231>,  <29.642561, 27.115547, 36.958157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598736, 27.348419, 36.996231>,  <29.525692, 27.736540, 37.059689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598736, 27.348419, 36.996231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457633, 0.226694, -0.859757,
		0.870188, 0.084398, 0.485438,
		0.182608, -0.970302, -0.158643,
		29.653519, 27.057329, 36.948639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202646, 27.919561, 37.042385>,  <29.525692, 27.736540, 37.059689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202646, 27.919561, 37.042385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082331, 27.568359, 36.893452>,  <30.010141, 27.357637, 36.804092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082331, 27.568359, 36.893452>,  <30.202646, 27.919561, 37.042385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082331, 27.568359, 36.893452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468764, 0.203884, -0.859472,
		0.830535, -0.433054, 0.350252,
		-0.300787, -0.878007, -0.372332,
		29.992094, 27.304956, 36.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828680, 27.582003, 36.744904>,  <30.202646, 27.919561, 37.042385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828680, 27.582003, 36.744904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517921, 27.409019, 36.561855>,  <30.331467, 27.305229, 36.452026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517921, 27.409019, 36.561855>,  <30.828680, 27.582003, 36.744904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517921, 27.409019, 36.561855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502432, 0.012227, -0.864530,
		0.379468, -0.901571, 0.207782,
		-0.776895, -0.432458, -0.457618,
		30.284853, 27.279282, 36.424568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098333, 27.144091, 36.235996>,  <30.828680, 27.582003, 36.744904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098333, 27.144091, 36.235996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725939, 27.174068, 36.093082>,  <30.502502, 27.192055, 36.007336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725939, 27.174068, 36.093082>,  <31.098333, 27.144091, 36.235996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725939, 27.174068, 36.093082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338584, -0.188649, -0.921831,
		-0.136484, -0.979181, 0.150256,
		-0.930985, 0.074941, -0.357283,
		30.446644, 27.196552, 35.985897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051998, 26.713354, 35.503651>,  <31.098333, 27.144091, 36.235996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051998, 26.713354, 35.503651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731552, 26.952641, 35.496128>,  <30.539286, 27.096212, 35.491615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731552, 26.952641, 35.496128>,  <31.051998, 26.713354, 35.503651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731552, 26.952641, 35.496128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074333, 0.068262, -0.994895,
		-0.593880, -0.798421, -0.099153,
		-0.801113, 0.598218, -0.018810,
		30.491219, 27.132107, 35.490486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746483, 26.486616, 34.856956>,  <31.051998, 26.713354, 35.503651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746483, 26.486616, 34.856956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598080, 26.844707, 34.955685>,  <30.509039, 27.059563, 35.014919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598080, 26.844707, 34.955685>,  <30.746483, 26.486616, 34.856956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598080, 26.844707, 34.955685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228626, 0.169550, -0.958636,
		-0.900047, -0.412088, 0.141769,
		-0.371005, 0.895230, 0.246817,
		30.486778, 27.113276, 35.029732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961624, 26.640373, 34.608784>,  <30.746483, 26.486616, 34.856956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961624, 26.640373, 34.608784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.173460, 26.978462, 34.637444>,  <30.300562, 27.181316, 34.654640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.173460, 26.978462, 34.637444>,  <29.961624, 26.640373, 34.608784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173460, 26.978462, 34.637444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073267, 0.129734, -0.988838,
		-0.845083, 0.518429, 0.130632,
		0.529590, 0.845222, 0.071652,
		30.332336, 27.232029, 34.658939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836395, 26.873505, 33.902935>,  <29.961624, 26.640373, 34.608784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836395, 26.873505, 33.902935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109735, 27.115215, 34.066830>,  <30.273739, 27.260242, 34.165169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109735, 27.115215, 34.066830>,  <29.836395, 26.873505, 33.902935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109735, 27.115215, 34.066830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070619, 0.503875, -0.860885,
		-0.726669, 0.617220, 0.301648,
		0.683348, 0.604276, 0.409738,
		30.314739, 27.296497, 34.189751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578100, 27.518770, 33.814636>,  <29.836395, 26.873505, 33.902935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578100, 27.518770, 33.814636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975693, 27.547066, 33.848087>,  <30.214249, 27.564043, 33.868160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975693, 27.547066, 33.848087>,  <29.578100, 27.518770, 33.814636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975693, 27.547066, 33.848087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042711, 0.452771, -0.890603,
		-0.100868, 0.888816, 0.447025,
		0.993982, 0.070740, 0.083632,
		30.273888, 27.568287, 33.873177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728165, 28.287138, 33.725067>,  <29.578100, 27.518770, 33.814636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728165, 28.287138, 33.725067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068718, 28.084846, 33.669369>,  <30.273050, 27.963472, 33.635952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068718, 28.084846, 33.669369>,  <29.728165, 28.287138, 33.725067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068718, 28.084846, 33.669369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134921, 0.467654, -0.873554,
		0.506898, 0.724941, 0.466386,
		0.851382, -0.505728, -0.139243,
		30.324133, 27.933128, 33.627594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210587, 28.791052, 33.589081>,  <29.728165, 28.287138, 33.725067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210587, 28.791052, 33.589081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340275, 28.445873, 33.434055>,  <30.418087, 28.238766, 33.341038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340275, 28.445873, 33.434055>,  <30.210587, 28.791052, 33.589081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340275, 28.445873, 33.434055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175222, 0.457390, -0.871832,
		0.929612, 0.214754, 0.299502,
		0.324219, -0.862946, -0.387566,
		30.437540, 28.186989, 33.317787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777231, 28.987383, 33.070911>,  <30.210587, 28.791052, 33.589081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777231, 28.987383, 33.070911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672218, 28.612282, 32.979965>,  <30.609211, 28.387220, 32.925396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672218, 28.612282, 32.979965>,  <30.777231, 28.987383, 33.070911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672218, 28.612282, 32.979965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061126, 0.251320, -0.965972,
		0.962986, -0.239699, -0.123301,
		-0.262531, -0.937754, -0.227366,
		30.593458, 28.330956, 32.911755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115084, 28.840775, 32.456074>,  <30.777231, 28.987383, 33.070911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115084, 28.840775, 32.456074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816923, 28.574268, 32.447418>,  <30.638027, 28.414366, 32.442223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816923, 28.574268, 32.447418>,  <31.115084, 28.840775, 32.456074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816923, 28.574268, 32.447418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031258, 0.067366, -0.997238,
		0.665882, -0.742667, -0.071041,
		-0.745402, -0.666263, -0.021643,
		30.593302, 28.374390, 32.440926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298428, 28.348314, 31.876348>,  <31.115084, 28.840775, 32.456074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298428, 28.348314, 31.876348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909307, 28.300613, 31.955784>,  <30.675835, 28.271994, 32.003445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909307, 28.300613, 31.955784>,  <31.298428, 28.348314, 31.876348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909307, 28.300613, 31.955784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203329, 0.028866, -0.978685,
		0.110983, -0.992444, -0.052330,
		-0.972800, -0.119258, 0.198589,
		30.617468, 28.264837, 32.015362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143457, 27.780680, 31.438530>,  <31.298428, 28.348314, 31.876348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143457, 27.780680, 31.438530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800377, 27.965771, 31.528183>,  <30.594528, 28.076824, 31.581974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800377, 27.965771, 31.528183>,  <31.143457, 27.780680, 31.438530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800377, 27.965771, 31.528183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249956, 0.005679, -0.968241,
		-0.449303, -0.886483, 0.110791,
		-0.857700, 0.462726, 0.224133,
		30.543066, 28.104588, 31.595423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667631, 27.518961, 30.886368>,  <31.143457, 27.780680, 31.438530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667631, 27.518961, 30.886368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.493305, 27.854191, 31.017635>,  <30.388710, 28.055328, 31.096395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.493305, 27.854191, 31.017635>,  <30.667631, 27.518961, 30.886368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493305, 27.854191, 31.017635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291267, 0.213669, -0.932475,
		-0.851604, -0.501972, 0.150983,
		-0.435816, 0.838075, 0.328169,
		30.362560, 28.105614, 31.116085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951965, 27.505259, 30.602467>,  <30.667631, 27.518961, 30.886368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951965, 27.505259, 30.602467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089748, 27.870823, 30.688370>,  <30.172419, 28.090160, 30.739912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089748, 27.870823, 30.688370>,  <29.951965, 27.505259, 30.602467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089748, 27.870823, 30.688370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108610, 0.266014, -0.957831,
		-0.932498, 0.306606, 0.190890,
		0.344456, 0.913909, 0.214757,
		30.193085, 28.144995, 30.752796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915594, 27.800564, 29.961744>,  <29.951965, 27.505259, 30.602467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915594, 27.800564, 29.961744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073372, 28.113609, 30.154381>,  <30.168037, 28.301437, 30.269962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073372, 28.113609, 30.154381>,  <29.915594, 27.800564, 29.961744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073372, 28.113609, 30.154381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226186, 0.425270, -0.876348,
		-0.890649, 0.454597, -0.009272,
		0.394442, 0.782615, 0.481589,
		30.191704, 28.348394, 30.298857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568203, 28.476093, 29.689522>,  <29.915594, 27.800564, 29.961744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568203, 28.476093, 29.689522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922270, 28.557739, 29.856766>,  <30.134710, 28.606726, 29.957111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922270, 28.557739, 29.856766>,  <29.568203, 28.476093, 29.689522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922270, 28.557739, 29.856766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207823, 0.630555, -0.747803,
		-0.416276, 0.748825, 0.515729,
		0.885169, 0.204113, 0.418108,
		30.187820, 28.618973, 29.982199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.280319, 43.145550, 18.501642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.666445, 43.221161, 18.429600>,  <22.898121, 43.266529, 18.386375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.666445, 43.221161, 18.429600>,  <22.280319, 43.145550, 18.501642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.666445, 43.221161, 18.429600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261051, -0.711167, 0.652758,
		-0.004694, -0.677133, -0.735846,
		0.965314, 0.189029, -0.180104,
		22.956039, 43.277870, 18.375568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.607407, 42.494381, 18.298101>,  <22.280319, 43.145550, 18.501642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.607407, 42.494381, 18.298101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.897415, 42.732044, 18.437428>,  <23.071421, 42.874641, 18.521023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.897415, 42.732044, 18.437428>,  <22.607407, 42.494381, 18.298101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.897415, 42.732044, 18.437428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254071, -0.700802, 0.666577,
		0.640150, -0.394786, -0.659054,
		0.725022, 0.594155, 0.348315,
		23.114922, 42.910290, 18.541922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.280560, 42.018314, 18.341799>,  <22.607407, 42.494381, 18.298101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.280560, 42.018314, 18.341799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.347801, 42.329891, 18.583458>,  <23.388147, 42.516838, 18.728453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.347801, 42.329891, 18.583458>,  <23.280560, 42.018314, 18.341799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.347801, 42.329891, 18.583458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089306, -0.622384, 0.777601,
		0.981715, -0.076765, -0.174190,
		0.168106, 0.778939, 0.604148,
		23.398233, 42.563572, 18.764702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.928389, 41.832748, 18.700794>,  <23.280560, 42.018314, 18.341799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.928389, 41.832748, 18.700794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.754255, 42.118382, 18.920090>,  <23.649776, 42.289761, 19.051668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.754255, 42.118382, 18.920090>,  <23.928389, 41.832748, 18.700794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.754255, 42.118382, 18.920090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182452, -0.526355, 0.830459,
		0.881588, 0.461552, 0.098852,
		-0.435331, 0.714087, 0.548240,
		23.623655, 42.332607, 19.084562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424688, 41.921730, 19.272934>,  <23.928389, 41.832748, 18.700794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424688, 41.921730, 19.272934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.083624, 42.106827, 19.369961>,  <23.878984, 42.217884, 19.428177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.083624, 42.106827, 19.369961>,  <24.424688, 41.921730, 19.272934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.083624, 42.106827, 19.369961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034100, -0.413995, 0.909640,
		0.521351, 0.783886, 0.337218,
		-0.852661, 0.462743, 0.242568,
		23.827826, 42.245651, 19.442732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581839, 42.502972, 19.838907>,  <24.424688, 41.921730, 19.272934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581839, 42.502972, 19.838907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.191418, 42.429134, 19.884949>,  <23.957165, 42.384830, 19.912575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.191418, 42.429134, 19.884949>,  <24.581839, 42.502972, 19.838907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.191418, 42.429134, 19.884949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167960, -0.303203, 0.938007,
		-0.138249, 0.934876, 0.326945,
		-0.976052, -0.184592, 0.115105,
		23.898602, 42.373756, 19.919479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418467, 42.609875, 20.518641>,  <24.581839, 42.502972, 19.838907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418467, 42.609875, 20.518641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.093590, 42.397915, 20.421028>,  <23.898663, 42.270741, 20.362461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.093590, 42.397915, 20.421028>,  <24.418467, 42.609875, 20.518641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.093590, 42.397915, 20.421028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008863, -0.407047, 0.913364,
		-0.583321, 0.743992, 0.325904,
		-0.812194, -0.529896, -0.244033,
		23.849932, 42.238945, 20.347818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975731, 42.574112, 21.114902>,  <24.418467, 42.609875, 20.518641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975731, 42.574112, 21.114902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.804096, 42.285355, 20.897739>,  <23.701115, 42.112099, 20.767441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.804096, 42.285355, 20.897739>,  <23.975731, 42.574112, 21.114902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.804096, 42.285355, 20.897739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166861, -0.527359, 0.833097,
		-0.887717, 0.448061, 0.105827,
		-0.429087, -0.721896, -0.542910,
		23.675369, 42.068787, 20.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.398354, 42.312336, 21.470053>,  <23.975731, 42.574112, 21.114902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.398354, 42.312336, 21.470053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.507053, 42.022461, 21.216763>,  <23.572273, 41.848534, 21.064789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.507053, 42.022461, 21.216763>,  <23.398354, 42.312336, 21.470053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.507053, 42.022461, 21.216763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126523, -0.679181, 0.722984,
		-0.954014, -0.116354, -0.276258,
		0.271751, -0.724690, -0.633227,
		23.588579, 41.805054, 21.026794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.844564, 41.874638, 21.414782>,  <23.398354, 42.312336, 21.470053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.844564, 41.874638, 21.414782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.165833, 41.657581, 21.316425>,  <23.358593, 41.527348, 21.257412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.165833, 41.657581, 21.316425>,  <22.844564, 41.874638, 21.414782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.165833, 41.657581, 21.316425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190801, -0.625299, 0.756701,
		-0.564364, -0.560846, -0.605759,
		0.803173, -0.542634, -0.245887,
		23.406784, 41.494789, 21.242659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.613390, 41.072582, 21.421597>,  <22.844564, 41.874638, 21.414782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.613390, 41.072582, 21.421597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013142, 41.072636, 21.435707>,  <23.252993, 41.072670, 21.444174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013142, 41.072636, 21.435707>,  <22.613390, 41.072582, 21.421597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013142, 41.072636, 21.435707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025221, -0.696394, 0.717216,
		0.024666, -0.717660, -0.695957,
		0.999378, 0.000138, 0.035277,
		23.312954, 41.072678, 21.446291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.741949, 40.333103, 21.470798>,  <22.613390, 41.072582, 21.421597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.741949, 40.333103, 21.470798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.062374, 40.533043, 21.602524>,  <23.254629, 40.653008, 21.681559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.062374, 40.533043, 21.602524>,  <22.741949, 40.333103, 21.470798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.062374, 40.533043, 21.602524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120815, -0.673848, 0.728926,
		0.586261, -0.544130, -0.600184,
		0.801063, 0.499852, 0.329312,
		23.302692, 40.682999, 21.701317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.133863, 39.820156, 21.866657>,  <22.741949, 40.333103, 21.470798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.133863, 39.820156, 21.866657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.294218, 40.164913, 21.990875>,  <23.390430, 40.371765, 22.065407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.294218, 40.164913, 21.990875>,  <23.133863, 39.820156, 21.866657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.294218, 40.164913, 21.990875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072070, -0.367594, 0.927190,
		0.913289, -0.349316, -0.209479,
		0.400885, 0.861890, 0.310544,
		23.414484, 40.423481, 22.084038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606411, 39.604961, 22.234108>,  <23.133863, 39.820156, 21.866657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606411, 39.604961, 22.234108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.531309, 39.975304, 22.365280>,  <23.486248, 40.197510, 22.443983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.531309, 39.975304, 22.365280>,  <23.606411, 39.604961, 22.234108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.531309, 39.975304, 22.365280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010469, -0.331964, 0.943234,
		0.982160, 0.180529, 0.052634,
		-0.187754, 0.925856, 0.327932,
		23.474983, 40.253059, 22.463659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.073109, 39.738228, 22.810509>,  <23.606411, 39.604961, 22.234108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.073109, 39.738228, 22.810509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.781635, 40.006687, 22.865044>,  <23.606752, 40.167763, 22.897764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.781635, 40.006687, 22.865044>,  <24.073109, 39.738228, 22.810509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.781635, 40.006687, 22.865044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062915, -0.263835, 0.962514,
		0.681956, 0.692789, 0.234477,
		-0.728682, 0.671144, 0.136337,
		23.563030, 40.208031, 22.905945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.184416, 39.977493, 23.514692>,  <24.073109, 39.738228, 22.810509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.184416, 39.977493, 23.514692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.818727, 40.107849, 23.418362>,  <23.599314, 40.186062, 23.360563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.818727, 40.107849, 23.418362>,  <24.184416, 39.977493, 23.514692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.818727, 40.107849, 23.418362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369674, -0.427349, 0.825053,
		0.165959, 0.843308, 0.511165,
		-0.914220, 0.325890, -0.240827,
		23.544462, 40.205616, 23.346113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.963528, 40.324429, 24.062021>,  <24.184416, 39.977493, 23.514692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.963528, 40.324429, 24.062021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.621714, 40.259319, 23.864731>,  <23.416626, 40.220253, 23.746357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.621714, 40.259319, 23.864731>,  <23.963528, 40.324429, 24.062021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.621714, 40.259319, 23.864731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446421, -0.255198, 0.857661,
		-0.265478, 0.953089, 0.145409,
		-0.854535, -0.162776, -0.493228,
		23.365353, 40.210487, 23.716763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.421774, 40.706749, 24.429596>,  <23.963528, 40.324429, 24.062021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.421774, 40.706749, 24.429596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.253536, 40.396847, 24.240768>,  <23.152594, 40.210903, 24.127472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.253536, 40.396847, 24.240768>,  <23.421774, 40.706749, 24.429596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.253536, 40.396847, 24.240768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441657, -0.279664, 0.852483,
		-0.792489, 0.567043, -0.224552,
		-0.420596, -0.774758, -0.472069,
		23.127357, 40.164421, 24.099148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684978, 40.683319, 24.752756>,  <23.421774, 40.706749, 24.429596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684978, 40.683319, 24.752756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.718597, 40.329575, 24.569088>,  <22.738770, 40.117329, 24.458887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.718597, 40.329575, 24.569088>,  <22.684978, 40.683319, 24.752756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.718597, 40.329575, 24.569088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422587, -0.448946, 0.787317,
		-0.902417, 0.127869, -0.411452,
		0.084047, -0.884362, -0.459172,
		22.743811, 40.064266, 24.431335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.035627, 40.370846, 24.843853>,  <22.684978, 40.683319, 24.752756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.035627, 40.370846, 24.843853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.303780, 40.079678, 24.786278>,  <22.464672, 39.904976, 24.751732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.303780, 40.079678, 24.786278>,  <22.035627, 40.370846, 24.843853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.303780, 40.079678, 24.786278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340043, -0.473796, 0.812335,
		-0.659514, -0.495629, -0.565149,
		0.670382, -0.727921, -0.143940,
		22.504894, 39.861301, 24.743095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720051, 39.773022, 25.070322>,  <22.035627, 40.370846, 24.843853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720051, 39.773022, 25.070322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.113094, 39.703541, 25.096588>,  <22.348921, 39.661854, 25.112349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.113094, 39.703541, 25.096588>,  <21.720051, 39.773022, 25.070322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.113094, 39.703541, 25.096588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125120, -0.357981, 0.925308,
		-0.137219, -0.917430, -0.373488,
		0.982607, -0.173701, 0.065667,
		22.407877, 39.651432, 25.116287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.033707, 40.047520, 25.033293>,  <21.720051, 39.773022, 25.070322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.033707, 40.047520, 25.033293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819750, 39.723114, 24.938511>,  <20.691376, 39.528469, 24.881641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819750, 39.723114, 24.938511>,  <21.033707, 40.047520, 25.033293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819750, 39.723114, 24.938511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001754, 0.279383, -0.960178,
		0.844919, -0.514007, -0.148017,
		-0.534892, -0.811013, -0.236957,
		20.659283, 39.479809, 24.867424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308733, 39.715370, 24.467804>,  <21.033707, 40.047520, 25.033293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308733, 39.715370, 24.467804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.931128, 39.583542, 24.461765>,  <20.704565, 39.504444, 24.458143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.931128, 39.583542, 24.461765>,  <21.308733, 39.715370, 24.467804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931128, 39.583542, 24.461765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035226, 0.146185, -0.988630,
		0.328027, -0.932746, -0.149609,
		-0.944011, -0.329567, -0.015096,
		20.647924, 39.484673, 24.457237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321350, 39.145348, 23.947418>,  <21.308733, 39.715370, 24.467804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321350, 39.145348, 23.947418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.949564, 39.283447, 23.999409>,  <20.726492, 39.366306, 24.030603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.949564, 39.283447, 23.999409>,  <21.321350, 39.145348, 23.947418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.949564, 39.283447, 23.999409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107151, 0.084482, -0.990647,
		-0.353004, -0.934700, -0.041529,
		-0.929466, 0.345252, 0.129976,
		20.670725, 39.387024, 24.038401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.986128, 38.817741, 23.437086>,  <21.321350, 39.145348, 23.947418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.986128, 38.817741, 23.437086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.746994, 39.123020, 23.535168>,  <20.603514, 39.306187, 23.594017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.746994, 39.123020, 23.535168>,  <20.986128, 38.817741, 23.437086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.746994, 39.123020, 23.535168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019106, 0.292233, -0.956156,
		-0.801390, -0.576310, -0.160126,
		-0.597837, 0.763195, 0.245203,
		20.567642, 39.351978, 23.608728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314651, 38.778255, 22.955645>,  <20.986128, 38.817741, 23.437086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314651, 38.778255, 22.955645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.381138, 39.148678, 23.091164>,  <20.421030, 39.370934, 23.172476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.381138, 39.148678, 23.091164>,  <20.314651, 38.778255, 22.955645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.381138, 39.148678, 23.091164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078496, 0.354913, -0.931598,
		-0.982960, 0.128253, 0.131684,
		0.166217, 0.926060, 0.338798,
		20.431004, 39.426495, 23.192802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772606, 39.187992, 22.535297>,  <20.314651, 38.778255, 22.955645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772606, 39.187992, 22.535297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.016111, 39.472065, 22.676743>,  <20.162214, 39.642509, 22.761610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.016111, 39.472065, 22.676743>,  <19.772606, 39.187992, 22.535297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016111, 39.472065, 22.676743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028917, 0.465288, -0.884687,
		-0.792825, 0.528339, 0.303787,
		0.608763, 0.710187, 0.353614,
		20.198740, 39.685120, 22.782827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450644, 39.779987, 22.308661>,  <19.772606, 39.187992, 22.535297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450644, 39.779987, 22.308661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822615, 39.887363, 22.409199>,  <20.045797, 39.951790, 22.469522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822615, 39.887363, 22.409199>,  <19.450644, 39.779987, 22.308661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822615, 39.887363, 22.409199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035909, 0.613933, -0.788541,
		-0.365988, 0.742311, 0.561274,
		0.929926, 0.268442, 0.251348,
		20.101593, 39.967896, 22.484604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.372438, 40.622784, 22.284000>,  <19.450644, 39.779987, 22.308661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.372438, 40.622784, 22.284000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.749254, 40.492813, 22.250561>,  <19.975344, 40.414833, 22.230497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.749254, 40.492813, 22.250561>,  <19.372438, 40.622784, 22.284000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.749254, 40.492813, 22.250561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146057, 0.621492, -0.769685,
		0.302046, 0.712862, 0.632927,
		0.942038, -0.324924, -0.083600,
		20.031866, 40.395336, 22.225481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804996, 41.228371, 22.195253>,  <19.372438, 40.622784, 22.284000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804996, 41.228371, 22.195253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.018110, 40.917534, 22.061230>,  <20.145979, 40.731030, 21.980816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.018110, 40.917534, 22.061230>,  <19.804996, 41.228371, 22.195253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018110, 40.917534, 22.061230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293591, 0.541075, -0.788062,
		0.793691, 0.321498, 0.516425,
		0.532785, -0.777095, -0.335058,
		20.177946, 40.684406, 21.960712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494717, 41.498260, 22.073505>,  <19.804996, 41.228371, 22.195253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494717, 41.498260, 22.073505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.415506, 41.175110, 21.851471>,  <20.367979, 40.981220, 21.718250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.415506, 41.175110, 21.851471>,  <20.494717, 41.498260, 22.073505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.415506, 41.175110, 21.851471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086581, 0.549672, -0.830882,
		0.976365, -0.212596, -0.038903,
		-0.198026, -0.807876, -0.555087,
		20.356098, 40.932747, 21.684944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932480, 41.509235, 21.595798>,  <20.494717, 41.498260, 22.073505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932480, 41.509235, 21.595798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.649378, 41.269409, 21.446342>,  <20.479517, 41.125515, 21.356668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.649378, 41.269409, 21.446342>,  <20.932480, 41.509235, 21.595798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649378, 41.269409, 21.446342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017522, 0.543627, -0.839144,
		0.706239, -0.587362, -0.395261,
		-0.707756, -0.599562, -0.373639,
		20.437052, 41.089542, 21.334251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.199736, 41.402699, 20.897528>,  <20.932480, 41.509235, 21.595798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.199736, 41.402699, 20.897528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.809517, 41.316063, 20.912479>,  <20.575386, 41.264084, 20.921452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.809517, 41.316063, 20.912479>,  <21.199736, 41.402699, 20.897528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809517, 41.316063, 20.912479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149979, 0.531662, -0.833572,
		0.160667, -0.818795, -0.551145,
		-0.975547, -0.216587, 0.037381,
		20.516853, 41.251087, 20.923695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037350, 41.435020, 20.195848>,  <21.199736, 41.402699, 20.897528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037350, 41.435020, 20.195848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.675955, 41.467056, 20.364273>,  <20.459118, 41.486279, 20.465328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.675955, 41.467056, 20.364273>,  <21.037350, 41.435020, 20.195848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675955, 41.467056, 20.364273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292417, 0.603074, -0.742155,
		-0.313369, -0.793655, -0.521452,
		-0.903489, 0.080087, 0.421062,
		20.404907, 41.491081, 20.490591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.558071, 41.382919, 19.733620>,  <21.037350, 41.435020, 20.195848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.558071, 41.382919, 19.733620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.351074, 41.571590, 20.019199>,  <20.226875, 41.684792, 20.190548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.351074, 41.571590, 20.019199>,  <20.558071, 41.382919, 19.733620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351074, 41.571590, 20.019199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372678, 0.626830, -0.684248,
		-0.770267, -0.620167, -0.148598,
		-0.517494, 0.471675, 0.713949,
		20.195826, 41.713093, 20.233385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891523, 41.436726, 19.469542>,  <20.558071, 41.382919, 19.733620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891523, 41.436726, 19.469542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.933220, 41.723873, 19.744873>,  <19.958237, 41.896164, 19.910072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.933220, 41.723873, 19.744873>,  <19.891523, 41.436726, 19.469542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933220, 41.723873, 19.744873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385986, 0.667051, -0.637227,
		-0.916596, -0.199260, 0.346622,
		0.104241, 0.717871, 0.688328,
		19.964493, 41.939236, 19.951372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310263, 41.848911, 19.304590>,  <19.891523, 41.436726, 19.469542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310263, 41.848911, 19.304590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.535053, 42.089645, 19.531563>,  <19.669928, 42.234085, 19.667747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.535053, 42.089645, 19.531563>,  <19.310263, 41.848911, 19.304590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.535053, 42.089645, 19.531563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217080, 0.769270, -0.600915,
		-0.798160, 0.214522, 0.562958,
		0.561976, 0.601833, 0.567432,
		19.703646, 42.270195, 19.701792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.970774, 42.529816, 19.308016>,  <19.310263, 41.848911, 19.304590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.970774, 42.529816, 19.308016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.346724, 42.606506, 19.421066>,  <19.572294, 42.652519, 19.488897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.346724, 42.606506, 19.421066>,  <18.970774, 42.529816, 19.308016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.346724, 42.606506, 19.421066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016229, 0.801550, -0.597708,
		-0.341135, 0.566357, 0.750244,
		0.939874, 0.191724, 0.282628,
		19.628685, 42.664024, 19.505856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981445, 43.268490, 19.411434>,  <18.970774, 42.529816, 19.308016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.981445, 43.268490, 19.411434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.358711, 43.151958, 19.347473>,  <19.585072, 43.082039, 19.309097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.358711, 43.151958, 19.347473>,  <18.981445, 43.268490, 19.411434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358711, 43.151958, 19.347473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134994, 0.775530, -0.616709,
		0.303673, 0.560072, 0.770780,
		0.943164, -0.291329, -0.159901,
		19.641661, 43.064560, 19.299503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425371, 43.915474, 19.449726>,  <18.981445, 43.268490, 19.411434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425371, 43.915474, 19.449726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.632153, 43.639065, 19.247639>,  <19.756222, 43.473221, 19.126387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.632153, 43.639065, 19.247639>,  <19.425371, 43.915474, 19.449726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632153, 43.639065, 19.247639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324689, 0.704384, -0.631206,
		0.792045, 0.162266, 0.588502,
		0.516954, -0.691023, -0.505218,
		19.787239, 43.431759, 19.096073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.068058, 44.276794, 19.336597>,  <19.425371, 43.915474, 19.449726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.068058, 44.276794, 19.336597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.113461, 43.973137, 19.080219>,  <20.140701, 43.790943, 18.926392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.113461, 43.973137, 19.080219>,  <20.068058, 44.276794, 19.336597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113461, 43.973137, 19.080219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413771, 0.622626, -0.664177,
		0.903278, -0.189817, 0.384785,
		0.113505, -0.759148, -0.640945,
		20.147512, 43.745392, 18.887936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.801577, 44.247047, 19.219307>,  <20.068058, 44.276794, 19.336597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.801577, 44.247047, 19.219307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.590092, 44.084862, 18.921028>,  <20.463202, 43.987549, 18.742062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.590092, 44.084862, 18.921028>,  <20.801577, 44.247047, 19.219307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.590092, 44.084862, 18.921028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397744, 0.657754, -0.639655,
		0.749844, -0.634788, -0.186489,
		-0.528710, -0.405466, -0.745696,
		20.431479, 43.963223, 18.697319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.659657, 32.210861, 27.117538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029766, 32.339733, 27.197601>,  <27.251833, 32.417057, 27.245638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029766, 32.339733, 27.197601>,  <26.659657, 32.210861, 27.117538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029766, 32.339733, 27.197601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232352, 0.898566, -0.372279,
		-0.299796, 0.297954, 0.906281,
		0.925276, 0.322184, 0.200156,
		27.307348, 32.436390, 27.257648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543385, 32.931061, 27.305151>,  <26.659657, 32.210861, 27.117538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543385, 32.931061, 27.305151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935171, 32.906921, 27.228203>,  <27.170242, 32.892437, 27.182034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935171, 32.906921, 27.228203>,  <26.543385, 32.931061, 27.305151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935171, 32.906921, 27.228203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046932, 0.859685, -0.508663,
		0.196078, 0.507246, 0.839199,
		0.979464, -0.060352, -0.192372,
		27.229010, 32.888817, 27.170492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813894, 33.638699, 27.339390>,  <26.543385, 32.931061, 27.305151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813894, 33.638699, 27.339390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073416, 33.415760, 27.132153>,  <27.229128, 33.281998, 27.007811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073416, 33.415760, 27.132153>,  <26.813894, 33.638699, 27.339390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073416, 33.415760, 27.132153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012481, 0.672957, -0.739576,
		0.760853, 0.486306, 0.429661,
		0.648804, -0.557346, -0.518091,
		27.268057, 33.248558, 26.976725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376158, 34.115353, 27.173189>,  <26.813894, 33.638699, 27.339390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376158, 34.115353, 27.173189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414097, 33.821507, 26.904461>,  <27.436861, 33.645199, 26.743223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414097, 33.821507, 26.904461>,  <27.376158, 34.115353, 27.173189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414097, 33.821507, 26.904461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152372, 0.677624, -0.719450,
		0.983761, -0.034127, 0.176208,
		0.094850, -0.734616, -0.671821,
		27.442553, 33.601120, 26.702915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941105, 34.287033, 26.811943>,  <27.376158, 34.115353, 27.173189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941105, 34.287033, 26.811943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771021, 34.051846, 26.536701>,  <27.668970, 33.910732, 26.371555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771021, 34.051846, 26.536701>,  <27.941105, 34.287033, 26.811943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771021, 34.051846, 26.536701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171458, 0.694164, -0.699098,
		0.888707, -0.415244, -0.194353,
		-0.425209, -0.587970, -0.688105,
		27.643457, 33.875454, 26.330269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341267, 34.433651, 26.217823>,  <27.941105, 34.287033, 26.811943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341267, 34.433651, 26.217823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006720, 34.259777, 26.084236>,  <27.805990, 34.155453, 26.004084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006720, 34.259777, 26.084236>,  <28.341267, 34.433651, 26.217823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006720, 34.259777, 26.084236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039202, 0.560250, -0.827395,
		0.546747, -0.705108, -0.451542,
		-0.836379, -0.434675, -0.333957,
		27.755810, 34.129372, 25.984047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505268, 34.172108, 25.519686>,  <28.341267, 34.433651, 26.217823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505268, 34.172108, 25.519686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113255, 34.236378, 25.566528>,  <27.878046, 34.274940, 25.594635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113255, 34.236378, 25.566528>,  <28.505268, 34.172108, 25.519686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113255, 34.236378, 25.566528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004117, 0.605273, -0.796007,
		-0.198782, -0.779633, -0.593850,
		-0.980035, 0.160677, 0.117107,
		27.819244, 34.284580, 25.601660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250233, 34.019855, 24.860287>,  <28.505268, 34.172108, 25.519686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250233, 34.019855, 24.860287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973951, 34.240433, 25.047405>,  <27.808182, 34.372780, 25.159676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973951, 34.240433, 25.047405>,  <28.250233, 34.019855, 24.860287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973951, 34.240433, 25.047405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005909, 0.642573, -0.766201,
		-0.723113, -0.531983, -0.440570,
		-0.690704, 0.551447, 0.467797,
		27.766741, 34.405869, 25.187744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867153, 34.144314, 24.293394>,  <28.250233, 34.019855, 24.860287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867153, 34.144314, 24.293394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758932, 34.417706, 24.564587>,  <27.694000, 34.581741, 24.727303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758932, 34.417706, 24.564587>,  <27.867153, 34.144314, 24.293394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758932, 34.417706, 24.564587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109489, 0.677831, -0.727019,
		-0.956459, -0.270928, -0.108556,
		-0.270552, 0.683479, 0.677981,
		27.677767, 34.622749, 24.767981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270748, 34.403072, 23.971617>,  <27.867153, 34.144314, 24.293394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270748, 34.403072, 23.971617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366932, 34.688393, 24.234943>,  <27.424643, 34.859585, 24.392939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366932, 34.688393, 24.234943>,  <27.270748, 34.403072, 23.971617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366932, 34.688393, 24.234943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083064, 0.690848, -0.718213,
		-0.967099, 0.118017, 0.225369,
		0.240457, 0.713303, 0.658315,
		27.439070, 34.902382, 24.432438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780447, 34.924465, 23.865797>,  <27.270748, 34.403072, 23.971617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780447, 34.924465, 23.865797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075689, 35.117413, 24.054485>,  <27.252834, 35.233181, 24.167698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075689, 35.117413, 24.054485>,  <26.780447, 34.924465, 23.865797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075689, 35.117413, 24.054485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117576, 0.780438, -0.614078,
		-0.664360, 0.397793, 0.632762,
		0.738107, 0.482366, 0.471721,
		27.297121, 35.262123, 24.196001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550262, 35.640656, 23.749386>,  <26.780447, 34.924465, 23.865797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550262, 35.640656, 23.749386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931240, 35.634769, 23.871128>,  <27.159826, 35.631237, 23.944174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931240, 35.634769, 23.871128>,  <26.550262, 35.640656, 23.749386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931240, 35.634769, 23.871128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195377, 0.795992, -0.572909,
		-0.233833, 0.605128, 0.761014,
		0.952444, -0.014720, 0.304358,
		27.216972, 35.630352, 23.962435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779150, 36.338367, 23.939085>,  <26.550262, 35.640656, 23.749386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779150, 36.338367, 23.939085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085077, 36.131939, 23.784828>,  <27.268633, 36.008080, 23.692274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085077, 36.131939, 23.784828>,  <26.779150, 36.338367, 23.939085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085077, 36.131939, 23.784828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258780, 0.794274, -0.549693,
		0.589988, 0.320619, 0.741025,
		0.764818, -0.516075, -0.385642,
		27.314524, 35.977116, 23.669136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329140, 36.790901, 23.942282>,  <26.779150, 36.338367, 23.939085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329140, 36.790901, 23.942282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351637, 36.518631, 23.650112>,  <27.365135, 36.355270, 23.474810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351637, 36.518631, 23.650112>,  <27.329140, 36.790901, 23.942282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351637, 36.518631, 23.650112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206007, 0.723753, -0.658591,
		0.976933, -0.113432, 0.180930,
		0.056243, -0.680672, -0.730426,
		27.368509, 36.314430, 23.430984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155148, 37.485336, 24.074404>,  <27.329140, 36.790901, 23.942282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155148, 37.485336, 24.074404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141394, 37.784973, 24.339031>,  <27.133141, 37.964756, 24.497808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141394, 37.784973, 24.339031>,  <27.155148, 37.485336, 24.074404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141394, 37.784973, 24.339031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641269, -0.491187, 0.589500,
		0.766545, 0.444516, -0.463480,
		-0.034386, 0.749094, 0.661571,
		27.131079, 38.009701, 24.537502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852211, 37.779579, 24.202354>,  <27.155148, 37.485336, 24.074404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852211, 37.779579, 24.202354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630905, 37.838871, 24.530239>,  <27.498121, 37.874447, 24.726971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630905, 37.838871, 24.530239>,  <27.852211, 37.779579, 24.202354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630905, 37.838871, 24.530239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726097, -0.396479, 0.561772,
		0.408268, 0.905999, 0.111731,
		-0.553263, 0.148226, 0.819713,
		27.464926, 37.883339, 24.776154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460188, 37.926582, 24.763279>,  <27.852211, 37.779579, 24.202354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460188, 37.926582, 24.763279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137262, 37.879288, 24.994541>,  <27.943506, 37.850910, 25.133299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137262, 37.879288, 24.994541>,  <28.460188, 37.926582, 24.763279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137262, 37.879288, 24.994541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575451, -0.374811, 0.726893,
		0.130756, 0.919531, 0.370628,
		-0.807316, -0.118233, 0.578154,
		27.895067, 37.843819, 25.167988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755989, 38.112904, 25.389574>,  <28.460188, 37.926582, 24.763279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755989, 38.112904, 25.389574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422424, 37.938427, 25.524822>,  <28.222286, 37.833740, 25.605972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422424, 37.938427, 25.524822>,  <28.755989, 38.112904, 25.389574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422424, 37.938427, 25.524822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528930, -0.456744, 0.715275,
		-0.157564, 0.775318, 0.611601,
		-0.833911, -0.436195, 0.338122,
		28.172251, 37.807568, 25.626259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703991, 38.261158, 26.135937>,  <28.755989, 38.112904, 25.389574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703991, 38.261158, 26.135937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479490, 37.943417, 26.042988>,  <28.344790, 37.752769, 25.987219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479490, 37.943417, 26.042988>,  <28.703991, 38.261158, 26.135937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479490, 37.943417, 26.042988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449035, -0.528103, 0.720746,
		-0.695245, 0.300176, 0.653091,
		-0.561250, -0.794356, -0.232371,
		28.311115, 37.705109, 25.973276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433104, 38.050442, 26.842419>,  <28.703991, 38.261158, 26.135937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433104, 38.050442, 26.842419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418318, 37.745880, 26.583530>,  <28.409447, 37.563141, 26.428198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418318, 37.745880, 26.583530>,  <28.433104, 38.050442, 26.842419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418318, 37.745880, 26.583530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407626, -0.602820, 0.685893,
		-0.912401, -0.238469, 0.332653,
		-0.036965, -0.761407, -0.647220,
		28.407228, 37.517460, 26.389364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143845, 37.523254, 27.205042>,  <28.433104, 38.050442, 26.842419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143845, 37.523254, 27.205042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337137, 37.336353, 26.908890>,  <28.453114, 37.224213, 26.731197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337137, 37.336353, 26.908890>,  <28.143845, 37.523254, 27.205042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337137, 37.336353, 26.908890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312682, -0.697791, 0.644451,
		-0.817752, -0.542922, -0.191093,
		0.483230, -0.467250, -0.740382,
		28.482107, 37.196178, 26.686775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010637, 36.856037, 27.360826>,  <28.143845, 37.523254, 27.205042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010637, 36.856037, 27.360826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330656, 36.824047, 27.122993>,  <28.522667, 36.804852, 26.980293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330656, 36.824047, 27.122993>,  <28.010637, 36.856037, 27.360826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330656, 36.824047, 27.122993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338783, -0.757707, 0.557769,
		-0.495127, -0.647676, -0.579107,
		0.800047, -0.079975, -0.594583,
		28.570669, 36.800053, 26.944618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007669, 36.225124, 27.103521>,  <28.010637, 36.856037, 27.360826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007669, 36.225124, 27.103521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391388, 36.324871, 27.050507>,  <28.621620, 36.384720, 27.018698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391388, 36.324871, 27.050507>,  <28.007669, 36.225124, 27.103521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391388, 36.324871, 27.050507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281994, -0.820757, 0.496828,
		0.015109, -0.513981, -0.857669,
		0.959297, 0.249364, -0.132539,
		28.679176, 36.399681, 27.010744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294140, 35.680786, 26.927353>,  <28.007669, 36.225124, 27.103521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294140, 35.680786, 26.927353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611490, 35.886303, 27.057934>,  <28.801901, 36.009613, 27.136282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611490, 35.886303, 27.057934>,  <28.294140, 35.680786, 26.927353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611490, 35.886303, 27.057934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301243, -0.797398, 0.522885,
		0.528969, -0.316503, -0.787412,
		0.793376, 0.513792, 0.326455,
		28.849503, 36.040440, 27.155870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801638, 35.183617, 26.872486>,  <28.294140, 35.680786, 26.927353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801638, 35.183617, 26.872486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903889, 35.464230, 27.138569>,  <28.965239, 35.632599, 27.298220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903889, 35.464230, 27.138569>,  <28.801638, 35.183617, 26.872486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903889, 35.464230, 27.138569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331095, -0.709987, 0.621526,
		0.908312, 0.061370, -0.413766,
		0.255625, 0.701536, 0.665209,
		28.980576, 35.674690, 27.338131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314835, 34.826580, 27.114325>,  <28.801638, 35.183617, 26.872486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314835, 34.826580, 27.114325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222223, 35.104694, 27.386494>,  <29.166656, 35.271564, 27.549795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222223, 35.104694, 27.386494>,  <29.314835, 34.826580, 27.114325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222223, 35.104694, 27.386494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190652, -0.653434, 0.732581,
		0.953963, 0.299338, 0.018732,
		-0.231530, 0.695284, 0.680422,
		29.152763, 35.313278, 27.590620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841093, 34.871315, 27.616093>,  <29.314835, 34.826580, 27.114325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841093, 34.871315, 27.616093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536358, 35.040585, 27.812267>,  <29.353518, 35.142147, 27.929972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536358, 35.040585, 27.812267>,  <29.841093, 34.871315, 27.616093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536358, 35.040585, 27.812267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175208, -0.594280, 0.784942,
		0.623625, 0.683925, 0.378600,
		-0.761836, 0.423176, 0.490437,
		29.307808, 35.167538, 27.959398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057392, 35.253479, 28.305935>,  <29.841093, 34.871315, 27.616093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057392, 35.253479, 28.305935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681814, 35.115891, 28.309090>,  <29.456467, 35.033337, 28.310982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681814, 35.115891, 28.309090>,  <30.057392, 35.253479, 28.305935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681814, 35.115891, 28.309090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221715, -0.587371, 0.778356,
		-0.263103, 0.732583, 0.627774,
		-0.938946, -0.343974, 0.007886,
		29.400131, 35.012699, 28.311455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807392, 35.144764, 28.266878>,  <30.057392, 35.253479, 28.305935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807392, 35.144764, 28.266878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165247, 34.984062, 28.345074>,  <31.379959, 34.887642, 28.391991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165247, 34.984062, 28.345074>,  <30.807392, 35.144764, 28.266878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165247, 34.984062, 28.345074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393340, 0.500686, -0.771101,
		0.211916, 0.766749, 0.605959,
		0.894637, -0.401757, 0.195490,
		31.433638, 34.863537, 28.403721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334785, 35.653652, 28.109482>,  <30.807392, 35.144764, 28.266878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334785, 35.653652, 28.109482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588974, 35.347870, 28.152908>,  <31.741488, 35.164402, 28.178965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588974, 35.347870, 28.152908>,  <31.334785, 35.653652, 28.109482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588974, 35.347870, 28.152908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518985, 0.318778, -0.793117,
		0.571693, 0.560347, 0.599315,
		0.635469, -0.764455, 0.108569,
		31.779615, 35.118534, 28.185478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036613, 35.920475, 28.060062>,  <31.334785, 35.653652, 28.109482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036613, 35.920475, 28.060062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098469, 35.533321, 27.980785>,  <32.135582, 35.301029, 27.933218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098469, 35.533321, 27.980785>,  <32.036613, 35.920475, 28.060062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098469, 35.533321, 27.980785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427615, 0.246413, -0.869727,
		0.890636, 0.049742, 0.451988,
		0.154638, -0.967888, -0.198194,
		32.144859, 35.242954, 27.921328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795937, 35.758541, 27.886314>,  <32.036613, 35.920475, 28.060062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795937, 35.758541, 27.886314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600517, 35.439011, 27.745922>,  <32.483265, 35.247292, 27.661688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600517, 35.439011, 27.745922>,  <32.795937, 35.758541, 27.886314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600517, 35.439011, 27.745922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560827, 0.020659, -0.827676,
		0.668423, -0.601201, 0.437913,
		-0.488553, -0.798830, -0.350979,
		32.453953, 35.199360, 27.640629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281761, 35.207844, 27.733242>,  <32.795937, 35.758541, 27.886314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281761, 35.207844, 27.733242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955917, 35.115860, 27.520252>,  <32.760410, 35.060669, 27.392458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955917, 35.115860, 27.520252>,  <33.281761, 35.207844, 27.733242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955917, 35.115860, 27.520252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534455, 0.059033, -0.843133,
		0.225323, -0.971407, 0.074816,
		-0.814609, -0.229963, -0.532475,
		32.711536, 35.046871, 27.360510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504826, 34.660431, 27.151119>,  <33.281761, 35.207844, 27.733242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504826, 34.660431, 27.151119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178337, 34.850292, 27.019371>,  <32.982445, 34.964211, 26.940323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178337, 34.850292, 27.019371>,  <33.504826, 34.660431, 27.151119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178337, 34.850292, 27.019371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425392, 0.108000, -0.898542,
		-0.390924, -0.873521, -0.290066,
		-0.816223, 0.474654, -0.329369,
		32.933472, 34.992687, 26.920561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515072, 34.452187, 26.411390>,  <33.504826, 34.660431, 27.151119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515072, 34.452187, 26.411390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273628, 34.769722, 26.440979>,  <33.128761, 34.960243, 26.458733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273628, 34.769722, 26.440979>,  <33.515072, 34.452187, 26.411390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273628, 34.769722, 26.440979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219170, 0.254417, -0.941932,
		-0.766565, -0.552345, -0.327555,
		-0.603608, 0.793843, 0.073970,
		33.092545, 35.007874, 26.463169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279572, 34.567719, 25.745609>,  <33.515072, 34.452187, 26.411390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279572, 34.567719, 25.745609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207027, 34.921902, 25.916756>,  <33.163502, 35.134411, 26.019444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207027, 34.921902, 25.916756>,  <33.279572, 34.567719, 25.745609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207027, 34.921902, 25.916756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307271, 0.464316, -0.830659,
		-0.934181, -0.019175, -0.356283,
		-0.181356, 0.885462, 0.427864,
		33.152622, 35.187542, 26.045115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960384, 34.953716, 25.220678>,  <33.279572, 34.567719, 25.745609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960384, 34.953716, 25.220678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119713, 35.217381, 25.475815>,  <33.215309, 35.375580, 25.628897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119713, 35.217381, 25.475815>,  <32.960384, 34.953716, 25.220678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119713, 35.217381, 25.475815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345998, 0.536039, -0.770031,
		-0.849485, 0.527412, -0.014554,
		0.398322, 0.659165, 0.637841,
		33.239208, 35.415131, 25.667168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903923, 35.534382, 24.912451>,  <32.960384, 34.953716, 25.220678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903923, 35.534382, 24.912451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159077, 35.658405, 25.194435>,  <33.312168, 35.732819, 25.363626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159077, 35.658405, 25.194435>,  <32.903923, 35.534382, 24.912451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159077, 35.658405, 25.194435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362350, 0.686892, -0.629985,
		-0.679566, 0.657299, 0.325806,
		0.637882, 0.310060, 0.704961,
		33.350441, 35.751423, 25.405924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794270, 36.299202, 24.963697>,  <32.903923, 35.534382, 24.912451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794270, 36.299202, 24.963697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150166, 36.174915, 25.097454>,  <33.363705, 36.100342, 25.177708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150166, 36.174915, 25.097454>,  <32.794270, 36.299202, 24.963697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150166, 36.174915, 25.097454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453893, 0.679913, -0.575934,
		-0.048405, 0.664209, 0.745978,
		0.889741, -0.310716, 0.334391,
		33.417088, 36.081699, 25.197771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167976, 36.870220, 25.069473>,  <32.794270, 36.299202, 24.963697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167976, 36.870220, 25.069473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456322, 36.598415, 25.014885>,  <33.629330, 36.435333, 24.982132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456322, 36.598415, 25.014885>,  <33.167976, 36.870220, 25.069473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456322, 36.598415, 25.014885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389022, 0.559660, -0.731740,
		0.573602, 0.474393, 0.667781,
		0.720862, -0.679509, -0.136473,
		33.672581, 36.394562, 24.973944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.566475, 34.645370, 32.134861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.842506, 34.368977, 32.048763>,  <31.008125, 34.203140, 31.997105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.842506, 34.368977, 32.048763>,  <30.566475, 34.645370, 32.134861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842506, 34.368977, 32.048763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162740, 0.437940, -0.884152,
		0.705201, 0.575105, 0.414664,
		0.690078, -0.690987, -0.215244,
		31.049530, 34.161682, 31.984190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131256, 34.993835, 31.798517>,  <30.566475, 34.645370, 32.134861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131256, 34.993835, 31.798517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.166042, 34.612007, 31.684513>,  <31.186914, 34.382912, 31.616112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.166042, 34.612007, 31.684513>,  <31.131256, 34.993835, 31.798517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166042, 34.612007, 31.684513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371822, 0.296521, -0.879673,
		0.924222, -0.029470, 0.380718,
		0.086967, -0.954572, -0.285008,
		31.192133, 34.325634, 31.599010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668190, 34.981812, 31.328836>,  <31.131256, 34.993835, 31.798517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668190, 34.981812, 31.328836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.475540, 34.638721, 31.256893>,  <31.359949, 34.432869, 31.213728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.475540, 34.638721, 31.256893>,  <31.668190, 34.981812, 31.328836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475540, 34.638721, 31.256893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128120, 0.134113, -0.982649,
		0.866962, -0.496312, 0.045299,
		-0.481625, -0.857722, -0.179858,
		31.331053, 34.381405, 31.202936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119591, 34.662769, 30.930199>,  <31.668190, 34.981812, 31.328836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119591, 34.662769, 30.930199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791132, 34.443794, 30.865654>,  <31.594057, 34.312408, 30.826927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791132, 34.443794, 30.865654>,  <32.119591, 34.662769, 30.930199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791132, 34.443794, 30.865654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193668, -0.001317, -0.981066,
		0.536858, -0.836847, 0.107102,
		-0.821143, -0.547436, -0.161363,
		31.544788, 34.279564, 30.817245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286518, 34.022583, 30.414316>,  <32.119591, 34.662769, 30.930199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286518, 34.022583, 30.414316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.891356, 34.082874, 30.399723>,  <31.654259, 34.119049, 30.390966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.891356, 34.082874, 30.399723>,  <32.286518, 34.022583, 30.414316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891356, 34.082874, 30.399723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028452, -0.055109, -0.998075,
		-0.152450, -0.987038, 0.050153,
		-0.987902, 0.150729, -0.036485,
		31.594984, 34.128094, 30.388777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034039, 33.598007, 29.837513>,  <32.286518, 34.022583, 30.414316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034039, 33.598007, 29.837513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.745539, 33.870777, 29.886147>,  <31.572439, 34.034439, 29.915327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.745539, 33.870777, 29.886147>,  <32.034039, 33.598007, 29.837513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745539, 33.870777, 29.886147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080637, 0.091671, -0.992519,
		-0.687967, -0.725656, -0.011129,
		-0.721248, 0.681923, 0.121582,
		31.529163, 34.075356, 29.922621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309610, 33.434063, 29.454338>,  <32.034039, 33.598007, 29.837513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309610, 33.434063, 29.454338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.310474, 33.828785, 29.519108>,  <31.310993, 34.065617, 29.557970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.310474, 33.828785, 29.519108>,  <31.309610, 33.434063, 29.454338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310474, 33.828785, 29.519108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020106, 0.161848, -0.986611,
		-0.999795, 0.005387, -0.019491,
		0.002160, 0.986801, 0.161923,
		31.311123, 34.124825, 29.567684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090359, 33.662514, 28.723032>,  <31.309610, 33.434063, 29.454338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090359, 33.662514, 28.723032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.218960, 33.983414, 28.924240>,  <31.296122, 34.175953, 29.044966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.218960, 33.983414, 28.924240>,  <31.090359, 33.662514, 28.723032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218960, 33.983414, 28.924240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163225, 0.476319, -0.863989,
		-0.932734, 0.359882, 0.022192,
		0.321504, 0.802250, 0.503021,
		31.315411, 34.224087, 29.075146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707729, 34.285847, 28.385893>,  <31.090359, 33.662514, 28.723032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707729, 34.285847, 28.385893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.049826, 34.407673, 28.553612>,  <31.255083, 34.480766, 28.654243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.049826, 34.407673, 28.553612>,  <30.707729, 34.285847, 28.385893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049826, 34.407673, 28.553612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200414, 0.551760, -0.809565,
		-0.477913, 0.776404, 0.410848,
		0.855239, 0.304562, 0.419295,
		31.306396, 34.499043, 28.679399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115303, 34.775269, 28.824745>,  <30.707729, 34.285847, 28.385893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115303, 34.775269, 28.824745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.719570, 34.773605, 28.766495>,  <29.482130, 34.772610, 28.731544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.719570, 34.773605, 28.766495>,  <30.115303, 34.775269, 28.824745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719570, 34.773605, 28.766495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119479, -0.548806, 0.827367,
		-0.083358, 0.835939, 0.542455,
		-0.989331, -0.004156, -0.145624,
		29.422771, 34.772358, 28.722807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837070, 35.019180, 29.471159>,  <30.115303, 34.775269, 28.824745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837070, 35.019180, 29.471159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.526411, 34.825039, 29.310535>,  <29.340015, 34.708553, 29.214161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.526411, 34.825039, 29.310535>,  <29.837070, 35.019180, 29.471159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526411, 34.825039, 29.310535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204964, -0.408074, 0.889644,
		-0.595657, 0.773246, 0.217450,
		-0.776648, -0.485353, -0.401560,
		29.293417, 34.679432, 29.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278612, 35.082024, 29.967920>,  <29.837070, 35.019180, 29.471159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278612, 35.082024, 29.967920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.177610, 34.779919, 29.725986>,  <29.117008, 34.598656, 29.580826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.177610, 34.779919, 29.725986>,  <29.278612, 35.082024, 29.967920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177610, 34.779919, 29.725986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272988, -0.544092, 0.793374,
		-0.928288, 0.365445, -0.068790,
		-0.252507, -0.755258, -0.604836,
		29.101858, 34.553341, 29.544537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852854, 34.736977, 30.332113>,  <29.278612, 35.082024, 29.967920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852854, 34.736977, 30.332113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897623, 34.450188, 30.056889>,  <28.924484, 34.278114, 29.891754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897623, 34.450188, 30.056889>,  <28.852854, 34.736977, 30.332113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897623, 34.450188, 30.056889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137912, -0.696920, 0.703763,
		-0.984101, 0.016126, -0.176878,
		0.111921, -0.716968, -0.688063,
		28.931200, 34.235096, 29.850470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257153, 34.295898, 30.265522>,  <28.852854, 34.736977, 30.332113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257153, 34.295898, 30.265522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.555960, 34.061279, 30.140347>,  <28.735243, 33.920509, 30.065241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.555960, 34.061279, 30.140347>,  <28.257153, 34.295898, 30.265522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555960, 34.061279, 30.140347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295553, -0.714653, 0.633971,
		-0.595494, -0.381098, -0.707213,
		0.747018, -0.586545, -0.312937,
		28.780066, 33.885315, 30.046465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889914, 33.638500, 30.171661>,  <28.257153, 34.295898, 30.265522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889914, 33.638500, 30.171661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.281532, 33.557262, 30.177631>,  <28.516502, 33.508522, 30.181213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.281532, 33.557262, 30.177631>,  <27.889914, 33.638500, 30.171661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281532, 33.557262, 30.177631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174792, -0.800488, 0.573295,
		-0.104486, -0.563891, -0.819213,
		0.979046, -0.203093, 0.014924,
		28.575247, 33.496334, 30.182108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026260, 32.877903, 30.007404>,  <27.889914, 33.638500, 30.171661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026260, 32.877903, 30.007404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.350807, 33.000637, 30.206417>,  <28.545534, 33.074276, 30.325825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.350807, 33.000637, 30.206417>,  <28.026260, 32.877903, 30.007404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350807, 33.000637, 30.206417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147470, -0.716178, 0.682160,
		0.565630, -0.626853, -0.535834,
		0.811366, 0.306831, 0.497534,
		28.594217, 33.092686, 30.355677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337690, 32.280991, 30.226353>,  <28.026260, 32.877903, 30.007404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337690, 32.280991, 30.226353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.472767, 32.561390, 30.477612>,  <28.553814, 32.729630, 30.628366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.472767, 32.561390, 30.477612>,  <28.337690, 32.280991, 30.226353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472767, 32.561390, 30.477612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023969, -0.660727, 0.750243,
		0.940951, -0.268408, -0.206321,
		0.337693, 0.700997, 0.628145,
		28.574076, 32.771690, 30.666056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687044, 31.922132, 30.620754>,  <28.337690, 32.280991, 30.226353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687044, 31.922132, 30.620754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.639978, 32.249077, 30.846348>,  <28.611738, 32.445244, 30.981703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.639978, 32.249077, 30.846348>,  <28.687044, 31.922132, 30.620754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639978, 32.249077, 30.846348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033259, -0.570853, 0.820378,
		0.992496, 0.077773, 0.094354,
		-0.117666, 0.817360, 0.563983,
		28.604679, 32.494286, 31.015543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263548, 31.895506, 31.211550>,  <28.687044, 31.922132, 30.620754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263548, 31.895506, 31.211550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.958704, 32.137878, 31.302792>,  <28.775797, 32.283302, 31.357536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.958704, 32.137878, 31.302792>,  <29.263548, 31.895506, 31.211550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958704, 32.137878, 31.302792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150884, -0.508831, 0.847540,
		0.629618, 0.611503, 0.479212,
		-0.762112, 0.605933, 0.228103,
		28.730070, 32.319656, 31.371222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343399, 32.161404, 31.894335>,  <29.263548, 31.895506, 31.211550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343399, 32.161404, 31.894335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.960867, 32.277161, 31.877899>,  <28.731348, 32.346615, 31.868038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.960867, 32.277161, 31.877899>,  <29.343399, 32.161404, 31.894335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960867, 32.277161, 31.877899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123800, -0.273680, 0.953820,
		0.264781, 0.917253, 0.297554,
		-0.956329, 0.289390, -0.041091,
		28.673967, 32.363979, 31.865572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192677, 32.516724, 32.547791>,  <29.343399, 32.161404, 31.894335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192677, 32.516724, 32.547791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.841795, 32.411350, 32.387234>,  <28.631266, 32.348125, 32.290897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.841795, 32.411350, 32.387234>,  <29.192677, 32.516724, 32.547791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841795, 32.411350, 32.387234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330494, -0.275125, 0.902818,
		-0.348265, 0.924613, 0.154278,
		-0.877203, -0.263432, -0.401396,
		28.578634, 32.332321, 32.266815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683075, 32.866138, 32.933876>,  <29.192677, 32.516724, 32.547791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683075, 32.866138, 32.933876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.484434, 32.552837, 32.784267>,  <28.365250, 32.364857, 32.694500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.484434, 32.552837, 32.784267>,  <28.683075, 32.866138, 32.933876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484434, 32.552837, 32.784267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254800, -0.280377, 0.925454,
		-0.829736, 0.554885, -0.060337,
		-0.496604, -0.783257, -0.374024,
		28.335453, 32.317860, 32.672062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049606, 32.983017, 33.164654>,  <28.683075, 32.866138, 32.933876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049606, 32.983017, 33.164654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.066067, 32.596012, 33.064869>,  <28.075943, 32.363811, 33.004997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.066067, 32.596012, 33.064869>,  <28.049606, 32.983017, 33.164654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066067, 32.596012, 33.064869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525010, -0.233364, 0.818477,
		-0.850100, 0.097290, -0.517556,
		0.041149, -0.967510, -0.249461,
		28.078411, 32.305759, 32.990032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.956787, 28.619747, 31.690521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789940, 28.939262, 31.863934>,  <33.689831, 29.130972, 31.967981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789940, 28.939262, 31.863934>,  <33.956787, 28.619747, 31.690521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789940, 28.939262, 31.863934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262710, 0.350678, -0.898893,
		-0.870056, -0.488836, 0.063577,
		-0.417117, 0.798789, 0.433532,
		33.664806, 29.178900, 31.993994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335781, 28.714741, 31.355247>,  <33.956787, 28.619747, 31.690521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335781, 28.714741, 31.355247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418648, 29.077038, 31.503147>,  <33.468369, 29.294416, 31.591887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418648, 29.077038, 31.503147>,  <33.335781, 28.714741, 31.355247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418648, 29.077038, 31.503147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373197, 0.422536, -0.825946,
		-0.904325, 0.033123, 0.425557,
		0.207171, 0.905740, 0.369749,
		33.480801, 29.348761, 31.614071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832478, 29.193111, 31.114859>,  <33.335781, 28.714741, 31.355247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832478, 29.193111, 31.114859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115273, 29.456558, 31.217926>,  <33.284950, 29.614626, 31.279766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115273, 29.456558, 31.217926>,  <32.832478, 29.193111, 31.114859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115273, 29.456558, 31.217926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195214, 0.531918, -0.823987,
		-0.679752, 0.532247, 0.504630,
		0.706986, 0.658618, 0.257670,
		33.327370, 29.654144, 31.295227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569679, 29.905939, 31.062590>,  <32.832478, 29.193111, 31.114859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569679, 29.905939, 31.062590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966858, 29.953266, 31.059746>,  <33.205166, 29.981663, 31.058039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966858, 29.953266, 31.059746>,  <32.569679, 29.905939, 31.062590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966858, 29.953266, 31.059746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069044, 0.528606, -0.846055,
		-0.096344, 0.840582, 0.533049,
		0.992951, 0.118316, -0.007109,
		33.264744, 29.988762, 31.057613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716541, 30.587311, 30.855646>,  <32.569679, 29.905939, 31.062590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716541, 30.587311, 30.855646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.061504, 30.390667, 30.807362>,  <33.268482, 30.272680, 30.778391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.061504, 30.390667, 30.807362>,  <32.716541, 30.587311, 30.855646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061504, 30.390667, 30.807362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182176, 0.523894, -0.832074,
		0.472298, 0.695596, 0.541370,
		0.862408, -0.491611, -0.120713,
		33.320225, 30.243183, 30.771147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097378, 31.114925, 30.787277>,  <32.716541, 30.587311, 30.855646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097378, 31.114925, 30.787277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286461, 30.810093, 30.610287>,  <33.399910, 30.627193, 30.504093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286461, 30.810093, 30.610287>,  <33.097378, 31.114925, 30.787277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286461, 30.810093, 30.610287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169731, 0.571452, -0.802891,
		0.864720, 0.304430, 0.399478,
		0.472706, -0.762080, -0.442474,
		33.428272, 30.581469, 30.477545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708508, 31.388165, 30.531651>,  <33.097378, 31.114925, 30.787277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708508, 31.388165, 30.531651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646317, 31.064968, 30.304325>,  <33.609001, 30.871050, 30.167931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646317, 31.064968, 30.304325>,  <33.708508, 31.388165, 30.531651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646317, 31.064968, 30.304325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122410, 0.555117, -0.822716,
		0.980226, -0.197479, 0.012599,
		-0.155475, -0.807990, -0.568314,
		33.599674, 30.822571, 30.133831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087521, 31.583902, 29.925293>,  <33.708508, 31.388165, 30.531651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087521, 31.583902, 29.925293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836807, 31.283390, 29.842617>,  <33.686378, 31.103083, 29.793011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836807, 31.283390, 29.842617>,  <34.087521, 31.583902, 29.925293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836807, 31.283390, 29.842617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184654, 0.400920, -0.897311,
		0.756996, -0.524255, -0.390017,
		-0.626785, -0.751279, -0.206689,
		33.648773, 31.058006, 29.780611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253395, 31.454741, 29.316311>,  <34.087521, 31.583902, 29.925293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253395, 31.454741, 29.316311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904507, 31.264610, 29.362423>,  <33.695171, 31.150532, 29.390089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904507, 31.264610, 29.362423>,  <34.253395, 31.454741, 29.316311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904507, 31.264610, 29.362423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243202, 0.216996, -0.945392,
		0.424354, -0.852630, -0.304870,
		-0.872225, -0.475326, 0.115278,
		33.642838, 31.122013, 29.397007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132580, 30.878002, 28.751350>,  <34.253395, 31.454741, 29.316311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132580, 30.878002, 28.751350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776558, 31.011673, 28.875366>,  <33.562943, 31.091875, 28.949776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776558, 31.011673, 28.875366>,  <34.132580, 30.878002, 28.751350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776558, 31.011673, 28.875366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253654, 0.202045, -0.945958,
		-0.378761, -0.920599, -0.095066,
		-0.890056, 0.334178, 0.310040,
		33.509541, 31.111927, 28.968378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654587, 30.480299, 28.369823>,  <34.132580, 30.878002, 28.751350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654587, 30.480299, 28.369823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468582, 30.814159, 28.487892>,  <33.356979, 31.014475, 28.558733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468582, 30.814159, 28.487892>,  <33.654587, 30.480299, 28.369823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468582, 30.814159, 28.487892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243366, 0.200052, -0.949080,
		-0.851200, -0.513164, 0.110100,
		-0.465008, 0.834651, 0.295170,
		33.329079, 31.064554, 28.576443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976959, 30.465620, 28.004374>,  <33.654587, 30.480299, 28.369823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976959, 30.465620, 28.004374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026035, 30.846649, 28.115765>,  <33.055481, 31.075268, 28.182600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026035, 30.846649, 28.115765>,  <32.976959, 30.465620, 28.004374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026035, 30.846649, 28.115765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238367, 0.300669, -0.923461,
		-0.963394, 0.046917, 0.263950,
		0.122687, 0.952574, 0.278480,
		33.062843, 31.132421, 28.199308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526825, 30.705294, 27.527967>,  <32.976959, 30.465620, 28.004374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526825, 30.705294, 27.527967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745876, 31.012691, 27.660343>,  <32.877308, 31.197130, 27.739769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745876, 31.012691, 27.660343>,  <32.526825, 30.705294, 27.527967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745876, 31.012691, 27.660343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085617, 0.341975, -0.935801,
		-0.832330, 0.540805, 0.121479,
		0.547629, 0.768494, 0.330938,
		32.910164, 31.243240, 27.759624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251575, 31.324488, 27.158005>,  <32.526825, 30.705294, 27.527967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251575, 31.324488, 27.158005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606033, 31.450722, 27.293747>,  <32.818707, 31.526463, 27.375193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606033, 31.450722, 27.293747>,  <32.251575, 31.324488, 27.158005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606033, 31.450722, 27.293747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134851, 0.524996, -0.840354,
		-0.443362, 0.790434, 0.422663,
		0.886141, 0.315585, 0.339355,
		32.871876, 31.545397, 27.395554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663551, 31.649685, 27.386646>,  <32.251575, 31.324488, 27.158005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663551, 31.649685, 27.386646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268896, 31.597340, 27.347824>,  <31.032103, 31.565933, 27.324530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268896, 31.597340, 27.347824>,  <31.663551, 31.649685, 27.386646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268896, 31.597340, 27.347824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025088, -0.466583, 0.884121,
		-0.160984, 0.874743, 0.457066,
		-0.986638, -0.130863, -0.097058,
		30.972904, 31.558081, 27.318707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198116, 31.996098, 27.933062>,  <31.663551, 31.649685, 27.386646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198116, 31.996098, 27.933062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045818, 31.665783, 27.766636>,  <30.954439, 31.467594, 27.666780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045818, 31.665783, 27.766636>,  <31.198116, 31.996098, 27.933062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045818, 31.665783, 27.766636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040421, -0.434660, 0.899687,
		-0.923797, 0.359368, 0.132115,
		-0.380744, -0.825788, -0.416063,
		30.931595, 31.418047, 27.641817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909945, 31.656183, 28.524424>,  <31.198116, 31.996098, 27.933062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909945, 31.656183, 28.524424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910845, 31.369831, 28.245136>,  <30.911385, 31.198021, 28.077564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910845, 31.369831, 28.245136>,  <30.909945, 31.656183, 28.524424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910845, 31.369831, 28.245136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097244, -0.695070, 0.712335,
		-0.995258, 0.066294, -0.071179,
		0.002251, -0.715879, -0.698220,
		30.911520, 31.155067, 28.035669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364693, 31.123299, 28.657263>,  <30.909945, 31.656183, 28.524424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364693, 31.123299, 28.657263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640284, 30.943665, 28.429707>,  <30.805637, 30.835884, 28.293173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640284, 30.943665, 28.429707>,  <30.364693, 31.123299, 28.657263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640284, 30.943665, 28.429707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053162, -0.814106, 0.578278,
		-0.722833, -0.368175, -0.584773,
		0.688975, -0.449086, -0.568890,
		30.846975, 30.808939, 28.259039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987667, 30.493908, 28.448526>,  <30.364693, 31.123299, 28.657263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987667, 30.493908, 28.448526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.384899, 30.451000, 28.429405>,  <30.623238, 30.425255, 28.417933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.384899, 30.451000, 28.429405>,  <29.987667, 30.493908, 28.448526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384899, 30.451000, 28.429405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045953, -0.729520, 0.682415,
		-0.108075, -0.675496, -0.729401,
		0.993080, -0.107270, -0.047802,
		30.682823, 30.418819, 28.415064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080154, 29.709576, 28.178040>,  <29.987667, 30.493908, 28.448526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080154, 29.709576, 28.178040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.441339, 29.794155, 28.327679>,  <30.658051, 29.844902, 28.417461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.441339, 29.794155, 28.327679>,  <30.080154, 29.709576, 28.178040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441339, 29.794155, 28.327679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123533, -0.706084, 0.697269,
		0.411581, -0.675821, -0.611447,
		0.902962, 0.211449, 0.374097,
		30.712229, 29.857590, 28.439907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522562, 29.122742, 28.210236>,  <30.080154, 29.709576, 28.178040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522562, 29.122742, 28.210236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690641, 29.357056, 28.487446>,  <30.791489, 29.497644, 28.653772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690641, 29.357056, 28.487446>,  <30.522562, 29.122742, 28.210236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690641, 29.357056, 28.487446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158220, -0.704728, 0.691610,
		0.893532, -0.400264, -0.203442,
		0.420198, 0.585787, 0.693027,
		30.816702, 29.532791, 28.695354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069458, 28.756512, 28.450417>,  <30.522562, 29.122742, 28.210236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069458, 28.756512, 28.450417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.977736, 29.012131, 28.744095>,  <30.922703, 29.165503, 28.920301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.977736, 29.012131, 28.744095>,  <31.069458, 28.756512, 28.450417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977736, 29.012131, 28.744095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092386, -0.765176, 0.637159,
		0.968960, 0.078275, 0.234497,
		-0.229305, 0.639046, 0.734194,
		30.908943, 29.203844, 28.964354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271637, 28.375385, 29.079712>,  <31.069458, 28.756512, 28.450417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271637, 28.375385, 29.079712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060547, 28.685253, 29.219078>,  <30.933893, 28.871174, 29.302698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060547, 28.685253, 29.219078>,  <31.271637, 28.375385, 29.079712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060547, 28.685253, 29.219078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171714, -0.499008, 0.849415,
		0.831879, 0.388429, 0.396360,
		-0.527724, 0.774670, 0.348415,
		30.902229, 28.917654, 29.323603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484327, 28.425859, 29.762985>,  <31.271637, 28.375385, 29.079712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484327, 28.425859, 29.762985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126871, 28.604206, 29.742550>,  <30.912397, 28.711214, 29.730289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126871, 28.604206, 29.742550>,  <31.484327, 28.425859, 29.762985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126871, 28.604206, 29.742550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249233, -0.398385, 0.882707,
		0.373218, 0.801555, 0.467138,
		-0.893639, 0.445868, -0.051089,
		30.858780, 28.737967, 29.727222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404470, 28.708336, 30.458958>,  <31.484327, 28.425859, 29.762985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404470, 28.708336, 30.458958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.033691, 28.703121, 30.308971>,  <30.811224, 28.699993, 30.218979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.033691, 28.703121, 30.308971>,  <31.404470, 28.708336, 30.458958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033691, 28.703121, 30.308971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373124, -0.072819, 0.924920,
		-0.039362, 0.997260, 0.062636,
		-0.926946, -0.013036, -0.374968,
		30.755608, 28.699211, 30.196482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020901, 29.046021, 30.892710>,  <31.404470, 28.708336, 30.458958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020901, 29.046021, 30.892710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737108, 28.856056, 30.684444>,  <30.566832, 28.742077, 30.559484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737108, 28.856056, 30.684444>,  <31.020901, 29.046021, 30.892710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737108, 28.856056, 30.684444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567061, -0.053943, 0.821907,
		-0.418420, 0.878379, -0.231032,
		-0.709483, -0.474911, -0.520665,
		30.524263, 28.713583, 30.528244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321169, 29.358107, 31.033537>,  <31.020901, 29.046021, 30.892710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321169, 29.358107, 31.033537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.281342, 28.968678, 30.951328>,  <30.257446, 28.735020, 30.902002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.281342, 28.968678, 30.951328>,  <30.321169, 29.358107, 31.033537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281342, 28.968678, 30.951328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314727, -0.165131, 0.934708,
		-0.943946, 0.157749, -0.289968,
		-0.099566, -0.973574, -0.205522,
		30.251472, 28.676605, 30.889671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748867, 29.139893, 31.521788>,  <30.321169, 29.358107, 31.033537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748867, 29.139893, 31.521788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.897575, 28.789917, 31.397682>,  <29.986801, 28.579931, 31.323219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.897575, 28.789917, 31.397682>,  <29.748867, 29.139893, 31.521788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897575, 28.789917, 31.397682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223455, -0.240050, 0.944692,
		-0.901029, -0.420541, 0.106266,
		0.371772, -0.874941, -0.310264,
		30.009108, 28.527435, 31.304604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108957, 28.781052, 31.321148>,  <29.748867, 29.139893, 31.521788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108957, 28.781052, 31.321148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.734318, 28.907497, 31.381622>,  <28.509535, 28.983364, 31.417908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.734318, 28.907497, 31.381622>,  <29.108957, 28.781052, 31.321148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734318, 28.907497, 31.381622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060793, 0.278325, -0.958561,
		-0.345093, -0.906977, -0.241461,
		-0.936598, 0.316114, 0.151186,
		28.453339, 29.002331, 31.426977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821215, 28.633692, 30.696941>,  <29.108957, 28.781052, 31.321148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821215, 28.633692, 30.696941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.570499, 28.893925, 30.868465>,  <28.420071, 29.050064, 30.971380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.570499, 28.893925, 30.868465>,  <28.821215, 28.633692, 30.696941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570499, 28.893925, 30.868465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149372, 0.439796, -0.885589,
		-0.764736, -0.619131, -0.178481,
		-0.626790, 0.650582, 0.428809,
		28.382462, 29.089100, 30.997108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305666, 28.677397, 30.261086>,  <28.821215, 28.633692, 30.696941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305666, 28.677397, 30.261086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.279692, 29.013939, 30.475712>,  <28.264107, 29.215864, 30.604486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.279692, 29.013939, 30.475712>,  <28.305666, 28.677397, 30.261086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279692, 29.013939, 30.475712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167830, 0.520832, -0.836999,
		-0.983675, -0.144401, 0.107385,
		-0.064934, 0.841357, 0.536564,
		28.260212, 29.266346, 30.636681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569153, 28.963427, 30.128880>,  <28.305666, 28.677397, 30.261086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569153, 28.963427, 30.128880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.837198, 29.234177, 30.250721>,  <27.998026, 29.396627, 30.323826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.837198, 29.234177, 30.250721>,  <27.569153, 28.963427, 30.128880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837198, 29.234177, 30.250721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125410, 0.507724, -0.852343,
		-0.731587, 0.532967, 0.425120,
		0.670114, 0.676877, 0.304605,
		28.038233, 29.437241, 30.342102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262644, 29.598167, 29.866541>,  <27.569153, 28.963427, 30.128880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262644, 29.598167, 29.866541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.651339, 29.655296, 29.941727>,  <27.884556, 29.689573, 29.986839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.651339, 29.655296, 29.941727>,  <27.262644, 29.598167, 29.866541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651339, 29.655296, 29.941727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035976, 0.697328, -0.715849,
		-0.233314, 0.702378, 0.672480,
		0.971736, 0.142824, 0.187966,
		27.942860, 29.698143, 29.998116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315548, 30.328569, 29.979202>,  <27.262644, 29.598167, 29.866541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315548, 30.328569, 29.979202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.682573, 30.200012, 29.885578>,  <27.902788, 30.122879, 29.829405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.682573, 30.200012, 29.885578>,  <27.315548, 30.328569, 29.979202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682573, 30.200012, 29.885578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094392, 0.747958, -0.657000,
		0.386219, 0.580747, 0.716636,
		0.917565, -0.321391, -0.234058,
		27.957842, 30.103596, 29.815361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837210, 30.882683, 30.243164>,  <27.315548, 30.328569, 29.979202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837210, 30.882683, 30.243164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.956984, 30.658943, 29.933979>,  <28.028847, 30.524700, 29.748468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.956984, 30.658943, 29.933979>,  <27.837210, 30.882683, 30.243164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956984, 30.658943, 29.933979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217390, 0.828820, -0.515557,
		0.929022, -0.013658, 0.369773,
		0.299434, -0.559349, -0.772961,
		28.046814, 30.491138, 29.702091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271370, 31.363110, 29.990337>,  <27.837210, 30.882683, 30.243164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271370, 31.363110, 29.990337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.227146, 31.081844, 29.709385>,  <28.200611, 30.913086, 29.540813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.227146, 31.081844, 29.709385>,  <28.271370, 31.363110, 29.990337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227146, 31.081844, 29.709385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093151, 0.710932, -0.697064,
		0.989495, -0.011640, -0.144101,
		-0.110559, -0.703164, -0.702380,
		28.193977, 30.870895, 29.498671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576714, 31.704241, 29.479584>,  <28.271370, 31.363110, 29.990337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576714, 31.704241, 29.479584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.374344, 31.397655, 29.321304>,  <28.252922, 31.213705, 29.226337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.374344, 31.397655, 29.321304>,  <28.576714, 31.704241, 29.479584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374344, 31.397655, 29.321304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226176, 0.560565, -0.796625,
		0.832397, -0.313534, -0.456959,
		-0.505924, -0.766462, -0.395699,
		28.222567, 31.167717, 29.202595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842100, 31.676718, 28.821184>,  <28.576714, 31.704241, 29.479584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842100, 31.676718, 28.821184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.496790, 31.476101, 28.798512>,  <28.289604, 31.355730, 28.784908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.496790, 31.476101, 28.798512>,  <28.842100, 31.676718, 28.821184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496790, 31.476101, 28.798512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249211, 0.521192, -0.816243,
		0.438921, -0.690517, -0.574922,
		-0.863274, -0.501543, -0.056678,
		28.237808, 31.325638, 28.781507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824409, 31.343792, 28.204376>,  <28.842100, 31.676718, 28.821184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824409, 31.343792, 28.204376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440147, 31.388943, 28.305885>,  <28.209591, 31.416033, 28.366791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440147, 31.388943, 28.305885>,  <28.824409, 31.343792, 28.204376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440147, 31.388943, 28.305885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147623, 0.566430, -0.810780,
		-0.235262, -0.816343, -0.527481,
		-0.960655, 0.112877, 0.253771,
		28.151951, 31.422806, 28.382017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489550, 31.264196, 27.529381>,  <28.824409, 31.343792, 28.204376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489550, 31.264196, 27.529381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238623, 31.454155, 27.776264>,  <28.088066, 31.568130, 27.924395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238623, 31.454155, 27.776264>,  <28.489550, 31.264196, 27.529381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238623, 31.454155, 27.776264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282174, 0.600083, -0.748517,
		-0.725846, -0.643717, -0.242438,
		-0.627316, 0.474898, 0.617208,
		28.050428, 31.596624, 27.961426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822962, 31.299023, 27.116125>,  <28.489550, 31.264196, 27.529381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822962, 31.299023, 27.116125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.804644, 31.571667, 27.408237>,  <27.793652, 31.735252, 27.583506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.804644, 31.571667, 27.408237>,  <27.822962, 31.299023, 27.116125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804644, 31.571667, 27.408237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525484, 0.605292, -0.597903,
		-0.849570, -0.411133, 0.330454,
		-0.045796, 0.681609, 0.730282,
		27.790905, 31.776150, 27.627321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131851, 31.586277, 27.069630>,  <27.822962, 31.299023, 27.116125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131851, 31.586277, 27.069630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.358366, 31.846153, 27.272499>,  <27.494274, 32.002079, 27.394220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.358366, 31.846153, 27.272499>,  <27.131851, 31.586277, 27.069630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358366, 31.846153, 27.272499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405663, 0.755353, -0.514664,
		-0.717465, 0.085707, 0.691302,
		0.566287, 0.649689, 0.507171,
		27.528252, 32.041061, 27.424650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.823296, 39.757751, 16.040571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822182, 40.109726, 16.230602>,  <38.821514, 40.320911, 16.344620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822182, 40.109726, 16.230602>,  <38.823296, 39.757751, 16.040571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822182, 40.109726, 16.230602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395723, -0.435326, 0.808637,
		0.918366, 0.190251, -0.347000,
		-0.002786, 0.879941, 0.475075,
		38.821346, 40.373707, 16.373125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530437, 39.960522, 16.403067>,  <38.823296, 39.757751, 16.040571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530437, 39.960522, 16.403067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.238346, 40.160286, 16.589554>,  <39.063091, 40.280144, 16.701447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.238346, 40.160286, 16.589554>,  <39.530437, 39.960522, 16.403067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238346, 40.160286, 16.589554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249990, -0.439759, 0.862622,
		0.635823, 0.746461, 0.196278,
		-0.730229, 0.499408, 0.466217,
		39.019276, 40.310108, 16.729420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862488, 40.212578, 16.930775>,  <39.530437, 39.960522, 16.403067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862488, 40.212578, 16.930775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478844, 40.246414, 17.038807>,  <39.248657, 40.266716, 17.103626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478844, 40.246414, 17.038807>,  <39.862488, 40.212578, 16.930775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478844, 40.246414, 17.038807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226142, -0.344746, 0.911049,
		0.170178, 0.934876, 0.311521,
		-0.959114, 0.084593, 0.270083,
		39.191109, 40.271793, 17.119831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871460, 40.553551, 17.535030>,  <39.862488, 40.212578, 16.930775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871460, 40.553551, 17.535030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.529984, 40.345909, 17.518299>,  <39.325100, 40.221325, 17.508261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.529984, 40.345909, 17.518299>,  <39.871460, 40.553551, 17.535030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529984, 40.345909, 17.518299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166214, -0.347705, 0.922754,
		-0.493546, 0.780792, 0.383114,
		-0.853689, -0.519101, -0.041830,
		39.273876, 40.190178, 17.505751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640572, 40.476334, 18.250286>,  <39.871460, 40.553551, 17.535030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640572, 40.476334, 18.250286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.390942, 40.214954, 18.078922>,  <39.241161, 40.058128, 17.976105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.390942, 40.214954, 18.078922>,  <39.640572, 40.476334, 18.250286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390942, 40.214954, 18.078922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030462, -0.568215, 0.822316,
		-0.780767, 0.500140, 0.374516,
		-0.624079, -0.653446, -0.428408,
		39.203716, 40.018921, 17.950399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237362, 40.324997, 18.867081>,  <39.640572, 40.476334, 18.250286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237362, 40.324997, 18.867081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177074, 40.030579, 18.603104>,  <39.140903, 39.853928, 18.444717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177074, 40.030579, 18.603104>,  <39.237362, 40.324997, 18.867081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177074, 40.030579, 18.603104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128146, -0.676485, 0.725222,
		-0.980236, 0.024735, 0.196279,
		-0.150719, -0.736041, -0.659945,
		39.131859, 39.809765, 18.405121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871536, 39.782249, 19.222048>,  <39.237362, 40.324997, 18.867081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871536, 39.782249, 19.222048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.977440, 39.577179, 18.895351>,  <39.040981, 39.454136, 18.699333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.977440, 39.577179, 18.895351>,  <38.871536, 39.782249, 19.222048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977440, 39.577179, 18.895351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134807, -0.818969, 0.557778,
		-0.954847, -0.257776, -0.147713,
		0.264754, -0.512679, -0.816740,
		39.056866, 39.423374, 18.650330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468876, 39.134583, 19.222799>,  <38.871536, 39.782249, 19.222048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468876, 39.134583, 19.222799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.821377, 39.105263, 19.036026>,  <39.032875, 39.087669, 18.923962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.821377, 39.105263, 19.036026>,  <38.468876, 39.134583, 19.222799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821377, 39.105263, 19.036026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191996, -0.847208, 0.495354,
		-0.431902, -0.526180, -0.732527,
		0.881248, -0.073302, -0.466935,
		39.085751, 39.083271, 18.895945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498989, 38.462208, 18.927570>,  <38.468876, 39.134583, 19.222799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498989, 38.462208, 18.927570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.885242, 38.565948, 18.920734>,  <39.116993, 38.628193, 18.916632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.885242, 38.565948, 18.920734>,  <38.498989, 38.462208, 18.927570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885242, 38.565948, 18.920734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219798, -0.779715, 0.586288,
		0.138730, -0.569895, -0.809922,
		0.965631, 0.259355, -0.017092,
		39.174931, 38.643757, 18.915607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823635, 37.934486, 18.788553>,  <38.498989, 38.462208, 18.927570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823635, 37.934486, 18.788553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127426, 38.146744, 18.939083>,  <39.309700, 38.274097, 19.029400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127426, 38.146744, 18.939083>,  <38.823635, 37.934486, 18.788553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127426, 38.146744, 18.939083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334757, -0.814797, 0.473332,
		0.557796, -0.233506, -0.796454,
		0.759474, 0.530641, 0.376323,
		39.355270, 38.305935, 19.051979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408619, 37.539009, 18.546387>,  <38.823635, 37.934486, 18.788553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408619, 37.539009, 18.546387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.507519, 37.756783, 18.867001>,  <39.566860, 37.887447, 19.059368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.507519, 37.756783, 18.867001>,  <39.408619, 37.539009, 18.546387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507519, 37.756783, 18.867001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484018, -0.786013, 0.384589,
		0.839401, 0.292867, -0.457860,
		0.247251, 0.544437, 0.801533,
		39.581696, 37.920113, 19.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147606, 37.359219, 18.783993>,  <39.408619, 37.539009, 18.546387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147606, 37.359219, 18.783993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989548, 37.532005, 19.108280>,  <39.894714, 37.635677, 19.302853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989548, 37.532005, 19.108280>,  <40.147606, 37.359219, 18.783993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989548, 37.532005, 19.108280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393499, -0.717878, 0.574291,
		0.830073, 0.545944, 0.113685,
		-0.395142, 0.431968, 0.810719,
		39.871006, 37.661594, 19.351496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623894, 37.210056, 19.243090>,  <40.147606, 37.359219, 18.783993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623894, 37.210056, 19.243090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.323128, 37.300579, 19.490768>,  <40.142670, 37.354893, 19.639376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.323128, 37.300579, 19.490768>,  <40.623894, 37.210056, 19.243090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323128, 37.300579, 19.490768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276334, -0.744552, 0.607686,
		0.598550, 0.628034, 0.497303,
		-0.751915, 0.226309, 0.619199,
		40.097553, 37.368473, 19.676529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888134, 37.188049, 20.002403>,  <40.623894, 37.210056, 19.243090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888134, 37.188049, 20.002403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.488953, 37.163174, 20.008400>,  <40.249443, 37.148247, 20.011997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.488953, 37.163174, 20.008400>,  <40.888134, 37.188049, 20.002403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488953, 37.163174, 20.008400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054155, -0.696527, 0.715484,
		-0.034057, 0.714831, 0.698468,
		-0.997952, -0.062193, 0.014990,
		40.189568, 37.144516, 20.012897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651909, 37.118080, 20.703222>,  <40.888134, 37.188049, 20.002403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651909, 37.118080, 20.703222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331928, 36.967861, 20.516014>,  <40.139938, 36.877731, 20.403688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331928, 36.967861, 20.516014>,  <40.651909, 37.118080, 20.703222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331928, 36.967861, 20.516014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013932, -0.791362, 0.611188,
		-0.599903, 0.482401, 0.638284,
		-0.799951, -0.375547, -0.468020,
		40.091942, 36.855198, 20.375608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268539, 36.879795, 21.221359>,  <40.651909, 37.118080, 20.703222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268539, 36.879795, 21.221359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096039, 36.675579, 20.923801>,  <39.992538, 36.553051, 20.745268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096039, 36.675579, 20.923801>,  <40.268539, 36.879795, 21.221359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096039, 36.675579, 20.923801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090797, -0.795758, 0.598769,
		-0.897652, 0.325762, 0.296815,
		-0.431249, -0.510536, -0.743893,
		39.966663, 36.522419, 20.700634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978264, 36.449165, 21.559404>,  <40.268539, 36.879795, 21.221359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978264, 36.449165, 21.559404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948112, 36.268959, 21.203571>,  <39.930023, 36.160835, 20.990072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948112, 36.268959, 21.203571>,  <39.978264, 36.449165, 21.559404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948112, 36.268959, 21.203571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072617, -0.887270, 0.455499,
		-0.994508, 0.098933, 0.034164,
		-0.075376, -0.450516, -0.889581,
		39.925499, 36.133804, 20.936697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429832, 36.012398, 21.631662>,  <39.978264, 36.449165, 21.559404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429832, 36.012398, 21.631662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634480, 35.869026, 21.319309>,  <39.757267, 35.783005, 21.131897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634480, 35.869026, 21.319309>,  <39.429832, 36.012398, 21.631662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634480, 35.869026, 21.319309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023201, -0.914266, 0.404450,
		-0.858899, -0.188808, -0.476073,
		0.511620, -0.358427, -0.780881,
		39.787964, 35.761497, 21.085045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970032, 35.512871, 21.351076>,  <39.429832, 36.012398, 21.631662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970032, 35.512871, 21.351076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336792, 35.435211, 21.211590>,  <39.556847, 35.388615, 21.127897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336792, 35.435211, 21.211590>,  <38.970032, 35.512871, 21.351076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336792, 35.435211, 21.211590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130698, -0.971593, 0.197293,
		-0.377114, -0.135322, -0.916228,
		0.916899, -0.194151, -0.348715,
		39.611862, 35.376965, 21.106976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909729, 34.965225, 20.950899>,  <38.970032, 35.512871, 21.351076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909729, 34.965225, 20.950899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297009, 34.951843, 21.050068>,  <39.529377, 34.943813, 21.109570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297009, 34.951843, 21.050068>,  <38.909729, 34.965225, 20.950899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297009, 34.951843, 21.050068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075889, -0.983597, 0.163639,
		0.238381, -0.177250, -0.954859,
		0.968202, -0.033455, 0.247923,
		39.587471, 34.941807, 21.124445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319988, 34.463543, 20.471209>,  <38.909729, 34.965225, 20.950899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319988, 34.463543, 20.471209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.448788, 34.496189, 20.848495>,  <39.526066, 34.515778, 21.074867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.448788, 34.496189, 20.848495>,  <39.319988, 34.463543, 20.471209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448788, 34.496189, 20.848495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304228, -0.934519, 0.184717,
		0.896529, -0.346431, -0.276082,
		0.321995, 0.081612, 0.943217,
		39.545387, 34.520672, 21.131460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571091, 34.253593, 20.316540>,  <39.319988, 34.463543, 20.471209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571091, 34.253593, 20.316540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.252167, 34.050903, 20.185371>,  <38.060814, 33.929287, 20.106670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.252167, 34.050903, 20.185371>,  <38.571091, 34.253593, 20.316540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252167, 34.050903, 20.185371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329084, 0.090480, -0.939956,
		0.505973, -0.857345, 0.094616,
		-0.797305, -0.506728, -0.327919,
		38.012974, 33.898884, 20.086996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849918, 33.803780, 19.731918>,  <38.571091, 34.253593, 20.316540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849918, 33.803780, 19.731918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.454884, 33.846668, 19.686016>,  <38.217861, 33.872402, 19.658474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.454884, 33.846668, 19.686016>,  <38.849918, 33.803780, 19.731918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454884, 33.846668, 19.686016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119248, 0.036443, -0.992195,
		-0.102198, -0.993568, -0.048776,
		-0.987591, 0.107217, -0.114756,
		38.158607, 33.878834, 19.651588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593002, 33.214298, 19.245369>,  <38.849918, 33.803780, 19.731918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593002, 33.214298, 19.245369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323658, 33.510021, 19.246105>,  <38.162052, 33.687454, 19.246548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323658, 33.510021, 19.246105>,  <38.593002, 33.214298, 19.245369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323658, 33.510021, 19.246105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060572, 0.057649, -0.996498,
		-0.736829, -0.670891, -0.083600,
		-0.673361, 0.739312, 0.001841,
		38.121651, 33.731815, 19.246658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267609, 33.207226, 18.639351>,  <38.593002, 33.214298, 19.245369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267609, 33.207226, 18.639351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.164284, 33.582447, 18.731731>,  <38.102291, 33.807579, 18.787159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.164284, 33.582447, 18.731731>,  <38.267609, 33.207226, 18.639351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164284, 33.582447, 18.731731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028676, 0.246404, -0.968743,
		-0.965636, -0.243613, -0.090548,
		-0.258310, 0.938050, 0.230951,
		38.086792, 33.863861, 18.801016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900612, 33.455563, 18.109463>,  <38.267609, 33.207226, 18.639351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900612, 33.455563, 18.109463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030087, 33.784439, 18.296749>,  <38.107769, 33.981766, 18.409121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030087, 33.784439, 18.296749>,  <37.900612, 33.455563, 18.109463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030087, 33.784439, 18.296749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161566, 0.439557, -0.883564,
		-0.932269, 0.361643, 0.009438,
		0.323684, 0.822195, 0.468214,
		38.127193, 34.031097, 18.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656879, 34.033936, 17.784945>,  <37.900612, 33.455563, 18.109463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656879, 34.033936, 17.784945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.964912, 34.186646, 17.989384>,  <38.149731, 34.278271, 18.112047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.964912, 34.186646, 17.989384>,  <37.656879, 34.033936, 17.784945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964912, 34.186646, 17.989384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188914, 0.628761, -0.754302,
		-0.609333, 0.677428, 0.412074,
		0.770081, 0.381774, 0.511100,
		38.195938, 34.301178, 18.142714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613869, 34.739567, 17.621004>,  <37.656879, 34.033936, 17.784945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613869, 34.739567, 17.621004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.994831, 34.684826, 17.729954>,  <38.223408, 34.651981, 17.795322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.994831, 34.684826, 17.729954>,  <37.613869, 34.739567, 17.621004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994831, 34.684826, 17.729954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299031, 0.592820, -0.747760,
		-0.059133, 0.793621, 0.605532,
		0.952409, -0.136855, 0.272373,
		38.280556, 34.643768, 17.811666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892632, 35.393181, 17.624516>,  <37.613869, 34.739567, 17.621004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892632, 35.393181, 17.624516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.231838, 35.181416, 17.614883>,  <38.435364, 35.054356, 17.609104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.231838, 35.181416, 17.614883>,  <37.892632, 35.393181, 17.624516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231838, 35.181416, 17.614883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347218, 0.589355, -0.729452,
		0.400377, 0.610228, 0.683608,
		0.848020, -0.529416, -0.024082,
		38.486244, 35.022591, 17.607658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459961, 35.918957, 17.486092>,  <37.892632, 35.393181, 17.624516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459961, 35.918957, 17.486092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.618561, 35.564270, 17.390991>,  <38.713722, 35.351460, 17.333931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.618561, 35.564270, 17.390991>,  <38.459961, 35.918957, 17.486092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618561, 35.564270, 17.390991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439265, 0.410654, -0.799005,
		0.806121, 0.212373, 0.552328,
		0.396502, -0.886714, -0.237749,
		38.737511, 35.298256, 17.319666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141071, 36.063194, 17.291927>,  <38.459961, 35.918957, 17.486092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141071, 36.063194, 17.291927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034405, 35.714428, 17.127659>,  <38.970406, 35.505169, 17.029099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034405, 35.714428, 17.127659>,  <39.141071, 36.063194, 17.291927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034405, 35.714428, 17.127659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497778, 0.240271, -0.833359,
		0.825293, -0.426649, 0.369950,
		-0.266664, -0.871918, -0.410670,
		38.954407, 35.452854, 17.004457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775337, 35.773727, 16.971678>,  <39.141071, 36.063194, 17.291927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775337, 35.773727, 16.971678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457603, 35.608711, 16.793312>,  <39.266964, 35.509701, 16.686293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457603, 35.608711, 16.793312>,  <39.775337, 35.773727, 16.971678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457603, 35.608711, 16.793312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325198, 0.331230, -0.885739,
		0.513104, -0.848585, -0.128950,
		-0.794336, -0.412542, -0.445913,
		39.219303, 35.484947, 16.659538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013474, 35.318195, 16.458548>,  <39.775337, 35.773727, 16.971678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013474, 35.318195, 16.458548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633869, 35.398090, 16.360989>,  <39.406105, 35.446026, 16.302454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633869, 35.398090, 16.360989>,  <40.013474, 35.318195, 16.458548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633869, 35.398090, 16.360989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287748, 0.232816, -0.928977,
		-0.128766, -0.951789, -0.278418,
		-0.949010, 0.199735, -0.243897,
		39.349167, 35.458012, 16.287819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920372, 35.022610, 15.801745>,  <40.013474, 35.318195, 16.458548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920372, 35.022610, 15.801745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650421, 35.311863, 15.860559>,  <39.488449, 35.485416, 15.895846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650421, 35.311863, 15.860559>,  <39.920372, 35.022610, 15.801745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650421, 35.311863, 15.860559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179922, 0.354485, -0.917588,
		-0.715659, -0.592806, -0.369342,
		-0.674878, 0.723133, 0.147032,
		39.447956, 35.528805, 15.904668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420116, 35.015667, 15.242885>,  <39.920372, 35.022610, 15.801745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420116, 35.015667, 15.242885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.408745, 35.383060, 15.400659>,  <39.401924, 35.603497, 15.495323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.408745, 35.383060, 15.400659>,  <39.420116, 35.015667, 15.242885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408745, 35.383060, 15.400659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131914, 0.394590, -0.909339,
		-0.990854, 0.026184, -0.132377,
		-0.028425, 0.918484, 0.394435,
		39.400219, 35.658607, 15.518990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003922, 35.359299, 14.822720>,  <39.420116, 35.015667, 15.242885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003922, 35.359299, 14.822720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166382, 35.660244, 15.030175>,  <39.263859, 35.840813, 15.154649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166382, 35.660244, 15.030175>,  <39.003922, 35.359299, 14.822720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166382, 35.660244, 15.030175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066300, 0.590326, -0.804438,
		-0.911398, 0.292338, 0.289643,
		0.406151, 0.752366, 0.518639,
		39.288227, 35.885952, 15.185767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595592, 36.009201, 14.748289>,  <39.003922, 35.359299, 14.822720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595592, 36.009201, 14.748289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.957191, 36.155125, 14.837461>,  <39.174152, 36.242680, 14.890964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.957191, 36.155125, 14.837461>,  <38.595592, 36.009201, 14.748289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957191, 36.155125, 14.837461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079141, 0.655209, -0.751291,
		-0.420143, 0.661525, 0.621181,
		0.904000, 0.364810, 0.222927,
		39.228390, 36.264568, 14.904339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632393, 36.659496, 15.069343>,  <38.595592, 36.009201, 14.748289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632393, 36.659496, 15.069343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982002, 36.635418, 14.876485>,  <39.191769, 36.620972, 14.760770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982002, 36.635418, 14.876485>,  <38.632393, 36.659496, 15.069343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982002, 36.635418, 14.876485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201013, 0.858606, -0.471581,
		0.442358, 0.509089, 0.738341,
		0.874021, -0.060192, -0.482145,
		39.244209, 36.617359, 14.731841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713108, 37.436054, 14.858173>,  <38.632393, 36.659496, 15.069343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713108, 37.436054, 14.858173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030216, 37.249630, 14.701047>,  <39.220482, 37.137775, 14.606771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030216, 37.249630, 14.701047>,  <38.713108, 37.436054, 14.858173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030216, 37.249630, 14.701047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177266, 0.792901, -0.582997,
		0.583178, 0.392548, 0.711203,
		0.792767, -0.466063, -0.392817,
		39.268047, 37.109810, 14.583201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204025, 37.987221, 14.838678>,  <38.713108, 37.436054, 14.858173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204025, 37.987221, 14.838678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309479, 37.717533, 14.562730>,  <39.372749, 37.555721, 14.397161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309479, 37.717533, 14.562730>,  <39.204025, 37.987221, 14.838678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309479, 37.717533, 14.562730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244297, 0.738523, -0.628412,
		0.933175, -0.002863, 0.359410,
		0.263633, -0.674222, -0.689871,
		39.388569, 37.515266, 14.355768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768295, 38.373451, 14.612316>,  <39.204025, 37.987221, 14.838678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768295, 38.373451, 14.612316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.705223, 38.089272, 14.337972>,  <39.667381, 37.918766, 14.173365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.705223, 38.089272, 14.337972>,  <39.768295, 38.373451, 14.612316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705223, 38.089272, 14.337972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348927, 0.609662, -0.711732,
		0.923790, -0.351541, 0.151762,
		-0.157679, -0.710445, -0.685861,
		39.657921, 37.876137, 14.132214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371593, 38.236240, 14.214126>,  <39.768295, 38.373451, 14.612316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371593, 38.236240, 14.214126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.045235, 38.140381, 14.003648>,  <39.849419, 38.082867, 13.877361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.045235, 38.140381, 14.003648>,  <40.371593, 38.236240, 14.214126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045235, 38.140381, 14.003648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360778, 0.500163, -0.787195,
		0.451826, -0.832111, -0.321626,
		-0.815900, -0.239640, -0.526194,
		39.800465, 38.068489, 13.845789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.410051, 32.763451, 33.399158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.610199, 32.425907, 33.321667>,  <27.730288, 32.223381, 33.275173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.610199, 32.425907, 33.321667>,  <27.410051, 32.763451, 33.399158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610199, 32.425907, 33.321667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262958, -0.361299, 0.894604,
		-0.824916, -0.396688, -0.402682,
		0.500367, -0.843862, -0.193729,
		27.760309, 32.172749, 33.263550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886036, 32.160980, 33.584602>,  <27.410051, 32.763451, 33.399158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886036, 32.160980, 33.584602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.261154, 32.022232, 33.590565>,  <27.486225, 31.938984, 33.594143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.261154, 32.022232, 33.590565>,  <26.886036, 32.160980, 33.584602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261154, 32.022232, 33.590565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170173, -0.421804, 0.890575,
		-0.302621, -0.837715, -0.454593,
		0.937796, -0.346866, 0.014910,
		27.542494, 31.918173, 33.595039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820503, 31.476028, 33.786777>,  <26.886036, 32.160980, 33.584602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820503, 31.476028, 33.786777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.204704, 31.547791, 33.871864>,  <27.435225, 31.590847, 33.922916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.204704, 31.547791, 33.871864>,  <26.820503, 31.476028, 33.786777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204704, 31.547791, 33.871864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076162, -0.565761, 0.821044,
		0.267648, -0.804816, -0.529751,
		0.960502, 0.179404, 0.212721,
		27.492855, 31.601612, 33.935680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123018, 30.822010, 33.899578>,  <26.820503, 31.476028, 33.786777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123018, 30.822010, 33.899578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.368366, 31.077911, 34.084831>,  <27.515575, 31.231451, 34.195984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.368366, 31.077911, 34.084831>,  <27.123018, 30.822010, 33.899578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368366, 31.077911, 34.084831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040540, -0.560124, 0.827416,
		0.788756, -0.526286, -0.317627,
		0.613368, 0.639753, 0.463137,
		27.552378, 31.269836, 34.223774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640287, 30.458904, 34.166653>,  <27.123018, 30.822010, 33.899578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640287, 30.458904, 34.166653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.643267, 30.806625, 34.364342>,  <27.645054, 31.015259, 34.482956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.643267, 30.806625, 34.364342>,  <27.640287, 30.458904, 34.166653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643267, 30.806625, 34.364342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122326, -0.489731, 0.863249,
		0.992462, -0.066884, 0.102692,
		0.007446, 0.869304, 0.494221,
		27.645500, 31.067417, 34.512608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029869, 30.325256, 34.753929>,  <27.640287, 30.458904, 34.166653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029869, 30.325256, 34.753929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.857164, 30.672585, 34.851585>,  <27.753542, 30.880981, 34.910179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.857164, 30.672585, 34.851585>,  <28.029869, 30.325256, 34.753929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857164, 30.672585, 34.851585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071450, -0.302739, 0.950392,
		0.899153, 0.392900, 0.192753,
		-0.431763, 0.868319, 0.244136,
		27.727636, 30.933081, 34.924828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312645, 30.664871, 35.389046>,  <28.029869, 30.325256, 34.753929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312645, 30.664871, 35.389046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.933180, 30.784912, 35.349079>,  <27.705502, 30.856936, 35.325100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.933180, 30.784912, 35.349079>,  <28.312645, 30.664871, 35.389046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933180, 30.784912, 35.349079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196306, -0.310938, 0.929936,
		0.248007, 0.901808, 0.353886,
		-0.948660, 0.300100, -0.099915,
		27.648582, 30.874943, 35.319103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127035, 31.029417, 35.974312>,  <28.312645, 30.664871, 35.389046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127035, 31.029417, 35.974312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.786440, 30.892731, 35.815216>,  <27.582083, 30.810719, 35.719757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.786440, 30.892731, 35.815216>,  <28.127035, 31.029417, 35.974312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786440, 30.892731, 35.815216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345769, -0.204352, 0.915797,
		-0.394220, 0.917317, 0.055850,
		-0.851489, -0.341715, -0.397740,
		27.530993, 30.790216, 35.695892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719210, 31.344543, 36.440762>,  <28.127035, 31.029417, 35.974312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719210, 31.344543, 36.440762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.492102, 31.058754, 36.277222>,  <27.355837, 30.887280, 36.179096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.492102, 31.058754, 36.277222>,  <27.719210, 31.344543, 36.440762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492102, 31.058754, 36.277222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253207, -0.321012, 0.912599,
		-0.783276, 0.621672, 0.001352,
		-0.567772, -0.714475, -0.408853,
		27.321770, 30.844412, 36.154564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118589, 31.397526, 36.807213>,  <27.719210, 31.344543, 36.440762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118589, 31.397526, 36.807213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.132793, 31.035069, 36.638622>,  <27.141315, 30.817595, 36.537468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.132793, 31.035069, 36.638622>,  <27.118589, 31.397526, 36.807213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132793, 31.035069, 36.638622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205863, -0.419327, 0.884186,
		-0.977936, 0.055367, -0.201433,
		0.035512, -0.906145, -0.421473,
		27.143448, 30.763226, 36.512180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633022, 31.063837, 37.238693>,  <27.118589, 31.397526, 36.807213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633022, 31.063837, 37.238693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.850550, 30.776562, 37.065041>,  <26.981066, 30.604197, 36.960850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.850550, 30.776562, 37.065041>,  <26.633022, 31.063837, 37.238693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850550, 30.776562, 37.065041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083157, -0.468655, 0.879459,
		-0.835074, -0.514365, -0.195140,
		0.543816, -0.718186, -0.434135,
		27.013695, 30.561106, 36.934799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437885, 30.376945, 37.510628>,  <26.633022, 31.063837, 37.238693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437885, 30.376945, 37.510628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.810381, 30.324493, 37.374630>,  <27.033878, 30.293022, 37.293034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.810381, 30.324493, 37.374630>,  <26.437885, 30.376945, 37.510628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810381, 30.324493, 37.374630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247524, -0.457105, 0.854276,
		-0.267434, -0.879693, -0.393217,
		0.931242, -0.131131, -0.339990,
		27.089754, 30.285154, 37.272633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588675, 29.600147, 37.213326>,  <26.437885, 30.376945, 37.510628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588675, 29.600147, 37.213326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.882053, 29.818535, 37.375301>,  <27.058081, 29.949568, 37.472485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.882053, 29.818535, 37.375301>,  <26.588675, 29.600147, 37.213326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882053, 29.818535, 37.375301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001213, -0.596766, 0.802414,
		0.679747, -0.588036, -0.438358,
		0.733446, 0.545970, 0.404936,
		27.102087, 29.982327, 37.496780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259439, 29.266989, 37.017307>,  <26.588675, 29.600147, 37.213326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259439, 29.266989, 37.017307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.123930, 29.419823, 37.361225>,  <27.042624, 29.511522, 37.567577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.123930, 29.419823, 37.361225>,  <27.259439, 29.266989, 37.017307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123930, 29.419823, 37.361225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321853, -0.811638, 0.487499,
		0.884106, 0.441878, 0.151987,
		-0.338773, 0.382083, 0.859794,
		27.022299, 29.534447, 37.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049120, 28.792194, 36.578510>,  <27.259439, 29.266989, 37.017307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049120, 28.792194, 36.578510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.081053, 28.394623, 36.608799>,  <27.100212, 28.156080, 36.626972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.081053, 28.394623, 36.608799>,  <27.049120, 28.792194, 36.578510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081053, 28.394623, 36.608799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528115, -0.022254, -0.848881,
		0.845412, 0.107757, 0.523132,
		0.079831, -0.993928, 0.075721,
		27.105001, 28.096445, 36.631516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791632, 28.659050, 36.556351>,  <27.049120, 28.792194, 36.578510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791632, 28.659050, 36.556351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.624729, 28.310810, 36.452080>,  <27.524588, 28.101866, 36.389519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.624729, 28.310810, 36.452080>,  <27.791632, 28.659050, 36.556351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624729, 28.310810, 36.452080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471021, 0.038130, -0.881298,
		0.777198, -0.490511, 0.394161,
		-0.417257, -0.870600, -0.260676,
		27.499552, 28.049629, 36.373878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278879, 28.212793, 36.187351>,  <27.791632, 28.659050, 36.556351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278879, 28.212793, 36.187351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.931883, 28.043251, 36.083191>,  <27.723684, 27.941526, 36.020695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.931883, 28.043251, 36.083191>,  <28.278879, 28.212793, 36.187351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931883, 28.043251, 36.083191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362742, -0.180779, -0.914187,
		0.340409, -0.887505, 0.310574,
		-0.867491, -0.423856, -0.260397,
		27.671637, 27.916094, 36.005074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484320, 27.604599, 35.810425>,  <28.278879, 28.212793, 36.187351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484320, 27.604599, 35.810425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.109825, 27.675415, 35.689026>,  <27.885128, 27.717905, 35.616184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.109825, 27.675415, 35.689026>,  <28.484320, 27.604599, 35.810425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109825, 27.675415, 35.689026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317592, 0.056890, -0.946519,
		-0.150306, -0.982558, -0.109489,
		-0.936239, 0.177041, -0.303502,
		27.828953, 27.728527, 35.597977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321325, 27.192360, 35.186241>,  <28.484320, 27.604599, 35.810425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321325, 27.192360, 35.186241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.048000, 27.483845, 35.168079>,  <27.884005, 27.658735, 35.157181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.048000, 27.483845, 35.168079>,  <28.321325, 27.192360, 35.186241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048000, 27.483845, 35.168079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185012, 0.112656, -0.976258,
		-0.706295, -0.675491, -0.211800,
		-0.683314, 0.728712, -0.045405,
		27.843006, 27.702457, 35.154457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020555, 27.047903, 34.555931>,  <28.321325, 27.192360, 35.186241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020555, 27.047903, 34.555931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.917437, 27.427765, 34.627148>,  <27.855564, 27.655682, 34.669876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.917437, 27.427765, 34.627148>,  <28.020555, 27.047903, 34.555931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917437, 27.427765, 34.627148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103322, 0.210310, -0.972160,
		-0.960658, -0.232226, -0.152338,
		-0.257799, 0.949653, 0.178042,
		27.840097, 27.712662, 34.680561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631052, 27.122864, 34.014343>,  <28.020555, 27.047903, 34.555931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631052, 27.122864, 34.014343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.717140, 27.491253, 34.144257>,  <27.768793, 27.712286, 34.222206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.717140, 27.491253, 34.144257>,  <27.631052, 27.122864, 34.014343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717140, 27.491253, 34.144257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132979, 0.357120, -0.924544,
		-0.967469, 0.155792, 0.199330,
		0.215221, 0.920975, 0.324785,
		27.781706, 27.767546, 34.241692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053282, 27.669348, 33.747322>,  <27.631052, 27.122864, 34.014343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053282, 27.669348, 33.747322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.362614, 27.905907, 33.838718>,  <27.548214, 28.047842, 33.893559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.362614, 27.905907, 33.838718>,  <27.053282, 27.669348, 33.747322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362614, 27.905907, 33.838718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099872, 0.469536, -0.877246,
		-0.626086, 0.655582, 0.422171,
		0.773332, 0.591395, 0.228496,
		27.594614, 28.083324, 33.907269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861818, 28.370943, 33.528572>,  <27.053282, 27.669348, 33.747322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861818, 28.370943, 33.528572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.255634, 28.378517, 33.598225>,  <27.491924, 28.383060, 33.640015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.255634, 28.378517, 33.598225>,  <26.861818, 28.370943, 33.528572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255634, 28.378517, 33.598225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139078, 0.519827, -0.842874,
		-0.106477, 0.854062, 0.509157,
		0.984540, 0.018934, 0.174131,
		27.550997, 28.384197, 33.650463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963478, 29.005232, 33.417027>,  <26.861818, 28.370943, 33.528572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963478, 29.005232, 33.417027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.313204, 28.818806, 33.362835>,  <27.523039, 28.706949, 33.330318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.313204, 28.818806, 33.362835>,  <26.963478, 29.005232, 33.417027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313204, 28.818806, 33.362835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177478, 0.566799, -0.804513,
		0.451747, 0.679353, 0.578277,
		0.874315, -0.466067, -0.135480,
		27.575499, 28.678986, 33.322189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440241, 29.539770, 33.177071>,  <26.963478, 29.005232, 33.417027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440241, 29.539770, 33.177071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.615221, 29.192623, 33.082890>,  <27.720209, 28.984335, 33.026379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.615221, 29.192623, 33.082890>,  <27.440241, 29.539770, 33.177071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615221, 29.192623, 33.082890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124722, 0.317863, -0.939898,
		0.890550, 0.381794, 0.247292,
		0.437452, -0.867869, -0.235455,
		27.746456, 28.932262, 33.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117802, 29.756601, 32.887901>,  <27.440241, 29.539770, 33.177071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117802, 29.756601, 32.887901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.038698, 29.386398, 32.758701>,  <27.991236, 29.164276, 32.681183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.038698, 29.386398, 32.758701>,  <28.117802, 29.756601, 32.887901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038698, 29.386398, 32.758701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200894, 0.284249, -0.937467,
		0.959444, -0.250281, 0.129716,
		-0.197758, -0.925506, -0.323001,
		27.979370, 29.108746, 32.661800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671219, 29.529615, 32.456635>,  <28.117802, 29.756601, 32.887901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671219, 29.529615, 32.456635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.389721, 29.262112, 32.360714>,  <28.220821, 29.101610, 32.303162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.389721, 29.262112, 32.360714>,  <28.671219, 29.529615, 32.456635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389721, 29.262112, 32.360714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305167, 0.020264, -0.952083,
		0.641573, -0.743204, 0.189822,
		-0.703746, -0.668758, -0.239802,
		28.178596, 29.061485, 32.288773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050301, 29.170769, 32.031902>,  <28.671219, 29.529615, 32.456635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050301, 29.170769, 32.031902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.659101, 29.130295, 31.958931>,  <28.424381, 29.106010, 31.915148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.659101, 29.130295, 31.958931>,  <29.050301, 29.170769, 32.031902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659101, 29.130295, 31.958931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139836, 0.330952, -0.933229,
		0.154801, -0.938207, -0.309522,
		-0.977999, -0.101182, -0.182427,
		28.365702, 29.099939, 31.904203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389904, 28.613903, 31.966690>,  <29.050301, 29.170769, 32.031902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389904, 28.613903, 31.966690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.744905, 28.469109, 31.852638>,  <29.957907, 28.382231, 31.784208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.744905, 28.469109, 31.852638>,  <29.389904, 28.613903, 31.966690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744905, 28.469109, 31.852638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148774, -0.360533, 0.920805,
		-0.436121, -0.859639, -0.266120,
		0.887505, -0.361991, -0.285128,
		30.011158, 28.360512, 31.767099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383526, 27.968868, 32.242016>,  <29.389904, 28.613903, 31.966690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383526, 27.968868, 32.242016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769594, 28.047489, 32.172947>,  <30.001234, 28.094662, 32.131504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769594, 28.047489, 32.172947>,  <29.383526, 27.968868, 32.242016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769594, 28.047489, 32.172947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238387, -0.388753, 0.889968,
		0.107799, -0.900132, -0.422067,
		0.965169, 0.196553, -0.172673,
		30.059145, 28.106455, 32.121143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756920, 27.399746, 32.525894>,  <29.383526, 27.968868, 32.242016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756920, 27.399746, 32.525894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025177, 27.693134, 32.481606>,  <30.186132, 27.869167, 32.455032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025177, 27.693134, 32.481606>,  <29.756920, 27.399746, 32.525894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025177, 27.693134, 32.481606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362502, -0.193840, 0.911602,
		0.647169, -0.651498, -0.395881,
		0.670645, 0.733469, -0.110722,
		30.226370, 27.913176, 32.448387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309874, 27.084166, 32.608509>,  <29.756920, 27.399746, 32.525894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309874, 27.084166, 32.608509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.408073, 27.460667, 32.701267>,  <30.466993, 27.686567, 32.756920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.408073, 27.460667, 32.701267>,  <30.309874, 27.084166, 32.608509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408073, 27.460667, 32.701267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297976, -0.300903, 0.905907,
		0.922464, -0.153303, -0.354342,
		0.245501, 0.941252, 0.231891,
		30.481724, 27.743042, 32.770836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015646, 27.107140, 32.873394>,  <30.309874, 27.084166, 32.608509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015646, 27.107140, 32.873394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853350, 27.446384, 33.009678>,  <30.755972, 27.649931, 33.091450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853350, 27.446384, 33.009678>,  <31.015646, 27.107140, 32.873394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853350, 27.446384, 33.009678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106691, -0.326277, 0.939234,
		0.907740, 0.417436, 0.041898,
		-0.405740, 0.848110, 0.340711,
		30.731628, 27.700817, 33.111893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440296, 27.233679, 33.437431>,  <31.015646, 27.107140, 32.873394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440296, 27.233679, 33.437431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099438, 27.436855, 33.487785>,  <30.894922, 27.558762, 33.517998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099438, 27.436855, 33.487785>,  <31.440296, 27.233679, 33.437431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099438, 27.436855, 33.487785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012895, -0.220102, 0.975392,
		0.523148, 0.832798, 0.181009,
		-0.852144, 0.507940, 0.125885,
		30.843794, 27.589237, 33.525551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580078, 27.675461, 33.960365>,  <31.440296, 27.233679, 33.437431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580078, 27.675461, 33.960365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.180080, 27.675034, 33.961754>,  <30.940083, 27.674778, 33.962585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.180080, 27.675034, 33.961754>,  <31.580078, 27.675461, 33.960365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180080, 27.675034, 33.961754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003610, -0.200433, 0.979701,
		-0.000351, 0.979707, 0.200435,
		-0.999994, -0.001068, 0.003467,
		30.880083, 27.674713, 33.962795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058281, 28.297045, 34.260239>,  <31.580078, 27.675461, 33.960365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058281, 28.297045, 34.260239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432175, 28.286598, 34.401997>,  <32.656509, 28.280331, 34.487053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432175, 28.286598, 34.401997>,  <32.058281, 28.297045, 34.260239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432175, 28.286598, 34.401997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330551, 0.429959, -0.840162,
		-0.130435, 0.902471, 0.410528,
		0.934731, -0.026114, 0.354394,
		32.712593, 28.278765, 34.508316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320026, 28.962242, 34.207512>,  <32.058281, 28.297045, 34.260239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320026, 28.962242, 34.207512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627296, 28.706203, 34.202053>,  <32.811657, 28.552580, 34.198776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627296, 28.706203, 34.202053>,  <32.320026, 28.962242, 34.207512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627296, 28.706203, 34.202053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368480, 0.459446, -0.808166,
		0.523574, 0.615783, 0.588797,
		0.768175, -0.640094, -0.013650,
		32.857750, 28.514175, 34.197960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903042, 29.411737, 34.057602>,  <32.320026, 28.962242, 34.207512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903042, 29.411737, 34.057602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031544, 29.039459, 33.987625>,  <33.108643, 28.816093, 33.945637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031544, 29.039459, 33.987625>,  <32.903042, 29.411737, 34.057602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031544, 29.039459, 33.987625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438372, 0.309902, -0.843677,
		0.839421, 0.194341, 0.507547,
		0.321251, -0.930694, -0.174945,
		33.127918, 28.760250, 33.935143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535809, 29.610670, 33.781391>,  <32.903042, 29.411737, 34.057602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535809, 29.610670, 33.781391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512119, 29.220394, 33.696987>,  <33.497906, 28.986229, 33.646343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512119, 29.220394, 33.696987>,  <33.535809, 29.610670, 33.781391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512119, 29.220394, 33.696987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414835, 0.168210, -0.894213,
		0.907967, -0.140491, 0.394788,
		-0.059221, -0.975688, -0.211009,
		33.494354, 28.927687, 33.633686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229721, 29.431419, 33.672253>,  <33.535809, 29.610670, 33.781391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229721, 29.431419, 33.672253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938705, 29.225647, 33.490681>,  <33.764095, 29.102182, 33.381737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938705, 29.225647, 33.490681>,  <34.229721, 29.431419, 33.672253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938705, 29.225647, 33.490681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268363, 0.395532, -0.878371,
		0.631407, -0.760863, -0.149708,
		-0.727534, -0.514433, -0.453929,
		33.720444, 29.071318, 33.354504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483639, 29.140877, 32.955856>,  <34.229721, 29.431419, 33.672253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483639, 29.140877, 32.955856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086693, 29.123104, 32.909828>,  <33.848526, 29.112440, 32.882214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086693, 29.123104, 32.909828>,  <34.483639, 29.140877, 32.955856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086693, 29.123104, 32.909828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091668, 0.358523, -0.929009,
		0.082530, -0.932463, -0.351712,
		-0.992364, -0.044430, -0.115066,
		33.788982, 29.109776, 32.875309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368156, 28.783625, 32.316944>,  <34.483639, 29.140877, 32.955856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368156, 28.783625, 32.316944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033524, 28.992363, 32.383636>,  <33.832745, 29.117607, 32.423653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033524, 28.992363, 32.383636>,  <34.368156, 28.783625, 32.316944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033524, 28.992363, 32.383636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000934, 0.305701, -0.952127,
		-0.547834, -0.796381, -0.256233,
		-0.836586, 0.521847, 0.166729,
		33.782547, 29.148916, 32.433655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.982000, 30.046261, 37.836079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.661125, 30.242199, 37.699524>,  <29.468599, 30.359762, 37.617592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.661125, 30.242199, 37.699524>,  <29.982000, 30.046261, 37.836079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661125, 30.242199, 37.699524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529462, 0.319332, -0.785937,
		-0.275975, -0.811219, -0.515520,
		-0.802190, 0.489847, -0.341382,
		29.420467, 30.389153, 37.597111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015209, 29.978687, 37.187923>,  <29.982000, 30.046261, 37.836079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015209, 29.978687, 37.187923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.744854, 30.273289, 37.198792>,  <29.582642, 30.450050, 37.205311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.744854, 30.273289, 37.198792>,  <30.015209, 29.978687, 37.187923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744854, 30.273289, 37.198792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514344, 0.497774, -0.698335,
		-0.527850, -0.458022, -0.715256,
		-0.675888, 0.736503, 0.027170,
		29.542088, 30.494240, 37.206944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770517, 30.033697, 36.560658>,  <30.015209, 29.978687, 37.187923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770517, 30.033697, 36.560658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.725843, 30.389606, 36.737667>,  <29.699039, 30.603151, 36.843872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.725843, 30.389606, 36.737667>,  <29.770517, 30.033697, 36.560658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725843, 30.389606, 36.737667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406491, 0.447259, -0.796696,
		-0.906803, 0.090903, -0.411637,
		-0.111686, 0.889773, 0.442527,
		29.692337, 30.656538, 36.870426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866564, 30.508671, 36.019028>,  <29.770517, 30.033697, 36.560658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866564, 30.508671, 36.019028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.828934, 30.773975, 36.316010>,  <29.806356, 30.933159, 36.494198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.828934, 30.773975, 36.316010>,  <29.866564, 30.508671, 36.019028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828934, 30.773975, 36.316010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097901, 0.748308, -0.656087,
		-0.990740, 0.010966, -0.135331,
		-0.094075, 0.663261, 0.742452,
		29.800711, 30.972954, 36.538746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266184, 30.902264, 35.812294>,  <29.866564, 30.508671, 36.019028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266184, 30.902264, 35.812294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.527046, 31.108181, 36.034893>,  <29.683563, 31.231731, 36.168453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.527046, 31.108181, 36.034893>,  <29.266184, 30.902264, 35.812294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527046, 31.108181, 36.034893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132440, 0.645418, -0.752260,
		-0.746428, 0.564291, 0.352733,
		0.652154, 0.514792, 0.556493,
		29.722692, 31.262619, 36.201839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181601, 31.532772, 35.586723>,  <29.266184, 30.902264, 35.812294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181601, 31.532772, 35.586723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.536983, 31.555355, 35.768913>,  <29.750214, 31.568905, 35.878227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.536983, 31.555355, 35.768913>,  <29.181601, 31.532772, 35.586723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536983, 31.555355, 35.768913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325424, 0.622320, -0.711911,
		-0.323645, 0.780724, 0.534531,
		0.888455, 0.056457, 0.455477,
		29.803520, 31.572292, 35.905556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250002, 32.193790, 35.478237>,  <29.181601, 31.532772, 35.586723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250002, 32.193790, 35.478237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.607368, 32.060001, 35.598190>,  <29.821789, 31.979727, 35.670162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.607368, 32.060001, 35.598190>,  <29.250002, 32.193790, 35.478237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607368, 32.060001, 35.598190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440235, 0.518987, -0.732697,
		0.089432, 0.786625, 0.610920,
		0.893418, -0.334475, 0.299886,
		29.875393, 31.959660, 35.688156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611448, 32.727043, 35.629425>,  <29.250002, 32.193790, 35.478237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611448, 32.727043, 35.629425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.860802, 32.434326, 35.519241>,  <30.010414, 32.258698, 35.453133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.860802, 32.434326, 35.519241>,  <29.611448, 32.727043, 35.629425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860802, 32.434326, 35.519241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506917, 0.646457, -0.570201,
		0.595339, 0.215819, 0.773947,
		0.623383, -0.731789, -0.275459,
		30.047817, 32.214790, 35.436604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321243, 32.980465, 35.736431>,  <29.611448, 32.727043, 35.629425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321243, 32.980465, 35.736431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324032, 32.699116, 35.452118>,  <30.325705, 32.530308, 35.281528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324032, 32.699116, 35.452118>,  <30.321243, 32.980465, 35.736431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324032, 32.699116, 35.452118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654166, 0.540815, -0.528760,
		0.756319, -0.461287, 0.463892,
		0.006969, -0.703373, -0.710786,
		30.326122, 32.488102, 35.238880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984770, 33.109554, 35.464809>,  <30.321243, 32.980465, 35.736431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984770, 33.109554, 35.464809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.803963, 32.875816, 35.195225>,  <30.695478, 32.735573, 35.033474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.803963, 32.875816, 35.195225>,  <30.984770, 33.109554, 35.464809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803963, 32.875816, 35.195225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603694, 0.355829, -0.713400,
		0.656684, -0.729337, 0.191923,
		-0.452017, -0.584341, -0.673963,
		30.668358, 32.700516, 34.993034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469849, 33.243134, 34.835289>,  <30.984770, 33.109554, 35.464809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469849, 33.243134, 34.835289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.181540, 33.002228, 34.698025>,  <31.008554, 32.857685, 34.615665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.181540, 33.002228, 34.698025>,  <31.469849, 33.243134, 34.835289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181540, 33.002228, 34.698025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260375, 0.223569, -0.939267,
		0.642408, -0.766350, -0.004327,
		-0.720775, -0.602266, -0.343161,
		30.965307, 32.821548, 34.595078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696770, 32.561508, 34.401691>,  <31.469849, 33.243134, 34.835289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696770, 32.561508, 34.401691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344955, 32.716553, 34.291290>,  <31.133867, 32.809578, 34.225052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344955, 32.716553, 34.291290>,  <31.696770, 32.561508, 34.401691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344955, 32.716553, 34.291290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395803, 0.274008, -0.876504,
		-0.264113, -0.880159, -0.394416,
		-0.879537, 0.387607, -0.276001,
		31.081095, 32.832836, 34.208488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299404, 32.302025, 33.966644>,  <31.696770, 32.561508, 34.401691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299404, 32.302025, 33.966644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680786, 32.385136, 34.054058>,  <32.909615, 32.435001, 34.106506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680786, 32.385136, 34.054058>,  <32.299404, 32.302025, 33.966644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680786, 32.385136, 34.054058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042388, -0.625160, 0.779344,
		0.298548, -0.752331, -0.587254,
		0.953453, 0.207779, 0.218530,
		32.966824, 32.447468, 34.119617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629887, 31.702618, 34.003059>,  <32.299404, 32.302025, 33.966644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629887, 31.702618, 34.003059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873951, 31.940525, 34.212418>,  <33.020390, 32.083271, 34.338032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873951, 31.940525, 34.212418>,  <32.629887, 31.702618, 34.003059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873951, 31.940525, 34.212418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044561, -0.685347, 0.726852,
		0.791020, -0.420177, -0.444678,
		0.610165, 0.594770, 0.523400,
		33.056999, 32.118958, 34.369438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186234, 31.247463, 34.374294>,  <32.629887, 31.702618, 34.003059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186234, 31.247463, 34.374294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157215, 31.585400, 34.586323>,  <33.139805, 31.788162, 34.713539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157215, 31.585400, 34.586323>,  <33.186234, 31.247463, 34.374294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157215, 31.585400, 34.586323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017103, -0.530342, 0.847612,
		0.997218, 0.070557, 0.024025,
		-0.072547, 0.844843, 0.530073,
		33.135452, 31.838852, 34.745346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557423, 31.082201, 34.858326>,  <33.186234, 31.247463, 34.374294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557423, 31.082201, 34.858326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373283, 31.410046, 34.994743>,  <33.262798, 31.606752, 35.076595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373283, 31.410046, 34.994743>,  <33.557423, 31.082201, 34.858326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373283, 31.410046, 34.994743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160197, -0.454565, 0.876189,
		0.873164, 0.348718, 0.340558,
		-0.460349, 0.819614, 0.341046,
		33.235180, 31.655930, 35.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953911, 31.223024, 35.413002>,  <33.557423, 31.082201, 34.858326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953911, 31.223024, 35.413002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593040, 31.390461, 35.454685>,  <33.376518, 31.490923, 35.479694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593040, 31.390461, 35.454685>,  <33.953911, 31.223024, 35.413002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593040, 31.390461, 35.454685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113353, -0.463140, 0.879007,
		0.416206, 0.781207, 0.465282,
		-0.902177, 0.418589, 0.104209,
		33.322388, 31.516037, 35.485947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866890, 31.335148, 36.078346>,  <33.953911, 31.223024, 35.413002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866890, 31.335148, 36.078346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482899, 31.363487, 35.969955>,  <33.252506, 31.380491, 35.904919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482899, 31.363487, 35.969955>,  <33.866890, 31.335148, 36.078346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482899, 31.363487, 35.969955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280089, -0.243602, 0.928552,
		-0.000226, 0.967284, 0.253695,
		-0.959974, 0.070847, -0.270981,
		33.194908, 31.384741, 35.888660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657867, 31.681757, 36.659508>,  <33.866890, 31.335148, 36.078346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657867, 31.681757, 36.659508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360485, 31.500149, 36.463081>,  <33.182056, 31.391184, 36.345226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360485, 31.500149, 36.463081>,  <33.657867, 31.681757, 36.659508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360485, 31.500149, 36.463081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364517, -0.340522, 0.866702,
		-0.560719, 0.823352, 0.087663,
		-0.743452, -0.454021, -0.491064,
		33.137451, 31.363943, 36.315762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089340, 31.818392, 36.992020>,  <33.657867, 31.681757, 36.659508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089340, 31.818392, 36.992020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030327, 31.468975, 36.806477>,  <32.994919, 31.259325, 36.695152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030327, 31.468975, 36.806477>,  <33.089340, 31.818392, 36.992020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030327, 31.468975, 36.806477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187217, -0.435841, 0.880336,
		-0.971176, 0.216722, -0.099240,
		-0.147536, -0.873541, -0.463853,
		32.986065, 31.206913, 36.667320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599842, 31.391777, 37.522621>,  <33.089340, 31.818392, 36.992020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599842, 31.391777, 37.522621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.719101, 31.120304, 37.254143>,  <32.790657, 30.957420, 37.093056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.719101, 31.120304, 37.254143>,  <32.599842, 31.391777, 37.522621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719101, 31.120304, 37.254143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222849, -0.733234, 0.642422,
		-0.928141, -0.041964, -0.369857,
		0.298150, -0.678680, -0.671193,
		32.808548, 30.916700, 37.052784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182259, 30.962385, 37.629509>,  <32.599842, 31.391777, 37.522621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182259, 30.962385, 37.629509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.449394, 30.768517, 37.403557>,  <32.609676, 30.652195, 37.267986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.449394, 30.768517, 37.403557>,  <32.182259, 30.962385, 37.629509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449394, 30.768517, 37.403557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100918, -0.810886, 0.576437,
		-0.737432, -0.327961, -0.590453,
		0.667839, -0.484671, -0.564876,
		32.649746, 30.623116, 37.234093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860582, 30.328709, 37.392673>,  <32.182259, 30.962385, 37.629509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860582, 30.328709, 37.392673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252377, 30.261032, 37.348888>,  <32.487453, 30.220427, 37.322617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252377, 30.261032, 37.348888>,  <31.860582, 30.328709, 37.392673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252377, 30.261032, 37.348888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125921, -0.937969, 0.323046,
		-0.157327, -0.302636, -0.940032,
		0.979486, -0.169193, -0.109460,
		32.546223, 30.210274, 37.316051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941204, 29.619795, 37.189938>,  <31.860582, 30.328709, 37.392673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941204, 29.619795, 37.189938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303467, 29.706203, 37.335880>,  <32.520824, 29.758049, 37.423447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303467, 29.706203, 37.335880>,  <31.941204, 29.619795, 37.189938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303467, 29.706203, 37.335880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009217, -0.850252, 0.526295,
		0.423911, -0.480006, -0.768045,
		0.905657, 0.216023, 0.364855,
		32.575165, 29.771009, 37.445335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403187, 29.103481, 36.994438>,  <31.941204, 29.619795, 37.189938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403187, 29.103481, 36.994438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535007, 29.259602, 37.338314>,  <32.614101, 29.353273, 37.544640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535007, 29.259602, 37.338314>,  <32.403187, 29.103481, 36.994438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535007, 29.259602, 37.338314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048001, -0.916300, 0.397605,
		0.942917, -0.089766, -0.320703,
		0.329551, 0.390303, 0.859686,
		32.633873, 29.376692, 37.596218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868145, 28.647232, 37.189228>,  <32.403187, 29.103481, 36.994438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868145, 28.647232, 37.189228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804729, 28.860008, 37.521950>,  <32.766678, 28.987675, 37.721584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804729, 28.860008, 37.521950>,  <32.868145, 28.647232, 37.189228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804729, 28.860008, 37.521950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067843, -0.834602, 0.546659,
		0.985018, 0.143101, 0.096232,
		-0.158543, 0.531941, 0.831807,
		32.757168, 29.019590, 37.771492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049484, 28.055346, 37.629780>,  <32.868145, 28.647232, 37.189228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049484, 28.055346, 37.629780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.890682, 27.741364, 37.439522>,  <32.795403, 27.552975, 37.325367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.890682, 27.741364, 37.439522>,  <33.049484, 28.055346, 37.629780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890682, 27.741364, 37.439522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263386, 0.399000, -0.878309,
		0.879214, -0.473969, 0.048341,
		-0.397003, -0.784954, -0.475643,
		32.771580, 27.505877, 37.296829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550201, 27.906733, 37.075180>,  <33.049484, 28.055346, 37.629780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550201, 27.906733, 37.075180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208000, 27.730122, 36.966980>,  <33.002678, 27.624155, 36.902058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208000, 27.730122, 36.966980>,  <33.550201, 27.906733, 37.075180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208000, 27.730122, 36.966980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118957, 0.340846, -0.932563,
		0.503951, -0.829987, -0.239072,
		-0.855502, -0.441527, -0.270502,
		32.951351, 27.597664, 36.885830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684326, 27.500420, 36.521511>,  <33.550201, 27.906733, 37.075180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684326, 27.500420, 36.521511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.289364, 27.554329, 36.488358>,  <33.052387, 27.586674, 36.468468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.289364, 27.554329, 36.488358>,  <33.684326, 27.500420, 36.521511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289364, 27.554329, 36.488358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116742, 0.267033, -0.956590,
		-0.106789, -0.954217, -0.279403,
		-0.987404, 0.134771, -0.082880,
		32.993141, 27.594761, 36.463493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447277, 27.151937, 35.872158>,  <33.684326, 27.500420, 36.521511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447277, 27.151937, 35.872158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.176109, 27.432514, 35.960159>,  <33.013409, 27.600861, 36.012962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.176109, 27.432514, 35.960159>,  <33.447277, 27.151937, 35.872158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176109, 27.432514, 35.960159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085940, 0.221604, -0.971342,
		-0.730095, -0.677400, -0.089948,
		-0.677920, 0.701442, 0.220007,
		32.972733, 27.642946, 36.026161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878048, 27.064383, 35.465229>,  <33.447277, 27.151937, 35.872158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878048, 27.064383, 35.465229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.889004, 27.451424, 35.565624>,  <32.895576, 27.683649, 35.625862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.889004, 27.451424, 35.565624>,  <32.878048, 27.064383, 35.465229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889004, 27.451424, 35.565624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182305, 0.251704, -0.950479,
		-0.982861, -0.019722, 0.183293,
		0.027390, 0.967603, 0.250986,
		32.897221, 27.741705, 35.640919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346355, 27.286774, 35.046650>,  <32.878048, 27.064383, 35.465229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346355, 27.286774, 35.046650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565693, 27.598896, 35.166943>,  <32.697296, 27.786169, 35.239117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565693, 27.598896, 35.166943>,  <32.346355, 27.286774, 35.046650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565693, 27.598896, 35.166943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135489, 0.437763, -0.888823,
		-0.825202, 0.446639, 0.345769,
		0.548348, 0.780306, 0.300728,
		32.730198, 27.832989, 35.257160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988419, 27.857435, 34.814220>,  <32.346355, 27.286774, 35.046650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988419, 27.857435, 34.814220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.364609, 27.983227, 34.865768>,  <32.590324, 28.058701, 34.896698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.364609, 27.983227, 34.865768>,  <31.988419, 27.857435, 34.814220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364609, 27.983227, 34.865768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081485, 0.576772, -0.812831,
		-0.329945, 0.753948, 0.568066,
		0.940477, 0.314478, 0.128868,
		32.646751, 28.077570, 34.904430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297466, 28.023241, 34.614529>,  <31.988419, 27.857435, 34.814220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297466, 28.023241, 34.614529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.975246, 27.816395, 34.498817>,  <30.781914, 27.692287, 34.429390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.975246, 27.816395, 34.498817>,  <31.297466, 28.023241, 34.614529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975246, 27.816395, 34.498817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242163, -0.158246, 0.957244,
		-0.540781, 0.841160, 0.002249,
		-0.805551, -0.517115, -0.289274,
		30.733582, 27.661261, 34.412037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803413, 28.379591, 34.964340>,  <31.297466, 28.023241, 34.614529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803413, 28.379591, 34.964340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645948, 28.025208, 34.866272>,  <30.551470, 27.812578, 34.807430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645948, 28.025208, 34.866272>,  <30.803413, 28.379591, 34.964340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645948, 28.025208, 34.866272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328799, -0.113361, 0.937572,
		-0.858442, 0.449698, -0.246676,
		-0.393660, -0.885958, -0.245174,
		30.527851, 27.759420, 34.792721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201658, 28.345078, 35.390259>,  <30.803413, 28.379591, 34.964340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201658, 28.345078, 35.390259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.263258, 27.966202, 35.277752>,  <30.300219, 27.738876, 35.210247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.263258, 27.966202, 35.277752>,  <30.201658, 28.345078, 35.390259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263258, 27.966202, 35.277752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409305, -0.320247, 0.854349,
		-0.899307, -0.016445, -0.437008,
		0.154000, -0.947191, -0.281269,
		30.309458, 27.682045, 35.193371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580101, 28.019279, 35.410549>,  <30.201658, 28.345078, 35.390259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580101, 28.019279, 35.410549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.856310, 27.731304, 35.438454>,  <30.022036, 27.558519, 35.455196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.856310, 27.731304, 35.438454>,  <29.580101, 28.019279, 35.410549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856310, 27.731304, 35.438454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465486, -0.368488, 0.804698,
		-0.553627, -0.588135, -0.589571,
		0.690521, -0.719940, 0.069764,
		30.063467, 27.515322, 35.459381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256121, 27.310913, 35.559925>,  <29.580101, 28.019279, 35.410549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256121, 27.310913, 35.559925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.632097, 27.259750, 35.686508>,  <29.857683, 27.229053, 35.762459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.632097, 27.259750, 35.686508>,  <29.256121, 27.310913, 35.559925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632097, 27.259750, 35.686508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341330, -0.353468, 0.870950,
		0.000460, -0.926661, -0.375897,
		0.939943, -0.127904, 0.316460,
		29.914080, 27.221378, 35.781445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398621, 26.603304, 35.742962>,  <29.256121, 27.310913, 35.559925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398621, 26.603304, 35.742962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.642084, 26.828323, 35.966774>,  <29.788162, 26.963335, 36.101059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.642084, 26.828323, 35.966774>,  <29.398621, 26.603304, 35.742962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642084, 26.828323, 35.966774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290737, -0.498018, 0.816976,
		0.738245, -0.659935, -0.139568,
		0.608659, 0.562551, 0.559527,
		29.824682, 26.997089, 36.134632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595037, 26.151478, 36.240997>,  <29.398621, 26.603304, 35.742962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595037, 26.151478, 36.240997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.695374, 26.503521, 36.402237>,  <29.755575, 26.714746, 36.498981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.695374, 26.503521, 36.402237>,  <29.595037, 26.151478, 36.240997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695374, 26.503521, 36.402237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126548, -0.383026, 0.915028,
		0.959721, -0.280538, 0.015298,
		0.250841, 0.880108, 0.403099,
		29.770626, 26.767553, 36.523167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971521, 25.879789, 36.694317>,  <29.595037, 26.151478, 36.240997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971521, 25.879789, 36.694317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.888977, 26.255039, 36.805553>,  <29.839451, 26.480188, 36.872295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.888977, 26.255039, 36.805553>,  <29.971521, 25.879789, 36.694317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888977, 26.255039, 36.805553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169062, -0.314123, 0.934208,
		0.963759, 0.145771, 0.223425,
		-0.206363, 0.938124, 0.278095,
		29.827068, 26.536476, 36.888981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259613, 26.041607, 37.289398>,  <29.971521, 25.879789, 36.694317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259613, 26.041607, 37.289398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.987776, 26.335041, 37.288326>,  <29.824673, 26.511101, 37.287682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.987776, 26.335041, 37.288326>,  <30.259613, 26.041607, 37.289398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987776, 26.335041, 37.288326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296691, -0.271510, 0.915564,
		0.670915, 0.623007, 0.402164,
		-0.679594, 0.733584, -0.002680,
		29.783897, 26.555117, 37.287521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.673967, 35.012909, 23.808228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298754, 35.047104, 23.942558>,  <30.073626, 35.067619, 24.023157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298754, 35.047104, 23.942558>,  <30.673967, 35.012909, 23.808228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298754, 35.047104, 23.942558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223382, -0.591718, 0.774578,
		0.264934, 0.801600, 0.535955,
		-0.938035, 0.085489, 0.335829,
		30.017344, 35.072750, 24.043306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813574, 34.987907, 24.451071>,  <30.673967, 35.012909, 23.808228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813574, 34.987907, 24.451071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423109, 34.902863, 24.433609>,  <30.188831, 34.851837, 24.423132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423109, 34.902863, 24.433609>,  <30.813574, 34.987907, 24.451071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423109, 34.902863, 24.433609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094206, -0.596223, 0.797273,
		-0.195537, 0.774154, 0.602039,
		-0.976161, -0.212612, -0.043654,
		30.130260, 34.839081, 24.420513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506813, 35.105301, 25.160133>,  <30.813574, 34.987907, 24.451071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506813, 35.105301, 25.160133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284184, 34.833858, 24.968418>,  <30.150606, 34.670994, 24.853388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284184, 34.833858, 24.968418>,  <30.506813, 35.105301, 25.160133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284184, 34.833858, 24.968418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055512, -0.605989, 0.793534,
		-0.828942, 0.415053, 0.374948,
		-0.556573, -0.678608, -0.479289,
		30.117212, 34.630276, 24.824631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130472, 34.701721, 25.581039>,  <30.506813, 35.105301, 25.160133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130472, 34.701721, 25.581039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047615, 34.445457, 25.285297>,  <29.997900, 34.291698, 25.107851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047615, 34.445457, 25.285297>,  <30.130472, 34.701721, 25.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047615, 34.445457, 25.285297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050092, -0.747812, 0.662018,
		-0.977027, 0.174169, 0.122813,
		-0.207144, -0.640657, -0.739357,
		29.985472, 34.253262, 25.063490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456404, 34.285225, 25.752028>,  <30.130472, 34.701721, 25.581039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456404, 34.285225, 25.752028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645676, 34.053211, 25.486801>,  <29.759239, 33.914001, 25.327665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645676, 34.053211, 25.486801>,  <29.456404, 34.285225, 25.752028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645676, 34.053211, 25.486801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045563, -0.767763, 0.639112,
		-0.879786, -0.272205, -0.389720,
		0.473182, -0.580038, -0.663065,
		29.787630, 33.879200, 25.287882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229370, 33.668846, 25.943914>,  <29.456404, 34.285225, 25.752028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229370, 33.668846, 25.943914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528986, 33.539837, 25.712425>,  <29.708755, 33.462433, 25.573532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528986, 33.539837, 25.712425>,  <29.229370, 33.668846, 25.943914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528986, 33.539837, 25.712425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038887, -0.850602, 0.524370,
		-0.661383, -0.415279, -0.624593,
		0.749040, -0.322521, -0.578722,
		29.753698, 33.443081, 25.538809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061991, 32.933689, 25.850859>,  <29.229370, 33.668846, 25.943914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061991, 32.933689, 25.850859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448032, 33.010727, 25.779888>,  <29.679657, 33.056950, 25.737305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448032, 33.010727, 25.779888>,  <29.061991, 32.933689, 25.850859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448032, 33.010727, 25.779888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257794, -0.817764, 0.514591,
		-0.045987, -0.542374, -0.838878,
		0.965105, 0.192594, -0.177427,
		29.737564, 33.068504, 25.726660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402733, 32.274433, 25.636934>,  <29.061991, 32.933689, 25.850859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402733, 32.274433, 25.636934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704998, 32.504932, 25.761459>,  <29.886356, 32.643230, 25.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704998, 32.504932, 25.761459>,  <29.402733, 32.274433, 25.636934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704998, 32.504932, 25.761459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389221, -0.777373, 0.494164,
		0.526764, -0.252253, -0.811719,
		0.755663, 0.576246, 0.311311,
		29.931698, 32.677807, 25.854853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000635, 31.881441, 25.487823>,  <29.402733, 32.274433, 25.636934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000635, 31.881441, 25.487823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072702, 32.156536, 25.769123>,  <30.115942, 32.321594, 25.937902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072702, 32.156536, 25.769123>,  <30.000635, 31.881441, 25.487823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072702, 32.156536, 25.769123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468389, -0.688672, 0.553483,
		0.864958, 0.229675, -0.446204,
		0.180167, 0.687736, 0.703249,
		30.126753, 32.362858, 25.980099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491734, 31.446339, 25.859608>,  <30.000635, 31.881441, 25.487823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491734, 31.446339, 25.859608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476313, 31.780834, 26.078411>,  <30.467060, 31.981531, 26.209694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476313, 31.780834, 26.078411>,  <30.491734, 31.446339, 25.859608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476313, 31.780834, 26.078411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517699, -0.451507, 0.726725,
		0.854694, 0.311203, -0.415513,
		-0.038552, 0.836238, 0.547010,
		30.464746, 32.031704, 26.242514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238930, 31.452965, 26.230417>,  <30.491734, 31.446339, 25.859608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238930, 31.452965, 26.230417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957640, 31.673504, 26.409969>,  <30.788866, 31.805826, 26.517700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957640, 31.673504, 26.409969>,  <31.238930, 31.452965, 26.230417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957640, 31.673504, 26.409969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294055, -0.349280, 0.889683,
		0.647307, 0.757642, 0.083496,
		-0.703225, 0.551345, 0.448879,
		30.746672, 31.838907, 26.544634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533957, 31.880522, 26.695465>,  <31.238930, 31.452965, 26.230417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533957, 31.880522, 26.695465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157469, 31.801952, 26.805389>,  <30.931576, 31.754810, 26.871344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157469, 31.801952, 26.805389>,  <31.533957, 31.880522, 26.695465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157469, 31.801952, 26.805389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331553, -0.381578, 0.862828,
		-0.064620, 0.903225, 0.424274,
		-0.941221, -0.196425, 0.274809,
		30.875103, 31.743025, 26.887833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239738, 32.077274, 26.882818>,  <31.533957, 31.880522, 26.695465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239738, 32.077274, 26.882818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611671, 31.960262, 26.972115>,  <32.834831, 31.890055, 27.025692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611671, 31.960262, 26.972115>,  <32.239738, 32.077274, 26.882818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611671, 31.960262, 26.972115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328917, 0.388697, -0.860656,
		0.164993, 0.873694, 0.457641,
		0.929834, -0.292528, 0.223241,
		32.890621, 31.872503, 27.039087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695972, 32.667377, 26.816706>,  <32.239738, 32.077274, 26.882818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695972, 32.667377, 26.816706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938251, 32.350170, 26.790630>,  <33.083618, 32.159847, 26.774984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938251, 32.350170, 26.790630>,  <32.695972, 32.667377, 26.816706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938251, 32.350170, 26.790630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489494, 0.435951, -0.755210,
		0.627315, 0.425522, 0.652233,
		0.605700, -0.793018, -0.065188,
		33.119961, 32.112263, 26.771074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400379, 32.937607, 26.895254>,  <32.695972, 32.667377, 26.816706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400379, 32.937607, 26.895254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411060, 32.600288, 26.680542>,  <33.417469, 32.397896, 26.551714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411060, 32.600288, 26.680542>,  <33.400379, 32.937607, 26.895254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411060, 32.600288, 26.680542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496146, 0.477348, -0.725244,
		0.867829, -0.246956, 0.431145,
		0.026703, -0.843298, -0.536783,
		33.419071, 32.347298, 26.519506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084595, 32.951508, 26.555716>,  <33.400379, 32.937607, 26.895254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084595, 32.951508, 26.555716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895763, 32.665577, 26.349354>,  <33.782463, 32.494019, 26.225536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895763, 32.665577, 26.349354>,  <34.084595, 32.951508, 26.555716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895763, 32.665577, 26.349354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477841, 0.284301, -0.831169,
		0.740817, -0.638898, 0.207363,
		-0.472079, -0.714830, -0.515906,
		33.754139, 32.451126, 26.194582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612854, 32.539028, 26.175459>,  <34.084595, 32.951508, 26.555716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612854, 32.539028, 26.175459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281475, 32.449173, 25.970245>,  <34.082645, 32.395260, 25.847116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281475, 32.449173, 25.970245>,  <34.612854, 32.539028, 26.175459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281475, 32.449173, 25.970245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493764, 0.139367, -0.858355,
		0.264321, -0.964424, -0.004540,
		-0.828451, -0.224640, -0.513036,
		34.032940, 32.381783, 25.816334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823956, 32.137093, 25.534313>,  <34.612854, 32.539028, 26.175459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823956, 32.137093, 25.534313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463482, 32.275719, 25.430183>,  <34.247200, 32.358894, 25.367704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463482, 32.275719, 25.430183>,  <34.823956, 32.137093, 25.534313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463482, 32.275719, 25.430183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286074, 0.024350, -0.957898,
		-0.325633, -0.937711, -0.121087,
		-0.901180, 0.346563, -0.260326,
		34.193127, 32.379688, 25.352085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489204, 31.685858, 25.049519>,  <34.823956, 32.137093, 25.534313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489204, 31.685858, 25.049519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306347, 32.037281, 24.994160>,  <34.196632, 32.248135, 24.960943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306347, 32.037281, 24.994160>,  <34.489204, 31.685858, 25.049519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306347, 32.037281, 24.994160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353995, 0.036983, -0.934516,
		-0.815908, -0.476202, -0.327911,
		-0.457145, 0.878558, -0.138398,
		34.169205, 32.300850, 24.952641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404694, 31.684324, 24.351040>,  <34.489204, 31.685858, 25.049519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404694, 31.684324, 24.351040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374298, 32.070244, 24.451752>,  <34.356060, 32.301796, 24.512178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374298, 32.070244, 24.451752>,  <34.404694, 31.684324, 24.351040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374298, 32.070244, 24.451752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367083, 0.261843, -0.892573,
		-0.927079, 0.024600, -0.374058,
		-0.075988, 0.964797, 0.251780,
		34.351501, 32.359684, 24.527287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049347, 32.028172, 23.741955>,  <34.404694, 31.684324, 24.351040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049347, 32.028172, 23.741955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243633, 32.312073, 23.946045>,  <34.360203, 32.482414, 24.068499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243633, 32.312073, 23.946045>,  <34.049347, 32.028172, 23.741955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243633, 32.312073, 23.946045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469822, 0.280248, -0.837095,
		-0.737123, 0.646303, -0.197339,
		0.485713, 0.709756, 0.510225,
		34.389347, 32.525002, 24.099112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953957, 32.493996, 23.218054>,  <34.049347, 32.028172, 23.741955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953957, 32.493996, 23.218054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254551, 32.631653, 23.443207>,  <34.434906, 32.714249, 23.578299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254551, 32.631653, 23.443207>,  <33.953957, 32.493996, 23.218054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254551, 32.631653, 23.443207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488705, 0.282783, -0.825349,
		-0.443214, 0.895319, 0.044321,
		0.751484, 0.344147, 0.562881,
		34.479996, 32.734898, 23.612070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125145, 33.093754, 22.809523>,  <33.953957, 32.493996, 23.218054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125145, 33.093754, 22.809523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432957, 33.023777, 23.055199>,  <34.617641, 32.981792, 23.202604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432957, 33.023777, 23.055199>,  <34.125145, 33.093754, 22.809523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432957, 33.023777, 23.055199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638078, 0.250100, -0.728222,
		-0.026215, 0.952285, 0.304083,
		0.769526, -0.174938, 0.614188,
		34.663815, 32.971294, 23.239454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648014, 33.712296, 22.940826>,  <34.125145, 33.093754, 22.809523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648014, 33.712296, 22.940826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846008, 33.367634, 22.985622>,  <34.964806, 33.160835, 23.012499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846008, 33.367634, 22.985622>,  <34.648014, 33.712296, 22.940826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846008, 33.367634, 22.985622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669975, 0.296409, -0.680643,
		0.553285, 0.411938, 0.724005,
		0.494984, -0.861655, 0.111989,
		34.994503, 33.109138, 23.019218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224171, 33.945107, 22.772772>,  <34.648014, 33.712296, 22.940826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224171, 33.945107, 22.772772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321712, 33.558014, 22.798187>,  <35.380238, 33.325760, 22.813437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321712, 33.558014, 22.798187>,  <35.224171, 33.945107, 22.772772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321712, 33.558014, 22.798187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762269, 0.150752, -0.629460,
		0.599567, 0.201929, 0.774431,
		0.243853, -0.967728, 0.063539,
		35.394867, 33.267696, 22.817249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859695, 33.939465, 23.063597>,  <35.224171, 33.945107, 22.772772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859695, 33.939465, 23.063597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798935, 33.626045, 22.822605>,  <35.762478, 33.437996, 22.678011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798935, 33.626045, 22.822605>,  <35.859695, 33.939465, 23.063597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798935, 33.626045, 22.822605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896958, 0.146774, -0.417041,
		0.415199, -0.603748, 0.680513,
		-0.151906, -0.783547, -0.602477,
		35.753365, 33.390980, 22.641861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238487, 34.418041, 23.559227>,  <35.859695, 33.939465, 23.063597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238487, 34.418041, 23.559227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476871, 34.711166, 23.690567>,  <36.619904, 34.887043, 23.769371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476871, 34.711166, 23.690567>,  <36.238487, 34.418041, 23.559227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476871, 34.711166, 23.690567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327073, -0.151922, 0.932707,
		0.733384, -0.663253, 0.149143,
		0.595963, 0.732813, 0.328349,
		36.655659, 34.931011, 23.789072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868679, 34.340538, 24.074110>,  <36.238487, 34.418041, 23.559227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868679, 34.340538, 24.074110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634678, 34.661495, 24.121323>,  <36.494278, 34.854069, 24.149651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634678, 34.661495, 24.121323>,  <36.868679, 34.340538, 24.074110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634678, 34.661495, 24.121323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147259, -0.248202, 0.957450,
		0.797551, 0.542729, 0.263359,
		-0.585002, 0.802397, 0.118032,
		36.459179, 34.902214, 24.156733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152496, 34.600410, 24.589615>,  <36.868679, 34.340538, 24.074110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152496, 34.600410, 24.589615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771259, 34.721474, 24.588078>,  <36.542519, 34.794113, 24.587154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771259, 34.721474, 24.588078>,  <37.152496, 34.600410, 24.589615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771259, 34.721474, 24.588078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023275, -0.060616, 0.997890,
		0.301787, 0.951169, 0.064816,
		-0.953091, 0.302658, -0.003845,
		36.485332, 34.812271, 24.586924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001503, 35.199558, 25.087986>,  <37.152496, 34.600410, 24.589615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001503, 35.199558, 25.087986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647953, 35.023785, 25.023918>,  <36.435822, 34.918320, 24.985477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647953, 35.023785, 25.023918>,  <37.001503, 35.199558, 25.087986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647953, 35.023785, 25.023918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150055, -0.057921, 0.986979,
		-0.442991, 0.896405, -0.014745,
		-0.883879, -0.439436, -0.160169,
		36.382790, 34.891953, 24.975868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614529, 35.445908, 25.637981>,  <37.001503, 35.199558, 25.087986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614529, 35.445908, 25.637981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388756, 35.135525, 25.525330>,  <36.253292, 34.949295, 25.457739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388756, 35.135525, 25.525330>,  <36.614529, 35.445908, 25.637981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388756, 35.135525, 25.525330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182155, -0.215686, 0.959322,
		-0.805133, 0.592770, -0.019605,
		-0.564429, -0.775953, -0.281632,
		36.219429, 34.902740, 25.440840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072964, 35.432278, 26.117836>,  <36.614529, 35.445908, 25.637981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072964, 35.432278, 26.117836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035576, 35.069561, 25.953400>,  <36.013142, 34.851933, 25.854738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035576, 35.069561, 25.953400>,  <36.072964, 35.432278, 26.117836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035576, 35.069561, 25.953400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262773, -0.375787, 0.888670,
		-0.960319, 0.191089, -0.203155,
		-0.093472, -0.906791, -0.411089,
		36.007534, 34.797523, 25.830072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365597, 35.131397, 26.197172>,  <36.072964, 35.432278, 26.117836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365597, 35.131397, 26.197172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615883, 34.823196, 26.148491>,  <35.766052, 34.638275, 26.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615883, 34.823196, 26.148491>,  <35.365597, 35.131397, 26.197172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615883, 34.823196, 26.148491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259672, -0.352863, 0.898921,
		-0.735564, -0.530863, -0.420868,
		0.625713, -0.770501, -0.121703,
		35.803596, 34.592045, 26.111980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925098, 34.475056, 26.193632>,  <35.365597, 35.131397, 26.197172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925098, 34.475056, 26.193632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296619, 34.376339, 26.304207>,  <35.519531, 34.317108, 26.370552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296619, 34.376339, 26.304207>,  <34.925098, 34.475056, 26.193632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296619, 34.376339, 26.304207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359291, -0.417101, 0.834827,
		-0.090723, -0.874713, -0.476074,
		0.928806, -0.246787, 0.276435,
		35.575260, 34.302303, 26.387136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827103, 33.899227, 26.664318>,  <34.925098, 34.475056, 26.193632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827103, 33.899227, 26.664318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209286, 34.006966, 26.712566>,  <35.438595, 34.071609, 26.741514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209286, 34.006966, 26.712566>,  <34.827103, 33.899227, 26.664318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209286, 34.006966, 26.712566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007339, -0.430265, 0.902673,
		0.295033, -0.861582, -0.413077,
		0.955459, 0.269350, 0.120619,
		35.495922, 34.087772, 26.748753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133102, 33.309795, 26.931364>,  <34.827103, 33.899227, 26.664318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133102, 33.309795, 26.931364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368210, 33.618595, 27.028149>,  <35.509274, 33.803875, 27.086220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368210, 33.618595, 27.028149>,  <35.133102, 33.309795, 26.931364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368210, 33.618595, 27.028149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026186, -0.280766, 0.959419,
		0.808608, -0.570249, -0.144808,
		0.587765, 0.772002, 0.241962,
		35.544540, 33.850197, 27.100737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620293, 33.023499, 27.457315>,  <35.133102, 33.309795, 26.931364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620293, 33.023499, 27.457315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631859, 33.418156, 27.521442>,  <35.638798, 33.654949, 27.559919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631859, 33.418156, 27.521442>,  <35.620293, 33.023499, 27.457315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631859, 33.418156, 27.521442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165160, -0.153466, 0.974254,
		0.985843, -0.054651, 0.158516,
		0.028917, 0.986641, 0.160319,
		35.640533, 33.714149, 27.569538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095585, 33.119164, 27.952761>,  <35.620293, 33.023499, 27.457315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095585, 33.119164, 27.952761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853748, 33.437458, 27.967018>,  <35.708645, 33.628433, 27.975573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853748, 33.437458, 27.967018>,  <36.095585, 33.119164, 27.952761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853748, 33.437458, 27.967018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152175, -0.159314, 0.975429,
		0.781863, 0.584314, 0.217411,
		-0.604593, 0.795736, 0.035644,
		35.672371, 33.676178, 27.977711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301613, 33.457123, 28.514111>,  <36.095585, 33.119164, 27.952761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301613, 33.457123, 28.514111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929832, 33.594501, 28.460201>,  <35.706764, 33.676929, 28.427856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929832, 33.594501, 28.460201>,  <36.301613, 33.457123, 28.514111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929832, 33.594501, 28.460201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138331, 0.014239, 0.990284,
		0.342029, 0.939064, 0.034275,
		-0.929452, 0.343447, -0.134771,
		35.650997, 33.697536, 28.419769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203876, 34.017399, 28.969984>,  <36.301613, 33.457123, 28.514111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203876, 34.017399, 28.969984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827713, 33.920612, 28.874416>,  <35.602016, 33.862541, 28.817076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827713, 33.920612, 28.874416>,  <36.203876, 34.017399, 28.969984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827713, 33.920612, 28.874416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288270, 0.194606, 0.937566,
		-0.180366, 0.950568, -0.252762,
		-0.940409, -0.241969, -0.238920,
		35.545589, 33.848022, 28.802740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810329, 34.365303, 29.447176>,  <36.203876, 34.017399, 28.969984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810329, 34.365303, 29.447176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544022, 34.097462, 29.315495>,  <35.384235, 33.936756, 29.236486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544022, 34.097462, 29.315495>,  <35.810329, 34.365303, 29.447176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544022, 34.097462, 29.315495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361709, -0.096260, 0.927308,
		-0.652621, 0.736451, -0.178115,
		-0.665772, -0.669607, -0.329202,
		35.344292, 33.896580, 29.216734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214050, 34.592564, 29.549446>,  <35.810329, 34.365303, 29.447176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214050, 34.592564, 29.549446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157761, 34.196854, 29.533756>,  <35.123985, 33.959427, 29.524342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157761, 34.196854, 29.533756>,  <35.214050, 34.592564, 29.549446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157761, 34.196854, 29.533756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527861, 0.041453, 0.848318,
		-0.837591, 0.140086, -0.528031,
		-0.140726, -0.989271, -0.039225,
		35.115543, 33.900074, 29.521988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450581, 34.455078, 29.783051>,  <35.214050, 34.592564, 29.549446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450581, 34.455078, 29.783051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641117, 34.106323, 29.828506>,  <34.755440, 33.897072, 29.855780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641117, 34.106323, 29.828506>,  <34.450581, 34.455078, 29.783051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641117, 34.106323, 29.828506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635677, -0.252195, 0.729597,
		-0.607467, -0.419775, -0.674369,
		0.476339, -0.871887, 0.113641,
		34.784019, 33.844757, 29.862598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927170, 33.882240, 29.888260>,  <34.450581, 34.455078, 29.783051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927170, 33.882240, 29.888260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269047, 33.725266, 30.024197>,  <34.474174, 33.631081, 30.105759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269047, 33.725266, 30.024197>,  <33.927170, 33.882240, 29.888260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269047, 33.725266, 30.024197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448447, -0.228341, 0.864151,
		-0.261520, -0.890987, -0.371146,
		0.854694, -0.392432, 0.339845,
		34.525455, 33.607536, 30.126150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670856, 33.171825, 30.181910>,  <33.927170, 33.882240, 29.888260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670856, 33.171825, 30.181910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021946, 33.276234, 30.342640>,  <34.232601, 33.338879, 30.439077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021946, 33.276234, 30.342640>,  <33.670856, 33.171825, 30.181910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021946, 33.276234, 30.342640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413389, -0.011542, 0.910481,
		0.242291, -0.965265, 0.097771,
		0.877727, 0.261019, 0.401826,
		34.285263, 33.354538, 30.463188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869450, 32.739586, 30.637278>,  <33.670856, 33.171825, 30.181910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869450, 32.739586, 30.637278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103683, 33.037769, 30.764637>,  <34.244225, 33.216679, 30.841053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103683, 33.037769, 30.764637>,  <33.869450, 32.739586, 30.637278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103683, 33.037769, 30.764637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268614, -0.192147, 0.943889,
		0.764810, -0.638256, 0.087722,
		0.585587, 0.745459, 0.318401,
		34.279358, 33.261406, 30.860157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186378, 32.430496, 31.191219>,  <33.869450, 32.739586, 30.637278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186378, 32.430496, 31.191219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259922, 32.820667, 31.239769>,  <34.304047, 33.054771, 31.268898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259922, 32.820667, 31.239769>,  <34.186378, 32.430496, 31.191219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259922, 32.820667, 31.239769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163852, -0.091337, 0.982247,
		0.969200, -0.200479, 0.143034,
		0.183856, 0.975431, 0.121373,
		34.315079, 33.113297, 31.276180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663654, 32.505390, 31.848463>,  <34.186378, 32.430496, 31.191219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663654, 32.505390, 31.848463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471485, 32.845226, 31.761379>,  <34.356186, 33.049126, 31.709129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471485, 32.845226, 31.761379>,  <34.663654, 32.505390, 31.848463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471485, 32.845226, 31.761379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263123, 0.097179, 0.959856,
		0.836638, 0.518419, 0.176859,
		-0.480421, 0.849587, -0.217712,
		34.327358, 33.100101, 31.696066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758144, 33.013706, 32.407040>,  <34.663654, 32.505390, 31.848463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758144, 33.013706, 32.407040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425571, 33.149391, 32.231014>,  <34.226028, 33.230801, 32.125401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425571, 33.149391, 32.231014>,  <34.758144, 33.013706, 32.407040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425571, 33.149391, 32.231014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527058, -0.230800, 0.817888,
		0.175870, 0.911958, 0.370678,
		-0.831432, 0.339211, -0.440064,
		34.176140, 33.251156, 32.098995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546341, 33.565258, 32.784313>,  <34.758144, 33.013706, 32.407040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546341, 33.565258, 32.784313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204185, 33.452190, 32.610687>,  <33.998894, 33.384350, 32.506512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204185, 33.452190, 32.610687>,  <34.546341, 33.565258, 32.784313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204185, 33.452190, 32.610687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461297, 0.034507, 0.886575,
		-0.235629, 0.958597, -0.159911,
		-0.855385, -0.282669, -0.434067,
		33.947571, 33.367390, 32.480469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103531, 33.851833, 33.071201>,  <34.546341, 33.565258, 32.784313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103531, 33.851833, 33.071201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875782, 33.559856, 32.919937>,  <33.739132, 33.384670, 32.829178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875782, 33.559856, 32.919937>,  <34.103531, 33.851833, 33.071201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875782, 33.559856, 32.919937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507637, -0.049643, 0.860140,
		-0.646624, 0.681705, -0.342280,
		-0.569370, -0.729941, -0.378159,
		33.704971, 33.340874, 32.806488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435692, 34.018600, 33.368095>,  <34.103531, 33.851833, 33.071201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435692, 34.018600, 33.368095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417332, 33.634827, 33.256821>,  <33.406315, 33.404564, 33.190056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417332, 33.634827, 33.256821>,  <33.435692, 34.018600, 33.368095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417332, 33.634827, 33.256821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428598, -0.232630, 0.873033,
		-0.902329, 0.159302, -0.400532,
		-0.045900, -0.959430, -0.278186,
		33.403561, 33.346996, 33.173367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777916, 33.685375, 33.680183>,  <33.435692, 34.018600, 33.368095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777916, 33.685375, 33.680183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992386, 33.360863, 33.586941>,  <33.121067, 33.166157, 33.530994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992386, 33.360863, 33.586941>,  <32.777916, 33.685375, 33.680183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992386, 33.360863, 33.586941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321298, -0.451519, 0.832405,
		-0.780565, -0.371421, -0.502757,
		0.536177, -0.811281, -0.233103,
		33.153240, 33.117477, 33.517010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320824, 33.035400, 33.754833>,  <32.777916, 33.685375, 33.680183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320824, 33.035400, 33.754833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709492, 32.954250, 33.803333>,  <32.942692, 32.905560, 33.832432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709492, 32.954250, 33.803333>,  <32.320824, 33.035400, 33.754833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709492, 32.954250, 33.803333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200909, -0.438798, 0.875838,
		-0.124482, -0.875384, -0.467126,
		0.971668, -0.202876, 0.121250,
		33.000992, 32.893387, 33.839706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621780, 32.582909, 33.648281>,  <32.320824, 33.035400, 33.754833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621780, 32.582909, 33.648281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294487, 32.809273, 33.688763>,  <31.098110, 32.945091, 33.713051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294487, 32.809273, 33.688763>,  <31.621780, 32.582909, 33.648281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294487, 32.809273, 33.688763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128858, 0.352096, -0.927051,
		-0.560259, -0.745504, -0.361019,
		-0.818233, 0.565908, 0.101200,
		31.049017, 32.979046, 33.719124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194851, 32.475597, 33.084896>,  <31.621780, 32.582909, 33.648281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194851, 32.475597, 33.084896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076551, 32.839325, 33.201973>,  <31.005571, 33.057564, 33.272221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076551, 32.839325, 33.201973>,  <31.194851, 32.475597, 33.084896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076551, 32.839325, 33.201973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175945, 0.353009, -0.918928,
		-0.938923, -0.220274, -0.264392,
		-0.295749, 0.909321, 0.292692,
		30.987827, 33.112122, 33.289780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600403, 32.700447, 32.661510>,  <31.194851, 32.475597, 33.084896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600403, 32.700447, 32.661510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730232, 33.049164, 32.808285>,  <30.808130, 33.258392, 32.896347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730232, 33.049164, 32.808285>,  <30.600403, 32.700447, 32.661510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730232, 33.049164, 32.808285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164982, 0.329807, -0.929520,
		-0.931361, 0.362234, -0.036783,
		0.324573, 0.871787, 0.366932,
		30.827604, 33.310699, 32.918365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261381, 33.243309, 32.347881>,  <30.600403, 32.700447, 32.661510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261381, 33.243309, 32.347881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594345, 33.433029, 32.462517>,  <30.794125, 33.546860, 32.531296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594345, 33.433029, 32.462517>,  <30.261381, 33.243309, 32.347881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594345, 33.433029, 32.462517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001804, 0.514832, -0.857289,
		-0.554156, 0.714134, 0.427696,
		0.832411, 0.474300, 0.286585,
		30.844069, 33.575317, 32.548492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161776, 33.950798, 32.214462>,  <30.261381, 33.243309, 32.347881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161776, 33.950798, 32.214462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557013, 33.893612, 32.237221>,  <30.794155, 33.859303, 32.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557013, 33.893612, 32.237221>,  <30.161776, 33.950798, 32.214462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557013, 33.893612, 32.237221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124591, 0.526394, -0.841063,
		0.090289, 0.838136, 0.537937,
		0.988092, -0.142961, 0.056897,
		30.853439, 33.850723, 32.254292>
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
