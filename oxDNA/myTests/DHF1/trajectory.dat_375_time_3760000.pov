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
	<1.572831, 2.685390, 2.559925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850792, 2.930588, 2.710312>,  <2.017568, 3.077706, 2.800544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850792, 2.930588, 2.710312>,  <1.572831, 2.685390, 2.559925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.850792, 2.930588, 2.710312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346125, -0.743397, 0.572327,
		0.630325, -0.267579, -0.728760,
		0.694901, 0.612994, 0.375966,
		2.059262, 3.114486, 2.823102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.203530, 2.388363, 2.494909>,  <1.572831, 2.685390, 2.559925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.203530, 2.388363, 2.494909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.205250, 2.632271, 2.811935>,  <2.206282, 2.778615, 3.002151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.205250, 2.632271, 2.811935>,  <2.203530, 2.388363, 2.494909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.205250, 2.632271, 2.811935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325417, -0.750288, 0.575476,
		0.945561, 0.255440, -0.201656,
		0.004300, 0.609770, 0.792567,
		2.206540, 2.815202, 3.049706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.728131, 2.214715, 3.031191>,  <2.203530, 2.388363, 2.494909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.728131, 2.214715, 3.031191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.349903, 2.099312, 3.091408>,  <2.122967, 2.030070, 3.127538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.349903, 2.099312, 3.091408>,  <2.728131, 2.214715, 3.031191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.349903, 2.099312, 3.091408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163088, -0.019810, 0.986413,
		-0.281606, 0.957272, 0.065784,
		-0.945569, -0.288508, 0.150541,
		2.066232, 2.012759, 3.136570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.467456, 2.645718, 3.583944>,  <2.728131, 2.214715, 3.031191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.467456, 2.645718, 3.583944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.313919, 2.276375, 3.580467>,  <2.221797, 2.054769, 3.578381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.313919, 2.276375, 3.580467>,  <2.467456, 2.645718, 3.583944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.313919, 2.276375, 3.580467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100530, -0.051145, 0.993618,
		-0.917910, 0.380518, 0.112457,
		-0.383842, -0.923358, -0.008693,
		2.198767, 1.999367, 3.577859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.854601, 2.584003, 4.030460>,  <2.467456, 2.645718, 3.583944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.854601, 2.584003, 4.030460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.992458, 2.209343, 4.005463>,  <2.075173, 1.984547, 3.990464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.992458, 2.209343, 4.005463>,  <1.854601, 2.584003, 4.030460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.992458, 2.209343, 4.005463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084799, -0.097363, 0.991630,
		-0.934896, -0.336460, -0.112982,
		0.344644, -0.936651, -0.062493,
		2.095851, 1.928348, 3.986715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.432134, 2.209184, 4.489721>,  <1.854601, 2.584003, 4.030460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.432134, 2.209184, 4.489721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.723194, 1.938042, 4.447701>,  <1.897830, 1.775356, 4.422488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.723194, 1.938042, 4.447701>,  <1.432134, 2.209184, 4.489721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.723194, 1.938042, 4.447701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160616, -0.317261, 0.934638,
		-0.666878, -0.663217, -0.339730,
		0.727651, -0.677856, -0.105051,
		1.941490, 1.734685, 4.416185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.183411, 1.557969, 4.734988>,  <1.432134, 2.209184, 4.489721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.183411, 1.557969, 4.734988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.580830, 1.513290, 4.742867>,  <1.819281, 1.486483, 4.747594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.580830, 1.513290, 4.742867>,  <1.183411, 1.557969, 4.734988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.580830, 1.513290, 4.742867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060257, -0.372690, 0.925998,
		-0.096089, -0.921209, -0.377015,
		0.993547, -0.111696, 0.019698,
		1.878894, 1.479781, 4.748776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.206204, 0.896957, 4.863326>,  <1.183411, 1.557969, 4.734988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.206204, 0.896957, 4.863326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545204, 1.079468, 4.971809>,  <1.748604, 1.188974, 5.036900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545204, 1.079468, 4.971809>,  <1.206204, 0.896957, 4.863326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.545204, 1.079468, 4.971809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145615, -0.291486, 0.945427,
		0.510430, -0.840742, -0.180593,
		0.847501, 0.456278, 0.271208,
		1.799454, 1.216351, 5.053172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.555472, 0.852352, 6.326534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.943268, 0.950287, 6.321686>,  <2.175945, 1.009048, 6.318777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.943268, 0.950287, 6.321686>,  <1.555472, 0.852352, 6.326534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.943268, 0.950287, 6.321686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152597, 0.564075, -0.811501,
		-0.191849, 0.788591, 0.584225,
		0.969489, 0.244836, -0.012119,
		2.234114, 1.023738, 6.318050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.758903, 1.636507, 6.353564>,  <1.555472, 0.852352, 6.326534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.758903, 1.636507, 6.353564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.977950, 1.375259, 6.144356>,  <2.109378, 1.218511, 6.018831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.977950, 1.375259, 6.144356>,  <1.758903, 1.636507, 6.353564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.977950, 1.375259, 6.144356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298470, 0.431481, -0.851317,
		0.781685, 0.622301, 0.041350,
		0.547617, -0.653120, -0.523020,
		2.142235, 1.179324, 5.987450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.289392, 1.932502, 5.877892>,  <1.758903, 1.636507, 6.353564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.289392, 1.932502, 5.877892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.240321, 1.569992, 5.716095>,  <2.210879, 1.352486, 5.619017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.240321, 1.569992, 5.716095>,  <2.289392, 1.932502, 5.877892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.240321, 1.569992, 5.716095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186170, 0.379322, -0.906342,
		0.974829, -0.186491, 0.122188,
		-0.122676, -0.906276, -0.404493,
		2.203518, 1.298109, 5.594747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.901772, 1.700664, 5.386735>,  <2.289392, 1.932502, 5.877892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.901772, 1.700664, 5.386735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.572392, 1.510094, 5.263481>,  <2.374764, 1.395751, 5.189528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.572392, 1.510094, 5.263481>,  <2.901772, 1.700664, 5.386735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.572392, 1.510094, 5.263481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173403, 0.305781, -0.936178,
		0.540243, -0.824327, -0.169181,
		-0.823449, -0.476427, -0.308136,
		2.325357, 1.367166, 5.171040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.151173, 1.311738, 4.818166>,  <2.901772, 1.700664, 5.386735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.151173, 1.311738, 4.818166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.753253, 1.346016, 4.796158>,  <2.514501, 1.366583, 4.782953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.753253, 1.346016, 4.796158>,  <3.151173, 1.311738, 4.818166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.753253, 1.346016, 4.796158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071332, 0.200750, -0.977042,
		-0.072683, -0.975887, -0.205819,
		-0.994801, 0.085696, -0.055021,
		2.454813, 1.371725, 4.779652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.844808, 0.815918, 4.271127>,  <3.151173, 1.311738, 4.818166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.844808, 0.815918, 4.271127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.565084, 1.098747, 4.313103>,  <2.397249, 1.268445, 4.338288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.565084, 1.098747, 4.313103>,  <2.844808, 0.815918, 4.271127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.565084, 1.098747, 4.313103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046651, 0.101349, -0.993757,
		-0.713293, -0.699841, -0.037889,
		-0.699311, 0.707072, 0.104940,
		2.355290, 1.310869, 4.344585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.376521, 0.689569, 3.766199>,  <2.844808, 0.815918, 4.271127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.376521, 0.689569, 3.766199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269090, 1.067825, 3.839554>,  <2.204631, 1.294779, 3.883567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269090, 1.067825, 3.839554>,  <2.376521, 0.689569, 3.766199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.269090, 1.067825, 3.839554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238772, 0.119083, -0.963747,
		-0.933195, -0.302630, 0.193809,
		-0.268579, 0.945640, 0.183387,
		2.188516, 1.351517, 3.894570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.750912, 0.825736, 3.496112>,  <2.376521, 0.689569, 3.766199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.750912, 0.825736, 3.496112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.927028, 1.183876, 3.522926>,  <2.032697, 1.398760, 3.539015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.927028, 1.183876, 3.522926>,  <1.750912, 0.825736, 3.496112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.927028, 1.183876, 3.522926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114737, 0.130158, -0.984832,
		-0.890494, 0.425920, 0.160037,
		0.440290, 0.895350, 0.067036,
		2.059115, 1.452481, 3.543037>
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
