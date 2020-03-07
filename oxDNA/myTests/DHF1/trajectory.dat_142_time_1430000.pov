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
	<6.270338, 0.355784, 1.197646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.177528, 0.246399, 1.571037>,  <6.121843, 0.180768, 1.795072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.177528, 0.246399, 1.571037>,  <6.270338, 0.355784, 1.197646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.177528, 0.246399, 1.571037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899022, 0.426691, -0.098459,
		-0.371383, -0.862063, -0.344852,
		-0.232023, -0.273463, 0.933479,
		6.107922, 0.164360, 1.851081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.656623, -0.230603, 1.201736>,  <6.270338, 0.355784, 1.197646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.656623, -0.230603, 1.201736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714359, 0.034027, 1.496078>,  <5.749001, 0.192805, 1.672684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714359, 0.034027, 1.496078>,  <5.656623, -0.230603, 1.201736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.714359, 0.034027, 1.496078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893535, 0.406654, -0.190336,
		-0.425161, -0.630040, 0.649837,
		0.144340, 0.661575, 0.735856,
		5.757661, 0.232500, 1.716835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.003935, -0.162239, 1.517519>,  <5.656623, -0.230603, 1.201736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.003935, -0.162239, 1.517519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223068, 0.171089, 1.547066>,  <5.354548, 0.371086, 1.564794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223068, 0.171089, 1.547066>,  <5.003935, -0.162239, 1.517519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.223068, 0.171089, 1.547066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808335, 0.550018, -0.209941,
		-0.215577, 0.055302, 0.974920,
		0.547834, 0.833319, 0.073868,
		5.387418, 0.421085, 1.569226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.683367, 0.376018, 2.054432>,  <5.003935, -0.162239, 1.517519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.683367, 0.376018, 2.054432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.881413, 0.517181, 1.736862>,  <5.000240, 0.601879, 1.546320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.881413, 0.517181, 1.736862>,  <4.683367, 0.376018, 2.054432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.881413, 0.517181, 1.736862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738839, 0.651820, -0.171021,
		0.457142, 0.671258, 0.583467,
		0.495115, 0.352908, -0.793926,
		5.029947, 0.623054, 1.498685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.757599, 1.133710, 2.062202>,  <4.683367, 0.376018, 2.054432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.757599, 1.133710, 2.062202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.748745, 1.015656, 1.680122>,  <4.743433, 0.944823, 1.450875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.748745, 1.015656, 1.680122>,  <4.757599, 1.133710, 2.062202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.748745, 1.015656, 1.680122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769928, 0.614506, -0.172027,
		0.637747, 0.731626, -0.240835,
		-0.022135, -0.295135, -0.955199,
		4.742105, 0.927115, 1.393563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.915269, 1.674515, 1.566586>,  <4.757599, 1.133710, 2.062202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.915269, 1.674515, 1.566586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.656116, 1.398632, 1.437248>,  <4.500625, 1.233102, 1.359645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.656116, 1.398632, 1.437248>,  <4.915269, 1.674515, 1.566586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.656116, 1.398632, 1.437248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682235, 0.714201, -0.156433,
		0.338826, 0.119247, -0.933261,
		-0.647883, -0.689708, -0.323345,
		4.461752, 1.191720, 1.340245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.770268, 1.724169, 0.787828>,  <4.915269, 1.674515, 1.566586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.770268, 1.724169, 0.787828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.471767, 1.547497, 0.987038>,  <4.292667, 1.441493, 1.106563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.471767, 1.547497, 0.987038>,  <4.770268, 1.724169, 0.787828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.471767, 1.547497, 0.987038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642396, 0.673924, -0.364902,
		-0.174460, -0.592237, -0.786650,
		-0.746251, -0.441680, 0.498024,
		4.247892, 1.414993, 1.136445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.222063, 1.680990, 0.298611>,  <4.770268, 1.724169, 0.787828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.222063, 1.680990, 0.298611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074207, 1.675617, 0.670242>,  <3.985494, 1.672394, 0.893221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074207, 1.675617, 0.670242>,  <4.222063, 1.680990, 0.298611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.074207, 1.675617, 0.670242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694275, 0.668528, -0.266556,
		-0.617536, -0.743565, -0.256437,
		-0.369637, -0.013430, 0.929079,
		3.963316, 1.671588, 0.948966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.453757, 2.789973, 0.402412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.497082, 2.684265, 0.785751>,  <2.523077, 2.620840, 1.015755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.497082, 2.684265, 0.785751>,  <2.453757, 2.789973, 0.402412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.497082, 2.684265, 0.785751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842707, -0.486991, -0.229532,
		0.527365, 0.832467, 0.169955,
		0.108311, -0.264270, 0.958347,
		2.529575, 2.604984, 1.073256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.246062, 2.690696, 0.558439>,  <2.453757, 2.789973, 0.402412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.246062, 2.690696, 0.558439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.039876, 2.492958, 0.838417>,  <2.916165, 2.374316, 1.006404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.039876, 2.492958, 0.838417>,  <3.246062, 2.690696, 0.558439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.039876, 2.492958, 0.838417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625252, -0.775529, -0.087268,
		0.585967, 0.392657, 0.708846,
		-0.515464, -0.494344, 0.699944,
		2.885237, 2.344655, 1.048400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.491535, 2.659252, 1.267636>,  <3.246062, 2.690696, 0.558439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.491535, 2.659252, 1.267636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263979, 2.335052, 1.211845>,  <3.127445, 2.140532, 1.178371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263979, 2.335052, 1.211845>,  <3.491535, 2.659252, 1.267636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.263979, 2.335052, 1.211845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688614, -0.562159, 0.458025,
		-0.449637, 0.164522, 0.877929,
		-0.568891, -0.810499, -0.139476,
		3.093312, 2.091903, 1.170003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.375035, 2.169121, 1.914312>,  <3.491535, 2.659252, 1.267636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.375035, 2.169121, 1.914312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.358173, 1.959198, 1.574242>,  <3.348056, 1.833244, 1.370199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.358173, 1.959198, 1.574242>,  <3.375035, 2.169121, 1.914312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.358173, 1.959198, 1.574242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712554, -0.612272, 0.342621,
		-0.700349, -0.591354, 0.399764,
		-0.042154, -0.524808, -0.850176,
		3.345527, 1.801756, 1.319189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.308063, 1.397463, 2.069068>,  <3.375035, 2.169121, 1.914312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.308063, 1.397463, 2.069068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.489685, 1.467911, 1.719711>,  <3.598659, 1.510179, 1.510097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.489685, 1.467911, 1.719711>,  <3.308063, 1.397463, 2.069068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.489685, 1.467911, 1.719711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677494, -0.704891, 0.210072,
		-0.578649, -0.687103, -0.439380,
		0.454057, 0.176119, -0.873393,
		3.625902, 1.520746, 1.457693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.206264, 0.784386, 1.660830>,  <3.308063, 1.397463, 2.069068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.206264, 0.784386, 1.660830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.512431, 0.987152, 1.502251>,  <3.696132, 1.108812, 1.407103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.512431, 0.987152, 1.502251>,  <3.206264, 0.784386, 1.660830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.512431, 0.987152, 1.502251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556703, -0.830614, 0.012763,
		-0.322825, -0.230473, -0.917969,
		0.765419, 0.506916, -0.396448,
		3.742057, 1.139227, 1.383316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.500285, 0.326363, 1.276470>,  <3.206264, 0.784386, 1.660830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.500285, 0.326363, 1.276470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.792352, 0.599663, 1.278549>,  <3.967592, 0.763642, 1.279797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.792352, 0.599663, 1.278549>,  <3.500285, 0.326363, 1.276470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.792352, 0.599663, 1.278549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679798, -0.727203, 0.095128,
		0.068777, -0.065925, -0.995452,
		0.730167, 0.683249, 0.005199,
		4.011402, 0.804637, 1.280109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.039941, 0.132355, 0.738554>,  <3.500285, 0.326363, 1.276470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.039941, 0.132355, 0.738554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.193867, 0.331688, 1.049316>,  <4.286222, 0.451288, 1.235774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.193867, 0.331688, 1.049316>,  <4.039941, 0.132355, 0.738554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.193867, 0.331688, 1.049316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581277, -0.784678, 0.215401,
		0.716962, 0.368709, -0.591625,
		0.384815, 0.498332, 0.776906,
		4.309311, 0.481188, 1.282388>
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
