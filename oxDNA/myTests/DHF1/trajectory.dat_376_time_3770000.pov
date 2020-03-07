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
	<4.614513, -1.300539, 4.224882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.841461, -1.438881, 3.925957>,  <4.977630, -1.521886, 3.746602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.841461, -1.438881, 3.925957>,  <4.614513, -1.300539, 4.224882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.841461, -1.438881, 3.925957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731458, 0.205172, -0.650287,
		0.378232, 0.915581, -0.136569,
		0.567371, -0.345854, -0.747312,
		5.011672, -1.542637, 3.701763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.564771, -0.766261, 3.789396>,  <4.614513, -1.300539, 4.224882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.564771, -0.766261, 3.789396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624432, -1.120140, 3.612732>,  <4.660228, -1.332468, 3.506734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624432, -1.120140, 3.612732>,  <4.564771, -0.766261, 3.789396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.624432, -1.120140, 3.612732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728671, 0.203594, -0.653902,
		0.668425, 0.419356, -0.614288,
		0.149152, -0.884698, -0.441660,
		4.669177, -1.385549, 3.480234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.063705, -0.519330, 4.279262>,  <4.564771, -0.766261, 3.789396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.063705, -0.519330, 4.279262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178535, -0.146820, 4.189537>,  <4.247434, 0.076686, 4.135702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178535, -0.146820, 4.189537>,  <4.063705, -0.519330, 4.279262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.178535, -0.146820, 4.189537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166591, 0.279137, 0.945690,
		0.943311, -0.234116, 0.235276,
		0.287075, 0.931274, -0.224311,
		4.264658, 0.132562, 4.122243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.622919, -0.443145, 4.708652>,  <4.063705, -0.519330, 4.279262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.622919, -0.443145, 4.708652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427719, -0.103523, 4.627693>,  <4.310599, 0.100250, 4.579118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427719, -0.103523, 4.627693>,  <4.622919, -0.443145, 4.708652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.427719, -0.103523, 4.627693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073086, 0.191318, 0.978803,
		0.869779, 0.492447, -0.031309,
		-0.487999, 0.849054, -0.202396,
		4.281320, 0.151193, 4.566975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.927913, 0.068609, 5.114843>,  <4.622919, -0.443145, 4.708652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.927913, 0.068609, 5.114843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.576485, 0.233597, 5.018524>,  <4.365628, 0.332589, 4.960733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.576485, 0.233597, 5.018524>,  <4.927913, 0.068609, 5.114843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.576485, 0.233597, 5.018524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130554, 0.277569, 0.951794,
		0.459423, 0.867655, -0.190014,
		-0.878571, 0.412468, -0.240797,
		4.312913, 0.357337, 4.946285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.869093, 0.659239, 5.502899>,  <4.927913, 0.068609, 5.114843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.869093, 0.659239, 5.502899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.500095, 0.547653, 5.396179>,  <4.278697, 0.480701, 5.332147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.500095, 0.547653, 5.396179>,  <4.869093, 0.659239, 5.502899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.500095, 0.547653, 5.396179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331855, 0.220100, 0.917294,
		-0.197171, 0.934737, -0.295617,
		-0.922494, -0.278966, -0.266800,
		4.223347, 0.463964, 5.316139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.456542, 1.252172, 5.720915>,  <4.869093, 0.659239, 5.502899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.456542, 1.252172, 5.720915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.191555, 0.954979, 5.682724>,  <4.032563, 0.776663, 5.659809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.191555, 0.954979, 5.682724>,  <4.456542, 1.252172, 5.720915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.191555, 0.954979, 5.682724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254369, 0.103234, 0.961582,
		-0.704581, 0.661302, -0.257381,
		-0.662467, -0.742982, -0.095478,
		3.992815, 0.732084, 5.654081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.932531, 1.521723, 6.102863>,  <4.456542, 1.252172, 5.720915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.932531, 1.521723, 6.102863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.852127, 1.131294, 6.069687>,  <3.803885, 0.897037, 6.049781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.852127, 1.131294, 6.069687>,  <3.932531, 1.521723, 6.102863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.852127, 1.131294, 6.069687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328152, -0.012682, 0.944540,
		-0.922991, 0.217078, -0.317751,
		-0.201009, -0.976072, -0.082940,
		3.791824, 0.838473, 6.044805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.094552, 0.938951, 2.284586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.852651, 0.621048, 2.264053>,  <3.707510, 0.430306, 2.251734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.852651, 0.621048, 2.264053>,  <4.094552, 0.938951, 2.284586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.852651, 0.621048, 2.264053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083148, 0.001094, -0.996537,
		0.792060, -0.606927, 0.065421,
		-0.604754, -0.794757, -0.051331,
		3.671225, 0.382621, 2.248654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.428380, 0.286440, 1.997668>,  <4.094552, 0.938951, 2.284586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.428380, 0.286440, 1.997668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.041619, 0.359108, 1.926003>,  <3.809563, 0.402709, 1.883003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.041619, 0.359108, 1.926003>,  <4.428380, 0.286440, 1.997668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.041619, 0.359108, 1.926003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149841, -0.164052, -0.975005,
		-0.206527, -0.969578, 0.131400,
		-0.966899, 0.181676, -0.179164,
		3.751549, 0.413609, 1.872254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.086608, -0.255690, 1.601259>,  <4.428380, 0.286440, 1.997668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.086608, -0.255690, 1.601259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847964, 0.053513, 1.514984>,  <3.704778, 0.239034, 1.463219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847964, 0.053513, 1.514984>,  <4.086608, -0.255690, 1.601259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.847964, 0.053513, 1.514984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188974, -0.125885, -0.973880,
		-0.779966, -0.621784, -0.070974,
		-0.596609, 0.773005, -0.215687,
		3.668982, 0.285414, 1.450278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.624608, -0.475291, 1.083802>,  <4.086608, -0.255690, 1.601259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.624608, -0.475291, 1.083802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.640048, -0.076111, 1.063393>,  <3.649312, 0.163397, 1.051147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.640048, -0.076111, 1.063393>,  <3.624608, -0.475291, 1.083802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.640048, -0.076111, 1.063393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144397, -0.056097, -0.987928,
		-0.988767, 0.030767, -0.146267,
		0.038601, 0.997951, -0.051025,
		3.651628, 0.223275, 1.048085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.086819, -0.191321, 0.583200>,  <3.624608, -0.475291, 1.083802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.086819, -0.191321, 0.583200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383607, 0.076637, 0.593941>,  <3.561680, 0.237412, 0.600385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383607, 0.076637, 0.593941>,  <3.086819, -0.191321, 0.583200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.383607, 0.076637, 0.593941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046865, 0.091778, -0.994676,
		-0.668793, 0.736761, 0.099491,
		0.741970, 0.669896, 0.026852,
		3.606198, 0.277606, 0.601996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.968074, 0.304042, 0.125608>,  <3.086819, -0.191321, 0.583200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.968074, 0.304042, 0.125608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.364166, 0.334625, 0.172249>,  <3.601822, 0.352975, 0.200233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.364166, 0.334625, 0.172249>,  <2.968074, 0.304042, 0.125608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.364166, 0.334625, 0.172249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113128, 0.048303, -0.992406,
		-0.081510, 0.995902, 0.039182,
		0.990231, 0.076458, 0.116601,
		3.661236, 0.357563, 0.207229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.103665, 0.762192, -0.384669>,  <2.968074, 0.304042, 0.125608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.103665, 0.762192, -0.384669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.462670, 0.620354, -0.279800>,  <3.678073, 0.535251, -0.216880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.462670, 0.620354, -0.279800>,  <3.103665, 0.762192, -0.384669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.462670, 0.620354, -0.279800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283534, 0.008671, -0.958923,
		0.337756, 0.934980, 0.108322,
		0.897513, -0.354595, 0.262170,
		3.731924, 0.513975, -0.201149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.478903, 1.123874, -0.748900>,  <3.103665, 0.762192, -0.384669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.478903, 1.123874, -0.748900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.716322, 0.817505, -0.650055>,  <3.858773, 0.633684, -0.590748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.716322, 0.817505, -0.650055>,  <3.478903, 1.123874, -0.748900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.716322, 0.817505, -0.650055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337569, -0.041797, -0.940372,
		0.730580, 0.641574, 0.233743,
		0.593548, -0.765922, 0.247112,
		3.894386, 0.587728, -0.575921>
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
