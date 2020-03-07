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
	<2.997551, 1.181608, 4.166974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.241179, 1.273972, 3.863470>,  <3.387356, 1.329390, 3.681368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.241179, 1.273972, 3.863470>,  <2.997551, 1.181608, 4.166974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.241179, 1.273972, 3.863470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792941, 0.197431, -0.576425,
		0.016701, 0.952734, 0.303346,
		0.609069, 0.230909, -0.758759,
		3.423900, 1.343244, 3.635842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.760308, 1.801028, 3.824757>,  <2.997551, 1.181608, 4.166974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.760308, 1.801028, 3.824757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.951706, 1.587708, 3.545721>,  <3.066545, 1.459715, 3.378299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.951706, 1.587708, 3.545721>,  <2.760308, 1.801028, 3.824757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.951706, 1.587708, 3.545721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840799, -0.049207, -0.539106,
		0.253180, 0.844493, -0.471946,
		0.478494, -0.533302, -0.697591,
		3.095254, 1.427717, 3.336444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.458443, 2.032565, 3.164637>,  <2.760308, 1.801028, 3.824757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.458443, 2.032565, 3.164637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.607850, 1.663887, 3.122753>,  <2.697494, 1.442680, 3.097623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.607850, 1.663887, 3.122753>,  <2.458443, 2.032565, 3.164637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.607850, 1.663887, 3.122753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720854, -0.217361, -0.658121,
		0.583826, 0.321300, -0.745596,
		0.373518, -0.921694, -0.104710,
		2.719905, 1.387379, 3.091340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.633714, 1.849653, 2.468549>,  <2.458443, 2.032565, 3.164637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.633714, 1.849653, 2.468549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539382, 1.490746, 2.617836>,  <2.482782, 1.275401, 2.707408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539382, 1.490746, 2.617836>,  <2.633714, 1.849653, 2.468549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.539382, 1.490746, 2.617836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688774, -0.116595, -0.715539,
		0.685547, -0.425809, -0.590519,
		-0.235831, -0.897270, 0.373217,
		2.468632, 1.221565, 2.729801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.785542, 1.110374, 2.059466>,  <2.633714, 1.849653, 2.468549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.785542, 1.110374, 2.059466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.456672, 1.129196, 2.286381>,  <2.259350, 1.140489, 2.422530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.456672, 1.129196, 2.286381>,  <2.785542, 1.110374, 2.059466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.456672, 1.129196, 2.286381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568894, -0.102449, -0.816005,
		0.019723, -0.993625, 0.110999,
		-0.822175, 0.047052, 0.567287,
		2.210019, 1.143312, 2.456567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.458086, 0.495641, 1.910150>,  <2.785542, 1.110374, 2.059466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.458086, 0.495641, 1.910150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192761, 0.766106, 2.038414>,  <2.033567, 0.928385, 2.115372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192761, 0.766106, 2.038414>,  <2.458086, 0.495641, 1.910150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.192761, 0.766106, 2.038414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526239, -0.116800, -0.842276,
		-0.532063, -0.727435, 0.433298,
		-0.663311, 0.676163, 0.320660,
		1.993768, 0.968954, 2.134612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.854252, 0.249617, 1.761547>,  <2.458086, 0.495641, 1.910150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.854252, 0.249617, 1.761547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.775934, 0.640350, 1.796097>,  <1.728943, 0.874790, 1.816827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.775934, 0.640350, 1.796097>,  <1.854252, 0.249617, 1.761547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.775934, 0.640350, 1.796097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480013, -0.018660, -0.877063,
		-0.855132, -0.213186, 0.472547,
		-0.195796, 0.976834, 0.086375,
		1.717196, 0.933400, 1.822009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.121930, 0.357150, 1.621178>,  <1.854252, 0.249617, 1.761547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.121930, 0.357150, 1.621178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.301348, 0.710091, 1.564238>,  <1.408998, 0.921855, 1.530073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.301348, 0.710091, 1.564238>,  <1.121930, 0.357150, 1.621178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.301348, 0.710091, 1.564238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371886, 0.039423, -0.927441,
		-0.812717, 0.468936, 0.345817,
		0.448544, 0.882352, -0.142351,
		1.435911, 0.974796, 1.521532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.215012, 1.328212, -0.461587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.007162, 1.612221, -0.271488>,  <0.882452, 1.782626, -0.157429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.007162, 1.612221, -0.271488>,  <1.215012, 1.328212, -0.461587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.007162, 1.612221, -0.271488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572562, -0.123482, 0.810509,
		0.634164, 0.693268, -0.342367,
		-0.519624, 0.710023, 0.475246,
		0.851275, 1.825227, -0.128914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.742265, 1.563604, -0.170068>,  <1.215012, 1.328212, -0.461587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.742265, 1.563604, -0.170068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.418306, 1.646545, 0.049412>,  <1.223931, 1.696310, 0.181100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.418306, 1.646545, 0.049412>,  <1.742265, 1.563604, -0.170068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.418306, 1.646545, 0.049412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546216, -0.074372, 0.834336,
		0.213810, 0.975435, -0.053026,
		-0.809897, 0.207354, 0.548699,
		1.175337, 1.708751, 0.214022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.040901, 1.487526, 0.436000>,  <1.742265, 1.563604, -0.170068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.040901, 1.487526, 0.436000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.677574, 1.588043, 0.569752>,  <1.459578, 1.648354, 0.650003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.677574, 1.588043, 0.569752>,  <2.040901, 1.487526, 0.436000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.677574, 1.588043, 0.569752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299807, -0.166315, 0.939391,
		0.291675, 0.953515, 0.075728,
		-0.908318, 0.251293, 0.334380,
		1.405079, 1.663431, 0.670066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.088043, 2.004138, 0.999856>,  <2.040901, 1.487526, 0.436000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.088043, 2.004138, 0.999856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.776371, 1.758148, 1.048325>,  <1.589368, 1.610554, 1.077406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.776371, 1.758148, 1.048325>,  <2.088043, 2.004138, 0.999856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.776371, 1.758148, 1.048325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276219, -0.163357, 0.947110,
		-0.562655, 0.771440, 0.297152,
		-0.779180, -0.614976, 0.121173,
		1.542617, 1.573655, 1.084676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.774408, 2.175008, 1.522100>,  <2.088043, 2.004138, 0.999856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.774408, 2.175008, 1.522100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.619484, 1.806244, 1.518681>,  <1.526530, 1.584985, 1.516629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.619484, 1.806244, 1.518681>,  <1.774408, 2.175008, 1.522100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.619484, 1.806244, 1.518681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125885, -0.062067, 0.990101,
		-0.913315, 0.382400, 0.140093,
		-0.387310, -0.921910, -0.008548,
		1.503291, 1.529671, 1.516116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.420315, 2.129001, 2.170187>,  <1.774408, 2.175008, 1.522100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.420315, 2.129001, 2.170187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.505615, 1.756775, 2.051144>,  <1.556795, 1.533439, 1.979718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.505615, 1.756775, 2.051144>,  <1.420315, 2.129001, 2.170187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.505615, 1.756775, 2.051144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460223, -0.173022, 0.870781,
		-0.861812, -0.322660, 0.391371,
		0.213251, -0.930566, -0.297608,
		1.569590, 1.477605, 1.961861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.121927, 1.720130, 2.740967>,  <1.420315, 2.129001, 2.170187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.121927, 1.720130, 2.740967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.395552, 1.497040, 2.552923>,  <1.559726, 1.363186, 2.440097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.395552, 1.497040, 2.552923>,  <1.121927, 1.720130, 2.740967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.395552, 1.497040, 2.552923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468405, -0.158176, 0.869239,
		-0.559157, -0.814814, 0.153039,
		0.684061, -0.557726, -0.470109,
		1.600770, 1.329722, 2.411891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.231408, 1.203082, 3.254407>,  <1.121927, 1.720130, 2.740967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.231408, 1.203082, 3.254407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.533781, 1.193115, 2.992737>,  <1.715205, 1.187135, 2.835734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.533781, 1.193115, 2.992737>,  <1.231408, 1.203082, 3.254407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.533781, 1.193115, 2.992737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651581, -0.068029, 0.755523,
		-0.063323, -0.997372, -0.035194,
		0.755932, -0.024911, -0.654176,
		1.760561, 1.185640, 2.796484>
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
