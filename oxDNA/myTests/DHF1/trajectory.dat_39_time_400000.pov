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
	<5.262299, 0.641332, 5.180376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370070, 0.993832, 5.025039>,  <5.434732, 1.205331, 4.931837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370070, 0.993832, 5.025039>,  <5.262299, 0.641332, 5.180376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.370070, 0.993832, 5.025039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865437, 0.044689, -0.499021,
		-0.422408, 0.470536, 0.774705,
		0.269428, 0.881249, -0.388342,
		5.450898, 1.258206, 4.908536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.690800, 1.260513, 5.208219>,  <5.262299, 0.641332, 5.180376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.690800, 1.260513, 5.208219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.961855, 1.248398, 4.914310>,  <5.124488, 1.241129, 4.737966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.961855, 1.248398, 4.914310>,  <4.690800, 1.260513, 5.208219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.961855, 1.248398, 4.914310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734764, -0.069281, -0.674776,
		-0.030468, 0.997137, -0.069202,
		0.677638, -0.030288, -0.734771,
		5.165146, 1.239311, 4.693879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.710977, 1.832026, 4.715749>,  <4.690800, 1.260513, 5.208219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.710977, 1.832026, 4.715749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.815886, 1.494789, 4.527957>,  <4.878831, 1.292447, 4.415282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.815886, 1.494789, 4.527957>,  <4.710977, 1.832026, 4.715749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.815886, 1.494789, 4.527957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887376, -0.019543, -0.460632,
		0.379180, 0.537415, -0.753264,
		0.262272, -0.843091, -0.469479,
		4.894567, 1.241862, 4.387113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.012955, 1.924214, 3.957592>,  <4.710977, 1.832026, 4.715749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.012955, 1.924214, 3.957592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.794039, 1.617443, 4.091635>,  <4.662689, 1.433381, 4.172060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.794039, 1.617443, 4.091635>,  <5.012955, 1.924214, 3.957592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.794039, 1.617443, 4.091635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715798, 0.221428, -0.662271,
		0.433711, -0.602323, -0.670150,
		-0.547291, -0.766927, 0.335106,
		4.629851, 1.387365, 4.192167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.698195, 1.687281, 3.319782>,  <5.012955, 1.924214, 3.957592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.698195, 1.687281, 3.319782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499849, 1.563347, 3.644281>,  <4.380842, 1.488987, 3.838981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499849, 1.563347, 3.644281>,  <4.698195, 1.687281, 3.319782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.499849, 1.563347, 3.644281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868397, 0.179779, -0.462133,
		-0.002660, -0.933639, -0.358205,
		-0.495864, -0.309835, 0.811247,
		4.351090, 1.470397, 3.887655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.278857, 1.119139, 3.264372>,  <4.698195, 1.687281, 3.319782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.278857, 1.119139, 3.264372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.104137, 1.345161, 3.544349>,  <3.999306, 1.480775, 3.712335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.104137, 1.345161, 3.544349>,  <4.278857, 1.119139, 3.264372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.104137, 1.345161, 3.544349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800198, 0.111403, -0.589298,
		-0.410962, -0.817496, 0.403497,
		-0.436799, 0.565057, 0.699941,
		3.973098, 1.514678, 3.754331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.643192, 1.185415, 2.901180>,  <4.278857, 1.119139, 3.264372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.643192, 1.185415, 2.901180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591930, 1.401741, 3.233708>,  <3.561174, 1.531537, 3.433225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591930, 1.401741, 3.233708>,  <3.643192, 1.185415, 2.901180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.591930, 1.401741, 3.233708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906986, 0.275176, -0.318833,
		-0.401189, -0.794856, 0.455248,
		-0.128153, 0.540816, 0.831321,
		3.553485, 1.563986, 3.483105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.923563, 1.113733, 3.299765>,  <3.643192, 1.185415, 2.901180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.923563, 1.113733, 3.299765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.071554, 1.479671, 3.364476>,  <3.160349, 1.699235, 3.403303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.071554, 1.479671, 3.364476>,  <2.923563, 1.113733, 3.299765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.071554, 1.479671, 3.364476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911619, 0.391059, -0.126586,
		-0.179071, -0.100645, 0.978675,
		0.369979, 0.914846, 0.161778,
		3.182548, 1.754125, 3.413009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.188546, 1.439032, 1.191288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.228426, 1.217606, 1.522015>,  <-0.252354, 1.084750, 1.720451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.228426, 1.217606, 1.522015>,  <-0.188546, 1.439032, 1.191288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.228426, 1.217606, 1.522015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776802, -0.562581, -0.282987,
		0.621803, 0.614059, 0.486100,
		-0.099700, -0.553565, 0.826817,
		-0.258336, 1.051536, 1.770060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.258130, 1.444722, 1.755149>,  <-0.188546, 1.439032, 1.191288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.258130, 1.444722, 1.755149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.159273, 1.057770, 1.732889>,  <0.099959, 0.825599, 1.719534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.159273, 1.057770, 1.732889>,  <0.258130, 1.444722, 1.755149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.159273, 1.057770, 1.732889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952281, -0.231866, -0.198494,
		0.179116, -0.102049, 0.978521,
		-0.247142, -0.967380, -0.055648,
		0.085131, 0.767556, 1.716195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.680135, 1.040220, 2.147535>,  <0.258130, 1.444722, 1.755149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.680135, 1.040220, 2.147535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.541821, 0.866058, 1.815064>,  <0.458832, 0.761561, 1.615582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.541821, 0.866058, 1.815064>,  <0.680135, 1.040220, 2.147535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.541821, 0.866058, 1.815064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903518, 0.084485, -0.420140,
		0.253153, -0.896261, 0.364183,
		-0.345787, -0.435406, -0.831176,
		0.438084, 0.735437, 1.565712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.116319, 0.434949, 1.914405>,  <0.680135, 1.040220, 2.147535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.116319, 0.434949, 1.914405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.957434, 0.592686, 1.582932>,  <0.862102, 0.687328, 1.384048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.957434, 0.592686, 1.582932>,  <1.116319, 0.434949, 1.914405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.957434, 0.592686, 1.582932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917644, 0.182757, -0.352888,
		0.012289, -0.900608, -0.434460,
		-0.397214, 0.394342, -0.828683,
		0.838270, 0.710988, 1.334327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.459808, 0.112268, 1.424319>,  <1.116319, 0.434949, 1.914405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.459808, 0.112268, 1.424319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333523, 0.467388, 1.290373>,  <1.257752, 0.680460, 1.210005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333523, 0.467388, 1.290373>,  <1.459808, 0.112268, 1.424319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333523, 0.467388, 1.290373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898675, 0.166527, -0.405773,
		-0.304481, -0.429043, -0.850420,
		-0.315712, 0.887801, -0.334866,
		1.238809, 0.733728, 1.189913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.442851, 0.075347, 0.722496>,  <1.459808, 0.112268, 1.424319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.442851, 0.075347, 0.722496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.502281, 0.440189, 0.875331>,  <1.537939, 0.659095, 0.967032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.502281, 0.440189, 0.875331>,  <1.442851, 0.075347, 0.722496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.502281, 0.440189, 0.875331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933550, -0.001915, -0.358443,
		-0.326206, 0.409953, -0.851780,
		0.148575, 0.912105, 0.382087,
		1.546854, 0.713821, 0.989957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.943423, -0.351688, 0.668034>,  <1.442851, 0.075347, 0.722496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.943423, -0.351688, 0.668034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.156691, -0.658192, 0.811466>,  <2.284651, -0.842094, 0.897525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.156691, -0.658192, 0.811466>,  <1.943423, -0.351688, 0.668034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.156691, -0.658192, 0.811466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441480, -0.109562, -0.890557,
		0.721683, 0.633123, 0.279873,
		0.533169, -0.766258, 0.358580,
		2.316641, -0.888069, 0.919040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.633488, -0.248477, 0.492145>,  <1.943423, -0.351688, 0.668034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.633488, -0.248477, 0.492145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.602066, -0.642647, 0.552498>,  <2.583213, -0.879149, 0.588710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.602066, -0.642647, 0.552498>,  <2.633488, -0.248477, 0.492145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.602066, -0.642647, 0.552498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377619, -0.169485, -0.910318,
		0.922623, -0.014533, 0.385430,
		-0.078554, -0.985426, 0.150883,
		2.578500, -0.938275, 0.597763>
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
