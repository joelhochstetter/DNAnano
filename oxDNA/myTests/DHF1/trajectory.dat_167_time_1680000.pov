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
	<2.653855, 0.583149, 1.140975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.776482, 0.906311, 1.342293>,  <2.850058, 1.100208, 1.463084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.776482, 0.906311, 1.342293>,  <2.653855, 0.583149, 1.140975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.776482, 0.906311, 1.342293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877123, -0.034413, -0.479031,
		-0.369692, 0.588306, -0.719183,
		0.306566, 0.807905, 0.503295,
		2.868452, 1.148683, 1.493281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.862083, 1.101043, 0.647107>,  <2.653855, 0.583149, 1.140975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.862083, 1.101043, 0.647107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072128, 1.128487, 0.986412>,  <3.198155, 1.144953, 1.189995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072128, 1.128487, 0.986412>,  <2.862083, 1.101043, 0.647107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072128, 1.128487, 0.986412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851008, -0.050014, -0.522766,
		0.006559, 0.996389, -0.084649,
		0.525112, 0.068608, 0.848263,
		3.229662, 1.149069, 1.240891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.300869, 1.736529, 0.652245>,  <2.862083, 1.101043, 0.647107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.300869, 1.736529, 0.652245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509254, 1.526253, 0.921242>,  <3.634286, 1.400087, 1.082640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509254, 1.526253, 0.921242>,  <3.300869, 1.736529, 0.652245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.509254, 1.526253, 0.921242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849426, 0.241662, -0.469122,
		0.084097, 0.815628, 0.572433,
		0.520964, -0.525691, 0.672492,
		3.665544, 1.368546, 1.122989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.787995, 2.183851, 1.140097>,  <3.300869, 1.736529, 0.652245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.787995, 2.183851, 1.140097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.922997, 1.814720, 1.065819>,  <4.003998, 1.593242, 1.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.922997, 1.814720, 1.065819>,  <3.787995, 2.183851, 1.140097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.922997, 1.814720, 1.065819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846490, 0.383830, -0.368956,
		0.411758, -0.032666, 0.910708,
		0.337505, -0.922826, -0.185696,
		4.024248, 1.537872, 1.010110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.528259, 2.001241, 1.381838>,  <3.787995, 2.183851, 1.140097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.528259, 2.001241, 1.381838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.463585, 1.764236, 1.066170>,  <4.424780, 1.622034, 0.876769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.463585, 1.764236, 1.066170>,  <4.528259, 2.001241, 1.381838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.463585, 1.764236, 1.066170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831411, 0.349007, -0.432376,
		0.531613, -0.726034, 0.436190,
		-0.161686, -0.592510, -0.789170,
		4.415079, 1.586483, 0.829419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.144998, 1.751131, 1.188866>,  <4.528259, 2.001241, 1.381838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.144998, 1.751131, 1.188866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921356, 1.716652, 0.859024>,  <4.787171, 1.695964, 0.661119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921356, 1.716652, 0.859024>,  <5.144998, 1.751131, 1.188866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.921356, 1.716652, 0.859024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802963, 0.191458, -0.564442,
		0.206533, -0.977708, -0.037829,
		-0.559102, -0.086200, -0.824605,
		4.753625, 1.690793, 0.611642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.653929, 1.500924, 0.676944>,  <5.144998, 1.751131, 1.188866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.653929, 1.500924, 0.676944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349449, 1.653641, 0.467255>,  <5.166761, 1.745271, 0.341441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349449, 1.653641, 0.467255>,  <5.653929, 1.500924, 0.676944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.349449, 1.653641, 0.467255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648257, 0.425044, -0.631744,
		-0.018376, -0.820715, -0.571042,
		-0.761200, 0.381791, -0.524224,
		5.121089, 1.768178, 0.309988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.851757, 1.425762, 0.011792>,  <5.653929, 1.500924, 0.676944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.851757, 1.425762, 0.011792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.572044, 1.711334, -0.002678>,  <5.404217, 1.882678, -0.011360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.572044, 1.711334, -0.002678>,  <5.851757, 1.425762, 0.011792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.572044, 1.711334, -0.002678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605358, 0.564502, -0.561141,
		-0.380196, -0.414293, -0.826929,
		-0.699281, 0.713932, -0.036174,
		5.362260, 1.925514, -0.013530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.345957, 2.938807, 4.130572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.087742, 3.241852, 4.169159>,  <0.932813, 3.423679, 4.192311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.087742, 3.241852, 4.169159>,  <1.345957, 2.938807, 4.130572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.087742, 3.241852, 4.169159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598288, -0.580156, 0.552694,
		0.474693, 0.299070, 0.827783,
		-0.645537, 0.757612, 0.096466,
		0.894081, 3.469135, 4.198099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.189697, 3.106697, 4.855779>,  <1.345957, 2.938807, 4.130572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.189697, 3.106697, 4.855779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.876968, 3.211739, 4.629578>,  <0.689331, 3.274764, 4.493857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.876968, 3.211739, 4.629578>,  <1.189697, 3.106697, 4.855779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.876968, 3.211739, 4.629578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547112, -0.723936, 0.420220,
		-0.299036, 0.637930, 0.709663,
		-0.781822, 0.262604, -0.565502,
		0.642422, 3.290520, 4.459927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.656794, 3.029008, 5.382360>,  <1.189697, 3.106697, 4.855779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.656794, 3.029008, 5.382360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.540066, 2.966263, 5.004951>,  <0.470029, 2.928616, 4.778506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.540066, 2.966263, 5.004951>,  <0.656794, 3.029008, 5.382360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.540066, 2.966263, 5.004951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585518, -0.750727, 0.305905,
		-0.756313, 0.641719, 0.127232,
		-0.291821, -0.156863, -0.943522,
		0.452520, 2.919204, 4.721895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.019829, 3.202315, 5.287579>,  <0.656794, 3.029008, 5.382360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.019829, 3.202315, 5.287579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.136505, 2.897881, 5.055832>,  <0.206511, 2.715220, 4.916784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.136505, 2.897881, 5.055832>,  <0.019829, 3.202315, 5.287579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.136505, 2.897881, 5.055832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607162, -0.615358, 0.502682,
		-0.739102, 0.205143, -0.641595,
		0.291689, -0.761085, -0.579368,
		0.224012, 2.669555, 4.882022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.533578, 2.859680, 5.106318>,  <0.019829, 3.202315, 5.287579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.533578, 2.859680, 5.106318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.269703, 2.570641, 5.023697>,  <-0.111378, 2.397217, 4.974124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.269703, 2.570641, 5.023697>,  <-0.533578, 2.859680, 5.106318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.269703, 2.570641, 5.023697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623319, -0.679612, 0.386784,
		-0.419866, -0.126407, -0.898740,
		0.659687, -0.722599, -0.206554,
		-0.071797, 2.353861, 4.961730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.941945, 2.338976, 4.742380>,  <-0.533578, 2.859680, 5.106318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.941945, 2.338976, 4.742380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.626572, 2.176025, 4.926735>,  <-0.437348, 2.078255, 5.037348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.626572, 2.176025, 4.926735>,  <-0.941945, 2.338976, 4.742380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.626572, 2.176025, 4.926735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601520, -0.667295, 0.439194,
		0.128630, -0.623508, -0.771163,
		0.788434, -0.407376, 0.460887,
		-0.390041, 2.053813, 5.065001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.996626, 1.681754, 4.549114>,  <-0.941945, 2.338976, 4.742380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.996626, 1.681754, 4.549114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.765083, 1.669861, 4.875069>,  <-0.626158, 1.662725, 5.070642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.765083, 1.669861, 4.875069>,  <-0.996626, 1.681754, 4.549114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.765083, 1.669861, 4.875069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656244, -0.610162, 0.443900,
		0.484014, -0.791719, -0.372708,
		0.578856, -0.029733, 0.814887,
		-0.591426, 1.660941, 5.119535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.961354, 0.994192, 4.729878>,  <-0.996626, 1.681754, 4.549114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.961354, 0.994192, 4.729878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.863861, 1.161346, 5.079956>,  <-0.805365, 1.261639, 5.290003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.863861, 1.161346, 5.079956>,  <-0.961354, 0.994192, 4.729878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.863861, 1.161346, 5.079956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679216, -0.570603, 0.461604,
		0.692287, -0.706954, 0.144760,
		0.243732, 0.417886, 0.875195,
		-0.790741, 1.286712, 5.342515>
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
