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
	<5.503565, 5.194460, 3.998239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.129822, 5.107050, 4.110825>,  <4.905576, 5.054604, 4.178376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.129822, 5.107050, 4.110825>,  <5.503565, 5.194460, 3.998239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129822, 5.107050, 4.110825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097162, -0.916192, -0.388782,
		0.342834, -0.335914, 0.877284,
		-0.934358, -0.218526, 0.281463,
		4.849514, 5.041492, 4.195263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336716, 4.471722, 3.819573>,  <5.503565, 5.194460, 3.998239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336716, 4.471722, 3.819573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.973976, 4.568377, 3.957695>,  <4.756332, 4.626369, 4.040568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.973976, 4.568377, 3.957695>,  <5.336716, 4.471722, 3.819573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.973976, 4.568377, 3.957695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387650, -0.799737, -0.458419,
		0.165383, -0.549575, 0.818912,
		-0.906849, 0.241637, 0.345305,
		4.701921, 4.640868, 4.061286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.964106, 3.905509, 4.265950>,  <5.336716, 4.471722, 3.819573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.964106, 3.905509, 4.265950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.746960, 4.138163, 4.023627>,  <4.616672, 4.277754, 3.878234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.746960, 4.138163, 4.023627>,  <4.964106, 3.905509, 4.265950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.746960, 4.138163, 4.023627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357209, -0.812763, -0.460236,
		-0.760065, -0.033446, 0.648986,
		-0.542865, 0.581633, -0.605806,
		4.584100, 4.312653, 3.841885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.363697, 3.510003, 4.123606>,  <4.964106, 3.905509, 4.265950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.363697, 3.510003, 4.123606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.321308, 3.803598, 3.855268>,  <4.295875, 3.979756, 3.694266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.321308, 3.803598, 3.855268>,  <4.363697, 3.510003, 4.123606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321308, 3.803598, 3.855268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595043, -0.587325, -0.548611,
		-0.796677, 0.341044, 0.498994,
		-0.105971, 0.733988, -0.670844,
		4.289517, 4.023795, 3.654015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.697958, 3.447941, 3.870986>,  <4.363697, 3.510003, 4.123606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.697958, 3.447941, 3.870986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.892876, 3.638685, 3.578371>,  <4.009826, 3.753132, 3.402802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.892876, 3.638685, 3.578371>,  <3.697958, 3.447941, 3.870986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.892876, 3.638685, 3.578371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412875, -0.612364, -0.674200,
		-0.769467, 0.630567, -0.101517,
		0.487294, 0.476861, -0.731539,
		4.039064, 3.781744, 3.358909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.227303, 3.554189, 3.369066>,  <3.697958, 3.447941, 3.870986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.227303, 3.554189, 3.369066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.575787, 3.597303, 3.177494>,  <3.784877, 3.623172, 3.062551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.575787, 3.597303, 3.177494>,  <3.227303, 3.554189, 3.369066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.575787, 3.597303, 3.177494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374322, -0.485337, -0.790146,
		-0.317609, 0.867658, -0.382485,
		0.871210, 0.107785, -0.478931,
		3.837150, 3.629639, 3.033815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.083586, 3.762827, 2.758482>,  <3.227303, 3.554189, 3.369066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.083586, 3.762827, 2.758482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459465, 3.638315, 2.701808>,  <3.684992, 3.563608, 2.667803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459465, 3.638315, 2.701808>,  <3.083586, 3.762827, 2.758482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.459465, 3.638315, 2.701808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298710, -0.545231, -0.783259,
		0.166562, 0.778349, -0.605334,
		0.939696, -0.311281, -0.141686,
		3.741374, 3.544931, 2.659302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.203582, 3.669071, 2.041790>,  <3.083586, 3.762827, 2.758482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.203582, 3.669071, 2.041790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.481426, 3.431238, 2.203771>,  <3.648133, 3.288538, 2.300959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.481426, 3.431238, 2.203771>,  <3.203582, 3.669071, 2.041790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.481426, 3.431238, 2.203771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187879, -0.693314, -0.695714,
		0.694418, 0.407169, -0.593294,
		0.694612, -0.594583, 0.404951,
		3.689810, 3.252863, 2.325256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.287335, 2.037629, 1.615315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.672829, 1.974598, 1.701465>,  <3.904125, 1.936779, 1.753156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.672829, 1.974598, 1.701465>,  <3.287335, 2.037629, 1.615315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.672829, 1.974598, 1.701465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012128, 0.832085, 0.554515,
		-0.266591, -0.531793, 0.803819,
		0.963733, -0.157578, 0.215376,
		3.961949, 1.927325, 1.766078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.289145, 2.170808, 2.373150>,  <3.287335, 2.037629, 1.615315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.289145, 2.170808, 2.373150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.651451, 2.209305, 2.208068>,  <3.868835, 2.232403, 2.109019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.651451, 2.209305, 2.208068>,  <3.289145, 2.170808, 2.373150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.651451, 2.209305, 2.208068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150620, 0.837172, 0.525792,
		0.396109, -0.538406, 0.743786,
		0.905766, 0.096242, -0.412706,
		3.923181, 2.238178, 2.084256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.855360, 2.290598, 2.865880>,  <3.289145, 2.170808, 2.373150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.855360, 2.290598, 2.865880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.938820, 2.501698, 2.536531>,  <3.988896, 2.628359, 2.338922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.938820, 2.501698, 2.536531>,  <3.855360, 2.290598, 2.865880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.938820, 2.501698, 2.536531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147273, 0.815347, 0.559928,
		0.966838, -0.238090, 0.092399,
		0.208651, 0.527752, -0.823373,
		4.001415, 2.660024, 2.289520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.559896, 2.440247, 2.838496>,  <3.855360, 2.290598, 2.865880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.559896, 2.440247, 2.838496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.321960, 2.703024, 2.653198>,  <4.179200, 2.860690, 2.542020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.321960, 2.703024, 2.653198>,  <4.559896, 2.440247, 2.838496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321960, 2.703024, 2.653198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359979, 0.732969, 0.577210,
		0.718738, 0.176588, -0.672483,
		-0.594837, 0.656942, -0.463245,
		4.143509, 2.900107, 2.514225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.942830, 3.015235, 2.520201>,  <4.559896, 2.440247, 2.838496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.942830, 3.015235, 2.520201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.580276, 3.179869, 2.558289>,  <4.362744, 3.278649, 2.581142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.580276, 3.179869, 2.558289>,  <4.942830, 3.015235, 2.520201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.580276, 3.179869, 2.558289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407880, 0.793903, 0.450947,
		0.110007, 0.447569, -0.887457,
		-0.906384, 0.411583, 0.095220,
		4.308361, 3.303344, 2.586855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.020931, 3.738069, 2.453400>,  <4.942830, 3.015235, 2.520201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.020931, 3.738069, 2.453400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.660286, 3.706512, 2.623516>,  <4.443899, 3.687579, 2.725585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.660286, 3.706512, 2.623516>,  <5.020931, 3.738069, 2.453400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.660286, 3.706512, 2.623516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161983, 0.850096, 0.501097,
		-0.401068, 0.520685, -0.753679,
		-0.901613, -0.078891, 0.425289,
		4.389802, 3.682845, 2.751102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.638034, 4.423321, 2.426514>,  <5.020931, 3.738069, 2.453400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.638034, 4.423321, 2.426514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.457024, 4.219798, 2.719454>,  <4.348417, 4.097684, 2.895218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.457024, 4.219798, 2.719454>,  <4.638034, 4.423321, 2.426514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.457024, 4.219798, 2.719454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040427, 0.832110, 0.553135,
		-0.890834, 0.220701, -0.397122,
		-0.452527, -0.508806, 0.732350,
		4.321266, 4.067156, 2.939159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.171667, 4.874567, 2.654526>,  <4.638034, 4.423321, 2.426514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.171667, 4.874567, 2.654526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.251953, 4.619055, 2.951624>,  <4.300125, 4.465747, 3.129883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.251953, 4.619055, 2.951624>,  <4.171667, 4.874567, 2.654526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.251953, 4.619055, 2.951624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232134, 0.767596, 0.597420,
		-0.951750, 0.052505, 0.302351,
		0.200716, -0.638780, 0.742747,
		4.312168, 4.427421, 3.174448>
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
