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
	<3.226473, 0.860636, 3.858285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.966122, 0.814186, 4.158384>,  <2.809911, 0.786316, 4.338444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.966122, 0.814186, 4.158384>,  <3.226473, 0.860636, 3.858285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.966122, 0.814186, 4.158384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657313, 0.580672, -0.480375,
		-0.379866, -0.805813, -0.454276,
		-0.650878, -0.116124, 0.750249,
		2.770858, 0.779349, 4.383459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.607167, 0.504871, 3.594078>,  <3.226473, 0.860636, 3.858285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.607167, 0.504871, 3.594078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.561367, 0.772537, 3.887774>,  <2.533887, 0.933137, 4.063991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.561367, 0.772537, 3.887774>,  <2.607167, 0.504871, 3.594078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.561367, 0.772537, 3.887774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500163, 0.599759, -0.624601,
		-0.858328, -0.438756, 0.266020,
		-0.114499, 0.669165, 0.734239,
		2.527017, 0.973287, 4.108046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.970993, 0.625208, 3.730868>,  <2.607167, 0.504871, 3.594078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.970993, 0.625208, 3.730868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139572, 0.976425, 3.821575>,  <2.240720, 1.187155, 3.875999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139572, 0.976425, 3.821575>,  <1.970993, 0.625208, 3.730868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.139572, 0.976425, 3.821575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682838, 0.471809, -0.557788,
		-0.596753, 0.080233, 0.798404,
		0.421447, 0.878043, 0.226768,
		2.266006, 1.239838, 3.889606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.455989, 1.142562, 4.038126>,  <1.970993, 0.625208, 3.730868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.455989, 1.142562, 4.038126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.764774, 1.345490, 3.884918>,  <1.950045, 1.467246, 3.792994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.764774, 1.345490, 3.884918>,  <1.455989, 1.142562, 4.038126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.764774, 1.345490, 3.884918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634936, 0.644314, -0.426283,
		0.030523, 0.572266, 0.819500,
		0.771962, 0.507318, -0.383018,
		1.996363, 1.497685, 3.770013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.195086, 1.854070, 4.068080>,  <1.455989, 1.142562, 4.038126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.195086, 1.854070, 4.068080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.483631, 1.849518, 3.791094>,  <1.656758, 1.846787, 3.624902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.483631, 1.849518, 3.791094>,  <1.195086, 1.854070, 4.068080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.483631, 1.849518, 3.791094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559143, 0.580411, -0.592015,
		0.408651, 0.814244, 0.412323,
		0.721362, -0.011380, -0.692465,
		1.700040, 1.846104, 3.583354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.232582, 2.592674, 3.904123>,  <1.195086, 1.854070, 4.068080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.232582, 2.592674, 3.904123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.386135, 2.379967, 3.602167>,  <1.478267, 2.252342, 3.420994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.386135, 2.379967, 3.602167>,  <1.232582, 2.592674, 3.904123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.386135, 2.379967, 3.602167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414947, 0.630984, -0.655498,
		0.824896, 0.564873, 0.021568,
		0.383882, -0.531768, -0.754889,
		1.501300, 2.220436, 3.375700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.259911, 3.059963, 3.490959>,  <1.232582, 2.592674, 3.904123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.259911, 3.059963, 3.490959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339500, 2.752258, 3.248095>,  <1.387254, 2.567635, 3.102376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339500, 2.752258, 3.248095>,  <1.259911, 3.059963, 3.490959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.339500, 2.752258, 3.248095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368206, 0.515474, -0.773763,
		0.908203, 0.377519, -0.180682,
		0.198974, -0.769263, -0.607161,
		1.399192, 2.521479, 3.065946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.673955, 3.254015, 2.928706>,  <1.259911, 3.059963, 3.490959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.673955, 3.254015, 2.928706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478279, 2.927982, 2.804554>,  <1.360874, 2.732363, 2.730063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478279, 2.927982, 2.804554>,  <1.673955, 3.254015, 2.928706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.478279, 2.927982, 2.804554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264826, 0.477880, -0.837555,
		0.831000, -0.327526, -0.449628,
		-0.489189, -0.815081, -0.310381,
		1.331522, 2.683458, 2.711440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.809470, 3.335172, 2.613585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653564, 3.172699, 2.282986>,  <0.560021, 3.075215, 2.084626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653564, 3.172699, 2.282986>,  <0.809470, 3.335172, 2.613585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.653564, 3.172699, 2.282986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363355, -0.892493, 0.267263,
		-0.846202, -0.196143, 0.495450,
		-0.389764, -0.406182, -0.826499,
		0.536635, 3.050844, 2.035036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.456952, 2.825589, 2.786775>,  <0.809470, 3.335172, 2.613585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.456952, 2.825589, 2.786775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.593933, 2.750732, 2.418491>,  <0.676122, 2.705818, 2.197521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.593933, 2.750732, 2.418491>,  <0.456952, 2.825589, 2.786775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.593933, 2.750732, 2.418491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539507, -0.763121, 0.355779,
		-0.769194, -0.618566, -0.160365,
		0.342450, -0.187145, -0.920708,
		0.696669, 2.694590, 2.142279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.310371, 2.136678, 2.519572>,  <0.456952, 2.825589, 2.786775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.310371, 2.136678, 2.519572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.652397, 2.290497, 2.380440>,  <0.857613, 2.382788, 2.296960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.652397, 2.290497, 2.380440>,  <0.310371, 2.136678, 2.519572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.652397, 2.290497, 2.380440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512341, -0.729833, 0.452604,
		-0.079811, -0.565214, -0.821074,
		0.855065, 0.384548, -0.347831,
		0.908917, 2.405861, 2.276090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.742328, 1.590045, 2.354490>,  <0.310371, 2.136678, 2.519572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.742328, 1.590045, 2.354490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.941765, 1.915054, 2.475296>,  <1.061427, 2.110060, 2.547780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.941765, 1.915054, 2.475296>,  <0.742328, 1.590045, 2.354490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.941765, 1.915054, 2.475296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630712, -0.579055, 0.516621,
		0.594650, -0.067098, -0.801180,
		0.498591, 0.812523, 0.302016,
		1.091342, 2.158811, 2.565901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.467190, 1.373017, 2.451045>,  <0.742328, 1.590045, 2.354490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.467190, 1.373017, 2.451045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.448402, 1.730377, 2.629765>,  <1.437130, 1.944793, 2.736996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.448402, 1.730377, 2.629765>,  <1.467190, 1.373017, 2.451045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.448402, 1.730377, 2.629765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745300, -0.266468, 0.611165,
		0.665073, 0.361705, -0.653336,
		-0.046968, 0.893400, 0.446800,
		1.434312, 1.998397, 2.763804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.094151, 1.693040, 2.360370>,  <1.467190, 1.373017, 2.451045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.094151, 1.693040, 2.360370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.931587, 1.852501, 2.689224>,  <1.834049, 1.948177, 2.886537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.931587, 1.852501, 2.689224>,  <2.094151, 1.693040, 2.360370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.931587, 1.852501, 2.689224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724475, -0.407680, 0.555817,
		0.556746, 0.821507, -0.123128,
		-0.406411, 0.398652, 0.822136,
		1.809664, 1.972096, 2.935865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.613120, 1.851637, 2.662293>,  <2.094151, 1.693040, 2.360370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.613120, 1.851637, 2.662293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.334908, 1.849571, 2.949684>,  <2.167980, 1.848332, 3.122119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.334908, 1.849571, 2.949684>,  <2.613120, 1.851637, 2.662293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.334908, 1.849571, 2.949684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657802, -0.406827, 0.633868,
		0.289023, 0.913491, 0.286357,
		-0.695530, -0.005164, 0.718479,
		2.126249, 1.848022, 3.165228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.965779, 2.188696, 3.236743>,  <2.613120, 1.851637, 2.662293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.965779, 2.188696, 3.236743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.673431, 1.954460, 3.376980>,  <2.498023, 1.813918, 3.461122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.673431, 1.954460, 3.376980>,  <2.965779, 2.188696, 3.236743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.673431, 1.954460, 3.376980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623476, -0.363837, 0.692026,
		-0.277685, 0.724366, 0.631019,
		-0.730868, -0.585591, 0.350593,
		2.454171, 1.778783, 3.482158>
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
