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
	<5.050061, 3.245430, 0.798503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.733669, 3.470276, 0.701855>,  <4.543834, 3.605183, 0.643865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.733669, 3.470276, 0.701855>,  <5.050061, 3.245430, 0.798503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.733669, 3.470276, 0.701855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402730, -0.775619, -0.486029,
		-0.460610, -0.287130, 0.839878,
		-0.790979, 0.562114, -0.241621,
		4.496376, 3.638910, 0.629368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.452117, 2.927089, 1.042317>,  <5.050061, 3.245430, 0.798503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.452117, 2.927089, 1.042317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.373383, 3.161392, 0.727829>,  <4.326141, 3.301974, 0.539136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.373383, 3.161392, 0.727829>,  <4.452117, 2.927089, 1.042317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.373383, 3.161392, 0.727829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308868, -0.798125, -0.517298,
		-0.930514, 0.141015, 0.338022,
		-0.196837, 0.585757, -0.786221,
		4.314332, 3.337119, 0.491963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.734462, 2.898589, 0.816866>,  <4.452117, 2.927089, 1.042317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.734462, 2.898589, 0.816866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.921478, 2.991379, 0.475670>,  <4.033689, 3.047053, 0.270952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.921478, 2.991379, 0.475670>,  <3.734462, 2.898589, 0.816866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.921478, 2.991379, 0.475670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495923, -0.729958, -0.470342,
		-0.731755, 0.642922, -0.226244,
		0.467542, 0.231976, -0.852990,
		4.061741, 3.060971, 0.219773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.298236, 3.238378, 0.291957>,  <3.734462, 2.898589, 0.816866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.298236, 3.238378, 0.291957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567142, 2.976837, 0.153084>,  <3.728486, 2.819912, 0.069760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567142, 2.976837, 0.153084>,  <3.298236, 3.238378, 0.291957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567142, 2.976837, 0.153084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713916, -0.696694, -0.070295,
		-0.195918, 0.295116, -0.935159,
		0.672265, -0.653853, -0.347183,
		3.768822, 2.780681, 0.048929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.122432, 3.142515, -0.389474>,  <3.298236, 3.238378, 0.291957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.122432, 3.142515, -0.389474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.277622, 2.849777, -0.165375>,  <3.370736, 2.674134, -0.030915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.277622, 2.849777, -0.165375>,  <3.122432, 3.142515, -0.389474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.277622, 2.849777, -0.165375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890852, -0.453642, 0.024333,
		0.236344, -0.508538, -0.827968,
		0.387975, -0.731845, 0.560248,
		3.394015, 2.630224, 0.002700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.845818, 2.512725, -0.659555>,  <3.122432, 3.142515, -0.389474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.845818, 2.512725, -0.659555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.946938, 2.444153, -0.278671>,  <3.007609, 2.403009, -0.050141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.946938, 2.444153, -0.278671>,  <2.845818, 2.512725, -0.659555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.946938, 2.444153, -0.278671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935352, -0.294970, 0.195219,
		0.247406, -0.940002, -0.234917,
		0.252799, -0.171431, 0.952210,
		3.022777, 2.392724, 0.006992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.626147, 1.798643, -0.418926>,  <2.845818, 2.512725, -0.659555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.626147, 1.798643, -0.418926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.683289, 2.007004, -0.082294>,  <2.717573, 2.132020, 0.119684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.683289, 2.007004, -0.082294>,  <2.626147, 1.798643, -0.418926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.683289, 2.007004, -0.082294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833760, -0.394851, 0.385923,
		0.533327, -0.756804, 0.377902,
		0.142854, 0.520903, 0.841578,
		2.726145, 2.163275, 0.170179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.312458, 1.414728, 0.113260>,  <2.626147, 1.798643, -0.418926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.312458, 1.414728, 0.113260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.339882, 1.779282, 0.275581>,  <2.356337, 1.998014, 0.372974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.339882, 1.779282, 0.275581>,  <2.312458, 1.414728, 0.113260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.339882, 1.779282, 0.275581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887197, -0.130331, 0.442600,
		0.456268, -0.390373, 0.799643,
		0.068561, 0.911385, 0.405804,
		2.360450, 2.052697, 0.397323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.873329, 2.076836, 0.885127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.918503, 2.473587, 0.908535>,  <0.945607, 2.711638, 0.922580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.918503, 2.473587, 0.908535>,  <0.873329, 2.076836, 0.885127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.918503, 2.473587, 0.908535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951791, -0.091089, -0.292910,
		-0.285200, 0.088780, -0.954347,
		0.112935, 0.991878, 0.058521,
		0.952383, 2.771150, 0.926091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.205222, 2.319803, 0.219257>,  <0.873329, 2.076836, 0.885127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.205222, 2.319803, 0.219257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.277590, 2.560242, 0.530628>,  <1.321011, 2.704505, 0.717451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.277590, 2.560242, 0.530628>,  <1.205222, 2.319803, 0.219257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.277590, 2.560242, 0.530628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982801, -0.080704, -0.166101,
		-0.037020, 0.795091, -0.605359,
		0.180920, 0.601097, 0.778428,
		1.331866, 2.740571, 0.764157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.678254, 2.814592, -0.092095>,  <1.205222, 2.319803, 0.219257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.678254, 2.814592, -0.092095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698433, 2.739914, 0.300354>,  <1.710540, 2.695107, 0.535823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698433, 2.739914, 0.300354>,  <1.678254, 2.814592, -0.092095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698433, 2.739914, 0.300354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968182, -0.231954, -0.093919,
		0.245109, 0.954643, 0.169054,
		0.050447, -0.186695, 0.981122,
		1.713567, 2.683905, 0.594691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.133508, 3.233991, 0.342707>,  <1.678254, 2.814592, -0.092095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.133508, 3.233991, 0.342707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.120384, 2.872253, 0.512924>,  <2.112510, 2.655211, 0.615054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.120384, 2.872253, 0.512924>,  <2.133508, 3.233991, 0.342707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.120384, 2.872253, 0.512924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921124, -0.192599, -0.338286,
		0.387885, 0.380879, 0.839331,
		-0.032809, -0.904343, 0.425543,
		2.110542, 2.600950, 0.640587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.626866, 3.270741, 0.743256>,  <2.133508, 3.233991, 0.342707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.626866, 3.270741, 0.743256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.548136, 2.884079, 0.677727>,  <2.500897, 2.652082, 0.638409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.548136, 2.884079, 0.677727>,  <2.626866, 3.270741, 0.743256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.548136, 2.884079, 0.677727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926963, -0.129045, -0.352260,
		0.319373, -0.221192, 0.921453,
		-0.196826, -0.966655, -0.163823,
		2.489088, 2.594083, 0.628580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.025287, 2.841053, 1.225287>,  <2.626866, 3.270741, 0.743256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.025287, 2.841053, 1.225287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.937750, 2.618835, 0.904419>,  <2.885228, 2.485505, 0.711898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.937750, 2.618835, 0.904419>,  <3.025287, 2.841053, 1.225287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.937750, 2.618835, 0.904419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972807, -0.060309, -0.223627,
		0.075857, -0.829296, 0.553637,
		-0.218843, -0.555545, -0.802170,
		2.872097, 2.452172, 0.663768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.478297, 2.166090, 1.256102>,  <3.025287, 2.841053, 1.225287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.478297, 2.166090, 1.256102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.352207, 2.246216, 0.885048>,  <3.276553, 2.294291, 0.662415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.352207, 2.246216, 0.885048>,  <3.478297, 2.166090, 1.256102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.352207, 2.246216, 0.885048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946465, -0.005289, -0.322764,
		-0.069561, -0.979717, -0.187925,
		-0.315224, 0.200316, -0.927635,
		3.257640, 2.306311, 0.606757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.785660, 1.674697, 0.685345>,  <3.478297, 2.166090, 1.256102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.785660, 1.674697, 0.685345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.683218, 2.020218, 0.511791>,  <3.621753, 2.227531, 0.407659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.683218, 2.020218, 0.511791>,  <3.785660, 1.674697, 0.685345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.683218, 2.020218, 0.511791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935822, 0.109106, -0.335161,
		-0.242174, -0.491874, -0.836308,
		-0.256104, 0.863803, -0.433883,
		3.606387, 2.279359, 0.381626>
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
