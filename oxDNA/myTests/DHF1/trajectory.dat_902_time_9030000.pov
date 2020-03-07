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
	<4.045935, 2.545649, 3.843240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.939865, 2.554554, 4.228817>,  <3.876223, 2.559897, 4.460164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.939865, 2.554554, 4.228817>,  <4.045935, 2.545649, 3.843240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.939865, 2.554554, 4.228817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962998, -0.056040, -0.263619,
		0.048152, -0.998180, 0.036295,
		-0.265174, 0.022259, 0.963943,
		3.860313, 2.561233, 4.518000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.791897, 1.986501, 4.137333>,  <4.045935, 2.545649, 3.843240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.791897, 1.986501, 4.137333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.632782, 2.328167, 4.271300>,  <3.537313, 2.533166, 4.351681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.632782, 2.328167, 4.271300>,  <3.791897, 1.986501, 4.137333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.632782, 2.328167, 4.271300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834040, -0.184553, -0.519921,
		-0.382288, -0.486152, 0.785819,
		-0.397786, 0.854164, 0.334918,
		3.513446, 2.584416, 4.371776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.079347, 1.936977, 4.028421>,  <3.791897, 1.986501, 4.137333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.079347, 1.936977, 4.028421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.148872, 2.322720, 4.108227>,  <3.190588, 2.554165, 4.156110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.148872, 2.322720, 4.108227>,  <3.079347, 1.936977, 4.028421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.148872, 2.322720, 4.108227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848757, 0.249439, -0.466253,
		-0.499401, -0.088297, 0.861860,
		0.173813, 0.964357, 0.199513,
		3.201016, 2.612026, 4.168081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.480314, 2.300507, 4.200436>,  <3.079347, 1.936977, 4.028421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.480314, 2.300507, 4.200436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.716232, 2.598942, 4.076828>,  <2.857783, 2.778003, 4.002663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.716232, 2.598942, 4.076828>,  <2.480314, 2.300507, 4.200436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.716232, 2.598942, 4.076828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789466, 0.452168, -0.415075,
		-0.169953, 0.488771, 0.855698,
		0.589796, 0.746088, -0.309020,
		2.893171, 2.822768, 3.984122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.080948, 2.887039, 4.382130>,  <2.480314, 2.300507, 4.200436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.080948, 2.887039, 4.382130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.340965, 2.987259, 4.095168>,  <2.496976, 3.047391, 3.922991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.340965, 2.987259, 4.095168>,  <2.080948, 2.887039, 4.382130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.340965, 2.987259, 4.095168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673132, 0.627939, -0.390623,
		0.352615, 0.736829, 0.576841,
		0.650043, 0.250550, -0.717404,
		2.535978, 3.062424, 3.879947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.779322, 3.555865, 4.118947>,  <2.080948, 2.887039, 4.382130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.779322, 3.555865, 4.118947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.044914, 3.487755, 3.827705>,  <2.204270, 3.446889, 3.652960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.044914, 3.487755, 3.827705>,  <1.779322, 3.555865, 4.118947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.044914, 3.487755, 3.827705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513377, 0.604161, -0.609453,
		0.543666, 0.778458, 0.313736,
		0.663981, -0.170274, -0.728104,
		2.244109, 3.436672, 3.609274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.862392, 4.193937, 3.895528>,  <1.779322, 3.555865, 4.118947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.862392, 4.193937, 3.895528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.986717, 3.978699, 3.582134>,  <2.061312, 3.849555, 3.394098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.986717, 3.978699, 3.582134>,  <1.862392, 4.193937, 3.895528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.986717, 3.978699, 3.582134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514542, 0.597818, -0.614704,
		0.799150, 0.594194, -0.091064,
		0.310813, -0.538097, -0.783484,
		2.079961, 3.817270, 3.347089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.321245, 4.611619, 3.373355>,  <1.862392, 4.193937, 3.895528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.321245, 4.611619, 3.373355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.133636, 4.302322, 3.202654>,  <2.021071, 4.116745, 3.100233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.133636, 4.302322, 3.202654>,  <2.321245, 4.611619, 3.373355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.133636, 4.302322, 3.202654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513049, 0.631848, -0.580990,
		0.718889, -0.053550, -0.693059,
		-0.469020, -0.773241, -0.426755,
		1.992930, 4.070350, 3.074628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.952241, 4.232434, 3.359887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.870735, 4.275078, 2.970608>,  <0.821832, 4.300664, 2.737040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.870735, 4.275078, 2.970608>,  <0.952241, 4.232434, 3.359887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.870735, 4.275078, 2.970608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934964, -0.273653, -0.225736,
		-0.290384, -0.955902, -0.043915,
		-0.203764, 0.106609, -0.973198,
		0.809606, 4.307060, 2.678648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.931964, 3.578039, 3.087700>,  <0.952241, 4.232434, 3.359887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.931964, 3.578039, 3.087700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068535, 3.892273, 2.881289>,  <1.150477, 4.080813, 2.757442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068535, 3.892273, 2.881289>,  <0.931964, 3.578039, 3.087700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.068535, 3.892273, 2.881289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935871, -0.334973, 0.109261,
		-0.087022, -0.520241, -0.849574,
		0.341426, 0.785584, -0.516029,
		1.170963, 4.127948, 2.726480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.215697, 3.213009, 2.479523>,  <0.931964, 3.578039, 3.087700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.215697, 3.213009, 2.479523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388344, 3.563026, 2.567163>,  <1.491932, 3.773037, 2.619748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388344, 3.563026, 2.567163>,  <1.215697, 3.213009, 2.479523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388344, 3.563026, 2.567163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837036, -0.479058, 0.264336,
		0.336268, 0.069303, -0.939213,
		0.431618, 0.875043, 0.219101,
		1.517829, 3.825539, 2.632894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.876012, 3.147489, 2.166121>,  <1.215697, 3.213009, 2.479523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.876012, 3.147489, 2.166121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.895393, 3.400642, 2.475212>,  <1.907022, 3.552535, 2.660667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.895393, 3.400642, 2.475212>,  <1.876012, 3.147489, 2.166121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.895393, 3.400642, 2.475212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828229, -0.457881, 0.323082,
		0.558292, 0.624342, -0.546359,
		0.048453, 0.632884, 0.772729,
		1.909929, 3.590508, 2.707031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.425781, 3.075030, 2.317523>,  <1.876012, 3.147489, 2.166121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.425781, 3.075030, 2.317523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.343597, 3.294472, 2.641701>,  <2.294287, 3.426137, 2.836207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.343597, 3.294472, 2.641701>,  <2.425781, 3.075030, 2.317523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.343597, 3.294472, 2.641701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769491, -0.421124, 0.480145,
		0.604707, 0.722280, -0.335622,
		-0.205460, 0.548604, 0.810444,
		2.281959, 3.459053, 2.884834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.116488, 3.267453, 2.594237>,  <2.425781, 3.075030, 2.317523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.116488, 3.267453, 2.594237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.853859, 3.306152, 2.893450>,  <2.696281, 3.329372, 3.072977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.853859, 3.306152, 2.893450>,  <3.116488, 3.267453, 2.594237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.853859, 3.306152, 2.893450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705152, -0.273273, 0.654280,
		0.267718, 0.957059, 0.111201,
		-0.656573, 0.096749, 0.748032,
		2.656887, 3.335177, 3.117859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.386466, 3.641844, 3.088050>,  <3.116488, 3.267453, 2.594237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.386466, 3.641844, 3.088050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121506, 3.488159, 3.345299>,  <2.962529, 3.395948, 3.499648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121506, 3.488159, 3.345299>,  <3.386466, 3.641844, 3.088050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.121506, 3.488159, 3.345299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746016, -0.259874, 0.613127,
		-0.068440, 0.885916, 0.458770,
		-0.662401, -0.384212, 0.643122,
		2.922785, 3.372895, 3.538235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.550961, 3.895621, 3.724487>,  <3.386466, 3.641844, 3.088050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.550961, 3.895621, 3.724487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.361732, 3.547333, 3.778229>,  <3.248196, 3.338360, 3.810474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.361732, 3.547333, 3.778229>,  <3.550961, 3.895621, 3.724487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.361732, 3.547333, 3.778229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744161, -0.313273, 0.589987,
		-0.471624, 0.379086, 0.796156,
		-0.473070, -0.870720, 0.134354,
		3.219811, 3.286117, 3.818535>
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
