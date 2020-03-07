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
	<4.644387, 0.904659, 3.773730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.853268, 0.982131, 4.105946>,  <4.978596, 1.028614, 4.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.853268, 0.982131, 4.105946>,  <4.644387, 0.904659, 3.773730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.853268, 0.982131, 4.105946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725898, 0.612118, 0.313663,
		-0.447637, -0.766681, 0.460240,
		0.522201, 0.193680, 0.830539,
		5.009928, 1.040235, 4.355107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.160180, 0.891156, 4.320989>,  <4.644387, 0.904659, 3.773730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.160180, 0.891156, 4.320989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.469666, 1.125957, 4.416313>,  <4.655357, 1.266838, 4.473507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.469666, 1.125957, 4.416313>,  <4.160180, 0.891156, 4.320989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.469666, 1.125957, 4.416313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633527, 0.718657, 0.286664,
		-0.002990, -0.372772, 0.927918,
		0.773715, 0.587004, 0.238310,
		4.701780, 1.302059, 4.487806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.857033, 1.281618, 4.686930>,  <4.160180, 0.891156, 4.320989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.857033, 1.281618, 4.686930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.204266, 1.479860, 4.675529>,  <4.412605, 1.598806, 4.668689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.204266, 1.479860, 4.675529>,  <3.857033, 1.281618, 4.686930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.204266, 1.479860, 4.675529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442826, 0.799025, 0.406772,
		0.224371, -0.340490, 0.913085,
		0.868080, 0.495605, -0.028500,
		4.464690, 1.628542, 4.666979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.072672, 1.566655, 5.376879>,  <3.857033, 1.281618, 4.686930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.072672, 1.566655, 5.376879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.252792, 1.805500, 5.111341>,  <4.360865, 1.948806, 4.952019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.252792, 1.805500, 5.111341>,  <4.072672, 1.566655, 5.376879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.252792, 1.805500, 5.111341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460035, 0.792363, 0.400660,
		0.765242, 0.124972, 0.631496,
		0.450303, 0.597112, -0.663841,
		4.387883, 1.984633, 4.912189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.133486, 2.224433, 5.678957>,  <4.072672, 1.566655, 5.376879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.133486, 2.224433, 5.678957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.198845, 2.320327, 5.296162>,  <4.238060, 2.377864, 5.066484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.198845, 2.320327, 5.296162>,  <4.133486, 2.224433, 5.678957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.198845, 2.320327, 5.296162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481251, 0.866154, 0.134812,
		0.861220, 0.438524, 0.256901,
		0.163397, 0.239737, -0.956989,
		4.247864, 2.392248, 5.009065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.521655, 2.866793, 5.652933>,  <4.133486, 2.224433, 5.678957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.521655, 2.866793, 5.652933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345402, 2.847965, 5.294352>,  <4.239650, 2.836668, 5.079203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345402, 2.847965, 5.294352>,  <4.521655, 2.866793, 5.652933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.345402, 2.847965, 5.294352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365459, 0.921528, 0.131246,
		0.819928, 0.385448, -0.423258,
		-0.440633, -0.047072, -0.896452,
		4.213212, 2.833843, 5.025416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.578456, 3.478451, 5.368493>,  <4.521655, 2.866793, 5.652933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.578456, 3.478451, 5.368493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284153, 3.362281, 5.123768>,  <4.107571, 3.292579, 4.976933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284153, 3.362281, 5.123768>,  <4.578456, 3.478451, 5.368493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.284153, 3.362281, 5.123768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253734, 0.955795, -0.148576,
		0.627918, 0.045922, -0.776924,
		-0.735757, -0.290425, -0.611813,
		4.063426, 3.275153, 4.940224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.663577, 3.874409, 4.686551>,  <4.578456, 3.478451, 5.368493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.663577, 3.874409, 4.686551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.289185, 3.747703, 4.747999>,  <4.064549, 3.671679, 4.784868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.289185, 3.747703, 4.747999>,  <4.663577, 3.874409, 4.686551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.289185, 3.747703, 4.747999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334085, 0.936809, -0.103812,
		-0.111030, -0.148489, -0.982662,
		-0.935981, -0.316766, 0.153621,
		4.008390, 3.652673, 4.794086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.684185, 4.573893, 5.419114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.312187, 4.550936, 5.273888>,  <3.088989, 4.537161, 5.186752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.312187, 4.550936, 5.273888>,  <3.684185, 4.573893, 5.419114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.312187, 4.550936, 5.273888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218302, -0.880911, -0.419929,
		-0.295728, -0.469790, 0.831771,
		-0.929994, -0.057393, -0.363066,
		3.033189, 4.533718, 5.164968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.326373, 4.016463, 5.703569>,  <3.684185, 4.573893, 5.419114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.326373, 4.016463, 5.703569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.225815, 4.105408, 5.326771>,  <3.165480, 4.158775, 5.100692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.225815, 4.105408, 5.326771>,  <3.326373, 4.016463, 5.703569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.225815, 4.105408, 5.326771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274894, -0.916770, -0.289770,
		-0.928027, -0.331795, 0.169345,
		-0.251395, 0.222363, -0.941996,
		3.150396, 4.172116, 5.044172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.930529, 3.460906, 5.426239>,  <3.326373, 4.016463, 5.703569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.930529, 3.460906, 5.426239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.126083, 3.614811, 5.113075>,  <3.243416, 3.707154, 4.925177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.126083, 3.614811, 5.113075>,  <2.930529, 3.460906, 5.426239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.126083, 3.614811, 5.113075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392490, -0.898522, -0.196492,
		-0.779065, -0.211223, -0.590290,
		0.488885, 0.384763, -0.782910,
		3.272749, 3.730240, 4.878202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.913315, 2.935302, 4.937854>,  <2.930529, 3.460906, 5.426239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.913315, 2.935302, 4.937854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.223312, 3.177526, 4.865543>,  <3.409311, 3.322861, 4.822157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.223312, 3.177526, 4.865543>,  <2.913315, 2.935302, 4.937854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.223312, 3.177526, 4.865543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461791, -0.737921, -0.492160,
		-0.431431, 0.297940, -0.851527,
		0.774995, 0.605560, -0.180776,
		3.455811, 3.359195, 4.811311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.163786, 2.760205, 4.209102>,  <2.913315, 2.935302, 4.937854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.163786, 2.760205, 4.209102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.440750, 2.926613, 4.444897>,  <3.606929, 3.026458, 4.586373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.440750, 2.926613, 4.444897>,  <3.163786, 2.760205, 4.209102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.440750, 2.926613, 4.444897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588281, -0.798553, -0.127430,
		0.417723, 0.435017, -0.797664,
		0.692411, 0.416020, 0.589486,
		3.648474, 3.051419, 4.621743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.805738, 2.649815, 3.839267>,  <3.163786, 2.760205, 4.209102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.805738, 2.649815, 3.839267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.912247, 2.719589, 4.218460>,  <3.976152, 2.761454, 4.445976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.912247, 2.719589, 4.218460>,  <3.805738, 2.649815, 3.839267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.912247, 2.719589, 4.218460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652358, -0.756632, -0.044010,
		0.709597, 0.630143, -0.315265,
		0.266273, 0.174436, 0.947982,
		3.992129, 2.771920, 4.502855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.551651, 2.816660, 3.844935>,  <3.805738, 2.649815, 3.839267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.551651, 2.816660, 3.844935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.442123, 2.677523, 4.203606>,  <4.376407, 2.594040, 4.418808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.442123, 2.677523, 4.203606>,  <4.551651, 2.816660, 3.844935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.442123, 2.677523, 4.203606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760178, -0.649413, -0.019786,
		0.589196, 0.676216, 0.442245,
		-0.273820, -0.347843, 0.896676,
		4.359977, 2.573170, 4.472609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.095455, 2.800954, 4.204683>,  <4.551651, 2.816660, 3.844935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.095455, 2.800954, 4.204683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.858757, 2.539829, 4.393860>,  <4.716738, 2.383154, 4.507366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.858757, 2.539829, 4.393860>,  <5.095455, 2.800954, 4.204683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.858757, 2.539829, 4.393860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758442, -0.649643, 0.052244,
		0.273138, 0.389614, 0.879543,
		-0.591744, -0.652813, 0.472942,
		4.681234, 2.343985, 4.535742>
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
