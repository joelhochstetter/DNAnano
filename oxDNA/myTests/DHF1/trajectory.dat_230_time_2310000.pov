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
	<4.220875, 2.224579, 1.517732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.339184, 1.851631, 1.600876>,  <4.410169, 1.627862, 1.650762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.339184, 1.851631, 1.600876>,  <4.220875, 2.224579, 1.517732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.339184, 1.851631, 1.600876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926757, -0.332829, -0.174206,
		0.231605, -0.141109, -0.962521,
		0.295773, -0.932370, 0.207859,
		4.427916, 1.571920, 1.663234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.246032, 1.704631, 0.996969>,  <4.220875, 2.224579, 1.517732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.246032, 1.704631, 0.996969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.167992, 1.515320, 1.340584>,  <4.121167, 1.401733, 1.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.167992, 1.515320, 1.340584>,  <4.246032, 1.704631, 0.996969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.167992, 1.515320, 1.340584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941851, -0.153916, -0.298709,
		0.273592, -0.867363, -0.415728,
		-0.195102, -0.473278, 0.859036,
		4.109461, 1.373337, 1.598295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.036848, 0.926604, 0.818661>,  <4.246032, 1.704631, 0.996969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.036848, 0.926604, 0.818661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.866650, 1.084198, 1.144539>,  <3.764531, 1.178754, 1.340066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.866650, 1.084198, 1.144539>,  <4.036848, 0.926604, 0.818661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.866650, 1.084198, 1.144539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898387, -0.075585, -0.432653,
		-0.108878, -0.916005, 0.386108,
		-0.425496, 0.393981, 0.814697,
		3.739001, 1.202393, 1.388948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.500067, 0.477557, 1.075310>,  <4.036848, 0.926604, 0.818661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.500067, 0.477557, 1.075310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429153, 0.864677, 1.146790>,  <3.386605, 1.096949, 1.189677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429153, 0.864677, 1.146790>,  <3.500067, 0.477557, 1.075310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429153, 0.864677, 1.146790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813216, -0.041788, -0.580460,
		-0.554302, -0.248227, 0.794439,
		-0.177284, 0.967800, 0.178699,
		3.375968, 1.155017, 1.200399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.908455, 0.679361, 1.386896>,  <3.500067, 0.477557, 1.075310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.908455, 0.679361, 1.386896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.012302, 0.951927, 1.113174>,  <3.074611, 1.115467, 0.948941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.012302, 0.951927, 1.113174>,  <2.908455, 0.679361, 1.386896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.012302, 0.951927, 1.113174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698744, -0.356577, -0.620168,
		-0.666599, 0.639161, 0.383560,
		0.259618, 0.681415, -0.684304,
		3.090188, 1.156352, 0.907883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.271120, 0.976025, 1.123675>,  <2.908455, 0.679361, 1.386896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.271120, 0.976025, 1.123675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.537865, 1.021759, 0.829132>,  <2.697911, 1.049200, 0.652406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.537865, 1.021759, 0.829132>,  <2.271120, 0.976025, 1.123675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.537865, 1.021759, 0.829132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596617, -0.510142, -0.619519,
		-0.446480, 0.852457, -0.271979,
		0.666861, 0.114335, -0.736359,
		2.737923, 1.056060, 0.608225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.987596, 1.389636, 0.521512>,  <2.271120, 0.976025, 1.123675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.987596, 1.389636, 0.521512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.291943, 1.165436, 0.390717>,  <2.474550, 1.030916, 0.312239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.291943, 1.165436, 0.390717>,  <1.987596, 1.389636, 0.521512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.291943, 1.165436, 0.390717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620738, -0.481814, -0.618498,
		0.189120, 0.673569, -0.714520,
		0.760866, -0.560501, -0.326989,
		2.520202, 0.997286, 0.292620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.021799, 1.432725, -0.176346>,  <1.987596, 1.389636, 0.521512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.021799, 1.432725, -0.176346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177975, 1.077454, -0.079437>,  <2.271680, 0.864291, -0.021292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177975, 1.077454, -0.079437>,  <2.021799, 1.432725, -0.176346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.177975, 1.077454, -0.079437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702223, -0.457494, -0.545510,
		0.595348, 0.042860, -0.802324,
		0.390439, -0.888179, 0.242271,
		2.295106, 0.811000, -0.006756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.717968, 0.757166, 4.213035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.436771, 1.011780, 4.339920>,  <0.268053, 1.164548, 4.416051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.436771, 1.011780, 4.339920>,  <0.717968, 0.757166, 4.213035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.436771, 1.011780, 4.339920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001795, -0.444438, 0.895808,
		0.711195, 0.630316, 0.311294,
		-0.702992, 0.636536, 0.317213,
		0.225874, 1.202740, 4.435084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.318944, 0.439868, 4.300286>,  <0.717968, 0.757166, 4.213035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.318944, 0.439868, 4.300286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.626051, 0.185059, 4.272766>,  <1.810315, 0.032173, 4.256254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.626051, 0.185059, 4.272766>,  <1.318944, 0.439868, 4.300286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.626051, 0.185059, 4.272766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580201, 0.645664, 0.496473,
		-0.271843, -0.421094, 0.865321,
		0.767769, -0.637023, -0.068800,
		1.856382, -0.006048, 4.252126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.636849, 0.292777, 4.993467>,  <1.318944, 0.439868, 4.300286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.636849, 0.292777, 4.993467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.923563, 0.239639, 4.719658>,  <2.095591, 0.207757, 4.555372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.923563, 0.239639, 4.719658>,  <1.636849, 0.292777, 4.993467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.923563, 0.239639, 4.719658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652215, 0.474976, 0.590774,
		0.246651, -0.869914, 0.427098,
		0.716784, -0.132845, -0.684524,
		2.138598, 0.199786, 4.514301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.256406, -0.122767, 5.405764>,  <1.636849, 0.292777, 4.993467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.256406, -0.122767, 5.405764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.331982, 0.118652, 5.095917>,  <2.377327, 0.263504, 4.910009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.331982, 0.118652, 5.095917>,  <2.256406, -0.122767, 5.405764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.331982, 0.118652, 5.095917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708588, 0.462330, 0.533061,
		0.679857, -0.649600, -0.340316,
		0.188939, 0.603549, -0.774617,
		2.388663, 0.299717, 4.863532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.041794, -0.147280, 5.108002>,  <2.256406, -0.122767, 5.405764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.041794, -0.147280, 5.108002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.861240, 0.204727, 5.048912>,  <2.752908, 0.415931, 5.013458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.861240, 0.204727, 5.048912>,  <3.041794, -0.147280, 5.108002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.861240, 0.204727, 5.048912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806391, 0.473168, 0.354748,
		0.382083, 0.041005, -0.923218,
		-0.451383, 0.880018, -0.147723,
		2.725825, 0.468732, 5.004595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.576273, 0.320551, 4.951978>,  <3.041794, -0.147280, 5.108002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.576273, 0.320551, 4.951978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.250900, 0.535583, 5.040825>,  <3.055677, 0.664603, 5.094133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.250900, 0.535583, 5.040825>,  <3.576273, 0.320551, 4.951978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.250900, 0.535583, 5.040825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572948, 0.674679, 0.465338,
		0.100298, 0.505783, -0.856810,
		-0.813432, 0.537580, 0.222118,
		3.006871, 0.696858, 5.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.714443, 1.047189, 4.747740>,  <3.576273, 0.320551, 4.951978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.714443, 1.047189, 4.747740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411800, 1.064423, 5.008720>,  <3.230215, 1.074763, 5.165308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411800, 1.064423, 5.008720>,  <3.714443, 1.047189, 4.747740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.411800, 1.064423, 5.008720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545153, 0.592533, 0.593054,
		-0.361047, 0.804393, -0.471801,
		-0.756606, 0.043083, 0.652450,
		3.184819, 1.077348, 5.204455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.485132, 1.778493, 4.854362>,  <3.714443, 1.047189, 4.747740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.485132, 1.778493, 4.854362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396225, 1.565308, 5.180931>,  <3.342880, 1.437396, 5.376873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396225, 1.565308, 5.180931>,  <3.485132, 1.778493, 4.854362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396225, 1.565308, 5.180931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505299, 0.653167, 0.563955,
		-0.833828, 0.537888, 0.124127,
		-0.222269, -0.532963, 0.816423,
		3.329544, 1.405419, 5.425858>
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
