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
	<0.932692, 2.485671, 5.165205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.229660, 2.312737, 5.369907>,  <1.407841, 2.208976, 5.492729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.229660, 2.312737, 5.369907>,  <0.932692, 2.485671, 5.165205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.229660, 2.312737, 5.369907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057065, -0.720305, -0.691306,
		0.667498, 0.542444, -0.510098,
		0.742421, -0.432337, 0.511757,
		1.452386, 2.183035, 5.523435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.587213, 2.446311, 4.802690>,  <0.932692, 2.485671, 5.165205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.587213, 2.446311, 4.802690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.458645, 2.151062, 5.039963>,  <1.381504, 1.973913, 5.182326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.458645, 2.151062, 5.039963>,  <1.587213, 2.446311, 4.802690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.458645, 2.151062, 5.039963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082264, -0.602288, -0.794029,
		0.943357, -0.304014, 0.132867,
		-0.321420, -0.738122, 0.593182,
		1.362219, 1.929625, 5.217917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.804582, 1.822683, 4.627210>,  <1.587213, 2.446311, 4.802690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.804582, 1.822683, 4.627210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.485149, 1.699303, 4.833946>,  <1.293490, 1.625274, 4.957988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.485149, 1.699303, 4.833946>,  <1.804582, 1.822683, 4.627210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.485149, 1.699303, 4.833946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148805, -0.730864, -0.666105,
		0.583201, -0.608848, 0.537756,
		-0.798582, -0.308452, 0.516840,
		1.245575, 1.606767, 4.988998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.973755, 1.252483, 4.974874>,  <1.804582, 1.822683, 4.627210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.973755, 1.252483, 4.974874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.585182, 1.245178, 4.880226>,  <1.352039, 1.240795, 4.823437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.585182, 1.245178, 4.880226>,  <1.973755, 1.252483, 4.974874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.585182, 1.245178, 4.880226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109610, -0.918850, -0.379079,
		-0.210495, -0.394185, 0.894601,
		-0.971431, -0.018263, -0.236619,
		1.293753, 1.239699, 4.809240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.802451, 0.516818, 5.022101>,  <1.973755, 1.252483, 4.974874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.802451, 0.516818, 5.022101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.519825, 0.684471, 4.794033>,  <1.350249, 0.785063, 4.657192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.519825, 0.684471, 4.794033>,  <1.802451, 0.516818, 5.022101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.519825, 0.684471, 4.794033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070938, -0.843618, -0.532237,
		-0.704083, -0.335613, 0.625804,
		-0.706565, 0.419132, -0.570170,
		1.307855, 0.810211, 4.622982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.307926, -0.027709, 4.849219>,  <1.802451, 0.516818, 5.022101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.307926, -0.027709, 4.849219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.282875, 0.244156, 4.556881>,  <1.267844, 0.407275, 4.381478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.282875, 0.244156, 4.556881>,  <1.307926, -0.027709, 4.849219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.282875, 0.244156, 4.556881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019415, -0.731315, -0.681763,
		-0.997848, -0.056886, 0.032605,
		-0.062627, 0.679663, -0.730846,
		1.264087, 0.448055, 4.337627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.818765, -0.271461, 4.383346>,  <1.307926, -0.027709, 4.849219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.818765, -0.271461, 4.383346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.043434, -0.029877, 4.157158>,  <1.178236, 0.115074, 4.021445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.043434, -0.029877, 4.157158>,  <0.818765, -0.271461, 4.383346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.043434, -0.029877, 4.157158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013654, -0.676603, -0.736221,
		-0.827247, 0.421236, -0.371783,
		0.561673, 0.603960, -0.565470,
		1.211936, 0.151311, 3.987517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.439050, -0.264104, 3.749359>,  <0.818765, -0.271461, 4.383346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.439050, -0.264104, 3.749359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.789021, -0.111618, 3.629910>,  <0.999003, -0.020126, 3.558239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.789021, -0.111618, 3.629910>,  <0.439050, -0.264104, 3.749359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.789021, -0.111618, 3.629910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047228, -0.680903, -0.730849,
		-0.481945, 0.625336, -0.613745,
		0.874928, 0.381215, -0.298625,
		1.051499, 0.002747, 3.540322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.401338, -1.252838, 2.374479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782311, -1.182251, 2.275097>,  <1.010895, -1.139899, 2.215468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782311, -1.182251, 2.275097>,  <0.401338, -1.252838, 2.374479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.782311, -1.182251, 2.275097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064160, 0.913125, 0.402600,
		0.297916, -0.367509, 0.881013,
		0.952433, 0.176467, -0.248455,
		1.068041, -1.129311, 2.200560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.694485, -1.033298, 2.967559>,  <0.401338, -1.252838, 2.374479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.694485, -1.033298, 2.967559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.917937, -0.890472, 2.668110>,  <1.052009, -0.804777, 2.488440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.917937, -0.890472, 2.668110>,  <0.694485, -1.033298, 2.967559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.917937, -0.890472, 2.668110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078179, 0.875904, 0.476109,
		0.825723, -0.324496, 0.461393,
		0.558632, 0.357062, -0.748623,
		1.085527, -0.783354, 2.443523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.391435, -0.881022, 3.201187>,  <0.694485, -1.033298, 2.967559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.391435, -0.881022, 3.201187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.271647, -0.638382, 2.906609>,  <1.199775, -0.492798, 2.729861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.271647, -0.638382, 2.906609>,  <1.391435, -0.881022, 3.201187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.271647, -0.638382, 2.906609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137435, 0.791247, 0.595852,
		0.944156, 0.077226, -0.320322,
		-0.299470, 0.606600, -0.736447,
		1.181807, -0.456402, 2.685674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.096661, -0.514029, 3.146483>,  <1.391435, -0.881022, 3.201187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.096661, -0.514029, 3.146483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.742175, -0.328720, 3.145630>,  <1.529484, -0.217535, 3.145118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.742175, -0.328720, 3.145630>,  <2.096661, -0.514029, 3.146483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.742175, -0.328720, 3.145630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347109, 0.667035, 0.659226,
		0.306823, 0.583475, -0.751941,
		-0.886214, 0.463272, -0.002133,
		1.476311, -0.189739, 3.144990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.272354, 0.197881, 3.224842>,  <2.096661, -0.514029, 3.146483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.272354, 0.197881, 3.224842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.884212, 0.173828, 3.318474>,  <1.651326, 0.159396, 3.374653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.884212, 0.173828, 3.318474>,  <2.272354, 0.197881, 3.224842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.884212, 0.173828, 3.318474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115336, 0.735925, 0.667167,
		-0.212384, 0.674388, -0.707174,
		-0.970356, -0.060133, 0.234080,
		1.593105, 0.155788, 3.388698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.938499, 0.920271, 3.246684>,  <2.272354, 0.197881, 3.224842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.938499, 0.920271, 3.246684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697160, 0.697327, 3.474831>,  <1.552356, 0.563560, 3.611719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697160, 0.697327, 3.474831>,  <1.938499, 0.920271, 3.246684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.697160, 0.697327, 3.474831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183964, 0.793200, 0.580510,
		-0.775968, 0.245323, -0.581111,
		-0.603349, -0.557360, 0.570367,
		1.516155, 0.530119, 3.645941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.353364, 1.331839, 3.435220>,  <1.938499, 0.920271, 3.246684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.353364, 1.331839, 3.435220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.331748, 1.061584, 3.729321>,  <1.318778, 0.899431, 3.905781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.331748, 1.061584, 3.729321>,  <1.353364, 1.331839, 3.435220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.331748, 1.061584, 3.729321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137967, 0.734317, 0.664638,
		-0.988961, -0.065523, -0.132898,
		-0.054040, -0.675637, 0.735251,
		1.315536, 0.858893, 3.949896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.684032, 1.185906, 3.736144>,  <1.353364, 1.331839, 3.435220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.684032, 1.185906, 3.736144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960846, 1.125397, 4.018478>,  <1.126934, 1.089091, 4.187879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960846, 1.125397, 4.018478>,  <0.684032, 1.185906, 3.736144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.960846, 1.125397, 4.018478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360520, 0.774690, 0.519501,
		-0.625390, -0.613981, 0.481575,
		0.692035, -0.151273, 0.705835,
		1.168457, 1.080015, 4.230229>
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
