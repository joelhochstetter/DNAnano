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
	<1.505837, 3.152508, 1.279539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.803513, 3.162937, 1.012554>,  <1.982118, 3.169194, 0.852363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.803513, 3.162937, 1.012554>,  <1.505837, 3.152508, 1.279539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.803513, 3.162937, 1.012554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345350, 0.840308, 0.417872,
		0.571768, -0.541483, 0.616343,
		0.744188, 0.026072, -0.667461,
		2.026769, 3.170759, 0.812316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.053664, 3.178875, 1.718913>,  <1.505837, 3.152508, 1.279539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.053664, 3.178875, 1.718913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.121651, 3.351660, 1.364620>,  <2.162442, 3.455331, 1.152045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.121651, 3.351660, 1.364620>,  <2.053664, 3.178875, 1.718913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.121651, 3.351660, 1.364620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240185, 0.853545, 0.462355,
		0.955732, -0.291324, 0.041322,
		0.169965, 0.431963, -0.885732,
		2.172640, 3.481248, 1.098901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.723099, 3.476182, 1.757996>,  <2.053664, 3.178875, 1.718913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.723099, 3.476182, 1.757996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.478821, 3.671387, 1.508551>,  <2.332254, 3.788510, 1.358883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.478821, 3.671387, 1.508551>,  <2.723099, 3.476182, 1.757996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.478821, 3.671387, 1.508551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227430, 0.862440, 0.452187,
		0.758502, 0.134320, -0.637677,
		-0.610696, 0.488012, -0.623614,
		2.295612, 3.817790, 1.321466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.468306, 3.501799, 1.741073>,  <2.723099, 3.476182, 1.757996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.468306, 3.501799, 1.741073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.854881, 3.529993, 1.642256>,  <4.086826, 3.546910, 1.582965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.854881, 3.529993, 1.642256>,  <3.468306, 3.501799, 1.741073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.854881, 3.529993, 1.642256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248148, 0.007222, -0.968695,
		-0.066495, 0.997487, 0.024470,
		0.966437, 0.070485, -0.247044,
		4.144813, 3.551139, 1.568143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.476212, 3.990083, 1.261919>,  <3.468306, 3.501799, 1.741073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.476212, 3.990083, 1.261919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.809525, 3.778075, 1.199026>,  <4.009512, 3.650871, 1.161290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.809525, 3.778075, 1.199026>,  <3.476212, 3.990083, 1.261919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.809525, 3.778075, 1.199026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302983, -0.199921, -0.931790,
		0.462432, 0.824082, -0.327177,
		0.833281, -0.530019, -0.157233,
		4.059509, 3.619069, 1.151856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.818379, 4.261561, 0.595157>,  <3.476212, 3.990083, 1.261919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.818379, 4.261561, 0.595157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.931602, 3.885980, 0.673380>,  <3.999537, 3.660631, 0.720314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.931602, 3.885980, 0.673380>,  <3.818379, 4.261561, 0.595157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.931602, 3.885980, 0.673380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088335, -0.228553, -0.969516,
		0.955026, 0.257155, -0.147636,
		0.283058, -0.938954, 0.195558,
		4.016520, 3.604293, 0.732047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.265315, 4.190785, 0.023432>,  <3.818379, 4.261561, 0.595157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.265315, 4.190785, 0.023432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.163605, 3.825469, 0.150707>,  <4.102579, 3.606279, 0.227072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.163605, 3.825469, 0.150707>,  <4.265315, 4.190785, 0.023432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.163605, 3.825469, 0.150707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016316, -0.333006, -0.942783,
		0.966994, -0.234536, 0.099577,
		-0.254276, -0.913291, 0.318188,
		4.087322, 3.551482, 0.246164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.517586, 3.692015, -0.496491>,  <4.265315, 4.190785, 0.023432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.517586, 3.692015, -0.496491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247200, 3.480061, -0.291634>,  <4.084969, 3.352888, -0.168719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247200, 3.480061, -0.291634>,  <4.517586, 3.692015, -0.496491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.247200, 3.480061, -0.291634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275198, -0.463181, -0.842454,
		0.683621, -0.710410, 0.167270,
		-0.675965, -0.529887, 0.512144,
		4.044411, 3.321095, -0.137990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.289613, 2.805266, -1.264905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.267120, 2.529892, -0.975658>,  <3.253625, 2.364668, -0.802111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.267120, 2.529892, -0.975658>,  <3.289613, 2.805266, -1.264905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.267120, 2.529892, -0.975658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231564, 0.695520, 0.680169,
		-0.971193, 0.205694, 0.120307,
		-0.056231, -0.688434, 0.723116,
		3.250251, 2.323362, -0.758724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.914239, 3.077137, -0.633936>,  <3.289613, 2.805266, -1.264905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.914239, 3.077137, -0.633936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.209366, 2.815975, -0.565418>,  <3.386442, 2.659278, -0.524308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.209366, 2.815975, -0.565418>,  <2.914239, 3.077137, -0.633936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.209366, 2.815975, -0.565418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344587, 0.582534, 0.736148,
		-0.580419, -0.484116, 0.654786,
		0.737817, -0.652905, 0.171294,
		3.430711, 2.620104, -0.514030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.911246, 3.199968, 0.071816>,  <2.914239, 3.077137, -0.633936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.911246, 3.199968, 0.071816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.244965, 3.014271, -0.047131>,  <3.445196, 2.902852, -0.118499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.244965, 3.014271, -0.047131>,  <2.911246, 3.199968, 0.071816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.244965, 3.014271, -0.047131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465449, 0.304035, 0.831216,
		-0.295477, -0.831890, 0.469737,
		0.834296, -0.464244, -0.297367,
		3.495254, 2.874998, -0.136341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.235109, 2.643834, 0.538538>,  <2.911246, 3.199968, 0.071816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.235109, 2.643834, 0.538538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522995, 2.812778, 0.318130>,  <3.695726, 2.914145, 0.185886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522995, 2.812778, 0.318130>,  <3.235109, 2.643834, 0.538538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.522995, 2.812778, 0.318130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481363, 0.268356, 0.834431,
		0.500301, -0.865792, -0.010170,
		0.719714, 0.422362, -0.551019,
		3.738909, 2.939487, 0.152825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.895202, 2.359520, 0.714963>,  <3.235109, 2.643834, 0.538538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.895202, 2.359520, 0.714963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955292, 2.728027, 0.571465>,  <3.991345, 2.949132, 0.485366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955292, 2.728027, 0.571465>,  <3.895202, 2.359520, 0.714963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955292, 2.728027, 0.571465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550809, 0.223341, 0.804194,
		0.821001, -0.318409, -0.473892,
		0.150223, 0.921268, -0.358745,
		4.000359, 3.004408, 0.463841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.555840, 2.472414, 0.816629>,  <3.895202, 2.359520, 0.714963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.555840, 2.472414, 0.816629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.389565, 2.833492, 0.772186>,  <4.289800, 3.050139, 0.745520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.389565, 2.833492, 0.772186>,  <4.555840, 2.472414, 0.816629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.389565, 2.833492, 0.772186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392041, 0.288070, 0.873682,
		0.820675, 0.319620, -0.473640,
		-0.415688, 0.902695, -0.111108,
		4.264858, 3.104301, 0.738854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.088975, 2.919637, 0.879382>,  <4.555840, 2.472414, 0.816629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.088975, 2.919637, 0.879382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.763176, 3.123882, 0.989559>,  <4.567697, 3.246429, 1.055665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.763176, 3.123882, 0.989559>,  <5.088975, 2.919637, 0.879382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.763176, 3.123882, 0.989559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397834, 0.145995, 0.905767,
		0.422283, 0.847325, -0.322052,
		-0.814497, 0.510613, 0.275443,
		4.518827, 3.277066, 1.072192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.338127, 3.452556, 1.303376>,  <5.088975, 2.919637, 0.879382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.338127, 3.452556, 1.303376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.949104, 3.425854, 1.392529>,  <4.715691, 3.409832, 1.446020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.949104, 3.425854, 1.392529>,  <5.338127, 3.452556, 1.303376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.949104, 3.425854, 1.392529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224625, -0.019778, 0.974245,
		-0.060628, 0.997573, 0.034230,
		-0.972558, -0.066755, 0.222881,
		4.657337, 3.405827, 1.459393>
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
