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
	<0.479478, 3.442579, 3.279857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.755368, 3.724838, 3.214935>,  <0.920901, 3.894194, 3.175982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.755368, 3.724838, 3.214935>,  <0.479478, 3.442579, 3.279857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.755368, 3.724838, 3.214935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539463, -0.650311, -0.534861,
		-0.482973, 0.281348, -0.829205,
		0.689723, 0.705648, -0.162305,
		0.962284, 3.936533, 3.166244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.653602, 3.566136, 2.533964>,  <0.479478, 3.442579, 3.279857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.653602, 3.566136, 2.533964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.958098, 3.628620, 2.785713>,  <1.140796, 3.666111, 2.936763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.958098, 3.628620, 2.785713>,  <0.653602, 3.566136, 2.533964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.958098, 3.628620, 2.785713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492101, -0.771228, -0.403787,
		0.422315, 0.617094, -0.663962,
		0.761241, 0.156211, 0.629374,
		1.186471, 3.675483, 2.974525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.283870, 3.745967, 2.107589>,  <0.653602, 3.566136, 2.533964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.283870, 3.745967, 2.107589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.407747, 3.547504, 2.432037>,  <1.482073, 3.428427, 2.626707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.407747, 3.547504, 2.432037>,  <1.283870, 3.745967, 2.107589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.407747, 3.547504, 2.432037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551507, -0.601172, -0.578301,
		0.774552, 0.626435, 0.087456,
		0.309692, -0.496157, 0.811122,
		1.500654, 3.398657, 2.675374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.024431, 3.659480, 2.174535>,  <1.283870, 3.745967, 2.107589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.024431, 3.659480, 2.174535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876644, 3.355885, 2.388985>,  <1.787972, 3.173727, 2.517655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876644, 3.355885, 2.388985>,  <2.024431, 3.659480, 2.174535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.876644, 3.355885, 2.388985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584555, -0.638327, -0.500833,
		0.722350, 0.128353, 0.679512,
		-0.369467, -0.758989, 0.536125,
		1.765804, 3.128188, 2.549822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.559453, 3.249552, 2.455150>,  <2.024431, 3.659480, 2.174535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.559453, 3.249552, 2.455150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.246262, 3.001671, 2.433571>,  <2.058347, 2.852942, 2.420623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.246262, 3.001671, 2.433571>,  <2.559453, 3.249552, 2.455150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.246262, 3.001671, 2.433571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514020, -0.595723, -0.617170,
		0.350324, -0.510962, 0.784979,
		-0.782980, -0.619704, -0.053948,
		2.011368, 2.815760, 2.417386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.848271, 2.496961, 2.391268>,  <2.559453, 3.249552, 2.455150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.848271, 2.496961, 2.391268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.478612, 2.477135, 2.239746>,  <2.256816, 2.465239, 2.148833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.478612, 2.477135, 2.239746>,  <2.848271, 2.496961, 2.391268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.478612, 2.477135, 2.239746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325155, -0.622590, -0.711798,
		-0.200560, -0.780977, 0.591482,
		-0.924148, -0.049565, -0.378806,
		2.201368, 2.462265, 2.126104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.737133, 1.790435, 2.258939>,  <2.848271, 2.496961, 2.391268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.737133, 1.790435, 2.258939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.456429, 1.974087, 2.041046>,  <2.288006, 2.084278, 1.910311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.456429, 1.974087, 2.041046>,  <2.737133, 1.790435, 2.258939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.456429, 1.974087, 2.041046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143508, -0.657851, -0.739349,
		-0.697813, -0.597017, 0.395762,
		-0.701756, 0.459132, -0.544734,
		2.245900, 2.111825, 1.877627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.282943, 1.251266, 2.015840>,  <2.737133, 1.790435, 2.258939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.282943, 1.251266, 2.015840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.215606, 1.559822, 1.770363>,  <2.175203, 1.744955, 1.623076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.215606, 1.559822, 1.770363>,  <2.282943, 1.251266, 2.015840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.215606, 1.559822, 1.770363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232055, -0.574067, -0.785237,
		-0.958024, -0.274600, -0.082364,
		-0.168344, 0.771389, -0.613693,
		2.165102, 1.791239, 1.586255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.901413, 1.117249, 0.956288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.574100, 1.197525, 0.740829>,  <2.377713, 1.245691, 0.611554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.574100, 1.197525, 0.740829>,  <2.901413, 1.117249, 0.956288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.574100, 1.197525, 0.740829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079971, 0.888213, 0.452418,
		0.569229, 0.413281, -0.710759,
		-0.818281, 0.200690, -0.538646,
		2.328616, 1.257732, 0.579236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.923326, 1.766974, 0.620378>,  <2.901413, 1.117249, 0.956288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.923326, 1.766974, 0.620378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.548065, 1.663231, 0.712120>,  <2.322909, 1.600985, 0.767165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.548065, 1.663231, 0.712120>,  <2.923326, 1.766974, 0.620378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.548065, 1.663231, 0.712120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093878, 0.828188, 0.552532,
		-0.333253, 0.496828, -0.801314,
		-0.938152, -0.259359, 0.229355,
		2.266619, 1.585423, 0.780927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.631237, 2.379962, 0.636910>,  <2.923326, 1.766974, 0.620378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.631237, 2.379962, 0.636910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.377916, 2.125641, 0.813400>,  <2.225924, 1.973048, 0.919295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.377916, 2.125641, 0.813400>,  <2.631237, 2.379962, 0.636910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.377916, 2.125641, 0.813400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346483, 0.742738, 0.572965,
		-0.692009, 0.209982, -0.690674,
		-0.633302, -0.635804, 0.441227,
		2.187926, 1.934900, 0.945768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.014790, 2.770957, 0.702235>,  <2.631237, 2.379962, 0.636910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.014790, 2.770957, 0.702235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.024527, 2.464081, 0.958618>,  <2.030368, 2.279955, 1.112448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.024527, 2.464081, 0.958618>,  <2.014790, 2.770957, 0.702235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.024527, 2.464081, 0.958618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416174, 0.575175, 0.704254,
		-0.908959, -0.283892, -0.305284,
		0.024341, -0.767189, 0.640959,
		2.031829, 2.233924, 1.150906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.351326, 2.751400, 1.122367>,  <2.014790, 2.770957, 0.702235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.351326, 2.751400, 1.122367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.619314, 2.563057, 1.351952>,  <1.780107, 2.450051, 1.489702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.619314, 2.563057, 1.351952>,  <1.351326, 2.751400, 1.122367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.619314, 2.563057, 1.351952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374897, 0.452725, 0.809007,
		-0.640775, -0.757187, 0.126789,
		0.669970, -0.470858, 0.573962,
		1.820305, 2.421799, 1.524140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.989031, 2.268026, 1.699551>,  <1.351326, 2.751400, 1.122367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.989031, 2.268026, 1.699551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.358961, 2.359131, 1.821419>,  <1.580919, 2.413794, 1.894539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.358961, 2.359131, 1.821419>,  <0.989031, 2.268026, 1.699551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.358961, 2.359131, 1.821419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359889, 0.264496, 0.894719,
		0.123200, -0.937105, 0.326581,
		0.924825, 0.227763, 0.304668,
		1.636409, 2.427459, 1.912819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.041683, 1.968320, 2.366121>,  <0.989031, 2.268026, 1.699551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.041683, 1.968320, 2.366121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340836, 2.233086, 2.386292>,  <1.520327, 2.391945, 2.398394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340836, 2.233086, 2.386292>,  <1.041683, 1.968320, 2.366121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.340836, 2.233086, 2.386292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385918, 0.371716, 0.844331,
		0.540130, -0.650920, 0.533444,
		0.747882, 0.661914, 0.050427,
		1.565200, 2.431660, 2.401420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.354764, 2.013488, 3.077199>,  <1.041683, 1.968320, 2.366121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.354764, 2.013488, 3.077199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427362, 2.363029, 2.896782>,  <1.470922, 2.572754, 2.788532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427362, 2.363029, 2.896782>,  <1.354764, 2.013488, 3.077199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.427362, 2.363029, 2.896782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456515, 0.481113, 0.748415,
		0.871007, 0.070073, 0.486248,
		0.181496, 0.873854, -0.451042,
		1.481812, 2.625186, 2.761469>
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
