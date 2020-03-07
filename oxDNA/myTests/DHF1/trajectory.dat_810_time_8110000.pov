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
	<3.140243, 2.386722, 1.547787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.441093, 2.156853, 1.418756>,  <3.621604, 2.018931, 1.341338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.441093, 2.156853, 1.418756>,  <3.140243, 2.386722, 1.547787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.441093, 2.156853, 1.418756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489352, -0.159161, -0.857439,
		0.441406, 0.802756, -0.400927,
		0.752127, -0.574674, -0.322575,
		3.666732, 1.984451, 1.321984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.298233, 2.568713, 0.885914>,  <3.140243, 2.386722, 1.547787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.298233, 2.568713, 0.885914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.405138, 2.185562, 0.927944>,  <3.469281, 1.955671, 0.953162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.405138, 2.185562, 0.927944>,  <3.298233, 2.568713, 0.885914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.405138, 2.185562, 0.927944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519004, -0.234963, -0.821844,
		0.811915, 0.165113, -0.559939,
		0.267262, -0.957878, 0.105075,
		3.485317, 1.898199, 0.959467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.723449, 2.440583, 0.316984>,  <3.298233, 2.568713, 0.885914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.723449, 2.440583, 0.316984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520695, 2.114372, 0.428686>,  <3.399042, 1.918646, 0.495707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520695, 2.114372, 0.428686>,  <3.723449, 2.440583, 0.316984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.520695, 2.114372, 0.428686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471099, -0.009220, -0.882032,
		0.721896, -0.578646, -0.379520,
		-0.506885, -0.815527, 0.279255,
		3.368629, 1.869714, 0.512463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.852840, 1.881295, -0.137261>,  <3.723449, 2.440583, 0.316984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.852840, 1.881295, -0.137261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492285, 1.841309, 0.031265>,  <3.275952, 1.817317, 0.132381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492285, 1.841309, 0.031265>,  <3.852840, 1.881295, -0.137261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.492285, 1.841309, 0.031265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413818, -0.087618, -0.906134,
		0.127498, -0.991126, 0.037610,
		-0.901387, -0.099966, 0.421316,
		3.221869, 1.811319, 0.157660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.514085, 1.200738, -0.277358>,  <3.852840, 1.881295, -0.137261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.514085, 1.200738, -0.277358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.232069, 1.477676, -0.215940>,  <3.062859, 1.643839, -0.179090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.232069, 1.477676, -0.215940>,  <3.514085, 1.200738, -0.277358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.232069, 1.477676, -0.215940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404911, -0.215254, -0.888658,
		-0.582207, -0.688711, 0.432101,
		-0.705040, 0.692346, 0.153545,
		3.020557, 1.685380, -0.169877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.037606, 0.777567, -0.366496>,  <3.514085, 1.200738, -0.277358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.037606, 0.777567, -0.366496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.915951, 1.155807, -0.412689>,  <2.842957, 1.382752, -0.440405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.915951, 1.155807, -0.412689>,  <3.037606, 0.777567, -0.366496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.915951, 1.155807, -0.412689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426522, -0.243564, -0.871066,
		-0.851809, -0.215670, 0.477398,
		-0.304139, 0.945602, -0.115482,
		2.824709, 1.439488, -0.447334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.281663, 0.789019, -0.540613>,  <3.037606, 0.777567, -0.366496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.281663, 0.789019, -0.540613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.434387, 1.136963, -0.665556>,  <2.526021, 1.345729, -0.740522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.434387, 1.136963, -0.665556>,  <2.281663, 0.789019, -0.540613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.434387, 1.136963, -0.665556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329769, -0.187502, -0.925254,
		-0.863408, 0.456277, 0.215262,
		0.381810, 0.869859, -0.312357,
		2.548930, 1.397921, -0.759263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.680403, 1.271566, -0.866741>,  <2.281663, 0.789019, -0.540613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.680403, 1.271566, -0.866741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049061, 1.301399, -1.019062>,  <2.270255, 1.319299, -1.110454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049061, 1.301399, -1.019062>,  <1.680403, 1.271566, -0.866741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.049061, 1.301399, -1.019062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338804, -0.323741, -0.883405,
		-0.189168, 0.943201, -0.273105,
		0.921644, 0.074583, -0.380802,
		2.325554, 1.323774, -1.133303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.999161, 0.712095, 2.758390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256058, 0.995178, 2.640629>,  <2.410196, 1.165028, 2.569972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256058, 0.995178, 2.640629>,  <1.999161, 0.712095, 2.758390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.256058, 0.995178, 2.640629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195661, 0.219996, 0.955677,
		0.741109, -0.671378, 0.002820,
		0.642241, 0.707709, -0.294403,
		2.448730, 1.207491, 2.552308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.579648, 0.652978, 3.107095>,  <1.999161, 0.712095, 2.758390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.579648, 0.652978, 3.107095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.490616, 1.033173, 3.020346>,  <2.437197, 1.261289, 2.968296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.490616, 1.033173, 3.020346>,  <2.579648, 0.652978, 3.107095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.490616, 1.033173, 3.020346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229935, 0.267360, 0.935761,
		0.947411, 0.158415, -0.278059,
		-0.222580, 0.950486, -0.216874,
		2.423842, 1.318318, 2.955283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.075880, 1.190238, 3.213390>,  <2.579648, 0.652978, 3.107095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.075880, 1.190238, 3.213390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.717979, 1.358658, 3.272905>,  <2.503239, 1.459710, 3.308614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.717979, 1.358658, 3.272905>,  <3.075880, 1.190238, 3.213390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.717979, 1.358658, 3.272905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309079, 0.343411, 0.886871,
		0.322322, 0.839515, -0.437405,
		-0.894751, 0.421051, 0.148787,
		2.449554, 1.484973, 3.317542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.088837, 1.954125, 3.351265>,  <3.075880, 1.190238, 3.213390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.088837, 1.954125, 3.351265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757294, 1.810173, 3.522604>,  <2.558368, 1.723802, 3.625407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757294, 1.810173, 3.522604>,  <3.088837, 1.954125, 3.351265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.757294, 1.810173, 3.522604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317463, 0.327894, 0.889777,
		-0.460665, 0.873483, -0.157529,
		-0.828858, -0.359880, 0.428348,
		2.508636, 1.702209, 3.651108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.017891, 2.510443, 3.854888>,  <3.088837, 1.954125, 3.351265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.017891, 2.510443, 3.854888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.831726, 2.181847, 3.986671>,  <2.720027, 1.984689, 4.065742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.831726, 2.181847, 3.986671>,  <3.017891, 2.510443, 3.854888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.831726, 2.181847, 3.986671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315559, 0.193762, 0.928913,
		-0.826931, 0.536290, 0.169050,
		-0.465412, -0.821492, 0.329459,
		2.692103, 1.935399, 4.085509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.487566, 2.728171, 4.365433>,  <3.017891, 2.510443, 3.854888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.487566, 2.728171, 4.365433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.600906, 2.347313, 4.411274>,  <2.668911, 2.118798, 4.438778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.600906, 2.347313, 4.411274>,  <2.487566, 2.728171, 4.365433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.600906, 2.347313, 4.411274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248609, 0.188341, 0.950116,
		-0.926232, -0.240725, 0.290078,
		0.283351, -0.952144, 0.114601,
		2.685912, 2.061670, 4.445654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.126713, 2.536304, 4.892250>,  <2.487566, 2.728171, 4.365433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.126713, 2.536304, 4.892250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.450363, 2.301285, 4.896313>,  <2.644553, 2.160274, 4.898750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.450363, 2.301285, 4.896313>,  <2.126713, 2.536304, 4.892250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.450363, 2.301285, 4.896313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122513, 0.185571, 0.974964,
		-0.574722, -0.787624, 0.222132,
		0.809126, -0.587547, 0.010157,
		2.693101, 2.125021, 4.899360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.099558, 2.186069, 5.419577>,  <2.126713, 2.536304, 4.892250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.099558, 2.186069, 5.419577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.491623, 2.168831, 5.342197>,  <2.726862, 2.158488, 5.295770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.491623, 2.168831, 5.342197>,  <2.099558, 2.186069, 5.419577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.491623, 2.168831, 5.342197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198156, 0.231294, 0.952490,
		0.003695, -0.971929, 0.235246,
		0.980164, -0.043096, -0.193448,
		2.785672, 2.155902, 5.284163>
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
