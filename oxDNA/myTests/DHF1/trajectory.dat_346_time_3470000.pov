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
	<1.826117, 2.282474, 1.604029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778748, 1.890556, 1.668503>,  <1.750326, 1.655406, 1.707187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778748, 1.890556, 1.668503>,  <1.826117, 2.282474, 1.604029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778748, 1.890556, 1.668503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247676, 0.186343, 0.950754,
		-0.961578, 0.072669, -0.264739,
		-0.118423, -0.979793, 0.161185,
		1.743221, 1.596618, 1.716858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.134315, 2.111362, 1.918212>,  <1.826117, 2.282474, 1.604029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.134315, 2.111362, 1.918212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406837, 1.844055, 2.037704>,  <1.570351, 1.683671, 2.109400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406837, 1.844055, 2.037704>,  <1.134315, 2.111362, 1.918212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.406837, 1.844055, 2.037704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267261, 0.152836, 0.951427,
		-0.681465, -0.728051, -0.074474,
		0.681305, -0.668268, 0.298732,
		1.611229, 1.643575, 2.127324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.808599, 1.626744, 2.462997>,  <1.134315, 2.111362, 1.918212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.808599, 1.626744, 2.462997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.204632, 1.659988, 2.508308>,  <1.442251, 1.679935, 2.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.204632, 1.659988, 2.508308>,  <0.808599, 1.626744, 2.462997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.204632, 1.659988, 2.508308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118194, 0.056795, 0.991365,
		0.075973, -0.994920, 0.066056,
		0.990080, 0.083124, 0.113278,
		1.501656, 1.684922, 2.542292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.119049, 1.117734, 2.950247>,  <0.808599, 1.626744, 2.462997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.119049, 1.117734, 2.950247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.364563, 1.432777, 2.928558>,  <1.511872, 1.621803, 2.915545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.364563, 1.432777, 2.928558>,  <1.119049, 1.117734, 2.950247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.364563, 1.432777, 2.928558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054803, 0.111021, 0.992306,
		0.787568, -0.606092, 0.111306,
		0.613786, 0.787608, -0.054221,
		1.548699, 1.669060, 2.912292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.639265, 1.004310, 3.442128>,  <1.119049, 1.117734, 2.950247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.639265, 1.004310, 3.442128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.644421, 1.399902, 3.383133>,  <1.647514, 1.637257, 3.347736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.644421, 1.399902, 3.383133>,  <1.639265, 1.004310, 3.442128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.644421, 1.399902, 3.383133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212785, 0.141409, 0.966812,
		0.977014, -0.043844, -0.208617,
		0.012889, 0.988980, -0.147489,
		1.648287, 1.696596, 3.338886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.131236, 1.164901, 3.879339>,  <1.639265, 1.004310, 3.442128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.131236, 1.164901, 3.879339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.990631, 1.532967, 3.810364>,  <1.906268, 1.753806, 3.768979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.990631, 1.532967, 3.810364>,  <2.131236, 1.164901, 3.879339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.990631, 1.532967, 3.810364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238568, 0.266154, 0.933942,
		0.905275, 0.287155, -0.313079,
		-0.351513, 0.920165, -0.172437,
		1.885177, 1.809016, 3.758633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.566429, 1.599992, 4.219091>,  <2.131236, 1.164901, 3.879339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.566429, 1.599992, 4.219091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.224392, 1.798027, 4.157509>,  <2.019170, 1.916848, 4.120559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.224392, 1.798027, 4.157509>,  <2.566429, 1.599992, 4.219091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.224392, 1.798027, 4.157509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020097, 0.328368, 0.944336,
		0.518084, 0.804401, -0.290735,
		-0.855093, 0.495089, -0.153956,
		1.967864, 1.946554, 4.111322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.633818, 2.343259, 4.367629>,  <2.566429, 1.599992, 4.219091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.633818, 2.343259, 4.367629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.250664, 2.239929, 4.417786>,  <2.020771, 2.177932, 4.447880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.250664, 2.239929, 4.417786>,  <2.633818, 2.343259, 4.367629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.250664, 2.239929, 4.417786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014743, 0.391863, 0.919905,
		-0.286770, 0.883013, -0.371552,
		-0.957886, -0.258324, 0.125393,
		1.963298, 2.162432, 4.455403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.101537, 1.758951, 5.634017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.798859, 2.019318, 5.658409>,  <1.617251, 2.175537, 5.673044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.798859, 2.019318, 5.658409>,  <2.101537, 1.758951, 5.634017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.798859, 2.019318, 5.658409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049687, 0.035746, -0.998125,
		-0.651875, -0.758308, 0.005293,
		-0.756697, 0.650916, 0.060980,
		1.571849, 2.214592, 5.676703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.665487, 1.439075, 5.302658>,  <2.101537, 1.758951, 5.634017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.665487, 1.439075, 5.302658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656226, 1.838608, 5.285698>,  <1.650670, 2.078328, 5.275522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656226, 1.838608, 5.285698>,  <1.665487, 1.439075, 5.302658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.656226, 1.838608, 5.285698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084093, -0.044206, -0.995477,
		-0.996189, -0.019481, 0.085018,
		-0.023151, 0.998832, -0.042400,
		1.649281, 2.138258, 5.272978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.070711, 1.507489, 4.910624>,  <1.665487, 1.439075, 5.302658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.070711, 1.507489, 4.910624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.286956, 1.843430, 4.891075>,  <1.416703, 2.044994, 4.879346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.286956, 1.843430, 4.891075>,  <1.070711, 1.507489, 4.910624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.286956, 1.843430, 4.891075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123989, 0.022084, -0.992038,
		-0.832085, 0.542366, 0.116071,
		0.540611, 0.839852, -0.048872,
		1.449139, 2.095385, 4.876413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.691677, 1.987015, 4.541770>,  <1.070711, 1.507489, 4.910624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.691677, 1.987015, 4.541770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.082578, 2.067261, 4.514244>,  <1.317118, 2.115408, 4.497729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.082578, 2.067261, 4.514244>,  <0.691677, 1.987015, 4.541770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.082578, 2.067261, 4.514244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074596, 0.021402, -0.996984,
		-0.198535, 0.979437, 0.035881,
		0.977251, 0.200613, -0.068813,
		1.375753, 2.127445, 4.493600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.836574, 2.610577, 4.103821>,  <0.691677, 1.987015, 4.541770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.836574, 2.610577, 4.103821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.176355, 2.399612, 4.097321>,  <1.380224, 2.273034, 4.093420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.176355, 2.399612, 4.097321>,  <0.836574, 2.610577, 4.103821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.176355, 2.399612, 4.097321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066201, -0.075968, -0.994910,
		0.523493, 0.846206, -0.099447,
		0.849454, -0.527412, -0.016251,
		1.431192, 2.241389, 4.092445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.206738, 2.904609, 3.579016>,  <0.836574, 2.610577, 4.103821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.206738, 2.904609, 3.579016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.424773, 2.572159, 3.623032>,  <1.555594, 2.372688, 3.649441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.424773, 2.572159, 3.623032>,  <1.206738, 2.904609, 3.579016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.424773, 2.572159, 3.623032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197119, -0.000519, -0.980379,
		0.814877, 0.556083, 0.163548,
		0.545087, -0.831127, 0.110038,
		1.588299, 2.322821, 3.656043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.808249, 2.980950, 3.182815>,  <1.206738, 2.904609, 3.579016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.808249, 2.980950, 3.182815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.772843, 2.585770, 3.233597>,  <1.751600, 2.348661, 3.264066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.772843, 2.585770, 3.233597>,  <1.808249, 2.980950, 3.182815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.772843, 2.585770, 3.233597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061933, -0.132666, -0.989224,
		0.994148, -0.079699, 0.072929,
		-0.088515, -0.987951, 0.126954,
		1.746289, 2.289384, 3.271683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.387383, 2.724042, 2.866820>,  <1.808249, 2.980950, 3.182815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.387383, 2.724042, 2.866820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.129553, 2.418304, 2.873726>,  <1.974854, 2.234862, 2.877869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.129553, 2.418304, 2.873726>,  <2.387383, 2.724042, 2.866820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.129553, 2.418304, 2.873726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237563, -0.221699, -0.945734,
		0.726695, -0.605497, 0.324482,
		-0.644576, -0.764345, 0.017264,
		1.936180, 2.189001, 2.878905>
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
