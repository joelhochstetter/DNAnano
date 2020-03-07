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
	<1.134312, 3.665940, 4.457189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.822788, 3.869331, 4.604107>,  <0.635874, 3.991366, 4.692258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.822788, 3.869331, 4.604107>,  <1.134312, 3.665940, 4.457189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.822788, 3.869331, 4.604107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444710, 0.860548, -0.248375,
		-0.442369, -0.030096, -0.896328,
		-0.778808, 0.508480, 0.367295,
		0.589146, 4.021875, 4.714295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.536458, 3.386867, 5.071761>,  <1.134312, 3.665940, 4.457189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.536458, 3.386867, 5.071761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.219177, 3.208290, 4.906101>,  <1.028809, 3.101144, 4.806705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.219177, 3.208290, 4.906101>,  <1.536458, 3.386867, 5.071761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.219177, 3.208290, 4.906101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329169, -0.257839, 0.908387,
		-0.512327, 0.856859, 0.057563,
		-0.793202, -0.446443, -0.414149,
		0.981217, 3.074357, 4.781857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.125543, 3.175787, 4.549950>,  <1.536458, 3.386867, 5.071761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.125543, 3.175787, 4.549950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.195230, 2.802994, 4.677107>,  <2.237043, 2.579318, 4.753401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.195230, 2.802994, 4.677107>,  <2.125543, 3.175787, 4.549950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.195230, 2.802994, 4.677107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581562, -0.357896, -0.730545,
		0.794628, -0.057601, -0.604357,
		0.174218, -0.931983, 0.317893,
		2.247496, 2.523399, 4.772475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.450957, 2.809529, 3.972046>,  <2.125543, 3.175787, 4.549950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.450957, 2.809529, 3.972046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.246002, 2.580132, 4.227722>,  <2.123029, 2.442493, 4.381128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.246002, 2.580132, 4.227722>,  <2.450957, 2.809529, 3.972046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.246002, 2.580132, 4.227722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577541, -0.320719, -0.750724,
		0.635535, -0.753820, -0.166884,
		-0.512388, -0.573494, 0.639190,
		2.092286, 2.408083, 4.419479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.438300, 2.209074, 3.642898>,  <2.450957, 2.809529, 3.972046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.438300, 2.209074, 3.642898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.135063, 2.227242, 3.903124>,  <1.953121, 2.238142, 4.059259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.135063, 2.227242, 3.903124>,  <2.438300, 2.209074, 3.642898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.135063, 2.227242, 3.903124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590473, -0.471272, -0.655167,
		0.276837, -0.880818, 0.384085,
		-0.758091, 0.045417, 0.650565,
		1.907636, 2.240867, 4.098293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.225967, 1.588679, 3.817734>,  <2.438300, 2.209074, 3.642898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.225967, 1.588679, 3.817734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931261, 1.858582, 3.835087>,  <1.754438, 2.020523, 3.845499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931261, 1.858582, 3.835087>,  <2.225967, 1.588679, 3.817734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.931261, 1.858582, 3.835087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446767, -0.437655, -0.780293,
		-0.507522, -0.594273, 0.623908,
		-0.736764, 0.674758, 0.043381,
		1.710232, 2.061008, 3.848102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.559570, 1.300669, 3.658965>,  <2.225967, 1.588679, 3.817734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.559570, 1.300669, 3.658965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.482977, 1.686272, 3.585178>,  <1.437021, 1.917633, 3.540906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.482977, 1.686272, 3.585178>,  <1.559570, 1.300669, 3.658965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.482977, 1.686272, 3.585178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635685, -0.265006, -0.725035,
		-0.747823, -0.021569, 0.663548,
		-0.191482, 0.964006, -0.184466,
		1.425532, 1.975473, 3.529839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.799819, 1.339017, 3.566029>,  <1.559570, 1.300669, 3.658965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.799819, 1.339017, 3.566029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.976673, 1.651436, 3.389629>,  <1.082785, 1.838887, 3.283789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.976673, 1.651436, 3.389629>,  <0.799819, 1.339017, 3.566029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.976673, 1.651436, 3.389629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474102, -0.213868, -0.854101,
		-0.761409, 0.586706, 0.275738,
		0.442135, 0.781048, -0.441000,
		1.109313, 1.885750, 3.257329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.411798, 4.508215, 1.106031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.075064, 4.594467, 1.303947>,  <2.873023, 4.646218, 1.422697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.075064, 4.594467, 1.303947>,  <3.411798, 4.508215, 1.106031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.075064, 4.594467, 1.303947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410026, -0.340650, 0.846071,
		0.350988, 0.915129, 0.198357,
		-0.841835, 0.215629, 0.494790,
		2.822513, 4.659156, 1.452385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.692398, 4.939540, 1.593382>,  <3.411798, 4.508215, 1.106031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.692398, 4.939540, 1.593382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339374, 4.793152, 1.711468>,  <3.127559, 4.705319, 1.782319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339374, 4.793152, 1.711468>,  <3.692398, 4.939540, 1.593382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.339374, 4.793152, 1.711468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419567, -0.329545, 0.845792,
		-0.212249, 0.870325, 0.444393,
		-0.882561, -0.365971, 0.295214,
		3.074605, 4.683361, 1.800032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.551168, 5.129378, 2.371274>,  <3.692398, 4.939540, 1.593382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.551168, 5.129378, 2.371274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.362499, 4.799957, 2.245235>,  <3.249298, 4.602304, 2.169612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.362499, 4.799957, 2.245235>,  <3.551168, 5.129378, 2.371274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.362499, 4.799957, 2.245235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480390, -0.539657, 0.691372,
		-0.739426, 0.174732, 0.650168,
		-0.471673, -0.823553, -0.315097,
		3.220998, 4.552892, 2.150706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.842815, 4.793194, 2.982175>,  <3.551168, 5.129378, 2.371274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.842815, 4.793194, 2.982175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676696, 4.521385, 2.740257>,  <3.577024, 4.358300, 2.595107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676696, 4.521385, 2.740257>,  <3.842815, 4.793194, 2.982175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.676696, 4.521385, 2.740257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536266, -0.719911, 0.440621,
		-0.734810, -0.141342, 0.663383,
		-0.415299, -0.679522, -0.604795,
		3.552106, 4.317529, 2.558819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.389242, 4.314172, 3.303530>,  <3.842815, 4.793194, 2.982175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.389242, 4.314172, 3.303530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.612554, 4.182808, 2.998775>,  <3.746541, 4.103990, 2.815923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.612554, 4.182808, 2.998775>,  <3.389242, 4.314172, 3.303530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.612554, 4.182808, 2.998775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533055, -0.561705, 0.632724,
		-0.635750, -0.759363, -0.138526,
		0.558278, -0.328412, -0.761886,
		3.780038, 4.084285, 2.770210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.887952, 4.007195, 3.662618>,  <3.389242, 4.314172, 3.303530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.887952, 4.007195, 3.662618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.009558, 3.933090, 3.288826>,  <4.082522, 3.888628, 3.064551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.009558, 3.933090, 3.288826>,  <3.887952, 4.007195, 3.662618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.009558, 3.933090, 3.288826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673023, -0.652474, 0.348308,
		-0.674251, -0.734818, -0.073676,
		0.304015, -0.185261, -0.934480,
		4.100763, 3.877512, 3.008482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.882001, 3.324042, 3.597975>,  <3.887952, 4.007195, 3.662618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.882001, 3.324042, 3.597975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.139880, 3.482613, 3.336529>,  <4.294607, 3.577755, 3.179661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.139880, 3.482613, 3.336529>,  <3.882001, 3.324042, 3.597975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.139880, 3.482613, 3.336529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663203, -0.715274, 0.220329,
		-0.380170, -0.575525, -0.724046,
		0.644696, 0.396427, -0.653616,
		4.333288, 3.601541, 3.140444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.837405, 3.729669, 4.326236>,  <3.882001, 3.324042, 3.597975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.837405, 3.729669, 4.326236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.212067, 3.661942, 4.203590>,  <4.436863, 3.621305, 4.130003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.212067, 3.661942, 4.203590>,  <3.837405, 3.729669, 4.326236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.212067, 3.661942, 4.203590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344353, -0.605212, -0.717732,
		-0.064041, 0.777849, -0.625180,
		0.936653, -0.169319, -0.306613,
		4.493062, 3.611146, 4.111607>
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
