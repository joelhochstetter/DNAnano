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
	<5.754529, 1.112614, 2.133977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.413536, 0.913697, 2.069511>,  <5.208940, 0.794347, 2.030832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.413536, 0.913697, 2.069511>,  <5.754529, 1.112614, 2.133977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.413536, 0.913697, 2.069511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339059, 0.291333, 0.894519,
		-0.397884, 0.817206, -0.416968,
		-0.852483, -0.497291, -0.161164,
		5.157791, 0.764510, 2.021162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.228356, 1.350797, 2.465898>,  <5.754529, 1.112614, 2.133977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.228356, 1.350797, 2.465898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.065376, 0.986128, 2.444588>,  <4.967588, 0.767327, 2.431802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.065376, 0.986128, 2.444588>,  <5.228356, 1.350797, 2.465898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.065376, 0.986128, 2.444588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459844, 0.154416, 0.874471,
		-0.789004, 0.380802, -0.482144,
		-0.407450, -0.911672, -0.053275,
		4.943141, 0.712626, 2.428605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.455798, 1.387202, 2.599066>,  <5.228356, 1.350797, 2.465898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.455798, 1.387202, 2.599066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.596741, 1.024696, 2.692471>,  <4.681306, 0.807193, 2.748513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.596741, 1.024696, 2.692471>,  <4.455798, 1.387202, 2.599066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.596741, 1.024696, 2.692471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439048, 0.060278, 0.896439,
		-0.826487, -0.418390, -0.376654,
		0.352357, -0.906265, 0.233512,
		4.702448, 0.752817, 2.762524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.855219, 1.057271, 2.866087>,  <4.455798, 1.387202, 2.599066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.855219, 1.057271, 2.866087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.185539, 0.873938, 2.997532>,  <4.383731, 0.763938, 3.076399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.185539, 0.873938, 2.997532>,  <3.855219, 1.057271, 2.866087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.185539, 0.873938, 2.997532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415413, -0.100261, 0.904091,
		-0.381428, -0.883107, -0.273193,
		0.825800, -0.458333, 0.328612,
		4.433279, 0.736438, 3.096115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.585670, 0.525921, 3.208930>,  <3.855219, 1.057271, 2.866087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.585670, 0.525921, 3.208930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.948135, 0.555879, 3.375427>,  <4.165615, 0.573853, 3.475325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.948135, 0.555879, 3.375427>,  <3.585670, 0.525921, 3.208930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.948135, 0.555879, 3.375427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382411, -0.275259, 0.882040,
		0.180635, -0.958448, -0.220789,
		0.906164, 0.074895, 0.416242,
		4.219985, 0.578347, 3.500300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.782844, -0.174592, 3.544848>,  <3.585670, 0.525921, 3.208930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.782844, -0.174592, 3.544848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981895, 0.127281, 3.715878>,  <4.101326, 0.308405, 3.818495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981895, 0.127281, 3.715878>,  <3.782844, -0.174592, 3.544848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981895, 0.127281, 3.715878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460982, -0.187460, 0.867384,
		0.734753, -0.628738, 0.254610,
		0.497628, 0.754684, 0.427573,
		4.131184, 0.353686, 3.844150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.033868, -0.409913, 4.108552>,  <3.782844, -0.174592, 3.544848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.033868, -0.409913, 4.108552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.083839, -0.024292, 4.202358>,  <4.113822, 0.207080, 4.258642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.083839, -0.024292, 4.202358>,  <4.033868, -0.409913, 4.108552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.083839, -0.024292, 4.202358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537983, -0.132782, 0.832432,
		0.833647, -0.230161, 0.502055,
		0.124929, 0.964051, 0.234516,
		4.121318, 0.264923, 4.272713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.218998, -0.421680, 4.798111>,  <4.033868, -0.409913, 4.108552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.218998, -0.421680, 4.798111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.116028, -0.036126, 4.770805>,  <4.054246, 0.195206, 4.754422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.116028, -0.036126, 4.770805>,  <4.218998, -0.421680, 4.798111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.116028, -0.036126, 4.770805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265169, -0.002533, 0.964199,
		0.929203, 0.266311, 0.256244,
		-0.257425, 0.963884, -0.068264,
		4.038800, 0.253039, 4.750326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.184467, 0.807497, 6.006274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424911, 1.097546, 6.140656>,  <3.569178, 1.271575, 6.221284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424911, 1.097546, 6.140656>,  <3.184467, 0.807497, 6.006274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.424911, 1.097546, 6.140656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494720, -0.007491, -0.869020,
		-0.627628, 0.688581, -0.363235,
		0.601112, 0.725121, 0.335953,
		3.605245, 1.315082, 6.241441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.138970, 1.483063, 5.554036>,  <3.184467, 0.807497, 6.006274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.138970, 1.483063, 5.554036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.484604, 1.396080, 5.735615>,  <3.691984, 1.343890, 5.844562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.484604, 1.396080, 5.735615>,  <3.138970, 1.483063, 5.554036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.484604, 1.396080, 5.735615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482749, 0.102688, -0.869717,
		0.142511, 0.970653, 0.193709,
		0.864086, -0.217457, 0.453948,
		3.743829, 1.330843, 5.871799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.120493, 1.140830, 4.798280>,  <3.138970, 1.483063, 5.554036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.120493, 1.140830, 4.798280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429245, 0.943375, 4.958542>,  <3.614496, 0.824902, 5.054699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429245, 0.943375, 4.958542>,  <3.120493, 1.140830, 4.798280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429245, 0.943375, 4.958542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527668, 0.145888, -0.836829,
		0.354640, 0.857344, 0.373084,
		0.771879, -0.493638, 0.400656,
		3.660809, 0.795283, 5.078739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.683425, 1.488421, 4.610878>,  <3.120493, 1.140830, 4.798280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.683425, 1.488421, 4.610878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.807220, 1.114464, 4.680382>,  <3.881497, 0.890090, 4.722085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.807220, 1.114464, 4.680382>,  <3.683425, 1.488421, 4.610878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.807220, 1.114464, 4.680382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601443, 0.050916, -0.797291,
		0.736535, 0.351259, 0.578043,
		0.309488, -0.934893, 0.173761,
		3.900067, 0.833996, 4.732510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.383610, 1.526084, 4.535697>,  <3.683425, 1.488421, 4.610878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.383610, 1.526084, 4.535697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.288483, 1.141216, 4.482521>,  <4.231407, 0.910296, 4.450615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.288483, 1.141216, 4.482521>,  <4.383610, 1.526084, 4.535697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.288483, 1.141216, 4.482521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621256, -0.045469, -0.782287,
		0.746648, -0.268631, 0.608567,
		-0.237817, -0.962169, -0.132939,
		4.217137, 0.852565, 4.442639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.964131, 1.133058, 4.474626>,  <4.383610, 1.526084, 4.535697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.964131, 1.133058, 4.474626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.691711, 0.917015, 4.276855>,  <4.528259, 0.787390, 4.158194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.691711, 0.917015, 4.276855>,  <4.964131, 1.133058, 4.474626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.691711, 0.917015, 4.276855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633994, -0.097112, -0.767216,
		0.366364, -0.835975, 0.408563,
		-0.681050, -0.540107, -0.494425,
		4.487396, 0.754983, 4.128528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.351475, 0.643669, 4.105895>,  <4.964131, 1.133058, 4.474626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.351475, 0.643669, 4.105895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.008743, 0.594921, 3.905499>,  <4.803104, 0.565672, 3.785260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.008743, 0.594921, 3.905499>,  <5.351475, 0.643669, 4.105895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.008743, 0.594921, 3.905499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513112, -0.106173, -0.851730,
		0.050610, -0.986851, 0.153506,
		-0.856828, -0.121872, -0.500991,
		4.751695, 0.558360, 3.755201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.435656, 0.086316, 3.633986>,  <5.351475, 0.643669, 4.105895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.435656, 0.086316, 3.633986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.144623, 0.303471, 3.466225>,  <4.970003, 0.433763, 3.365567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.144623, 0.303471, 3.466225>,  <5.435656, 0.086316, 3.633986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.144623, 0.303471, 3.466225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492909, -0.011518, -0.870005,
		-0.477144, -0.839727, -0.259213,
		-0.727581, 0.542886, -0.419405,
		4.926348, 0.466336, 3.340403>
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
