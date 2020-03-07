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
	<1.939600, 3.298829, 4.812796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.321007, 3.326424, 4.930130>,  <2.549851, 3.342980, 5.000530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.321007, 3.326424, 4.930130>,  <1.939600, 3.298829, 4.812796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.321007, 3.326424, 4.930130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182269, 0.643142, -0.743738,
		-0.239964, 0.762633, 0.600673,
		0.953517, 0.068986, 0.293335,
		2.607062, 3.347120, 5.018130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.144543, 4.038090, 4.797423>,  <1.939600, 3.298829, 4.812796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.144543, 4.038090, 4.797423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.485325, 3.830101, 4.772755>,  <2.689794, 3.705307, 4.757954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.485325, 3.830101, 4.772755>,  <2.144543, 4.038090, 4.797423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.485325, 3.830101, 4.772755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338413, 0.636659, -0.692923,
		0.399565, 0.569467, 0.718370,
		0.851954, -0.519973, -0.061672,
		2.740911, 3.674109, 4.754253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.667266, 4.417546, 4.936537>,  <2.144543, 4.038090, 4.797423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.667266, 4.417546, 4.936537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.796902, 4.163689, 4.655910>,  <2.874683, 4.011374, 4.487535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.796902, 4.163689, 4.655910>,  <2.667266, 4.417546, 4.936537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.796902, 4.163689, 4.655910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047283, 0.751532, -0.658000,
		0.944844, 0.180079, 0.273571,
		0.324090, -0.634643, -0.701566,
		2.894129, 3.973296, 4.445441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.303790, 4.710521, 4.670127>,  <2.667266, 4.417546, 4.936537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.303790, 4.710521, 4.670127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.117531, 4.464088, 4.416004>,  <3.005775, 4.316229, 4.263530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.117531, 4.464088, 4.416004>,  <3.303790, 4.710521, 4.670127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.117531, 4.464088, 4.416004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110971, 0.671572, -0.732582,
		0.877985, -0.411626, -0.244349,
		-0.465647, -0.616081, -0.635308,
		2.977836, 4.279264, 4.225411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.758252, 4.808340, 4.183841>,  <3.303790, 4.710521, 4.670127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.758252, 4.808340, 4.183841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.420101, 4.676552, 4.015656>,  <3.217211, 4.597479, 3.914744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.420101, 4.676552, 4.015656>,  <3.758252, 4.808340, 4.183841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420101, 4.676552, 4.015656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301448, 0.355568, -0.884704,
		0.440985, -0.874656, -0.201271,
		-0.845377, -0.329468, -0.420463,
		3.166488, 4.577711, 3.889517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.928225, 4.520364, 3.536455>,  <3.758252, 4.808340, 4.183841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.928225, 4.520364, 3.536455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.535892, 4.576401, 3.482281>,  <3.300493, 4.610023, 3.449776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.535892, 4.576401, 3.482281>,  <3.928225, 4.520364, 3.536455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.535892, 4.576401, 3.482281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183477, 0.429965, -0.884006,
		-0.065610, -0.891910, -0.447428,
		-0.980832, 0.140092, -0.135435,
		3.241643, 4.618428, 3.441650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.788412, 4.361656, 2.823786>,  <3.928225, 4.520364, 3.536455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.788412, 4.361656, 2.823786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.489281, 4.599602, 2.941692>,  <3.309802, 4.742369, 3.012436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.489281, 4.599602, 2.941692>,  <3.788412, 4.361656, 2.823786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.489281, 4.599602, 2.941692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076447, 0.518204, -0.851834,
		-0.659475, -0.614492, -0.433004,
		-0.747829, 0.594864, 0.294767,
		3.264932, 4.778061, 3.030123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.407685, 4.374610, 2.296533>,  <3.788412, 4.361656, 2.823786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.407685, 4.374610, 2.296533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.294086, 4.703308, 2.494152>,  <3.225927, 4.900527, 2.612723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.294086, 4.703308, 2.494152>,  <3.407685, 4.374610, 2.296533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.294086, 4.703308, 2.494152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096146, 0.537072, -0.838039,
		-0.953993, -0.190499, -0.231534,
		-0.283996, 0.821745, 0.494047,
		3.208888, 4.949831, 2.642366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.971404, 0.278409, 1.872615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.808403, 0.640915, 1.917564>,  <3.710603, 0.858418, 1.944534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.808403, 0.640915, 1.917564>,  <3.971404, 0.278409, 1.872615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.808403, 0.640915, 1.917564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508355, -0.327346, 0.796505,
		0.758629, 0.267451, 0.594098,
		-0.407502, 0.906264, 0.112374,
		3.686153, 0.912794, 1.951277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.084259, 0.591378, 2.625854>,  <3.971404, 0.278409, 1.872615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.084259, 0.591378, 2.625854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.756942, 0.682968, 2.414963>,  <3.560552, 0.737922, 2.288428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.756942, 0.682968, 2.414963>,  <4.084259, 0.591378, 2.625854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756942, 0.682968, 2.414963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574756, -0.337648, 0.745419,
		-0.007334, 0.912997, 0.407900,
		-0.818292, 0.228976, -0.527227,
		3.511455, 0.751661, 2.256795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.565561, 1.084556, 2.963513>,  <4.084259, 0.591378, 2.625854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.565561, 1.084556, 2.963513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.398086, 0.814331, 2.720757>,  <3.297602, 0.652196, 2.575103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.398086, 0.814331, 2.720757>,  <3.565561, 1.084556, 2.963513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.398086, 0.814331, 2.720757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514715, -0.374045, 0.771465,
		-0.748178, 0.635378, -0.191115,
		-0.418686, -0.675563, -0.606891,
		3.272480, 0.611662, 2.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.836341, 1.045246, 3.197065>,  <3.565561, 1.084556, 2.963513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.836341, 1.045246, 3.197065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.940505, 0.697350, 3.029381>,  <3.003003, 0.488612, 2.928770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.940505, 0.697350, 3.029381>,  <2.836341, 1.045246, 3.197065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.940505, 0.697350, 3.029381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398693, -0.492311, 0.773740,
		-0.879336, -0.034352, -0.474962,
		0.260408, -0.869741, -0.419211,
		3.018627, 0.436427, 2.903618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.261933, 0.605795, 3.234147>,  <2.836341, 1.045246, 3.197065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.261933, 0.605795, 3.234147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.577659, 0.362656, 3.199509>,  <2.767095, 0.216772, 3.178726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.577659, 0.362656, 3.199509>,  <2.261933, 0.605795, 3.234147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.577659, 0.362656, 3.199509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415706, -0.632867, 0.653198,
		-0.451850, -0.479581, -0.752219,
		0.789316, -0.607850, -0.086596,
		2.814454, 0.180301, 3.173530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.925156, -0.070900, 3.325675>,  <2.261933, 0.605795, 3.234147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.925156, -0.070900, 3.325675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.312092, -0.163452, 3.367081>,  <2.544254, -0.218984, 3.391924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.312092, -0.163452, 3.367081>,  <1.925156, -0.070900, 3.325675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.312092, -0.163452, 3.367081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233188, -0.652213, 0.721278,
		-0.099377, -0.721860, -0.684867,
		0.967340, -0.231381, 0.103514,
		2.602294, -0.232867, 3.398135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.008051, -0.775361, 3.303478>,  <1.925156, -0.070900, 3.325675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.008051, -0.775361, 3.303478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.348124, -0.683495, 3.492981>,  <2.552168, -0.628375, 3.606683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.348124, -0.683495, 3.492981>,  <2.008051, -0.775361, 3.303478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.348124, -0.683495, 3.492981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179615, -0.719333, 0.671043,
		0.494903, -0.655603, -0.570312,
		0.850182, 0.229665, 0.473756,
		2.603179, -0.614595, 3.635108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.272473, -1.406590, 3.380745>,  <2.008051, -0.775361, 3.303478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.272473, -1.406590, 3.380745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.461750, -1.176949, 3.648026>,  <2.575316, -1.039163, 3.808394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.461750, -1.176949, 3.648026>,  <2.272473, -1.406590, 3.380745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.461750, -1.176949, 3.648026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120644, -0.709117, 0.694693,
		0.872659, -0.409338, -0.266286,
		0.473192, 0.574104, 0.668201,
		2.603707, -1.004717, 3.848486>
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
