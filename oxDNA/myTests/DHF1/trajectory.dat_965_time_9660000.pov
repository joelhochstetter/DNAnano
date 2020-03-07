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
	<1.393823, 5.831338, 1.770019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.336227, 5.876282, 1.376747>,  <1.301670, 5.903248, 1.140784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.336227, 5.876282, 1.376747>,  <1.393823, 5.831338, 1.770019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.336227, 5.876282, 1.376747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770162, -0.611143, -0.182634,
		-0.621384, -0.783505, 0.001462,
		-0.143988, 0.112360, -0.983180,
		1.293031, 5.909990, 1.081793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.309202, 5.126213, 1.511107>,  <1.393823, 5.831338, 1.770019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.309202, 5.126213, 1.511107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444504, 5.405800, 1.259066>,  <1.525685, 5.573552, 1.107841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444504, 5.405800, 1.259066>,  <1.309202, 5.126213, 1.511107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.444504, 5.405800, 1.259066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733812, -0.615100, -0.288396,
		-0.589155, -0.364825, -0.720971,
		0.338254, 0.698967, -0.630102,
		1.545980, 5.615490, 1.070035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.410010, 4.863965, 0.908961>,  <1.309202, 5.126213, 1.511107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.410010, 4.863965, 0.908961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.652046, 5.179302, 0.864458>,  <1.797268, 5.368505, 0.837756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.652046, 5.179302, 0.864458>,  <1.410010, 4.863965, 0.908961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.652046, 5.179302, 0.864458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658902, -0.574301, -0.485825,
		-0.446893, 0.220661, -0.866946,
		0.605091, 0.788344, -0.111257,
		1.833573, 5.415806, 0.831081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657257, 5.154207, 0.121863>,  <1.410010, 4.863965, 0.908961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657257, 5.154207, 0.121863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.896622, 5.179073, 0.441372>,  <2.040241, 5.193993, 0.633077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.896622, 5.179073, 0.441372>,  <1.657257, 5.154207, 0.121863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.896622, 5.179073, 0.441372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658700, -0.605723, -0.446334,
		0.456089, 0.793243, -0.403421,
		0.598413, 0.062166, 0.798773,
		2.076145, 5.197723, 0.681004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.441762, 5.123258, -0.083124>,  <1.657257, 5.154207, 0.121863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.441762, 5.123258, -0.083124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.432739, 5.012486, 0.301126>,  <2.427325, 4.946022, 0.531676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.432739, 5.012486, 0.301126>,  <2.441762, 5.123258, -0.083124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.432739, 5.012486, 0.301126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686454, -0.702851, -0.186500,
		0.726823, 0.655218, 0.205955,
		-0.022558, -0.276931, 0.960625,
		2.425972, 4.929406, 0.589314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.137784, 5.027998, 0.130747>,  <2.441762, 5.123258, -0.083124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.137784, 5.027998, 0.130747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.904274, 4.792442, 0.354322>,  <2.764168, 4.651109, 0.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.904274, 4.792442, 0.354322>,  <3.137784, 5.027998, 0.130747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.904274, 4.792442, 0.354322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665990, -0.741078, -0.085206,
		0.464395, 0.322507, 0.824819,
		-0.583776, -0.588891, 0.558940,
		2.729141, 4.615775, 0.522004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.649307, 4.579187, 0.489011>,  <3.137784, 5.027998, 0.130747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.649307, 4.579187, 0.489011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290909, 4.408272, 0.537369>,  <3.075870, 4.305722, 0.566383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290909, 4.408272, 0.537369>,  <3.649307, 4.579187, 0.489011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.290909, 4.408272, 0.537369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398795, -0.894018, -0.204192,
		0.195331, -0.134743, 0.971437,
		-0.895996, -0.427289, 0.120894,
		3.022110, 4.280085, 0.573637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.575101, 4.045777, 1.081473>,  <3.649307, 4.579187, 0.489011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.575101, 4.045777, 1.081473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.374344, 3.999901, 0.738556>,  <3.253890, 3.972375, 0.532806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.374344, 3.999901, 0.738556>,  <3.575101, 4.045777, 1.081473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.374344, 3.999901, 0.738556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496580, -0.849745, -0.177037,
		-0.708175, -0.514567, 0.483435,
		-0.501893, -0.114690, -0.857292,
		3.223776, 3.965494, 0.481368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.514397, 1.548365, 1.549631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.281128, 1.865669, 1.619656>,  <2.141167, 2.056052, 1.661671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.281128, 1.865669, 1.619656>,  <2.514397, 1.548365, 1.549631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.281128, 1.865669, 1.619656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734471, 0.606949, -0.303587,
		-0.347078, -0.048465, -0.936583,
		-0.583172, 0.793261, 0.175062,
		2.106176, 2.103648, 1.672174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.395830, 2.059129, 0.934993>,  <2.514397, 1.548365, 1.549631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.395830, 2.059129, 0.934993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.343384, 2.260735, 1.276466>,  <2.311916, 2.381698, 1.481351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.343384, 2.260735, 1.276466>,  <2.395830, 2.059129, 0.934993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.343384, 2.260735, 1.276466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804522, 0.557260, -0.205441,
		-0.579270, 0.659871, -0.478557,
		-0.131116, 0.504015, 0.853685,
		2.304049, 2.411939, 1.532572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.375118, 2.867697, 0.776041>,  <2.395830, 2.059129, 0.934993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.375118, 2.867697, 0.776041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.507156, 2.774876, 1.142033>,  <2.586379, 2.719183, 1.361628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.507156, 2.774876, 1.142033>,  <2.375118, 2.867697, 0.776041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.507156, 2.774876, 1.142033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748607, 0.654805, -0.104005,
		-0.574999, 0.719293, 0.389864,
		0.330095, -0.232052, 0.914980,
		2.606185, 2.705260, 1.416527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.329593, 3.464193, 1.161786>,  <2.375118, 2.867697, 0.776041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.329593, 3.464193, 1.161786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623871, 3.213589, 1.264732>,  <2.800438, 3.063226, 1.326500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623871, 3.213589, 1.264732>,  <2.329593, 3.464193, 1.161786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.623871, 3.213589, 1.264732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653651, 0.756299, -0.027428,
		-0.177462, 0.188407, 0.965925,
		0.735695, -0.626510, 0.257367,
		2.844579, 3.025636, 1.341942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.844757, 3.718560, 0.604686>,  <2.329593, 3.464193, 1.161786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.844757, 3.718560, 0.604686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.207611, 3.874695, 0.667603>,  <2.425324, 3.968376, 0.705353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.207611, 3.874695, 0.667603>,  <1.844757, 3.718560, 0.604686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.207611, 3.874695, 0.667603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417638, 0.880994, 0.222326,
		-0.051791, -0.267371, 0.962201,
		0.907136, 0.390337, 0.157292,
		2.479752, 3.991796, 0.714790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.920909, 4.020940, 1.325256>,  <1.844757, 3.718560, 0.604686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.920909, 4.020940, 1.325256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.205338, 4.206860, 1.114223>,  <2.375994, 4.318411, 0.987604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.205338, 4.206860, 1.114223>,  <1.920909, 4.020940, 1.325256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.205338, 4.206860, 1.114223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368196, 0.885384, 0.283772,
		0.599008, -0.007529, 0.800708,
		0.711070, 0.464799, -0.527580,
		2.418658, 4.346299, 0.955949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.331830, 4.464745, 1.802322>,  <1.920909, 4.020940, 1.325256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.331830, 4.464745, 1.802322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.363541, 4.610645, 1.431232>,  <2.382567, 4.698186, 1.208579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.363541, 4.610645, 1.431232>,  <2.331830, 4.464745, 1.802322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.363541, 4.610645, 1.431232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517638, 0.810407, 0.274393,
		0.851919, 0.458472, 0.253055,
		0.079276, 0.364751, -0.927724,
		2.387324, 4.720071, 1.152915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.653721, 5.136634, 1.841751>,  <2.331830, 4.464745, 1.802322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.653721, 5.136634, 1.841751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.444092, 5.125072, 1.501278>,  <2.318315, 5.118135, 1.296994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.444092, 5.125072, 1.501278>,  <2.653721, 5.136634, 1.841751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.444092, 5.125072, 1.501278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330086, 0.928201, 0.171714,
		0.785106, 0.370954, -0.495985,
		-0.524072, -0.028905, -0.851183,
		2.286870, 5.116401, 1.245923>
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
