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
	<4.869211, 3.555163, 3.239020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.938843, 3.652599, 2.857368>,  <4.980622, 3.711061, 2.628378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.938843, 3.652599, 2.857368>,  <4.869211, 3.555163, 3.239020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.938843, 3.652599, 2.857368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965318, -0.149234, -0.214221,
		-0.194571, 0.958328, 0.209164,
		0.174079, 0.243591, -0.954128,
		4.991066, 3.725677, 2.571130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.557865, 4.176176, 2.910339>,  <4.869211, 3.555163, 3.239020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.557865, 4.176176, 2.910339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592339, 3.933453, 2.594275>,  <4.613023, 3.787819, 2.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592339, 3.933453, 2.594275>,  <4.557865, 4.176176, 2.910339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.592339, 3.933453, 2.594275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985411, 0.064910, -0.157328,
		0.146758, 0.792194, -0.592361,
		0.086184, -0.606808, -0.790162,
		4.618194, 3.751410, 2.357226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.177188, 4.437947, 2.462776>,  <4.557865, 4.176176, 2.910339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.177188, 4.437947, 2.462776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.171181, 4.048550, 2.371489>,  <4.167576, 3.814911, 2.316716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.171181, 4.048550, 2.371489>,  <4.177188, 4.437947, 2.462776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.171181, 4.048550, 2.371489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991537, 0.043935, -0.122162,
		0.128951, 0.224453, -0.965915,
		-0.015017, -0.973494, -0.228219,
		4.166676, 3.756501, 2.303023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.846246, 4.332525, 1.801873>,  <4.177188, 4.437947, 2.462776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.846246, 4.332525, 1.801873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816208, 3.995598, 2.015362>,  <3.798185, 3.793441, 2.143455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816208, 3.995598, 2.015362>,  <3.846246, 4.332525, 1.801873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.816208, 3.995598, 2.015362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994767, 0.026098, -0.098775,
		0.069271, -0.538348, -0.839871,
		-0.075094, -0.842318, 0.533723,
		3.793680, 3.742902, 2.175479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.302192, 4.018236, 1.430425>,  <3.846246, 4.332525, 1.801873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.302192, 4.018236, 1.430425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.325928, 3.797943, 1.763453>,  <3.340169, 3.665767, 1.963269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.325928, 3.797943, 1.763453>,  <3.302192, 4.018236, 1.430425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.325928, 3.797943, 1.763453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996209, 0.020482, 0.084551,
		-0.063618, -0.834430, -0.547430,
		0.059339, -0.550733, 0.832569,
		3.343729, 3.632723, 2.013223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.838148, 3.431537, 1.398100>,  <3.302192, 4.018236, 1.430425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.838148, 3.431537, 1.398100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.899185, 3.522419, 1.782827>,  <2.935807, 3.576948, 2.013664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.899185, 3.522419, 1.782827>,  <2.838148, 3.431537, 1.398100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.899185, 3.522419, 1.782827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981088, 0.152100, 0.119720,
		-0.119091, -0.961896, 0.246116,
		0.152592, 0.227204, 0.961818,
		2.944963, 3.590580, 2.071373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.247024, 3.003343, 1.733119>,  <2.838148, 3.431537, 1.398100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.247024, 3.003343, 1.733119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.376221, 3.274284, 1.997503>,  <2.453739, 3.436849, 2.156134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.376221, 3.274284, 1.997503>,  <2.247024, 3.003343, 1.733119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.376221, 3.274284, 1.997503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906496, 0.020758, 0.421705,
		0.271923, -0.735365, 0.620723,
		0.322992, 0.677354, 0.660960,
		2.473118, 3.477490, 2.195791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.247779, 2.655215, 2.363900>,  <2.247024, 3.003343, 1.733119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.247779, 2.655215, 2.363900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207954, 3.051590, 2.399965>,  <2.184060, 3.289415, 2.421605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207954, 3.051590, 2.399965>,  <2.247779, 2.655215, 2.363900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.207954, 3.051590, 2.399965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828903, -0.132726, 0.543419,
		0.550461, -0.020634, 0.834606,
		-0.099561, 0.990938, 0.090164,
		2.178086, 3.348871, 2.427015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.435322, 5.021180, 1.062366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.822197, 5.010269, 1.163403>,  <2.054322, 5.003723, 1.224025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.822197, 5.010269, 1.163403>,  <1.435322, 5.021180, 1.062366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.822197, 5.010269, 1.163403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244176, -0.374435, 0.894526,
		0.070179, -0.926852, -0.368809,
		0.967188, -0.027277, 0.252593,
		2.112354, 5.002086, 1.239180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.580002, 4.326033, 1.250505>,  <1.435322, 5.021180, 1.062366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.580002, 4.326033, 1.250505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.824791, 4.588650, 1.426888>,  <1.971664, 4.746220, 1.532717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.824791, 4.588650, 1.426888>,  <1.580002, 4.326033, 1.250505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.824791, 4.588650, 1.426888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246840, -0.371143, 0.895166,
		0.751373, -0.656662, -0.065068,
		0.611971, 0.656542, 0.440957,
		2.008382, 4.785613, 1.559175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.057962, 4.028474, 1.743786>,  <1.580002, 4.326033, 1.250505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.057962, 4.028474, 1.743786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912735, 4.394146, 1.815849>,  <1.825599, 4.613549, 1.859087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912735, 4.394146, 1.815849>,  <2.057962, 4.028474, 1.743786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.912735, 4.394146, 1.815849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264528, -0.286526, 0.920830,
		0.893424, 0.286667, 0.345854,
		-0.363068, 0.914180, 0.180158,
		1.803815, 4.668400, 1.869897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.405428, 4.227263, 2.320063>,  <2.057962, 4.028474, 1.743786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.405428, 4.227263, 2.320063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.046959, 4.401062, 2.284092>,  <1.831878, 4.505342, 2.262509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.046959, 4.401062, 2.284092>,  <2.405428, 4.227263, 2.320063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.046959, 4.401062, 2.284092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261781, -0.354114, 0.897816,
		0.358255, 0.828139, 0.431090,
		-0.896172, 0.434498, -0.089928,
		1.778107, 4.531412, 2.257113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.944502, 4.404444, 2.928645>,  <2.405428, 4.227263, 2.320063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.944502, 4.404444, 2.928645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.806366, 4.092983, 2.719097>,  <2.723485, 3.906106, 2.593368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.806366, 4.092983, 2.719097>,  <2.944502, 4.404444, 2.928645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.806366, 4.092983, 2.719097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924170, -0.185056, -0.334161,
		0.163250, -0.599545, 0.783515,
		-0.345339, -0.778653, -0.523871,
		2.702764, 3.859387, 2.561936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.227589, 3.786578, 3.269417>,  <2.944502, 4.404444, 2.928645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.227589, 3.786578, 3.269417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.125854, 3.702179, 2.891890>,  <3.064814, 3.651540, 2.665373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.125854, 3.702179, 2.891890>,  <3.227589, 3.786578, 3.269417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.125854, 3.702179, 2.891890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921143, -0.350163, -0.169945,
		-0.294632, -0.912615, 0.283419,
		-0.254337, -0.210998, -0.943818,
		3.049553, 3.638880, 2.608744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.315895, 2.991308, 3.126878>,  <3.227589, 3.786578, 3.269417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.315895, 2.991308, 3.126878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.343666, 3.193275, 2.782730>,  <3.360329, 3.314456, 2.576241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.343666, 3.193275, 2.782730>,  <3.315895, 2.991308, 3.126878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.343666, 3.193275, 2.782730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947465, -0.303312, -0.101547,
		-0.312234, -0.808121, -0.499450,
		0.069427, 0.504918, -0.860371,
		3.364494, 3.344751, 2.524619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.667724, 2.568048, 2.745800>,  <3.315895, 2.991308, 3.126878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.667724, 2.568048, 2.745800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.710922, 2.935215, 2.593084>,  <3.736841, 3.155515, 2.501455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.710922, 2.935215, 2.593084>,  <3.667724, 2.568048, 2.745800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.710922, 2.935215, 2.593084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990783, -0.130964, -0.034612,
		-0.081772, -0.374532, -0.923601,
		0.107995, 0.917918, -0.381789,
		3.743321, 3.210590, 2.478548>
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
