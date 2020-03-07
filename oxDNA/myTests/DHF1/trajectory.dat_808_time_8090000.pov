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
	<2.674287, 0.536847, 0.537415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.993721, 0.393463, 0.344017>,  <3.185382, 0.307433, 0.227978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.993721, 0.393463, 0.344017>,  <2.674287, 0.536847, 0.537415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.993721, 0.393463, 0.344017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417170, -0.249399, 0.873939,
		-0.433855, -0.899615, -0.049628,
		0.798586, -0.358459, -0.483495,
		3.233297, 0.285926, 0.198968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.825780, -0.193416, 0.746090>,  <2.674287, 0.536847, 0.537415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.825780, -0.193416, 0.746090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.157845, 0.000969, 0.636784>,  <3.357083, 0.117600, 0.571200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.157845, 0.000969, 0.636784>,  <2.825780, -0.193416, 0.746090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.157845, 0.000969, 0.636784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383241, -0.141423, 0.912757,
		0.404920, -0.862461, -0.303645,
		0.830160, 0.485963, -0.273265,
		3.406893, 0.146758, 0.554804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.515808, -0.707898, 0.929586>,  <2.825780, -0.193416, 0.746090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.515808, -0.707898, 0.929586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.544991, -0.309715, 0.905109>,  <3.562500, -0.070806, 0.890423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.544991, -0.309715, 0.905109>,  <3.515808, -0.707898, 0.929586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.544991, -0.309715, 0.905109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357449, 0.031181, 0.933412,
		0.931079, -0.089970, -0.353550,
		0.072955, 0.995456, -0.061192,
		3.566877, -0.011078, 0.886752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.052706, -0.556895, 1.308554>,  <3.515808, -0.707898, 0.929586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.052706, -0.556895, 1.308554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839970, -0.218933, 1.285646>,  <3.712327, -0.016156, 1.271902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839970, -0.218933, 1.285646>,  <4.052706, -0.556895, 1.308554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.839970, -0.218933, 1.285646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116656, 0.140078, 0.983245,
		0.838770, 0.516250, -0.173062,
		-0.531842, 0.844905, -0.057269,
		3.680417, 0.034538, 1.268466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.453777, -0.139905, 1.559791>,  <4.052706, -0.556895, 1.308554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.453777, -0.139905, 1.559791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.091915, 0.026039, 1.598759>,  <3.874798, 0.125606, 1.622139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.091915, 0.026039, 1.598759>,  <4.453777, -0.139905, 1.559791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.091915, 0.026039, 1.598759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185553, 0.177681, 0.966437,
		0.383627, 0.892368, -0.237719,
		-0.904655, 0.414861, 0.097418,
		3.820519, 0.150497, 1.627984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.501455, 0.435816, 1.904839>,  <4.453777, -0.139905, 1.559791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.501455, 0.435816, 1.904839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.109375, 0.376816, 1.957678>,  <3.874127, 0.341416, 1.989381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.109375, 0.376816, 1.957678>,  <4.501455, 0.435816, 1.904839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.109375, 0.376816, 1.957678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106114, 0.171935, 0.979376,
		-0.167170, 0.974003, -0.152879,
		-0.980201, -0.147500, 0.132098,
		3.815315, 0.332566, 1.997307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.126334, 0.982347, 2.335239>,  <4.501455, 0.435816, 1.904839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.126334, 0.982347, 2.335239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.939034, 0.631218, 2.375576>,  <3.826653, 0.420541, 2.399778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.939034, 0.631218, 2.375576>,  <4.126334, 0.982347, 2.335239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.939034, 0.631218, 2.375576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135260, 0.041570, 0.989938,
		-0.873182, 0.477178, 0.099269,
		-0.468250, -0.877823, 0.100841,
		3.798558, 0.367871, 2.405828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.682086, 1.172713, 2.935301>,  <4.126334, 0.982347, 2.335239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.682086, 1.172713, 2.935301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.715984, 0.782227, 2.855482>,  <3.736323, 0.547934, 2.807591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.715984, 0.782227, 2.855482>,  <3.682086, 1.172713, 2.935301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.715984, 0.782227, 2.855482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218319, -0.177208, 0.959653,
		-0.972191, -0.124891, 0.198109,
		0.084745, -0.976217, -0.199546,
		3.741408, 0.489361, 2.795618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.621159, 0.331390, 3.639971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.533630, -0.058899, 3.636343>,  <4.481113, -0.293072, 3.634166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.533630, -0.058899, 3.636343>,  <4.621159, 0.331390, 3.639971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.533630, -0.058899, 3.636343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664394, 0.155795, -0.730964,
		0.714632, -0.153924, -0.682356,
		-0.218821, -0.975723, -0.009070,
		4.467984, -0.351616, 3.633622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.741897, -0.060841, 2.954710>,  <4.621159, 0.331390, 3.639971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.741897, -0.060841, 2.954710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.429932, -0.177467, 3.176241>,  <4.242753, -0.247443, 3.309160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.429932, -0.177467, 3.176241>,  <4.741897, -0.060841, 2.954710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.429932, -0.177467, 3.176241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604988, 0.124426, -0.786453,
		0.160401, -0.948421, -0.273441,
		-0.779911, -0.291576, 0.553825,
		4.195958, -0.264937, 3.342389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.336995, -0.631645, 2.676159>,  <4.741897, -0.060841, 2.954710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.336995, -0.631645, 2.676159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.102234, -0.376968, 2.876226>,  <3.961378, -0.224162, 2.996267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.102234, -0.376968, 2.876226>,  <4.336995, -0.631645, 2.676159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.102234, -0.376968, 2.876226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581592, 0.098261, -0.807524,
		-0.563292, -0.764832, 0.312626,
		-0.586901, 0.636692, 0.500170,
		3.926163, -0.185961, 3.026277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.665262, -0.832398, 2.589458>,  <4.336995, -0.631645, 2.676159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.665262, -0.832398, 2.589458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649406, -0.437943, 2.653904>,  <3.639893, -0.201269, 2.692572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649406, -0.437943, 2.653904>,  <3.665262, -0.832398, 2.589458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.649406, -0.437943, 2.653904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548321, 0.113329, -0.828554,
		-0.835328, -0.121185, 0.536228,
		-0.039639, 0.986140, 0.161115,
		3.637515, -0.142101, 2.702239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.976078, -0.617242, 2.369472>,  <3.665262, -0.832398, 2.589458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.976078, -0.617242, 2.369472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.207512, -0.291222, 2.381676>,  <3.346372, -0.095609, 2.388998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.207512, -0.291222, 2.381676>,  <2.976078, -0.617242, 2.369472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.207512, -0.291222, 2.381676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264477, 0.222869, -0.938286,
		-0.771551, 0.534810, 0.344511,
		0.578586, 0.815051, 0.030510,
		3.381088, -0.046706, 2.390829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.574506, -0.017977, 2.175964>,  <2.976078, -0.617242, 2.369472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.574506, -0.017977, 2.175964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.949921, 0.108063, 2.119593>,  <3.175169, 0.183687, 2.085770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.949921, 0.108063, 2.119593>,  <2.574506, -0.017977, 2.175964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.949921, 0.108063, 2.119593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208607, 0.192491, -0.958869,
		-0.275013, 0.929332, 0.246392,
		0.938537, 0.315101, -0.140928,
		3.231482, 0.202593, 2.077314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.694948, 0.717960, 1.851681>,  <2.574506, -0.017977, 2.175964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.694948, 0.717960, 1.851681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.032936, 0.531090, 1.747549>,  <3.235729, 0.418968, 1.685070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.032936, 0.531090, 1.747549>,  <2.694948, 0.717960, 1.851681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.032936, 0.531090, 1.747549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215358, 0.148337, -0.965203,
		0.489536, 0.871632, 0.024731,
		0.844971, -0.467176, -0.260329,
		3.286427, 0.390937, 1.669450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.851694, 1.023592, 1.248763>,  <2.694948, 0.717960, 1.851681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.851694, 1.023592, 1.248763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.107910, 0.716934, 1.266481>,  <3.261640, 0.532939, 1.277113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.107910, 0.716934, 1.266481>,  <2.851694, 1.023592, 1.248763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.107910, 0.716934, 1.266481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012720, -0.047083, -0.998810,
		0.767819, 0.640342, -0.020407,
		0.640541, -0.766646, 0.044297,
		3.300072, 0.486940, 1.279770>
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
