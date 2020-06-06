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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.249641, 36.065426, 50.490025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420307, 36.045792, 50.128792>,  <39.522705, 36.034012, 49.912052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420307, 36.045792, 50.128792>,  <39.249641, 36.065426, 50.490025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420307, 36.045792, 50.128792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796924, -0.451730, 0.401063,
		-0.427635, -0.890803, -0.153617,
		0.426661, -0.049087, -0.903078,
		39.548306, 36.031067, 49.857868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600834, 35.378490, 50.494427>,  <39.249641, 36.065426, 50.490025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600834, 35.378490, 50.494427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771782, 35.601536, 50.209774>,  <39.874352, 35.735363, 50.038982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771782, 35.601536, 50.209774>,  <39.600834, 35.378490, 50.494427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771782, 35.601536, 50.209774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892282, -0.386879, 0.232716,
		-0.145549, -0.734432, -0.662891,
		0.427373, 0.557615, -0.711631,
		39.899994, 35.768822, 49.996284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047039, 35.018364, 50.089066>,  <39.600834, 35.378490, 50.494427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047039, 35.018364, 50.089066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188667, 35.379665, 49.992092>,  <40.273643, 35.596447, 49.933907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188667, 35.379665, 49.992092>,  <40.047039, 35.018364, 50.089066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188667, 35.379665, 49.992092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919838, -0.289518, 0.264721,
		0.168920, -0.316730, -0.933353,
		0.354068, 0.903250, -0.242435,
		40.294888, 35.650642, 49.919361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623466, 34.887177, 49.569225>,  <40.047039, 35.018364, 50.089066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623466, 34.887177, 49.569225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669846, 35.253361, 49.723358>,  <40.697674, 35.473072, 49.815838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669846, 35.253361, 49.723358>,  <40.623466, 34.887177, 49.569225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669846, 35.253361, 49.723358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963395, -0.198068, 0.180665,
		0.241714, 0.350277, -0.904920,
		0.115952, 0.915465, 0.385331,
		40.704632, 35.528000, 49.838959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185005, 35.301517, 49.196747>,  <40.623466, 34.887177, 49.569225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185005, 35.301517, 49.196747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131622, 35.449032, 49.564701>,  <41.099590, 35.537540, 49.785473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131622, 35.449032, 49.564701>,  <41.185005, 35.301517, 49.196747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131622, 35.449032, 49.564701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965844, -0.159623, 0.204122,
		0.222111, 0.915706, -0.334887,
		-0.133460, 0.368786, 0.919883,
		41.091583, 35.559669, 49.840668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835606, 35.557468, 49.269363>,  <41.185005, 35.301517, 49.196747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835606, 35.557468, 49.269363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688965, 35.526291, 49.640205>,  <41.600983, 35.507584, 49.862713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688965, 35.526291, 49.640205>,  <41.835606, 35.557468, 49.269363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688965, 35.526291, 49.640205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929932, -0.061579, 0.362540,
		0.028832, 0.995054, 0.095061,
		-0.366600, -0.077948, 0.927108,
		41.578983, 35.502907, 49.918339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139977, 35.954918, 49.567085>,  <41.835606, 35.557468, 49.269363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139977, 35.954918, 49.567085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008217, 35.732567, 49.872372>,  <41.929161, 35.599155, 50.055542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008217, 35.732567, 49.872372>,  <42.139977, 35.954918, 49.567085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008217, 35.732567, 49.872372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940452, -0.121286, 0.317554,
		-0.083954, 0.822368, 0.562728,
		-0.329398, -0.555878, 0.763215,
		41.909397, 35.565804, 50.101337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539940, 36.170353, 50.211540>,  <42.139977, 35.954918, 49.567085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539940, 36.170353, 50.211540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381798, 35.813644, 50.299580>,  <42.286911, 35.599621, 50.352406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381798, 35.813644, 50.299580>,  <42.539940, 36.170353, 50.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381798, 35.813644, 50.299580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821290, -0.235902, 0.519454,
		-0.411311, 0.386135, 0.825665,
		-0.395355, -0.891768, 0.220100,
		42.263191, 35.546116, 50.365608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539398, 36.157520, 50.890667>,  <42.539940, 36.170353, 50.211540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539398, 36.157520, 50.890667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549767, 35.785778, 50.743359>,  <42.555988, 35.562733, 50.654976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549767, 35.785778, 50.743359>,  <42.539398, 36.157520, 50.890667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549767, 35.785778, 50.743359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822156, -0.189746, 0.536709,
		-0.568672, -0.316685, 0.759159,
		0.025921, -0.929358, -0.368267,
		42.557541, 35.506969, 50.632877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798428, 35.775951, 51.481544>,  <42.539398, 36.157520, 50.890667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798428, 35.775951, 51.481544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818130, 35.521664, 51.173405>,  <42.829952, 35.369091, 50.988522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818130, 35.521664, 51.173405>,  <42.798428, 35.775951, 51.481544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818130, 35.521664, 51.173405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830431, -0.402470, 0.385229,
		-0.554940, -0.658694, 0.508098,
		0.049253, -0.635720, -0.770347,
		42.832905, 35.330948, 50.942299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006359, 35.124649, 51.822632>,  <42.798428, 35.775951, 51.481544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006359, 35.124649, 51.822632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126034, 35.110657, 51.441212>,  <43.197838, 35.102261, 51.212360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126034, 35.110657, 51.441212>,  <43.006359, 35.124649, 51.822632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126034, 35.110657, 51.441212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856318, -0.431027, 0.284492,
		-0.420958, -0.901661, -0.099006,
		0.299189, -0.034979, -0.953552,
		43.215790, 35.100163, 51.155148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473492, 34.440262, 51.896095>,  <43.006359, 35.124649, 51.822632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473492, 34.440262, 51.896095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551571, 34.605518, 51.540295>,  <43.598419, 34.704674, 51.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551571, 34.605518, 51.540295>,  <43.473492, 34.440262, 51.896095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551571, 34.605518, 51.540295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947442, -0.313834, 0.062145,
		-0.253480, -0.854880, -0.452690,
		0.195196, 0.413145, -0.889500,
		43.610130, 34.729462, 51.273445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911915, 33.932102, 51.515133>,  <43.473492, 34.440262, 51.896095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911915, 33.932102, 51.515133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997833, 34.294811, 51.370010>,  <44.049385, 34.512436, 51.282936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997833, 34.294811, 51.370010>,  <43.911915, 33.932102, 51.515133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997833, 34.294811, 51.370010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957326, -0.121930, 0.262033,
		0.193366, -0.403611, -0.894264,
		0.214797, 0.906770, -0.362810,
		44.062271, 34.566841, 51.261166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474762, 33.871346, 51.012955>,  <43.911915, 33.932102, 51.515133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474762, 33.871346, 51.012955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502163, 34.259609, 51.105145>,  <44.518604, 34.492569, 51.160458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502163, 34.259609, 51.105145>,  <44.474762, 33.871346, 51.012955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502163, 34.259609, 51.105145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993312, -0.087885, 0.074887,
		0.092946, 0.223805, -0.970192,
		0.068505, 0.970663, 0.230477,
		44.522713, 34.550808, 51.174286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024742, 34.085308, 50.611408>,  <44.474762, 33.871346, 51.012955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024742, 34.085308, 50.611408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974121, 34.367245, 50.890602>,  <44.943748, 34.536407, 51.058117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974121, 34.367245, 50.890602>,  <45.024742, 34.085308, 50.611408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974121, 34.367245, 50.890602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985793, 0.167703, 0.009391,
		-0.110435, 0.689258, -0.716050,
		-0.126556, 0.704840, 0.697986,
		44.936153, 34.578697, 51.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388103, 34.615395, 50.353840>,  <45.024742, 34.085308, 50.611408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388103, 34.615395, 50.353840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327755, 34.707989, 50.738266>,  <45.291546, 34.763546, 50.968922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327755, 34.707989, 50.738266>,  <45.388103, 34.615395, 50.353840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327755, 34.707989, 50.738266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972247, 0.210597, 0.101900,
		-0.178810, 0.949770, -0.256836,
		-0.150870, 0.231487, 0.961068,
		45.282494, 34.777435, 51.026585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719219, 35.218933, 50.398991>,  <45.388103, 34.615395, 50.353840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719219, 35.218933, 50.398991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703228, 35.086380, 50.776051>,  <45.693634, 35.006847, 51.002285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703228, 35.086380, 50.776051>,  <45.719219, 35.218933, 50.398991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703228, 35.086380, 50.776051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959182, 0.251588, 0.129125,
		-0.279949, 0.909336, 0.307794,
		-0.039981, -0.331379, 0.942650,
		45.691235, 34.986965, 51.058846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042023, 35.686565, 50.786407>,  <45.719219, 35.218933, 50.398991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042023, 35.686565, 50.786407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083126, 35.363651, 51.018864>,  <46.107788, 35.169903, 51.158337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083126, 35.363651, 51.018864>,  <46.042023, 35.686565, 50.786407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083126, 35.363651, 51.018864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982064, 0.175190, 0.069705,
		-0.158083, 0.563557, 0.810810,
		0.102763, -0.807287, 0.581144,
		46.113956, 35.121464, 51.193207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506268, 35.875710, 51.349556>,  <46.042023, 35.686565, 50.786407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506268, 35.875710, 51.349556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522724, 35.476089, 51.355366>,  <46.532597, 35.236317, 51.358852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522724, 35.476089, 51.355366>,  <46.506268, 35.875710, 51.349556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522724, 35.476089, 51.355366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997639, 0.040272, -0.055638,
		0.055000, 0.016780, 0.998345,
		0.041139, -0.999048, 0.014526,
		46.535065, 35.176376, 51.359722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012897, 35.713310, 51.926098>,  <46.506268, 35.875710, 51.349556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012897, 35.713310, 51.926098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.977127, 35.403576, 51.675529>,  <46.955666, 35.217735, 51.525188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.977127, 35.403576, 51.675529>,  <47.012897, 35.713310, 51.926098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.977127, 35.403576, 51.675529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986535, -0.155333, 0.051183,
		-0.136937, -0.613412, 0.777801,
		-0.089422, -0.774337, -0.626423,
		46.950302, 35.171276, 51.487602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.283047, 35.229195, 52.312881>,  <47.012897, 35.713310, 51.926098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.283047, 35.229195, 52.312881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277088, 35.117947, 51.928711>,  <47.273514, 35.051197, 51.698208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277088, 35.117947, 51.928711>,  <47.283047, 35.229195, 52.312881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.277088, 35.117947, 51.928711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945884, -0.315326, 0.076641,
		-0.324164, -0.907314, 0.267766,
		-0.014897, -0.278120, -0.960431,
		47.272617, 35.034512, 51.640583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.353186, 35.115074, 51.626381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.458395, 34.957424, 51.978626>,  <24.521521, 34.862835, 52.189976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.458395, 34.957424, 51.978626>,  <24.353186, 35.115074, 51.626381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.458395, 34.957424, 51.978626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875071, 0.481830, -0.045726,
		-0.406286, 0.782629, 0.471617,
		0.263025, -0.394121, 0.880617,
		24.537302, 34.839188, 52.242813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802500, 35.684929, 51.995098>,  <24.353186, 35.115074, 51.626381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802500, 35.684929, 51.995098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.876585, 35.324604, 52.152187>,  <24.921036, 35.108410, 52.246441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.876585, 35.324604, 52.152187>,  <24.802500, 35.684929, 51.995098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876585, 35.324604, 52.152187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981515, 0.149972, -0.118899,
		0.048209, 0.407481, 0.911940,
		0.185215, -0.900815, 0.392719,
		24.932150, 35.054359, 52.270004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408131, 35.791523, 52.488354>,  <24.802500, 35.684929, 51.995098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408131, 35.791523, 52.488354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.422625, 35.403973, 52.390396>,  <25.431322, 35.171444, 52.331623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.422625, 35.403973, 52.390396>,  <25.408131, 35.791523, 52.488354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422625, 35.403973, 52.390396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992264, 0.063998, -0.106373,
		0.118734, -0.239142, 0.963698,
		0.036237, -0.968873, -0.244891,
		25.433496, 35.113312, 52.316929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936052, 35.453449, 52.818295>,  <25.408131, 35.791523, 52.488354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936052, 35.453449, 52.818295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.885277, 35.166542, 52.544243>,  <25.854811, 34.994396, 52.379810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.885277, 35.166542, 52.544243>,  <25.936052, 35.453449, 52.818295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885277, 35.166542, 52.544243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991868, -0.085412, -0.094352,
		0.009158, -0.691538, 0.722282,
		-0.126939, -0.717273, -0.685132,
		25.847195, 34.951359, 52.338703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466896, 35.027172, 52.915600>,  <25.936052, 35.453449, 52.818295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466896, 35.027172, 52.915600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.331009, 34.882072, 52.568497>,  <26.249475, 34.795013, 52.360233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.331009, 34.882072, 52.568497>,  <26.466896, 35.027172, 52.915600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331009, 34.882072, 52.568497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935725, -0.223467, -0.272913,
		-0.094917, -0.904697, 0.415347,
		-0.339720, -0.362747, -0.867759,
		26.229094, 34.773247, 52.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774216, 34.304558, 52.759682>,  <26.466896, 35.027172, 52.915600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774216, 34.304558, 52.759682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.683327, 34.481781, 52.412796>,  <26.628794, 34.588116, 52.204662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.683327, 34.481781, 52.412796>,  <26.774216, 34.304558, 52.759682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683327, 34.481781, 52.412796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951255, -0.089707, -0.295072,
		-0.208530, -0.891993, -0.401079,
		-0.227222, 0.443060, -0.867218,
		26.615160, 34.614700, 52.152630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112099, 33.994408, 52.302830>,  <26.774216, 34.304558, 52.759682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112099, 33.994408, 52.302830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.025679, 34.335594, 52.112770>,  <26.973827, 34.540306, 51.998734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.025679, 34.335594, 52.112770>,  <27.112099, 33.994408, 52.302830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025679, 34.335594, 52.112770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965096, 0.112784, -0.236364,
		-0.148022, -0.509630, -0.847565,
		-0.216050, 0.852970, -0.475147,
		26.960863, 34.591484, 51.970226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345942, 33.932808, 51.566486>,  <27.112099, 33.994408, 52.302830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345942, 33.932808, 51.566486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.327322, 34.322788, 51.653477>,  <27.316151, 34.556778, 51.705669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.327322, 34.322788, 51.653477>,  <27.345942, 33.932808, 51.566486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327322, 34.322788, 51.653477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970911, 0.095348, -0.219636,
		-0.234872, 0.200927, -0.951033,
		-0.046548, 0.974955, 0.217477,
		27.313358, 34.615276, 51.718719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784588, 34.332592, 50.968773>,  <27.345942, 33.932808, 51.566486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784588, 34.332592, 50.968773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.744278, 34.584415, 51.276928>,  <27.720093, 34.735512, 51.461823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.744278, 34.584415, 51.276928>,  <27.784588, 34.332592, 50.968773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744278, 34.584415, 51.276928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937764, 0.318756, -0.137819,
		-0.332331, 0.708553, -0.622502,
		-0.100774, 0.629561, 0.770388,
		27.714046, 34.773285, 51.508045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050911, 34.914436, 50.765614>,  <27.784588, 34.332592, 50.968773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050911, 34.914436, 50.765614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.084131, 34.976715, 51.159336>,  <28.104063, 35.014080, 51.395569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.084131, 34.976715, 51.159336>,  <28.050911, 34.914436, 50.765614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084131, 34.976715, 51.159336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896365, 0.419941, -0.142055,
		-0.435468, 0.894097, -0.104683,
		0.083050, 0.155695, 0.984308,
		28.109047, 35.023422, 51.454628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198708, 35.723129, 50.911263>,  <28.050911, 34.914436, 50.765614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198708, 35.723129, 50.911263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.317408, 35.483616, 51.208828>,  <28.388628, 35.339909, 51.387367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.317408, 35.483616, 51.208828>,  <28.198708, 35.723129, 50.911263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317408, 35.483616, 51.208828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940195, 0.319630, -0.117775,
		-0.167254, 0.734370, 0.657820,
		0.296749, -0.598781, 0.743910,
		28.406433, 35.303982, 51.431999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761536, 36.086552, 50.992302>,  <28.198708, 35.723129, 50.911263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761536, 36.086552, 50.992302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.809923, 35.802189, 51.269424>,  <28.838957, 35.631569, 51.435696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.809923, 35.802189, 51.269424>,  <28.761536, 36.086552, 50.992302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809923, 35.802189, 51.269424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989773, 0.139542, -0.029636,
		-0.075606, 0.689302, 0.720518,
		0.120971, -0.710909, 0.692802,
		28.846214, 35.588917, 51.477264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210102, 36.472481, 51.463428>,  <28.761536, 36.086552, 50.992302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210102, 36.472481, 51.463428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.264996, 36.080772, 51.523022>,  <29.297932, 35.845749, 51.558777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.264996, 36.080772, 51.523022>,  <29.210102, 36.472481, 51.463428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264996, 36.080772, 51.523022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987415, 0.147180, 0.057868,
		-0.078596, 0.139170, 0.987144,
		0.137234, -0.979270, 0.148987,
		29.306166, 35.786991, 51.567719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668386, 36.459538, 52.031223>,  <29.210102, 36.472481, 51.463428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668386, 36.459538, 52.031223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.666075, 36.109287, 51.838043>,  <29.664688, 35.899136, 51.722134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.666075, 36.109287, 51.838043>,  <29.668386, 36.459538, 52.031223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666075, 36.109287, 51.838043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997361, 0.029904, -0.066159,
		0.072373, -0.482058, 0.873145,
		-0.005782, -0.875629, -0.482950,
		29.664341, 35.846600, 51.693157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217485, 36.216057, 52.290096>,  <29.668386, 36.459538, 52.031223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217485, 36.216057, 52.290096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.151253, 35.971973, 51.980198>,  <30.111513, 35.825523, 51.794258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.151253, 35.971973, 51.980198>,  <30.217485, 36.216057, 52.290096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151253, 35.971973, 51.980198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978561, -0.004095, -0.205916,
		0.122479, -0.792230, 0.597805,
		-0.165581, -0.610209, -0.774744,
		30.101578, 35.788910, 51.747776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644541, 35.599442, 52.361984>,  <30.217485, 36.216057, 52.290096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644541, 35.599442, 52.361984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.584158, 35.656590, 51.970718>,  <30.547928, 35.690880, 51.735958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.584158, 35.656590, 51.970718>,  <30.644541, 35.599442, 52.361984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584158, 35.656590, 51.970718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987404, -0.025639, -0.156130,
		-0.047386, -0.989409, -0.137202,
		-0.150959, 0.142872, -0.978161,
		30.538870, 35.699451, 51.677269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140385, 35.186157, 52.096992>,  <30.644541, 35.599442, 52.361984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140385, 35.186157, 52.096992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.036180, 35.429264, 51.796925>,  <30.973658, 35.575127, 51.616882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.036180, 35.429264, 51.796925>,  <31.140385, 35.186157, 52.096992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036180, 35.429264, 51.796925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942965, -0.006618, -0.332825,
		-0.207245, -0.794087, -0.571380,
		-0.260511, 0.607768, -0.750169,
		30.958027, 35.611595, 51.571873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725864, 35.053120, 51.670471>,  <31.140385, 35.186157, 52.096992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725864, 35.053120, 51.670471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.540651, 35.375473, 51.522873>,  <31.429523, 35.568886, 51.434315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.540651, 35.375473, 51.522873>,  <31.725864, 35.053120, 51.670471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540651, 35.375473, 51.522873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798715, 0.198892, -0.567888,
		-0.384261, -0.557671, -0.735763,
		-0.463032, 0.805882, -0.368993,
		31.401741, 35.617237, 51.412174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786377, 34.914295, 50.936092>,  <31.725864, 35.053120, 51.670471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786377, 34.914295, 50.936092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.739708, 35.305557, 51.004917>,  <31.711706, 35.540314, 51.046211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.739708, 35.305557, 51.004917>,  <31.786377, 34.914295, 50.936092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739708, 35.305557, 51.004917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697107, 0.204055, -0.687316,
		-0.707410, 0.039755, -0.705685,
		-0.116674, 0.978152, 0.172064,
		31.704706, 35.599003, 51.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525581, 35.224155, 50.355934>,  <31.786377, 34.914295, 50.936092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525581, 35.224155, 50.355934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.710680, 35.503391, 50.574486>,  <31.821739, 35.670933, 50.705616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.710680, 35.503391, 50.574486>,  <31.525581, 35.224155, 50.355934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710680, 35.503391, 50.574486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602614, 0.204326, -0.771432,
		-0.650169, 0.686236, -0.326128,
		0.462748, 0.698091, 0.546382,
		31.849504, 35.712818, 50.738400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562574, 35.858143, 49.901154>,  <31.525581, 35.224155, 50.355934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562574, 35.858143, 49.901154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.840088, 35.912556, 50.184044>,  <32.006596, 35.945202, 50.353779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.840088, 35.912556, 50.184044>,  <31.562574, 35.858143, 49.901154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840088, 35.912556, 50.184044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673479, 0.225340, -0.704023,
		-0.255133, 0.964737, 0.064724,
		0.693782, 0.136029, 0.707222,
		32.048222, 35.953365, 50.396210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.395840, 34.572170, 34.940048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.212999, 34.905373, 35.064728>,  <24.103294, 35.105293, 35.139534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.212999, 34.905373, 35.064728>,  <24.395840, 34.572170, 34.940048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212999, 34.905373, 35.064728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483591, -0.526894, 0.698944,
		0.746458, 0.168755, 0.643679,
		-0.457100, 0.833010, 0.311696,
		24.075869, 35.155277, 35.158237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504377, 34.770233, 35.669937>,  <24.395840, 34.572170, 34.940048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504377, 34.770233, 35.669937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.145664, 34.862267, 35.518757>,  <23.930437, 34.917484, 35.428051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.145664, 34.862267, 35.518757>,  <24.504377, 34.770233, 35.669937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.145664, 34.862267, 35.518757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437243, -0.591729, 0.677255,
		-0.067818, 0.772605, 0.631254,
		-0.896782, 0.230082, -0.377947,
		23.876629, 34.931290, 35.405373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772751, 35.472023, 35.833191>,  <24.504377, 34.770233, 35.669937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772751, 35.472023, 35.833191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.163111, 35.438595, 35.752556>,  <25.397326, 35.418537, 35.704174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.163111, 35.438595, 35.752556>,  <24.772751, 35.472023, 35.833191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163111, 35.438595, 35.752556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213305, 0.170291, 0.962030,
		-0.046073, -0.981843, 0.184014,
		0.975899, -0.083575, -0.201586,
		25.455881, 35.413521, 35.692081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221062, 34.898731, 36.280296>,  <24.772751, 35.472023, 35.833191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221062, 34.898731, 36.280296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.416475, 35.224827, 36.155895>,  <25.533724, 35.420483, 36.081253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.416475, 35.224827, 36.155895>,  <25.221062, 34.898731, 36.280296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416475, 35.224827, 36.155895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198018, 0.243543, 0.949461,
		0.849778, -0.525428, -0.042452,
		0.488534, 0.815238, -0.311001,
		25.563036, 35.469398, 36.062595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551979, 34.950035, 36.881958>,  <25.221062, 34.898731, 36.280296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551979, 34.950035, 36.881958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.713625, 35.235012, 36.652481>,  <25.810614, 35.405998, 36.514797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.713625, 35.235012, 36.652481>,  <25.551979, 34.950035, 36.881958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713625, 35.235012, 36.652481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530023, 0.328778, 0.781653,
		0.745498, -0.619946, -0.244746,
		0.404116, 0.712441, -0.573688,
		25.834860, 35.448746, 36.480373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342640, 34.932690, 36.847755>,  <25.551979, 34.950035, 36.881958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342640, 34.932690, 36.847755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.206156, 35.303791, 36.787292>,  <26.124266, 35.526451, 36.751015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.206156, 35.303791, 36.787292>,  <26.342640, 34.932690, 36.847755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206156, 35.303791, 36.787292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520162, 0.320299, 0.791732,
		0.782948, 0.191520, -0.591871,
		-0.341208, 0.927755, -0.151156,
		26.103794, 35.582119, 36.741947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902946, 35.400425, 36.850887>,  <26.342640, 34.932690, 36.847755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902946, 35.400425, 36.850887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.580397, 35.610538, 36.959576>,  <26.386868, 35.736607, 37.024788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.580397, 35.610538, 36.959576>,  <26.902946, 35.400425, 36.850887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580397, 35.610538, 36.959576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423058, 0.191289, 0.885681,
		0.413258, 0.829146, -0.376477,
		-0.806374, 0.525286, 0.271725,
		26.338484, 35.768124, 37.041092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261581, 35.931473, 37.099091>,  <26.902946, 35.400425, 36.850887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261581, 35.931473, 37.099091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.892052, 35.909969, 37.250698>,  <26.670334, 35.897068, 37.341663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.892052, 35.909969, 37.250698>,  <27.261581, 35.931473, 37.099091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892052, 35.909969, 37.250698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358772, 0.223754, 0.906210,
		-0.133521, 0.973162, -0.187423,
		-0.923826, -0.053756, 0.379019,
		26.614904, 35.893841, 37.364403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119802, 36.472595, 37.527676>,  <27.261581, 35.931473, 37.099091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119802, 36.472595, 37.527676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.931273, 36.146751, 37.662891>,  <26.818153, 35.951244, 37.744022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.931273, 36.146751, 37.662891>,  <27.119802, 36.472595, 37.527676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931273, 36.146751, 37.662891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387447, 0.153074, 0.909095,
		-0.792299, 0.559452, 0.243468,
		-0.471326, -0.814605, 0.338038,
		26.789875, 35.902370, 37.764301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895620, 36.554344, 38.132771>,  <27.119802, 36.472595, 37.527676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895620, 36.554344, 38.132771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870621, 36.158329, 38.183243>,  <26.855621, 35.920719, 38.213524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870621, 36.158329, 38.183243>,  <26.895620, 36.554344, 38.132771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870621, 36.158329, 38.183243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107694, 0.118997, 0.987037,
		-0.992217, 0.075279, 0.099184,
		-0.062501, -0.990037, 0.126178,
		26.851870, 35.861317, 38.221096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317686, 36.214558, 38.709019>,  <26.895620, 36.554344, 38.132771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317686, 36.214558, 38.709019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.632626, 35.975655, 38.647881>,  <26.821590, 35.832314, 38.611198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.632626, 35.975655, 38.647881>,  <26.317686, 36.214558, 38.709019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632626, 35.975655, 38.647881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176898, -0.018625, 0.984053,
		-0.590582, -0.801831, 0.090990,
		0.787350, -0.597260, -0.152842,
		26.868830, 35.796478, 38.602028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547844, 36.826599, 39.081497>,  <26.317686, 36.214558, 38.709019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547844, 36.826599, 39.081497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.912163, 36.945446, 39.196159>,  <27.130754, 37.016754, 39.264957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.912163, 36.945446, 39.196159>,  <26.547844, 36.826599, 39.081497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912163, 36.945446, 39.196159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318084, 0.947636, 0.028420,
		-0.263200, -0.117065, 0.957612,
		0.910795, 0.297121, 0.286654,
		27.185402, 37.034584, 39.282154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592415, 37.251881, 39.755096>,  <26.547844, 36.826599, 39.081497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592415, 37.251881, 39.755096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.885532, 37.370857, 39.510296>,  <27.061403, 37.442242, 39.363415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.885532, 37.370857, 39.510296>,  <26.592415, 37.251881, 39.755096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885532, 37.370857, 39.510296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357412, 0.933591, 0.025776,
		0.579024, 0.199848, 0.790438,
		0.732794, 0.297437, -0.612000,
		27.105371, 37.460087, 39.326694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951569, 37.764782, 40.068218>,  <26.592415, 37.251881, 39.755096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951569, 37.764782, 40.068218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001369, 37.810757, 39.674004>,  <27.031250, 37.838341, 39.437473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001369, 37.810757, 39.674004>,  <26.951569, 37.764782, 40.068218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001369, 37.810757, 39.674004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374226, 0.925352, 0.060642,
		0.918941, 0.361265, 0.158223,
		0.124504, 0.114938, -0.985540,
		27.038721, 37.845238, 39.378342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389217, 38.328354, 39.818752>,  <26.951569, 37.764782, 40.068218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389217, 38.328354, 39.818752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125053, 38.277317, 39.522758>,  <26.966555, 38.246696, 39.345161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125053, 38.277317, 39.522758>,  <27.389217, 38.328354, 39.818752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125053, 38.277317, 39.522758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310858, 0.943504, 0.114749,
		0.683538, 0.305812, -0.662763,
		-0.660411, -0.127590, -0.739985,
		26.926929, 38.239040, 39.300762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482548, 38.154964, 40.586319>,  <27.389217, 38.328354, 39.818752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482548, 38.154964, 40.586319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.597193, 37.850006, 40.818390>,  <27.665979, 37.667030, 40.957634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.597193, 37.850006, 40.818390>,  <27.482548, 38.154964, 40.586319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597193, 37.850006, 40.818390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075016, 0.621583, 0.779748,
		-0.955106, -0.179961, 0.235344,
		0.286610, -0.762396, 0.580177,
		27.683176, 37.621288, 40.992443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072231, 38.095753, 41.200848>,  <27.482548, 38.154964, 40.586319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072231, 38.095753, 41.200848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.438038, 37.948158, 41.267189>,  <27.657522, 37.859600, 41.306995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.438038, 37.948158, 41.267189>,  <27.072231, 38.095753, 41.200848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438038, 37.948158, 41.267189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121856, 0.642185, 0.756802,
		-0.385763, -0.671896, 0.632252,
		0.914515, -0.368990, 0.165857,
		27.712393, 37.837460, 41.316948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262243, 38.556942, 41.664467>,  <27.072231, 38.095753, 41.200848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262243, 38.556942, 41.664467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.575115, 38.310532, 41.627132>,  <27.762838, 38.162685, 41.604733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.575115, 38.310532, 41.627132>,  <27.262243, 38.556942, 41.664467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575115, 38.310532, 41.627132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466065, 0.479069, 0.743825,
		-0.413497, -0.625307, 0.661824,
		0.782179, -0.616022, -0.093340,
		27.809769, 38.125725, 41.599129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527639, 38.382935, 42.435940>,  <27.262243, 38.556942, 41.664467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527639, 38.382935, 42.435940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.822319, 38.324112, 42.171925>,  <27.999126, 38.288818, 42.013515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.822319, 38.324112, 42.171925>,  <27.527639, 38.382935, 42.435940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822319, 38.324112, 42.171925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660479, 0.365867, 0.655674,
		0.145066, -0.918975, 0.366661,
		0.736698, -0.147056, -0.660038,
		28.043329, 38.279995, 41.973911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016895, 37.807297, 42.577610>,  <27.527639, 38.382935, 42.435940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016895, 37.807297, 42.577610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201231, 38.097687, 42.373417>,  <28.311832, 38.271919, 42.250900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201231, 38.097687, 42.373417>,  <28.016895, 37.807297, 42.577610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201231, 38.097687, 42.373417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542255, 0.225014, 0.809523,
		0.702559, -0.649869, -0.289968,
		0.460837, 0.725974, -0.510480,
		28.339481, 38.315479, 42.220272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428974, 37.639446, 43.146111>,  <28.016895, 37.807297, 42.577610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428974, 37.639446, 43.146111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.182562, 37.325531, 43.173286>,  <28.034714, 37.137180, 43.189590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.182562, 37.325531, 43.173286>,  <28.428974, 37.639446, 43.146111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182562, 37.325531, 43.173286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585087, -0.398113, 0.706526,
		-0.527426, 0.474990, 0.704419,
		-0.616032, -0.784787, 0.067936,
		27.997753, 37.090096, 43.193668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276888, 37.480537, 43.842884>,  <28.428974, 37.639446, 43.146111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276888, 37.480537, 43.842884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.257467, 37.130806, 43.649727>,  <28.245815, 36.920967, 43.533833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.257467, 37.130806, 43.649727>,  <28.276888, 37.480537, 43.842884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257467, 37.130806, 43.649727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585096, -0.416726, 0.695703,
		-0.809510, -0.248763, 0.531800,
		-0.048550, -0.874332, -0.482894,
		28.242903, 36.868507, 43.504860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023397, 36.995079, 44.321838>,  <28.276888, 37.480537, 43.842884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023397, 36.995079, 44.321838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.345749, 36.981098, 44.085419>,  <28.539160, 36.972710, 43.943569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.345749, 36.981098, 44.085419>,  <28.023397, 36.995079, 44.321838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345749, 36.981098, 44.085419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589678, -0.042405, 0.806524,
		-0.053269, -0.998488, -0.013551,
		0.805879, -0.034972, -0.591046,
		28.587513, 36.970612, 43.908104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372141, 36.223404, 44.235153>,  <28.023397, 36.995079, 44.321838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372141, 36.223404, 44.235153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607357, 36.544662, 44.273430>,  <28.748487, 36.737419, 44.296398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607357, 36.544662, 44.273430>,  <28.372141, 36.223404, 44.235153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607357, 36.544662, 44.273430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391211, -0.385976, 0.835450,
		0.707929, -0.453840, -0.541171,
		0.588040, 0.803151, 0.095696,
		28.783770, 36.785606, 44.302139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982138, 35.904221, 44.448605>,  <28.372141, 36.223404, 44.235153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982138, 35.904221, 44.448605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.966763, 36.288059, 44.560097>,  <28.957539, 36.518364, 44.626991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.966763, 36.288059, 44.560097>,  <28.982138, 35.904221, 44.448605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966763, 36.288059, 44.560097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668922, -0.182508, 0.720579,
		0.742338, 0.214145, -0.634883,
		-0.038437, 0.959600, 0.278729,
		28.955231, 36.575939, 44.643715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605959, 36.180260, 44.269203>,  <28.982138, 35.904221, 44.448605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605959, 36.180260, 44.269203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.430637, 36.338310, 44.592133>,  <29.325445, 36.433140, 44.785889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.430637, 36.338310, 44.592133>,  <29.605959, 36.180260, 44.269203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430637, 36.338310, 44.592133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713399, -0.393450, 0.579878,
		0.546766, 0.830103, -0.109434,
		-0.438302, 0.395128, 0.807320,
		29.299147, 36.456848, 44.834328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171154, 36.349648, 44.595551>,  <29.605959, 36.180260, 44.269203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171154, 36.349648, 44.595551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859367, 36.324440, 44.844856>,  <29.672297, 36.309315, 44.994442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859367, 36.324440, 44.844856>,  <30.171154, 36.349648, 44.595551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859367, 36.324440, 44.844856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591691, -0.400849, 0.699444,
		0.205755, 0.913974, 0.349739,
		-0.779466, -0.063024, 0.623267,
		29.625528, 36.305534, 45.031837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528385, 36.652367, 45.053860>,  <30.171154, 36.349648, 44.595551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528385, 36.652367, 45.053860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206133, 36.443180, 45.165192>,  <30.012781, 36.317669, 45.231991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206133, 36.443180, 45.165192>,  <30.528385, 36.652367, 45.053860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206133, 36.443180, 45.165192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537967, -0.449074, 0.713390,
		-0.248087, 0.724460, 0.643125,
		-0.805633, -0.522963, 0.278326,
		29.964443, 36.286293, 45.248688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386292, 37.065010, 45.732548>,  <30.528385, 36.652367, 45.053860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386292, 37.065010, 45.732548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281597, 36.683666, 45.672409>,  <30.218781, 36.454861, 45.636326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281597, 36.683666, 45.672409>,  <30.386292, 37.065010, 45.732548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281597, 36.683666, 45.672409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750763, -0.299006, 0.589024,
		-0.606505, 0.041296, 0.794007,
		-0.261738, -0.953357, -0.150345,
		30.203075, 36.397659, 45.627304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348930, 36.607689, 46.423466>,  <30.386292, 37.065010, 45.732548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348930, 36.607689, 46.423466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411983, 36.351746, 46.122604>,  <30.449816, 36.198181, 45.942089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411983, 36.351746, 46.122604>,  <30.348930, 36.607689, 46.423466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411983, 36.351746, 46.122604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804847, -0.358076, 0.473289,
		-0.572166, -0.679974, 0.458543,
		0.157631, -0.639857, -0.752154,
		30.459272, 36.159790, 45.896957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285124, 35.934494, 46.630703>,  <30.348930, 36.607689, 46.423466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285124, 35.934494, 46.630703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549311, 36.092747, 46.375439>,  <30.707823, 36.187698, 46.222279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549311, 36.092747, 46.375439>,  <30.285124, 35.934494, 46.630703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549311, 36.092747, 46.375439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731782, -0.148825, 0.665092,
		0.168160, -0.906269, -0.387813,
		0.660468, 0.395636, -0.638165,
		30.747452, 36.211437, 46.183990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947798, 35.502048, 46.582466>,  <30.285124, 35.934494, 46.630703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947798, 35.502048, 46.582466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.969193, 35.900085, 46.549183>,  <30.982029, 36.138908, 46.529213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.969193, 35.900085, 46.549183>,  <30.947798, 35.502048, 46.582466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969193, 35.900085, 46.549183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616945, 0.032590, 0.786331,
		0.785187, -0.093391, -0.612176,
		0.053485, 0.995096, -0.083207,
		30.985239, 36.198616, 46.524220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671120, 35.825542, 46.613174>,  <30.947798, 35.502048, 46.582466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671120, 35.825542, 46.613174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429520, 36.117863, 46.740376>,  <31.284559, 36.293255, 46.816696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429520, 36.117863, 46.740376>,  <31.671120, 35.825542, 46.613174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429520, 36.117863, 46.740376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561692, 0.107262, 0.820364,
		0.565410, 0.674115, -0.475268,
		-0.603998, 0.730797, 0.317998,
		31.248320, 36.337101, 46.835773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077347, 36.310505, 46.915916>,  <31.671120, 35.825542, 46.613174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077347, 36.310505, 46.915916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.719690, 36.352127, 47.090122>,  <31.505095, 36.377098, 47.194649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.719690, 36.352127, 47.090122>,  <32.077347, 36.310505, 46.915916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719690, 36.352127, 47.090122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440389, 0.028401, 0.897358,
		0.081002, 0.994166, -0.071217,
		-0.894146, 0.104051, 0.435519,
		31.451447, 36.383343, 47.220779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114109, 36.880577, 47.328514>,  <32.077347, 36.310505, 46.915916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114109, 36.880577, 47.328514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861486, 36.600811, 47.462357>,  <31.709913, 36.432953, 47.542664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861486, 36.600811, 47.462357>,  <32.114109, 36.880577, 47.328514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861486, 36.600811, 47.462357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373349, 0.103900, 0.921854,
		-0.679522, 0.707126, 0.195507,
		-0.631554, -0.699412, 0.334607,
		31.672020, 36.390987, 47.562740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658968, 37.214870, 47.883675>,  <32.114109, 36.880577, 47.328514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658968, 37.214870, 47.883675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710888, 36.819550, 47.915703>,  <31.742039, 36.582355, 47.934917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710888, 36.819550, 47.915703>,  <31.658968, 37.214870, 47.883675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710888, 36.819550, 47.915703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261847, 0.112049, 0.958583,
		-0.956341, -0.103457, 0.273328,
		0.129798, -0.988302, 0.080067,
		31.749828, 36.523060, 47.939724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176275, 36.888130, 48.324577>,  <31.658968, 37.214870, 47.883675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176275, 36.888130, 48.324577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516411, 36.678310, 48.307743>,  <31.720491, 36.552418, 48.297642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516411, 36.678310, 48.307743>,  <31.176275, 36.888130, 48.324577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516411, 36.678310, 48.307743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203634, 0.254255, 0.945456,
		-0.485243, -0.812526, 0.323020,
		0.850337, -0.524554, -0.042082,
		31.771511, 36.520943, 48.295120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289049, 36.397675, 48.873806>,  <31.176275, 36.888130, 48.324577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289049, 36.397675, 48.873806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647793, 36.529076, 48.755325>,  <31.863039, 36.607914, 48.684238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647793, 36.529076, 48.755325>,  <31.289049, 36.397675, 48.873806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647793, 36.529076, 48.755325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217134, 0.256440, 0.941855,
		0.385356, -0.909025, 0.158662,
		0.896858, 0.328499, -0.296201,
		31.916851, 36.627625, 48.666466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720758, 36.995258, 49.015724>,  <31.289049, 36.397675, 48.873806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720758, 36.995258, 49.015724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863611, 36.882160, 48.659630>,  <31.949324, 36.814301, 48.445972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863611, 36.882160, 48.659630>,  <31.720758, 36.995258, 49.015724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863611, 36.882160, 48.659630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683305, -0.570719, 0.455383,
		-0.636829, -0.770932, -0.010622,
		0.357131, -0.282743, -0.890232,
		31.970751, 36.797337, 48.392559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900480, 36.521637, 49.650520>,  <31.720758, 36.995258, 49.015724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900480, 36.521637, 49.650520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.161320, 36.353275, 49.902744>,  <32.317822, 36.252258, 50.054081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.161320, 36.353275, 49.902744>,  <31.900480, 36.521637, 49.650520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161320, 36.353275, 49.902744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749521, 0.232904, -0.619656,
		0.113953, 0.876697, 0.467350,
		0.652098, -0.420901, 0.630563,
		32.356949, 36.227005, 50.091915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505833, 36.889282, 49.482426>,  <31.900480, 36.521637, 49.650520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505833, 36.889282, 49.482426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633518, 36.553379, 49.658112>,  <32.710129, 36.351837, 49.763523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633518, 36.553379, 49.658112>,  <32.505833, 36.889282, 49.482426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633518, 36.553379, 49.658112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834836, 0.029839, -0.549689,
		0.448500, 0.542139, 0.710586,
		0.319211, -0.839759, 0.439215,
		32.729282, 36.301453, 49.789875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130920, 36.939190, 49.781116>,  <32.505833, 36.889282, 49.482426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130920, 36.939190, 49.781116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139198, 36.539379, 49.772026>,  <33.144165, 36.299492, 49.766571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139198, 36.539379, 49.772026>,  <33.130920, 36.939190, 49.781116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139198, 36.539379, 49.772026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787552, 0.030302, -0.615503,
		0.615900, -0.005155, 0.787807,
		0.020699, -0.999528, -0.022723,
		33.145409, 36.239521, 49.765209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801514, 36.810593, 49.971458>,  <33.130920, 36.939190, 49.781116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801514, 36.810593, 49.971458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663612, 36.492016, 49.772732>,  <33.580872, 36.300869, 49.653496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663612, 36.492016, 49.772732>,  <33.801514, 36.810593, 49.971458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663612, 36.492016, 49.772732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846042, -0.034361, -0.532008,
		0.406643, -0.603737, 0.685670,
		-0.344753, -0.796443, -0.496814,
		33.560188, 36.253082, 49.623688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317684, 36.237648, 49.991631>,  <33.801514, 36.810593, 49.971458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317684, 36.237648, 49.991631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100395, 36.154068, 49.666363>,  <33.970024, 36.103920, 49.471203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100395, 36.154068, 49.666363>,  <34.317684, 36.237648, 49.991631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100395, 36.154068, 49.666363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838943, -0.173136, -0.515944,
		-0.032980, -0.962477, 0.269352,
		-0.543219, -0.208955, -0.813173,
		33.937431, 36.091381, 49.422409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761971, 35.732712, 49.584332>,  <34.317684, 36.237648, 49.991631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761971, 35.732712, 49.584332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493839, 35.863201, 49.317726>,  <34.332962, 35.941494, 49.157764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493839, 35.863201, 49.317726>,  <34.761971, 35.732712, 49.584332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493839, 35.863201, 49.317726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684698, -0.074371, -0.725023,
		-0.286092, -0.942361, -0.173515,
		-0.670328, 0.326229, -0.666509,
		34.292740, 35.961071, 49.117775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784256, 35.234360, 49.004932>,  <34.761971, 35.732712, 49.584332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784256, 35.234360, 49.004932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633080, 35.570286, 48.849049>,  <34.542374, 35.771839, 48.755520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633080, 35.570286, 48.849049>,  <34.784256, 35.234360, 49.004932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633080, 35.570286, 48.849049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705740, -0.011116, -0.708384,
		-0.599241, -0.542763, -0.588488,
		-0.377943, 0.839812, -0.389710,
		34.519695, 35.822231, 48.732136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679787, 35.035461, 48.292042>,  <34.784256, 35.234360, 49.004932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679787, 35.035461, 48.292042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697598, 35.432724, 48.335247>,  <34.708282, 35.671082, 48.361168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697598, 35.432724, 48.335247>,  <34.679787, 35.035461, 48.292042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697598, 35.432724, 48.335247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451889, 0.076402, -0.888796,
		-0.890962, 0.088381, -0.445393,
		0.044524, 0.993152, 0.108010,
		34.710953, 35.730671, 48.367649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373295, 35.343178, 47.739918>,  <34.679787, 35.035461, 48.292042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373295, 35.343178, 47.739918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624363, 35.617390, 47.887478>,  <34.775002, 35.781918, 47.976013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624363, 35.617390, 47.887478>,  <34.373295, 35.343178, 47.739918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624363, 35.617390, 47.887478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430995, 0.088620, -0.897992,
		-0.648288, 0.722635, -0.239834,
		0.627667, 0.685525, 0.368904,
		34.812664, 35.823048, 47.998150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503227, 35.910461, 47.228867>,  <34.373295, 35.343178, 47.739918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503227, 35.910461, 47.228867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.819458, 35.950367, 47.470543>,  <35.009197, 35.974312, 47.615547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.819458, 35.950367, 47.470543>,  <34.503227, 35.910461, 47.228867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819458, 35.950367, 47.470543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580361, 0.192735, -0.791224,
		-0.195386, 0.976166, 0.094469,
		0.790573, 0.099768, 0.604186,
		35.056629, 35.980297, 47.651798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945480, 36.162670, 46.806519>,  <34.503227, 35.910461, 47.228867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945480, 36.162670, 46.806519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200157, 36.126682, 47.112862>,  <35.352962, 36.105087, 47.296665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200157, 36.126682, 47.112862>,  <34.945480, 36.162670, 46.806519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200157, 36.126682, 47.112862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740886, 0.346755, -0.575194,
		-0.213813, 0.933630, 0.287433,
		0.636688, -0.089971, 0.765855,
		35.391163, 36.099689, 47.342617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376129, 36.817287, 46.900215>,  <34.945480, 36.162670, 46.806519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376129, 36.817287, 46.900215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586720, 36.503895, 47.032265>,  <35.713074, 36.315861, 47.111496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586720, 36.503895, 47.032265>,  <35.376129, 36.817287, 46.900215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586720, 36.503895, 47.032265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812796, 0.349924, -0.465743,
		0.249382, 0.513525, 0.821036,
		0.526471, -0.783482, 0.330127,
		35.744659, 36.268848, 47.131302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000793, 37.111324, 47.019619>,  <35.376129, 36.817287, 46.900215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000793, 37.111324, 47.019619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073833, 36.718281, 47.033073>,  <36.117657, 36.482452, 47.041145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073833, 36.718281, 47.033073>,  <36.000793, 37.111324, 47.019619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073833, 36.718281, 47.033073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924038, 0.159827, -0.347288,
		0.335873, 0.094496, 0.937155,
		0.182600, -0.982612, 0.033636,
		36.128613, 36.423496, 47.043163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664398, 37.234264, 47.102646>,  <36.000793, 37.111324, 47.019619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664398, 37.234264, 47.102646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638027, 36.840954, 47.034737>,  <36.622204, 36.604969, 46.993992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638027, 36.840954, 47.034737>,  <36.664398, 37.234264, 47.102646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638027, 36.840954, 47.034737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948330, -0.008821, -0.317162,
		0.310361, -0.181906, 0.933052,
		-0.065924, -0.983276, -0.169769,
		36.618248, 36.545971, 46.983807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212292, 36.906746, 47.361641>,  <36.664398, 37.234264, 47.102646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212292, 36.906746, 47.361641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113392, 36.669277, 47.055328>,  <37.054050, 36.526798, 46.871540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113392, 36.669277, 47.055328>,  <37.212292, 36.906746, 47.361641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113392, 36.669277, 47.055328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968951, -0.152518, -0.194608,
		-0.001263, -0.790123, 0.612947,
		-0.247250, -0.593669, -0.765783,
		37.039219, 36.491177, 46.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856277, 36.398289, 47.226425>,  <37.212292, 36.906746, 47.361641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856277, 36.398289, 47.226425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151562, 36.392029, 47.496181>,  <38.328732, 36.388275, 47.658035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151562, 36.392029, 47.496181>,  <37.856277, 36.398289, 47.226425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151562, 36.392029, 47.496181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124613, -0.979362, -0.159130,
		0.662959, 0.201509, -0.721027,
		0.738212, -0.015647, 0.674387,
		38.373024, 36.387333, 47.698498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325535, 35.716820, 47.325096>,  <37.856277, 36.398289, 47.226425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325535, 35.716820, 47.325096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926361, 35.739090, 47.337872>,  <37.686855, 35.752453, 47.345539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926361, 35.739090, 47.337872>,  <38.325535, 35.716820, 47.325096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926361, 35.739090, 47.337872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039608, -0.925727, 0.376113,
		0.050509, 0.374072, 0.926023,
		-0.997938, 0.055676, 0.031942,
		37.626980, 35.755795, 47.347454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094509, 35.521843, 48.017509>,  <38.325535, 35.716820, 47.325096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094509, 35.521843, 48.017509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.814743, 35.456161, 47.739269>,  <37.646885, 35.416752, 47.572327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.814743, 35.456161, 47.739269>,  <38.094509, 35.521843, 48.017509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814743, 35.456161, 47.739269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117214, -0.933718, 0.338276,
		-0.705043, 0.318128, 0.633805,
		-0.699411, -0.164208, -0.695601,
		37.604919, 35.406898, 47.530590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546867, 34.960072, 48.544895>,  <38.094509, 35.521843, 48.017509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546867, 34.960072, 48.544895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801975, 34.888874, 48.844646>,  <38.955040, 34.846157, 49.024498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801975, 34.888874, 48.844646>,  <38.546867, 34.960072, 48.544895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801975, 34.888874, 48.844646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753744, -0.344429, 0.559677,
		0.158488, -0.921784, -0.353829,
		0.637771, -0.177995, 0.749377,
		38.993305, 34.835476, 49.069458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338470, 34.423477, 48.970810>,  <38.546867, 34.960072, 48.544895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338470, 34.423477, 48.970810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.585293, 34.601254, 49.230568>,  <38.733387, 34.707920, 49.386425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.585293, 34.601254, 49.230568>,  <38.338470, 34.423477, 48.970810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585293, 34.601254, 49.230568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498613, -0.417619, 0.759592,
		0.608794, -0.792507, -0.036089,
		0.617053, 0.444441, 0.649398,
		38.770409, 34.734585, 49.425388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584885, 33.965378, 49.438751>,  <38.338470, 34.423477, 48.970810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584885, 33.965378, 49.438751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616985, 34.300713, 49.654438>,  <38.636246, 34.501911, 49.783852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616985, 34.300713, 49.654438>,  <38.584885, 33.965378, 49.438751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616985, 34.300713, 49.654438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494612, -0.436171, 0.751741,
		0.865401, -0.327032, 0.379646,
		0.080253, 0.838334, 0.539217,
		38.641060, 34.552212, 49.816204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913689, 33.875374, 50.196915>,  <38.584885, 33.965378, 49.438751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913689, 33.875374, 50.196915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672726, 34.192348, 50.158661>,  <38.528149, 34.382534, 50.135708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672726, 34.192348, 50.158661>,  <38.913689, 33.875374, 50.196915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672726, 34.192348, 50.158661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491685, -0.274023, 0.826533,
		0.628772, 0.544931, 0.554703,
		-0.602405, 0.792441, -0.095636,
		38.492004, 34.430080, 50.129971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789333, 34.273956, 50.951256>,  <38.913689, 33.875374, 50.196915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789333, 34.273956, 50.951256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499062, 34.348873, 50.686440>,  <38.324898, 34.393826, 50.527550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499062, 34.348873, 50.686440>,  <38.789333, 34.273956, 50.951256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499062, 34.348873, 50.686440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687086, -0.146938, 0.711563,
		0.035992, 0.971252, 0.235318,
		-0.725684, 0.187295, -0.662045,
		38.281357, 34.405060, 50.487827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477364, 34.870705, 51.177620>,  <38.789333, 34.273956, 50.951256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477364, 34.870705, 51.177620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211887, 34.675236, 50.951096>,  <38.052601, 34.557953, 50.815182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211887, 34.675236, 50.951096>,  <38.477364, 34.870705, 51.177620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211887, 34.675236, 50.951096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609492, -0.085601, 0.788158,
		-0.433626, 0.868259, -0.241028,
		-0.663693, -0.488671, -0.566315,
		38.012779, 34.528633, 50.781200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849056, 35.142399, 51.370354>,  <38.477364, 34.870705, 51.177620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849056, 35.142399, 51.370354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727219, 34.805588, 51.192272>,  <37.654114, 34.603500, 51.085423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727219, 34.805588, 51.192272>,  <37.849056, 35.142399, 51.370354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727219, 34.805588, 51.192272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681884, -0.133572, 0.719162,
		-0.665022, 0.522632, -0.533481,
		-0.304599, -0.842030, -0.445202,
		37.635838, 34.552979, 51.058712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197880, 35.232178, 51.102333>,  <37.849056, 35.142399, 51.370354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197880, 35.232178, 51.102333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246513, 34.840595, 51.167892>,  <37.275692, 34.605644, 51.207230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246513, 34.840595, 51.167892>,  <37.197880, 35.232178, 51.102333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246513, 34.840595, 51.167892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732756, 0.022864, 0.680108,
		-0.669543, -0.202788, -0.714555,
		0.121580, -0.978956, 0.163903,
		37.282986, 34.546909, 51.217064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473194, 34.919140, 51.143398>,  <37.197880, 35.232178, 51.102333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473194, 34.919140, 51.143398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711475, 34.636909, 51.296913>,  <36.854446, 34.467571, 51.389023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711475, 34.636909, 51.296913>,  <36.473194, 34.919140, 51.143398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711475, 34.636909, 51.296913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707013, -0.233893, 0.667403,
		-0.381141, -0.668918, -0.638186,
		0.595705, -0.705580, 0.383787,
		36.890186, 34.425236, 51.412048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922764, 34.382355, 51.159206>,  <36.473194, 34.919140, 51.143398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922764, 34.382355, 51.159206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241123, 34.297775, 51.386131>,  <36.432137, 34.247028, 51.522285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241123, 34.297775, 51.386131>,  <35.922764, 34.382355, 51.159206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241123, 34.297775, 51.386131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595835, -0.107377, 0.795896,
		-0.107377, -0.971473, -0.211450,
		-0.795896, 0.211450, -0.567308,
		36.479893, 34.234341, 51.556324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678387, 33.745968, 51.524082>,  <35.922764, 34.382355, 51.159206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678387, 33.745968, 51.524082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992455, 33.871159, 51.737831>,  <36.180897, 33.946274, 51.866081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992455, 33.871159, 51.737831>,  <35.678387, 33.745968, 51.524082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992455, 33.871159, 51.737831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530106, -0.106413, 0.841227,
		0.320148, -0.943781, 0.082358,
		0.785170, 0.312976, 0.534372,
		36.228004, 33.965050, 51.898144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632408, 33.329807, 52.156815>,  <35.678387, 33.745968, 51.524082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632408, 33.329807, 52.156815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848492, 33.653378, 52.249615>,  <35.978142, 33.847519, 52.305294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848492, 33.653378, 52.249615>,  <35.632408, 33.329807, 52.156815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848492, 33.653378, 52.249615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428401, 0.027050, 0.903184,
		0.724329, -0.587295, 0.361155,
		0.540204, 0.808921, 0.232004,
		36.010551, 33.896053, 52.319218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880653, 33.239506, 52.798401>,  <35.632408, 33.329807, 52.156815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880653, 33.239506, 52.798401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887356, 33.637432, 52.758263>,  <35.891376, 33.876186, 52.734180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887356, 33.637432, 52.758263>,  <35.880653, 33.239506, 52.798401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887356, 33.637432, 52.758263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393387, 0.098825, 0.914046,
		0.919220, 0.024161, 0.393002,
		0.016754, 0.994811, -0.100347,
		35.892384, 33.935875, 52.728157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970585, 33.477570, 53.477131>,  <35.880653, 33.239506, 52.798401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970585, 33.477570, 53.477131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.866413, 33.816574, 53.292137>,  <35.803909, 34.019978, 53.181141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.866413, 33.816574, 53.292137>,  <35.970585, 33.477570, 53.477131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866413, 33.816574, 53.292137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606995, 0.228783, 0.761062,
		0.750821, 0.478931, 0.454855,
		-0.260433, 0.847516, -0.462484,
		35.788284, 34.070827, 53.153393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121391, 34.076000, 53.943005>,  <35.970585, 33.477570, 53.477131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121391, 34.076000, 53.943005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827419, 34.186359, 53.695213>,  <35.651035, 34.252575, 53.546539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827419, 34.186359, 53.695213>,  <36.121391, 34.076000, 53.943005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827419, 34.186359, 53.695213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527331, 0.341848, 0.777857,
		0.426381, 0.898342, -0.105742,
		-0.734929, 0.275902, -0.619481,
		35.606941, 34.269131, 53.509369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843845, 34.615295, 54.279648>,  <36.121391, 34.076000, 53.943005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843845, 34.615295, 54.279648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559334, 34.516884, 54.016270>,  <35.388626, 34.457836, 53.858242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559334, 34.516884, 54.016270>,  <35.843845, 34.615295, 54.279648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559334, 34.516884, 54.016270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702646, 0.274373, 0.656512,
		0.019135, 0.929617, -0.368031,
		-0.711283, -0.246033, -0.658441,
		35.345947, 34.443073, 53.818737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354343, 35.178894, 54.320354>,  <35.843845, 34.615295, 54.279648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354343, 35.178894, 54.320354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158047, 34.883312, 54.135693>,  <35.040268, 34.705963, 54.024895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158047, 34.883312, 54.135693>,  <35.354343, 35.178894, 54.320354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158047, 34.883312, 54.135693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799061, 0.170439, 0.576586,
		-0.347385, 0.651845, -0.674109,
		-0.490739, -0.738951, -0.461656,
		35.010826, 34.661625, 53.997196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866138, 35.553364, 53.933365>,  <35.354343, 35.178894, 54.320354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866138, 35.553364, 53.933365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762123, 35.184193, 54.046909>,  <34.699715, 34.962688, 54.115036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762123, 35.184193, 54.046909>,  <34.866138, 35.553364, 53.933365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762123, 35.184193, 54.046909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649540, 0.384717, 0.655814,
		-0.714476, -0.013839, -0.699523,
		-0.260042, -0.922931, 0.283860,
		34.684109, 34.907314, 54.132069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103310, 35.381546, 53.977264>,  <34.866138, 35.553364, 53.933365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103310, 35.381546, 53.977264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271629, 35.148663, 54.255535>,  <34.372620, 35.008934, 54.422497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271629, 35.148663, 54.255535>,  <34.103310, 35.381546, 53.977264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271629, 35.148663, 54.255535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601005, 0.395508, 0.694526,
		-0.679503, -0.710359, -0.183481,
		0.420795, -0.582206, 0.695678,
		34.397869, 34.973999, 54.464237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803066, 35.723938, 54.573692>,  <34.103310, 35.381546, 53.977264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803066, 35.723938, 54.573692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002636, 35.408451, 54.717361>,  <34.122375, 35.219158, 54.803562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002636, 35.408451, 54.717361>,  <33.803066, 35.723938, 54.573692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002636, 35.408451, 54.717361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201845, 0.297295, 0.933206,
		-0.842814, -0.538095, -0.010871,
		0.498922, -0.788714, 0.359176,
		34.152313, 35.171837, 54.825115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345257, 35.511024, 55.082657>,  <33.803066, 35.723938, 54.573692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345257, 35.511024, 55.082657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712616, 35.368004, 55.150417>,  <33.933033, 35.282192, 55.191074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712616, 35.368004, 55.150417>,  <33.345257, 35.511024, 55.082657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712616, 35.368004, 55.150417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055530, 0.307436, 0.949947,
		-0.391738, -0.881838, 0.262494,
		0.918399, -0.357555, 0.169403,
		33.988136, 35.260738, 55.201237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319126, 35.047043, 55.706539>,  <33.345257, 35.511024, 55.082657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319126, 35.047043, 55.706539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700737, 35.160389, 55.667488>,  <33.929703, 35.228397, 55.644058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700737, 35.160389, 55.667488>,  <33.319126, 35.047043, 55.706539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700737, 35.160389, 55.667488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022418, 0.392288, 0.919569,
		0.298875, -0.875107, 0.380607,
		0.954029, 0.283369, -0.097627,
		33.986946, 35.245399, 55.638199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575447, 34.836174, 56.245201>,  <33.319126, 35.047043, 55.706539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575447, 34.836174, 56.245201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860516, 35.086246, 56.117924>,  <34.031559, 35.236290, 56.041557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860516, 35.086246, 56.117924>,  <33.575447, 34.836174, 56.245201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860516, 35.086246, 56.117924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134335, 0.323565, 0.936622,
		0.688512, -0.710251, 0.146613,
		0.712675, 0.625180, -0.318190,
		34.074318, 35.273800, 56.022469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213341, 34.830734, 56.714249>,  <33.575447, 34.836174, 56.245201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213341, 34.830734, 56.714249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275063, 35.180893, 56.531002>,  <34.312096, 35.390987, 56.421055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275063, 35.180893, 56.531002>,  <34.213341, 34.830734, 56.714249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275063, 35.180893, 56.531002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139094, 0.439807, 0.887256,
		0.978184, -0.200626, -0.053899,
		0.154301, 0.875396, -0.458118,
		34.321354, 35.443512, 56.393566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684338, 35.124954, 57.085800>,  <34.213341, 34.830734, 56.714249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684338, 35.124954, 57.085800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516727, 35.437672, 56.901100>,  <34.416161, 35.625301, 56.790279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516727, 35.437672, 56.901100>,  <34.684338, 35.124954, 57.085800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516727, 35.437672, 56.901100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119332, 0.551561, 0.825554,
		0.900098, 0.290826, -0.324412,
		-0.419026, 0.781793, -0.461755,
		34.391018, 35.672211, 56.762573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220562, 35.721371, 57.161015>,  <34.684338, 35.124954, 57.085800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220562, 35.721371, 57.161015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862400, 35.875038, 57.070976>,  <34.647503, 35.967239, 57.016953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862400, 35.875038, 57.070976>,  <35.220562, 35.721371, 57.161015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862400, 35.875038, 57.070976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069825, 0.620427, 0.781150,
		0.439749, 0.683726, -0.582356,
		-0.895402, 0.384173, -0.225091,
		34.593781, 35.990292, 57.003448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353523, 36.430099, 57.160618>,  <35.220562, 35.721371, 57.161015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353523, 36.430099, 57.160618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970676, 36.346355, 57.240719>,  <34.740971, 36.296108, 57.288780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970676, 36.346355, 57.240719>,  <35.353523, 36.430099, 57.160618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970676, 36.346355, 57.240719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022990, 0.634143, 0.772874,
		-0.288802, 0.744331, -0.602133,
		-0.957113, -0.209364, 0.200254,
		34.683544, 36.283546, 57.300797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086391, 37.059471, 57.196793>,  <35.353523, 36.430099, 57.160618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086391, 37.059471, 57.196793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.850403, 36.786388, 57.369232>,  <34.708809, 36.622540, 57.472694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.850403, 36.786388, 57.369232>,  <35.086391, 37.059471, 57.196793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850403, 36.786388, 57.369232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151961, 0.618263, 0.771141,
		-0.792995, 0.389441, -0.468502,
		-0.589972, -0.682705, 0.431100,
		34.673412, 36.581577, 57.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453800, 37.521664, 57.436481>,  <35.086391, 37.059471, 57.196793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453800, 37.521664, 57.436481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401161, 37.187294, 57.649616>,  <34.369579, 36.986671, 57.777496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401161, 37.187294, 57.649616>,  <34.453800, 37.521664, 57.436481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401161, 37.187294, 57.649616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073637, 0.544265, 0.835675,
		-0.988565, 0.070734, -0.133178,
		-0.131595, -0.835926, 0.532833,
		34.361683, 36.936516, 57.809467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900955, 37.619118, 57.970291>,  <34.453800, 37.521664, 57.436481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900955, 37.619118, 57.970291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051350, 37.276512, 58.111721>,  <34.141586, 37.070950, 58.196579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051350, 37.276512, 58.111721>,  <33.900955, 37.619118, 57.970291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051350, 37.276512, 58.111721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187672, 0.303276, 0.934239,
		-0.907422, -0.417616, -0.046717,
		0.375985, -0.856516, 0.353574,
		34.164146, 37.019558, 58.217793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314644, 37.161457, 58.425648>,  <33.900955, 37.619118, 57.970291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314644, 37.161457, 58.425648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670670, 37.030094, 58.552090>,  <33.884285, 36.951275, 58.627956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670670, 37.030094, 58.552090>,  <33.314644, 37.161457, 58.425648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670670, 37.030094, 58.552090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234138, 0.265617, 0.935215,
		-0.391098, -0.906418, 0.159524,
		0.890069, -0.328410, 0.316109,
		33.937691, 36.931572, 58.646923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094215, 36.883812, 59.011436>,  <33.314644, 37.161457, 58.425648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094215, 36.883812, 59.011436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488213, 36.928455, 59.064110>,  <33.724609, 36.955242, 59.095715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488213, 36.928455, 59.064110>,  <33.094215, 36.883812, 59.011436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488213, 36.928455, 59.064110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156110, 0.250341, 0.955489,
		0.073672, -0.961703, 0.264006,
		0.984988, 0.111607, 0.131688,
		33.783710, 36.961937, 59.103615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256485, 36.531536, 59.610081>,  <33.094215, 36.883812, 59.011436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256485, 36.531536, 59.610081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517170, 36.829464, 59.552795>,  <33.673580, 37.008221, 59.518425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517170, 36.829464, 59.552795>,  <33.256485, 36.531536, 59.610081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517170, 36.829464, 59.552795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191886, 0.344592, 0.918932,
		0.733793, -0.571398, 0.367496,
		0.651712, 0.744823, -0.143216,
		33.712685, 37.052910, 59.509830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609940, 36.557076, 60.177319>,  <33.256485, 36.531536, 59.610081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609940, 36.557076, 60.177319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.708035, 36.914684, 60.027344>,  <33.766891, 37.129250, 59.937359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.708035, 36.914684, 60.027344>,  <33.609940, 36.557076, 60.177319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708035, 36.914684, 60.027344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109129, 0.409747, 0.905648,
		0.963301, -0.181185, 0.198051,
		0.245240, 0.894024, -0.374937,
		33.781605, 37.182892, 59.914864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027351, 36.814373, 60.621307>,  <33.609940, 36.557076, 60.177319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027351, 36.814373, 60.621307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949627, 37.168831, 60.453026>,  <33.902992, 37.381504, 60.352058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949627, 37.168831, 60.453026>,  <34.027351, 36.814373, 60.621307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949627, 37.168831, 60.453026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199894, 0.384107, 0.901390,
		0.960356, 0.259249, 0.102497,
		-0.194315, 0.886144, -0.420702,
		33.891331, 37.434673, 60.326817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531925, 37.320335, 60.895676>,  <34.027351, 36.814373, 60.621307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531925, 37.320335, 60.895676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206146, 37.516678, 60.771908>,  <34.010681, 37.634483, 60.697647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206146, 37.516678, 60.771908>,  <34.531925, 37.320335, 60.895676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206146, 37.516678, 60.771908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107431, 0.396467, 0.911741,
		0.570210, 0.775803, -0.270167,
		-0.814444, 0.490860, -0.309415,
		33.961815, 37.663937, 60.679085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739437, 38.140091, 60.843861>,  <34.531925, 37.320335, 60.895676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739437, 38.140091, 60.843861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350273, 38.062401, 60.894020>,  <34.116776, 38.015785, 60.924118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350273, 38.062401, 60.894020>,  <34.739437, 38.140091, 60.843861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350273, 38.062401, 60.894020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048862, 0.702901, 0.709607,
		-0.225970, 0.684255, -0.693349,
		-0.972908, -0.194228, 0.125400,
		34.058399, 38.004131, 60.931641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501888, 38.575596, 61.403847>,  <34.739437, 38.140091, 60.843861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501888, 38.575596, 61.403847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134258, 38.476025, 61.281647>,  <33.913681, 38.416283, 61.208324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134258, 38.476025, 61.281647>,  <34.501888, 38.575596, 61.403847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134258, 38.476025, 61.281647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388968, 0.697464, 0.601871,
		0.063254, 0.671996, -0.737848,
		-0.919077, -0.248928, -0.305502,
		33.858536, 38.401344, 61.189995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998737, 39.039814, 61.061478>,  <34.501888, 38.575596, 61.403847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998737, 39.039814, 61.061478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802113, 38.765469, 61.276127>,  <33.684139, 38.600861, 61.404919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802113, 38.765469, 61.276127>,  <33.998737, 39.039814, 61.061478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802113, 38.765469, 61.276127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563046, 0.720397, 0.404978,
		-0.664342, -0.103075, -0.740287,
		-0.491558, -0.685859, 0.536626,
		33.654644, 38.559711, 61.437115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247429, 39.253895, 60.945007>,  <33.998737, 39.039814, 61.061478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247429, 39.253895, 60.945007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268955, 39.042286, 61.283768>,  <33.281872, 38.915321, 61.487022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268955, 39.042286, 61.283768>,  <33.247429, 39.253895, 60.945007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268955, 39.042286, 61.283768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540076, 0.697951, 0.470300,
		-0.839894, -0.482701, -0.248151,
		0.053817, -0.529022, 0.846900,
		33.285099, 38.883579, 61.537838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815777, 39.657871, 61.377785>,  <33.247429, 39.253895, 60.945007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815777, 39.657871, 61.377785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916706, 39.382946, 61.650234>,  <32.977264, 39.217991, 61.813705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916706, 39.382946, 61.650234>,  <32.815777, 39.657871, 61.377785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916706, 39.382946, 61.650234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567690, 0.464890, 0.679416,
		-0.783619, -0.558103, -0.272876,
		0.252327, -0.687312, 0.681126,
		32.992405, 39.176754, 61.854572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263588, 39.661743, 61.866024>,  <32.815777, 39.657871, 61.377785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263588, 39.661743, 61.866024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511017, 39.438618, 62.087368>,  <32.659473, 39.304741, 62.220173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511017, 39.438618, 62.087368>,  <32.263588, 39.661743, 61.866024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511017, 39.438618, 62.087368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458753, 0.315361, 0.830718,
		-0.637897, -0.767716, -0.060826,
		0.618573, -0.557817, 0.553360,
		32.696590, 39.271271, 62.253376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884079, 39.301193, 62.295666>,  <32.263588, 39.661743, 61.866024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884079, 39.301193, 62.295666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.246880, 39.317348, 62.463341>,  <32.464561, 39.327042, 62.563946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.246880, 39.317348, 62.463341>,  <31.884079, 39.301193, 62.295666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246880, 39.317348, 62.463341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420714, 0.130879, 0.897703,
		-0.018610, -0.990576, 0.135697,
		0.907002, 0.040383, 0.419185,
		32.518982, 39.329464, 62.589096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712887, 38.989056, 62.930672>,  <31.884079, 39.301193, 62.295666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712887, 38.989056, 62.930672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043797, 39.201271, 63.004581>,  <32.242344, 39.328602, 63.048927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043797, 39.201271, 63.004581>,  <31.712887, 38.989056, 62.930672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043797, 39.201271, 63.004581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418479, 0.362516, 0.832741,
		0.374822, -0.766229, 0.521922,
		0.827275, 0.530543, 0.184772,
		32.291981, 39.360435, 63.060013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935099, 38.834949, 63.572319>,  <31.712887, 38.989056, 62.930672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935099, 38.834949, 63.572319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080040, 39.201992, 63.506958>,  <32.167004, 39.422218, 63.467743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080040, 39.201992, 63.506958>,  <31.935099, 38.834949, 63.572319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080040, 39.201992, 63.506958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344181, 0.294661, 0.891467,
		0.866164, -0.266786, 0.422594,
		0.362353, 0.917606, -0.163402,
		32.188747, 39.477272, 63.457939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690662, 39.173084, 64.168930>,  <31.935099, 38.834949, 63.572319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690662, 39.173084, 64.168930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906281, 39.470222, 64.010132>,  <32.035652, 39.648506, 63.914852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906281, 39.470222, 64.010132>,  <31.690662, 39.173084, 64.168930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906281, 39.470222, 64.010132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201969, 0.571586, 0.795298,
		0.817702, -0.348522, 0.458144,
		0.539047, 0.742847, -0.396996,
		32.067993, 39.693077, 63.891033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238163, 39.417110, 64.563736>,  <31.690662, 39.173084, 64.168930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238163, 39.417110, 64.563736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137531, 39.730579, 64.336555>,  <32.077152, 39.918659, 64.200249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137531, 39.730579, 64.336555>,  <32.238163, 39.417110, 64.563736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137531, 39.730579, 64.336555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037024, 0.578604, 0.814768,
		0.967129, 0.226004, -0.116548,
		-0.251576, 0.783671, -0.567952,
		32.062057, 39.965679, 64.166168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627197, 39.957218, 64.739891>,  <32.238163, 39.417110, 64.563736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627197, 39.957218, 64.739891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319443, 40.161884, 64.586922>,  <32.134789, 40.284683, 64.495140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319443, 40.161884, 64.586922>,  <32.627197, 39.957218, 64.739891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319443, 40.161884, 64.586922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064618, 0.657936, 0.750296,
		0.635502, 0.552560, -0.539273,
		-0.769390, 0.511661, -0.382414,
		32.088627, 40.315384, 64.472198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054848, 40.581280, 64.570541>,  <32.627197, 39.957218, 64.739891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054848, 40.581280, 64.570541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072266, 40.942837, 64.400330>,  <33.082718, 41.159771, 64.298203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072266, 40.942837, 64.400330>,  <33.054848, 40.581280, 64.570541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072266, 40.942837, 64.400330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670837, -0.342088, -0.657992,
		-0.740325, -0.256811, -0.621262,
		0.043547, 0.903894, -0.425534,
		33.085331, 41.214005, 64.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761269, 40.625816, 63.876953>,  <33.054848, 40.581280, 64.570541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761269, 40.625816, 63.876953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081295, 40.849434, 63.964016>,  <33.273312, 40.983604, 64.016251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081295, 40.849434, 63.964016>,  <32.761269, 40.625816, 63.876953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081295, 40.849434, 63.964016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541474, -0.516717, -0.663181,
		-0.258278, 0.648442, -0.716112,
		0.800062, 0.559040, 0.217657,
		33.321312, 41.017147, 64.029312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206020, 41.099560, 64.107216>,  <32.761269, 40.625816, 63.876953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206020, 41.099560, 64.107216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501656, 41.255577, 63.887535>,  <32.679035, 41.349190, 63.755730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501656, 41.255577, 63.887535>,  <32.206020, 41.099560, 64.107216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501656, 41.255577, 63.887535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466293, 0.884630, 0.000761,
		0.486131, 0.255523, 0.835694,
		0.739086, 0.390048, -0.549194,
		32.723381, 41.372593, 63.722778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058350, 41.712299, 64.373299>,  <32.206020, 41.099560, 64.107216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058350, 41.712299, 64.373299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316227, 41.725067, 64.067787>,  <32.470951, 41.732727, 63.884480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316227, 41.725067, 64.067787>,  <32.058350, 41.712299, 64.373299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316227, 41.725067, 64.067787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269631, 0.944409, -0.188122,
		0.715314, 0.327219, 0.617457,
		0.644690, 0.031919, -0.763778,
		32.509632, 41.734642, 63.838654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604839, 42.124687, 64.521255>,  <32.058350, 41.712299, 64.373299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604839, 42.124687, 64.521255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.488953, 42.117275, 64.138481>,  <32.419422, 42.112827, 63.908817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.488953, 42.117275, 64.138481>,  <32.604839, 42.124687, 64.521255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488953, 42.117275, 64.138481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302483, 0.950342, 0.073178,
		0.908058, 0.310657, -0.280933,
		-0.289716, -0.018527, -0.956933,
		32.402039, 42.111717, 63.851402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297333, 42.017181, 64.185272>,  <32.604839, 42.124687, 64.521255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297333, 42.017181, 64.185272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679779, 42.022556, 64.068199>,  <33.909248, 42.025784, 63.997959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679779, 42.022556, 64.068199>,  <33.297333, 42.017181, 64.185272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679779, 42.022556, 64.068199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256284, -0.445705, -0.857710,
		-0.141975, 0.895079, -0.422701,
		0.956118, 0.013442, -0.292673,
		33.966614, 42.026588, 63.980396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410370, 42.424107, 63.651566>,  <33.297333, 42.017181, 64.185272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410370, 42.424107, 63.651566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667202, 42.117683, 63.639626>,  <33.821301, 41.933830, 63.632462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667202, 42.117683, 63.639626>,  <33.410370, 42.424107, 63.651566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667202, 42.117683, 63.639626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337357, -0.247371, -0.908294,
		0.688424, 0.593263, -0.417267,
		0.642077, -0.766059, -0.029846,
		33.859825, 41.887867, 63.630672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849735, 42.490101, 63.092358>,  <33.410370, 42.424107, 63.651566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849735, 42.490101, 63.092358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795555, 42.100067, 63.162628>,  <33.763046, 41.866047, 63.204792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795555, 42.100067, 63.162628>,  <33.849735, 42.490101, 63.092358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795555, 42.100067, 63.162628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403126, -0.107733, -0.908781,
		0.905064, -0.193918, -0.378489,
		-0.135453, -0.975084, 0.175679,
		33.754921, 41.807541, 63.215332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182926, 42.117088, 62.574047>,  <33.849735, 42.490101, 63.092358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182926, 42.117088, 62.574047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868664, 41.926682, 62.732113>,  <33.680107, 41.812439, 62.826954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868664, 41.926682, 62.732113>,  <34.182926, 42.117088, 62.574047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868664, 41.926682, 62.732113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380004, -0.132748, -0.915410,
		0.488205, -0.869362, -0.076592,
		-0.785655, -0.476013, 0.395169,
		33.632969, 41.783878, 62.850662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033051, 41.518211, 62.276283>,  <34.182926, 42.117088, 62.574047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033051, 41.518211, 62.276283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649357, 41.586960, 62.366024>,  <33.419140, 41.628208, 62.419868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649357, 41.586960, 62.366024>,  <34.033051, 41.518211, 62.276283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649357, 41.586960, 62.366024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233294, -0.033463, -0.971830,
		-0.159528, -0.984550, 0.072196,
		-0.959231, 0.171877, 0.224351,
		33.361588, 41.638523, 62.433331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629387, 40.962311, 61.999435>,  <34.033051, 41.518211, 62.276283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629387, 40.962311, 61.999435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384945, 41.275272, 62.047436>,  <33.238281, 41.463047, 62.076237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384945, 41.275272, 62.047436>,  <33.629387, 40.962311, 61.999435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384945, 41.275272, 62.047436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311515, -0.098355, -0.945137,
		-0.727675, -0.614958, 0.303835,
		-0.611103, 0.782402, 0.119999,
		33.201614, 41.509995, 62.083435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968746, 40.672874, 61.745865>,  <33.629387, 40.962311, 61.999435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968746, 40.672874, 61.745865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001221, 41.068020, 61.692909>,  <33.020706, 41.305107, 61.661137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001221, 41.068020, 61.692909>,  <32.968746, 40.672874, 61.745865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001221, 41.068020, 61.692909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364697, -0.094169, -0.926352,
		-0.927580, 0.123491, 0.352627,
		0.081190, 0.987867, -0.132386,
		33.025578, 41.364380, 61.653194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395721, 40.853493, 61.250568>,  <32.968746, 40.672874, 61.745865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395721, 40.853493, 61.250568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610550, 41.190487, 61.267445>,  <32.739445, 41.392681, 61.277573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610550, 41.190487, 61.267445>,  <32.395721, 40.853493, 61.250568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610550, 41.190487, 61.267445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245625, 0.204042, -0.947647,
		-0.806985, 0.498589, 0.316519,
		0.537069, 0.842482, 0.042193,
		32.771671, 41.443230, 61.280102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960163, 41.251469, 60.784439>,  <32.395721, 40.853493, 61.250568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960163, 41.251469, 60.784439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330742, 41.401337, 60.798988>,  <32.553089, 41.491257, 60.807716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330742, 41.401337, 60.798988>,  <31.960163, 41.251469, 60.784439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330742, 41.401337, 60.798988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067501, -0.070289, -0.995240,
		-0.370329, 0.924491, -0.090409,
		0.926445, 0.374669, 0.036374,
		32.608677, 41.513737, 60.809902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015274, 41.761395, 60.188438>,  <31.960163, 41.251469, 60.784439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015274, 41.761395, 60.188438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405128, 41.707607, 60.260002>,  <32.639042, 41.675335, 60.302940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405128, 41.707607, 60.260002>,  <32.015274, 41.761395, 60.188438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405128, 41.707607, 60.260002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183100, 0.019382, -0.982903,
		0.128699, 0.990728, 0.043511,
		0.974634, -0.134465, 0.178908,
		32.697517, 41.667267, 60.313675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490910, 42.221447, 59.728024>,  <32.015274, 41.761395, 60.188438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490910, 42.221447, 59.728024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706474, 41.908718, 59.853455>,  <32.835812, 41.721081, 59.928715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706474, 41.908718, 59.853455>,  <32.490910, 42.221447, 59.728024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706474, 41.908718, 59.853455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461227, -0.037635, -0.886483,
		0.704870, 0.622370, 0.340314,
		0.538913, -0.781818, 0.313581,
		32.868149, 41.674171, 59.947529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902832, 42.217796, 59.175335>,  <32.490910, 42.221447, 59.728024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902832, 42.217796, 59.175335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985298, 41.900558, 59.404591>,  <33.034779, 41.710217, 59.542145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985298, 41.900558, 59.404591>,  <32.902832, 42.217796, 59.175335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985298, 41.900558, 59.404591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607890, -0.355176, -0.710155,
		0.766788, 0.494817, 0.408891,
		0.206169, -0.793099, 0.573139,
		33.047150, 41.662628, 59.576534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564117, 42.196194, 59.174046>,  <32.902832, 42.217796, 59.175335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564117, 42.196194, 59.174046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427868, 41.825771, 59.239040>,  <33.346119, 41.603519, 59.278038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427868, 41.825771, 59.239040>,  <33.564117, 42.196194, 59.174046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427868, 41.825771, 59.239040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388895, -0.296118, -0.872396,
		0.856000, -0.233969, 0.461002,
		-0.340625, -0.926052, 0.162488,
		33.325680, 41.547955, 59.287788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062557, 41.701920, 59.183922>,  <33.564117, 42.196194, 59.174046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062557, 41.701920, 59.183922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.757961, 41.459873, 59.091003>,  <33.575203, 41.314644, 59.035252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.757961, 41.459873, 59.091003>,  <34.062557, 41.701920, 59.183922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757961, 41.459873, 59.091003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492343, -0.306903, -0.814499,
		0.421577, -0.734603, 0.531631,
		-0.761492, -0.605119, -0.232293,
		33.529514, 41.278339, 59.021317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411552, 41.084717, 59.173820>,  <34.062557, 41.701920, 59.183922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411552, 41.084717, 59.173820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072643, 41.040867, 58.965935>,  <33.869297, 41.014557, 58.841202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072643, 41.040867, 58.965935>,  <34.411552, 41.084717, 59.173820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072643, 41.040867, 58.965935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492334, -0.529266, -0.691003,
		-0.199318, -0.841345, 0.502406,
		-0.847278, -0.109622, -0.519715,
		33.818459, 41.007980, 58.810020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400661, 40.419300, 58.909645>,  <34.411552, 41.084717, 59.173820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400661, 40.419300, 58.909645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153118, 40.609390, 58.659470>,  <34.004593, 40.723446, 58.509365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153118, 40.609390, 58.659470>,  <34.400661, 40.419300, 58.909645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153118, 40.609390, 58.659470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219342, -0.660006, -0.718527,
		-0.754258, -0.581851, 0.304211,
		-0.618856, 0.475229, -0.625439,
		33.967461, 40.751957, 58.471836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250366, 39.839081, 58.500793>,  <34.400661, 40.419300, 58.909645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250366, 39.839081, 58.500793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088707, 40.143417, 58.297703>,  <33.991711, 40.326019, 58.175846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088707, 40.143417, 58.297703>,  <34.250366, 39.839081, 58.500793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088707, 40.143417, 58.297703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049212, -0.572365, -0.818521,
		-0.913368, -0.305819, 0.268764,
		-0.404150, 0.760837, -0.507730,
		33.967461, 40.371670, 58.145386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736839, 39.648277, 58.073875>,  <34.250366, 39.839081, 58.500793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736839, 39.648277, 58.073875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888962, 39.967491, 57.886894>,  <33.980236, 40.159019, 57.774708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888962, 39.967491, 57.886894>,  <33.736839, 39.648277, 58.073875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888962, 39.967491, 57.886894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024989, -0.496378, -0.867747,
		-0.924522, 0.341694, -0.168835,
		0.380310, 0.798032, -0.467451,
		34.003056, 40.206902, 57.746658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567078, 39.542774, 57.303459>,  <33.736839, 39.648277, 58.073875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567078, 39.542774, 57.303459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809864, 39.860596, 57.296921>,  <33.955536, 40.051289, 57.292999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809864, 39.860596, 57.296921>,  <33.567078, 39.542774, 57.303459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809864, 39.860596, 57.296921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201523, -0.173773, -0.963946,
		-0.768750, 0.581792, -0.265596,
		0.606970, 0.794557, -0.016344,
		33.991955, 40.098961, 57.292019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460991, 39.955231, 56.656654>,  <33.567078, 39.542774, 57.303459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460991, 39.955231, 56.656654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.821907, 40.084103, 56.771240>,  <34.038456, 40.161427, 56.839993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.821907, 40.084103, 56.771240>,  <33.460991, 39.955231, 56.656654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821907, 40.084103, 56.771240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350345, -0.160734, -0.922726,
		-0.251241, 0.932932, -0.257905,
		0.902295, 0.322183, 0.286465,
		34.092594, 40.180756, 56.857182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713322, 40.416374, 56.135601>,  <33.460991, 39.955231, 56.656654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713322, 40.416374, 56.135601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024227, 40.264633, 56.336380>,  <34.210770, 40.173588, 56.456848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024227, 40.264633, 56.336380>,  <33.713322, 40.416374, 56.135601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024227, 40.264633, 56.336380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434803, -0.252764, -0.864325,
		0.454754, 0.890059, -0.031524,
		0.777268, -0.379348, 0.501946,
		34.257408, 40.150829, 56.486965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313568, 40.698250, 55.821041>,  <33.713322, 40.416374, 56.135601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313568, 40.698250, 55.821041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430157, 40.356365, 55.992863>,  <34.500111, 40.151234, 56.095955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430157, 40.356365, 55.992863>,  <34.313568, 40.698250, 55.821041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430157, 40.356365, 55.992863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468761, -0.263816, -0.843009,
		0.833853, 0.447067, 0.323761,
		0.291468, -0.854712, 0.429551,
		34.517597, 40.099953, 56.121727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114922, 40.594494, 55.621067>,  <34.313568, 40.698250, 55.821041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114922, 40.594494, 55.621067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970272, 40.246552, 55.755276>,  <34.883484, 40.037785, 55.835800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970272, 40.246552, 55.755276>,  <35.114922, 40.594494, 55.621067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970272, 40.246552, 55.755276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385364, -0.467152, -0.795779,
		0.848954, -0.158475, 0.504146,
		-0.361623, -0.869859, 0.335520,
		34.861786, 39.985592, 55.855930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651707, 40.218102, 55.502586>,  <35.114922, 40.594494, 55.621067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651707, 40.218102, 55.502586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352791, 39.953342, 55.526085>,  <35.173443, 39.794487, 55.540184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352791, 39.953342, 55.526085>,  <35.651707, 40.218102, 55.502586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352791, 39.953342, 55.526085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398327, -0.516969, -0.757680,
		0.531877, -0.542805, 0.649977,
		-0.747290, -0.661896, 0.058749,
		35.128605, 39.754772, 55.543709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038425, 39.609661, 55.568176>,  <35.651707, 40.218102, 55.502586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038425, 39.609661, 55.568176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678368, 39.495644, 55.436428>,  <35.462334, 39.427235, 55.357380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678368, 39.495644, 55.436428>,  <36.038425, 39.609661, 55.568176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678368, 39.495644, 55.436428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435564, -0.581832, -0.686845,
		0.004143, -0.761724, 0.647889,
		-0.900149, -0.285042, -0.329369,
		35.408321, 39.410130, 55.337616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139320, 38.966042, 55.239208>,  <36.038425, 39.609661, 55.568176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139320, 38.966042, 55.239208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780792, 39.074196, 55.098637>,  <35.565674, 39.139088, 55.014294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780792, 39.074196, 55.098637>,  <36.139320, 38.966042, 55.239208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780792, 39.074196, 55.098637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141252, -0.577164, -0.804319,
		-0.420308, -0.770567, 0.479132,
		-0.896320, 0.270383, -0.351431,
		35.511898, 39.155312, 54.993206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840382, 38.403900, 54.859531>,  <36.139320, 38.966042, 55.239208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840382, 38.403900, 54.859531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621517, 38.709717, 54.723244>,  <35.490200, 38.893208, 54.641472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621517, 38.709717, 54.723244>,  <35.840382, 38.403900, 54.859531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621517, 38.709717, 54.723244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017759, -0.417566, -0.908473,
		-0.836842, -0.491027, 0.242052,
		-0.547157, 0.764547, -0.340716,
		35.457371, 38.939079, 54.621029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274265, 38.115211, 54.678898>,  <35.840382, 38.403900, 54.859531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274265, 38.115211, 54.678898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268639, 38.455112, 54.468098>,  <35.265263, 38.659054, 54.341618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268639, 38.455112, 54.468098>,  <35.274265, 38.115211, 54.678898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268639, 38.455112, 54.468098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036261, -0.526269, -0.849544,
		-0.999243, -0.031056, -0.023412,
		-0.014063, 0.849751, -0.526997,
		35.264420, 38.710037, 54.309998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883827, 37.937489, 54.093800>,  <35.274265, 38.115211, 54.678898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883827, 37.937489, 54.093800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062431, 38.281597, 53.995358>,  <35.169594, 38.488060, 53.936295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062431, 38.281597, 53.995358>,  <34.883827, 37.937489, 54.093800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062431, 38.281597, 53.995358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033053, -0.258995, -0.965313,
		-0.894166, 0.439159, -0.087210,
		0.446513, 0.860268, -0.246101,
		35.196384, 38.539677, 53.921528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479492, 38.187969, 53.629711>,  <34.883827, 37.937489, 54.093800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479492, 38.187969, 53.629711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831787, 38.361458, 53.553619>,  <35.043163, 38.465553, 53.507965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831787, 38.361458, 53.553619>,  <34.479492, 38.187969, 53.629711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831787, 38.361458, 53.553619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043422, -0.326022, -0.944364,
		-0.471614, 0.839995, -0.268306,
		0.880735, 0.433725, -0.190231,
		35.096008, 38.491577, 53.496552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361908, 38.623562, 53.026024>,  <34.479492, 38.187969, 53.629711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361908, 38.623562, 53.026024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750999, 38.533443, 53.048050>,  <34.984455, 38.479374, 53.061268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750999, 38.533443, 53.048050>,  <34.361908, 38.623562, 53.026024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750999, 38.533443, 53.048050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012023, -0.188131, -0.982070,
		0.231616, 0.955954, -0.180293,
		0.972733, -0.225296, 0.055067,
		35.042820, 38.465855, 53.064571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511360, 38.836777, 52.381653>,  <34.361908, 38.623562, 53.026024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511360, 38.836777, 52.381653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832928, 38.640156, 52.515579>,  <35.025867, 38.522182, 52.595936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832928, 38.640156, 52.515579>,  <34.511360, 38.836777, 52.381653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832928, 38.640156, 52.515579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231463, -0.259987, -0.937460,
		0.547854, 0.831136, -0.095232,
		0.803916, -0.491549, 0.334812,
		35.074104, 38.492691, 52.616024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120689, 38.994713, 51.888344>,  <34.511360, 38.836777, 52.381653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120689, 38.994713, 51.888344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176800, 38.647652, 52.079132>,  <35.210464, 38.439415, 52.193604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176800, 38.647652, 52.079132>,  <35.120689, 38.994713, 51.888344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176800, 38.647652, 52.079132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256058, -0.433556, -0.863981,
		0.956430, 0.243325, 0.161354,
		0.140272, -0.867653, 0.476971,
		35.218880, 38.387356, 52.222225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787060, 38.740215, 51.572426>,  <35.120689, 38.994713, 51.888344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787060, 38.740215, 51.572426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629398, 38.416695, 51.747005>,  <35.534801, 38.222584, 51.851753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629398, 38.416695, 51.747005>,  <35.787060, 38.740215, 51.572426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629398, 38.416695, 51.747005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278388, -0.557656, -0.781997,
		0.875867, -0.186724, 0.444962,
		-0.394153, -0.808798, 0.436451,
		35.511154, 38.174057, 51.877941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231934, 38.216019, 51.429470>,  <35.787060, 38.740215, 51.572426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231934, 38.216019, 51.429470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881531, 38.038795, 51.505688>,  <35.671288, 37.932461, 51.551418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881531, 38.038795, 51.505688>,  <36.231934, 38.216019, 51.429470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881531, 38.038795, 51.505688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012530, -0.415855, -0.909345,
		0.482134, -0.794206, 0.369844,
		-0.876008, -0.443060, 0.190547,
		35.618729, 37.905876, 51.562851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287205, 37.458302, 51.271023>,  <36.231934, 38.216019, 51.429470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287205, 37.458302, 51.271023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900459, 37.557987, 51.248840>,  <35.668411, 37.617798, 51.235531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900459, 37.557987, 51.248840>,  <36.287205, 37.458302, 51.271023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900459, 37.557987, 51.248840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043265, -0.374022, -0.926410,
		-0.251612, -0.893310, 0.372409,
		-0.966861, 0.249208, -0.055459,
		35.610401, 37.632751, 51.232201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981503, 36.788177, 51.041630>,  <36.287205, 37.458302, 51.271023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981503, 36.788177, 51.041630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742645, 37.096436, 50.952614>,  <35.599331, 37.281391, 50.899204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742645, 37.096436, 50.952614>,  <35.981503, 36.788177, 51.041630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742645, 37.096436, 50.952614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049631, -0.241411, -0.969153,
		-0.800601, -0.589764, 0.105909,
		-0.597139, 0.770648, -0.222545,
		35.563503, 37.327629, 50.885849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682785, 36.539577, 50.550323>,  <35.981503, 36.788177, 51.041630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682785, 36.539577, 50.550323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646603, 36.933788, 50.492970>,  <35.624893, 37.170315, 50.458557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646603, 36.933788, 50.492970>,  <35.682785, 36.539577, 50.550323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646603, 36.933788, 50.492970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129150, -0.154366, -0.979536,
		-0.987491, -0.070084, 0.141244,
		-0.090453, 0.985525, -0.143384,
		35.619465, 37.229446, 50.449955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198360, 36.565960, 49.965820>,  <35.682785, 36.539577, 50.550323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198360, 36.565960, 49.965820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319363, 36.947189, 49.970684>,  <35.391964, 37.175926, 49.973602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319363, 36.947189, 49.970684>,  <35.198360, 36.565960, 49.965820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319363, 36.947189, 49.970684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138974, 0.056722, -0.988670,
		-0.942961, 0.297390, 0.149611,
		0.302507, 0.953070, 0.012157,
		35.410114, 37.233109, 49.974331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660561, 37.094681, 49.605030>,  <35.198360, 36.565960, 49.965820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660561, 37.094681, 49.605030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033607, 37.238911, 49.599209>,  <35.257435, 37.325447, 49.595715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033607, 37.238911, 49.599209>,  <34.660561, 37.094681, 49.605030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033607, 37.238911, 49.599209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092762, 0.200559, -0.975280,
		-0.348738, 0.910914, 0.220493,
		0.932618, 0.360571, -0.014556,
		35.313393, 37.347080, 49.594841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657364, 37.647797, 49.123764>,  <34.660561, 37.094681, 49.605030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657364, 37.647797, 49.123764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044350, 37.579201, 49.198177>,  <35.276539, 37.538044, 49.242825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044350, 37.579201, 49.198177>,  <34.657364, 37.647797, 49.123764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044350, 37.579201, 49.198177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213189, 0.156525, -0.964391,
		0.136265, 0.972672, 0.187992,
		0.967462, -0.171490, 0.186034,
		35.334587, 37.527752, 49.253986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223713, 37.838531, 48.509075>,  <34.657364, 37.647797, 49.123764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223713, 37.838531, 48.509075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158798, 38.228775, 48.449955>,  <34.119850, 38.462921, 48.414482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158798, 38.228775, 48.449955>,  <34.223713, 37.838531, 48.509075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158798, 38.228775, 48.449955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941696, -0.108392, 0.318527,
		0.294738, 0.190877, 0.936320,
		-0.162289, 0.975611, -0.147801,
		34.110111, 38.521458, 48.405613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125420, 38.342876, 49.185303>,  <34.223713, 37.838531, 48.509075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125420, 38.342876, 49.185303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896877, 38.451176, 48.875401>,  <33.759750, 38.516155, 48.689457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896877, 38.451176, 48.875401>,  <34.125420, 38.342876, 49.185303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896877, 38.451176, 48.875401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816232, -0.089071, 0.570817,
		0.085537, 0.958521, 0.271882,
		-0.571357, 0.270745, -0.774757,
		33.725471, 38.532398, 48.642975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926693, 38.851158, 49.496532>,  <34.125420, 38.342876, 49.185303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926693, 38.851158, 49.496532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673275, 38.763554, 49.199707>,  <33.521225, 38.710991, 49.021614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673275, 38.763554, 49.199707>,  <33.926693, 38.851158, 49.496532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673275, 38.763554, 49.199707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764138, 0.026769, 0.644497,
		-0.121288, 0.975355, -0.184314,
		-0.633547, -0.219011, -0.742059,
		33.483212, 38.697849, 48.977089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435268, 39.461357, 49.297840>,  <33.926693, 38.851158, 49.496532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435268, 39.461357, 49.297840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242485, 39.135136, 49.169724>,  <33.126816, 38.939404, 49.092854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242485, 39.135136, 49.169724>,  <33.435268, 39.461357, 49.297840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242485, 39.135136, 49.169724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728830, 0.170256, 0.663189,
		-0.486333, 0.553072, -0.676455,
		-0.481962, -0.815552, -0.320294,
		33.097897, 38.890469, 49.073635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707302, 39.640568, 49.210789>,  <33.435268, 39.461357, 49.297840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707302, 39.640568, 49.210789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691433, 39.241657, 49.235638>,  <32.681911, 39.002312, 49.250546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691433, 39.241657, 49.235638>,  <32.707302, 39.640568, 49.210789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691433, 39.241657, 49.235638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827178, 0.067656, 0.557852,
		-0.560537, -0.029252, -0.827612,
		-0.039675, -0.997280, 0.062120,
		32.679531, 38.942474, 49.254272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017429, 39.556934, 49.150993>,  <32.707302, 39.640568, 49.210789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017429, 39.556934, 49.150993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.156517, 39.216724, 49.308830>,  <32.239971, 39.012600, 49.403530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.156517, 39.216724, 49.308830>,  <32.017429, 39.556934, 49.150993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156517, 39.216724, 49.308830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840662, -0.096457, 0.532901,
		-0.415184, -0.517016, -0.748543,
		0.347720, -0.850524, 0.394588,
		32.260834, 38.961567, 49.427208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406258, 39.157543, 49.289997>,  <32.017429, 39.556934, 49.150993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406258, 39.157543, 49.289997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671946, 38.948372, 49.503674>,  <31.831358, 38.822868, 49.631878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671946, 38.948372, 49.503674>,  <31.406258, 39.157543, 49.289997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671946, 38.948372, 49.503674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708853, -0.213689, 0.672208,
		-0.237362, -0.825159, -0.512613,
		0.664218, -0.522924, 0.534194,
		31.871210, 38.791492, 49.663929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186193, 38.465885, 49.428066>,  <31.406258, 39.157543, 49.289997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186193, 38.465885, 49.428066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428242, 38.549702, 49.735291>,  <31.573471, 38.599991, 49.919624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428242, 38.549702, 49.735291>,  <31.186193, 38.465885, 49.428066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428242, 38.549702, 49.735291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748205, -0.180005, 0.638582,
		0.272063, -0.961089, 0.047853,
		0.605121, 0.209539, 0.768064,
		31.609777, 38.612564, 49.965710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948099, 38.004715, 49.952274>,  <31.186193, 38.465885, 49.428066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948099, 38.004715, 49.952274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.166136, 38.271568, 50.155373>,  <31.296959, 38.431679, 50.277233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.166136, 38.271568, 50.155373>,  <30.948099, 38.004715, 49.952274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166136, 38.271568, 50.155373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554683, -0.167150, 0.815099,
		0.628649, -0.725945, 0.278935,
		0.545093, 0.667132, 0.507748,
		31.329664, 38.471706, 50.307697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989174, 37.749298, 50.561131>,  <30.948099, 38.004715, 49.952274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989174, 37.749298, 50.561131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096136, 38.129707, 50.623154>,  <31.160313, 38.357952, 50.660366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096136, 38.129707, 50.623154>,  <30.989174, 37.749298, 50.561131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096136, 38.129707, 50.623154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499719, -0.000715, 0.866187,
		0.823878, -0.309109, 0.475055,
		0.267406, 0.951026, 0.155057,
		31.176357, 38.415016, 50.669670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211683, 37.725590, 51.224014>,  <30.989174, 37.749298, 50.561131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211683, 37.725590, 51.224014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.133884, 38.107784, 51.135281>,  <31.087206, 38.337101, 51.082043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.133884, 38.107784, 51.135281>,  <31.211683, 37.725590, 51.224014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133884, 38.107784, 51.135281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445876, 0.115317, 0.887635,
		0.873708, 0.271553, 0.403601,
		-0.194498, 0.955490, -0.221832,
		31.075535, 38.394432, 51.068729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404961, 38.099545, 51.722256>,  <31.211683, 37.725590, 51.224014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404961, 38.099545, 51.722256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169649, 38.376991, 51.555965>,  <31.028463, 38.543457, 51.456192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169649, 38.376991, 51.555965>,  <31.404961, 38.099545, 51.722256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169649, 38.376991, 51.555965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468182, 0.127036, 0.874452,
		0.659345, 0.709056, 0.250006,
		-0.588277, 0.693614, -0.415728,
		30.993166, 38.585075, 51.431248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397829, 38.717281, 52.191849>,  <31.404961, 38.099545, 51.722256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397829, 38.717281, 52.191849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.069601, 38.772171, 51.969917>,  <30.872663, 38.805103, 51.836758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.069601, 38.772171, 51.969917>,  <31.397829, 38.717281, 52.191849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069601, 38.772171, 51.969917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532830, 0.167528, 0.829474,
		0.206772, 0.976270, -0.064352,
		-0.820571, 0.137223, -0.554826,
		30.823429, 38.813339, 51.803471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067711, 39.467903, 52.282604>,  <31.397829, 38.717281, 52.191849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067711, 39.467903, 52.282604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.815376, 39.163689, 52.221115>,  <30.663977, 38.981159, 52.184223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.815376, 39.163689, 52.221115>,  <31.067711, 39.467903, 52.282604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815376, 39.163689, 52.221115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515679, 0.262916, 0.815445,
		-0.579761, 0.593681, -0.558050,
		-0.630834, -0.760538, -0.153720,
		30.626125, 38.935528, 52.174999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826185, 40.038139, 51.789276>,  <31.067711, 39.467903, 52.282604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826185, 40.038139, 51.789276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629385, 39.743690, 51.975204>,  <30.511305, 39.567020, 52.086761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629385, 39.743690, 51.975204>,  <30.826185, 40.038139, 51.789276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629385, 39.743690, 51.975204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048914, 0.509700, 0.858961,
		-0.869218, 0.445347, -0.214768,
		-0.492003, -0.736119, 0.464824,
		30.481785, 39.522854, 52.114651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278065, 40.363728, 52.206776>,  <30.826185, 40.038139, 51.789276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278065, 40.363728, 52.206776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.334656, 39.996014, 52.353691>,  <30.368610, 39.775387, 52.441841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.334656, 39.996014, 52.353691>,  <30.278065, 40.363728, 52.206776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334656, 39.996014, 52.353691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110437, 0.354046, 0.928685,
		-0.983762, -0.171948, -0.051434,
		0.141475, -0.919285, 0.367287,
		30.377098, 39.720226, 52.463879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776323, 40.269566, 52.766644>,  <30.278065, 40.363728, 52.206776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776323, 40.269566, 52.766644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.078983, 40.015953, 52.830498>,  <30.260580, 39.863785, 52.868809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.078983, 40.015953, 52.830498>,  <29.776323, 40.269566, 52.766644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078983, 40.015953, 52.830498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026884, 0.274119, 0.961320,
		-0.653266, -0.723092, 0.224458,
		0.756651, -0.634032, 0.159633,
		30.305979, 39.825745, 52.878387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601730, 40.143276, 53.333801>,  <29.776323, 40.269566, 52.766644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601730, 40.143276, 53.333801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.977015, 40.004848, 53.334301>,  <30.202185, 39.921791, 53.334599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.977015, 40.004848, 53.334301>,  <29.601730, 40.143276, 53.333801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977015, 40.004848, 53.334301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104154, 0.285800, 0.952612,
		-0.330024, -0.893620, 0.304184,
		0.938209, -0.346067, 0.001247,
		30.258478, 39.901028, 53.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750774, 39.995762, 53.986824>,  <29.601730, 40.143276, 53.333801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750774, 39.995762, 53.986824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.129877, 39.942932, 53.870674>,  <30.357338, 39.911236, 53.800983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.129877, 39.942932, 53.870674>,  <29.750774, 39.995762, 53.986824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129877, 39.942932, 53.870674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306276, 0.122204, 0.944066,
		-0.089201, -0.983678, 0.156271,
		0.947754, -0.132074, -0.290376,
		30.414204, 39.903309, 53.783562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012106, 39.557007, 54.441341>,  <29.750774, 39.995762, 53.986824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012106, 39.557007, 54.441341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.328953, 39.756611, 54.300747>,  <30.519060, 39.876373, 54.216393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.328953, 39.756611, 54.300747>,  <30.012106, 39.557007, 54.441341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328953, 39.756611, 54.300747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427341, -0.042239, 0.903103,
		0.435812, -0.865566, -0.246706,
		0.792116, 0.499010, -0.351484,
		30.566587, 39.906315, 54.195301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557838, 39.344120, 54.910069>,  <30.012106, 39.557007, 54.441341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557838, 39.344120, 54.910069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.678577, 39.694695, 54.760006>,  <30.751020, 39.905041, 54.669968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.678577, 39.694695, 54.760006>,  <30.557838, 39.344120, 54.910069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678577, 39.694695, 54.760006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315785, 0.279384, 0.906766,
		0.899538, -0.392173, -0.192435,
		0.301846, 0.876439, -0.375159,
		30.769131, 39.957626, 54.647457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218155, 39.411499, 55.182598>,  <30.557838, 39.344120, 54.910069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218155, 39.411499, 55.182598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119785, 39.785389, 55.079990>,  <31.060764, 40.009724, 55.018425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119785, 39.785389, 55.079990>,  <31.218155, 39.411499, 55.182598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119785, 39.785389, 55.079990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351760, 0.332673, 0.874982,
		0.903209, 0.124945, -0.410612,
		-0.245924, 0.934729, -0.256523,
		31.046009, 40.065807, 55.003033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822046, 39.899994, 55.324162>,  <31.218155, 39.411499, 55.182598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822046, 39.899994, 55.324162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505613, 40.144669, 55.326252>,  <31.315754, 40.291473, 55.327507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505613, 40.144669, 55.326252>,  <31.822046, 39.899994, 55.324162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505613, 40.144669, 55.326252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273155, 0.345600, 0.897746,
		0.547333, 0.711619, -0.440483,
		-0.791084, 0.611686, 0.005224,
		31.268288, 40.328175, 55.327820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072365, 40.608486, 55.452168>,  <31.822046, 39.899994, 55.324162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072365, 40.608486, 55.452168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683914, 40.614323, 55.547421>,  <31.450846, 40.617825, 55.604572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683914, 40.614323, 55.547421>,  <32.072365, 40.608486, 55.452168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683914, 40.614323, 55.547421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220573, 0.435353, 0.872820,
		-0.090937, 0.900142, -0.425999,
		-0.971122, 0.014592, 0.238137,
		31.392578, 40.618702, 55.618862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932217, 41.344173, 55.633396>,  <32.072365, 40.608486, 55.452168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932217, 41.344173, 55.633396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637758, 41.122314, 55.788551>,  <31.461084, 40.989197, 55.881645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637758, 41.122314, 55.788551>,  <31.932217, 41.344173, 55.633396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637758, 41.122314, 55.788551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193303, 0.376933, 0.905845,
		-0.648633, 0.741812, -0.170262,
		-0.736144, -0.554649, 0.387886,
		31.416916, 40.955921, 55.904919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575470, 41.843266, 56.038132>,  <31.932217, 41.344173, 55.633396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575470, 41.843266, 56.038132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501833, 41.471313, 56.165531>,  <31.457651, 41.248142, 56.241970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501833, 41.471313, 56.165531>,  <31.575470, 41.843266, 56.038132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501833, 41.471313, 56.165531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012636, 0.326244, 0.945201,
		-0.982828, 0.169978, -0.071808,
		-0.184090, -0.929878, 0.318494,
		31.446606, 41.192348, 56.261078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108271, 41.958920, 56.508640>,  <31.575470, 41.843266, 56.038132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108271, 41.958920, 56.508640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240091, 41.595844, 56.612564>,  <31.319183, 41.377998, 56.674919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240091, 41.595844, 56.612564>,  <31.108271, 41.958920, 56.508640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240091, 41.595844, 56.612564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228614, 0.190271, 0.954742,
		-0.916041, -0.374032, -0.144806,
		0.329552, -0.907688, 0.259805,
		31.338957, 41.323540, 56.690506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584051, 41.564758, 56.876923>,  <31.108271, 41.958920, 56.508640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584051, 41.564758, 56.876923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936119, 41.470406, 57.041683>,  <31.147360, 41.413795, 57.140541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936119, 41.470406, 57.041683>,  <30.584051, 41.564758, 56.876923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936119, 41.470406, 57.041683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317424, 0.352698, 0.880254,
		-0.352913, -0.905519, 0.235559,
		0.880167, -0.235881, 0.411904,
		31.200169, 41.399643, 57.165253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500378, 41.016117, 57.425339>,  <30.584051, 41.564758, 56.876923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500378, 41.016117, 57.425339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799364, 41.264961, 57.518528>,  <30.978756, 41.414268, 57.574440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799364, 41.264961, 57.518528>,  <30.500378, 41.016117, 57.425339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799364, 41.264961, 57.518528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392237, 0.130274, 0.910592,
		0.536136, -0.772018, 0.341389,
		0.747468, 0.622107, 0.232970,
		31.023605, 41.451591, 57.588417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644543, 40.912918, 58.146496>,  <30.500378, 41.016117, 57.425339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644543, 40.912918, 58.146496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797577, 41.275726, 58.076134>,  <30.889397, 41.493412, 58.033916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797577, 41.275726, 58.076134>,  <30.644543, 40.912918, 58.146496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797577, 41.275726, 58.076134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324128, 0.310052, 0.893761,
		0.865200, -0.284922, 0.412611,
		0.382583, 0.907021, -0.175906,
		30.912352, 41.547832, 58.023361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838934, 40.985752, 58.743721>,  <30.644543, 40.912918, 58.146496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838934, 40.985752, 58.743721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.860538, 41.358261, 58.599606>,  <30.873501, 41.581768, 58.513138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.860538, 41.358261, 58.599606>,  <30.838934, 40.985752, 58.743721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860538, 41.358261, 58.599606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283595, 0.360260, 0.888699,
		0.957422, 0.054177, 0.283562,
		0.054009, 0.931277, -0.360286,
		30.876741, 41.637646, 58.491520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247934, 41.384624, 59.213795>,  <30.838934, 40.985752, 58.743721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247934, 41.384624, 59.213795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993513, 41.623821, 59.018719>,  <30.840860, 41.767338, 58.901672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993513, 41.623821, 59.018719>,  <31.247934, 41.384624, 59.213795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993513, 41.623821, 59.018719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444983, 0.232098, 0.864940,
		0.630417, 0.767163, 0.118468,
		-0.636054, 0.597989, -0.487693,
		30.802696, 41.803219, 58.872410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006453, 41.877632, 59.706726>,  <31.247934, 41.384624, 59.213795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006453, 41.877632, 59.706726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731560, 41.924412, 59.419941>,  <30.566624, 41.952480, 59.247871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731560, 41.924412, 59.419941>,  <31.006453, 41.877632, 59.706726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731560, 41.924412, 59.419941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670007, 0.279346, 0.687790,
		0.280718, 0.953042, -0.113618,
		-0.687232, 0.116950, -0.716962,
		30.525391, 41.959496, 59.204853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749258, 42.461479, 59.924965>,  <31.006453, 41.877632, 59.706726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749258, 42.461479, 59.924965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470688, 42.312778, 59.679432>,  <30.303545, 42.223560, 59.532112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470688, 42.312778, 59.679432>,  <30.749258, 42.461479, 59.924965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470688, 42.312778, 59.679432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714672, 0.281715, 0.640219,
		-0.065075, 0.884556, -0.461873,
		-0.696426, -0.371750, -0.613835,
		30.261761, 42.201252, 59.495281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234119, 43.116741, 59.692387>,  <30.749258, 42.461479, 59.924965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234119, 43.116741, 59.692387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050928, 42.763275, 59.653633>,  <29.941013, 42.551193, 59.630383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050928, 42.763275, 59.653633>,  <30.234119, 43.116741, 59.692387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050928, 42.763275, 59.653633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773271, 0.342245, 0.533779,
		-0.438527, 0.319374, -0.840056,
		-0.457980, -0.883668, -0.096879,
		29.913534, 42.498177, 59.624569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530153, 43.264694, 59.575520>,  <30.234119, 43.116741, 59.692387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530153, 43.264694, 59.575520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544876, 42.885185, 59.701038>,  <29.553711, 42.657478, 59.776352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544876, 42.885185, 59.701038>,  <29.530153, 43.264694, 59.575520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544876, 42.885185, 59.701038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751239, 0.180804, 0.634783,
		-0.659003, -0.259105, -0.706102,
		0.036809, -0.948775, 0.313800,
		29.555920, 42.600552, 59.795177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826803, 43.132889, 59.596649>,  <29.530153, 43.264694, 59.575520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826803, 43.132889, 59.596649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015749, 42.872398, 59.834229>,  <29.129116, 42.716106, 59.976776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015749, 42.872398, 59.834229>,  <28.826803, 43.132889, 59.596649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015749, 42.872398, 59.834229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775511, 0.013168, 0.631196,
		-0.418871, -0.758772, -0.498811,
		0.472366, -0.651223, 0.593952,
		29.157459, 42.677032, 60.012413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300240, 42.616623, 59.769115>,  <28.826803, 43.132889, 59.596649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300240, 42.616623, 59.769115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593403, 42.579330, 60.038681>,  <28.769300, 42.556957, 60.200420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593403, 42.579330, 60.038681>,  <28.300240, 42.616623, 59.769115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593403, 42.579330, 60.038681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678353, -0.024689, 0.734321,
		-0.051826, -0.995338, -0.081341,
		0.732906, -0.093234, 0.673911,
		28.813274, 42.551361, 60.240856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986902, 42.151379, 60.270439>,  <28.300240, 42.616623, 59.769115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986902, 42.151379, 60.270439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.292273, 42.327549, 60.459419>,  <28.475494, 42.433250, 60.572807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.292273, 42.327549, 60.459419>,  <27.986902, 42.151379, 60.270439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292273, 42.327549, 60.459419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589828, 0.177276, 0.787830,
		0.263227, -0.880112, 0.395113,
		0.763423, 0.440427, 0.472451,
		28.521299, 42.459675, 60.601154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612120, 41.940140, 59.980251>,  <27.986902, 42.151379, 60.270439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612120, 41.940140, 59.980251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.372255, 41.710060, 60.202801>,  <28.228336, 41.572014, 60.336330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.372255, 41.710060, 60.202801>,  <28.612120, 41.940140, 59.980251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372255, 41.710060, 60.202801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042770, -0.671217, -0.740026,
		0.799111, -0.467560, 0.377900,
		-0.599659, -0.575200, 0.556375,
		28.192358, 41.537498, 60.369713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809196, 41.214397, 59.982487>,  <28.612120, 41.940140, 59.980251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809196, 41.214397, 59.982487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.411974, 41.250622, 60.012531>,  <28.173641, 41.272358, 60.030556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.411974, 41.250622, 60.012531>,  <28.809196, 41.214397, 59.982487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411974, 41.250622, 60.012531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115237, -0.619854, -0.776210,
		-0.023739, -0.779474, 0.625985,
		-0.993054, 0.090563, 0.075109,
		28.114058, 41.277790, 60.035065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428263, 40.462433, 59.961044>,  <28.809196, 41.214397, 59.982487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428263, 40.462433, 59.961044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154865, 40.722961, 59.829220>,  <27.990828, 40.879280, 59.750126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154865, 40.722961, 59.829220>,  <28.428263, 40.462433, 59.961044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154865, 40.722961, 59.829220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297566, -0.660881, -0.688978,
		-0.666558, -0.372838, 0.645517,
		-0.683487, 0.651328, -0.329571,
		27.949818, 40.918358, 59.730350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912817, 40.055046, 59.925522>,  <28.428263, 40.462433, 59.961044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912817, 40.055046, 59.925522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837210, 40.380646, 59.705822>,  <27.791845, 40.576004, 59.574001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837210, 40.380646, 59.705822>,  <27.912817, 40.055046, 59.925522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837210, 40.380646, 59.705822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138477, -0.575838, -0.805751,
		-0.972161, -0.076243, 0.221564,
		-0.189018, 0.814001, -0.549249,
		27.780504, 40.624847, 59.541046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271080, 39.958401, 59.495693>,  <27.912817, 40.055046, 59.925522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271080, 39.958401, 59.495693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484968, 40.238071, 59.305862>,  <27.613300, 40.405876, 59.191963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484968, 40.238071, 59.305862>,  <27.271080, 39.958401, 59.495693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484968, 40.238071, 59.305862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067345, -0.524560, -0.848706,
		-0.842341, 0.485780, -0.233406,
		0.534720, 0.699181, -0.474573,
		27.645384, 40.447826, 59.163490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945690, 39.929417, 58.873840>,  <27.271080, 39.958401, 59.495693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945690, 39.929417, 58.873840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.263357, 40.154213, 58.781345>,  <27.453957, 40.289089, 58.725849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.263357, 40.154213, 58.781345>,  <26.945690, 39.929417, 58.873840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263357, 40.154213, 58.781345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034716, -0.421852, -0.906000,
		-0.606709, 0.711486, -0.354531,
		0.794166, 0.561986, -0.231241,
		27.501606, 40.322807, 58.711971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835226, 40.246227, 58.187584>,  <26.945690, 39.929417, 58.873840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835226, 40.246227, 58.187584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.233679, 40.261593, 58.219193>,  <27.472750, 40.270813, 58.238155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.233679, 40.261593, 58.219193>,  <26.835226, 40.246227, 58.187584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233679, 40.261593, 58.219193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087689, -0.378177, -0.921571,
		-0.005523, 0.924936, -0.380083,
		0.996133, 0.038419, 0.079018,
		27.532518, 40.273117, 58.242897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101437, 40.775085, 57.727554>,  <26.835226, 40.246227, 58.187584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101437, 40.775085, 57.727554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.404827, 40.527794, 57.810020>,  <27.586863, 40.379417, 57.859501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.404827, 40.527794, 57.810020>,  <27.101437, 40.775085, 57.727554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404827, 40.527794, 57.810020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082437, -0.222786, -0.971375,
		0.646464, 0.753762, -0.118013,
		0.758477, -0.618231, 0.206161,
		27.632370, 40.342323, 57.871868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482428, 40.859035, 57.199474>,  <27.101437, 40.775085, 57.727554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482428, 40.859035, 57.199474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.667341, 40.525932, 57.321335>,  <27.778290, 40.326069, 57.394451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.667341, 40.525932, 57.321335>,  <27.482428, 40.859035, 57.199474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667341, 40.525932, 57.321335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091549, -0.386551, -0.917713,
		0.881994, 0.396352, -0.254933,
		0.462282, -0.832756, 0.304650,
		27.806026, 40.276104, 57.412731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020956, 40.727287, 56.677776>,  <27.482428, 40.859035, 57.199474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020956, 40.727287, 56.677776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.978575, 40.377571, 56.867260>,  <27.953146, 40.167744, 56.980949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.978575, 40.377571, 56.867260>,  <28.020956, 40.727287, 56.677776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978575, 40.377571, 56.867260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051908, -0.470874, -0.880672,
		0.993015, -0.117900, 0.004508,
		-0.105954, -0.874287, 0.473705,
		27.946789, 40.115284, 57.009373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555178, 40.205521, 56.325031>,  <28.020956, 40.727287, 56.677776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555178, 40.205521, 56.325031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.313541, 39.952168, 56.518482>,  <28.168560, 39.800156, 56.634552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.313541, 39.952168, 56.518482>,  <28.555178, 40.205521, 56.325031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313541, 39.952168, 56.518482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068939, -0.563066, -0.823532,
		0.793928, -0.530829, 0.296478,
		-0.604091, -0.633386, 0.483628,
		28.132315, 39.762150, 56.663570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830048, 39.475765, 56.138710>,  <28.555178, 40.205521, 56.325031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830048, 39.475765, 56.138710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452627, 39.459965, 56.270256>,  <28.226175, 39.450485, 56.349182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452627, 39.459965, 56.270256>,  <28.830048, 39.475765, 56.138710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452627, 39.459965, 56.270256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248415, -0.572346, -0.781479,
		0.219096, -0.819060, 0.530224,
		-0.943550, -0.039504, 0.328865,
		28.169561, 39.448112, 56.368916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633995, 38.731876, 55.977707>,  <28.830048, 39.475765, 56.138710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633995, 38.731876, 55.977707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.311785, 38.964592, 56.022690>,  <28.118458, 39.104221, 56.049679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.311785, 38.964592, 56.022690>,  <28.633995, 38.731876, 55.977707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311785, 38.964592, 56.022690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506388, -0.577315, -0.640530,
		-0.307728, -0.572913, 0.759654,
		-0.805528, 0.581789, 0.112460,
		28.070126, 39.139130, 56.056427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175934, 38.303520, 56.127182>,  <28.633995, 38.731876, 55.977707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175934, 38.303520, 56.127182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971708, 38.625507, 56.006279>,  <27.849173, 38.818699, 55.933739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971708, 38.625507, 56.006279>,  <28.175934, 38.303520, 56.127182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971708, 38.625507, 56.006279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423743, -0.541429, -0.726152,
		-0.748176, -0.242667, 0.617531,
		-0.510562, 0.804964, -0.302256,
		27.818539, 38.866997, 55.915604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536093, 38.096989, 55.990032>,  <28.175934, 38.303520, 56.127182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536093, 38.096989, 55.990032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.553642, 38.433708, 55.774830>,  <27.564173, 38.635738, 55.645710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.553642, 38.433708, 55.774830>,  <27.536093, 38.096989, 55.990032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553642, 38.433708, 55.774830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344669, -0.492707, -0.799026,
		-0.937698, 0.220491, 0.268525,
		0.043874, 0.841798, -0.538007,
		27.566805, 38.686249, 55.613426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899061, 38.204815, 55.574158>,  <27.536093, 38.096989, 55.990032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899061, 38.204815, 55.574158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.200571, 38.390499, 55.388111>,  <27.381477, 38.501911, 55.276482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.200571, 38.390499, 55.388111>,  <26.899061, 38.204815, 55.574158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200571, 38.390499, 55.388111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201268, -0.510692, -0.835874,
		-0.625553, 0.723673, -0.291516,
		0.753774, 0.464211, -0.465117,
		27.426702, 38.529762, 55.248577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733067, 38.131519, 54.850681>,  <26.899061, 38.204815, 55.574158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733067, 38.131519, 54.850681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095488, 38.298092, 54.820618>,  <27.312941, 38.398037, 54.802582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095488, 38.298092, 54.820618>,  <26.733067, 38.131519, 54.850681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095488, 38.298092, 54.820618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067025, -0.316595, -0.946190,
		-0.417822, 0.852261, -0.314763,
		0.906053, 0.416436, -0.075157,
		27.367304, 38.423023, 54.798069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784048, 38.524090, 54.153481>,  <26.733067, 38.131519, 54.850681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784048, 38.524090, 54.153481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.159075, 38.459202, 54.276546>,  <27.384090, 38.420269, 54.350388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.159075, 38.459202, 54.276546>,  <26.784048, 38.524090, 54.153481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159075, 38.459202, 54.276546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284667, -0.150363, -0.946761,
		0.199843, 0.975232, -0.094797,
		0.937565, -0.162218, 0.307665,
		27.440344, 38.410538, 54.368847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233709, 38.954487, 53.749271>,  <26.784048, 38.524090, 54.153481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233709, 38.954487, 53.749271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.444372, 38.641766, 53.882790>,  <27.570770, 38.454132, 53.962902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.444372, 38.641766, 53.882790>,  <27.233709, 38.954487, 53.749271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444372, 38.641766, 53.882790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463489, -0.065081, -0.883709,
		0.712609, 0.620121, 0.328082,
		0.526655, -0.781802, 0.333797,
		27.602369, 38.407227, 53.982929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840208, 39.041348, 53.364067>,  <27.233709, 38.954487, 53.749271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840208, 39.041348, 53.364067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.867031, 38.678101, 53.529388>,  <27.883125, 38.460152, 53.628582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.867031, 38.678101, 53.529388>,  <27.840208, 39.041348, 53.364067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867031, 38.678101, 53.529388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520268, -0.321634, -0.791121,
		0.851366, 0.268079, 0.450899,
		0.067058, -0.908122, 0.413302,
		27.887148, 38.405663, 53.653378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552502, 38.939430, 53.204613>,  <27.840208, 39.041348, 53.364067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552502, 38.939430, 53.204613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387598, 38.578011, 53.251335>,  <28.288656, 38.361160, 53.279369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387598, 38.578011, 53.251335>,  <28.552502, 38.939430, 53.204613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387598, 38.578011, 53.251335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572436, -0.356634, -0.738329,
		0.708772, -0.237519, 0.664249,
		-0.412261, -0.903547, 0.116808,
		28.263920, 38.306946, 53.286377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142403, 38.441353, 53.170845>,  <28.552502, 38.939430, 53.204613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142403, 38.441353, 53.170845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.812840, 38.237217, 53.072269>,  <28.615103, 38.114735, 53.013123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.812840, 38.237217, 53.072269>,  <29.142403, 38.441353, 53.170845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812840, 38.237217, 53.072269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444666, -0.312541, -0.839399,
		0.351355, -0.801170, 0.484435,
		-0.823906, -0.510339, -0.246440,
		28.565668, 38.084114, 52.998337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399057, 37.819118, 52.929790>,  <29.142403, 38.441353, 53.170845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399057, 37.819118, 52.929790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024727, 37.799831, 52.790134>,  <28.800129, 37.788258, 52.706341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024727, 37.799831, 52.790134>,  <29.399057, 37.819118, 52.929790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024727, 37.799831, 52.790134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322584, -0.516291, -0.793337,
		-0.142002, -0.855055, 0.498715,
		-0.935828, -0.048222, -0.349142,
		28.743979, 37.785366, 52.685390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309248, 37.124474, 52.713142>,  <29.399057, 37.819118, 52.929790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309248, 37.124474, 52.713142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.030272, 37.352398, 52.539295>,  <28.862886, 37.489151, 52.434986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.030272, 37.352398, 52.539295>,  <29.309248, 37.124474, 52.713142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030272, 37.352398, 52.539295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124535, -0.500877, -0.856512,
		-0.705739, -0.651492, 0.278370,
		-0.697441, 0.569807, -0.434622,
		28.821039, 37.523338, 52.408909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919832, 36.631214, 52.361683>,  <29.309248, 37.124474, 52.713142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919832, 36.631214, 52.361683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.828583, 36.984196, 52.197128>,  <28.773834, 37.195984, 52.098396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.828583, 36.984196, 52.197128>,  <28.919832, 36.631214, 52.361683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828583, 36.984196, 52.197128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141753, -0.387919, -0.910728,
		-0.963258, -0.266072, -0.036597,
		-0.228123, 0.882454, -0.411382,
		28.760145, 37.248932, 52.073715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523249, 36.455975, 51.792530>,  <28.919832, 36.631214, 52.361683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523249, 36.455975, 51.792530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629292, 36.829910, 51.698055>,  <28.692917, 37.054272, 51.641369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629292, 36.829910, 51.698055>,  <28.523249, 36.455975, 51.792530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629292, 36.829910, 51.698055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355209, -0.322413, -0.877426,
		-0.896406, 0.148716, -0.417539,
		0.265108, 0.934844, -0.236188,
		28.708824, 37.110363, 51.627197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225653, 36.612789, 51.215763>,  <28.523249, 36.455975, 51.792530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225653, 36.612789, 51.215763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526739, 36.876125, 51.216633>,  <28.707390, 37.034126, 51.217155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526739, 36.876125, 51.216633>,  <28.225653, 36.612789, 51.215763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526739, 36.876125, 51.216633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341250, -0.387343, -0.856455,
		-0.563001, 0.645406, -0.516218,
		0.752714, 0.658344, 0.002170,
		28.752554, 37.073627, 51.217285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277891, 36.808239, 50.553650>,  <28.225653, 36.612789, 51.215763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277891, 36.808239, 50.553650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.637232, 36.882191, 50.713039>,  <28.852837, 36.926563, 50.808674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.637232, 36.882191, 50.713039>,  <28.277891, 36.808239, 50.553650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637232, 36.882191, 50.713039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439127, -0.354332, -0.825601,
		-0.011447, 0.916661, -0.399502,
		0.898352, 0.184882, 0.398474,
		28.906738, 36.937656, 50.832581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649744, 37.119850, 50.015839>,  <28.277891, 36.808239, 50.553650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649744, 37.119850, 50.015839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908056, 36.983322, 50.289032>,  <29.063044, 36.901405, 50.452950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908056, 36.983322, 50.289032>,  <28.649744, 37.119850, 50.015839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908056, 36.983322, 50.289032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501143, -0.485389, -0.716417,
		0.576041, 0.804921, -0.142404,
		0.645780, -0.341321, 0.682985,
		29.101789, 36.880924, 50.493927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310610, 37.184952, 49.591072>,  <28.649744, 37.119850, 50.015839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310610, 37.184952, 49.591072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.388615, 36.951603, 49.906452>,  <29.435417, 36.811596, 50.095680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.388615, 36.951603, 49.906452>,  <29.310610, 37.184952, 49.591072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388615, 36.951603, 49.906452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526415, -0.616029, -0.586000,
		0.827561, 0.529328, 0.186960,
		0.195014, -0.583369, 0.788448,
		29.447119, 36.776592, 50.142986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890375, 36.942490, 49.478939>,  <29.310610, 37.184952, 49.591072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890375, 36.942490, 49.478939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742466, 36.670837, 49.732571>,  <29.653721, 36.507847, 49.884750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742466, 36.670837, 49.732571>,  <29.890375, 36.942490, 49.478939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742466, 36.670837, 49.732571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467044, -0.725822, -0.505028,
		0.803205, 0.109396, 0.585572,
		-0.369773, -0.679128, 0.634076,
		29.631535, 36.467098, 49.922794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405390, 36.353176, 49.579010>,  <29.890375, 36.942490, 49.478939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405390, 36.353176, 49.579010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071804, 36.160534, 49.686760>,  <29.871653, 36.044949, 49.751408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071804, 36.160534, 49.686760>,  <30.405390, 36.353176, 49.579010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071804, 36.160534, 49.686760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279578, -0.789625, -0.546195,
		0.475753, -0.380196, 0.793164,
		-0.833963, -0.481605, 0.269372,
		29.821615, 36.016052, 49.767570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589758, 35.623215, 49.801884>,  <30.405390, 36.353176, 49.579010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589758, 35.623215, 49.801884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204231, 35.615093, 49.695568>,  <29.972916, 35.610218, 49.631779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204231, 35.615093, 49.695568>,  <30.589758, 35.623215, 49.801884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204231, 35.615093, 49.695568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190203, -0.750978, -0.632341,
		-0.186762, -0.660015, 0.727668,
		-0.963817, -0.020308, -0.265791,
		29.915087, 35.609001, 49.615829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429159, 34.870758, 49.908867>,  <30.589758, 35.623215, 49.801884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429159, 34.870758, 49.908867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.176609, 35.049870, 49.655613>,  <30.025080, 35.157337, 49.503662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.176609, 35.049870, 49.655613>,  <30.429159, 34.870758, 49.908867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176609, 35.049870, 49.655613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107255, -0.758173, -0.643172,
		-0.768029, -0.473986, 0.430660,
		-0.631369, 0.447784, -0.633136,
		29.987196, 35.184204, 49.465672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914507, 34.301773, 49.686062>,  <30.429159, 34.870758, 49.908867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914507, 34.301773, 49.686062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904018, 34.596737, 49.416088>,  <29.897726, 34.773716, 49.254105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904018, 34.596737, 49.416088>,  <29.914507, 34.301773, 49.686062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904018, 34.596737, 49.416088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030819, -0.675440, -0.736770,
		-0.999181, 0.001481, 0.040437,
		-0.026222, 0.737413, -0.674933,
		29.896152, 34.817963, 49.213608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554981, 33.958473, 49.180813>,  <29.914507, 34.301773, 49.686062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554981, 33.958473, 49.180813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.689505, 34.270748, 48.970127>,  <29.770220, 34.458111, 48.843716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.689505, 34.270748, 48.970127>,  <29.554981, 33.958473, 49.180813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689505, 34.270748, 48.970127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033915, -0.568970, -0.821658,
		-0.941140, 0.258468, -0.217827,
		0.336310, 0.780684, -0.526715,
		29.790398, 34.504951, 48.812111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164967, 33.982182, 48.521381>,  <29.554981, 33.958473, 49.180813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164967, 33.982182, 48.521381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521557, 34.158222, 48.478344>,  <29.735512, 34.263847, 48.452522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521557, 34.158222, 48.478344>,  <29.164967, 33.982182, 48.521381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521557, 34.158222, 48.478344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195307, -0.587584, -0.785239,
		-0.408807, 0.679009, -0.609773,
		0.891477, 0.440104, -0.107593,
		29.789000, 34.290253, 48.446068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283281, 33.938488, 47.736736>,  <29.164967, 33.982182, 48.521381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283281, 33.938488, 47.736736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638554, 34.003639, 47.908600>,  <29.851717, 34.042732, 48.011719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638554, 34.003639, 47.908600>,  <29.283281, 33.938488, 47.736736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638554, 34.003639, 47.908600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440597, -0.567289, -0.695742,
		0.130415, 0.807250, -0.575621,
		0.888181, 0.162882, 0.429655,
		29.905008, 34.052505, 48.037495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744066, 34.132881, 47.150368>,  <29.283281, 33.938488, 47.736736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744066, 34.132881, 47.150368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965000, 34.010689, 47.460621>,  <30.097561, 33.937374, 47.646774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965000, 34.010689, 47.460621>,  <29.744066, 34.132881, 47.150368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965000, 34.010689, 47.460621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610908, -0.484745, -0.625950,
		0.567201, 0.819575, -0.081119,
		0.552335, -0.305483, 0.775633,
		30.130701, 33.919044, 47.693310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451763, 34.102974, 46.906277>,  <29.744066, 34.132881, 47.150368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451763, 34.102974, 46.906277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.499786, 33.896145, 47.245270>,  <30.528601, 33.772049, 47.448666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.499786, 33.896145, 47.245270>,  <30.451763, 34.102974, 46.906277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499786, 33.896145, 47.245270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708306, -0.553533, -0.438067,
		0.695621, 0.652869, 0.299790,
		0.120057, -0.517071, 0.847481,
		30.535803, 33.741024, 47.499516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176273, 34.107342, 47.057224>,  <30.451763, 34.102974, 46.906277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176273, 34.107342, 47.057224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013002, 33.792267, 47.241806>,  <30.915039, 33.603222, 47.352554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013002, 33.792267, 47.241806>,  <31.176273, 34.107342, 47.057224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013002, 33.792267, 47.241806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740829, -0.581179, -0.336753,
		0.533445, 0.204406, 0.820765,
		-0.408177, -0.787686, 0.461457,
		30.890549, 33.555962, 47.380241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656551, 33.799152, 47.572731>,  <31.176273, 34.107342, 47.057224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656551, 33.799152, 47.572731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410004, 33.514080, 47.438763>,  <31.262075, 33.343037, 47.358379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410004, 33.514080, 47.438763>,  <31.656551, 33.799152, 47.572731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410004, 33.514080, 47.438763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780385, -0.609706, -0.138775,
		-0.105303, -0.346906, 0.931970,
		-0.616370, -0.712682, -0.334923,
		31.225092, 33.300274, 47.338287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655695, 33.222691, 48.057350>,  <31.656551, 33.799152, 47.572731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655695, 33.222691, 48.057350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.594419, 33.190643, 47.663372>,  <31.557653, 33.171417, 47.426987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.594419, 33.190643, 47.663372>,  <31.655695, 33.222691, 48.057350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594419, 33.190643, 47.663372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906694, -0.407766, -0.107851,
		-0.392986, -0.909565, 0.135105,
		-0.153189, -0.080115, -0.984944,
		31.548462, 33.166611, 47.367889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373657, 32.970806, 47.939476>,  <31.655695, 33.222691, 48.057350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373657, 32.970806, 47.939476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180977, 33.021515, 47.592628>,  <32.065369, 33.051941, 47.384521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180977, 33.021515, 47.592628>,  <32.373657, 32.970806, 47.939476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180977, 33.021515, 47.592628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749655, -0.452837, -0.482655,
		-0.453835, -0.882538, 0.123125,
		-0.481717, 0.126745, -0.867113,
		32.036469, 33.059547, 47.332493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223927, 32.272053, 47.565506>,  <32.373657, 32.970806, 47.939476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223927, 32.272053, 47.565506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285233, 32.603539, 47.350197>,  <32.322018, 32.802429, 47.221012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285233, 32.603539, 47.350197>,  <32.223927, 32.272053, 47.565506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285233, 32.603539, 47.350197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892788, -0.349621, -0.284066,
		-0.423602, -0.437026, -0.793454,
		0.153264, 0.828718, -0.538272,
		32.331211, 32.852154, 47.188717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555305, 32.207516, 46.906479>,  <32.223927, 32.272053, 47.565506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555305, 32.207516, 46.906479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672539, 32.560478, 47.053699>,  <32.742878, 32.772255, 47.142033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672539, 32.560478, 47.053699>,  <32.555305, 32.207516, 46.906479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672539, 32.560478, 47.053699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955854, -0.261932, -0.133172,
		-0.021107, 0.390835, -0.920219,
		0.293083, 0.882406, 0.368052,
		32.760464, 32.825199, 47.164116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281635, 32.387779, 46.728268>,  <32.555305, 32.207516, 46.906479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281635, 32.387779, 46.728268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258263, 32.664776, 47.015892>,  <33.244240, 32.830975, 47.188465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258263, 32.664776, 47.015892>,  <33.281635, 32.387779, 46.728268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258263, 32.664776, 47.015892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983827, 0.162114, -0.076175,
		-0.169320, 0.702976, -0.690764,
		-0.058433, 0.692491, 0.719056,
		33.240734, 32.872524, 47.231609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724430, 32.938778, 46.543705>,  <33.281635, 32.387779, 46.728268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724430, 32.938778, 46.543705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699543, 32.985497, 46.940186>,  <33.684612, 33.013527, 47.178074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699543, 32.985497, 46.940186>,  <33.724430, 32.938778, 46.543705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699543, 32.985497, 46.940186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947512, 0.318971, 0.021886,
		-0.313610, 0.940540, -0.130509,
		-0.062213, 0.116795, 0.991206,
		33.680878, 33.020535, 47.237549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810432, 33.721420, 46.755871>,  <33.724430, 32.938778, 46.543705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810432, 33.721420, 46.755871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925377, 33.477196, 47.051067>,  <33.994343, 33.330662, 47.228188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925377, 33.477196, 47.051067>,  <33.810432, 33.721420, 46.755871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925377, 33.477196, 47.051067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847821, 0.520648, 0.100617,
		-0.445668, 0.596773, 0.667264,
		0.287364, -0.610563, 0.737993,
		34.011585, 33.294025, 47.272465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204334, 34.074745, 47.230492>,  <33.810432, 33.721420, 46.755871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204334, 34.074745, 47.230492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312912, 33.717590, 47.374203>,  <34.378059, 33.503300, 47.460430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312912, 33.717590, 47.374203>,  <34.204334, 34.074745, 47.230492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312912, 33.717590, 47.374203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859003, 0.393118, 0.327981,
		-0.434086, 0.219589, 0.873699,
		0.271446, -0.892882, 0.359274,
		34.394344, 33.449726, 47.481983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487213, 34.268177, 47.944210>,  <34.204334, 34.074745, 47.230492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487213, 34.268177, 47.944210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617500, 33.897518, 47.869137>,  <34.695671, 33.675121, 47.824093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617500, 33.897518, 47.869137>,  <34.487213, 34.268177, 47.944210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617500, 33.897518, 47.869137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869258, 0.215424, 0.444954,
		-0.371886, -0.308074, 0.875666,
		0.325718, -0.926652, -0.187682,
		34.715214, 33.619522, 47.812832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836399, 34.059948, 48.507164>,  <34.487213, 34.268177, 47.944210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836399, 34.059948, 48.507164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989906, 33.840767, 48.209850>,  <35.082012, 33.709259, 48.031464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989906, 33.840767, 48.209850>,  <34.836399, 34.059948, 48.507164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989906, 33.840767, 48.209850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923424, 0.225035, 0.310881,
		-0.003084, -0.805670, 0.592356,
		0.383769, -0.547955, -0.743281,
		35.105038, 33.676380, 47.986866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346020, 33.689014, 48.766117>,  <34.836399, 34.059948, 48.507164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346020, 33.689014, 48.766117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434319, 33.640297, 48.379040>,  <35.487297, 33.611065, 48.146793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434319, 33.640297, 48.379040>,  <35.346020, 33.689014, 48.766117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434319, 33.640297, 48.379040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970958, 0.121280, 0.206231,
		0.092245, -0.985118, 0.145029,
		0.220751, -0.121793, -0.967696,
		35.500546, 33.603760, 48.088730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769478, 33.051277, 48.689598>,  <35.346020, 33.689014, 48.766117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769478, 33.051277, 48.689598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854950, 33.271694, 48.366936>,  <35.906231, 33.403946, 48.173340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854950, 33.271694, 48.366936>,  <35.769478, 33.051277, 48.689598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854950, 33.271694, 48.366936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976899, -0.123115, 0.174672,
		-0.003059, -0.825343, -0.564623,
		0.213678, 0.551046, -0.806654,
		35.919052, 33.437008, 48.124939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254993, 32.626469, 48.375317>,  <35.769478, 33.051277, 48.689598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254993, 32.626469, 48.375317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301174, 33.002281, 48.246353>,  <36.328880, 33.227768, 48.168976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301174, 33.002281, 48.246353>,  <36.254993, 32.626469, 48.375317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301174, 33.002281, 48.246353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992229, -0.124244, -0.006764,
		-0.046412, -0.319120, -0.946577,
		0.115448, 0.939535, -0.322407,
		36.335808, 33.284142, 48.149632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682358, 32.540157, 47.805309>,  <36.254993, 32.626469, 48.375317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682358, 32.540157, 47.805309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699299, 32.923641, 47.917797>,  <36.709461, 33.153732, 47.985291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699299, 32.923641, 47.917797>,  <36.682358, 32.540157, 47.805309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699299, 32.923641, 47.917797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991505, -0.005680, -0.129946,
		-0.122983, 0.284332, -0.950805,
		0.042348, 0.958709, 0.281218,
		36.712002, 33.211254, 48.002163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019859, 32.859215, 47.302231>,  <36.682358, 32.540157, 47.805309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019859, 32.859215, 47.302231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069984, 33.075813, 47.634758>,  <37.100060, 33.205772, 47.834274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069984, 33.075813, 47.634758>,  <37.019859, 32.859215, 47.302231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069984, 33.075813, 47.634758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913717, 0.263476, -0.309356,
		-0.386545, 0.798353, -0.461753,
		0.125315, 0.541492, 0.831314,
		37.107578, 33.238262, 47.884151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308762, 33.481937, 47.131184>,  <37.019859, 32.859215, 47.302231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308762, 33.481937, 47.131184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391998, 33.408031, 47.515385>,  <37.441940, 33.363689, 47.745903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391998, 33.408031, 47.515385>,  <37.308762, 33.481937, 47.131184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391998, 33.408031, 47.515385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937428, 0.317933, -0.141940,
		-0.279149, 0.929936, 0.239364,
		0.208096, -0.184764, 0.960499,
		37.454426, 33.352604, 47.803535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612862, 34.015362, 47.479862>,  <37.308762, 33.481937, 47.131184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612862, 34.015362, 47.479862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751377, 33.668270, 47.622482>,  <37.834484, 33.460014, 47.708054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751377, 33.668270, 47.622482>,  <37.612862, 34.015362, 47.479862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751377, 33.668270, 47.622482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915813, 0.230274, -0.329030,
		0.203407, 0.440468, 0.874422,
		0.346284, -0.867734, 0.356547,
		37.855263, 33.407951, 47.729446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210606, 34.135532, 47.785099>,  <37.612862, 34.015362, 47.479862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210606, 34.135532, 47.785099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269310, 33.755116, 47.676304>,  <38.304535, 33.526863, 47.611027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269310, 33.755116, 47.676304>,  <38.210606, 34.135532, 47.785099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269310, 33.755116, 47.676304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941605, 0.218562, -0.256145,
		0.303050, -0.218508, 0.927586,
		0.146765, -0.951044, -0.271983,
		38.313339, 33.469803, 47.594707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878098, 33.836414, 48.208664>,  <38.210606, 34.135532, 47.785099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878098, 33.836414, 48.208664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779560, 33.658371, 47.864292>,  <38.720436, 33.551544, 47.657669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779560, 33.658371, 47.864292>,  <38.878098, 33.836414, 48.208664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779560, 33.658371, 47.864292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950274, 0.063677, -0.304835,
		0.190505, -0.893211, 0.407285,
		-0.246347, -0.445105, -0.860926,
		38.705654, 33.524841, 47.606014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252815, 33.118084, 48.007225>,  <38.878098, 33.836414, 48.208664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252815, 33.118084, 48.007225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144009, 33.316475, 47.677372>,  <39.078724, 33.435509, 47.479462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144009, 33.316475, 47.677372>,  <39.252815, 33.118084, 48.007225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144009, 33.316475, 47.677372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937474, -0.056789, -0.343390,
		-0.217144, -0.866477, -0.449517,
		-0.272012, 0.495976, -0.824632,
		39.062405, 33.465267, 47.429981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567181, 32.824883, 47.400684>,  <39.252815, 33.118084, 48.007225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567181, 32.824883, 47.400684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510120, 33.215965, 47.339043>,  <39.475883, 33.450615, 47.302059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510120, 33.215965, 47.339043>,  <39.567181, 32.824883, 47.400684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510120, 33.215965, 47.339043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989619, 0.143642, -0.004730,
		0.017511, -0.153176, -0.988044,
		-0.142649, 0.977704, -0.154101,
		39.467327, 33.509277, 47.292812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921829, 33.033138, 46.815670>,  <39.567181, 32.824883, 47.400684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921829, 33.033138, 46.815670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864964, 33.315964, 47.092754>,  <39.830845, 33.485661, 47.259007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864964, 33.315964, 47.092754>,  <39.921829, 33.033138, 46.815670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864964, 33.315964, 47.092754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985204, 0.168748, 0.029954,
		-0.095714, 0.686722, -0.720591,
		-0.142169, 0.707062, 0.692713,
		39.822311, 33.528084, 47.300568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563423, 33.310371, 46.831699>,  <39.921829, 33.033138, 46.815670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563423, 33.310371, 46.831699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.493927, 33.552311, 47.142559>,  <40.452229, 33.697475, 47.329075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.493927, 33.552311, 47.142559>,  <40.563423, 33.310371, 46.831699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493927, 33.552311, 47.142559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907218, 0.405305, -0.112623,
		-0.383104, 0.685480, -0.619151,
		-0.173744, 0.604851, 0.777154,
		40.441803, 33.733765, 47.375706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496021, 32.949108, 46.190903>,  <40.563423, 33.310371, 46.831699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496021, 32.949108, 46.190903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264053, 33.274750, 46.178745>,  <40.124874, 33.470135, 46.171452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264053, 33.274750, 46.178745>,  <40.496021, 32.949108, 46.190903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264053, 33.274750, 46.178745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457711, 0.294723, -0.838832,
		-0.673942, -0.500365, -0.543541,
		-0.579916, 0.814109, -0.030396,
		40.090080, 33.518982, 46.169628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186520, 32.951077, 45.591156>,  <40.496021, 32.949108, 46.190903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186520, 32.951077, 45.591156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.238571, 33.319248, 45.738605>,  <40.269802, 33.540150, 45.827076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.238571, 33.319248, 45.738605>,  <40.186520, 32.951077, 45.591156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238571, 33.319248, 45.738605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704307, 0.175867, -0.687766,
		-0.697866, 0.349124, -0.625377,
		0.130132, 0.920426, 0.368622,
		40.277611, 33.595375, 45.849194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135876, 33.413761, 44.996387>,  <40.186520, 32.951077, 45.591156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135876, 33.413761, 44.996387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376041, 33.553078, 45.284328>,  <40.520142, 33.636669, 45.457092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376041, 33.553078, 45.284328>,  <40.135876, 33.413761, 44.996387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376041, 33.553078, 45.284328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718019, 0.161500, -0.677028,
		-0.352061, 0.923368, -0.153114,
		0.600418, 0.348294, 0.719854,
		40.556168, 33.657566, 45.500286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610474, 33.871231, 44.605301>,  <40.135876, 33.413761, 44.996387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610474, 33.871231, 44.605301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765781, 33.753643, 44.954662>,  <40.858967, 33.683090, 45.164280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765781, 33.753643, 44.954662>,  <40.610474, 33.871231, 44.605301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765781, 33.753643, 44.954662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921511, 0.115534, -0.370767,
		0.008087, 0.948806, 0.315756,
		0.388267, -0.293971, 0.873401,
		40.882263, 33.665451, 45.216682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969585, 33.910419, 44.043427>,  <40.610474, 33.871231, 44.605301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969585, 33.910419, 44.043427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.297184, 34.117809, 43.945095>,  <41.493744, 34.242241, 43.886097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.297184, 34.117809, 43.945095>,  <40.969585, 33.910419, 44.043427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297184, 34.117809, 43.945095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571236, -0.696247, 0.434661,
		0.054199, -0.496413, -0.866393,
		0.818995, 0.518473, -0.245833,
		41.542881, 34.273350, 43.871346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501968, 33.437233, 43.870209>,  <40.969585, 33.910419, 44.043427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501968, 33.437233, 43.870209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.726471, 33.756218, 43.958794>,  <41.861172, 33.947609, 44.011944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.726471, 33.756218, 43.958794>,  <41.501968, 33.437233, 43.870209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726471, 33.756218, 43.958794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507927, -0.543150, 0.668579,
		0.653452, -0.262760, -0.709900,
		0.561258, 0.797461, 0.221460,
		41.894848, 33.995457, 44.025230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207176, 33.213791, 43.823807>,  <41.501968, 33.437233, 43.870209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207176, 33.213791, 43.823807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178783, 33.532551, 44.063778>,  <42.161747, 33.723808, 44.207760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178783, 33.532551, 44.063778>,  <42.207176, 33.213791, 43.823807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178783, 33.532551, 44.063778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498076, -0.492778, 0.713506,
		0.864223, 0.349458, -0.361936,
		-0.070986, 0.796899, 0.599927,
		42.157486, 33.771622, 44.243755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966080, 32.499516, 43.689579>,  <42.207176, 33.213791, 43.823807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966080, 32.499516, 43.689579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.635929, 32.677208, 43.550205>,  <41.437840, 32.783825, 43.466583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.635929, 32.677208, 43.550205>,  <41.966080, 32.499516, 43.689579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635929, 32.677208, 43.550205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516562, 0.345158, -0.783600,
		-0.227838, -0.826754, -0.514361,
		-0.825381, 0.444233, -0.348430,
		41.388313, 32.810478, 43.445675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932999, 32.427994, 43.016335>,  <41.966080, 32.499516, 43.689579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932999, 32.427994, 43.016335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.743763, 32.774746, 43.079208>,  <41.630222, 32.982796, 43.116932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.743763, 32.774746, 43.079208>,  <41.932999, 32.427994, 43.016335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743763, 32.774746, 43.079208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348217, 0.347872, -0.870477,
		-0.809277, -0.357082, -0.466437,
		-0.473092, 0.866878, 0.157183,
		41.601837, 33.034809, 43.126362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630028, 32.608665, 42.369541>,  <41.932999, 32.427994, 43.016335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630028, 32.608665, 42.369541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.676441, 32.959644, 42.555710>,  <41.704288, 33.170231, 42.667412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.676441, 32.959644, 42.555710>,  <41.630028, 32.608665, 42.369541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676441, 32.959644, 42.555710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098498, 0.456116, -0.884452,
		-0.988350, 0.148466, -0.033503,
		0.116030, 0.877448, 0.465426,
		41.711250, 33.222878, 42.695339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246948, 33.110062, 41.946537>,  <41.630028, 32.608665, 42.369541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246948, 33.110062, 41.946537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493160, 33.338528, 42.163757>,  <41.640888, 33.475609, 42.294090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493160, 33.338528, 42.163757>,  <41.246948, 33.110062, 41.946537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493160, 33.338528, 42.163757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165495, 0.580008, -0.797623,
		-0.770545, 0.580829, 0.262485,
		0.615526, 0.571164, 0.543046,
		41.677818, 33.509876, 42.326672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170765, 33.850216, 41.736012>,  <41.246948, 33.110062, 41.946537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170765, 33.850216, 41.736012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.545921, 33.784271, 41.858120>,  <41.771015, 33.744705, 41.931385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.545921, 33.784271, 41.858120>,  <41.170765, 33.850216, 41.736012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545921, 33.784271, 41.858120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345938, 0.511265, -0.786725,
		-0.026368, 0.843462, 0.536542,
		0.937887, -0.164866, 0.305267,
		41.827286, 33.734810, 41.949699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512218, 34.434147, 41.878399>,  <41.170765, 33.850216, 41.736012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512218, 34.434147, 41.878399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.820107, 34.195229, 41.788277>,  <42.004841, 34.051876, 41.734203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.820107, 34.195229, 41.788277>,  <41.512218, 34.434147, 41.878399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820107, 34.195229, 41.788277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419044, 0.738996, -0.527529,
		0.481591, 0.311639, 0.819116,
		0.769722, -0.597299, -0.225304,
		42.051022, 34.016041, 41.720684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164211, 34.690632, 42.024570>,  <41.512218, 34.434147, 41.878399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164211, 34.690632, 42.024570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.246613, 34.446194, 41.718857>,  <42.296055, 34.299530, 41.535431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.246613, 34.446194, 41.718857>,  <42.164211, 34.690632, 42.024570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246613, 34.446194, 41.718857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458994, 0.750128, -0.476059,
		0.864226, -0.252729, 0.435019,
		0.206006, -0.611094, -0.764282,
		42.308414, 34.262867, 41.489571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456665, 35.190590, 41.605923>,  <42.164211, 34.690632, 42.024570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456665, 35.190590, 41.605923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.258156, 34.844837, 41.573513>,  <42.139050, 34.637386, 41.554066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.258156, 34.844837, 41.573513>,  <42.456665, 35.190590, 41.605923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258156, 34.844837, 41.573513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365691, 0.292775, -0.883489,
		0.787392, -0.408819, -0.461391,
		-0.496270, -0.864379, -0.081027,
		42.109276, 34.585522, 41.549206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795940, 34.861721, 40.993626>,  <42.456665, 35.190590, 41.605923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795940, 34.861721, 40.993626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405499, 34.775116, 41.001091>,  <42.171234, 34.723152, 41.005569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405499, 34.775116, 41.001091>,  <42.795940, 34.861721, 40.993626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405499, 34.775116, 41.001091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059703, 0.184613, -0.980996,
		0.208960, -0.958664, -0.193128,
		-0.976100, -0.216519, 0.018658,
		42.112667, 34.710163, 41.006687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636745, 34.241627, 40.464893>,  <42.795940, 34.861721, 40.993626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636745, 34.241627, 40.464893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323128, 34.480713, 40.531830>,  <42.134956, 34.624165, 40.571991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323128, 34.480713, 40.531830>,  <42.636745, 34.241627, 40.464893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323128, 34.480713, 40.531830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073810, 0.177903, -0.981276,
		-0.616298, -0.781717, -0.095367,
		-0.784046, 0.597720, 0.167340,
		42.087914, 34.660030, 40.582031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929214, 33.642113, 40.992458>,  <42.636745, 34.241627, 40.464893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929214, 33.642113, 40.992458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.280468, 33.450752, 40.994354>,  <43.491219, 33.335938, 40.995491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.280468, 33.450752, 40.994354>,  <42.929214, 33.642113, 40.992458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280468, 33.450752, 40.994354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477389, 0.875537, -0.074396,
		0.031440, 0.067592, 0.997218,
		0.878130, -0.478399, 0.004740,
		43.543907, 33.307232, 40.995777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309795, 33.984440, 41.539204>,  <42.929214, 33.642113, 40.992458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309795, 33.984440, 41.539204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.593678, 33.850410, 41.291321>,  <43.764008, 33.769993, 41.142590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.593678, 33.850410, 41.291321>,  <43.309795, 33.984440, 41.539204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593678, 33.850410, 41.291321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432851, 0.901427, 0.008318,
		0.555837, -0.274146, 0.784787,
		0.709708, -0.335072, -0.619710,
		43.806591, 33.749889, 41.105408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031311, 34.001728, 41.871086>,  <43.309795, 33.984440, 41.539204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031311, 34.001728, 41.871086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.017830, 34.059246, 41.475471>,  <44.009743, 34.093758, 41.238102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.017830, 34.059246, 41.475471>,  <44.031311, 34.001728, 41.871086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017830, 34.059246, 41.475471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582170, 0.807198, 0.097519,
		0.812369, -0.572500, -0.110912,
		-0.033699, 0.143791, -0.989034,
		44.007721, 34.102383, 41.178761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696831, 34.102547, 41.832233>,  <44.031311, 34.001728, 41.871086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696831, 34.102547, 41.832233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.496582, 34.225594, 41.508568>,  <44.376431, 34.299419, 41.314369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.496582, 34.225594, 41.508568>,  <44.696831, 34.102547, 41.832233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496582, 34.225594, 41.508568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589612, 0.805562, -0.058546,
		0.633822, -0.506404, -0.584658,
		-0.500626, 0.307613, -0.809165,
		44.346394, 34.317879, 41.265820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171463, 34.321678, 41.358536>,  <44.696831, 34.102547, 41.832233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171463, 34.321678, 41.358536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.845020, 34.475727, 41.186188>,  <44.649155, 34.568157, 41.082779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.845020, 34.475727, 41.186188>,  <45.171463, 34.321678, 41.358536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845020, 34.475727, 41.186188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543605, 0.764610, -0.346214,
		0.196117, -0.516773, -0.833356,
		-0.816107, 0.385118, -0.430874,
		44.600189, 34.591263, 41.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272774, 34.354034, 40.632660>,  <45.171463, 34.321678, 41.358536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272774, 34.354034, 40.632660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.039883, 34.652409, 40.762020>,  <44.900146, 34.831432, 40.839634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.039883, 34.652409, 40.762020>,  <45.272774, 34.354034, 40.632660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039883, 34.652409, 40.762020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606771, 0.663424, -0.437832,
		-0.541145, -0.058691, -0.838879,
		-0.582229, 0.745938, 0.323397,
		44.865215, 34.876190, 40.859039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793705, 34.791698, 40.145191>,  <45.272774, 34.354034, 40.632660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793705, 34.791698, 40.145191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.963192, 34.993923, 40.445824>,  <45.064884, 35.115257, 40.626205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.963192, 34.993923, 40.445824>,  <44.793705, 34.791698, 40.145191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963192, 34.993923, 40.445824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519932, 0.543694, -0.658838,
		-0.741712, 0.669932, -0.032484,
		0.423715, 0.505557, 0.751583,
		45.090305, 35.145592, 40.671299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064693, 34.732250, 39.533161>,  <44.793705, 34.791698, 40.145191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064693, 34.732250, 39.533161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217907, 34.428181, 39.323242>,  <45.309834, 34.245739, 39.197289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217907, 34.428181, 39.323242>,  <45.064693, 34.732250, 39.533161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217907, 34.428181, 39.323242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735393, 0.594750, -0.324762,
		0.559002, -0.261541, 0.786837,
		0.383033, -0.760177, -0.524802,
		45.332817, 34.200127, 39.165802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784912, 34.511776, 39.671776>,  <45.064693, 34.732250, 39.533161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784912, 34.511776, 39.671776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.724083, 34.411598, 39.289330>,  <45.687588, 34.351490, 39.059864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.724083, 34.411598, 39.289330>,  <45.784912, 34.511776, 39.671776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724083, 34.411598, 39.289330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790911, 0.549301, -0.269681,
		0.592734, -0.797211, 0.114548,
		-0.152071, -0.250447, -0.956112,
		45.678463, 34.336464, 39.002495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375149, 34.274448, 39.375854>,  <45.784912, 34.511776, 39.671776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375149, 34.274448, 39.375854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.137520, 34.414745, 39.086288>,  <45.994942, 34.498924, 38.912548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.137520, 34.414745, 39.086288>,  <46.375149, 34.274448, 39.375854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137520, 34.414745, 39.086288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797660, 0.373209, -0.473766,
		0.104001, -0.858891, -0.501489,
		-0.594073, 0.350745, -0.723917,
		45.959297, 34.519970, 38.869114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752705, 34.152988, 38.697021>,  <46.375149, 34.274448, 39.375854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752705, 34.152988, 38.697021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.512478, 34.429764, 38.536751>,  <46.368343, 34.595829, 38.440590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.512478, 34.429764, 38.536751>,  <46.752705, 34.152988, 38.697021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512478, 34.429764, 38.536751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790130, 0.436780, -0.430021,
		-0.122541, -0.574842, -0.809037,
		-0.600566, 0.691939, -0.400676,
		46.332310, 34.637344, 38.416550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909576, 34.258881, 37.913719>,  <46.752705, 34.152988, 38.697021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909576, 34.258881, 37.913719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.736992, 34.592251, 38.051849>,  <46.633442, 34.792271, 38.134727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.736992, 34.592251, 38.051849>,  <46.909576, 34.258881, 37.913719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736992, 34.592251, 38.051849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755233, 0.543057, -0.367032,
		-0.493424, 0.102442, -0.863735,
		-0.431458, 0.833423, 0.345325,
		46.607555, 34.842278, 38.155445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548981, 34.551739, 37.437607>,  <46.909576, 34.258881, 37.913719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548981, 34.551739, 37.437607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.671638, 34.853779, 37.669395>,  <46.745232, 35.035004, 37.808468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.671638, 34.853779, 37.669395>,  <46.548981, 34.551739, 37.437607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671638, 34.853779, 37.669395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497945, 0.391584, -0.773766,
		-0.811184, 0.525818, -0.255922,
		0.306645, 0.755102, 0.579475,
		46.763634, 35.080311, 37.843239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501122, 35.177959, 37.039433>,  <46.548981, 34.551739, 37.437607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501122, 35.177959, 37.039433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.770252, 35.243710, 37.327953>,  <46.931732, 35.283161, 37.501064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.770252, 35.243710, 37.327953>,  <46.501122, 35.177959, 37.039433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.770252, 35.243710, 37.327953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581741, 0.484776, -0.653123,
		-0.457029, 0.859053, 0.230547,
		0.672831, 0.164377, 0.721303,
		46.972103, 35.293022, 37.544346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437725, 35.359154, 36.360836>,  <46.501122, 35.177959, 37.039433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437725, 35.359154, 36.360836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.476887, 35.746731, 36.451660>,  <46.500385, 35.979279, 36.506153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.476887, 35.746731, 36.451660>,  <46.437725, 35.359154, 36.360836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.476887, 35.746731, 36.451660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911079, 0.004538, -0.412207,
		-0.400438, 0.247225, -0.882343,
		0.097904, 0.968948, 0.227059,
		46.506260, 36.037415, 36.519779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.040871, 35.477783, 35.947166>,  <46.437725, 35.359154, 36.360836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.040871, 35.477783, 35.947166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.426926, 35.415581, 35.862953>,  <47.658558, 35.378258, 35.812424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.426926, 35.415581, 35.862953>,  <47.040871, 35.477783, 35.947166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426926, 35.415581, 35.862953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252580, -0.764270, -0.593375,
		-0.068630, 0.625866, -0.776905,
		0.965139, -0.155507, -0.210533,
		47.716469, 35.368927, 35.799793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.121265, 35.328514, 35.271687>,  <47.040871, 35.477783, 35.947166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.121265, 35.328514, 35.271687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.467278, 35.187885, 35.414860>,  <47.674885, 35.103508, 35.500763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.467278, 35.187885, 35.414860>,  <47.121265, 35.328514, 35.271687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.467278, 35.187885, 35.414860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077349, -0.798337, -0.597223,
		0.495718, 0.488932, -0.717781,
		0.865032, -0.351574, 0.357931,
		47.726788, 35.082413, 35.522240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573555, 35.260612, 34.710320>,  <47.121265, 35.328514, 35.271687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573555, 35.260612, 34.710320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.660591, 34.995041, 34.996498>,  <47.712814, 34.835697, 35.168205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.660591, 34.995041, 34.996498>,  <47.573555, 35.260612, 34.710320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660591, 34.995041, 34.996498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061928, -0.722137, -0.688972,
		0.974074, 0.194219, -0.116014,
		0.217589, -0.663925, 0.715443,
		47.725868, 34.795864, 35.211132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.778559, 33.785461, 57.110180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.159824, 33.878460, 57.187561>,  <31.388584, 33.934258, 57.233990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.159824, 33.878460, 57.187561>,  <30.778559, 33.785461, 57.110180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159824, 33.878460, 57.187561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226629, -0.125460, -0.965867,
		-0.200287, 0.964472, -0.172274,
		0.953165, 0.232493, 0.193450,
		31.445774, 33.948208, 57.245598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014608, 34.310425, 56.671722>,  <30.778559, 33.785461, 57.110180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014608, 34.310425, 56.671722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.342360, 34.107468, 56.778439>,  <31.539009, 33.985695, 56.842468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.342360, 34.107468, 56.778439>,  <31.014608, 34.310425, 56.671722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342360, 34.107468, 56.778439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245462, -0.110040, -0.963141,
		0.518044, 0.854663, 0.034380,
		0.819377, -0.507388, 0.266793,
		31.588173, 33.955250, 56.858475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533106, 34.514557, 56.223240>,  <31.014608, 34.310425, 56.671722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533106, 34.514557, 56.223240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.656471, 34.157234, 56.354015>,  <31.730490, 33.942841, 56.432480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.656471, 34.157234, 56.354015>,  <31.533106, 34.514557, 56.223240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656471, 34.157234, 56.354015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243741, -0.258009, -0.934891,
		0.919496, 0.368020, 0.138162,
		0.308412, -0.893304, 0.326939,
		31.748995, 33.889244, 56.452099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155903, 34.399788, 55.846935>,  <31.533106, 34.514557, 56.223240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155903, 34.399788, 55.846935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.042168, 34.032635, 55.957664>,  <31.973925, 33.812344, 56.024101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.042168, 34.032635, 55.957664>,  <32.155903, 34.399788, 55.846935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042168, 34.032635, 55.957664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428325, -0.379950, -0.819863,
		0.857722, -0.114549, 0.501190,
		-0.284342, -0.917887, 0.276828,
		31.956865, 33.757267, 56.040714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808041, 34.023357, 55.859756>,  <32.155903, 34.399788, 55.846935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808041, 34.023357, 55.859756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.500240, 33.769623, 55.830128>,  <32.315559, 33.617382, 55.812351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.500240, 33.769623, 55.830128>,  <32.808041, 34.023357, 55.859756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500240, 33.769623, 55.830128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417010, -0.411221, -0.810555,
		0.483701, -0.654615, 0.580959,
		-0.769504, -0.634332, -0.074073,
		32.269390, 33.579323, 55.807907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050350, 33.326698, 55.767139>,  <32.808041, 34.023357, 55.859756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050350, 33.326698, 55.767139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.683533, 33.308540, 55.608665>,  <32.463440, 33.297646, 55.513580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.683533, 33.308540, 55.608665>,  <33.050350, 33.326698, 55.767139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683533, 33.308540, 55.608665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377398, -0.419746, -0.825460,
		-0.128824, -0.906506, 0.402059,
		-0.917047, -0.045397, -0.396186,
		32.408417, 33.294922, 55.489811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101166, 32.854973, 55.267670>,  <33.050350, 33.326698, 55.767139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101166, 32.854973, 55.267670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.732864, 32.973209, 55.165825>,  <32.511883, 33.044151, 55.104717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.732864, 32.973209, 55.165825>,  <33.101166, 32.854973, 55.267670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732864, 32.973209, 55.165825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200439, -0.201483, -0.958764,
		-0.334706, -0.933824, 0.126268,
		-0.920758, 0.295595, -0.254613,
		32.456638, 33.061890, 55.089439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857895, 32.338074, 54.817211>,  <33.101166, 32.854973, 55.267670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857895, 32.338074, 54.817211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.662991, 32.679924, 54.745449>,  <32.546047, 32.885036, 54.702393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.662991, 32.679924, 54.745449>,  <32.857895, 32.338074, 54.817211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662991, 32.679924, 54.745449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057433, -0.173641, -0.983133,
		-0.871367, -0.489344, 0.035525,
		-0.487259, 0.854629, -0.179410,
		32.516811, 32.936314, 54.691628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278599, 32.157913, 54.408230>,  <32.857895, 32.338074, 54.817211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278599, 32.157913, 54.408230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.416851, 32.531532, 54.372269>,  <32.499802, 32.755707, 54.350693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.416851, 32.531532, 54.372269>,  <32.278599, 32.157913, 54.408230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416851, 32.531532, 54.372269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045805, -0.112488, -0.992597,
		-0.937250, 0.338958, -0.081664,
		0.345635, 0.934052, -0.089903,
		32.520542, 32.811749, 54.345299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196487, 32.146088, 53.704224>,  <32.278599, 32.157913, 54.408230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196487, 32.146088, 53.704224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.376614, 32.493679, 53.786289>,  <32.484692, 32.702232, 53.835529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.376614, 32.493679, 53.786289>,  <32.196487, 32.146088, 53.704224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376614, 32.493679, 53.786289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236223, 0.105644, -0.965939,
		-0.861053, 0.483445, -0.157698,
		0.450319, 0.868977, 0.205166,
		32.511707, 32.754372, 53.847839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924696, 32.630642, 53.212364>,  <32.196487, 32.146088, 53.704224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924696, 32.630642, 53.212364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.281395, 32.748356, 53.349876>,  <32.495415, 32.818985, 53.432384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.281395, 32.748356, 53.349876>,  <31.924696, 32.630642, 53.212364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281395, 32.748356, 53.349876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318682, 0.130979, -0.938769,
		-0.321296, 0.946699, 0.023016,
		0.891746, 0.294288, 0.343779,
		32.548920, 32.836643, 53.453011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068012, 33.307384, 52.926231>,  <31.924696, 32.630642, 53.212364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068012, 33.307384, 52.926231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.427437, 33.151848, 53.007610>,  <32.643093, 33.058525, 53.056438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.427437, 33.151848, 53.007610>,  <32.068012, 33.307384, 52.926231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427437, 33.151848, 53.007610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279031, 0.148420, -0.948743,
		0.338715, 0.909271, 0.241863,
		0.898562, -0.388841, 0.203443,
		32.697006, 33.035194, 53.068642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509880, 33.764706, 52.711735>,  <32.068012, 33.307384, 52.926231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509880, 33.764706, 52.711735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765865, 33.458736, 52.740967>,  <32.919456, 33.275154, 52.758507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765865, 33.458736, 52.740967>,  <32.509880, 33.764706, 52.711735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765865, 33.458736, 52.740967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390167, 0.241539, -0.888498,
		0.661982, 0.597118, 0.453023,
		0.639961, -0.764924, 0.073082,
		32.957855, 33.229259, 52.762890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148342, 33.965065, 52.345066>,  <32.509880, 33.764706, 52.711735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148342, 33.965065, 52.345066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.188667, 33.567471, 52.362152>,  <33.212860, 33.328915, 52.372406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.188667, 33.567471, 52.362152>,  <33.148342, 33.965065, 52.345066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188667, 33.567471, 52.362152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177474, -0.024283, -0.983826,
		0.978949, 0.106760, 0.173959,
		0.100809, -0.993988, 0.042719,
		33.218910, 33.269276, 52.374969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783085, 33.733089, 52.134827>,  <33.148342, 33.965065, 52.345066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783085, 33.733089, 52.134827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558701, 33.412567, 52.051659>,  <33.424068, 33.220253, 52.001759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558701, 33.412567, 52.051659>,  <33.783085, 33.733089, 52.134827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558701, 33.412567, 52.051659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472853, -0.103994, -0.874983,
		0.679507, -0.589147, 0.437237,
		-0.560963, -0.801306, -0.207916,
		33.390411, 33.172176, 51.989285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148449, 33.347408, 51.504025>,  <33.783085, 33.733089, 52.134827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148449, 33.347408, 51.504025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.800659, 33.150173, 51.515842>,  <33.591984, 33.031830, 51.522934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.800659, 33.150173, 51.515842>,  <34.148449, 33.347408, 51.504025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800659, 33.150173, 51.515842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217672, -0.436140, -0.873156,
		0.443430, -0.752758, 0.486545,
		-0.869476, -0.493090, 0.029543,
		33.539818, 33.002247, 51.524704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358002, 32.682377, 51.181404>,  <34.148449, 33.347408, 51.504025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358002, 32.682377, 51.181404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.961094, 32.728046, 51.161949>,  <33.722950, 32.755447, 51.150276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.961094, 32.728046, 51.161949>,  <34.358002, 32.682377, 51.181404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961094, 32.728046, 51.161949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011649, -0.475889, -0.879428,
		-0.123551, -0.872064, 0.473540,
		-0.992270, 0.114171, -0.048638,
		33.663414, 32.762299, 51.147358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053120, 32.055061, 50.996861>,  <34.358002, 32.682377, 51.181404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053120, 32.055061, 50.996861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.767948, 32.317593, 50.898094>,  <33.596848, 32.475113, 50.838833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.767948, 32.317593, 50.898094>,  <34.053120, 32.055061, 50.996861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767948, 32.317593, 50.898094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246652, -0.564320, -0.787849,
		-0.656430, -0.500774, 0.564203,
		-0.712926, 0.656329, -0.246920,
		33.554070, 32.514492, 50.824017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471680, 31.671185, 50.809746>,  <34.053120, 32.055061, 50.996861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471680, 31.671185, 50.809746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.399536, 32.025326, 50.638344>,  <33.356251, 32.237812, 50.535503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.399536, 32.025326, 50.638344>,  <33.471680, 31.671185, 50.809746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399536, 32.025326, 50.638344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351469, -0.464899, -0.812612,
		-0.918661, 0.004041, 0.395025,
		-0.180363, 0.885355, -0.428505,
		33.345428, 32.290932, 50.509792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931152, 31.506821, 50.508553>,  <33.471680, 31.671185, 50.809746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931152, 31.506821, 50.508553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.038918, 31.838858, 50.313263>,  <33.103577, 32.038082, 50.196091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.038918, 31.838858, 50.313263>,  <32.931152, 31.506821, 50.508553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038918, 31.838858, 50.313263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336766, -0.393749, -0.855307,
		-0.902222, 0.394848, 0.173466,
		0.269414, 0.830094, -0.488221,
		33.119743, 32.087887, 50.166798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311756, 31.747793, 50.117657>,  <32.931152, 31.506821, 50.508553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311756, 31.747793, 50.117657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.638283, 31.908325, 49.951496>,  <32.834198, 32.004642, 49.851799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.638283, 31.908325, 49.951496>,  <32.311756, 31.747793, 50.117657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638283, 31.908325, 49.951496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315278, -0.293003, -0.902634,
		-0.483968, 0.867804, -0.112653,
		0.816317, 0.401329, -0.415404,
		32.883179, 32.028725, 49.826874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131714, 32.233234, 49.569630>,  <32.311756, 31.747793, 50.117657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131714, 32.233234, 49.569630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.507942, 32.138882, 49.471901>,  <32.733677, 32.082272, 49.413261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.507942, 32.138882, 49.471901>,  <32.131714, 32.233234, 49.569630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507942, 32.138882, 49.471901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296038, -0.216916, -0.930220,
		0.166422, 0.947263, -0.273853,
		0.940567, -0.235880, -0.244326,
		32.790112, 32.068119, 49.398602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990854, 32.065536, 48.867397>,  <32.131714, 32.233234, 49.569630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990854, 32.065536, 48.867397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.627981, 31.932678, 48.764091>,  <31.410257, 31.852962, 48.702106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.627981, 31.932678, 48.764091>,  <31.990854, 32.065536, 48.867397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627981, 31.932678, 48.764091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408990, 0.552097, 0.726579,
		-0.098740, 0.764767, -0.636696,
		-0.907181, -0.332145, -0.258268,
		31.355827, 31.833035, 48.686611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635567, 32.661831, 48.900326>,  <31.990854, 32.065536, 48.867397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635567, 32.661831, 48.900326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.399548, 32.341846, 48.943962>,  <31.257936, 32.149857, 48.970142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.399548, 32.341846, 48.943962>,  <31.635567, 32.661831, 48.900326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399548, 32.341846, 48.943962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355235, 0.378574, 0.854687,
		-0.725017, 0.465555, -0.507553,
		-0.590050, -0.799963, 0.109091,
		31.222532, 32.101856, 48.976688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255928, 32.952599, 49.446121>,  <31.635567, 32.661831, 48.900326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255928, 32.952599, 49.446121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.103815, 32.584438, 49.409801>,  <31.012547, 32.363541, 49.388008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.103815, 32.584438, 49.409801>,  <31.255928, 32.952599, 49.446121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103815, 32.584438, 49.409801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543809, 0.143108, 0.826917,
		-0.748102, 0.363840, -0.554945,
		-0.380283, -0.920402, -0.090800,
		30.989731, 32.308319, 49.382561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513021, 32.997272, 49.404579>,  <31.255928, 32.952599, 49.446121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513021, 32.997272, 49.404579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.618099, 32.644909, 49.562054>,  <30.681145, 32.433491, 49.656540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.618099, 32.644909, 49.562054>,  <30.513021, 32.997272, 49.404579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618099, 32.644909, 49.562054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590843, 0.175715, 0.787420,
		-0.762822, -0.439458, -0.474319,
		0.262693, -0.880909, 0.393690,
		30.696907, 32.380638, 49.680161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906549, 32.799946, 49.733109>,  <30.513021, 32.997272, 49.404579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906549, 32.799946, 49.733109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.187819, 32.563187, 49.890694>,  <30.356581, 32.421131, 49.985245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.187819, 32.563187, 49.890694>,  <29.906549, 32.799946, 49.733109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187819, 32.563187, 49.890694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500750, -0.018892, 0.865386,
		-0.504775, -0.805793, -0.309676,
		0.703173, -0.591895, 0.393965,
		30.398771, 32.385616, 50.008884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559198, 32.406227, 50.091972>,  <29.906549, 32.799946, 49.733109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559198, 32.406227, 50.091972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.928350, 32.404331, 50.245995>,  <30.149841, 32.403194, 50.338409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.928350, 32.404331, 50.245995>,  <29.559198, 32.406227, 50.091972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928350, 32.404331, 50.245995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381732, 0.120390, 0.916399,
		-0.050705, -0.992715, 0.109294,
		0.922881, -0.004745, 0.385055,
		30.205215, 32.402908, 50.361511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513622, 32.064980, 50.712624>,  <29.559198, 32.406227, 50.091972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513622, 32.064980, 50.712624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.870729, 32.230885, 50.782986>,  <30.084993, 32.330425, 50.825203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.870729, 32.230885, 50.782986>,  <29.513622, 32.064980, 50.712624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870729, 32.230885, 50.782986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255231, 0.143886, 0.956114,
		0.371247, -0.898483, 0.234316,
		0.892767, 0.414759, 0.175903,
		30.138559, 32.355312, 50.835758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577997, 31.973721, 51.418865>,  <29.513622, 32.064980, 50.712624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577997, 31.973721, 51.418865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.874786, 32.231571, 51.345181>,  <30.052860, 32.386284, 51.300972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.874786, 32.231571, 51.345181>,  <29.577997, 31.973721, 51.418865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874786, 32.231571, 51.345181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036993, 0.313708, 0.948798,
		0.669410, -0.697167, 0.256610,
		0.741971, 0.644628, -0.184209,
		30.097378, 32.424961, 51.289917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064978, 31.876389, 51.909069>,  <29.577997, 31.973721, 51.418865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064978, 31.876389, 51.909069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.138445, 32.250408, 51.787781>,  <30.182526, 32.474819, 51.715008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.138445, 32.250408, 51.787781>,  <30.064978, 31.876389, 51.909069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138445, 32.250408, 51.787781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036387, 0.301792, 0.952679,
		0.982314, -0.186012, 0.021407,
		0.183670, 0.935051, -0.303223,
		30.193546, 32.530922, 51.696815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598866, 32.148438, 52.374870>,  <30.064978, 31.876389, 51.909069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598866, 32.148438, 52.374870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476299, 32.480331, 52.188263>,  <30.402760, 32.679470, 52.076298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476299, 32.480331, 52.188263>,  <30.598866, 32.148438, 52.374870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476299, 32.480331, 52.188263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252213, 0.543349, 0.800725,
		0.917876, 0.127693, -0.375763,
		-0.306417, 0.829739, -0.466521,
		30.384375, 32.729252, 52.048306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087225, 32.695763, 52.496868>,  <30.598866, 32.148438, 52.374870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087225, 32.695763, 52.496868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.736065, 32.875168, 52.429787>,  <30.525370, 32.982811, 52.389538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.736065, 32.875168, 52.429787>,  <31.087225, 32.695763, 52.496868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736065, 32.875168, 52.429787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093061, 0.503350, 0.859056,
		0.469713, 0.738560, -0.483631,
		-0.877900, 0.448517, -0.167699,
		30.472694, 33.009724, 52.379478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203791, 33.396355, 52.673382>,  <31.087225, 32.695763, 52.496868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203791, 33.396355, 52.673382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.808931, 33.332870, 52.680824>,  <30.572016, 33.294781, 52.685291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.808931, 33.332870, 52.680824>,  <31.203791, 33.396355, 52.673382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808931, 33.332870, 52.680824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070844, 0.539050, 0.839289,
		-0.143237, 0.827185, -0.543367,
		-0.987150, -0.158711, 0.018611,
		30.512787, 33.285255, 52.686409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949390, 34.024025, 52.761963>,  <31.203791, 33.396355, 52.673382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949390, 34.024025, 52.761963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.655668, 33.787663, 52.895599>,  <30.479435, 33.645844, 52.975780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.655668, 33.787663, 52.895599>,  <30.949390, 34.024025, 52.761963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655668, 33.787663, 52.895599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072466, 0.557595, 0.826944,
		-0.674938, 0.583021, -0.452266,
		-0.734307, -0.590910, 0.334093,
		30.435375, 33.610390, 52.995827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578438, 34.542797, 53.179256>,  <30.949390, 34.024025, 52.761963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578438, 34.542797, 53.179256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.402681, 34.198071, 53.280613>,  <30.297228, 33.991234, 53.341427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.402681, 34.198071, 53.280613>,  <30.578438, 34.542797, 53.179256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402681, 34.198071, 53.280613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491120, 0.466662, 0.735546,
		-0.752154, 0.198746, -0.628303,
		-0.439392, -0.861816, 0.253394,
		30.270864, 33.939526, 53.356632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778275, 34.660587, 53.179199>,  <30.578438, 34.542797, 53.179256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778275, 34.660587, 53.179199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.895781, 34.346634, 53.397434>,  <29.966284, 34.158260, 53.528374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.895781, 34.346634, 53.397434>,  <29.778275, 34.660587, 53.179199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895781, 34.346634, 53.397434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637038, 0.264785, 0.723928,
		-0.712662, -0.560220, -0.422217,
		0.293763, -0.784883, 0.545583,
		29.983910, 34.111168, 53.561108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236105, 34.214928, 53.458858>,  <29.778275, 34.660587, 53.179199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236105, 34.214928, 53.458858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.528719, 34.153191, 53.724503>,  <29.704287, 34.116150, 53.883888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.528719, 34.153191, 53.724503>,  <29.236105, 34.214928, 53.458858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528719, 34.153191, 53.724503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619484, 0.256376, 0.741964,
		-0.284776, -0.954175, 0.091936,
		0.731533, -0.154341, 0.664106,
		29.748178, 34.106888, 53.923733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878588, 33.856136, 54.092575>,  <29.236105, 34.214928, 53.458858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878588, 33.856136, 54.092575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.236973, 33.987812, 54.211826>,  <29.452003, 34.066818, 54.283379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.236973, 33.987812, 54.211826>,  <28.878588, 33.856136, 54.092575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236973, 33.987812, 54.211826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432404, 0.493337, 0.754749,
		0.101377, -0.805141, 0.584355,
		0.895963, 0.329191, 0.298133,
		29.505762, 34.086571, 54.301266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983183, 33.613945, 54.825592>,  <28.878588, 33.856136, 54.092575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983183, 33.613945, 54.825592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.232328, 33.918201, 54.752422>,  <29.381817, 34.100758, 54.708523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.232328, 33.918201, 54.752422>,  <28.983183, 33.613945, 54.825592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232328, 33.918201, 54.752422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316465, 0.458808, 0.830268,
		0.715464, -0.459257, 0.526492,
		0.622865, 0.760644, -0.182922,
		29.419188, 34.146393, 54.697544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.584555, 33.520809, 55.407333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614738, 33.904202, 55.297340>,  <29.632849, 34.134239, 55.231346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614738, 33.904202, 55.297340>,  <29.584555, 33.520809, 55.407333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614738, 33.904202, 55.297340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068636, 0.280106, 0.957512,
		0.994784, -0.053379, 0.086923,
		0.075459, 0.958484, -0.274981,
		29.637377, 34.191746, 55.214848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656549, 33.828896, 56.058086>,  <29.584555, 33.520809, 55.407333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656549, 33.828896, 56.058086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656761, 34.173672, 55.855282>,  <29.656887, 34.380535, 55.733597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656761, 34.173672, 55.855282>,  <29.656549, 33.828896, 56.058086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656761, 34.173672, 55.855282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103857, 0.504226, 0.857304,
		0.994592, -0.053109, -0.089252,
		0.000527, 0.861937, -0.507015,
		29.656919, 34.432251, 55.703178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279079, 34.254528, 56.202572>,  <29.656549, 33.828896, 56.058086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279079, 34.254528, 56.202572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988842, 34.498871, 56.075848>,  <29.814699, 34.645477, 55.999813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988842, 34.498871, 56.075848>,  <30.279079, 34.254528, 56.202572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988842, 34.498871, 56.075848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121799, 0.567136, 0.814568,
		0.677261, 0.552456, -0.485911,
		-0.725591, 0.610859, -0.316810,
		29.771164, 34.682129, 55.980804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674627, 34.846622, 56.102787>,  <30.279079, 34.254528, 56.202572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674627, 34.846622, 56.102787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283415, 34.911781, 56.154819>,  <30.048687, 34.950878, 56.186039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283415, 34.911781, 56.154819>,  <30.674627, 34.846622, 56.102787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283415, 34.911781, 56.154819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192094, 0.461822, 0.865922,
		0.080982, 0.871885, -0.482967,
		-0.978030, 0.162899, 0.130084,
		29.990005, 34.960651, 56.193844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703222, 35.420258, 56.611137>,  <30.674627, 34.846622, 56.102787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703222, 35.420258, 56.611137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330835, 35.274254, 56.607891>,  <30.107403, 35.186649, 56.605946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330835, 35.274254, 56.607891>,  <30.703222, 35.420258, 56.611137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330835, 35.274254, 56.607891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136156, 0.326479, 0.935347,
		-0.338763, 0.871882, -0.353640,
		-0.930968, -0.365011, -0.008113,
		30.051544, 35.164749, 56.605457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361313, 35.968918, 56.893497>,  <30.703222, 35.420258, 56.611137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361313, 35.968918, 56.893497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111097, 35.657555, 56.914585>,  <29.960968, 35.470737, 56.927238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111097, 35.657555, 56.914585>,  <30.361313, 35.968918, 56.893497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111097, 35.657555, 56.914585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343666, 0.335573, 0.877089,
		-0.700427, 0.530534, -0.477427,
		-0.625537, -0.778412, 0.052718,
		29.923437, 35.424030, 56.930401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742037, 36.255596, 56.976540>,  <30.361313, 35.968918, 56.893497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742037, 36.255596, 56.976540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692518, 35.883507, 57.114738>,  <29.662807, 35.660255, 57.197659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692518, 35.883507, 57.114738>,  <29.742037, 36.255596, 56.976540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692518, 35.883507, 57.114738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535485, 0.355748, 0.765963,
		-0.835423, -0.090184, -0.542158,
		-0.123794, -0.930220, 0.345493,
		29.655380, 35.604439, 57.218388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021618, 36.297630, 57.220238>,  <29.742037, 36.255596, 56.976540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021618, 36.297630, 57.220238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196957, 35.998775, 57.420094>,  <29.302160, 35.819462, 57.540009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196957, 35.998775, 57.420094>,  <29.021618, 36.297630, 57.220238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196957, 35.998775, 57.420094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294914, 0.405560, 0.865186,
		-0.849045, -0.526603, -0.042564,
		0.438347, -0.747135, 0.499641,
		29.328461, 35.774635, 57.569984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545273, 35.870205, 57.627243>,  <29.021618, 36.297630, 57.220238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545273, 35.870205, 57.627243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913784, 35.883839, 57.782207>,  <29.134890, 35.892017, 57.875187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913784, 35.883839, 57.782207>,  <28.545273, 35.870205, 57.627243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913784, 35.883839, 57.782207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368942, 0.391669, 0.842898,
		-0.123008, -0.919475, 0.373410,
		0.921276, 0.034083, 0.387411,
		29.190166, 35.894062, 57.898430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464170, 35.678669, 58.354267>,  <28.545273, 35.870205, 57.627243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464170, 35.678669, 58.354267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800924, 35.892780, 58.326817>,  <29.002977, 36.021248, 58.310349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800924, 35.892780, 58.326817>,  <28.464170, 35.678669, 58.354267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800924, 35.892780, 58.326817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251014, 0.500980, 0.828258,
		0.477720, -0.680076, 0.556130,
		0.841888, 0.535272, -0.068619,
		29.053490, 36.053364, 58.306229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718796, 35.679443, 59.033302>,  <28.464170, 35.678669, 58.354267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718796, 35.679443, 59.033302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903683, 35.996128, 58.873524>,  <29.014614, 36.186138, 58.777657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903683, 35.996128, 58.873524>,  <28.718796, 35.679443, 59.033302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903683, 35.996128, 58.873524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246699, 0.547471, 0.799634,
		0.851761, -0.271061, 0.448363,
		0.462216, 0.791708, -0.399444,
		29.042347, 36.233639, 58.753689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042933, 35.908577, 59.577560>,  <28.718796, 35.679443, 59.033302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042933, 35.908577, 59.577560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042425, 36.217926, 59.323978>,  <29.042120, 36.403534, 59.171829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042425, 36.217926, 59.323978>,  <29.042933, 35.908577, 59.577560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042425, 36.217926, 59.323978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144403, 0.627169, 0.765380,
		0.989518, 0.092516, 0.110881,
		-0.001269, 0.773369, -0.633955,
		29.042044, 36.449936, 59.133793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403473, 36.377563, 59.849255>,  <29.042933, 35.908577, 59.577560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403473, 36.377563, 59.849255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207327, 36.627041, 59.605762>,  <29.089640, 36.776726, 59.459667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207327, 36.627041, 59.605762>,  <29.403473, 36.377563, 59.849255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207327, 36.627041, 59.605762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110516, 0.648329, 0.753296,
		0.864481, 0.436664, -0.248990,
		-0.490365, 0.623693, -0.608727,
		29.060217, 36.814148, 59.423145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589598, 36.909653, 60.058289>,  <29.403473, 36.377563, 59.849255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589598, 36.909653, 60.058289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293104, 37.060730, 59.836327>,  <29.115208, 37.151375, 59.703148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293104, 37.060730, 59.836327>,  <29.589598, 36.909653, 60.058289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293104, 37.060730, 59.836327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073430, 0.776097, 0.626324,
		0.667218, 0.504999, -0.547536,
		-0.741234, 0.377689, -0.554908,
		29.070734, 37.174038, 59.669853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744579, 37.628048, 59.825272>,  <29.589598, 36.909653, 60.058289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744579, 37.628048, 59.825272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348236, 37.574696, 59.833393>,  <29.110430, 37.542686, 59.838268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348236, 37.574696, 59.833393>,  <29.744579, 37.628048, 59.825272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348236, 37.574696, 59.833393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077373, 0.685090, 0.724338,
		-0.110523, 0.716144, -0.689146,
		-0.990857, -0.133377, 0.020308,
		29.050980, 37.534683, 59.839485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449114, 38.248718, 59.708748>,  <29.744579, 37.628048, 59.825272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449114, 38.248718, 59.708748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152359, 38.065678, 59.904789>,  <28.974306, 37.955853, 60.022411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152359, 38.065678, 59.904789>,  <29.449114, 38.248718, 59.708748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152359, 38.065678, 59.904789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082438, 0.787625, 0.610615,
		-0.665437, 0.412605, -0.622054,
		-0.741888, -0.457606, 0.490101,
		28.929792, 37.928394, 60.051819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986546, 38.800117, 59.893005>,  <29.449114, 38.248718, 59.708748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986546, 38.800117, 59.893005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869953, 38.495979, 60.125179>,  <28.799997, 38.313496, 60.264484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869953, 38.495979, 60.125179>,  <28.986546, 38.800117, 59.893005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869953, 38.495979, 60.125179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488772, 0.639980, 0.592897,
		-0.822278, -0.110885, -0.558178,
		-0.291480, -0.760348, 0.580439,
		28.782509, 38.267876, 60.299313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375257, 38.991386, 59.989185>,  <28.986546, 38.800117, 59.893005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375257, 38.991386, 59.989185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472683, 38.744053, 60.288074>,  <28.531139, 38.595654, 60.467407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472683, 38.744053, 60.288074>,  <28.375257, 38.991386, 59.989185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472683, 38.744053, 60.288074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312367, 0.679362, 0.663999,
		-0.918206, -0.395134, -0.027678,
		0.243565, -0.618334, 0.747221,
		28.545752, 38.558552, 60.512241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798504, 39.030987, 60.426167>,  <28.375257, 38.991386, 59.989185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798504, 39.030987, 60.426167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080902, 38.857723, 60.650291>,  <28.250341, 38.753765, 60.784767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080902, 38.857723, 60.650291>,  <27.798504, 39.030987, 60.426167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080902, 38.857723, 60.650291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265118, 0.571985, 0.776238,
		-0.656723, -0.696567, 0.288980,
		0.705994, -0.433159, 0.560308,
		28.292700, 38.727776, 60.818382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461025, 38.995609, 61.064915>,  <27.798504, 39.030987, 60.426167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461025, 38.995609, 61.064915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846498, 38.976482, 61.170006>,  <28.077784, 38.965008, 61.233059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846498, 38.976482, 61.170006>,  <27.461025, 38.995609, 61.064915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846498, 38.976482, 61.170006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227007, 0.371462, 0.900269,
		-0.140640, -0.927216, 0.347118,
		0.963685, -0.047816, 0.262727,
		28.135603, 38.962139, 61.248825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480692, 38.732033, 61.858299>,  <27.461025, 38.995609, 61.064915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480692, 38.732033, 61.858299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814445, 38.932594, 61.766739>,  <28.014698, 39.052933, 61.711803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814445, 38.932594, 61.766739>,  <27.480692, 38.732033, 61.858299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814445, 38.932594, 61.766739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028936, 0.374873, 0.926624,
		0.550421, -0.779785, 0.298280,
		0.834386, 0.501403, -0.228902,
		28.064762, 39.083015, 61.698067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791529, 38.824211, 62.442650>,  <27.480692, 38.732033, 61.858299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791529, 38.824211, 62.442650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988628, 39.087692, 62.215206>,  <28.106888, 39.245781, 62.078739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988628, 39.087692, 62.215206>,  <27.791529, 38.824211, 62.442650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988628, 39.087692, 62.215206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096559, 0.690798, 0.716571,
		0.864799, -0.298184, 0.403992,
		0.492747, 0.658699, -0.568609,
		28.136454, 39.285301, 62.044624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455263, 39.026085, 62.817196>,  <27.791529, 38.824211, 62.442650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455263, 39.026085, 62.817196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307711, 39.293373, 62.558765>,  <28.219179, 39.453747, 62.403709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307711, 39.293373, 62.558765>,  <28.455263, 39.026085, 62.817196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307711, 39.293373, 62.558765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019306, 0.689434, 0.724092,
		0.929276, 0.279577, -0.241418,
		-0.368881, 0.668220, -0.646072,
		28.197046, 39.493839, 62.364944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765224, 38.686317, 63.475082>,  <28.455263, 39.026085, 62.817196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765224, 38.686317, 63.475082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815910, 38.341633, 63.671608>,  <28.846323, 38.134823, 63.789524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815910, 38.341633, 63.671608>,  <28.765224, 38.686317, 63.475082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815910, 38.341633, 63.671608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904759, -0.102643, -0.413370,
		0.406637, 0.496905, 0.766637,
		0.126716, -0.861713, 0.491318,
		28.853926, 38.083118, 63.819004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381741, 38.759186, 63.670528>,  <28.765224, 38.686317, 63.475082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381741, 38.759186, 63.670528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319283, 38.364326, 63.684139>,  <29.281807, 38.127411, 63.692307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319283, 38.364326, 63.684139>,  <29.381741, 38.759186, 63.670528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319283, 38.364326, 63.684139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892608, -0.155777, -0.423065,
		0.422929, -0.035684, 0.905460,
		-0.156147, -0.987147, 0.034031,
		29.272438, 38.068184, 63.694347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985064, 38.471245, 63.991074>,  <29.381741, 38.759186, 63.670528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985064, 38.471245, 63.991074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814964, 38.172367, 63.786774>,  <29.712904, 37.993042, 63.664192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814964, 38.172367, 63.786774>,  <29.985064, 38.471245, 63.991074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814964, 38.172367, 63.786774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830679, -0.098149, -0.548031,
		0.359354, -0.657322, 0.662414,
		-0.425249, -0.747191, -0.510753,
		29.687389, 37.948212, 63.633549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527800, 37.994194, 64.003830>,  <29.985064, 38.471245, 63.991074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527800, 37.994194, 64.003830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289875, 37.889282, 63.699883>,  <30.147120, 37.826336, 63.517513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289875, 37.889282, 63.699883>,  <30.527800, 37.994194, 64.003830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289875, 37.889282, 63.699883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803191, -0.232569, -0.548448,
		-0.032877, -0.936548, 0.348994,
		-0.594813, -0.262278, -0.759873,
		30.111431, 37.810600, 63.471920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876747, 37.509724, 63.756859>,  <30.527800, 37.994194, 64.003830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876747, 37.509724, 63.756859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603891, 37.588589, 63.475204>,  <30.440178, 37.635906, 63.306210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603891, 37.588589, 63.475204>,  <30.876747, 37.509724, 63.756859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603891, 37.588589, 63.475204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659957, -0.248650, -0.708964,
		-0.314865, -0.948314, 0.039496,
		-0.682141, 0.197162, -0.704138,
		30.399248, 37.647736, 63.263962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911539, 36.900021, 63.356567>,  <30.876747, 37.509724, 63.756859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911539, 36.900021, 63.356567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750257, 37.200211, 63.147106>,  <30.653488, 37.380325, 63.021427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750257, 37.200211, 63.147106>,  <30.911539, 36.900021, 63.356567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750257, 37.200211, 63.147106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587962, -0.226038, -0.776664,
		-0.701233, -0.621042, -0.350112,
		-0.403203, 0.750475, -0.523655,
		30.629297, 37.425354, 62.990009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768456, 36.648392, 62.602016>,  <30.911539, 36.900021, 63.356567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768456, 36.648392, 62.602016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768391, 37.046192, 62.560108>,  <30.768353, 37.284870, 62.534962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768391, 37.046192, 62.560108>,  <30.768456, 36.648392, 62.602016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768391, 37.046192, 62.560108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570021, -0.085990, -0.817118,
		-0.821630, -0.059854, -0.566870,
		-0.000163, 0.994496, -0.104771,
		30.768341, 37.344540, 62.528679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506590, 36.775658, 61.925545>,  <30.768456, 36.648392, 62.602016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506590, 36.775658, 61.925545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732168, 37.092342, 62.019489>,  <30.867516, 37.282352, 62.075855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732168, 37.092342, 62.019489>,  <30.506590, 36.775658, 61.925545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732168, 37.092342, 62.019489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517456, -0.117127, -0.847656,
		-0.643589, 0.599563, -0.475728,
		0.563944, 0.791710, 0.234865,
		30.901352, 37.329857, 62.089951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547005, 37.085583, 61.385448>,  <30.506590, 36.775658, 61.925545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547005, 37.085583, 61.385448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854979, 37.275387, 61.556110>,  <31.039762, 37.389271, 61.658508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854979, 37.275387, 61.556110>,  <30.547005, 37.085583, 61.385448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854979, 37.275387, 61.556110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454708, 0.061130, -0.888540,
		-0.447705, 0.878124, -0.168699,
		0.769936, 0.474512, 0.426657,
		31.085958, 37.417740, 61.684109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618795, 37.679253, 61.034824>,  <30.547005, 37.085583, 61.385448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618795, 37.679253, 61.034824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968615, 37.562172, 61.189480>,  <31.178507, 37.491924, 61.282272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968615, 37.562172, 61.189480>,  <30.618795, 37.679253, 61.034824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968615, 37.562172, 61.189480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407672, 0.011980, -0.913050,
		0.262623, 0.956128, 0.129805,
		0.874547, -0.292705, 0.386640,
		31.230978, 37.474361, 61.305473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656130, 37.080692, 60.560390>,  <30.618795, 37.679253, 61.034824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656130, 37.080692, 60.560390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047892, 37.012501, 60.517117>,  <31.282949, 36.971588, 60.491154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047892, 37.012501, 60.517117>,  <30.656130, 37.080692, 60.560390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047892, 37.012501, 60.517117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189301, -0.588964, -0.785676,
		0.070220, 0.789975, -0.609105,
		0.979405, -0.170475, -0.108186,
		31.341713, 36.961357, 60.484661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768450, 37.026730, 59.819157>,  <30.656130, 37.080692, 60.560390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768450, 37.026730, 59.819157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107893, 36.870747, 59.962154>,  <31.311560, 36.777157, 60.047951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107893, 36.870747, 59.962154>,  <30.768450, 37.026730, 59.819157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107893, 36.870747, 59.962154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059012, -0.741315, -0.668558,
		0.525721, 0.546247, -0.652098,
		0.848608, -0.389957, 0.357490,
		31.362474, 36.753761, 60.069401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132156, 36.956127, 59.170952>,  <30.768450, 37.026730, 59.819157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132156, 36.956127, 59.170952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309872, 36.720131, 59.440624>,  <31.416500, 36.578533, 59.602428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309872, 36.720131, 59.440624>,  <31.132156, 36.956127, 59.170952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309872, 36.720131, 59.440624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093610, -0.778988, -0.620012,
		0.890980, 0.212353, -0.401323,
		0.444288, -0.589986, 0.674185,
		31.443157, 36.543137, 59.642879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563301, 36.595272, 58.802643>,  <31.132156, 36.956127, 59.170952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563301, 36.595272, 58.802643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532650, 36.374123, 59.134537>,  <31.514259, 36.241432, 59.333672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532650, 36.374123, 59.134537>,  <31.563301, 36.595272, 58.802643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532650, 36.374123, 59.134537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008204, -0.831801, -0.555014,
		0.997026, -0.049337, 0.059204,
		-0.076629, -0.552877, 0.829732,
		31.509661, 36.208260, 59.383457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038555, 36.118771, 58.635044>,  <31.563301, 36.595272, 58.802643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038555, 36.118771, 58.635044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792414, 35.967411, 58.911640>,  <31.644730, 35.876595, 59.077599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792414, 35.967411, 58.911640>,  <32.038555, 36.118771, 58.635044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792414, 35.967411, 58.911640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026776, -0.886773, -0.461429,
		0.787800, -0.265425, 0.555807,
		-0.615349, -0.378396, 0.691492,
		31.607809, 35.853893, 59.119087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283558, 35.538895, 58.801254>,  <32.038555, 36.118771, 58.635044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283558, 35.538895, 58.801254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901834, 35.502647, 58.915161>,  <31.672802, 35.480900, 58.983505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901834, 35.502647, 58.915161>,  <32.283558, 35.538895, 58.801254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901834, 35.502647, 58.915161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088812, -0.823863, -0.559788,
		0.285332, -0.559499, 0.778169,
		-0.954305, -0.090614, 0.284765,
		31.615543, 35.475464, 59.000591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176098, 34.955360, 59.192455>,  <32.283558, 35.538895, 58.801254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176098, 34.955360, 59.192455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830116, 35.035801, 59.008537>,  <31.622526, 35.084064, 58.898186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830116, 35.035801, 59.008537>,  <32.176098, 34.955360, 59.192455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830116, 35.035801, 59.008537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048965, -0.878009, -0.476132,
		-0.499454, -0.434347, 0.749592,
		-0.864955, 0.201102, -0.459794,
		31.570629, 35.096130, 58.870598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789310, 34.376972, 59.356731>,  <32.176098, 34.955360, 59.192455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789310, 34.376972, 59.356731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641445, 34.568764, 59.038376>,  <31.552725, 34.683838, 58.847363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641445, 34.568764, 59.038376>,  <31.789310, 34.376972, 59.356731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641445, 34.568764, 59.038376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082970, -0.870179, -0.485700,
		-0.925453, -0.113511, 0.361457,
		-0.369665, 0.479483, -0.795892,
		31.530546, 34.712608, 58.799610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751574, 33.834381, 58.917221>,  <31.789310, 34.376972, 59.356731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751574, 33.834381, 58.917221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650759, 34.137218, 58.676128>,  <31.590271, 34.318920, 58.531471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650759, 34.137218, 58.676128>,  <31.751574, 33.834381, 58.917221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650759, 34.137218, 58.676128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095098, -0.600446, -0.793991,
		-0.963034, -0.257433, 0.079335,
		-0.252036, 0.757095, -0.602731,
		31.575148, 34.364346, 58.495308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180294, 33.629322, 58.475826>,  <31.751574, 33.834381, 58.917221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180294, 33.629322, 58.475826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318916, 33.949409, 58.280052>,  <31.402090, 34.141460, 58.162586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318916, 33.949409, 58.280052>,  <31.180294, 33.629322, 58.475826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318916, 33.949409, 58.280052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043418, -0.534899, -0.843800,
		-0.937024, 0.271174, -0.220117,
		0.346557, 0.800217, -0.489440,
		31.422884, 34.189476, 58.133221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858791, 33.642120, 57.807980>,  <31.180294, 33.629322, 58.475826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858791, 33.642120, 57.807980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152838, 33.902740, 57.733059>,  <31.329266, 34.059113, 57.688107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152838, 33.902740, 57.733059>,  <30.858791, 33.642120, 57.807980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152838, 33.902740, 57.733059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063670, -0.341410, -0.937755,
		-0.674943, 0.677435, -0.292461,
		0.735117, 0.651553, -0.187300,
		31.373373, 34.098206, 57.676868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.195511, 34.418869, 50.474884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.226921, 34.568375, 50.844563>,  <47.245766, 34.658077, 51.066368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.226921, 34.568375, 50.844563>,  <47.195511, 34.418869, 50.474884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226921, 34.568375, 50.844563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996796, 0.015253, 0.078523,
		0.015253, -0.927397, 0.373768,
		-0.078523, -0.373768, -0.924192,
		47.250477, 34.680504, 51.121819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787445, 34.044083, 50.747765>,  <47.195511, 34.418869, 50.474884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787445, 34.044083, 50.747765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.839687, 34.356247, 50.992355>,  <46.871033, 34.543545, 51.139111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.839687, 34.356247, 50.992355>,  <46.787445, 34.044083, 50.747765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839687, 34.356247, 50.992355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982975, 0.021533, 0.182471,
		0.129236, -0.624895, 0.769938,
		0.130604, 0.780412, 0.611473,
		46.878868, 34.590370, 51.175797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479733, 33.927292, 51.472439>,  <46.787445, 34.044083, 50.747765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479733, 33.927292, 51.472439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.502487, 34.321564, 51.408951>,  <46.516140, 34.558128, 51.370857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.502487, 34.321564, 51.408951>,  <46.479733, 33.927292, 51.472439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502487, 34.321564, 51.408951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946474, 0.103836, 0.305621,
		0.317727, 0.132838, 0.938831,
		0.056887, 0.985683, -0.158720,
		46.519554, 34.617268, 51.361336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209339, 34.200306, 52.082275>,  <46.479733, 33.927292, 51.472439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209339, 34.200306, 52.082275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.174606, 34.468121, 51.787201>,  <46.153767, 34.628811, 51.610157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.174606, 34.468121, 51.787201>,  <46.209339, 34.200306, 52.082275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174606, 34.468121, 51.787201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954348, 0.156522, 0.254403,
		0.285796, 0.726099, 0.625381,
		-0.086836, 0.669539, -0.737684,
		46.148556, 34.668983, 51.565895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590397, 34.545959, 52.310059>,  <46.209339, 34.200306, 52.082275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590397, 34.545959, 52.310059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.631840, 34.658188, 51.928368>,  <45.656708, 34.725525, 51.699352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.631840, 34.658188, 51.928368>,  <45.590397, 34.545959, 52.310059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631840, 34.658188, 51.928368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981337, 0.185097, -0.052131,
		0.161998, 0.941818, 0.294509,
		0.103610, 0.280567, -0.954226,
		45.662922, 34.742359, 51.642101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033134, 34.947590, 52.287033>,  <45.590397, 34.545959, 52.310059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033134, 34.947590, 52.287033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.119370, 34.906998, 51.898556>,  <45.171112, 34.882641, 51.665470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.119370, 34.906998, 51.898556>,  <45.033134, 34.947590, 52.287033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119370, 34.906998, 51.898556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976262, -0.043584, -0.212162,
		-0.020798, 0.993882, -0.108472,
		0.215592, -0.101484, -0.971196,
		45.184048, 34.876553, 51.607197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738441, 35.521824, 51.967255>,  <45.033134, 34.947590, 52.287033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738441, 35.521824, 51.967255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.803955, 35.241920, 51.689114>,  <44.843266, 35.073978, 51.522228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.803955, 35.241920, 51.689114>,  <44.738441, 35.521824, 51.967255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803955, 35.241920, 51.689114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969112, 0.017609, -0.245990,
		0.184377, 0.714165, -0.675258,
		0.163787, -0.699755, -0.695353,
		44.853092, 35.031994, 51.480507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534775, 35.860214, 51.299904>,  <44.738441, 35.521824, 51.967255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534775, 35.860214, 51.299904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.524944, 35.462177, 51.261581>,  <44.519047, 35.223354, 51.238586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.524944, 35.462177, 51.261581>,  <44.534775, 35.860214, 51.299904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524944, 35.462177, 51.261581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978287, 0.043667, -0.202604,
		0.205794, 0.088746, -0.974563,
		-0.024576, -0.995097, -0.095805,
		44.517570, 35.163647, 51.232841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252151, 35.709930, 50.698940>,  <44.534775, 35.860214, 51.299904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252151, 35.709930, 50.698940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.172543, 35.372578, 50.898575>,  <44.124779, 35.170166, 51.018356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.172543, 35.372578, 50.898575>,  <44.252151, 35.709930, 50.698940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172543, 35.372578, 50.898575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924162, -0.007927, -0.381919,
		0.326061, -0.537249, -0.777848,
		-0.199019, -0.843386, 0.499090,
		44.112835, 35.119560, 51.048302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897850, 35.393387, 50.196423>,  <44.252151, 35.709930, 50.698940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897850, 35.393387, 50.196423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.806759, 35.213295, 50.541779>,  <43.752106, 35.105240, 50.748993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.806759, 35.213295, 50.541779>,  <43.897850, 35.393387, 50.196423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806759, 35.213295, 50.541779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929317, -0.164230, -0.330754,
		0.290709, -0.877680, -0.381006,
		-0.227724, -0.450228, 0.863387,
		43.738441, 35.078228, 50.800797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476295, 34.933929, 49.931141>,  <43.897850, 35.393387, 50.196423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476295, 34.933929, 49.931141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.392422, 34.972534, 50.320339>,  <43.342098, 34.995697, 50.553860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.392422, 34.972534, 50.320339>,  <43.476295, 34.933929, 49.931141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392422, 34.972534, 50.320339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973642, -0.111959, -0.198714,
		0.089757, -0.989015, 0.117444,
		-0.209680, 0.096512, 0.972996,
		43.329517, 35.001488, 50.612236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035618, 34.315338, 50.225189>,  <43.476295, 34.933929, 49.931141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035618, 34.315338, 50.225189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.967937, 34.657452, 50.421093>,  <42.927330, 34.862720, 50.538635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.967937, 34.657452, 50.421093>,  <43.035618, 34.315338, 50.225189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967937, 34.657452, 50.421093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940450, 0.008548, -0.339826,
		-0.294834, -0.518090, 0.802904,
		-0.169197, 0.855283, 0.489758,
		42.917179, 34.914036, 50.568020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382629, 34.297184, 50.311760>,  <43.035618, 34.315338, 50.225189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382629, 34.297184, 50.311760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.448917, 34.677433, 50.416721>,  <42.488689, 34.905582, 50.479698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.448917, 34.677433, 50.416721>,  <42.382629, 34.297184, 50.311760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448917, 34.677433, 50.416721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874976, 0.264478, -0.405547,
		-0.454921, -0.162388, 0.875601,
		0.165721, 0.950622, 0.262402,
		42.498634, 34.962620, 50.495441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825077, 34.394855, 50.786125>,  <42.382629, 34.297184, 50.311760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825077, 34.394855, 50.786125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.945999, 34.749310, 50.645622>,  <42.018551, 34.961983, 50.561321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.945999, 34.749310, 50.645622>,  <41.825077, 34.394855, 50.786125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945999, 34.749310, 50.645622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949868, 0.249205, -0.188803,
		-0.079769, 0.390727, 0.917044,
		0.302302, 0.886132, -0.351260,
		42.036690, 35.015148, 50.540245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335037, 34.856533, 51.062141>,  <41.825077, 34.394855, 50.786125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335037, 34.856533, 51.062141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507126, 35.085419, 50.782860>,  <41.610378, 35.222748, 50.615292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507126, 35.085419, 50.782860>,  <41.335037, 34.856533, 51.062141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507126, 35.085419, 50.782860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898149, 0.349094, -0.267323,
		0.090772, 0.742097, 0.664118,
		0.430219, 0.572212, -0.698202,
		41.636192, 35.257084, 50.573399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036510, 35.498775, 51.110611>,  <41.335037, 34.856533, 51.062141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036510, 35.498775, 51.110611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190605, 35.496170, 50.741493>,  <41.283062, 35.494606, 50.520023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190605, 35.496170, 50.741493>,  <41.036510, 35.498775, 51.110611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190605, 35.496170, 50.741493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821651, 0.452800, -0.346211,
		0.420096, 0.891588, 0.169086,
		0.385240, -0.006513, -0.922794,
		41.306175, 35.494217, 50.464657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866844, 36.179337, 50.921700>,  <41.036510, 35.498775, 51.110611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866844, 36.179337, 50.921700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.938942, 35.945797, 50.605057>,  <40.982201, 35.805676, 50.415073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.938942, 35.945797, 50.605057>,  <40.866844, 36.179337, 50.921700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938942, 35.945797, 50.605057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785619, 0.398811, -0.473024,
		0.591874, 0.707159, -0.386797,
		0.180245, -0.583846, -0.791604,
		40.993015, 35.770641, 50.367577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847660, 36.688114, 50.350792>,  <40.866844, 36.179337, 50.921700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847660, 36.688114, 50.350792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.788563, 36.324844, 50.194130>,  <40.753105, 36.106884, 50.100132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.788563, 36.324844, 50.194130>,  <40.847660, 36.688114, 50.350792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788563, 36.324844, 50.194130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776501, 0.351769, -0.522785,
		0.612551, 0.226882, -0.757169,
		-0.147739, -0.908176, -0.391651,
		40.744240, 36.052391, 50.076633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769409, 36.797318, 49.614212>,  <40.847660, 36.688114, 50.350792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769409, 36.797318, 49.614212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613831, 36.443268, 49.716412>,  <40.520485, 36.230839, 49.777733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613831, 36.443268, 49.716412>,  <40.769409, 36.797318, 49.614212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613831, 36.443268, 49.716412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837498, 0.224165, -0.498345,
		0.383821, -0.407812, -0.828475,
		-0.388946, -0.885121, 0.255503,
		40.497147, 36.177731, 49.793064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436180, 36.474110, 48.996933>,  <40.769409, 36.797318, 49.614212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436180, 36.474110, 48.996933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275517, 36.270653, 49.301552>,  <40.179119, 36.148579, 49.484322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275517, 36.270653, 49.301552>,  <40.436180, 36.474110, 48.996933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275517, 36.270653, 49.301552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905957, 0.099174, -0.411589,
		0.133827, -0.855245, -0.500646,
		-0.401661, -0.508646, 0.761544,
		40.155018, 36.118061, 49.530018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997490, 35.851658, 48.697620>,  <40.436180, 36.474110, 48.996933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997490, 35.851658, 48.697620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.881813, 35.948803, 49.068001>,  <39.812405, 36.007088, 49.290230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.881813, 35.948803, 49.068001>,  <39.997490, 35.851658, 48.697620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881813, 35.948803, 49.068001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855583, 0.368269, -0.363808,
		-0.429353, -0.897439, 0.101285,
		-0.289196, 0.242860, 0.925951,
		39.795055, 36.021660, 49.345787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254475, 35.707508, 48.636238>,  <39.997490, 35.851658, 48.697620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254475, 35.707508, 48.636238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330448, 35.941143, 48.951900>,  <39.376034, 36.081326, 49.141296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330448, 35.941143, 48.951900>,  <39.254475, 35.707508, 48.636238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330448, 35.941143, 48.951900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930611, 0.363249, -0.044874,
		-0.312871, -0.725875, 0.612550,
		0.189935, 0.584086, 0.789157,
		39.387428, 36.116367, 49.188648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586567, 35.747746, 48.959351>,  <39.254475, 35.707508, 48.636238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586567, 35.747746, 48.959351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867550, 36.032433, 48.958805>,  <39.036140, 36.203247, 48.958477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867550, 36.032433, 48.958805>,  <38.586567, 35.747746, 48.959351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867550, 36.032433, 48.958805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679659, 0.670249, -0.298043,
		-0.211211, 0.210289, 0.954551,
		0.702462, 0.711720, -0.001361,
		39.078289, 36.245949, 48.958397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978081, 35.242485, 48.944420>,  <38.586567, 35.747746, 48.959351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978081, 35.242485, 48.944420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705101, 35.329895, 49.223423>,  <37.541313, 35.382339, 49.390823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705101, 35.329895, 49.223423>,  <37.978081, 35.242485, 48.944420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705101, 35.329895, 49.223423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690345, 0.120884, -0.713310,
		-0.240190, -0.968316, 0.068358,
		-0.682446, 0.218520, 0.697507,
		37.500366, 35.395451, 49.432674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221134, 34.770920, 49.037071>,  <37.978081, 35.242485, 48.944420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221134, 34.770920, 49.037071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214577, 35.168850, 49.077198>,  <37.210644, 35.407608, 49.101273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214577, 35.168850, 49.077198>,  <37.221134, 34.770920, 49.037071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214577, 35.168850, 49.077198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589126, 0.071454, -0.804876,
		-0.807875, -0.072289, 0.584903,
		-0.016390, 0.994821, 0.100313,
		37.209660, 35.467297, 49.107292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219921, 34.031960, 48.940971>,  <37.221134, 34.770920, 49.037071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219921, 34.031960, 48.940971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179325, 33.804913, 48.614166>,  <37.154968, 33.668682, 48.418083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179325, 33.804913, 48.614166>,  <37.219921, 34.031960, 48.940971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179325, 33.804913, 48.614166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963806, 0.259616, -0.060641,
		0.246530, 0.781285, -0.573426,
		-0.101493, -0.567621, -0.817010,
		37.148876, 33.634628, 48.369064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801037, 34.409351, 48.494167>,  <37.219921, 34.031960, 48.940971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801037, 34.409351, 48.494167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.784317, 34.043835, 48.332558>,  <36.774284, 33.824524, 48.235592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.784317, 34.043835, 48.332558>,  <36.801037, 34.409351, 48.494167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784317, 34.043835, 48.332558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903511, 0.207198, -0.375148,
		0.426521, 0.349357, -0.834284,
		-0.041801, -0.913794, -0.404022,
		36.771778, 33.769695, 48.211349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548180, 34.455460, 47.722946>,  <36.801037, 34.409351, 48.494167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548180, 34.455460, 47.722946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486946, 34.081909, 47.852211>,  <36.450207, 33.857777, 47.929771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486946, 34.081909, 47.852211>,  <36.548180, 34.455460, 47.722946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486946, 34.081909, 47.852211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865003, -0.031495, -0.500778,
		0.477844, -0.356199, -0.802986,
		-0.153086, -0.933879, 0.323163,
		36.441021, 33.801746, 47.949162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148590, 34.207714, 47.088554>,  <36.548180, 34.455460, 47.722946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148590, 34.207714, 47.088554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.087379, 33.964245, 47.399963>,  <36.050652, 33.818165, 47.586811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.087379, 33.964245, 47.399963>,  <36.148590, 34.207714, 47.088554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087379, 33.964245, 47.399963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895141, -0.248406, -0.370159,
		0.418695, -0.753534, -0.506833,
		-0.153027, -0.608671, 0.778526,
		36.041470, 33.781643, 47.633522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843277, 33.597393, 46.791805>,  <36.148590, 34.207714, 47.088554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843277, 33.597393, 46.791805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744774, 33.575874, 47.178890>,  <35.685673, 33.562962, 47.411140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744774, 33.575874, 47.178890>,  <35.843277, 33.597393, 46.791805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744774, 33.575874, 47.178890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882314, -0.400759, -0.246807,
		0.401097, -0.914602, 0.051220,
		-0.246257, -0.053801, 0.967710,
		35.670898, 33.559734, 47.469204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470993, 32.908165, 46.981976>,  <35.843277, 33.597393, 46.791805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470993, 32.908165, 46.981976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361149, 33.154259, 47.277565>,  <35.295242, 33.301914, 47.454918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361149, 33.154259, 47.277565>,  <35.470993, 32.908165, 46.981976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361149, 33.154259, 47.277565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913080, -0.407780, 0.000183,
		0.301451, -0.674690, 0.673736,
		-0.274613, 0.615230, 0.738972,
		35.278767, 33.338829, 47.499256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266033, 32.444088, 47.552326>,  <35.470993, 32.908165, 46.981976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266033, 32.444088, 47.552326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.087219, 32.795681, 47.618713>,  <34.979931, 33.006638, 47.658546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.087219, 32.795681, 47.618713>,  <35.266033, 32.444088, 47.552326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087219, 32.795681, 47.618713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894428, -0.436650, -0.096617,
		-0.012456, -0.191634, 0.981387,
		-0.447038, 0.878984, 0.165964,
		34.953106, 33.059376, 47.668503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711468, 32.340809, 48.019794>,  <35.266033, 32.444088, 47.552326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711468, 32.340809, 48.019794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.611565, 32.693268, 47.859196>,  <34.551624, 32.904743, 47.762836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.611565, 32.693268, 47.859196>,  <34.711468, 32.340809, 48.019794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611565, 32.693268, 47.859196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947287, -0.308271, -0.087270,
		-0.200668, 0.358539, 0.911692,
		-0.249758, 0.881146, -0.401499,
		34.536636, 32.957611, 47.738747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165478, 32.646370, 48.367752>,  <34.711468, 32.340809, 48.019794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165478, 32.646370, 48.367752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.133507, 32.834709, 48.016319>,  <34.114323, 32.947712, 47.805458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.133507, 32.834709, 48.016319>,  <34.165478, 32.646370, 48.367752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133507, 32.834709, 48.016319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996598, -0.019973, 0.079964,
		0.020103, 0.881988, 0.470843,
		-0.079932, 0.470849, -0.878585,
		34.109528, 32.975964, 47.752743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664093, 33.127785, 48.525768>,  <34.165478, 32.646370, 48.367752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664093, 33.127785, 48.525768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.671722, 33.037842, 48.136086>,  <33.676300, 32.983875, 47.902275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.671722, 33.037842, 48.136086>,  <33.664093, 33.127785, 48.525768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671722, 33.037842, 48.136086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999466, -0.030128, -0.012613,
		-0.026515, 0.973926, -0.225310,
		0.019073, -0.224855, -0.974206,
		33.677444, 32.970387, 47.843822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.259737, 33.123852, 52.757965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.656384, 33.174599, 52.748146>,  <29.894371, 33.205048, 52.742256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.656384, 33.174599, 52.748146>,  <29.259737, 33.123852, 52.757965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656384, 33.174599, 52.748146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009588, -0.261648, -0.965116,
		-0.128867, 0.956789, -0.260670,
		0.991616, 0.126871, -0.024544,
		29.953869, 33.212662, 52.740784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335884, 33.594902, 52.165730>,  <29.259737, 33.123852, 52.757965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335884, 33.594902, 52.165730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690096, 33.425652, 52.242470>,  <29.902622, 33.324100, 52.288513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690096, 33.425652, 52.242470>,  <29.335884, 33.594902, 52.165730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690096, 33.425652, 52.242470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103039, -0.223794, -0.969174,
		0.453016, 0.877999, -0.154577,
		0.885528, -0.423124, 0.191851,
		29.955753, 33.298714, 52.300026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731331, 33.802002, 51.616737>,  <29.335884, 33.594902, 52.165730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731331, 33.802002, 51.616737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905943, 33.465893, 51.745350>,  <30.010710, 33.264225, 51.822517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905943, 33.465893, 51.745350>,  <29.731331, 33.802002, 51.616737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905943, 33.465893, 51.745350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110461, -0.304618, -0.946048,
		0.892883, 0.448494, -0.040156,
		0.436529, -0.840275, 0.321529,
		30.036901, 33.213810, 51.841808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446671, 33.830658, 51.356358>,  <29.731331, 33.802002, 51.616737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446671, 33.830658, 51.356358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.354132, 33.450062, 51.437496>,  <30.298609, 33.221703, 51.486179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.354132, 33.450062, 51.437496>,  <30.446671, 33.830658, 51.356358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354132, 33.450062, 51.437496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294834, -0.267265, -0.917411,
		0.927120, -0.152437, 0.342363,
		-0.231349, -0.951489, 0.202843,
		30.284727, 33.164616, 51.498348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843678, 33.457542, 50.960316>,  <30.446671, 33.830658, 51.356358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843678, 33.457542, 50.960316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638462, 33.130775, 51.065723>,  <30.515333, 32.934715, 51.128967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638462, 33.130775, 51.065723>,  <30.843678, 33.457542, 50.960316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638462, 33.130775, 51.065723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149406, -0.387305, -0.909765,
		0.845264, -0.427371, 0.320754,
		-0.513037, -0.816914, 0.263523,
		30.484550, 32.885700, 51.144779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358435, 32.890640, 50.888462>,  <30.843678, 33.457542, 50.960316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358435, 32.890640, 50.888462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984324, 32.749313, 50.880299>,  <30.759857, 32.664516, 50.875401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984324, 32.749313, 50.880299>,  <31.358435, 32.890640, 50.888462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984324, 32.749313, 50.880299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149630, -0.342523, -0.927518,
		0.320722, -0.870541, 0.373222,
		-0.935279, -0.353321, -0.020405,
		30.703739, 32.643318, 50.874176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390200, 32.215408, 50.919964>,  <31.358435, 32.890640, 50.888462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390200, 32.215408, 50.919964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.039276, 32.299339, 50.747314>,  <30.828722, 32.349697, 50.643726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.039276, 32.299339, 50.747314>,  <31.390200, 32.215408, 50.919964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039276, 32.299339, 50.747314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346548, -0.345204, -0.872204,
		-0.332016, -0.914770, 0.230133,
		-0.877308, 0.209834, -0.431625,
		30.776083, 32.362289, 50.617828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284626, 31.619766, 50.488537>,  <31.390200, 32.215408, 50.919964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284626, 31.619766, 50.488537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998901, 31.860563, 50.345787>,  <30.827467, 32.005043, 50.260136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998901, 31.860563, 50.345787>,  <31.284626, 31.619766, 50.488537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998901, 31.860563, 50.345787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141207, -0.375480, -0.916010,
		-0.685433, -0.704711, 0.183204,
		-0.714312, 0.601994, -0.356877,
		30.784607, 32.041161, 50.238724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819452, 31.161598, 50.118382>,  <31.284626, 31.619766, 50.488537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819452, 31.161598, 50.118382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828342, 31.532747, 49.969490>,  <30.833677, 31.755438, 49.880154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828342, 31.532747, 49.969490>,  <30.819452, 31.161598, 50.118382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828342, 31.532747, 49.969490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149239, -0.371229, -0.916470,
		-0.988551, -0.035182, -0.146726,
		0.022226, 0.927874, -0.372230,
		30.835011, 31.811110, 49.857822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036572, 30.982525, 49.475513>,  <30.819452, 31.161598, 50.118382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036572, 30.982525, 49.475513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.952929, 31.372850, 49.450008>,  <30.902742, 31.607046, 49.434708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.952929, 31.372850, 49.450008>,  <31.036572, 30.982525, 49.475513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952929, 31.372850, 49.450008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197951, -0.021612, -0.979974,
		-0.957648, -0.217540, -0.188644,
		-0.209107, 0.975812, -0.063759,
		30.890196, 31.665594, 49.430882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383045, 31.048409, 49.157265>,  <31.036572, 30.982525, 49.475513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383045, 31.048409, 49.157265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630587, 31.356918, 49.097725>,  <30.779112, 31.542025, 49.062000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630587, 31.356918, 49.097725>,  <30.383045, 31.048409, 49.157265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630587, 31.356918, 49.097725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038582, -0.219116, -0.974936,
		-0.784560, 0.597597, -0.165358,
		0.618851, 0.771275, -0.148853,
		30.816242, 31.588301, 49.053070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170403, 31.440611, 48.502281>,  <30.383045, 31.048409, 49.157265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170403, 31.440611, 48.502281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553450, 31.531418, 48.573196>,  <30.783278, 31.585901, 48.615746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553450, 31.531418, 48.573196>,  <30.170403, 31.440611, 48.502281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553450, 31.531418, 48.573196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225906, -0.210059, -0.951232,
		-0.178705, 0.950967, -0.252441,
		0.957617, 0.227017, 0.177291,
		30.840734, 31.599524, 48.626385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320370, 31.877213, 47.964794>,  <30.170403, 31.440611, 48.502281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320370, 31.877213, 47.964794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626804, 31.681776, 48.131836>,  <30.810665, 31.564514, 48.232059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626804, 31.681776, 48.131836>,  <30.320370, 31.877213, 47.964794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626804, 31.681776, 48.131836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360919, -0.210604, -0.908506,
		0.531838, 0.846714, 0.015002,
		0.766085, -0.488592, 0.417602,
		30.856630, 31.535198, 48.257118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520975, 32.536045, 48.140442>,  <30.320370, 31.877213, 47.964794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520975, 32.536045, 48.140442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.639011, 32.838402, 47.906673>,  <30.709833, 33.019814, 47.766411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.639011, 32.838402, 47.906673>,  <30.520975, 32.536045, 48.140442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639011, 32.838402, 47.906673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594380, 0.624128, 0.507125,
		0.748088, 0.197725, 0.633458,
		0.295088, 0.755890, -0.584426,
		30.727537, 33.065170, 47.731346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577003, 33.035103, 48.588505>,  <30.520975, 32.536045, 48.140442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577003, 33.035103, 48.588505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581465, 33.246063, 48.248688>,  <30.584141, 33.372639, 48.044800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581465, 33.246063, 48.248688>,  <30.577003, 33.035103, 48.588505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581465, 33.246063, 48.248688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628954, 0.664183, 0.404076,
		0.777363, 0.529815, 0.339121,
		0.011153, 0.527405, -0.849541,
		30.584810, 33.404285, 47.993824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902496, 33.652802, 48.686283>,  <30.577003, 33.035103, 48.588505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902496, 33.652802, 48.686283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659525, 33.714096, 48.374500>,  <30.513742, 33.750874, 48.187431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659525, 33.714096, 48.374500>,  <30.902496, 33.652802, 48.686283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659525, 33.714096, 48.374500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491855, 0.697958, 0.520513,
		0.623788, 0.699553, -0.348590,
		-0.607427, 0.153233, -0.779456,
		30.477297, 33.760067, 48.140663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028252, 34.441357, 48.539101>,  <30.902496, 33.652802, 48.686283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028252, 34.441357, 48.539101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688349, 34.315037, 48.370255>,  <30.484407, 34.239246, 48.268948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688349, 34.315037, 48.370255>,  <31.028252, 34.441357, 48.539101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688349, 34.315037, 48.370255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505795, 0.714101, 0.483973,
		0.148594, 0.624764, -0.766544,
		-0.849759, -0.315799, -0.422114,
		30.433420, 34.220299, 48.243622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832024, 34.925552, 48.210125>,  <31.028252, 34.441357, 48.539101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832024, 34.925552, 48.210125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489426, 34.727036, 48.266853>,  <30.283867, 34.607925, 48.300888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489426, 34.727036, 48.266853>,  <30.832024, 34.925552, 48.210125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489426, 34.727036, 48.266853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442753, 0.847644, 0.292350,
		-0.265302, 0.187606, -0.945737,
		-0.856495, -0.496289, 0.141819,
		30.232477, 34.578148, 48.309399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398737, 35.417767, 48.141975>,  <30.832024, 34.925552, 48.210125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398737, 35.417767, 48.141975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191713, 35.149120, 48.354038>,  <30.067499, 34.987934, 48.481277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191713, 35.149120, 48.354038>,  <30.398737, 35.417767, 48.141975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191713, 35.149120, 48.354038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305600, 0.723824, 0.618617,
		-0.799213, 0.158155, -0.579867,
		-0.517559, -0.671614, 0.530158,
		30.036446, 34.947636, 48.513084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781694, 35.747227, 48.289791>,  <30.398737, 35.417767, 48.141975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781694, 35.747227, 48.289791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.787437, 35.446949, 48.553989>,  <29.790884, 35.266785, 48.712509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.787437, 35.446949, 48.553989>,  <29.781694, 35.747227, 48.289791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787437, 35.446949, 48.553989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344910, 0.616304, 0.707959,
		-0.938526, -0.237977, -0.250072,
		0.014358, -0.750690, 0.660498,
		29.791744, 35.221741, 48.752140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118326, 35.733555, 48.668411>,  <29.781694, 35.747227, 48.289791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118326, 35.733555, 48.668411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.380733, 35.564037, 48.918224>,  <29.538177, 35.462326, 49.068111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.380733, 35.564037, 48.918224>,  <29.118326, 35.733555, 48.668411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380733, 35.564037, 48.918224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362130, 0.549260, 0.753110,
		-0.662194, -0.720215, 0.206855,
		0.656019, -0.423796, 0.624529,
		29.577539, 35.436897, 49.105583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695072, 35.554832, 49.216396>,  <29.118326, 35.733555, 48.668411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695072, 35.554832, 49.216396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.069130, 35.553589, 49.358097>,  <29.293564, 35.552841, 49.443119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.069130, 35.553589, 49.358097>,  <28.695072, 35.554832, 49.216396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069130, 35.553589, 49.358097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303616, 0.508211, 0.805940,
		-0.182542, -0.861227, 0.474306,
		0.935145, -0.003111, 0.354252,
		29.349674, 35.552654, 49.464371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715221, 35.466473, 49.946453>,  <28.695072, 35.554832, 49.216396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715221, 35.466473, 49.946453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.068411, 35.651691, 49.915615>,  <29.280325, 35.762821, 49.897114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.068411, 35.651691, 49.915615>,  <28.715221, 35.466473, 49.946453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068411, 35.651691, 49.915615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245236, 0.595063, 0.765349,
		0.400265, -0.656879, 0.638982,
		0.882976, 0.463044, -0.077092,
		29.333303, 35.790604, 49.892487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103254, 35.550079, 50.667465>,  <28.715221, 35.466473, 49.946453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103254, 35.550079, 50.667465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.259735, 35.829926, 50.428303>,  <29.353624, 35.997833, 50.284805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.259735, 35.829926, 50.428303>,  <29.103254, 35.550079, 50.667465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259735, 35.829926, 50.428303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058213, 0.667196, 0.742604,
		0.918461, -0.255704, 0.301737,
		0.391204, 0.699618, -0.597908,
		29.377096, 36.039810, 50.248932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599947, 35.863800, 51.066326>,  <29.103254, 35.550079, 50.667465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599947, 35.863800, 51.066326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.534004, 36.148766, 50.793476>,  <29.494438, 36.319744, 50.629768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.534004, 36.148766, 50.793476>,  <29.599947, 35.863800, 51.066326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534004, 36.148766, 50.793476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182945, 0.657498, 0.730909,
		0.969202, 0.245287, 0.021938,
		-0.164859, 0.712411, -0.682123,
		29.484547, 36.362488, 50.588840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011356, 36.518238, 51.284210>,  <29.599947, 35.863800, 51.066326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011356, 36.518238, 51.284210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724037, 36.629101, 51.028950>,  <29.551645, 36.695618, 50.875793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724037, 36.629101, 51.028950>,  <30.011356, 36.518238, 51.284210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724037, 36.629101, 51.028950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330727, 0.670947, 0.663664,
		0.612103, 0.687761, -0.390276,
		-0.718296, 0.277156, -0.638150,
		29.508549, 36.712246, 50.837505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118324, 37.207539, 51.308102>,  <30.011356, 36.518238, 51.284210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118324, 37.207539, 51.308102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744329, 37.100388, 51.215115>,  <29.519934, 37.036095, 51.159321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744329, 37.100388, 51.215115>,  <30.118324, 37.207539, 51.308102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744329, 37.100388, 51.215115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354477, 0.683292, 0.638325,
		-0.012150, 0.679230, -0.733825,
		-0.934986, -0.267879, -0.232469,
		29.463833, 37.020023, 51.145374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735044, 37.869167, 51.370598>,  <30.118324, 37.207539, 51.308102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735044, 37.869167, 51.370598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.432192, 37.611938, 51.324623>,  <29.250481, 37.457600, 51.297039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.432192, 37.611938, 51.324623>,  <29.735044, 37.869167, 51.370598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432192, 37.611938, 51.324623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565017, 0.556332, 0.609304,
		-0.327883, 0.526264, -0.784563,
		-0.757132, -0.643071, -0.114936,
		29.205051, 37.419018, 51.290142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736019, 38.647659, 51.161732>,  <29.735044, 37.869167, 51.370598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736019, 38.647659, 51.161732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081127, 38.708675, 51.354546>,  <30.288193, 38.745285, 51.470234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081127, 38.708675, 51.354546>,  <29.736019, 38.647659, 51.161732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081127, 38.708675, 51.354546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500424, -0.121656, -0.857190,
		-0.072110, 0.980782, -0.181294,
		0.862772, 0.152536, 0.482034,
		30.339958, 38.754436, 51.499157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050804, 39.290112, 50.879498>,  <29.736019, 38.647659, 51.161732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050804, 39.290112, 50.879498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342346, 39.070545, 51.043186>,  <30.517271, 38.938805, 51.141399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342346, 39.070545, 51.043186>,  <30.050804, 39.290112, 50.879498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342346, 39.070545, 51.043186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530674, 0.075256, -0.844229,
		0.432618, 0.832480, 0.346148,
		0.728853, -0.548920, 0.409218,
		30.561003, 38.905869, 51.165951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779924, 39.653145, 50.715851>,  <30.050804, 39.290112, 50.879498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779924, 39.653145, 50.715851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.862911, 39.277065, 50.823914>,  <30.912703, 39.051418, 50.888752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.862911, 39.277065, 50.823914>,  <30.779924, 39.653145, 50.715851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862911, 39.277065, 50.823914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848453, 0.035479, -0.528081,
		0.486915, 0.338777, 0.805074,
		0.207465, -0.940197, 0.270161,
		30.925150, 38.995007, 50.904961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490820, 39.682236, 50.858238>,  <30.779924, 39.653145, 50.715851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490820, 39.682236, 50.858238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407576, 39.296997, 50.789967>,  <31.357630, 39.065853, 50.749004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407576, 39.296997, 50.789967>,  <31.490820, 39.682236, 50.858238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407576, 39.296997, 50.789967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838880, -0.086017, -0.537476,
		0.502961, -0.255035, 0.825825,
		-0.208111, -0.963098, -0.170681,
		31.345142, 39.008068, 50.738762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041843, 39.432606, 50.898506>,  <31.490820, 39.682236, 50.858238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041843, 39.432606, 50.898506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850866, 39.122974, 50.732204>,  <31.736280, 38.937195, 50.632423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850866, 39.122974, 50.732204>,  <32.041843, 39.432606, 50.898506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850866, 39.122974, 50.732204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750827, -0.113640, -0.650649,
		0.456406, -0.622810, 0.635455,
		-0.477444, -0.774077, -0.415756,
		31.707634, 38.890751, 50.607479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473797, 38.889130, 50.887646>,  <32.041843, 39.432606, 50.898506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473797, 38.889130, 50.887646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.201061, 38.788578, 50.612862>,  <32.037422, 38.728249, 50.447990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.201061, 38.788578, 50.612862>,  <32.473797, 38.889130, 50.887646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201061, 38.788578, 50.612862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705035, 0.024513, -0.708749,
		0.195003, -0.967578, 0.160516,
		-0.681836, -0.251378, -0.686957,
		31.996511, 38.713165, 50.406776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777775, 38.391045, 50.485138>,  <32.473797, 38.889130, 50.887646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777775, 38.391045, 50.485138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480659, 38.483921, 50.233948>,  <32.302391, 38.539646, 50.083233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480659, 38.483921, 50.233948>,  <32.777775, 38.391045, 50.485138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480659, 38.483921, 50.233948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629785, -0.076028, -0.773039,
		-0.227236, -0.969694, -0.089757,
		-0.742788, 0.232190, -0.627976,
		32.257824, 38.553577, 50.045555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785091, 37.875889, 49.935127>,  <32.777775, 38.391045, 50.485138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785091, 37.875889, 49.935127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607567, 38.199429, 49.780838>,  <32.501053, 38.393555, 49.688263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607567, 38.199429, 49.780838>,  <32.785091, 37.875889, 49.935127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607567, 38.199429, 49.780838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632245, -0.022404, -0.774444,
		-0.635053, -0.587583, -0.501451,
		-0.443816, 0.808853, -0.385725,
		32.474422, 38.442085, 49.665119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600864, 37.685295, 49.231655>,  <32.785091, 37.875889, 49.935127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600864, 37.685295, 49.231655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596661, 38.084824, 49.212727>,  <32.594139, 38.324543, 49.201370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596661, 38.084824, 49.212727>,  <32.600864, 37.685295, 49.231655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596661, 38.084824, 49.212727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613818, -0.030912, -0.788843,
		-0.789378, -0.037338, -0.612771,
		-0.010512, 0.998824, -0.047320,
		32.593506, 38.384472, 49.198532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559429, 37.846970, 48.497665>,  <32.600864, 37.685295, 49.231655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559429, 37.846970, 48.497665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705326, 38.167362, 48.687565>,  <32.792862, 38.359600, 48.801506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705326, 38.167362, 48.687565>,  <32.559429, 37.846970, 48.497665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705326, 38.167362, 48.687565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843328, -0.068068, -0.533071,
		-0.394668, 0.594801, -0.700321,
		0.364740, 0.800986, 0.474748,
		32.814747, 38.407658, 48.829990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580139, 38.394432, 48.053555>,  <32.559429, 37.846970, 48.497665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580139, 38.394432, 48.053555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853649, 38.475441, 48.333965>,  <33.017754, 38.524044, 48.502213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853649, 38.475441, 48.333965>,  <32.580139, 38.394432, 48.053555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853649, 38.475441, 48.333965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718538, -0.019516, -0.695214,
		-0.127113, 0.979084, -0.158862,
		0.683773, 0.202519, 0.701028,
		33.058781, 38.536198, 48.544273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956394, 38.910408, 47.739784>,  <32.580139, 38.394432, 48.053555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956394, 38.910408, 47.739784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197971, 38.754307, 48.017765>,  <33.342918, 38.660645, 48.184551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197971, 38.754307, 48.017765>,  <32.956394, 38.910408, 47.739784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197971, 38.754307, 48.017765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749389, -0.018888, -0.661861,
		0.271419, 0.920514, 0.281044,
		0.603944, -0.390252, 0.694949,
		33.379154, 38.637230, 48.226250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.752289, 40.194210, 57.081650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610205, 40.549011, 56.963631>,  <31.524954, 40.761890, 56.892818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610205, 40.549011, 56.963631>,  <31.752289, 40.194210, 57.081650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610205, 40.549011, 56.963631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000332, -0.315751, -0.948842,
		-0.934786, -0.336942, 0.112453,
		-0.355212, 0.887002, -0.295048,
		31.503641, 40.815113, 56.875118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030592, 40.106174, 56.835796>,  <31.752289, 40.194210, 57.081650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030592, 40.106174, 56.835796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127989, 40.454628, 56.665222>,  <31.186426, 40.663700, 56.562878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127989, 40.454628, 56.665222>,  <31.030592, 40.106174, 56.835796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127989, 40.454628, 56.665222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384770, -0.316832, -0.866931,
		-0.890317, 0.375168, 0.258039,
		0.243490, 0.871129, -0.426434,
		31.201036, 40.715965, 56.537292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425293, 40.269306, 56.455109>,  <31.030592, 40.106174, 56.835796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425293, 40.269306, 56.455109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726902, 40.471790, 56.287682>,  <30.907867, 40.593281, 56.187225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726902, 40.471790, 56.287682>,  <30.425293, 40.269306, 56.455109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726902, 40.471790, 56.287682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301388, -0.299567, -0.905221,
		-0.583620, 0.808710, -0.073316,
		0.754024, 0.506209, -0.418569,
		30.953110, 40.623653, 56.162109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113344, 40.679337, 55.891457>,  <30.425293, 40.269306, 56.455109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113344, 40.679337, 55.891457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505724, 40.644894, 55.821804>,  <30.741152, 40.624229, 55.780010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505724, 40.644894, 55.821804>,  <30.113344, 40.679337, 55.891457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505724, 40.644894, 55.821804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190105, -0.241099, -0.951699,
		0.039964, 0.966673, -0.252875,
		0.980950, -0.086107, -0.174135,
		30.800009, 40.619061, 55.769562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162712, 41.005444, 55.281311>,  <30.113344, 40.679337, 55.891457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162712, 41.005444, 55.281311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520191, 40.826199, 55.272366>,  <30.734678, 40.718651, 55.266998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520191, 40.826199, 55.272366>,  <30.162712, 41.005444, 55.281311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520191, 40.826199, 55.272366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149670, -0.250762, -0.956409,
		0.422973, 0.858086, -0.291174,
		0.893696, -0.448115, -0.022364,
		30.788300, 40.691765, 55.265656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545338, 41.223202, 54.712002>,  <30.162712, 41.005444, 55.281311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545338, 41.223202, 54.712002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703138, 40.864567, 54.792492>,  <30.797819, 40.649384, 54.840786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703138, 40.864567, 54.792492>,  <30.545338, 41.223202, 54.712002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703138, 40.864567, 54.792492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145937, -0.277342, -0.949623,
		0.907232, 0.345263, -0.240258,
		0.394503, -0.896591, 0.201227,
		30.821489, 40.595589, 54.852859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127211, 41.094868, 54.154331>,  <30.545338, 41.223202, 54.712002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127211, 41.094868, 54.154331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004961, 40.747799, 54.311172>,  <30.931612, 40.539558, 54.405277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004961, 40.747799, 54.311172>,  <31.127211, 41.094868, 54.154331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004961, 40.747799, 54.311172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033447, -0.421338, -0.906287,
		0.951565, -0.263867, 0.157792,
		-0.305623, -0.867668, 0.392105,
		30.913275, 40.487499, 54.428802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564312, 40.573925, 53.852634>,  <31.127211, 41.094868, 54.154331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564312, 40.573925, 53.852634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237726, 40.378242, 53.975315>,  <31.041775, 40.260834, 54.048923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237726, 40.378242, 53.975315>,  <31.564312, 40.573925, 53.852634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237726, 40.378242, 53.975315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001494, -0.529390, -0.848378,
		0.577395, -0.693127, 0.431496,
		-0.816463, -0.489205, 0.306703,
		30.992786, 40.231480, 54.067326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561939, 40.050217, 53.244633>,  <31.564312, 40.573925, 53.852634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561939, 40.050217, 53.244633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221735, 39.992218, 53.446865>,  <31.017612, 39.957420, 53.568203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221735, 39.992218, 53.446865>,  <31.561939, 40.050217, 53.244633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221735, 39.992218, 53.446865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387138, -0.478098, -0.788382,
		0.356027, -0.866255, 0.350494,
		-0.850511, -0.144996, 0.505576,
		30.966581, 39.948719, 53.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470345, 39.360306, 53.329399>,  <31.561939, 40.050217, 53.244633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470345, 39.360306, 53.329399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.107206, 39.528004, 53.332264>,  <30.889324, 39.628620, 53.333984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.107206, 39.528004, 53.332264>,  <31.470345, 39.360306, 53.329399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107206, 39.528004, 53.332264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278373, -0.589852, -0.758013,
		-0.313567, -0.690152, 0.652200,
		-0.907846, 0.419243, 0.007161,
		30.834852, 39.653778, 53.334412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093830, 38.870800, 53.205532>,  <31.470345, 39.360306, 53.329399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093830, 38.870800, 53.205532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.845785, 39.169685, 53.109917>,  <30.696959, 39.349014, 53.052547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.845785, 39.169685, 53.109917>,  <31.093830, 38.870800, 53.205532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845785, 39.169685, 53.109917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171484, -0.426428, -0.888118,
		-0.765542, -0.509741, 0.392567,
		-0.620111, 0.747210, -0.239036,
		30.659752, 39.393848, 53.038204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378498, 38.592220, 53.089283>,  <31.093830, 38.870800, 53.205532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378498, 38.592220, 53.089283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384481, 38.934673, 52.882668>,  <30.388071, 39.140144, 52.758698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384481, 38.934673, 52.882668>,  <30.378498, 38.592220, 53.089283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384481, 38.934673, 52.882668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293057, -0.490156, -0.820892,
		-0.955978, 0.163655, 0.243564,
		0.014959, 0.856133, -0.516539,
		30.388969, 39.191513, 52.727707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797020, 38.546471, 52.625874>,  <30.378498, 38.592220, 53.089283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797020, 38.546471, 52.625874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043467, 38.826824, 52.482117>,  <30.191334, 38.995037, 52.395863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043467, 38.826824, 52.482117>,  <29.797020, 38.546471, 52.625874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043467, 38.826824, 52.482117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054547, -0.417219, -0.907167,
		-0.785766, 0.578522, -0.218824,
		0.616114, 0.700885, -0.359393,
		30.228300, 39.037090, 52.374298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488903, 38.751091, 51.950222>,  <29.797020, 38.546471, 52.625874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488903, 38.751091, 51.950222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.871300, 38.853188, 51.892349>,  <30.100737, 38.914444, 51.857624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.871300, 38.853188, 51.892349>,  <29.488903, 38.751091, 51.950222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871300, 38.853188, 51.892349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035335, -0.589703, -0.806847,
		-0.291262, 0.766226, -0.572770,
		0.955991, 0.255243, -0.144683,
		30.158096, 38.929760, 51.848946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093513, 38.320969, 51.327297>,  <29.488903, 38.751091, 51.950222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093513, 38.320969, 51.327297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994459, 37.945324, 51.422581>,  <28.935026, 37.719936, 51.479752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994459, 37.945324, 51.422581>,  <29.093513, 38.320969, 51.327297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994459, 37.945324, 51.422581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556778, 0.339157, 0.758269,
		-0.792891, 0.055143, -0.606864,
		-0.247635, -0.939112, 0.238212,
		28.920168, 37.663589, 51.494045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389107, 38.347847, 51.462585>,  <29.093513, 38.320969, 51.327297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389107, 38.347847, 51.462585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.529005, 38.022984, 51.649384>,  <28.612944, 37.828068, 51.761463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.529005, 38.022984, 51.649384>,  <28.389107, 38.347847, 51.462585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529005, 38.022984, 51.649384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486354, 0.268642, 0.831439,
		-0.800712, -0.517915, -0.301039,
		0.349743, -0.812155, 0.466994,
		28.633928, 37.779339, 51.789482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841492, 38.206215, 51.817505>,  <28.389107, 38.347847, 51.462585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841492, 38.206215, 51.817505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131350, 37.999939, 52.000351>,  <28.305265, 37.876175, 52.110058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131350, 37.999939, 52.000351>,  <27.841492, 38.206215, 51.817505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131350, 37.999939, 52.000351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392922, 0.235752, 0.888838,
		-0.566128, -0.823704, -0.031787,
		0.724646, -0.515686, 0.457117,
		28.348743, 37.845234, 52.137486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527260, 37.844296, 52.308128>,  <27.841492, 38.206215, 51.817505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527260, 37.844296, 52.308128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910236, 37.811195, 52.418732>,  <28.140022, 37.791336, 52.485096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910236, 37.811195, 52.418732>,  <27.527260, 37.844296, 52.308128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910236, 37.811195, 52.418732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260051, 0.168301, 0.950815,
		-0.125222, -0.982256, 0.139617,
		0.957441, -0.082755, 0.276511,
		28.197468, 37.786369, 52.501686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513798, 37.383202, 52.856552>,  <27.527260, 37.844296, 52.308128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513798, 37.383202, 52.856552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837637, 37.615616, 52.889900>,  <28.031940, 37.755062, 52.909908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837637, 37.615616, 52.889900>,  <27.513798, 37.383202, 52.856552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837637, 37.615616, 52.889900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259667, 0.227133, 0.938607,
		0.526425, -0.781544, 0.334762,
		0.809599, 0.581033, 0.083373,
		28.080517, 37.789925, 52.914913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732796, 37.147045, 53.443069>,  <27.513798, 37.383202, 52.856552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732796, 37.147045, 53.443069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891970, 37.511971, 53.404434>,  <27.987474, 37.730927, 53.381252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891970, 37.511971, 53.404434>,  <27.732796, 37.147045, 53.443069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891970, 37.511971, 53.404434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236042, 0.203558, 0.950183,
		0.886528, -0.355311, 0.296347,
		0.397935, 0.912315, -0.096591,
		28.011351, 37.785664, 53.375458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910027, 37.208534, 54.142422>,  <27.732796, 37.147045, 53.443069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910027, 37.208534, 54.142422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912991, 37.574806, 53.981689>,  <27.914770, 37.794571, 53.885250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912991, 37.574806, 53.981689>,  <27.910027, 37.208534, 54.142422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912991, 37.574806, 53.981689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091849, 0.399523, 0.912110,
		0.995745, -0.043669, -0.081143,
		0.007412, 0.915682, -0.401834,
		27.915215, 37.849510, 53.861137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460218, 37.500443, 54.413391>,  <27.910027, 37.208534, 54.142422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460218, 37.500443, 54.413391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216885, 37.799870, 54.307888>,  <28.070885, 37.979527, 54.244587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216885, 37.799870, 54.307888>,  <28.460218, 37.500443, 54.413391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216885, 37.799870, 54.307888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141504, 0.429297, 0.892009,
		0.780963, 0.505319, -0.367082,
		-0.608337, 0.748570, -0.263761,
		28.034384, 38.024441, 54.228760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635992, 38.132954, 54.818142>,  <28.460218, 37.500443, 54.413391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635992, 38.132954, 54.818142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276505, 38.225864, 54.669361>,  <28.060812, 38.281612, 54.580093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276505, 38.225864, 54.669361>,  <28.635992, 38.132954, 54.818142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276505, 38.225864, 54.669361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126121, 0.675449, 0.726541,
		0.419999, 0.699867, -0.577743,
		-0.898718, 0.232282, -0.371956,
		28.006889, 38.295547, 54.557774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615356, 38.875805, 54.789383>,  <28.635992, 38.132954, 54.818142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615356, 38.875805, 54.789383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237902, 38.743927, 54.777699>,  <28.011429, 38.664803, 54.770687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237902, 38.743927, 54.777699>,  <28.615356, 38.875805, 54.789383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237902, 38.743927, 54.777699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226623, 0.579271, 0.782999,
		-0.241228, 0.745486, -0.621337,
		-0.943637, -0.329691, -0.029208,
		27.954811, 38.645020, 54.768936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168169, 39.416489, 54.641788>,  <28.615356, 38.875805, 54.789383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168169, 39.416489, 54.641788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959831, 39.139015, 54.840797>,  <27.834829, 38.972530, 54.960201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959831, 39.139015, 54.840797>,  <28.168169, 39.416489, 54.641788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959831, 39.139015, 54.840797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217768, 0.671503, 0.708280,
		-0.825409, 0.260557, -0.500809,
		-0.520842, -0.693681, 0.497523,
		27.803579, 38.930912, 54.990055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597513, 39.762527, 54.909622>,  <28.168169, 39.416489, 54.641788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597513, 39.762527, 54.909622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582502, 39.438251, 55.143330>,  <27.573496, 39.243687, 55.283554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582502, 39.438251, 55.143330>,  <27.597513, 39.762527, 54.909622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582502, 39.438251, 55.143330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041247, 0.585437, 0.809668,
		-0.998444, 0.006285, -0.055409,
		-0.037528, -0.810693, 0.584267,
		27.571243, 39.195042, 55.318611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157595, 39.964283, 55.481937>,  <27.597513, 39.762527, 54.909622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157595, 39.964283, 55.481937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376671, 39.648766, 55.593536>,  <27.508116, 39.459457, 55.660496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376671, 39.648766, 55.593536>,  <27.157595, 39.964283, 55.481937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376671, 39.648766, 55.593536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219676, 0.457333, 0.861736,
		-0.807327, -0.410675, 0.423755,
		0.547691, -0.788792, 0.279002,
		27.540977, 39.412128, 55.677238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004940, 39.938602, 56.106220>,  <27.157595, 39.964283, 55.481937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004940, 39.938602, 56.106220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334852, 39.714195, 56.077938>,  <27.532799, 39.579552, 56.060970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334852, 39.714195, 56.077938>,  <27.004940, 39.938602, 56.106220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334852, 39.714195, 56.077938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402853, 0.495252, 0.769698,
		-0.396797, -0.663314, 0.634481,
		0.824779, -0.561017, -0.070703,
		27.582287, 39.545891, 56.056728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.116249, 36.623199, 58.918331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741783, 36.733196, 58.830715>,  <34.517105, 36.799194, 58.778145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741783, 36.733196, 58.830715>,  <35.116249, 36.623199, 58.918331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741783, 36.733196, 58.830715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088573, -0.418469, -0.903902,
		-0.340231, -0.865599, 0.367398,
		-0.936161, 0.274994, -0.219044,
		34.460934, 36.815693, 58.765003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714886, 35.942780, 58.752579>,  <35.116249, 36.623199, 58.918331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714886, 35.942780, 58.752579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562088, 36.272202, 58.584846>,  <34.470409, 36.469856, 58.484207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562088, 36.272202, 58.584846>,  <34.714886, 35.942780, 58.752579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562088, 36.272202, 58.584846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037670, -0.439486, -0.897459,
		-0.923395, -0.358624, 0.136860,
		-0.381999, 0.823553, -0.419329,
		34.447487, 36.519268, 58.459049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214314, 35.617088, 58.289581>,  <34.714886, 35.942780, 58.752579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214314, 35.617088, 58.289581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252777, 35.995544, 58.165924>,  <34.275856, 36.222618, 58.091728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252777, 35.995544, 58.165924>,  <34.214314, 35.617088, 58.289581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252777, 35.995544, 58.165924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002097, -0.310391, -0.950607,
		-0.995364, 0.092061, -0.027864,
		0.096163, 0.946141, -0.309145,
		34.281628, 36.279388, 58.073181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758480, 35.665531, 57.841892>,  <34.214314, 35.617088, 58.289581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758480, 35.665531, 57.841892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.026730, 35.951557, 57.762951>,  <34.187679, 36.123173, 57.715584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.026730, 35.951557, 57.762951>,  <33.758480, 35.665531, 57.841892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026730, 35.951557, 57.762951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061455, -0.211580, -0.975427,
		-0.739245, 0.666275, -0.097947,
		0.670626, 0.715060, -0.197355,
		34.227917, 36.166077, 57.703743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402855, 36.210712, 57.391842>,  <33.758480, 35.665531, 57.841892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402855, 36.210712, 57.391842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800144, 36.214584, 57.345531>,  <34.038521, 36.216908, 57.317745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800144, 36.214584, 57.345531>,  <33.402855, 36.210712, 57.391842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800144, 36.214584, 57.345531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115436, -0.030486, -0.992847,
		-0.013142, 0.999488, -0.029162,
		0.993228, 0.009682, -0.115778,
		34.098114, 36.217487, 57.310799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439945, 36.614307, 56.795845>,  <33.402855, 36.210712, 57.391842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439945, 36.614307, 56.795845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782993, 36.420784, 56.865612>,  <33.988823, 36.304672, 56.907475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782993, 36.420784, 56.865612>,  <33.439945, 36.614307, 56.795845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782993, 36.420784, 56.865612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128824, -0.126244, -0.983599,
		0.497891, 0.866022, -0.045944,
		0.857619, -0.483806, 0.174420,
		34.040279, 36.275642, 56.917938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847965, 36.676884, 56.188404>,  <33.439945, 36.614307, 56.795845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847965, 36.676884, 56.188404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024609, 36.358471, 56.353966>,  <34.130596, 36.167423, 56.453300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024609, 36.358471, 56.353966>,  <33.847965, 36.676884, 56.188404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024609, 36.358471, 56.353966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277217, -0.317686, -0.906767,
		0.853306, 0.515178, 0.080380,
		0.441611, -0.796032, 0.413900,
		34.157093, 36.119659, 56.478134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447632, 36.554420, 55.820885>,  <33.847965, 36.676884, 56.188404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447632, 36.554420, 55.820885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410809, 36.200531, 56.003662>,  <34.388714, 35.988197, 56.113327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410809, 36.200531, 56.003662>,  <34.447632, 36.554420, 55.820885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410809, 36.200531, 56.003662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240969, -0.465043, -0.851862,
		0.966157, 0.031687, 0.256001,
		-0.092059, -0.884721, 0.456941,
		34.383190, 35.935116, 56.140743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000961, 36.152016, 55.603378>,  <34.447632, 36.554420, 55.820885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000961, 36.152016, 55.603378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695889, 35.917645, 55.712917>,  <34.512844, 35.777020, 55.778641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695889, 35.917645, 55.712917>,  <35.000961, 36.152016, 55.603378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695889, 35.917645, 55.712917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105249, -0.530203, -0.841313,
		0.638148, -0.612836, 0.466047,
		-0.762686, -0.585933, 0.273848,
		34.467083, 35.741863, 55.795071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249943, 35.460785, 55.493328>,  <35.000961, 36.152016, 55.603378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249943, 35.460785, 55.493328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854382, 35.407810, 55.520264>,  <34.617046, 35.376026, 55.536423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854382, 35.407810, 55.520264>,  <35.249943, 35.460785, 55.493328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854382, 35.407810, 55.520264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036000, -0.653302, -0.756241,
		0.144146, -0.745423, 0.650820,
		-0.988901, -0.132439, 0.067335,
		34.557713, 35.368080, 55.540462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187447, 34.775272, 55.551044>,  <35.249943, 35.460785, 55.493328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187447, 34.775272, 55.551044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830002, 34.911041, 55.433575>,  <34.615536, 34.992500, 55.363094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830002, 34.911041, 55.433575>,  <35.187447, 34.775272, 55.551044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830002, 34.911041, 55.433575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001984, -0.651316, -0.758804,
		-0.448827, -0.678662, 0.581354,
		-0.893616, 0.339418, -0.293675,
		34.561916, 35.012867, 55.345470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824989, 34.176132, 55.435699>,  <35.187447, 34.775272, 55.551044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824989, 34.176132, 55.435699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617023, 34.458328, 55.243046>,  <34.492245, 34.627647, 55.127453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617023, 34.458328, 55.243046>,  <34.824989, 34.176132, 55.435699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617023, 34.458328, 55.243046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105564, -0.506444, -0.855787,
		-0.847672, -0.495777, 0.188832,
		-0.519912, 0.705493, -0.481635,
		34.461048, 34.669975, 55.098557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454315, 33.822628, 54.970974>,  <34.824989, 34.176132, 55.435699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454315, 33.822628, 54.970974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436325, 34.188690, 54.810741>,  <34.425533, 34.408329, 54.714603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436325, 34.188690, 54.810741>,  <34.454315, 33.822628, 54.970974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436325, 34.188690, 54.810741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127653, -0.392436, -0.910878,
		-0.990799, -0.092099, -0.099174,
		-0.044971, 0.915157, -0.400582,
		34.422832, 34.463238, 54.690567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055946, 33.757782, 54.326302>,  <34.454315, 33.822628, 54.970974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055946, 33.757782, 54.326302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298767, 34.074947, 54.305187>,  <34.444458, 34.265247, 54.292519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298767, 34.074947, 54.305187>,  <34.055946, 33.757782, 54.326302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298767, 34.074947, 54.305187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234700, -0.242358, -0.941370,
		-0.759215, 0.559069, -0.333219,
		0.607049, 0.792909, -0.052789,
		34.480881, 34.312820, 54.289352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278030, 33.769943, 54.101089>,  <34.055946, 33.757782, 54.326302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278030, 33.769943, 54.101089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044174, 33.458511, 54.009872>,  <32.903858, 33.271652, 53.955143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044174, 33.458511, 54.009872>,  <33.278030, 33.769943, 54.101089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044174, 33.458511, 54.009872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521458, 0.145301, 0.840814,
		-0.621508, 0.610490, -0.490948,
		-0.584644, -0.778582, -0.228039,
		32.868782, 33.224937, 53.941460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593159, 34.089100, 54.236443>,  <33.278030, 33.769943, 54.101089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593159, 34.089100, 54.236443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.569878, 33.690365, 54.258064>,  <32.555908, 33.451122, 54.271038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.569878, 33.690365, 54.258064>,  <32.593159, 34.089100, 54.236443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569878, 33.690365, 54.258064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578185, 0.077804, 0.812188,
		-0.813827, 0.016020, -0.580887,
		-0.058207, -0.996840, 0.054056,
		32.552414, 33.391312, 54.274281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972338, 34.071918, 54.373730>,  <32.593159, 34.089100, 54.236443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972338, 34.071918, 54.373730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122658, 33.711418, 54.459999>,  <32.212849, 33.495117, 54.511761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122658, 33.711418, 54.459999>,  <31.972338, 34.071918, 54.373730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122658, 33.711418, 54.459999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416047, 0.043874, 0.908284,
		-0.828058, -0.431063, -0.358476,
		0.375800, -0.901254, 0.215673,
		32.235397, 33.441040, 54.524700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447691, 33.679569, 54.635929>,  <31.972338, 34.071918, 54.373730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447691, 33.679569, 54.635929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784286, 33.519253, 54.780849>,  <31.986244, 33.423065, 54.867802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784286, 33.519253, 54.780849>,  <31.447691, 33.679569, 54.635929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784286, 33.519253, 54.780849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354770, 0.095853, 0.930027,
		-0.407472, -0.911143, -0.061528,
		0.841490, -0.400788, 0.362304,
		32.036732, 33.399017, 54.889542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178268, 33.114681, 55.031242>,  <31.447691, 33.679569, 54.635929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178268, 33.114681, 55.031242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.544603, 33.189274, 55.173492>,  <31.764404, 33.234028, 55.258842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.544603, 33.189274, 55.173492>,  <31.178268, 33.114681, 55.031242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544603, 33.189274, 55.173492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381275, 0.125984, 0.915837,
		0.125984, -0.974347, 0.186482,
		-0.915837, -0.186482, -0.355623,
		31.819355, 33.245220, 55.280178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178614, 32.821323, 55.715218>,  <31.178268, 33.114681, 55.031242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178614, 32.821323, 55.715218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508316, 33.046051, 55.743382>,  <31.706137, 33.180889, 55.760281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508316, 33.046051, 55.743382>,  <31.178614, 32.821323, 55.715218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508316, 33.046051, 55.743382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165695, 0.120422, 0.978797,
		0.541432, -0.818445, 0.192350,
		0.824255, 0.561824, 0.070412,
		31.755592, 33.214600, 55.764503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514748, 32.578835, 56.353966>,  <31.178614, 32.821323, 55.715218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514748, 32.578835, 56.353966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673702, 32.936043, 56.269493>,  <31.769075, 33.150368, 56.218811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673702, 32.936043, 56.269493>,  <31.514748, 32.578835, 56.353966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673702, 32.936043, 56.269493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080881, 0.263318, 0.961313,
		0.914081, -0.364931, 0.176867,
		0.397385, 0.893022, -0.211178,
		31.792917, 33.203949, 56.206139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117107, 32.750957, 56.844913>,  <31.514748, 32.578835, 56.353966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117107, 32.750957, 56.844913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992758, 33.113449, 56.730293>,  <31.918148, 33.330944, 56.661522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992758, 33.113449, 56.730293>,  <32.117107, 32.750957, 56.844913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992758, 33.113449, 56.730293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101744, 0.268029, 0.958023,
		0.944990, 0.326979, 0.008879,
		-0.310873, 0.906226, -0.286553,
		31.899496, 33.385319, 56.644329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608868, 33.312321, 57.181774>,  <32.117107, 32.750957, 56.844913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608868, 33.312321, 57.181774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270271, 33.497295, 57.076252>,  <32.067112, 33.608280, 57.012939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270271, 33.497295, 57.076252>,  <32.608868, 33.312321, 57.181774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270271, 33.497295, 57.076252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137956, 0.288064, 0.947622,
		0.514212, 0.838552, -0.180049,
		-0.846495, 0.462440, -0.263809,
		32.016323, 33.636028, 56.997108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690899, 33.992069, 57.294090>,  <32.608868, 33.312321, 57.181774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690899, 33.992069, 57.294090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293831, 33.945007, 57.305149>,  <32.055592, 33.916771, 57.311783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293831, 33.945007, 57.305149>,  <32.690899, 33.992069, 57.294090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293831, 33.945007, 57.305149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048685, 0.598624, 0.799549,
		-0.110622, 0.792342, -0.599964,
		-0.992669, -0.117657, 0.027645,
		31.996031, 33.909710, 57.313442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494808, 34.724789, 57.529964>,  <32.690899, 33.992069, 57.294090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494808, 34.724789, 57.529964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141163, 34.539406, 57.553802>,  <31.928976, 34.428177, 57.568108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141163, 34.539406, 57.553802>,  <32.494808, 34.724789, 57.529964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141163, 34.539406, 57.553802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256709, 0.588320, 0.766799,
		-0.390440, 0.662638, -0.639115,
		-0.884114, -0.463455, 0.059598,
		31.875929, 34.400368, 57.571682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922527, 35.255424, 57.510796>,  <32.494808, 34.724789, 57.529964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922527, 35.255424, 57.510796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806761, 34.920372, 57.696102>,  <31.737301, 34.719341, 57.807285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806761, 34.920372, 57.696102>,  <31.922527, 35.255424, 57.510796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806761, 34.920372, 57.696102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461817, 0.546110, 0.698920,
		-0.838430, -0.011665, -0.544885,
		-0.289414, -0.837632, 0.463262,
		31.719936, 34.669083, 57.835079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242811, 35.451153, 57.809383>,  <31.922527, 35.255424, 57.510796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242811, 35.451153, 57.809383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.360176, 35.126240, 58.011021>,  <31.430595, 34.931293, 58.132004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.360176, 35.126240, 58.011021>,  <31.242811, 35.451153, 57.809383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360176, 35.126240, 58.011021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372106, 0.388680, 0.842890,
		-0.880594, -0.434893, -0.188210,
		0.293414, -0.812278, 0.504096,
		31.448200, 34.882557, 58.162251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662596, 35.202389, 57.987137>,  <31.242811, 35.451153, 57.809383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662596, 35.202389, 57.987137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957172, 35.082523, 58.229740>,  <31.133919, 35.010605, 58.375301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957172, 35.082523, 58.229740>,  <30.662596, 35.202389, 57.987137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957172, 35.082523, 58.229740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475349, 0.408688, 0.779113,
		-0.481347, -0.862075, 0.158529,
		0.736443, -0.299667, 0.606508,
		31.178106, 34.992622, 58.411694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013969, 34.857113, 58.129044>,  <30.662596, 35.202389, 57.987137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013969, 34.857113, 58.129044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772234, 35.122841, 57.953110>,  <29.627193, 35.282280, 57.847549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772234, 35.122841, 57.953110>,  <30.013969, 34.857113, 58.129044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772234, 35.122841, 57.953110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147111, -0.449510, -0.881078,
		-0.783031, -0.597171, 0.173925,
		-0.604335, 0.664325, -0.439830,
		29.590933, 35.322140, 57.821159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575354, 34.391094, 57.683781>,  <30.013969, 34.857113, 58.129044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575354, 34.391094, 57.683781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563053, 34.773579, 57.567352>,  <29.555674, 35.003067, 57.497498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563053, 34.773579, 57.567352>,  <29.575354, 34.391094, 57.683781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563053, 34.773579, 57.567352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044163, -0.289622, -0.956122,
		-0.998551, -0.042256, -0.033322,
		-0.030751, 0.956208, -0.291069,
		29.553827, 35.060440, 57.480030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197781, 34.349224, 57.080872>,  <29.575354, 34.391094, 57.683781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197781, 34.349224, 57.080872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404293, 34.687836, 57.028969>,  <29.528200, 34.891003, 56.997826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404293, 34.687836, 57.028969>,  <29.197781, 34.349224, 57.080872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404293, 34.687836, 57.028969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033965, -0.171635, -0.984575,
		-0.855744, 0.503912, -0.117365,
		0.516283, 0.846531, -0.129761,
		29.559177, 34.941795, 56.990040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765387, 34.805248, 56.675568>,  <29.197781, 34.349224, 57.080872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765387, 34.805248, 56.675568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.146574, 34.917999, 56.631039>,  <29.375286, 34.985649, 56.604321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.146574, 34.917999, 56.631039>,  <28.765387, 34.805248, 56.675568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146574, 34.917999, 56.631039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080962, -0.117199, -0.989803,
		-0.292052, 0.952265, -0.088865,
		0.952969, 0.281880, -0.111325,
		29.432465, 35.002563, 56.597641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735838, 35.321827, 56.232204>,  <28.765387, 34.805248, 56.675568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735838, 35.321827, 56.232204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.113127, 35.189281, 56.222996>,  <29.339500, 35.109756, 56.217472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.113127, 35.189281, 56.222996>,  <28.735838, 35.321827, 56.232204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113127, 35.189281, 56.222996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079173, -0.156968, -0.984425,
		0.322585, 0.930356, -0.174290,
		0.943223, -0.331360, -0.023023,
		29.396093, 35.089874, 56.216087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066401, 35.725315, 55.662167>,  <28.735838, 35.321827, 56.232204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066401, 35.725315, 55.662167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258396, 35.384148, 55.744282>,  <29.373594, 35.179447, 55.793552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258396, 35.384148, 55.744282>,  <29.066401, 35.725315, 55.662167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258396, 35.384148, 55.744282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054596, -0.204510, -0.977341,
		0.875574, 0.480321, -0.051596,
		0.479989, -0.852917, 0.205287,
		29.402393, 35.128273, 55.805866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678556, 35.707546, 55.266090>,  <29.066401, 35.725315, 55.662167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678556, 35.707546, 55.266090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604555, 35.326057, 55.360901>,  <29.560154, 35.097164, 55.417786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604555, 35.326057, 55.360901>,  <29.678556, 35.707546, 55.266090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604555, 35.326057, 55.360901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117768, -0.260964, -0.958138,
		0.975656, -0.149345, 0.160598,
		-0.185003, -0.953726, 0.237023,
		29.549055, 35.039940, 55.432007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745148, 35.366245, 54.681149>,  <29.678556, 35.707546, 55.266090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745148, 35.366245, 54.681149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.698072, 35.016876, 54.870163>,  <29.669828, 34.807255, 54.983570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.698072, 35.016876, 54.870163>,  <29.745148, 35.366245, 54.681149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698072, 35.016876, 54.870163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050834, -0.480518, -0.875511,
		0.991749, -0.079014, 0.100950,
		-0.117686, -0.873419, 0.472536,
		29.662767, 34.754852, 55.011925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309805, 35.100994, 54.475746>,  <29.745148, 35.366245, 54.681149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309805, 35.100994, 54.475746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051422, 34.808716, 54.564125>,  <29.896393, 34.633347, 54.617153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051422, 34.808716, 54.564125>,  <30.309805, 35.100994, 54.475746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051422, 34.808716, 54.564125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389831, -0.564602, -0.727501,
		0.656330, -0.383804, 0.649558,
		-0.645959, -0.730698, 0.220946,
		29.857634, 34.589508, 54.630409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674257, 34.555794, 54.721130>,  <30.309805, 35.100994, 54.475746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674257, 34.555794, 54.721130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324814, 34.412952, 54.588898>,  <30.115147, 34.327248, 54.509560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324814, 34.412952, 54.588898>,  <30.674257, 34.555794, 54.721130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324814, 34.412952, 54.588898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474162, -0.777438, -0.413233,
		-0.109439, -0.517753, 0.848502,
		-0.873610, -0.357103, -0.330581,
		30.062731, 34.305820, 54.489723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730433, 33.835899, 54.708168>,  <30.674257, 34.555794, 54.721130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730433, 33.835899, 54.708168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.427528, 33.921692, 54.461411>,  <30.245787, 33.973167, 54.313354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.427528, 33.921692, 54.461411>,  <30.730433, 33.835899, 54.708168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427528, 33.921692, 54.461411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351689, -0.661998, -0.661871,
		-0.550338, -0.718163, 0.425875,
		-0.757260, 0.214477, -0.616893,
		30.200350, 33.986034, 54.276344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567823, 33.249569, 54.354511>,  <30.730433, 33.835899, 54.708168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567823, 33.249569, 54.354511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339058, 33.479668, 54.120586>,  <30.201797, 33.617725, 53.980232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339058, 33.479668, 54.120586>,  <30.567823, 33.249569, 54.354511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339058, 33.479668, 54.120586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158346, -0.622091, -0.766766,
		-0.804884, -0.531128, 0.264696,
		-0.571916, 0.575244, -0.584813,
		30.167482, 33.652241, 53.945141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115993, 32.788254, 54.037666>,  <30.567823, 33.249569, 54.354511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115993, 32.788254, 54.037666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.093391, 33.118176, 53.812634>,  <30.079830, 33.316128, 53.677612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.093391, 33.118176, 53.812634>,  <30.115993, 32.788254, 54.037666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093391, 33.118176, 53.812634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075283, -0.558359, -0.826177,
		-0.995560, -0.089035, -0.030545,
		-0.056504, 0.824808, -0.562583,
		30.076441, 33.365620, 53.643860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523310, 32.790318, 53.501709>,  <30.115993, 32.788254, 54.037666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523310, 32.790318, 53.501709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.817980, 33.017712, 53.355213>,  <29.994781, 33.154148, 53.267315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.817980, 33.017712, 53.355213>,  <29.523310, 32.790318, 53.501709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817980, 33.017712, 53.355213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081961, -0.462531, -0.882806,
		-0.671264, 0.680357, -0.294141,
		0.736673, 0.568488, -0.366243,
		30.038982, 33.188259, 53.245338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.917828, 39.448246, 56.723118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.304348, 39.402199, 56.631020>,  <27.536261, 39.374573, 56.575760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.304348, 39.402199, 56.631020>,  <26.917828, 39.448246, 56.723118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304348, 39.402199, 56.631020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257350, 0.452035, 0.854070,
		0.005761, -0.884541, 0.466426,
		0.966301, -0.115114, -0.230241,
		27.594238, 39.367664, 56.561947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189728, 39.197216, 57.329411>,  <26.917828, 39.448246, 56.723118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189728, 39.197216, 57.329411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.498947, 39.343975, 57.122421>,  <27.684479, 39.432030, 56.998230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.498947, 39.343975, 57.122421>,  <27.189728, 39.197216, 57.329411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498947, 39.343975, 57.122421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446305, 0.265112, 0.854709,
		0.450783, -0.891683, 0.041194,
		0.773050, 0.366903, -0.517471,
		27.730862, 39.454044, 56.967178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837418, 38.953312, 57.564831>,  <27.189728, 39.197216, 57.329411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837418, 38.953312, 57.564831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.851173, 39.318703, 57.402657>,  <27.859426, 39.537937, 57.305351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.851173, 39.318703, 57.402657>,  <27.837418, 38.953312, 57.564831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851173, 39.318703, 57.402657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342675, 0.370303, 0.863394,
		0.938825, -0.168622, -0.300292,
		0.034388, 0.913478, -0.405432,
		27.861490, 39.592747, 57.281029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481291, 39.219723, 57.703705>,  <27.837418, 38.953312, 57.564831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481291, 39.219723, 57.703705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.257353, 39.544842, 57.639278>,  <28.122990, 39.739914, 57.600624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.257353, 39.544842, 57.639278>,  <28.481291, 39.219723, 57.703705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257353, 39.544842, 57.639278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193843, 0.317457, 0.928249,
		0.805606, 0.488453, -0.335281,
		-0.559843, 0.812794, -0.161062,
		28.089399, 39.788681, 57.590961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804964, 39.785168, 58.161655>,  <28.481291, 39.219723, 57.703705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804964, 39.785168, 58.161655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.455643, 39.949020, 58.056168>,  <28.246050, 40.047333, 57.992874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.455643, 39.949020, 58.056168>,  <28.804964, 39.785168, 58.161655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455643, 39.949020, 58.056168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064218, 0.439804, 0.895795,
		0.482928, 0.799235, -0.357777,
		-0.873302, 0.409629, -0.263719,
		28.193651, 40.071911, 57.977051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817440, 40.494518, 58.359776>,  <28.804964, 39.785168, 58.161655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817440, 40.494518, 58.359776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.426096, 40.415634, 58.334743>,  <28.191290, 40.368305, 58.319725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.426096, 40.415634, 58.334743>,  <28.817440, 40.494518, 58.359776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426096, 40.415634, 58.334743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155211, 0.499568, 0.852256,
		-0.136813, 0.843528, -0.519368,
		-0.978362, -0.197212, -0.062578,
		28.132587, 40.356472, 58.315971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532513, 41.058453, 58.514263>,  <28.817440, 40.494518, 58.359776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532513, 41.058453, 58.514263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.228601, 40.806843, 58.580078>,  <28.046255, 40.655876, 58.619568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.228601, 40.806843, 58.580078>,  <28.532513, 41.058453, 58.514263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228601, 40.806843, 58.580078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256574, 0.522591, 0.813061,
		-0.597420, 0.575527, -0.558443,
		-0.759776, -0.629021, 0.164540,
		28.000669, 40.618137, 58.629440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928648, 41.469101, 58.425865>,  <28.532513, 41.058453, 58.514263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928648, 41.469101, 58.425865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.841438, 41.156891, 58.660213>,  <27.789112, 40.969566, 58.800823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.841438, 41.156891, 58.660213>,  <27.928648, 41.469101, 58.425865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841438, 41.156891, 58.660213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226910, 0.624406, 0.747415,
		-0.949198, 0.030016, -0.313246,
		-0.218027, -0.780523, 0.585874,
		27.776030, 40.922733, 58.835976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453037, 41.649895, 58.813244>,  <27.928648, 41.469101, 58.425865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453037, 41.649895, 58.813244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.558081, 41.327938, 59.026108>,  <27.621107, 41.134766, 59.153824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.558081, 41.327938, 59.026108>,  <27.453037, 41.649895, 58.813244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558081, 41.327938, 59.026108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142892, 0.512991, 0.846417,
		-0.954263, -0.298317, 0.019704,
		0.262609, -0.804889, 0.532156,
		27.636864, 41.086472, 59.185753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010462, 41.765926, 59.398998>,  <27.453037, 41.649895, 58.813244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010462, 41.765926, 59.398998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.305180, 41.508823, 59.482906>,  <27.482010, 41.354561, 59.533249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.305180, 41.508823, 59.482906>,  <27.010462, 41.765926, 59.398998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305180, 41.508823, 59.482906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115795, 0.425627, 0.897459,
		-0.666129, -0.636951, 0.388027,
		0.736793, -0.642755, 0.209767,
		27.526217, 41.315998, 59.545837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872078, 41.547623, 60.107338>,  <27.010462, 41.765926, 59.398998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872078, 41.547623, 60.107338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.261683, 41.475384, 60.052658>,  <27.495445, 41.432041, 60.019852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.261683, 41.475384, 60.052658>,  <26.872078, 41.547623, 60.107338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261683, 41.475384, 60.052658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186486, 0.296884, 0.936527,
		-0.128546, -0.937681, 0.322847,
		0.974012, -0.180593, -0.136701,
		27.553886, 41.421207, 60.011646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046543, 41.099174, 60.613697>,  <26.872078, 41.547623, 60.107338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046543, 41.099174, 60.613697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.344687, 41.330784, 60.481529>,  <27.523573, 41.469749, 60.402229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.344687, 41.330784, 60.481529>,  <27.046543, 41.099174, 60.613697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344687, 41.330784, 60.481529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324349, 0.118050, 0.938542,
		0.582443, -0.806720, -0.099816,
		0.745358, 0.579022, -0.330416,
		27.568295, 41.504490, 60.382404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395077, 40.417000, 60.865116>,  <27.046543, 41.099174, 60.613697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395077, 40.417000, 60.865116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.282562, 40.399136, 60.481682>,  <27.215054, 40.388416, 60.251621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.282562, 40.399136, 60.481682>,  <27.395077, 40.417000, 60.865116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282562, 40.399136, 60.481682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277881, 0.952328, -0.125909,
		0.918510, -0.301789, -0.255469,
		-0.281288, -0.044659, -0.958584,
		27.198175, 40.385738, 60.194107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821587, 40.178944, 61.434086>,  <27.395077, 40.417000, 60.865116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821587, 40.178944, 61.434086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.026579, 40.022171, 61.739700>,  <28.149574, 39.928108, 61.923069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.026579, 40.022171, 61.739700>,  <27.821587, 40.178944, 61.434086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026579, 40.022171, 61.739700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618777, -0.448358, -0.645051,
		0.595379, 0.803344, 0.012745,
		0.512483, -0.391936, 0.764034,
		28.180325, 39.904591, 61.968910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587511, 40.263084, 61.392342>,  <27.821587, 40.178944, 61.434086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587511, 40.263084, 61.392342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.503288, 39.931618, 61.599792>,  <28.452755, 39.732738, 61.724262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.503288, 39.931618, 61.599792>,  <28.587511, 40.263084, 61.392342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503288, 39.931618, 61.599792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520303, -0.544130, -0.658184,
		0.827618, 0.131259, 0.545729,
		-0.210555, -0.828669, 0.518627,
		28.440123, 39.683018, 61.755379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180399, 39.736073, 61.536324>,  <28.587511, 40.263084, 61.392342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180399, 39.736073, 61.536324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.843746, 39.522572, 61.569225>,  <28.641754, 39.394470, 61.588966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.843746, 39.522572, 61.569225>,  <29.180399, 39.736073, 61.536324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843746, 39.522572, 61.569225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280708, -0.562484, -0.777698,
		0.461364, -0.631446, 0.623233,
		-0.841633, -0.533748, 0.082258,
		28.591257, 39.362446, 61.593903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357407, 38.955357, 61.606361>,  <29.180399, 39.736073, 61.536324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357407, 38.955357, 61.606361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.978094, 38.979027, 61.481613>,  <28.750507, 38.993229, 61.406765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.978094, 38.979027, 61.481613>,  <29.357407, 38.955357, 61.606361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978094, 38.979027, 61.481613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168362, -0.739148, -0.652161,
		-0.269110, -0.670939, 0.690957,
		-0.948280, 0.059172, -0.311872,
		28.693611, 38.996780, 61.388050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335716, 38.266228, 61.596401>,  <29.357407, 38.955357, 61.606361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335716, 38.266228, 61.596401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048120, 38.419922, 61.364742>,  <28.875563, 38.512138, 61.225746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048120, 38.419922, 61.364742>,  <29.335716, 38.266228, 61.596401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048120, 38.419922, 61.364742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040298, -0.808835, -0.586653,
		-0.693851, -0.445137, 0.566061,
		-0.718991, 0.384238, -0.579149,
		28.832422, 38.535194, 61.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948858, 37.751389, 61.497593>,  <29.335716, 38.266228, 61.596401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948858, 37.751389, 61.497593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.812243, 37.997299, 61.213230>,  <28.730272, 38.144848, 61.042610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.812243, 37.997299, 61.213230>,  <28.948858, 37.751389, 61.497593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812243, 37.997299, 61.213230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212141, -0.787301, -0.578924,
		-0.915612, -0.046913, 0.399316,
		-0.341541, 0.614781, -0.710910,
		28.709780, 38.181732, 60.999958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473743, 37.302013, 61.060841>,  <28.948858, 37.751389, 61.497593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473743, 37.302013, 61.060841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.548855, 37.617413, 60.826572>,  <28.593922, 37.806652, 60.686012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.548855, 37.617413, 60.826572>,  <28.473743, 37.302013, 61.060841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548855, 37.617413, 60.826572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030940, -0.600730, -0.798853,
		-0.981724, 0.131886, -0.137200,
		0.187778, 0.788498, -0.585671,
		28.605188, 37.853962, 60.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962788, 37.199947, 60.496365>,  <28.473743, 37.302013, 61.060841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962788, 37.199947, 60.496365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.266708, 37.431923, 60.378811>,  <28.449060, 37.571110, 60.308277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.266708, 37.431923, 60.378811>,  <27.962788, 37.199947, 60.496365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266708, 37.431923, 60.378811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053243, -0.506012, -0.860882,
		-0.647969, 0.638454, -0.415347,
		0.759804, 0.579939, -0.293887,
		28.494650, 37.605904, 60.290646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756996, 37.483002, 59.798424>,  <27.962788, 37.199947, 60.496365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756996, 37.483002, 59.798424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.156586, 37.482502, 59.816544>,  <28.396339, 37.482201, 59.827415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.156586, 37.482502, 59.816544>,  <27.756996, 37.483002, 59.798424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156586, 37.482502, 59.816544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034373, -0.630551, -0.775386,
		0.029538, 0.776147, -0.629860,
		0.998972, -0.001253, 0.045304,
		28.456278, 37.482124, 59.830135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875381, 37.479660, 59.101032>,  <27.756996, 37.483002, 59.798424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875381, 37.479660, 59.101032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.230200, 37.401863, 59.268517>,  <28.443090, 37.355183, 59.369007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.230200, 37.401863, 59.268517>,  <27.875381, 37.479660, 59.101032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230200, 37.401863, 59.268517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173595, -0.699868, -0.692856,
		0.427801, 0.687282, -0.587053,
		0.887046, -0.194495, 0.418713,
		28.496313, 37.343513, 59.394131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433626, 37.618698, 58.582634>,  <27.875381, 37.479660, 59.101032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433626, 37.618698, 58.582634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.602848, 37.368435, 58.844803>,  <28.704380, 37.218277, 59.002106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.602848, 37.368435, 58.844803>,  <28.433626, 37.618698, 58.582634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602848, 37.368435, 58.844803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418088, -0.506958, -0.753788,
		0.803884, 0.592918, 0.047108,
		0.423052, -0.625654, 0.655427,
		28.729763, 37.180740, 59.041431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081169, 37.541821, 58.421143>,  <28.433626, 37.618698, 58.582634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081169, 37.541821, 58.421143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.054163, 37.202518, 58.631248>,  <29.037960, 36.998936, 58.757313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.054163, 37.202518, 58.631248>,  <29.081169, 37.541821, 58.421143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054163, 37.202518, 58.631248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452550, -0.495230, -0.741584,
		0.889180, 0.187641, 0.417313,
		-0.067514, -0.848256, 0.525265,
		29.033909, 36.948040, 58.788830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633484, 37.215847, 58.145248>,  <29.081169, 37.541821, 58.421143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633484, 37.215847, 58.145248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465267, 36.913136, 58.345421>,  <29.364336, 36.731510, 58.465527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465267, 36.913136, 58.345421>,  <29.633484, 37.215847, 58.145248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465267, 36.913136, 58.345421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397477, -0.649508, -0.648190,
		0.815571, -0.073681, 0.573947,
		-0.420543, -0.756776, 0.500434,
		29.339104, 36.686104, 58.495552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124926, 36.761909, 58.251511>,  <29.633484, 37.215847, 58.145248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124926, 36.761909, 58.251511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.792553, 36.540432, 58.273354>,  <29.593130, 36.407547, 58.286461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.792553, 36.540432, 58.273354>,  <30.124926, 36.761909, 58.251511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792553, 36.540432, 58.273354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437939, -0.711427, -0.549618,
		0.343169, -0.432779, 0.833629,
		-0.830930, -0.553691, 0.054609,
		29.543274, 36.374325, 58.289738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312712, 36.155983, 58.453598>,  <30.124926, 36.761909, 58.251511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312712, 36.155983, 58.453598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978539, 36.083660, 58.245998>,  <29.778034, 36.040268, 58.121437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978539, 36.083660, 58.245998>,  <30.312712, 36.155983, 58.453598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978539, 36.083660, 58.245998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461117, -0.744418, -0.482921,
		-0.299037, -0.642768, 0.705284,
		-0.835433, -0.180807, -0.519000,
		29.727909, 36.029419, 58.090298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334478, 35.396778, 58.605072>,  <30.312712, 36.155983, 58.453598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334478, 35.396778, 58.605072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.712494, 35.293610, 58.685444>,  <30.939304, 35.231709, 58.733665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.712494, 35.293610, 58.685444>,  <30.334478, 35.396778, 58.605072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712494, 35.293610, 58.685444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045571, 0.712469, 0.700222,
		-0.323762, -0.652582, 0.685066,
		0.945041, -0.257924, 0.200931,
		30.996006, 35.216232, 58.745724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400099, 35.309803, 59.331390>,  <30.334478, 35.396778, 58.605072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400099, 35.309803, 59.331390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.784304, 35.345459, 59.225960>,  <31.014826, 35.366852, 59.162701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.784304, 35.345459, 59.225960>,  <30.400099, 35.309803, 59.331390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784304, 35.345459, 59.225960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160522, 0.596233, 0.786600,
		0.227266, -0.797848, 0.558380,
		0.960512, 0.089136, -0.263576,
		31.072456, 35.372200, 59.146889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774529, 35.303833, 59.958633>,  <30.400099, 35.309803, 59.331390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774529, 35.303833, 59.958633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042021, 35.465298, 59.708878>,  <31.202515, 35.562176, 59.559025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042021, 35.465298, 59.708878>,  <30.774529, 35.303833, 59.958633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042021, 35.465298, 59.708878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323395, 0.598271, 0.733136,
		0.669492, -0.692192, 0.269538,
		0.668727, 0.403662, -0.624389,
		31.242640, 35.586395, 59.521561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426653, 35.462238, 60.420738>,  <30.774529, 35.303833, 59.958633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426653, 35.462238, 60.420738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.485168, 35.697983, 60.102932>,  <31.520277, 35.839432, 59.912251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.485168, 35.697983, 60.102932>,  <31.426653, 35.462238, 60.420738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485168, 35.697983, 60.102932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181453, 0.773539, 0.607217,
		0.972458, -0.232996, 0.006218,
		0.146289, 0.589365, -0.794511,
		31.529055, 35.874794, 59.864578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016117, 35.711658, 60.524647>,  <31.426653, 35.462238, 60.420738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016117, 35.711658, 60.524647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.837313, 35.958961, 60.266056>,  <31.730030, 36.107346, 60.110901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.837313, 35.958961, 60.266056>,  <32.016117, 35.711658, 60.524647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837313, 35.958961, 60.266056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387025, 0.785232, 0.483345,
		0.806468, -0.034140, -0.590292,
		-0.447014, 0.618260, -0.646477,
		31.703209, 36.144440, 60.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381031, 36.227333, 60.588757>,  <32.016117, 35.711658, 60.524647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381031, 36.227333, 60.588757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067554, 36.397820, 60.408020>,  <31.879467, 36.500111, 60.299580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067554, 36.397820, 60.408020>,  <32.381031, 36.227333, 60.588757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067554, 36.397820, 60.408020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212515, 0.867514, 0.449730,
		0.583660, 0.256429, -0.770445,
		-0.783696, 0.426220, -0.451838,
		31.832445, 36.525684, 60.272469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648197, 36.809277, 60.318024>,  <32.381031, 36.227333, 60.588757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648197, 36.809277, 60.318024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252121, 36.833698, 60.368282>,  <32.014473, 36.848351, 60.398438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252121, 36.833698, 60.368282>,  <32.648197, 36.809277, 60.318024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252121, 36.833698, 60.368282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114963, 0.867092, 0.484701,
		-0.079354, 0.494393, -0.865609,
		-0.990195, 0.061050, 0.125644,
		31.955063, 36.852013, 60.405975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492172, 37.463390, 60.226685>,  <32.648197, 36.809277, 60.318024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492172, 37.463390, 60.226685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.184357, 37.342163, 60.451530>,  <31.999668, 37.269428, 60.586437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.184357, 37.342163, 60.451530>,  <32.492172, 37.463390, 60.226685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184357, 37.342163, 60.451530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022027, 0.867096, 0.497654,
		-0.638226, 0.395343, -0.660584,
		-0.769534, -0.303065, 0.562111,
		31.953497, 37.251244, 60.620163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762062, 37.977551, 60.678955>,  <32.492172, 37.463390, 60.226685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762062, 37.977551, 60.678955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144886, 38.021652, 60.786198>,  <33.374580, 38.048115, 60.850544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144886, 38.021652, 60.786198>,  <32.762062, 37.977551, 60.678955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144886, 38.021652, 60.786198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283295, -0.159487, -0.945679,
		-0.061507, 0.981024, -0.183874,
		0.957058, 0.110256, 0.268109,
		33.432003, 38.054729, 60.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031471, 38.492443, 60.291843>,  <32.762062, 37.977551, 60.678955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031471, 38.492443, 60.291843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306702, 38.222958, 60.399666>,  <33.471840, 38.061264, 60.464359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306702, 38.222958, 60.399666>,  <33.031471, 38.492443, 60.291843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306702, 38.222958, 60.399666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314782, -0.057579, -0.947416,
		0.653809, 0.736745, 0.172455,
		0.688074, -0.673715, 0.269560,
		33.513123, 38.020844, 60.480534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505360, 38.463863, 59.698215>,  <33.031471, 38.492443, 60.291843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505360, 38.463863, 59.698215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645599, 38.141041, 59.888264>,  <33.729744, 37.947346, 60.002293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645599, 38.141041, 59.888264>,  <33.505360, 38.463863, 59.698215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645599, 38.141041, 59.888264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312496, -0.377437, -0.871715,
		0.882852, 0.454095, 0.119874,
		0.350597, -0.807056, 0.475124,
		33.750778, 37.898926, 60.030800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105534, 38.408302, 59.528965>,  <33.505360, 38.463863, 59.698215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105534, 38.408302, 59.528965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.000710, 38.040340, 59.645653>,  <33.937813, 37.819565, 59.715668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.000710, 38.040340, 59.645653>,  <34.105534, 38.408302, 59.528965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000710, 38.040340, 59.645653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453046, -0.384177, -0.804461,
		0.852099, -0.078654, 0.517436,
		-0.262062, -0.919903, 0.291723,
		33.922092, 37.764370, 59.733170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615864, 37.952095, 59.261925>,  <34.105534, 38.408302, 59.528965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615864, 37.952095, 59.261925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328575, 37.681164, 59.325657>,  <34.156200, 37.518604, 59.363895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328575, 37.681164, 59.325657>,  <34.615864, 37.952095, 59.261925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328575, 37.681164, 59.325657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307604, -0.514471, -0.800437,
		0.624126, -0.525882, 0.577853,
		-0.718224, -0.677324, 0.159331,
		34.113110, 37.477966, 59.373455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967812, 37.342442, 59.244610>,  <34.615864, 37.952095, 59.261925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967812, 37.342442, 59.244610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.592510, 37.209019, 59.207905>,  <34.367329, 37.128963, 59.185883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.592510, 37.209019, 59.207905>,  <34.967812, 37.342442, 59.244610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592510, 37.209019, 59.207905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275049, -0.558365, -0.782673,
		0.209831, -0.759584, 0.615633,
		-0.938253, -0.333558, -0.091761,
		34.311035, 37.108952, 59.180378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.571875, 43.014091, 61.249683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258043, 42.877651, 61.042576>,  <29.069744, 42.795788, 60.918312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258043, 42.877651, 61.042576>,  <29.571875, 43.014091, 61.249683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258043, 42.877651, 61.042576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619686, -0.403482, -0.673195,
		0.020718, -0.849029, 0.527939,
		-0.784576, -0.341104, -0.517772,
		29.022671, 42.775318, 60.887245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886688, 42.387451, 60.947895>,  <29.571875, 43.014091, 61.249683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886688, 42.387451, 60.947895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542095, 42.421581, 60.747669>,  <29.335340, 42.442059, 60.627533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542095, 42.421581, 60.747669>,  <29.886688, 42.387451, 60.947895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542095, 42.421581, 60.747669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473035, -0.223573, -0.852205,
		-0.184625, -0.970946, 0.152244,
		-0.861482, 0.085322, -0.500569,
		29.283651, 42.447178, 60.597500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725666, 41.753391, 60.723209>,  <29.886688, 42.387451, 60.947895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725666, 41.753391, 60.723209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536983, 42.025246, 60.498501>,  <29.423775, 42.188358, 60.363674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536983, 42.025246, 60.498501>,  <29.725666, 41.753391, 60.723209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536983, 42.025246, 60.498501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458277, -0.355338, -0.814688,
		-0.753309, -0.641743, -0.143845,
		-0.471706, 0.679633, -0.561776,
		29.395472, 42.229134, 60.329967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556490, 41.302662, 60.187439>,  <29.725666, 41.753391, 60.723209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556490, 41.302662, 60.187439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586479, 41.682178, 60.064690>,  <29.604473, 41.909889, 59.991039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586479, 41.682178, 60.064690>,  <29.556490, 41.302662, 60.187439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586479, 41.682178, 60.064690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476367, -0.304429, -0.824862,
		-0.876044, -0.084341, -0.474798,
		0.074972, 0.948794, -0.306871,
		29.608971, 41.966816, 59.972630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430155, 41.249969, 59.417763>,  <29.556490, 41.302662, 60.187439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430155, 41.249969, 59.417763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578211, 41.610035, 59.509586>,  <29.667044, 41.826077, 59.564678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578211, 41.610035, 59.509586>,  <29.430155, 41.249969, 59.417763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578211, 41.610035, 59.509586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669908, -0.087443, -0.737276,
		-0.643599, 0.426675, -0.635396,
		0.370139, 0.900168, 0.229555,
		29.689253, 41.880085, 59.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314394, 41.765713, 58.810234>,  <29.430155, 41.249969, 59.417763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314394, 41.765713, 58.810234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633703, 41.862221, 59.030975>,  <29.825289, 41.920128, 59.163422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633703, 41.862221, 59.030975>,  <29.314394, 41.765713, 58.810234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633703, 41.862221, 59.030975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582447, -0.075974, -0.809310,
		-0.153338, 0.967479, -0.201176,
		0.798275, 0.241272, 0.551856,
		29.873186, 41.934601, 59.196533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591087, 42.226402, 58.388378>,  <29.314394, 41.765713, 58.810234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591087, 42.226402, 58.388378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893047, 42.117073, 58.626846>,  <30.074223, 42.051476, 58.769928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893047, 42.117073, 58.626846>,  <29.591087, 42.226402, 58.388378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893047, 42.117073, 58.626846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631472, 0.057429, -0.773269,
		0.177113, 0.960207, 0.215948,
		0.754900, -0.273321, 0.596173,
		30.119516, 42.035076, 58.805698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136080, 42.690857, 58.224594>,  <29.591087, 42.226402, 58.388378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136080, 42.690857, 58.224594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320854, 42.387333, 58.408257>,  <30.431719, 42.205219, 58.518452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320854, 42.387333, 58.408257>,  <30.136080, 42.690857, 58.224594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320854, 42.387333, 58.408257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656816, -0.055203, -0.752028,
		0.595993, 0.648967, 0.472899,
		0.461936, -0.758811, 0.459152,
		30.459435, 42.159691, 58.546001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917055, 42.850132, 58.150867>,  <30.136080, 42.690857, 58.224594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917055, 42.850132, 58.150867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899647, 42.460239, 58.238510>,  <30.889202, 42.226303, 58.291096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899647, 42.460239, 58.238510>,  <30.917055, 42.850132, 58.150867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899647, 42.460239, 58.238510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743445, -0.178107, -0.644645,
		0.667379, 0.134840, 0.732409,
		-0.043523, -0.974729, 0.219111,
		30.886589, 42.167820, 58.304245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544947, 42.653255, 57.804329>,  <30.917055, 42.850132, 58.150867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544947, 42.653255, 57.804329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348814, 42.308681, 57.857243>,  <31.231134, 42.101936, 57.888992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348814, 42.308681, 57.857243>,  <31.544947, 42.653255, 57.804329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348814, 42.308681, 57.857243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539018, -0.419015, -0.730676,
		0.684861, -0.286970, 0.669787,
		-0.490332, -0.861438, 0.132285,
		31.201714, 42.050251, 57.896927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072235, 42.089638, 57.828461>,  <31.544947, 42.653255, 57.804329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072235, 42.089638, 57.828461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722912, 41.916256, 57.739506>,  <31.513319, 41.812225, 57.686134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722912, 41.916256, 57.739506>,  <32.072235, 42.089638, 57.828461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722912, 41.916256, 57.739506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431633, -0.476745, -0.765772,
		0.225907, -0.764741, 0.603437,
		-0.873304, -0.433457, -0.222387,
		31.460920, 41.786221, 57.672791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213516, 41.470757, 57.708553>,  <32.072235, 42.089638, 57.828461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213516, 41.470757, 57.708553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873901, 41.546928, 57.511425>,  <31.670132, 41.592632, 57.393147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873901, 41.546928, 57.511425>,  <32.213516, 41.470757, 57.708553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873901, 41.546928, 57.511425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453231, -0.216839, -0.864617,
		-0.271511, -0.957453, 0.097796,
		-0.849037, 0.190429, -0.492821,
		31.619190, 41.604057, 57.363579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950977, 41.284565, 57.775703>,  <32.213516, 41.470757, 57.708553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950977, 41.284565, 57.775703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258778, 41.114029, 57.965908>,  <33.443459, 41.011707, 58.080029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258778, 41.114029, 57.965908>,  <32.950977, 41.284565, 57.775703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258778, 41.114029, 57.965908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399781, 0.259073, 0.879236,
		-0.498045, -0.866669, 0.028913,
		0.769497, -0.426341, 0.475508,
		33.489628, 40.986126, 58.108559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742920, 40.694401, 58.170490>,  <32.950977, 41.284565, 57.775703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742920, 40.694401, 58.170490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080246, 40.805504, 58.354515>,  <33.282642, 40.872166, 58.464931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080246, 40.805504, 58.354515>,  <32.742920, 40.694401, 58.170490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080246, 40.805504, 58.354515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528258, 0.271110, 0.804638,
		0.098768, -0.921601, 0.375361,
		0.843320, 0.277760, 0.460067,
		33.333241, 40.888832, 58.492535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551544, 40.533920, 58.769543>,  <32.742920, 40.694401, 58.170490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551544, 40.533920, 58.769543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859116, 40.779640, 58.840397>,  <33.043659, 40.927071, 58.882912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859116, 40.779640, 58.840397>,  <32.551544, 40.533920, 58.769543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859116, 40.779640, 58.840397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362906, 0.191281, 0.911982,
		0.526349, -0.765536, 0.370016,
		0.768932, 0.614302, 0.177137,
		33.089794, 40.963932, 58.893539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887970, 40.326622, 59.386700>,  <32.551544, 40.533920, 58.769543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887970, 40.326622, 59.386700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990753, 40.711887, 59.354969>,  <33.052422, 40.943047, 59.335930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990753, 40.711887, 59.354969>,  <32.887970, 40.326622, 59.386700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990753, 40.711887, 59.354969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233500, 0.141525, 0.962002,
		0.937791, -0.228670, 0.261264,
		0.256956, 0.963162, -0.079327,
		33.067841, 41.000835, 59.331169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073917, 40.460110, 60.034824>,  <32.887970, 40.326622, 59.386700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073917, 40.460110, 60.034824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159428, 40.826504, 59.899014>,  <33.210732, 41.046341, 59.817528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159428, 40.826504, 59.899014>,  <33.073917, 40.460110, 60.034824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159428, 40.826504, 59.899014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145738, 0.373576, 0.916079,
		0.965951, -0.146349, 0.213353,
		0.213771, 0.915982, -0.339528,
		33.223560, 41.101299, 59.797153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544888, 40.791122, 60.575939>,  <33.073917, 40.460110, 60.034824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544888, 40.791122, 60.575939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378517, 41.078453, 60.352867>,  <33.278694, 41.250851, 60.219025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378517, 41.078453, 60.352867>,  <33.544888, 40.791122, 60.575939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378517, 41.078453, 60.352867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138021, 0.556278, 0.819454,
		0.898863, 0.417805, -0.132226,
		-0.415927, 0.718327, -0.557683,
		33.253738, 41.293953, 60.185562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916866, 41.387810, 60.686211>,  <33.544888, 40.791122, 60.575939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916866, 41.387810, 60.686211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535782, 41.462898, 60.590626>,  <33.307133, 41.507950, 60.533276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535782, 41.462898, 60.590626>,  <33.916866, 41.387810, 60.686211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535782, 41.462898, 60.590626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110408, 0.518795, 0.847739,
		0.283106, 0.834035, -0.473537,
		-0.952713, 0.187718, -0.238958,
		33.249969, 41.519215, 60.518940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812668, 41.966171, 60.908722>,  <33.916866, 41.387810, 60.686211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812668, 41.966171, 60.908722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435802, 41.835709, 60.877884>,  <33.209682, 41.757431, 60.859383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435802, 41.835709, 60.877884>,  <33.812668, 41.966171, 60.908722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435802, 41.835709, 60.877884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220192, 0.428990, 0.876061,
		-0.252661, 0.842371, -0.475997,
		-0.942167, -0.326157, -0.077094,
		33.153152, 41.737862, 60.854755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459602, 42.487190, 61.241470>,  <33.812668, 41.966171, 60.908722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459602, 42.487190, 61.241470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239128, 42.153763, 61.256218>,  <33.106842, 41.953705, 61.265068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239128, 42.153763, 61.256218>,  <33.459602, 42.487190, 61.241470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239128, 42.153763, 61.256218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244283, 0.203466, 0.948118,
		-0.797823, 0.513581, -0.315774,
		-0.551184, -0.833568, 0.036871,
		33.073772, 41.903694, 61.267281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928642, 42.705547, 61.716000>,  <33.459602, 42.487190, 61.241470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928642, 42.705547, 61.716000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931099, 42.306568, 61.687565>,  <32.932575, 42.067181, 61.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931099, 42.306568, 61.687565>,  <32.928642, 42.705547, 61.716000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931099, 42.306568, 61.687565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092026, -0.071353, 0.993197,
		-0.995738, 0.000439, -0.092230,
		0.006145, -0.997451, -0.071089,
		32.932941, 42.007332, 61.666237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397614, 42.524632, 62.065079>,  <32.928642, 42.705547, 61.716000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397614, 42.524632, 62.065079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661884, 42.224606, 62.077080>,  <32.820446, 42.044590, 62.084282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661884, 42.224606, 62.077080>,  <32.397614, 42.524632, 62.065079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661884, 42.224606, 62.077080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103292, -0.051247, 0.993330,
		-0.743526, -0.659373, -0.111334,
		0.660681, -0.750067, 0.030004,
		32.860088, 41.999584, 62.086082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107800, 41.926941, 62.493782>,  <32.397614, 42.524632, 62.065079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107800, 41.926941, 62.493782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507622, 41.915371, 62.490974>,  <32.747517, 41.908428, 62.489288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507622, 41.915371, 62.490974>,  <32.107800, 41.926941, 62.493782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507622, 41.915371, 62.490974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005167, -0.063761, 0.997952,
		-0.029309, -0.997546, -0.063584,
		0.999557, -0.028920, -0.007023,
		32.807487, 41.906693, 62.488869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527489, 41.320610, 62.769802>,  <32.107800, 41.926941, 62.493782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527489, 41.320610, 62.769802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773796, 41.623150, 62.858131>,  <32.921581, 41.804672, 62.911129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773796, 41.623150, 62.858131>,  <32.527489, 41.320610, 62.769802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773796, 41.623150, 62.858131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152347, -0.160681, 0.975178,
		0.773056, -0.634129, 0.016285,
		0.615772, 0.756348, 0.220823,
		32.958527, 41.850056, 62.924377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992481, 41.021851, 63.121040>,  <32.527489, 41.320610, 62.769802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992481, 41.021851, 63.121040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941086, 41.406887, 63.216457>,  <32.910248, 41.637909, 63.273708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941086, 41.406887, 63.216457>,  <32.992481, 41.021851, 63.121040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941086, 41.406887, 63.216457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081808, -0.229431, 0.969881,
		0.988331, 0.144132, -0.049269,
		-0.128487, 0.962594, 0.238545,
		32.902538, 41.695663, 63.288021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572582, 40.454582, 62.919449>,  <32.992481, 41.021851, 63.121040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572582, 40.454582, 62.919449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531174, 40.137184, 63.159332>,  <32.506329, 39.946747, 63.303265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531174, 40.137184, 63.159332>,  <32.572582, 40.454582, 62.919449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531174, 40.137184, 63.159332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460151, -0.572753, -0.678391,
		0.881784, 0.205729, 0.424420,
		-0.103523, -0.793492, 0.599711,
		32.500118, 39.899136, 63.339245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292091, 40.132923, 63.224091>,  <32.572582, 40.454582, 62.919449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292091, 40.132923, 63.224091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972485, 39.898560, 63.170013>,  <32.780720, 39.757942, 63.137569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972485, 39.898560, 63.170013>,  <33.292091, 40.132923, 63.224091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972485, 39.898560, 63.170013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515624, -0.551954, -0.655346,
		0.309356, -0.593341, 0.743132,
		-0.799018, -0.585912, -0.135190,
		32.732780, 39.722786, 63.129456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586018, 39.587822, 63.226818>,  <33.292091, 40.132923, 63.224091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586018, 39.587822, 63.226818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254089, 39.510468, 63.017441>,  <33.054932, 39.464054, 62.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254089, 39.510468, 63.017441>,  <33.586018, 39.587822, 63.226818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254089, 39.510468, 63.017441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518065, -0.615582, -0.593858,
		-0.207378, -0.763976, 0.611012,
		-0.829821, -0.193391, -0.523447,
		33.005142, 39.452450, 62.860405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699863, 38.921928, 63.012367>,  <33.586018, 39.587822, 63.226818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699863, 38.921928, 63.012367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397835, 39.031361, 62.774033>,  <33.216618, 39.097019, 62.631031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397835, 39.031361, 62.774033>,  <33.699863, 38.921928, 63.012367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397835, 39.031361, 62.774033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357870, -0.589485, -0.724180,
		-0.549355, -0.760041, 0.347199,
		-0.755075, 0.273580, -0.595832,
		33.171314, 39.113434, 62.595284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449467, 38.340839, 62.754112>,  <33.699863, 38.921928, 63.012367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449467, 38.340839, 62.754112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327084, 38.609276, 62.483994>,  <33.253654, 38.770336, 62.321922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327084, 38.609276, 62.483994>,  <33.449467, 38.340839, 62.754112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327084, 38.609276, 62.483994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367368, -0.571162, -0.734040,
		-0.878312, -0.472668, -0.071786,
		-0.305956, 0.671088, -0.675302,
		33.235298, 38.810604, 62.281403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996296, 38.008202, 62.393906>,  <33.449467, 38.340839, 62.754112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996296, 38.008202, 62.393906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127262, 38.289913, 62.141941>,  <33.205841, 38.458942, 61.990761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127262, 38.289913, 62.141941>,  <32.996296, 38.008202, 62.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127262, 38.289913, 62.141941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421569, -0.705509, -0.569681,
		-0.845624, -0.079031, -0.527895,
		0.327412, 0.704281, -0.629913,
		33.225487, 38.501198, 61.952969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843353, 37.630733, 61.683136>,  <32.996296, 38.008202, 62.393906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843353, 37.630733, 61.683136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090843, 37.941998, 61.639969>,  <33.239338, 38.128757, 61.614067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090843, 37.941998, 61.639969>,  <32.843353, 37.630733, 61.683136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090843, 37.941998, 61.639969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584736, -0.547896, -0.598242,
		-0.524658, 0.307040, -0.794015,
		0.618722, 0.778162, -0.107921,
		33.276459, 38.175446, 61.607594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282894, 37.148788, 62.007423>,  <32.843353, 37.630733, 61.683136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282894, 37.148788, 62.007423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950729, 37.239830, 61.804005>,  <31.751431, 37.294456, 61.681953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950729, 37.239830, 61.804005>,  <32.282894, 37.148788, 62.007423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950729, 37.239830, 61.804005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385883, 0.423438, 0.819630,
		0.401888, 0.876867, -0.263798,
		-0.830409, 0.227604, -0.508543,
		31.701607, 37.308113, 61.651443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139256, 37.835083, 62.301064>,  <32.282894, 37.148788, 62.007423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139256, 37.835083, 62.301064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816042, 37.686268, 62.118343>,  <31.622114, 37.596977, 62.008713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816042, 37.686268, 62.118343>,  <32.139256, 37.835083, 62.301064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816042, 37.686268, 62.118343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581877, 0.382650, 0.717634,
		-0.092194, 0.845674, -0.525676,
		-0.808034, -0.372041, -0.456800,
		31.573631, 37.574657, 61.981304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658291, 38.348003, 62.464237>,  <32.139256, 37.835083, 62.301064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658291, 38.348003, 62.464237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436996, 38.027782, 62.372116>,  <31.304220, 37.835648, 62.316845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436996, 38.027782, 62.372116>,  <31.658291, 38.348003, 62.464237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436996, 38.027782, 62.372116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699334, 0.296130, 0.650568,
		-0.452617, 0.520975, -0.723687,
		-0.553235, -0.800557, -0.230302,
		31.271027, 37.787617, 62.303024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000172, 38.624893, 62.474270>,  <31.658291, 38.348003, 62.464237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000172, 38.624893, 62.474270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890720, 38.241905, 62.437637>,  <30.825048, 38.012112, 62.415657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890720, 38.241905, 62.437637>,  <31.000172, 38.624893, 62.474270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890720, 38.241905, 62.437637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715390, 0.138951, 0.684770,
		-0.642918, 0.252889, -0.722982,
		-0.273630, -0.957466, -0.091580,
		30.808632, 37.954666, 62.410164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234413, 38.480083, 62.279217>,  <31.000172, 38.624893, 62.474270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234413, 38.480083, 62.279217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338121, 38.154949, 62.487862>,  <30.400347, 37.959869, 62.613049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338121, 38.154949, 62.487862>,  <30.234413, 38.480083, 62.279217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338121, 38.154949, 62.487862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862520, 0.048131, 0.503729,
		-0.434554, -0.580503, -0.688607,
		0.259273, -0.812835, 0.521610,
		30.415903, 37.911098, 62.644344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662865, 38.037525, 62.227528>,  <30.234413, 38.480083, 62.279217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662865, 38.037525, 62.227528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861324, 37.922188, 62.555111>,  <29.980400, 37.852985, 62.751663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861324, 37.922188, 62.555111>,  <29.662865, 38.037525, 62.227528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861324, 37.922188, 62.555111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856380, -0.007161, 0.516296,
		-0.143005, -0.957501, -0.250483,
		0.496147, -0.288341, 0.818961,
		30.010168, 37.835686, 62.800800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265583, 37.513374, 62.487778>,  <29.662865, 38.037525, 62.227528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265583, 37.513374, 62.487778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512779, 37.615406, 62.785240>,  <29.661097, 37.676624, 62.963718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512779, 37.615406, 62.785240>,  <29.265583, 37.513374, 62.487778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512779, 37.615406, 62.785240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763140, -0.032703, 0.645405,
		0.188952, -0.966366, 0.174454,
		0.617993, 0.255083, 0.743652,
		29.698177, 37.691933, 63.008335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117609, 36.991798, 62.959366>,  <29.265583, 37.513374, 62.487778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117609, 36.991798, 62.959366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289339, 37.293041, 63.158768>,  <29.392376, 37.473789, 63.278408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289339, 37.293041, 63.158768>,  <29.117609, 36.991798, 62.959366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289339, 37.293041, 63.158768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681420, -0.092149, 0.726068,
		0.592747, -0.651408, 0.473623,
		0.429322, 0.753111, 0.498504,
		29.418137, 37.518974, 63.308319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177576, 36.774960, 63.615593>,  <29.117609, 36.991798, 62.959366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177576, 36.774960, 63.615593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180532, 37.174713, 63.629269>,  <29.182306, 37.414566, 63.637474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180532, 37.174713, 63.629269>,  <29.177576, 36.774960, 63.615593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180532, 37.174713, 63.629269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717784, -0.018505, 0.696020,
		0.696227, -0.029685, 0.717208,
		0.007389, 0.999388, 0.034191,
		29.182749, 37.474529, 63.639526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.300552, 35.352081, 46.386875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422676, 35.672089, 46.593472>,  <36.495949, 35.864094, 46.717430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422676, 35.672089, 46.593472>,  <36.300552, 35.352081, 46.386875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422676, 35.672089, 46.593472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654966, -0.217294, 0.723742,
		0.691235, -0.559248, 0.457641,
		0.305308, 0.800015, 0.516490,
		36.514267, 35.912094, 46.748417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514072, 35.136944, 47.020718>,  <36.300552, 35.352081, 46.386875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514072, 35.136944, 47.020718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427132, 35.526001, 47.053516>,  <36.374969, 35.759434, 47.073196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427132, 35.526001, 47.053516>,  <36.514072, 35.136944, 47.020718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427132, 35.526001, 47.053516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651073, -0.207053, 0.730228,
		0.727230, 0.105326, 0.678264,
		-0.217349, 0.972643, 0.082001,
		36.361927, 35.817795, 47.078117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369209, 35.336952, 47.758133>,  <36.514072, 35.136944, 47.020718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369209, 35.336952, 47.758133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191048, 35.638588, 47.565071>,  <36.084152, 35.819569, 47.449234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191048, 35.638588, 47.565071>,  <36.369209, 35.336952, 47.758133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191048, 35.638588, 47.565071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666659, 0.080518, 0.741001,
		0.597646, 0.651814, 0.466859,
		-0.445405, 0.754092, -0.482659,
		36.057426, 35.864815, 47.420273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175541, 35.780457, 48.270203>,  <36.369209, 35.336952, 47.758133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175541, 35.780457, 48.270203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.938118, 35.897606, 47.970360>,  <35.795666, 35.967896, 47.790455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.938118, 35.897606, 47.970360>,  <36.175541, 35.780457, 48.270203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938118, 35.897606, 47.970360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707842, 0.253229, 0.659419,
		0.382947, 0.922010, 0.056999,
		-0.593558, 0.292869, -0.749611,
		35.760052, 35.985466, 47.745476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943260, 36.535046, 48.428501>,  <36.175541, 35.780457, 48.270203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943260, 36.535046, 48.428501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686871, 36.336361, 48.194431>,  <35.533035, 36.217152, 48.053989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686871, 36.336361, 48.194431>,  <35.943260, 36.535046, 48.428501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686871, 36.336361, 48.194431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755062, 0.271001, 0.597026,
		-0.137966, 0.824522, -0.548752,
		-0.640973, -0.496711, -0.585176,
		35.494579, 36.187347, 48.018879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405994, 36.872913, 48.419540>,  <35.943260, 36.535046, 48.428501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405994, 36.872913, 48.419540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247185, 36.519123, 48.321503>,  <35.151897, 36.306850, 48.262680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247185, 36.519123, 48.321503>,  <35.405994, 36.872913, 48.419540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247185, 36.519123, 48.321503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790363, 0.193724, 0.581204,
		-0.466580, 0.424469, -0.775970,
		-0.397027, -0.884476, -0.245097,
		35.128078, 36.253780, 48.247974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740906, 37.086571, 48.367130>,  <35.405994, 36.872913, 48.419540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740906, 37.086571, 48.367130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.724201, 36.686943, 48.362900>,  <34.714180, 36.447166, 48.360363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.724201, 36.686943, 48.362900>,  <34.740906, 37.086571, 48.367130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724201, 36.686943, 48.362900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696564, 0.021525, 0.717172,
		-0.716279, 0.037317, -0.696816,
		-0.041762, -0.999072, -0.010576,
		34.711674, 36.387222, 48.359726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944771, 36.901157, 48.359634>,  <34.740906, 37.086571, 48.367130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944771, 36.901157, 48.359634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115776, 36.555805, 48.466820>,  <34.218380, 36.348595, 48.531132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115776, 36.555805, 48.466820>,  <33.944771, 36.901157, 48.359634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115776, 36.555805, 48.466820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712954, -0.139757, 0.687142,
		-0.555816, -0.484809, -0.675299,
		0.427511, -0.863382, 0.267967,
		34.244030, 36.296791, 48.547211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391747, 36.500465, 48.340321>,  <33.944771, 36.901157, 48.359634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391747, 36.500465, 48.340321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671440, 36.334042, 48.572857>,  <33.839256, 36.234188, 48.712379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671440, 36.334042, 48.572857>,  <33.391747, 36.500465, 48.340321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671440, 36.334042, 48.572857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681027, -0.140354, 0.718682,
		-0.217421, -0.898440, -0.381489,
		0.699235, -0.416061, 0.581346,
		33.881210, 36.209225, 48.747261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261864, 35.737644, 48.405022>,  <33.391747, 36.500465, 48.340321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261864, 35.737644, 48.405022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.449642, 35.869530, 48.732658>,  <33.562309, 35.948662, 48.929241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.449642, 35.869530, 48.732658>,  <33.261864, 35.737644, 48.405022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449642, 35.869530, 48.732658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701501, -0.424084, 0.572756,
		0.536207, -0.843472, 0.032207,
		0.469445, 0.329709, 0.819093,
		33.590477, 35.968441, 48.978386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173870, 35.232613, 48.981537>,  <33.261864, 35.737644, 48.405022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173870, 35.232613, 48.981537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280064, 35.567795, 49.172260>,  <33.343781, 35.768906, 49.286694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280064, 35.567795, 49.172260>,  <33.173870, 35.232613, 48.981537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280064, 35.567795, 49.172260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620436, -0.230054, 0.749756,
		0.737954, -0.494880, 0.458822,
		0.265485, 0.837955, 0.476811,
		33.359711, 35.819180, 49.315304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079796, 34.980667, 49.660641>,  <33.173870, 35.232613, 48.981537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079796, 34.980667, 49.660641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097092, 35.377354, 49.709019>,  <33.107468, 35.615364, 49.738045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097092, 35.377354, 49.709019>,  <33.079796, 34.980667, 49.660641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097092, 35.377354, 49.709019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650874, -0.063879, 0.756494,
		0.757954, -0.111426, 0.642721,
		0.043237, 0.991717, 0.120941,
		33.110062, 35.674870, 49.745300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045177, 35.118614, 50.390366>,  <33.079796, 34.980667, 49.660641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045177, 35.118614, 50.390366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.948952, 35.463596, 50.212246>,  <32.891216, 35.670586, 50.105373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.948952, 35.463596, 50.212246>,  <33.045177, 35.118614, 50.390366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948952, 35.463596, 50.212246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641841, 0.202808, 0.739533,
		0.728128, 0.463715, 0.504775,
		-0.240560, 0.862460, -0.445302,
		32.876785, 35.722336, 50.078655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202282, 35.665730, 50.866199>,  <33.045177, 35.118614, 50.390366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202282, 35.665730, 50.866199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.934559, 35.834782, 50.621769>,  <32.773926, 35.936214, 50.475109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.934559, 35.834782, 50.621769>,  <33.202282, 35.665730, 50.866199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934559, 35.834782, 50.621769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611459, 0.153900, 0.776165,
		0.422076, 0.893139, 0.155416,
		-0.669305, 0.422632, -0.611076,
		32.733768, 35.961571, 50.438446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908646, 36.164906, 51.334507>,  <33.202282, 35.665730, 50.866199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908646, 36.164906, 51.334507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639572, 36.119442, 51.042049>,  <32.478127, 36.092163, 50.866573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639572, 36.119442, 51.042049>,  <32.908646, 36.164906, 51.334507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639572, 36.119442, 51.042049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723935, -0.103221, 0.682102,
		-0.152998, 0.988143, -0.012847,
		-0.672688, -0.113661, -0.731144,
		32.437767, 36.085342, 50.822704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314701, 36.688927, 51.442844>,  <32.908646, 36.164906, 51.334507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314701, 36.688927, 51.442844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.208397, 36.366989, 51.230583>,  <32.144615, 36.173824, 51.103226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.208397, 36.366989, 51.230583>,  <32.314701, 36.688927, 51.442844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208397, 36.366989, 51.230583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803984, -0.118705, 0.582682,
		-0.531961, 0.581491, -0.615537,
		-0.265757, -0.804846, -0.530656,
		32.128670, 36.125534, 51.071388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593723, 36.812984, 51.461998>,  <32.314701, 36.688927, 51.442844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593723, 36.812984, 51.461998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.652737, 36.444496, 51.318008>,  <31.688145, 36.223404, 51.231613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.652737, 36.444496, 51.318008>,  <31.593723, 36.812984, 51.461998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652737, 36.444496, 51.318008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930704, -0.252470, 0.264667,
		-0.334700, 0.295983, -0.894634,
		0.147531, -0.921224, -0.359974,
		31.696997, 36.168129, 51.210018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996510, 36.723450, 50.980141>,  <31.593723, 36.812984, 51.461998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996510, 36.723450, 50.980141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126175, 36.361023, 51.088921>,  <31.203974, 36.143566, 51.154186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126175, 36.361023, 51.088921>,  <30.996510, 36.723450, 50.980141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126175, 36.361023, 51.088921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937359, -0.268878, 0.221503,
		-0.127577, -0.326715, -0.936473,
		0.324165, -0.906070, 0.271946,
		31.223425, 36.089203, 51.170506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651346, 36.323624, 50.511986>,  <30.996510, 36.723450, 50.980141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651346, 36.323624, 50.511986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750662, 36.117798, 50.840271>,  <30.810251, 35.994301, 51.037243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750662, 36.117798, 50.840271>,  <30.651346, 36.323624, 50.511986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750662, 36.117798, 50.840271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956553, -0.263916, 0.123915,
		0.152836, -0.815823, -0.557740,
		0.248289, -0.514569, 0.820714,
		30.825150, 35.963428, 51.086487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238504, 35.787926, 50.454178>,  <30.651346, 36.323624, 50.511986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238504, 35.787926, 50.454178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.337873, 35.757694, 50.840458>,  <30.397495, 35.739555, 51.072227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.337873, 35.757694, 50.840458>,  <30.238504, 35.787926, 50.454178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337873, 35.757694, 50.840458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944160, -0.241660, 0.223968,
		0.216444, -0.967413, -0.131389,
		0.248421, -0.075576, 0.965700,
		30.412399, 35.735023, 51.130169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900826, 35.242630, 50.588776>,  <30.238504, 35.787926, 50.454178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900826, 35.242630, 50.588776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.970854, 35.385635, 50.955715>,  <30.012871, 35.471439, 51.175880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.970854, 35.385635, 50.955715>,  <29.900826, 35.242630, 50.588776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970854, 35.385635, 50.955715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876549, -0.367694, 0.310584,
		0.448342, -0.858479, 0.249004,
		0.175073, 0.357512, 0.917352,
		30.023376, 35.492889, 51.230923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828915, 34.700043, 51.156696>,  <29.900826, 35.242630, 50.588776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828915, 34.700043, 51.156696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.770775, 35.060940, 51.319092>,  <29.735891, 35.277477, 51.416527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.770775, 35.060940, 51.319092>,  <29.828915, 34.700043, 51.156696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770775, 35.060940, 51.319092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903225, -0.288482, 0.317746,
		0.403805, -0.320513, 0.856862,
		-0.145347, 0.902247, 0.405985,
		29.727171, 35.331615, 51.440887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386078, 34.500679, 51.540424>,  <29.828915, 34.700043, 51.156696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386078, 34.500679, 51.540424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357380, 34.896778, 51.588188>,  <29.340160, 35.134438, 51.616848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357380, 34.896778, 51.588188>,  <29.386078, 34.500679, 51.540424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357380, 34.896778, 51.588188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918152, -0.112339, 0.379969,
		0.389679, -0.082375, 0.917259,
		-0.071745, 0.990249, 0.119409,
		29.335857, 35.193851, 51.624012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225067, 34.605011, 52.215439>,  <29.386078, 34.500679, 51.540424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225067, 34.605011, 52.215439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.094704, 34.898029, 51.976387>,  <29.016485, 35.073841, 51.832958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.094704, 34.898029, 51.976387>,  <29.225067, 34.605011, 52.215439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094704, 34.898029, 51.976387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937726, -0.170094, 0.302883,
		0.120223, 0.659123, 0.742364,
		-0.325908, 0.732547, -0.597627,
		28.996931, 35.117794, 51.797100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741283, 34.901752, 52.616592>,  <29.225067, 34.605011, 52.215439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741283, 34.901752, 52.616592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.648874, 35.007149, 52.241955>,  <28.593428, 35.070385, 52.017174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.648874, 35.007149, 52.241955>,  <28.741283, 34.901752, 52.616592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648874, 35.007149, 52.241955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950804, -0.265351, 0.159879,
		-0.206398, 0.927449, 0.311831,
		-0.231025, 0.263492, -0.936589,
		28.579567, 35.086197, 51.960979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088921, 35.077175, 52.728443>,  <28.741283, 34.901752, 52.616592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088921, 35.077175, 52.728443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.112514, 35.108356, 52.330360>,  <28.126671, 35.127064, 52.091511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.112514, 35.108356, 52.330360>,  <28.088921, 35.077175, 52.728443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112514, 35.108356, 52.330360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992613, -0.101303, -0.066764,
		-0.106022, 0.991797, 0.071402,
		0.058983, 0.077953, -0.995211,
		28.130209, 35.131741, 52.031796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600321, 35.479931, 52.563046>,  <28.088921, 35.077175, 52.728443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600321, 35.479931, 52.563046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.655323, 35.277252, 52.222610>,  <27.688324, 35.155647, 52.018349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.655323, 35.277252, 52.222610>,  <27.600321, 35.479931, 52.563046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655323, 35.277252, 52.222610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989091, -0.024416, -0.145266,
		0.052825, 0.861780, -0.504524,
		0.137506, -0.506694, -0.851089,
		27.696575, 35.125244, 51.967285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192808, 35.861542, 52.068634>,  <27.600321, 35.479931, 52.563046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192808, 35.861542, 52.068634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.237726, 35.482811, 51.948032>,  <27.264677, 35.255573, 51.875671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.237726, 35.482811, 51.948032>,  <27.192808, 35.861542, 52.068634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237726, 35.482811, 51.948032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991517, -0.126755, 0.028772,
		-0.065459, 0.295716, -0.953031,
		0.112293, -0.946829, -0.301504,
		27.271414, 35.198761, 51.857582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799192, 35.790009, 51.459599>,  <27.192808, 35.861542, 52.068634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799192, 35.790009, 51.459599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.834709, 35.437801, 51.645844>,  <26.856018, 35.226475, 51.757591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.834709, 35.437801, 51.645844>,  <26.799192, 35.790009, 51.459599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834709, 35.437801, 51.645844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986574, -0.142074, -0.080542,
		0.137071, -0.452212, -0.881315,
		0.088790, -0.880522, 0.465615,
		26.861345, 35.173645, 51.785526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394970, 35.266769, 51.039902>,  <26.799192, 35.790009, 51.459599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394970, 35.266769, 51.039902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.448185, 35.092964, 51.396217>,  <26.480114, 34.988682, 51.610004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.448185, 35.092964, 51.396217>,  <26.394970, 35.266769, 51.039902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448185, 35.092964, 51.396217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959537, -0.281520, 0.005980,
		0.248175, -0.855536, -0.454387,
		0.133035, -0.434517, 0.890785,
		26.488096, 34.962608, 51.663452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949715, 34.646736, 51.046101>,  <26.394970, 35.266769, 51.039902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949715, 34.646736, 51.046101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.029131, 34.689610, 51.435787>,  <26.076780, 34.715336, 51.669598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.029131, 34.689610, 51.435787>,  <25.949715, 34.646736, 51.046101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029131, 34.689610, 51.435787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912865, -0.341574, 0.223618,
		0.356735, -0.933723, 0.030031,
		0.198539, 0.107186, 0.974214,
		26.088694, 34.721764, 51.728050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724867, 34.024372, 51.472595>,  <25.949715, 34.646736, 51.046101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724867, 34.024372, 51.472595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.742218, 34.325539, 51.735268>,  <25.752628, 34.506241, 51.892872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.742218, 34.325539, 51.735268>,  <25.724867, 34.024372, 51.472595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742218, 34.325539, 51.735268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906129, -0.247184, 0.343264,
		0.420771, -0.609929, 0.671519,
		0.043378, 0.752918, 0.656682,
		25.755232, 34.551414, 51.932274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372463, 33.797619, 52.017872>,  <25.724867, 34.024372, 51.472595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372463, 33.797619, 52.017872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.400494, 34.185444, 52.111706>,  <25.417311, 34.418140, 52.168007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.400494, 34.185444, 52.111706>,  <25.372463, 33.797619, 52.017872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400494, 34.185444, 52.111706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876777, -0.052294, 0.478046,
		0.475765, -0.239175, 0.846430,
		0.070074, 0.969567, 0.234583,
		25.421516, 34.476315, 52.182079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137251, 33.842392, 52.773094>,  <25.372463, 33.797619, 52.017872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137251, 33.842392, 52.773094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.098194, 34.207741, 52.614994>,  <25.074760, 34.426949, 52.520134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.098194, 34.207741, 52.614994>,  <25.137251, 33.842392, 52.773094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098194, 34.207741, 52.614994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968223, 0.004699, 0.250046,
		0.230241, 0.407103, 0.883887,
		-0.097641, 0.913371, -0.395248,
		25.068901, 34.481750, 52.496418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940397, 34.282608, 53.321671>,  <25.137251, 33.842392, 52.773094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940397, 34.282608, 53.321671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.827328, 34.432045, 52.968281>,  <24.759485, 34.521706, 52.756248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.827328, 34.432045, 52.968281>,  <24.940397, 34.282608, 53.321671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827328, 34.432045, 52.968281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957437, -0.165963, 0.236160,
		-0.058395, 0.912625, 0.404606,
		-0.282675, 0.373594, -0.883472,
		24.742525, 34.544125, 52.703239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.151352, 31.944040, 49.191677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754105, 31.978924, 49.222942>,  <33.515755, 31.999855, 49.241703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754105, 31.978924, 49.222942>,  <34.151352, 31.944040, 49.191677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754105, 31.978924, 49.222942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107288, 0.409914, 0.905792,
		0.046953, 0.907946, -0.416450,
		-0.993119, 0.087210, 0.078165,
		33.456169, 32.005085, 49.246391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930733, 32.620693, 49.345196>,  <34.151352, 31.944040, 49.191677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930733, 32.620693, 49.345196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593353, 32.455620, 49.482765>,  <33.390926, 32.356575, 49.565308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593353, 32.455620, 49.482765>,  <33.930733, 32.620693, 49.345196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593353, 32.455620, 49.482765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078998, 0.537972, 0.839253,
		-0.531367, 0.735038, -0.421151,
		-0.843450, -0.412681, 0.343927,
		33.340317, 32.331814, 49.585945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467606, 33.190132, 49.550041>,  <33.930733, 32.620693, 49.345196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467606, 33.190132, 49.550041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366547, 32.850979, 49.736488>,  <33.305912, 32.647488, 49.848354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366547, 32.850979, 49.736488>,  <33.467606, 33.190132, 49.550041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366547, 32.850979, 49.736488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026814, 0.487694, 0.872603,
		-0.967186, 0.207966, -0.145952,
		-0.252651, -0.847882, 0.466115,
		33.290752, 32.596615, 49.876324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037487, 33.442513, 50.035439>,  <33.467606, 33.190132, 49.550041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037487, 33.442513, 50.035439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137455, 33.083176, 50.179955>,  <33.197437, 32.867573, 50.266663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137455, 33.083176, 50.179955>,  <33.037487, 33.442513, 50.035439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137455, 33.083176, 50.179955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075444, 0.353928, 0.932225,
		-0.965323, -0.260239, 0.020680,
		0.249920, -0.898338, 0.361288,
		33.212433, 32.813675, 50.288342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601131, 33.392040, 50.583153>,  <33.037487, 33.442513, 50.035439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601131, 33.392040, 50.583153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875195, 33.111305, 50.661106>,  <33.039635, 32.942863, 50.707878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875195, 33.111305, 50.661106>,  <32.601131, 33.392040, 50.583153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875195, 33.111305, 50.661106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079015, 0.194362, 0.977742,
		-0.724094, -0.685309, 0.077713,
		0.685160, -0.701837, 0.194886,
		33.080742, 32.900753, 50.719570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371677, 32.976524, 51.181831>,  <32.601131, 33.392040, 50.583153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371677, 32.976524, 51.181831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762104, 32.892174, 51.160561>,  <32.996361, 32.841564, 51.147797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762104, 32.892174, 51.160561>,  <32.371677, 32.976524, 51.181831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762104, 32.892174, 51.160561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064488, 0.047111, 0.996806,
		-0.207701, -0.976376, 0.059582,
		0.976064, -0.210880, -0.053179,
		33.054924, 32.828911, 51.144608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408897, 32.423485, 51.538979>,  <32.371677, 32.976524, 51.181831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408897, 32.423485, 51.538979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772358, 32.590454, 51.534885>,  <32.990437, 32.690636, 51.532429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772358, 32.590454, 51.534885>,  <32.408897, 32.423485, 51.538979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772358, 32.590454, 51.534885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025739, -0.031545, 0.999171,
		0.416754, -0.908165, -0.039407,
		0.908655, 0.417423, -0.010229,
		33.044956, 32.715679, 51.531818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825836, 31.995193, 51.906818>,  <32.408897, 32.423485, 51.538979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825836, 31.995193, 51.906818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980087, 32.364071, 51.918449>,  <33.072639, 32.585396, 51.925426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980087, 32.364071, 51.918449>,  <32.825836, 31.995193, 51.906818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980087, 32.364071, 51.918449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067387, -0.003277, 0.997722,
		0.920189, -0.386712, 0.060881,
		0.385632, 0.922195, 0.029075,
		33.095776, 32.640728, 51.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424873, 31.963453, 52.316120>,  <32.825836, 31.995193, 51.906818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424873, 31.963453, 52.316120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303005, 32.344143, 52.331085>,  <33.229885, 32.572556, 52.340065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303005, 32.344143, 52.331085>,  <33.424873, 31.963453, 52.316120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303005, 32.344143, 52.331085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096682, -0.069982, 0.992852,
		0.947538, 0.298875, 0.113336,
		-0.304670, 0.951723, 0.037415,
		33.211605, 32.629662, 52.342308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736526, 32.157978, 52.955631>,  <33.424873, 31.963453, 52.316120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736526, 32.157978, 52.955631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513462, 32.482014, 52.883228>,  <33.379623, 32.676437, 52.839787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513462, 32.482014, 52.883228>,  <33.736526, 32.157978, 52.955631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513462, 32.482014, 52.883228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248510, 0.045125, 0.967578,
		0.791994, 0.584565, 0.176151,
		-0.557663, 0.810091, -0.181009,
		33.346165, 32.725040, 52.828926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871983, 32.651932, 53.507584>,  <33.736526, 32.157978, 52.955631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871983, 32.651932, 53.507584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507984, 32.742207, 53.368458>,  <33.289585, 32.796371, 53.284981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507984, 32.742207, 53.368458>,  <33.871983, 32.651932, 53.507584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507984, 32.742207, 53.368458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331386, 0.108262, 0.937263,
		0.249187, 0.968165, -0.023727,
		-0.909994, 0.225691, -0.347814,
		33.234985, 32.809914, 53.264114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740715, 33.246006, 53.864025>,  <33.871983, 32.651932, 53.507584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740715, 33.246006, 53.864025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373898, 33.141209, 53.743763>,  <33.153809, 33.078331, 53.671604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373898, 33.141209, 53.743763>,  <33.740715, 33.246006, 53.864025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373898, 33.141209, 53.743763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344709, 0.141651, 0.927961,
		-0.200529, 0.954618, -0.220211,
		-0.917041, -0.261992, -0.300660,
		33.098785, 33.062611, 53.653564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261547, 33.706615, 53.571423>,  <33.740715, 33.246006, 53.864025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261547, 33.706615, 53.571423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491806, 33.997288, 53.721394>,  <34.629963, 34.171692, 53.811375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491806, 33.997288, 53.721394>,  <34.261547, 33.706615, 53.571423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491806, 33.997288, 53.721394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587751, -0.048935, -0.807561,
		-0.568489, 0.685235, -0.455274,
		0.575647, 0.726677, 0.374928,
		34.664501, 34.215290, 53.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419872, 34.124371, 53.001926>,  <34.261547, 33.706615, 53.571423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419872, 34.124371, 53.001926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700897, 34.204247, 53.275139>,  <34.869511, 34.252174, 53.439064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700897, 34.204247, 53.275139>,  <34.419872, 34.124371, 53.001926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700897, 34.204247, 53.275139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685310, 0.068721, -0.725002,
		-0.191715, 0.977446, -0.088570,
		0.702564, 0.199691, 0.683028,
		34.911667, 34.264153, 53.480049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689568, 34.666046, 52.728924>,  <34.419872, 34.124371, 53.001926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689568, 34.666046, 52.728924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969627, 34.525337, 52.977455>,  <35.137665, 34.440910, 53.126575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969627, 34.525337, 52.977455>,  <34.689568, 34.666046, 52.728924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969627, 34.525337, 52.977455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644674, -0.062587, -0.761891,
		0.306900, 0.933991, 0.182959,
		0.700148, -0.351773, 0.621328,
		35.179672, 34.419804, 53.163853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342083, 35.155720, 52.598892>,  <34.689568, 34.666046, 52.728924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342083, 35.155720, 52.598892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.491768, 34.821270, 52.759315>,  <35.581581, 34.620598, 52.855572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.491768, 34.821270, 52.759315>,  <35.342083, 35.155720, 52.598892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491768, 34.821270, 52.759315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696139, -0.032441, -0.717174,
		0.612660, 0.547573, 0.569922,
		0.374216, -0.836129, 0.401062,
		35.604034, 34.570431, 52.879635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062294, 35.230606, 52.681927>,  <35.342083, 35.155720, 52.598892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062294, 35.230606, 52.681927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995491, 34.836292, 52.674572>,  <35.955410, 34.599705, 52.670158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995491, 34.836292, 52.674572>,  <36.062294, 35.230606, 52.681927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995491, 34.836292, 52.674572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793585, -0.123334, -0.595829,
		0.585092, -0.114096, 0.802901,
		-0.167007, -0.985784, -0.018384,
		35.945389, 34.540558, 52.669056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680946, 34.996761, 52.543846>,  <36.062294, 35.230606, 52.681927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680946, 34.996761, 52.543846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476147, 34.661644, 52.468006>,  <36.353268, 34.460571, 52.422501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476147, 34.661644, 52.468006>,  <36.680946, 34.996761, 52.543846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476147, 34.661644, 52.468006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609892, -0.199134, -0.767057,
		0.604884, -0.508370, 0.612923,
		-0.512003, -0.837798, -0.189598,
		36.322544, 34.410305, 52.411125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150009, 34.384415, 52.661755>,  <36.680946, 34.996761, 52.543846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150009, 34.384415, 52.661755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850594, 34.265842, 52.424496>,  <36.670944, 34.194698, 52.282143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850594, 34.265842, 52.424496>,  <37.150009, 34.384415, 52.661755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850594, 34.265842, 52.424496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646394, -0.126719, -0.752408,
		0.147874, -0.946610, 0.286465,
		-0.748537, -0.296431, -0.593144,
		36.626034, 34.176914, 52.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401478, 33.774197, 52.483429>,  <37.150009, 34.384415, 52.661755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401478, 33.774197, 52.483429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147736, 33.919758, 52.210617>,  <36.995491, 34.007095, 52.046928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147736, 33.919758, 52.210617>,  <37.401478, 33.774197, 52.483429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147736, 33.919758, 52.210617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681212, -0.153917, -0.715723,
		-0.365429, -0.918632, -0.150256,
		-0.634359, 0.363902, -0.682029,
		36.957428, 34.028927, 52.006008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514874, 33.402260, 51.872463>,  <37.401478, 33.774197, 52.483429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514874, 33.402260, 51.872463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317814, 33.728310, 51.750568>,  <37.199577, 33.923939, 51.677429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317814, 33.728310, 51.750568>,  <37.514874, 33.402260, 51.872463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317814, 33.728310, 51.750568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521706, -0.003632, -0.853118,
		-0.696506, -0.579271, -0.423467,
		-0.492648, 0.815127, -0.304739,
		37.170021, 33.972847, 51.659145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599369, 33.340000, 51.157024>,  <37.514874, 33.402260, 51.872463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599369, 33.340000, 51.157024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536797, 33.730862, 51.214569>,  <37.499252, 33.965378, 51.249096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536797, 33.730862, 51.214569>,  <37.599369, 33.340000, 51.157024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536797, 33.730862, 51.214569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465829, 0.201430, -0.861643,
		-0.870937, -0.067774, -0.486698,
		-0.156433, 0.977155, 0.143862,
		37.489868, 34.024010, 51.257729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191441, 33.442478, 50.540253>,  <37.599369, 33.340000, 51.157024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191441, 33.442478, 50.540253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353931, 33.772358, 50.697655>,  <37.451427, 33.970287, 50.792095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353931, 33.772358, 50.697655>,  <37.191441, 33.442478, 50.540253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353931, 33.772358, 50.697655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422123, 0.212567, -0.881265,
		-0.810427, 0.524100, -0.261775,
		0.406226, 0.824702, 0.393505,
		37.475800, 34.019768, 50.815708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159042, 33.877579, 50.027672>,  <37.191441, 33.442478, 50.540253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159042, 33.877579, 50.027672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421658, 34.071533, 50.258785>,  <37.579227, 34.187908, 50.397453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421658, 34.071533, 50.258785>,  <37.159042, 33.877579, 50.027672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421658, 34.071533, 50.258785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501429, 0.291669, -0.814554,
		-0.563490, 0.824507, -0.051645,
		0.656542, 0.484889, 0.577785,
		37.618622, 34.216999, 50.432121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221466, 34.672249, 49.798836>,  <37.159042, 33.877579, 50.027672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221466, 34.672249, 49.798836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561123, 34.592239, 49.994366>,  <37.764915, 34.544231, 50.111683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561123, 34.592239, 49.994366>,  <37.221466, 34.672249, 49.798836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561123, 34.592239, 49.994366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525574, 0.411525, -0.744593,
		-0.052223, 0.889178, 0.454572,
		0.849143, -0.200026, 0.488820,
		37.815865, 34.532230, 50.141010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648010, 35.354324, 49.969906>,  <37.221466, 34.672249, 49.798836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648010, 35.354324, 49.969906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898338, 35.042492, 49.979721>,  <38.048534, 34.855392, 49.985611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898338, 35.042492, 49.979721>,  <37.648010, 35.354324, 49.969906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898338, 35.042492, 49.979721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592454, 0.454666, -0.665039,
		0.507295, 0.430732, 0.746406,
		0.625819, -0.779583, 0.024539,
		38.086082, 34.808617, 49.987083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837856, 36.044090, 49.795654>,  <37.648010, 35.354324, 49.969906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837856, 36.044090, 49.795654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588238, 36.332912, 49.915119>,  <37.438465, 36.506207, 49.986797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588238, 36.332912, 49.915119>,  <37.837856, 36.044090, 49.795654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588238, 36.332912, 49.915119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145828, 0.267887, -0.952350,
		-0.767656, -0.637868, -0.061880,
		-0.624050, 0.722053, 0.298664,
		37.401024, 36.549530, 50.004719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166138, 36.030136, 49.499756>,  <37.837856, 36.044090, 49.795654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166138, 36.030136, 49.499756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300037, 36.401756, 49.562763>,  <37.380375, 36.624729, 49.600567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300037, 36.401756, 49.562763>,  <37.166138, 36.030136, 49.499756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300037, 36.401756, 49.562763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109998, 0.127490, -0.985721,
		-0.935866, 0.347293, -0.059517,
		0.334746, 0.929050, 0.157515,
		37.400463, 36.680470, 49.610016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707088, 36.591732, 49.043682>,  <37.166138, 36.030136, 49.499756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707088, 36.591732, 49.043682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065411, 36.729015, 49.156635>,  <37.280403, 36.811386, 49.224407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065411, 36.729015, 49.156635>,  <36.707088, 36.591732, 49.043682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065411, 36.729015, 49.156635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177526, 0.306174, -0.935276,
		-0.407454, 0.887956, 0.213343,
		0.895804, 0.343208, 0.282387,
		37.334152, 36.831978, 49.241352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603809, 37.274200, 49.374630>,  <36.707088, 36.591732, 49.043682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603809, 37.274200, 49.374630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231129, 37.410110, 49.323261>,  <36.007523, 37.491657, 49.292439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231129, 37.410110, 49.323261>,  <36.603809, 37.274200, 49.374630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231129, 37.410110, 49.323261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084429, 0.141297, 0.986360,
		0.353285, 0.929833, -0.102959,
		-0.931698, 0.339773, -0.128423,
		35.951618, 37.512043, 49.284733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506813, 37.956139, 49.712917>,  <36.603809, 37.274200, 49.374630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506813, 37.956139, 49.712917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169289, 37.745739, 49.670391>,  <35.966774, 37.619499, 49.644875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169289, 37.745739, 49.670391>,  <36.506813, 37.956139, 49.712917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169289, 37.745739, 49.670391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266143, 0.238149, 0.934052,
		-0.465995, 0.816459, -0.340945,
		-0.843811, -0.526003, -0.106319,
		35.916145, 37.587936, 49.638496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998737, 38.423035, 49.999344>,  <36.506813, 37.956139, 49.712917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998737, 38.423035, 49.999344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828587, 38.061092, 49.992458>,  <35.726498, 37.843929, 49.988327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828587, 38.061092, 49.992458>,  <35.998737, 38.423035, 49.999344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828587, 38.061092, 49.992458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366751, 0.154964, 0.917322,
		-0.827376, 0.396516, -0.397773,
		-0.425374, -0.904854, -0.017209,
		35.700974, 37.789635, 49.987297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327709, 38.501328, 50.324089>,  <35.998737, 38.423035, 49.999344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327709, 38.501328, 50.324089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405964, 38.111282, 50.365810>,  <35.452915, 37.877254, 50.390842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405964, 38.111282, 50.365810>,  <35.327709, 38.501328, 50.324089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405964, 38.111282, 50.365810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264673, 0.049912, 0.963046,
		-0.944285, -0.216014, -0.248321,
		0.195637, -0.975113, 0.104304,
		35.464657, 37.818748, 50.397102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743336, 38.272781, 50.654423>,  <35.327709, 38.501328, 50.324089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743336, 38.272781, 50.654423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015415, 37.989613, 50.730499>,  <35.178661, 37.819710, 50.776146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015415, 37.989613, 50.730499>,  <34.743336, 38.272781, 50.654423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015415, 37.989613, 50.730499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312270, -0.045103, 0.948922,
		-0.663189, -0.704845, -0.251743,
		0.680197, -0.707926, 0.190190,
		35.219475, 37.777233, 50.787556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382629, 37.765373, 51.172440>,  <34.743336, 38.272781, 50.654423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382629, 37.765373, 51.172440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782162, 37.772427, 51.190430>,  <35.021881, 37.776661, 51.201225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782162, 37.772427, 51.190430>,  <34.382629, 37.765373, 51.172440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782162, 37.772427, 51.190430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044593, -0.021601, 0.998772,
		0.018597, -0.999611, -0.020789,
		0.998832, 0.017647, 0.044977,
		35.081810, 37.777718, 51.203922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494137, 37.317043, 51.729816>,  <34.382629, 37.765373, 51.172440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494137, 37.317043, 51.729816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846577, 37.500328, 51.682976>,  <35.058041, 37.610298, 51.654873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846577, 37.500328, 51.682976>,  <34.494137, 37.317043, 51.729816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846577, 37.500328, 51.682976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103320, 0.055133, 0.993119,
		0.461514, -0.887132, 0.001235,
		0.881096, 0.458211, -0.117103,
		35.110905, 37.637791, 51.647846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905220, 37.123875, 52.314110>,  <34.494137, 37.317043, 51.729816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905220, 37.123875, 52.314110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113342, 37.438972, 52.182201>,  <35.238216, 37.628029, 52.103058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113342, 37.438972, 52.182201>,  <34.905220, 37.123875, 52.314110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113342, 37.438972, 52.182201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094732, 0.330534, 0.939028,
		0.848712, -0.519818, 0.097353,
		0.520301, 0.787742, -0.329772,
		35.269432, 37.675297, 52.083271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478626, 37.199516, 52.728104>,  <34.905220, 37.123875, 52.314110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478626, 37.199516, 52.728104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391823, 37.562706, 52.584721>,  <35.339741, 37.780621, 52.498692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391823, 37.562706, 52.584721>,  <35.478626, 37.199516, 52.728104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391823, 37.562706, 52.584721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006312, 0.365892, 0.930636,
		0.976149, 0.204220, -0.073671,
		-0.217010, 0.907974, -0.358454,
		35.326721, 37.835098, 52.477184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993942, 37.641712, 53.014977>,  <35.478626, 37.199516, 52.728104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993942, 37.641712, 53.014977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670048, 37.860111, 52.928982>,  <35.475712, 37.991150, 52.877384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670048, 37.860111, 52.928982>,  <35.993942, 37.641712, 53.014977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670048, 37.860111, 52.928982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108400, 0.499241, 0.859656,
		0.576700, 0.672787, -0.463438,
		-0.809733, 0.546000, -0.214982,
		35.427128, 38.023911, 52.864487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313034, 38.326035, 53.142529>,  <35.993942, 37.641712, 53.014977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313034, 38.326035, 53.142529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914722, 38.353844, 53.166466>,  <35.675735, 38.370529, 53.180828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914722, 38.353844, 53.166466>,  <36.313034, 38.326035, 53.142529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914722, 38.353844, 53.166466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091544, 0.795264, 0.599312,
		-0.005926, 0.602263, -0.798276,
		-0.995784, 0.069526, 0.059846,
		35.615986, 38.374702, 53.184422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272377, 38.942894, 53.407959>,  <36.313034, 38.326035, 53.142529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272377, 38.942894, 53.407959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900002, 38.797203, 53.418571>,  <35.676579, 38.709789, 53.424938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900002, 38.797203, 53.418571>,  <36.272377, 38.942894, 53.407959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900002, 38.797203, 53.418571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204280, 0.579594, 0.788885,
		-0.302707, 0.728980, -0.613967,
		-0.930934, -0.364223, 0.026531,
		35.620720, 38.687935, 53.426529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877502, 39.550392, 53.526134>,  <36.272377, 38.942894, 53.407959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877502, 39.550392, 53.526134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684444, 39.223812, 53.652924>,  <35.568611, 39.027866, 53.728996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684444, 39.223812, 53.652924>,  <35.877502, 39.550392, 53.526134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684444, 39.223812, 53.652924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256059, 0.477642, 0.840412,
		-0.837551, 0.324454, -0.439588,
		-0.482641, -0.816448, 0.316970,
		35.539654, 38.978878, 53.748016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088371, 39.808197, 53.636047>,  <35.877502, 39.550392, 53.526134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088371, 39.808197, 53.636047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154171, 39.488888, 53.867809>,  <35.193649, 39.297302, 54.006866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154171, 39.488888, 53.867809>,  <35.088371, 39.808197, 53.636047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154171, 39.488888, 53.867809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278129, 0.526029, 0.803703,
		-0.946353, -0.293357, -0.135490,
		0.164500, -0.798270, 0.579400,
		35.203522, 39.249405, 54.041630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583981, 39.796455, 54.140366>,  <35.088371, 39.808197, 53.636047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583981, 39.796455, 54.140366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867592, 39.558456, 54.291759>,  <35.037758, 39.415657, 54.382595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867592, 39.558456, 54.291759>,  <34.583981, 39.796455, 54.140366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867592, 39.558456, 54.291759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307155, 0.222554, 0.925270,
		-0.634768, -0.772300, -0.024959,
		0.709032, -0.594998, 0.378486,
		35.080303, 39.379955, 54.405304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314198, 39.297962, 54.501663>,  <34.583981, 39.796455, 54.140366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314198, 39.297962, 54.501663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678707, 39.288574, 54.666115>,  <34.897411, 39.282940, 54.764786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678707, 39.288574, 54.666115>,  <34.314198, 39.297962, 54.501663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678707, 39.288574, 54.666115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409985, 0.041923, 0.911128,
		-0.038628, -0.998845, 0.028577,
		0.911273, -0.023478, 0.411131,
		34.952091, 39.281532, 54.789455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184624, 39.131672, 55.073231>,  <34.314198, 39.297962, 54.501663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184624, 39.131672, 55.073231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571156, 39.175941, 55.166142>,  <34.803074, 39.202503, 55.221886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571156, 39.175941, 55.166142>,  <34.184624, 39.131672, 55.073231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571156, 39.175941, 55.166142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250774, 0.203223, 0.946474,
		0.057548, -0.972857, 0.224136,
		0.966333, 0.110675, 0.232272,
		34.861057, 39.209145, 55.235825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246414, 38.788948, 55.702065>,  <34.184624, 39.131672, 55.073231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246414, 38.788948, 55.702065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496998, 39.092747, 55.631973>,  <34.647346, 39.275028, 55.589916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496998, 39.092747, 55.631973>,  <34.246414, 38.788948, 55.702065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496998, 39.092747, 55.631973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323979, 0.458196, 0.827704,
		0.708933, -0.461752, 0.533103,
		0.626460, 0.759501, -0.175232,
		34.684937, 39.320599, 55.579403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431564, 38.890949, 56.365459>,  <34.246414, 38.788948, 55.702065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431564, 38.890949, 56.365459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586037, 39.220982, 56.200481>,  <34.678722, 39.418999, 56.101494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586037, 39.220982, 56.200481>,  <34.431564, 38.890949, 56.365459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586037, 39.220982, 56.200481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082428, 0.476211, 0.875459,
		0.918732, -0.304091, 0.251914,
		0.386183, 0.825077, -0.412445,
		34.701893, 39.468506, 56.076748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907024, 39.108833, 56.852283>,  <34.431564, 38.890949, 56.365459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907024, 39.108833, 56.852283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815758, 39.415100, 56.611717>,  <34.760998, 39.598858, 56.467377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815758, 39.415100, 56.611717>,  <34.907024, 39.108833, 56.852283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815758, 39.415100, 56.611717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358305, 0.508325, 0.783086,
		0.905295, 0.394163, 0.158359,
		-0.228166, 0.765664, -0.601414,
		34.747307, 39.644798, 56.431293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282623, 39.604401, 57.134796>,  <34.907024, 39.108833, 56.852283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282623, 39.604401, 57.134796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985477, 39.778404, 56.931259>,  <34.807190, 39.882805, 56.809139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985477, 39.778404, 56.931259>,  <35.282623, 39.604401, 57.134796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985477, 39.778404, 56.931259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272979, 0.497195, 0.823578,
		0.611254, 0.750711, -0.250602,
		-0.742867, 0.435006, -0.508840,
		34.762619, 39.908905, 56.778606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290977, 40.355156, 57.330978>,  <35.282623, 39.604401, 57.134796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290977, 40.355156, 57.330978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927814, 40.284618, 57.178871>,  <34.709915, 40.242294, 57.087605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927814, 40.284618, 57.178871>,  <35.290977, 40.355156, 57.330978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927814, 40.284618, 57.178871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408396, 0.576532, 0.707689,
		0.094440, 0.797817, -0.595457,
		-0.907906, -0.176348, -0.380273,
		34.655441, 40.231712, 57.064789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874622, 41.007137, 57.315094>,  <35.290977, 40.355156, 57.330978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874622, 41.007137, 57.315094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584488, 40.733765, 57.282093>,  <34.410408, 40.569740, 57.262295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584488, 40.733765, 57.282093>,  <34.874622, 41.007137, 57.315094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584488, 40.733765, 57.282093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578099, 0.539665, 0.612016,
		-0.373750, 0.491610, -0.786530,
		-0.725336, -0.683433, -0.082500,
		34.366886, 40.528736, 57.257343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301689, 41.379147, 57.410156>,  <34.874622, 41.007137, 57.315094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301689, 41.379147, 57.410156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176147, 41.006512, 57.483517>,  <34.100822, 40.782928, 57.527534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176147, 41.006512, 57.483517>,  <34.301689, 41.379147, 57.410156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176147, 41.006512, 57.483517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590766, 0.342824, 0.730389,
		-0.743298, 0.120886, -0.657947,
		-0.313854, -0.931589, 0.183405,
		34.081993, 40.727036, 57.538540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577259, 41.427250, 57.445568>,  <34.301689, 41.379147, 57.410156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577259, 41.427250, 57.445568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729065, 41.129932, 57.665928>,  <33.820148, 40.951542, 57.798145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729065, 41.129932, 57.665928>,  <33.577259, 41.427250, 57.445568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729065, 41.129932, 57.665928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525285, 0.317058, 0.789652,
		-0.761607, -0.589063, -0.270111,
		0.379514, -0.743290, 0.550900,
		33.842918, 40.906944, 57.831200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
