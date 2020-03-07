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
	<2.141606, 4.515478, 1.352728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.078159, 4.177483, 1.557016>,  <2.040091, 3.974686, 1.679590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.078159, 4.177483, 1.557016>,  <2.141606, 4.515478, 1.352728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.078159, 4.177483, 1.557016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493560, -0.515862, -0.700203,
		0.855125, 0.141008, 0.498877,
		-0.158618, -0.844987, 0.510722,
		2.030574, 3.923986, 1.710233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.827184, 4.211496, 1.582402>,  <2.141606, 4.515478, 1.352728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.827184, 4.211496, 1.582402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.541471, 3.940269, 1.513088>,  <2.370044, 3.777534, 1.471500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.541471, 3.940269, 1.513088>,  <2.827184, 4.211496, 1.582402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.541471, 3.940269, 1.513088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615388, -0.490593, -0.616941,
		0.333315, -0.547307, 0.767696,
		-0.714282, -0.678066, -0.173284,
		2.327187, 3.736850, 1.461103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.146170, 3.478677, 1.589113>,  <2.827184, 4.211496, 1.582402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.146170, 3.478677, 1.589113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.799353, 3.411613, 1.401442>,  <2.591262, 3.371376, 1.288839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.799353, 3.411613, 1.401442>,  <3.146170, 3.478677, 1.589113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.799353, 3.411613, 1.401442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476377, -0.554817, -0.682087,
		-0.145950, -0.814904, 0.560919,
		-0.867043, -0.167658, -0.469177,
		2.539240, 3.361316, 1.260688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.202214, 2.816003, 1.444449>,  <3.146170, 3.478677, 1.589113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.202214, 2.816003, 1.444449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.885216, 2.923927, 1.225670>,  <2.695017, 2.988682, 1.094403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.885216, 2.923927, 1.225670>,  <3.202214, 2.816003, 1.444449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.885216, 2.923927, 1.225670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320928, -0.578114, -0.750193,
		-0.518608, -0.770056, 0.371564,
		-0.792497, 0.269811, -0.546947,
		2.647467, 3.004871, 1.061586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.701910, 2.255634, 1.182721>,  <3.202214, 2.816003, 1.444449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.701910, 2.255634, 1.182721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.747095, 2.562035, 0.929586>,  <2.774206, 2.745875, 0.777706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.747095, 2.562035, 0.929586>,  <2.701910, 2.255634, 1.182721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.747095, 2.562035, 0.929586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415962, -0.614871, -0.670006,
		-0.902338, -0.187549, -0.388086,
		0.112963, 0.766002, -0.632835,
		2.780984, 2.791835, 0.739736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.445959, 2.124081, 0.531599>,  <2.701910, 2.255634, 1.182721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.445959, 2.124081, 0.531599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733284, 2.399666, 0.492901>,  <2.905679, 2.565017, 0.469682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733284, 2.399666, 0.492901>,  <2.445959, 2.124081, 0.531599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.733284, 2.399666, 0.492901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504918, -0.611915, -0.608784,
		-0.478628, 0.388449, -0.787415,
		0.718312, 0.688962, -0.096745,
		2.948778, 2.606354, 0.463877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.512198, 2.168746, -0.145777>,  <2.445959, 2.124081, 0.531599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.512198, 2.168746, -0.145777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.857918, 2.311432, -0.003937>,  <3.065349, 2.397044, 0.081167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.857918, 2.311432, -0.003937>,  <2.512198, 2.168746, -0.145777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.857918, 2.311432, -0.003937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489721, -0.757609, -0.431511,
		0.114722, 0.546610, -0.829492,
		0.864298, 0.356716, 0.354601,
		3.117207, 2.418447, 0.102444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.053722, 2.312937, -0.736013>,  <2.512198, 2.168746, -0.145777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.053722, 2.312937, -0.736013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.239319, 2.248856, -0.387520>,  <3.350677, 2.210407, -0.178424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.239319, 2.248856, -0.387520>,  <3.053722, 2.312937, -0.736013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.239319, 2.248856, -0.387520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481466, -0.779951, -0.399833,
		0.743574, 0.604988, -0.284758,
		0.463992, -0.160204, 0.871233,
		3.378516, 2.200794, -0.126150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.079473, 1.082505, -1.054704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.200336, 0.907661, -0.715851>,  <4.272854, 0.802755, -0.512539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.200336, 0.907661, -0.715851>,  <4.079473, 1.082505, -1.054704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.200336, 0.907661, -0.715851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353277, 0.774045, 0.525405,
		-0.885379, -0.458028, 0.079462,
		0.302157, -0.437110, 0.847134,
		4.290984, 0.776528, -0.461711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.539419, 1.058497, -0.551720>,  <4.079473, 1.082505, -1.054704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.539419, 1.058497, -0.551720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.869343, 1.062462, -0.325590>,  <4.067297, 1.064841, -0.189912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.869343, 1.062462, -0.325590>,  <3.539419, 1.058497, -0.551720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.869343, 1.062462, -0.325590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454677, 0.605959, 0.652749,
		-0.336093, -0.795434, 0.504308,
		0.824809, 0.009913, 0.565324,
		4.116786, 1.065436, -0.155993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.483543, 0.983518, 0.262063>,  <3.539419, 1.058497, -0.551720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.483543, 0.983518, 0.262063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.775105, 1.228134, 0.138958>,  <3.950041, 1.374904, 0.065095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.775105, 1.228134, 0.138958>,  <3.483543, 0.983518, 0.262063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.775105, 1.228134, 0.138958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491377, 0.780340, 0.386806,
		0.476706, -0.130717, 0.869290,
		0.728903, 0.611541, -0.307762,
		3.993775, 1.411597, 0.046629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.606955, 1.484719, 0.764926>,  <3.483543, 0.983518, 0.262063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.606955, 1.484719, 0.764926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.724304, 1.648727, 0.419483>,  <3.794714, 1.747132, 0.212218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.724304, 1.648727, 0.419483>,  <3.606955, 1.484719, 0.764926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.724304, 1.648727, 0.419483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430815, 0.863131, 0.263445,
		0.853423, 0.294767, 0.429862,
		0.293373, 0.410021, -0.863606,
		3.812316, 1.771734, 0.160401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.086143, 2.031705, 0.906156>,  <3.606955, 1.484719, 0.764926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.086143, 2.031705, 0.906156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.882824, 2.089134, 0.566504>,  <3.760833, 2.123592, 0.362712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.882824, 2.089134, 0.566504>,  <4.086143, 2.031705, 0.906156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.882824, 2.089134, 0.566504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404771, 0.830474, 0.382718,
		0.760128, 0.538238, -0.364013,
		-0.508296, 0.143573, -0.849130,
		3.730335, 2.132206, 0.311765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.223330, 2.776910, 0.741515>,  <4.086143, 2.031705, 0.906156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.223330, 2.776910, 0.741515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903214, 2.681084, 0.521645>,  <3.711144, 2.623588, 0.389722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903214, 2.681084, 0.521645>,  <4.223330, 2.776910, 0.741515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.903214, 2.681084, 0.521645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448807, 0.847239, 0.284180,
		0.397627, 0.474126, -0.785556,
		-0.800290, -0.239565, -0.549676,
		3.663126, 2.609214, 0.356742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.056737, 3.329838, 0.339558>,  <4.223330, 2.776910, 0.741515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.056737, 3.329838, 0.339558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.732849, 3.107674, 0.415321>,  <3.538517, 2.974375, 0.460779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.732849, 3.107674, 0.415321>,  <4.056737, 3.329838, 0.339558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.732849, 3.107674, 0.415321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475323, 0.810051, 0.343345,
		-0.344127, 0.187984, -0.919912,
		-0.809719, -0.555410, 0.189407,
		3.489933, 2.941051, 0.472144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.348563, 3.536817, -0.039994>,  <4.056737, 3.329838, 0.339558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.348563, 3.536817, -0.039994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.297218, 3.410767, 0.336138>,  <3.266412, 3.335136, 0.561817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.297218, 3.410767, 0.336138>,  <3.348563, 3.536817, -0.039994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.297218, 3.410767, 0.336138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337561, 0.905440, 0.257355,
		-0.932511, -0.284384, -0.222598,
		-0.128362, -0.315127, 0.940329,
		3.258710, 3.316229, 0.618236>
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
