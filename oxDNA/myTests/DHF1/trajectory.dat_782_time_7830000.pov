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
	<1.450270, 3.894143, 4.816975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.382355, 3.556881, 4.612912>,  <1.341606, 3.354524, 4.490474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.382355, 3.556881, 4.612912>,  <1.450270, 3.894143, 4.816975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.382355, 3.556881, 4.612912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421555, 0.405780, -0.810947,
		0.890766, -0.352748, 0.286540,
		-0.169787, -0.843156, -0.510158,
		1.331418, 3.303934, 4.459865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.137764, 3.706017, 4.570530>,  <1.450270, 3.894143, 4.816975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.137764, 3.706017, 4.570530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825481, 3.588444, 4.349948>,  <1.638112, 3.517900, 4.217599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825481, 3.588444, 4.349948>,  <2.137764, 3.706017, 4.570530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825481, 3.588444, 4.349948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288042, 0.613865, -0.734985,
		0.554556, -0.732648, -0.394581,
		-0.780704, -0.293935, -0.551456,
		1.591270, 3.500264, 4.184512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.430794, 3.425296, 3.908936>,  <2.137764, 3.706017, 4.570530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.430794, 3.425296, 3.908936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.063845, 3.583317, 3.889501>,  <1.843675, 3.678129, 3.877839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.063845, 3.583317, 3.889501>,  <2.430794, 3.425296, 3.908936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.063845, 3.583317, 3.889501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247294, 0.470043, -0.847293,
		-0.311886, -0.789300, -0.528898,
		-0.917373, 0.395052, -0.048589,
		1.788633, 3.701832, 3.874924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.179735, 3.248256, 3.275128>,  <2.430794, 3.425296, 3.908936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.179735, 3.248256, 3.275128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031263, 3.596725, 3.403679>,  <1.942180, 3.805807, 3.480809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031263, 3.596725, 3.403679>,  <2.179735, 3.248256, 3.275128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.031263, 3.596725, 3.403679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187833, 0.409390, -0.892815,
		-0.909365, -0.271030, -0.315592,
		-0.371179, 0.871174, 0.321376,
		1.919910, 3.858078, 3.500092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.579664, 3.410929, 2.903592>,  <2.179735, 3.248256, 3.275128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.579664, 3.410929, 2.903592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.780821, 3.728619, 3.040008>,  <1.901515, 3.919232, 3.121857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.780821, 3.728619, 3.040008>,  <1.579664, 3.410929, 2.903592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.780821, 3.728619, 3.040008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121190, 0.325873, -0.937614,
		-0.855811, 0.512850, 0.067627,
		0.502893, 0.794224, 0.341038,
		1.931689, 3.966886, 3.142319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.497950, 3.852324, 2.406590>,  <1.579664, 3.410929, 2.903592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.497950, 3.852324, 2.406590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.796263, 4.032585, 2.602845>,  <1.975250, 4.140741, 2.720598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.796263, 4.032585, 2.602845>,  <1.497950, 3.852324, 2.406590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.796263, 4.032585, 2.602845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389299, 0.302841, -0.869905,
		-0.540609, 0.839762, 0.050415,
		0.745781, 0.450651, 0.490637,
		2.019997, 4.167780, 2.750036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.451558, 4.592476, 2.199448>,  <1.497950, 3.852324, 2.406590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.451558, 4.592476, 2.199448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825489, 4.564163, 2.338639>,  <2.049847, 4.547175, 2.422154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825489, 4.564163, 2.338639>,  <1.451558, 4.592476, 2.199448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825489, 4.564163, 2.338639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316689, 0.609499, -0.726787,
		-0.160649, 0.789620, 0.592192,
		0.934826, -0.070783, 0.347979,
		2.105937, 4.542928, 2.443033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.835613, 5.243023, 2.276598>,  <1.451558, 4.592476, 2.199448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.835613, 5.243023, 2.276598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.106888, 4.962372, 2.189164>,  <2.269653, 4.793981, 2.136703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.106888, 4.962372, 2.189164>,  <1.835613, 5.243023, 2.276598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.106888, 4.962372, 2.189164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368955, 0.582315, -0.724418,
		0.635557, 0.410643, 0.653788,
		0.678188, -0.701628, -0.218586,
		2.310344, 4.751884, 2.123589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.946795, 5.671875, 1.322352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.210171, 5.371330, 1.339857>,  <3.368196, 5.191004, 1.350360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.210171, 5.371330, 1.339857>,  <2.946795, 5.671875, 1.322352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.210171, 5.371330, 1.339857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577495, -0.467074, 0.669583,
		-0.482673, -0.466135, -0.741448,
		0.658428, -0.751372, 0.043746,
		3.407702, 5.145922, 1.352985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.654678, 4.871966, 1.135675>,  <2.946795, 5.671875, 1.322352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.654678, 4.871966, 1.135675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.959263, 4.870449, 1.394954>,  <3.142014, 4.869539, 1.550522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.959263, 4.870449, 1.394954>,  <2.654678, 4.871966, 1.135675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.959263, 4.870449, 1.394954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619054, -0.300783, 0.725466,
		0.192216, -0.953685, -0.231382,
		0.761463, -0.003792, 0.648198,
		3.187701, 4.869311, 1.589414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.724268, 4.152310, 1.626943>,  <2.654678, 4.871966, 1.135675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.724268, 4.152310, 1.626943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.878719, 4.478485, 1.799438>,  <2.971390, 4.674190, 1.902935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.878719, 4.478485, 1.799438>,  <2.724268, 4.152310, 1.626943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.878719, 4.478485, 1.799438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472249, -0.226836, 0.851779,
		0.792393, -0.532547, 0.297502,
		0.386128, 0.815438, 0.431238,
		2.994558, 4.723116, 1.928810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.142401, 3.900245, 2.227790>,  <2.724268, 4.152310, 1.626943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.142401, 3.900245, 2.227790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982590, 4.264961, 2.265770>,  <2.886703, 4.483791, 2.288558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982590, 4.264961, 2.265770>,  <3.142401, 3.900245, 2.227790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.982590, 4.264961, 2.265770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459805, -0.288920, 0.839705,
		0.793068, 0.291827, 0.534677,
		-0.399528, 0.911790, 0.094949,
		2.862731, 4.538498, 2.294255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.260541, 4.204282, 2.894655>,  <3.142401, 3.900245, 2.227790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.260541, 4.204282, 2.894655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.914600, 4.326786, 2.735539>,  <2.707036, 4.400289, 2.640070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.914600, 4.326786, 2.735539>,  <3.260541, 4.204282, 2.894655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.914600, 4.326786, 2.735539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497715, -0.419419, 0.759189,
		0.065670, 0.854571, 0.515166,
		-0.864851, 0.306261, -0.397789,
		2.655145, 4.418664, 2.616203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.012822, 4.690562, 3.352983>,  <3.260541, 4.204282, 2.894655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.012822, 4.690562, 3.352983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.689285, 4.546291, 3.167214>,  <2.495163, 4.459729, 3.055753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.689285, 4.546291, 3.167214>,  <3.012822, 4.690562, 3.352983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.689285, 4.546291, 3.167214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412941, -0.213882, 0.885288,
		-0.418634, 0.907836, 0.024059,
		-0.808842, -0.360677, -0.464421,
		2.446633, 4.438088, 3.027888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.498179, 5.087412, 3.607073>,  <3.012822, 4.690562, 3.352983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.498179, 5.087412, 3.607073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.330994, 4.748714, 3.475420>,  <2.230682, 4.545496, 3.396428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.330994, 4.748714, 3.475420>,  <2.498179, 5.087412, 3.607073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.330994, 4.748714, 3.475420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512328, -0.079491, 0.855103,
		-0.750218, 0.526026, -0.400587,
		-0.417964, -0.846745, -0.329133,
		2.205605, 4.494691, 3.376680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.693836, 5.168235, 3.698549>,  <2.498179, 5.087412, 3.607073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.693836, 5.168235, 3.698549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.799232, 4.782490, 3.708146>,  <1.862470, 4.551043, 3.713904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.799232, 4.782490, 3.708146>,  <1.693836, 5.168235, 3.698549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.799232, 4.782490, 3.708146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279339, -0.052470, 0.958758,
		-0.923332, -0.259327, -0.283210,
		0.263491, -0.964364, 0.023993,
		1.878280, 4.493181, 3.715344>
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
