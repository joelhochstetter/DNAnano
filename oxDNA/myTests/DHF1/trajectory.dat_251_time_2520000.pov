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
	<1.044471, 0.538537, 1.638161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.912277, 0.877777, 1.472507>,  <0.832961, 1.081321, 1.373115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.912277, 0.877777, 1.472507>,  <1.044471, 0.538537, 1.638161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.912277, 0.877777, 1.472507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644200, 0.523380, 0.557745,
		0.689773, -0.082460, -0.719315,
		-0.330484, 0.848100, -0.414134,
		0.813132, 1.132207, 1.348267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.660618, 0.990745, 1.430890>,  <1.044471, 0.538537, 1.638161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.660618, 0.990745, 1.430890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.328934, 1.189514, 1.533245>,  <1.129923, 1.308776, 1.594658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.328934, 1.189514, 1.533245>,  <1.660618, 0.990745, 1.430890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.328934, 1.189514, 1.533245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530044, 0.553815, 0.642139,
		0.177380, 0.668100, -0.722620,
		-0.829210, 0.496923, 0.255887,
		1.080171, 1.338591, 1.610011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.831888, 1.720896, 1.471314>,  <1.660618, 0.990745, 1.430890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.831888, 1.720896, 1.471314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.500320, 1.676010, 1.690514>,  <1.301380, 1.649079, 1.822033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.500320, 1.676010, 1.690514>,  <1.831888, 1.720896, 1.471314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.500320, 1.676010, 1.690514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443674, 0.464729, 0.766277,
		-0.340658, 0.878314, -0.335437,
		-0.828919, -0.112214, 0.547998,
		1.251645, 1.642346, 1.854913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.500786, 2.385016, 1.659534>,  <1.831888, 1.720896, 1.471314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.500786, 2.385016, 1.659534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.460854, 2.073807, 1.907635>,  <1.436894, 1.887081, 2.056495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.460854, 2.073807, 1.907635>,  <1.500786, 2.385016, 1.659534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.460854, 2.073807, 1.907635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579846, 0.461086, 0.671698,
		-0.808587, 0.426707, 0.405103,
		-0.099831, -0.778023, 0.620252,
		1.430904, 1.840400, 2.093710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.214457, 2.586964, 2.314856>,  <1.500786, 2.385016, 1.659534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.214457, 2.586964, 2.314856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438953, 2.264465, 2.389664>,  <1.573651, 2.070966, 2.434548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438953, 2.264465, 2.389664>,  <1.214457, 2.586964, 2.314856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.438953, 2.264465, 2.389664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540331, 0.528092, 0.655104,
		-0.626938, -0.266619, 0.732027,
		0.561240, -0.806247, 0.187018,
		1.607325, 2.022591, 2.445769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.363690, 2.635388, 3.060162>,  <1.214457, 2.586964, 2.314856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.363690, 2.635388, 3.060162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.617332, 2.355804, 2.927879>,  <1.769518, 2.188054, 2.848510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.617332, 2.355804, 2.927879>,  <1.363690, 2.635388, 3.060162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.617332, 2.355804, 2.927879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684729, 0.308873, 0.660109,
		-0.359243, -0.645023, 0.674456,
		0.634106, -0.698959, -0.330706,
		1.807564, 2.146117, 2.828668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.617591, 2.182394, 3.628736>,  <1.363690, 2.635388, 3.060162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.617591, 2.182394, 3.628736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.890385, 2.145721, 3.338497>,  <2.054061, 2.123718, 3.164354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.890385, 2.145721, 3.338497>,  <1.617591, 2.182394, 3.628736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.890385, 2.145721, 3.338497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729331, 0.159243, 0.665371,
		0.054544, -0.982973, 0.175467,
		0.681983, -0.091682, -0.725599,
		2.094980, 2.118217, 3.120818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.181716, 1.554793, 3.635684>,  <1.617591, 2.182394, 3.628736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.181716, 1.554793, 3.635684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.307011, 1.911102, 3.503983>,  <2.382187, 2.124888, 3.424962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.307011, 1.911102, 3.503983>,  <2.181716, 1.554793, 3.635684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.307011, 1.911102, 3.503983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742521, -0.013569, 0.669685,
		0.592070, -0.454247, -0.665667,
		0.313235, 0.890772, -0.329254,
		2.400981, 2.178334, 3.405206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.525707, 2.553879, 4.548001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.645914, 2.839035, 4.294552>,  <3.718038, 3.010128, 4.142482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.645914, 2.839035, 4.294552>,  <3.525707, 2.553879, 4.548001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.645914, 2.839035, 4.294552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617605, -0.360795, -0.698850,
		-0.726810, 0.601346, 0.331859,
		0.300517, 0.712889, -0.633624,
		3.736069, 3.052902, 4.104465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.003989, 3.013524, 4.084768>,  <3.525707, 2.553879, 4.548001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.003989, 3.013524, 4.084768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327908, 2.984924, 3.851833>,  <3.522259, 2.967764, 3.712073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327908, 2.984924, 3.851833>,  <3.003989, 3.013524, 4.084768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.327908, 2.984924, 3.851833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510248, -0.575766, -0.638859,
		-0.289611, 0.814482, -0.502736,
		0.809798, -0.071500, -0.582336,
		3.570847, 2.963474, 3.677132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.760448, 3.108886, 3.452485>,  <3.003989, 3.013524, 4.084768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.760448, 3.108886, 3.452485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.090591, 2.889252, 3.399895>,  <3.288678, 2.757471, 3.368341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.090591, 2.889252, 3.399895>,  <2.760448, 3.108886, 3.452485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.090591, 2.889252, 3.399895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486259, -0.572946, -0.659761,
		0.286938, 0.608471, -0.739885,
		0.825360, -0.549086, -0.131475,
		3.338199, 2.724526, 3.360452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.887929, 3.180346, 2.760855>,  <2.760448, 3.108886, 3.452485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.887929, 3.180346, 2.760855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.026905, 2.854767, 2.947090>,  <3.110291, 2.659419, 3.058831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.026905, 2.854767, 2.947090>,  <2.887929, 3.180346, 2.760855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.026905, 2.854767, 2.947090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576299, -0.577032, -0.578718,
		0.739705, -0.067248, -0.669562,
		0.347441, -0.813949, 0.465588,
		3.131137, 2.610582, 3.086766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.951094, 2.706034, 2.314016>,  <2.887929, 3.180346, 2.760855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.951094, 2.706034, 2.314016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.869986, 2.498322, 2.646095>,  <2.821320, 2.373694, 2.845343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.869986, 2.498322, 2.646095>,  <2.951094, 2.706034, 2.314016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.869986, 2.498322, 2.646095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581509, -0.618275, -0.528756,
		0.787865, -0.589985, -0.176598,
		-0.202772, -0.519281, 0.830199,
		2.809154, 2.342537, 2.895155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.039881, 1.982890, 2.229340>,  <2.951094, 2.706034, 2.314016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.039881, 1.982890, 2.229340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757366, 2.018768, 2.510227>,  <2.587857, 2.040295, 2.678760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757366, 2.018768, 2.510227>,  <3.039881, 1.982890, 2.229340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.757366, 2.018768, 2.510227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580581, -0.640975, -0.502072,
		0.405071, -0.762303, 0.504789,
		-0.706288, 0.089696, 0.702219,
		2.545480, 2.045677, 2.720893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.765740, 1.341700, 2.289422>,  <3.039881, 1.982890, 2.229340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.765740, 1.341700, 2.289422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.483313, 1.580505, 2.441761>,  <2.313856, 1.723788, 2.533164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.483313, 1.580505, 2.441761>,  <2.765740, 1.341700, 2.289422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.483313, 1.580505, 2.441761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708144, -0.594399, -0.381081,
		-0.001135, -0.538763, 0.842456,
		-0.706068, 0.597012, 0.380847,
		2.271492, 1.759609, 2.556015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.288137, 0.870814, 2.663130>,  <2.765740, 1.341700, 2.289422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.288137, 0.870814, 2.663130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.117668, 1.215317, 2.552414>,  <2.015387, 1.422019, 2.485985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.117668, 1.215317, 2.552414>,  <2.288137, 0.870814, 2.663130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.117668, 1.215317, 2.552414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806375, -0.500346, -0.315298,
		-0.410043, 0.088824, 0.907731,
		-0.426173, 0.861257, -0.276789,
		1.989816, 1.473694, 2.469377>
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
