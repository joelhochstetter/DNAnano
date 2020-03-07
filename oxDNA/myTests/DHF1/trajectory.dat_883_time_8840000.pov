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
	<3.540046, 1.470934, 3.229827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597435, 1.555157, 2.843029>,  <3.631869, 1.605690, 2.610950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597435, 1.555157, 2.843029>,  <3.540046, 1.470934, 3.229827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.597435, 1.555157, 2.843029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952844, -0.293401, 0.077488,
		-0.267402, -0.932514, -0.242722,
		0.143473, 0.210556, -0.966996,
		3.640477, 1.618323, 2.552930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.778290, 0.884632, 2.856306>,  <3.540046, 1.470934, 3.229827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.778290, 0.884632, 2.856306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.914703, 1.219391, 2.685051>,  <3.996551, 1.420246, 2.582299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.914703, 1.219391, 2.685051>,  <3.778290, 0.884632, 2.856306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.914703, 1.219391, 2.685051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840331, -0.475543, -0.260198,
		-0.421356, -0.271039, -0.865446,
		0.341034, 0.836897, -0.428135,
		4.017014, 1.470460, 2.556611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.832730, 0.741629, 2.194603>,  <3.778290, 0.884632, 2.856306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.832730, 0.741629, 2.194603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102173, 1.025337, 2.277730>,  <4.263839, 1.195562, 2.327607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102173, 1.025337, 2.277730>,  <3.832730, 0.741629, 2.194603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.102173, 1.025337, 2.277730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736768, -0.666669, -0.112809,
		0.058533, 0.229102, -0.971641,
		0.673607, 0.709271, 0.207817,
		4.304255, 1.238119, 2.340076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.430322, 0.656846, 1.715276>,  <3.832730, 0.741629, 2.194603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.430322, 0.656846, 1.715276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.538132, 0.867825, 2.037556>,  <4.602818, 0.994412, 2.230925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.538132, 0.867825, 2.037556>,  <4.430322, 0.656846, 1.715276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.538132, 0.867825, 2.037556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884373, -0.466680, 0.009666,
		0.381104, 0.709935, -0.592243,
		0.269526, 0.527448, 0.805701,
		4.618989, 1.026059, 2.279267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.144063, 0.897608, 1.601715>,  <4.430322, 0.656846, 1.715276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.144063, 0.897608, 1.601715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.093147, 0.918995, 1.997885>,  <5.062598, 0.931827, 2.235586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.093147, 0.918995, 1.997885>,  <5.144063, 0.897608, 1.601715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.093147, 0.918995, 1.997885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895978, -0.422132, 0.137940,
		0.425465, 0.904956, 0.005827,
		-0.127290, 0.053468, 0.990423,
		5.054960, 0.935035, 2.295012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.756206, 1.255530, 1.773366>,  <5.144063, 0.897608, 1.601715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.756206, 1.255530, 1.773366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.637711, 1.082500, 2.113983>,  <5.566613, 0.978683, 2.318353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.637711, 1.082500, 2.113983>,  <5.756206, 1.255530, 1.773366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.637711, 1.082500, 2.113983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914679, -0.385155, 0.122548,
		0.274964, 0.815191, 0.509763,
		-0.296238, -0.432573, 0.851542,
		5.548839, 0.952728, 2.369446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.178351, 1.427805, 2.274834>,  <5.756206, 1.255530, 1.773366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.178351, 1.427805, 2.274834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.023094, 1.082359, 2.403531>,  <5.929940, 0.875092, 2.480749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.023094, 1.082359, 2.403531>,  <6.178351, 1.427805, 2.274834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.023094, 1.082359, 2.403531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915110, -0.402515, 0.023543,
		0.109173, 0.303567, 0.946535,
		-0.388142, -0.863613, 0.321742,
		5.906651, 0.823275, 2.500053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.678250, 1.171672, 2.797144>,  <6.178351, 1.427805, 2.274834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.678250, 1.171672, 2.797144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.436661, 0.861397, 2.723908>,  <6.291707, 0.675231, 2.679966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.436661, 0.861397, 2.723908>,  <6.678250, 1.171672, 2.797144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.436661, 0.861397, 2.723908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779286, -0.622923, 0.068416,
		-0.167121, -0.101358, 0.980713,
		-0.603974, -0.775689, -0.183091,
		6.255468, 0.628690, 2.668981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.268917, -0.183608, 1.956639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.122093, -0.277359, 2.316713>,  <2.033999, -0.333609, 2.532758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.122093, -0.277359, 2.316713>,  <2.268917, -0.183608, 1.956639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.122093, -0.277359, 2.316713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803139, 0.568084, -0.179578,
		-0.469292, -0.788891, -0.396757,
		-0.367059, -0.234377, 0.900187,
		2.011976, -0.347672, 2.586769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.684787, 0.124002, 1.874940>,  <2.268917, -0.183608, 1.956639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.684787, 0.124002, 1.874940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.648453, -0.032074, 2.241437>,  <1.626652, -0.125719, 2.461335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.648453, -0.032074, 2.241437>,  <1.684787, 0.124002, 1.874940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.648453, -0.032074, 2.241437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904761, 0.416774, 0.087789,
		-0.416121, -0.821007, -0.390886,
		-0.090836, -0.390189, 0.916243,
		1.621202, -0.149131, 2.516310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.146086, -0.387304, 1.877376>,  <1.684787, 0.124002, 1.874940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.146086, -0.387304, 1.877376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.204109, -0.202972, 2.227598>,  <1.238923, -0.092373, 2.437731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.204109, -0.202972, 2.227598>,  <1.146086, -0.387304, 1.877376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.204109, -0.202972, 2.227598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866567, 0.486249, -0.112358,
		-0.477515, -0.742427, 0.469874,
		0.145058, 0.460829, 0.875554,
		1.247627, -0.064724, 2.490264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.529494, -0.415520, 2.261198>,  <1.146086, -0.387304, 1.877376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.529494, -0.415520, 2.261198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.743965, -0.108513, 2.401729>,  <0.872648, 0.075691, 2.486047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.743965, -0.108513, 2.401729>,  <0.529494, -0.415520, 2.261198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.743965, -0.108513, 2.401729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836533, 0.538781, 0.099638,
		-0.112815, -0.347320, 0.930936,
		0.536177, 0.767518, 0.351327,
		0.904818, 0.121743, 2.507127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.202533, -0.220156, 2.884979>,  <0.529494, -0.415520, 2.261198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.202533, -0.220156, 2.884979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.407150, 0.112984, 2.800422>,  <0.529921, 0.312867, 2.749687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.407150, 0.112984, 2.800422>,  <0.202533, -0.220156, 2.884979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.407150, 0.112984, 2.800422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829969, 0.542606, 0.129345,
		0.222429, 0.109286, 0.968805,
		0.511543, 0.832848, -0.211395,
		0.560613, 0.362838, 2.737003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.081852, 0.320192, 3.393139>,  <0.202533, -0.220156, 2.884979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.081852, 0.320192, 3.393139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.225616, 0.504776, 3.068700>,  <0.311875, 0.615526, 2.874037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.225616, 0.504776, 3.068700>,  <0.081852, 0.320192, 3.393139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.225616, 0.504776, 3.068700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808215, 0.588424, -0.023360,
		0.466489, 0.663937, 0.584445,
		0.359411, 0.461460, -0.811097,
		0.333440, 0.643214, 2.825371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.225046, 1.063259, 3.537656>,  <0.081852, 0.320192, 3.393139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.225046, 1.063259, 3.537656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.124046, 0.995354, 3.156621>,  <0.063446, 0.954611, 2.928000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.124046, 0.995354, 3.156621>,  <0.225046, 1.063259, 3.537656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.124046, 0.995354, 3.156621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693944, 0.717847, 0.056013,
		0.674303, 0.675187, -0.299062,
		-0.252500, -0.169762, -0.952589,
		0.048296, 0.944425, 2.870844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.014272, 1.681332, 3.363576>,  <0.225046, 1.063259, 3.537656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.014272, 1.681332, 3.363576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.098129, 1.494789, 3.028066>,  <-0.165570, 1.382863, 2.826759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.098129, 1.494789, 3.028066>,  <0.014272, 1.681332, 3.363576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.098129, 1.494789, 3.028066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693596, 0.702742, -0.158357,
		0.663296, 0.537274, -0.520938,
		-0.281004, -0.466358, -0.838777,
		-0.182430, 1.354882, 2.776433>
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
