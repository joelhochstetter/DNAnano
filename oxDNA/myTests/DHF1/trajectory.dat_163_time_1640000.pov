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
	<3.033085, 0.555554, 4.472866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.384369, 0.539101, 4.282265>,  <3.595140, 0.529229, 4.167904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.384369, 0.539101, 4.282265>,  <3.033085, 0.555554, 4.472866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.384369, 0.539101, 4.282265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034955, 0.988110, -0.149721,
		0.476995, 0.148142, 0.866331,
		0.878211, -0.041134, -0.476502,
		3.647832, 0.526761, 4.139314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.650672, 0.855366, 4.768820>,  <3.033085, 0.555554, 4.472866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.650672, 0.855366, 4.768820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.681297, 0.895782, 4.372047>,  <3.699673, 0.920033, 4.133984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.681297, 0.895782, 4.372047>,  <3.650672, 0.855366, 4.768820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.681297, 0.895782, 4.372047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149546, 0.984762, 0.088769,
		0.985786, 0.141543, 0.090508,
		0.076564, 0.101042, -0.991932,
		3.704267, 0.926095, 4.074468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.192089, 1.330571, 4.607931>,  <3.650672, 0.855366, 4.768820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.192089, 1.330571, 4.607931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.873970, 1.305779, 4.366714>,  <3.683099, 1.290903, 4.221984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.873970, 1.305779, 4.366714>,  <4.192089, 1.330571, 4.607931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.873970, 1.305779, 4.366714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237435, 0.947133, 0.215786,
		0.557786, 0.314798, -0.767969,
		-0.795298, -0.061980, -0.603042,
		3.635381, 1.287184, 4.185802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.202853, 1.871068, 4.096688>,  <4.192089, 1.330571, 4.607931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.202853, 1.871068, 4.096688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.822426, 1.761963, 4.154747>,  <3.594169, 1.696499, 4.189582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.822426, 1.761963, 4.154747>,  <4.202853, 1.871068, 4.096688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.822426, 1.761963, 4.154747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226455, 0.934942, 0.273133,
		-0.210205, 0.226899, -0.950963,
		-0.951069, -0.272764, 0.145147,
		3.537105, 1.680134, 4.198291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717324, 2.244265, 3.708624>,  <4.202853, 1.871068, 4.096688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717324, 2.244265, 3.708624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492714, 2.139893, 4.022720>,  <3.357948, 2.077269, 4.211178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492714, 2.139893, 4.022720>,  <3.717324, 2.244265, 3.708624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.492714, 2.139893, 4.022720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328511, 0.941285, 0.077864,
		-0.759454, -0.214238, -0.614274,
		-0.561525, -0.260930, 0.785242,
		3.324256, 2.061614, 4.258293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.075661, 2.603795, 3.743929>,  <3.717324, 2.244265, 3.708624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.075661, 2.603795, 3.743929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.104416, 2.503555, 4.130096>,  <3.121669, 2.443411, 4.361797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.104416, 2.503555, 4.130096>,  <3.075661, 2.603795, 3.743929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.104416, 2.503555, 4.130096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328739, 0.907885, 0.260144,
		-0.941681, -0.336071, -0.017117,
		0.071886, -0.250600, 0.965418,
		3.125982, 2.428375, 4.419722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.422353, 2.769348, 4.038257>,  <3.075661, 2.603795, 3.743929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.422353, 2.769348, 4.038257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.702873, 2.762077, 4.323311>,  <2.871185, 2.757715, 4.494343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.702873, 2.762077, 4.323311>,  <2.422353, 2.769348, 4.038257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.702873, 2.762077, 4.323311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277659, 0.913764, 0.296549,
		-0.656570, -0.405839, 0.635776,
		0.701300, -0.018176, 0.712635,
		2.913263, 2.756624, 4.537101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.081817, 3.072517, 4.651958>,  <2.422353, 2.769348, 4.038257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.081817, 3.072517, 4.651958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.477669, 3.095596, 4.704575>,  <2.715180, 3.109444, 4.736145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.477669, 3.095596, 4.704575>,  <2.081817, 3.072517, 4.651958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.477669, 3.095596, 4.704575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097280, 0.943006, 0.318240,
		-0.105684, -0.327736, 0.938840,
		0.989630, 0.057697, 0.131543,
		2.774558, 3.112906, 4.744038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.574505, 4.654662, 0.624091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.971107, 4.644302, 0.675072>,  <3.209069, 4.638087, 0.705660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.971107, 4.644302, 0.675072>,  <2.574505, 4.654662, 0.624091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.971107, 4.644302, 0.675072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040012, -0.871700, -0.488404,
		0.123750, 0.489356, -0.863260,
		0.991507, -0.025899, 0.127453,
		3.268559, 4.636533, 0.713308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.885609, 4.536532, 0.017716>,  <2.574505, 4.654662, 0.624091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.885609, 4.536532, 0.017716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.118256, 4.358490, 0.290070>,  <3.257844, 4.251665, 0.453482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.118256, 4.358490, 0.290070>,  <2.885609, 4.536532, 0.017716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.118256, 4.358490, 0.290070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058150, -0.857627, -0.510973,
		0.811382, 0.257597, -0.524694,
		0.581617, -0.445106, 0.680884,
		3.292741, 4.224958, 0.494335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.404455, 4.193132, -0.379387>,  <2.885609, 4.536532, 0.017716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.404455, 4.193132, -0.379387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.388622, 4.005669, -0.026390>,  <3.379122, 3.893190, 0.185408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.388622, 4.005669, -0.026390>,  <3.404455, 4.193132, -0.379387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.388622, 4.005669, -0.026390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003071, -0.883236, -0.468918,
		0.999212, -0.015851, 0.036400,
		-0.039583, -0.468660, 0.882491,
		3.376747, 3.865071, 0.238357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.784054, 3.608094, -0.506494>,  <3.404455, 4.193132, -0.379387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.784054, 3.608094, -0.506494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.532257, 3.531174, -0.205360>,  <3.381179, 3.485021, -0.024680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.532257, 3.531174, -0.205360>,  <3.784054, 3.608094, -0.506494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.532257, 3.531174, -0.205360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069972, -0.950924, -0.301408,
		0.773850, -0.242411, 0.585143,
		-0.629492, -0.192301, 0.752835,
		3.343410, 3.473483, 0.020490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.027050, 3.051549, -0.013564>,  <3.784054, 3.608094, -0.506494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.027050, 3.051549, -0.013564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627205, 3.058624, -0.022179>,  <3.387298, 3.062869, -0.027348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627205, 3.058624, -0.022179>,  <4.027050, 3.051549, -0.013564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.627205, 3.058624, -0.022179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009814, -0.946694, -0.321985,
		-0.026084, -0.321649, 0.946499,
		-0.999611, 0.017688, -0.021537,
		3.327322, 3.063931, -0.028640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.825178, 2.598143, 0.475156>,  <4.027050, 3.051549, -0.013564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.825178, 2.598143, 0.475156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.540279, 2.644302, 0.198204>,  <3.369340, 2.671998, 0.032033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.540279, 2.644302, 0.198204>,  <3.825178, 2.598143, 0.475156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.540279, 2.644302, 0.198204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014188, -0.988559, -0.150169,
		-0.701787, -0.097133, 0.705734,
		-0.712246, 0.115399, -0.692379,
		3.326606, 2.678922, -0.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.305644, 2.154523, 0.666726>,  <3.825178, 2.598143, 0.475156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.305644, 2.154523, 0.666726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.271389, 2.225037, 0.274483>,  <3.250836, 2.267345, 0.039137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.271389, 2.225037, 0.274483>,  <3.305644, 2.154523, 0.666726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.271389, 2.225037, 0.274483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127474, -0.978073, -0.164696,
		-0.988138, 0.110897, 0.106233,
		-0.085639, 0.176284, -0.980607,
		3.245697, 2.277922, -0.019699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.758787, 1.774110, 0.390292>,  <3.305644, 2.154523, 0.666726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.758787, 1.774110, 0.390292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.934853, 1.847397, 0.038681>,  <3.040492, 1.891369, -0.172285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.934853, 1.847397, 0.038681>,  <2.758787, 1.774110, 0.390292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.934853, 1.847397, 0.038681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147454, -0.950922, -0.272039,
		-0.885728, 0.249358, -0.391544,
		0.440163, 0.183218, -0.879027,
		3.066901, 1.902362, -0.225027>
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
