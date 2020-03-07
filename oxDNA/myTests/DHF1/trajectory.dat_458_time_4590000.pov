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
	<5.370419, 1.352626, 4.954645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.971708, 1.348129, 4.922874>,  <4.732482, 1.345431, 4.903812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.971708, 1.348129, 4.922874>,  <5.370419, 1.352626, 4.954645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.971708, 1.348129, 4.922874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009516, -0.999711, 0.022063,
		-0.079652, 0.021237, 0.996597,
		-0.996778, -0.011241, -0.079427,
		4.672675, 1.344757, 4.899046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.306450, 0.858865, 5.334337>,  <5.370419, 1.352626, 4.954645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.306450, 0.858865, 5.334337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.947079, 0.866249, 5.158844>,  <4.731456, 0.870679, 5.053548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.947079, 0.866249, 5.158844>,  <5.306450, 0.858865, 5.334337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.947079, 0.866249, 5.158844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135711, -0.961877, 0.237436,
		-0.417624, 0.272860, 0.866682,
		-0.898428, 0.018460, -0.438733,
		4.677550, 0.871787, 5.027224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.867587, 0.382277, 5.807244>,  <5.306450, 0.858865, 5.334337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.867587, 0.382277, 5.807244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723560, 0.428894, 5.436996>,  <4.637144, 0.456864, 5.214848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723560, 0.428894, 5.436996>,  <4.867587, 0.382277, 5.807244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.723560, 0.428894, 5.436996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320804, -0.947129, 0.005543,
		-0.876034, 0.298938, 0.378417,
		-0.360067, 0.116542, -0.925618,
		4.615540, 0.463857, 5.159311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.227620, 0.083032, 5.744130>,  <4.867587, 0.382277, 5.807244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.227620, 0.083032, 5.744130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365427, 0.078529, 5.368645>,  <4.448111, 0.075828, 5.143354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365427, 0.078529, 5.368645>,  <4.227620, 0.083032, 5.744130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.365427, 0.078529, 5.368645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381117, -0.915498, -0.128895,
		-0.857938, 0.402165, -0.319695,
		0.344517, -0.011257, -0.938712,
		4.468782, 0.075152, 5.087031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.684338, -0.216180, 5.480222>,  <4.227620, 0.083032, 5.744130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.684338, -0.216180, 5.480222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.964960, -0.243172, 5.196457>,  <4.133333, -0.259366, 5.026197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.964960, -0.243172, 5.196457>,  <3.684338, -0.216180, 5.480222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.964960, -0.243172, 5.196457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444200, -0.819848, -0.361297,
		-0.557232, 0.568591, -0.605143,
		0.701555, -0.067478, -0.709413,
		4.175426, -0.263415, 4.983633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.366305, -0.064194, 4.844689>,  <3.684338, -0.216180, 5.480222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.366305, -0.064194, 4.844689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.691706, -0.287125, 4.778236>,  <3.886947, -0.420883, 4.738365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.691706, -0.287125, 4.778236>,  <3.366305, -0.064194, 4.844689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.691706, -0.287125, 4.778236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569625, -0.706027, -0.420777,
		0.117217, 0.436936, -0.891822,
		0.813503, -0.557326, -0.166131,
		3.935757, -0.454322, 4.728397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.284255, -0.329997, 4.221327>,  <3.366305, -0.064194, 4.844689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.284255, -0.329997, 4.221327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.555481, -0.581757, 4.373161>,  <3.718217, -0.732812, 4.464262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.555481, -0.581757, 4.373161>,  <3.284255, -0.329997, 4.221327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.555481, -0.581757, 4.373161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441856, -0.761763, -0.473794,
		0.587359, 0.153542, -0.794629,
		0.678066, -0.629398, 0.379585,
		3.758901, -0.770576, 4.487037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.489290, -0.858410, 3.652242>,  <3.284255, -0.329997, 4.221327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.489290, -0.858410, 3.652242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.578062, -1.004997, 4.013672>,  <3.631325, -1.092949, 4.230530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.578062, -1.004997, 4.013672>,  <3.489290, -0.858410, 3.652242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.578062, -1.004997, 4.013672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315939, -0.903717, -0.288926,
		0.922459, -0.221353, -0.316342,
		0.221929, -0.366467, 0.903576,
		3.644641, -1.114938, 4.284745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.512975, 2.665196, 4.516104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.250057, 2.957161, 4.591141>,  <2.092306, 3.132340, 4.636163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.250057, 2.957161, 4.591141>,  <2.512975, 2.665196, 4.516104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.250057, 2.957161, 4.591141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753445, -0.630883, -0.185222,
		-0.016847, -0.263085, 0.964626,
		-0.657295, 0.729913, 0.187591,
		2.052869, 3.176135, 4.647418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.664978, 3.299136, 4.794446>,  <2.512975, 2.665196, 4.516104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.664978, 3.299136, 4.794446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.018744, 3.123940, 4.729980>,  <3.231003, 3.018822, 4.691301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.018744, 3.123940, 4.729980>,  <2.664978, 3.299136, 4.794446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.018744, 3.123940, 4.729980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442954, 0.896526, -0.005675,
		0.146974, -0.066370, 0.986911,
		0.884415, -0.437991, -0.161165,
		3.284068, 2.992542, 4.681631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.170086, 3.589735, 5.256729>,  <2.664978, 3.299136, 4.794446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.170086, 3.589735, 5.256729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.374035, 3.454987, 4.940109>,  <3.496404, 3.374138, 4.750138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.374035, 3.454987, 4.940109>,  <3.170086, 3.589735, 5.256729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.374035, 3.454987, 4.940109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422128, 0.899716, -0.110994,
		0.749559, -0.277542, 0.600943,
		0.509872, -0.336871, -0.791548,
		3.526997, 3.353925, 4.702645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.024535, 3.470011, 5.373990>,  <3.170086, 3.589735, 5.256729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.024535, 3.470011, 5.373990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.912580, 3.563057, 5.001419>,  <3.845407, 3.618884, 4.777877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.912580, 3.563057, 5.001419>,  <4.024535, 3.470011, 5.373990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.912580, 3.563057, 5.001419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547456, 0.835667, 0.044192,
		0.788641, -0.497546, -0.361238,
		-0.279887, 0.232614, -0.931426,
		3.828614, 3.632841, 4.721992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.703772, 3.517021, 5.052552>,  <4.024535, 3.470011, 5.373990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.703772, 3.517021, 5.052552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417530, 3.720741, 4.861336>,  <4.245785, 3.842973, 4.746606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417530, 3.720741, 4.861336>,  <4.703772, 3.517021, 5.052552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.417530, 3.720741, 4.861336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571299, 0.820522, 0.018970,
		0.401905, -0.259530, -0.878133,
		-0.715604, 0.509301, -0.478041,
		4.202849, 3.873532, 4.717923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.041022, 3.865930, 4.440782>,  <4.703772, 3.517021, 5.052552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.041022, 3.865930, 4.440782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.705559, 4.066895, 4.524910>,  <4.504281, 4.187473, 4.575387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.705559, 4.066895, 4.524910>,  <5.041022, 3.865930, 4.440782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.705559, 4.066895, 4.524910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529248, 0.842925, 0.096815,
		-0.128644, 0.192506, -0.972827,
		-0.838658, 0.502412, 0.210320,
		4.453961, 4.217618, 4.588006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.054384, 4.408875, 4.051437>,  <5.041022, 3.865930, 4.440782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.054384, 4.408875, 4.051437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.813669, 4.521118, 4.350533>,  <4.669240, 4.588464, 4.529990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.813669, 4.521118, 4.350533>,  <5.054384, 4.408875, 4.051437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.813669, 4.521118, 4.350533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503211, 0.860249, 0.082159,
		-0.620187, 0.425712, -0.658891,
		-0.601787, 0.280607, 0.747738,
		4.633133, 4.605300, 4.574854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.070473, 5.068867, 3.955802>,  <5.054384, 4.408875, 4.051437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.070473, 5.068867, 3.955802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.942154, 5.036484, 4.333275>,  <4.865163, 5.017054, 4.559759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.942154, 5.036484, 4.333275>,  <5.070473, 5.068867, 3.955802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.942154, 5.036484, 4.333275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346327, 0.917319, 0.196427,
		-0.881559, 0.389836, -0.266235,
		-0.320797, -0.080958, 0.943682,
		4.845915, 5.012197, 4.616379>
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
