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
	<2.246804, 2.474538, 1.431032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.290108, 2.661001, 1.079811>,  <2.316090, 2.772880, 0.869079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.290108, 2.661001, 1.079811>,  <2.246804, 2.474538, 1.431032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.290108, 2.661001, 1.079811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341237, 0.847005, 0.407603,
		0.933722, 0.255498, 0.250766,
		0.108258, 0.466159, -0.878052,
		2.322585, 2.800849, 0.816395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703121, 2.991650, 1.423300>,  <2.246804, 2.474538, 1.431032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703121, 2.991650, 1.423300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.450851, 3.098312, 1.131781>,  <2.299490, 3.162310, 0.956869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.450851, 3.098312, 1.131781>,  <2.703121, 2.991650, 1.423300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.450851, 3.098312, 1.131781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242965, 0.824055, 0.511762,
		0.737034, 0.499827, -0.454922,
		-0.630673, 0.266656, -0.728797,
		2.261650, 3.178309, 0.913141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.759838, 3.710627, 1.485351>,  <2.703121, 2.991650, 1.423300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.759838, 3.710627, 1.485351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.433235, 3.616465, 1.274487>,  <2.237273, 3.559968, 1.147968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.433235, 3.616465, 1.274487>,  <2.759838, 3.710627, 1.485351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.433235, 3.616465, 1.274487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398589, 0.890415, 0.219747,
		0.417663, 0.389546, -0.820860,
		-0.816508, -0.235406, -0.527162,
		2.188283, 3.545843, 1.116338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.623654, 4.291292, 1.100100>,  <2.759838, 3.710627, 1.485351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.623654, 4.291292, 1.100100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.293526, 4.072683, 1.156897>,  <2.095449, 3.941518, 1.190974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.293526, 4.072683, 1.156897>,  <2.623654, 4.291292, 1.100100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.293526, 4.072683, 1.156897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491165, 0.818880, 0.296973,
		-0.278575, 0.175356, -0.944270,
		-0.825320, -0.546522, 0.141991,
		2.045930, 3.908726, 1.199494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.096715, 4.725147, 0.870252>,  <2.623654, 4.291292, 1.100100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.096715, 4.725147, 0.870252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.893738, 4.465823, 1.097301>,  <1.771952, 4.310228, 1.233531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.893738, 4.465823, 1.097301>,  <2.096715, 4.725147, 0.870252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.893738, 4.465823, 1.097301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663168, 0.714436, 0.223136,
		-0.550191, -0.263201, -0.792474,
		-0.507442, -0.648311, 0.567623,
		1.741505, 4.271330, 1.267588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.369264, 4.897747, 0.809049>,  <2.096715, 4.725147, 0.870252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.369264, 4.897747, 0.809049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406792, 4.684428, 1.145332>,  <1.429308, 4.556436, 1.347102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406792, 4.684428, 1.145332>,  <1.369264, 4.897747, 0.809049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.406792, 4.684428, 1.145332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591808, 0.649176, 0.477843,
		-0.800601, -0.542369, -0.254705,
		0.093819, -0.533298, 0.840709,
		1.434937, 4.524438, 1.397545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.716435, 4.765500, 1.124399>,  <1.369264, 4.897747, 0.809049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.716435, 4.765500, 1.124399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978218, 4.722113, 1.423710>,  <1.135288, 4.696081, 1.603297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978218, 4.722113, 1.423710>,  <0.716435, 4.765500, 1.124399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.978218, 4.722113, 1.423710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495188, 0.686390, 0.532596,
		-0.571379, -0.719100, 0.395501,
		0.654458, -0.108467, 0.748278,
		1.174555, 4.689573, 1.648193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.333720, 4.750913, 1.716887>,  <0.716435, 4.765500, 1.124399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.333720, 4.750913, 1.716887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692787, 4.869659, 1.847157>,  <0.908227, 4.940907, 1.925318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.692787, 4.869659, 1.847157>,  <0.333720, 4.750913, 1.716887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.692787, 4.869659, 1.847157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440125, 0.640860, 0.628959,
		-0.021994, -0.707933, 0.705937,
		0.897668, 0.296867, 0.325674,
		0.962087, 4.958720, 1.944859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.556708, 6.069186, 2.062953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.819176, 6.105120, 2.362652>,  <0.976656, 6.126680, 2.542471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.819176, 6.105120, 2.362652>,  <0.556708, 6.069186, 2.062953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.819176, 6.105120, 2.362652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530354, -0.761215, -0.373198,
		0.536812, 0.642247, -0.547130,
		0.656168, 0.089835, 0.749248,
		1.016026, 6.132071, 2.587426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.205266, 6.222930, 1.785966>,  <0.556708, 6.069186, 2.062953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.205266, 6.222930, 1.785966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228622, 6.017773, 2.128551>,  <1.242636, 5.894678, 2.334103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228622, 6.017773, 2.128551>,  <1.205266, 6.222930, 1.785966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.228622, 6.017773, 2.128551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265345, -0.819093, -0.508604,
		0.962384, 0.256956, 0.088266,
		0.058391, -0.512893, 0.856464,
		1.246140, 5.863904, 2.385491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.881013, 5.901024, 2.003809>,  <1.205266, 6.222930, 1.785966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.881013, 5.901024, 2.003809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.592087, 5.661215, 2.141697>,  <1.418731, 5.517329, 2.224429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.592087, 5.661215, 2.141697>,  <1.881013, 5.901024, 2.003809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.592087, 5.661215, 2.141697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317272, -0.730187, -0.605116,
		0.614491, -0.327715, 0.717638,
		-0.722316, -0.599524, 0.344719,
		1.375392, 5.481358, 2.245112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.196359, 5.263870, 2.248084>,  <1.881013, 5.901024, 2.003809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.196359, 5.263870, 2.248084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.816055, 5.152719, 2.193176>,  <1.587873, 5.086029, 2.160232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.816055, 5.152719, 2.193176>,  <2.196359, 5.263870, 2.248084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.816055, 5.152719, 2.193176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309918, -0.848208, -0.429527,
		0.002924, -0.450918, 0.892561,
		-0.950759, -0.277877, -0.137268,
		1.530828, 5.069356, 2.151996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.005976, 4.558353, 2.614154>,  <2.196359, 5.263870, 2.248084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.005976, 4.558353, 2.614154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759026, 4.608309, 2.303478>,  <1.610855, 4.638282, 2.117073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759026, 4.608309, 2.303478>,  <2.005976, 4.558353, 2.614154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.759026, 4.608309, 2.303478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313602, -0.866401, -0.388591,
		-0.721456, -0.483480, 0.495731,
		-0.617378, 0.124889, -0.776690,
		1.573812, 4.645776, 2.070471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.607167, 3.929736, 2.566021>,  <2.005976, 4.558353, 2.614154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.607167, 3.929736, 2.566021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.574921, 4.114229, 2.212578>,  <1.555573, 4.224926, 2.000512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.574921, 4.114229, 2.212578>,  <1.607167, 3.929736, 2.566021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.574921, 4.114229, 2.212578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294750, -0.835816, -0.463178,
		-0.952168, -0.297783, -0.068570,
		-0.080615, 0.461234, -0.883609,
		1.550736, 4.252599, 1.947495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.206682, 3.455976, 2.055761>,  <1.607167, 3.929736, 2.566021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.206682, 3.455976, 2.055761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.387077, 3.715858, 1.810978>,  <1.495314, 3.871788, 1.664108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.387077, 3.715858, 1.810978>,  <1.206682, 3.455976, 2.055761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.387077, 3.715858, 1.810978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331107, -0.758507, -0.561280,
		-0.828841, 0.050507, -0.557199,
		0.450988, 0.649705, -0.611958,
		1.522374, 3.910770, 1.627390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.933809, 3.328740, 1.480554>,  <1.206682, 3.455976, 2.055761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.933809, 3.328740, 1.480554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.288368, 3.502829, 1.417461>,  <1.501104, 3.607282, 1.379606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.288368, 3.502829, 1.417461>,  <0.933809, 3.328740, 1.480554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.288368, 3.502829, 1.417461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309979, -0.811090, -0.496031,
		-0.343819, 0.390787, -0.853858,
		0.886398, 0.435223, -0.157732,
		1.554288, 3.633395, 1.370142>
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
