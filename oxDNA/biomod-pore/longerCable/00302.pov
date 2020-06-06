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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.456951, 34.797928, 35.083340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314949, 35.116745, 34.887913>,  <24.229748, 35.308037, 34.770657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314949, 35.116745, 34.887913>,  <24.456951, 34.797928, 35.083340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.314949, 35.116745, 34.887913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823512, 0.019254, -0.566972,
		-0.442493, -0.603617, -0.663209,
		-0.355003, 0.797042, -0.488566,
		24.208448, 35.355858, 34.741344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585573, 34.797413, 34.328907>,  <24.456951, 34.797928, 35.083340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585573, 34.797413, 34.328907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561651, 35.173595, 34.462757>,  <24.547298, 35.399303, 34.543068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561651, 35.173595, 34.462757>,  <24.585573, 34.797413, 34.328907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561651, 35.173595, 34.462757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839380, 0.228806, -0.493041,
		-0.540245, 0.251388, -0.803081,
		-0.059806, 0.940453, 0.334621,
		24.543709, 35.455730, 34.563145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845995, 35.155231, 33.803539>,  <24.585573, 34.797413, 34.328907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845995, 35.155231, 33.803539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056772, 34.933029, 34.060833>,  <25.183239, 34.799709, 34.215210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056772, 34.933029, 34.060833>,  <24.845995, 35.155231, 33.803539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056772, 34.933029, 34.060833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680768, -0.177215, -0.710739,
		0.508810, 0.812409, 0.284788,
		0.526942, -0.555506, 0.643230,
		25.214855, 34.766376, 34.253803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431946, 35.053196, 33.465218>,  <24.845995, 35.155231, 33.803539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431946, 35.053196, 33.465218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483793, 34.770447, 33.743366>,  <25.514902, 34.600800, 33.910255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483793, 34.770447, 33.743366>,  <25.431946, 35.053196, 33.465218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483793, 34.770447, 33.743366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650833, -0.468425, -0.597490,
		0.748074, 0.530014, 0.399336,
		0.129619, -0.706868, 0.695368,
		25.522678, 34.558388, 33.951977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204920, 34.934505, 33.644955>,  <25.431946, 35.053196, 33.465218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204920, 34.934505, 33.644955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018085, 34.597031, 33.750801>,  <25.905985, 34.394547, 33.814308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018085, 34.597031, 33.750801>,  <26.204920, 34.934505, 33.644955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018085, 34.597031, 33.750801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781965, -0.533840, -0.321785,
		0.412750, 0.056621, 0.909083,
		-0.467085, -0.843688, 0.264618,
		25.877960, 34.343925, 33.830185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540094, 34.474026, 34.092422>,  <26.204920, 34.934505, 33.644955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540094, 34.474026, 34.092422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311403, 34.241264, 33.861073>,  <26.174189, 34.101608, 33.722263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311403, 34.241264, 33.861073>,  <26.540094, 34.474026, 34.092422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311403, 34.241264, 33.861073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795286, -0.566302, -0.216386,
		-0.201620, -0.583687, 0.786549,
		-0.571726, -0.581903, -0.578375,
		26.139885, 34.066692, 33.687561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679132, 33.781319, 34.275146>,  <26.540094, 34.474026, 34.092422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679132, 33.781319, 34.275146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526428, 33.724525, 33.909828>,  <26.434807, 33.690449, 33.690639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526428, 33.724525, 33.909828>,  <26.679132, 33.781319, 34.275146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526428, 33.724525, 33.909828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717044, -0.668984, -0.195726,
		-0.583188, -0.729591, 0.357196,
		-0.381759, -0.141980, -0.913292,
		26.411901, 33.681931, 33.635841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755054, 33.028221, 34.024830>,  <26.679132, 33.781319, 34.275146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755054, 33.028221, 34.024830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711029, 33.249973, 33.694847>,  <26.684614, 33.383022, 33.496857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711029, 33.249973, 33.694847>,  <26.755054, 33.028221, 34.024830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711029, 33.249973, 33.694847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589032, -0.632159, -0.503405,
		-0.800579, -0.541332, -0.256968,
		-0.110064, 0.554378, -0.824955,
		26.678009, 33.416286, 33.447361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561640, 32.575066, 33.559776>,  <26.755054, 33.028221, 34.024830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561640, 32.575066, 33.559776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711647, 32.895283, 33.372803>,  <26.801651, 33.087414, 33.260620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711647, 32.895283, 33.372803>,  <26.561640, 32.575066, 33.559776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711647, 32.895283, 33.372803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539005, -0.598541, -0.592640,
		-0.754211, -0.029698, -0.655960,
		0.375019, 0.800541, -0.467434,
		26.824152, 33.135445, 33.232574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644060, 32.344418, 32.879665>,  <26.561640, 32.575066, 33.559776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644060, 32.344418, 32.879665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877941, 32.668839, 32.886723>,  <27.018270, 32.863491, 32.890957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877941, 32.668839, 32.886723>,  <26.644060, 32.344418, 32.879665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877941, 32.668839, 32.886723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654655, -0.458881, -0.600712,
		-0.479113, 0.362790, -0.799271,
		0.584703, 0.811056, 0.017646,
		27.053352, 32.912155, 32.892017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928469, 32.378944, 32.277985>,  <26.644060, 32.344418, 32.879665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928469, 32.378944, 32.277985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174753, 32.592213, 32.510067>,  <27.322523, 32.720173, 32.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174753, 32.592213, 32.510067>,  <26.928469, 32.378944, 32.277985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174753, 32.592213, 32.510067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742060, -0.640003, -0.199356,
		0.265041, 0.553290, -0.789698,
		0.615711, 0.533166, 0.580202,
		27.359467, 32.752163, 32.684128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567743, 32.329395, 31.946632>,  <26.928469, 32.378944, 32.277985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567743, 32.329395, 31.946632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641415, 32.419296, 32.329372>,  <27.685617, 32.473236, 32.559017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641415, 32.419296, 32.329372>,  <27.567743, 32.329395, 31.946632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641415, 32.419296, 32.329372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847760, -0.528949, -0.038939,
		0.497374, 0.818352, -0.287958,
		0.184181, 0.224752, 0.956851,
		27.696669, 32.486721, 32.616428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171509, 31.951838, 32.126995>,  <27.567743, 32.329395, 31.946632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171509, 31.951838, 32.126995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818007, 31.792809, 32.225719>,  <27.605906, 31.697392, 32.284954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818007, 31.792809, 32.225719>,  <28.171509, 31.951838, 32.126995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818007, 31.792809, 32.225719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447549, -0.872143, 0.197652,
		0.136669, 0.285134, 0.948694,
		-0.883754, -0.397574, 0.246807,
		27.552879, 31.673536, 32.299763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175413, 31.609732, 32.879368>,  <28.171509, 31.951838, 32.126995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175413, 31.609732, 32.879368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963991, 31.439539, 32.585541>,  <27.837137, 31.337423, 32.409245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963991, 31.439539, 32.585541>,  <28.175413, 31.609732, 32.879368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963991, 31.439539, 32.585541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465163, -0.869012, 0.168648,
		-0.710108, -0.252556, 0.657238,
		-0.528555, -0.425481, -0.734572,
		27.805426, 31.311895, 32.365170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112938, 32.141930, 33.494919>,  <28.175413, 31.609732, 32.879368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112938, 32.141930, 33.494919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167648, 32.331356, 33.146889>,  <28.200474, 32.445011, 32.938072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167648, 32.331356, 33.146889>,  <28.112938, 32.141930, 33.494919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167648, 32.331356, 33.146889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781215, 0.591626, 0.199201,
		0.609094, 0.652471, 0.450874,
		0.136776, 0.473562, -0.870076,
		28.208681, 32.473423, 32.885868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246376, 32.840145, 33.636112>,  <28.112938, 32.141930, 33.494919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246376, 32.840145, 33.636112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096596, 32.810387, 33.266411>,  <28.006727, 32.792534, 33.044590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096596, 32.810387, 33.266411>,  <28.246376, 32.840145, 33.636112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096596, 32.810387, 33.266411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693129, 0.684562, 0.225713,
		0.615919, 0.725148, -0.307901,
		-0.374453, -0.074394, -0.924257,
		27.984261, 32.788067, 32.989132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213301, 33.514385, 33.319630>,  <28.246376, 32.840145, 33.636112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213301, 33.514385, 33.319630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964361, 33.283043, 33.108658>,  <27.814999, 33.144238, 32.982075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964361, 33.283043, 33.108658>,  <28.213301, 33.514385, 33.319630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964361, 33.283043, 33.108658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719233, 0.688410, 0.093785,
		0.308849, 0.437714, -0.844404,
		-0.622347, -0.578358, -0.527433,
		27.777657, 33.109535, 32.950428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867235, 33.971825, 32.871281>,  <28.213301, 33.514385, 33.319630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867235, 33.971825, 32.871281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642706, 33.640961, 32.882095>,  <27.507988, 33.442444, 32.888584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642706, 33.640961, 32.882095>,  <27.867235, 33.971825, 32.871281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642706, 33.640961, 32.882095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824550, 0.561758, 0.067424,
		-0.070961, 0.015550, -0.997358,
		-0.561322, -0.827156, 0.027041,
		27.474310, 33.392815, 32.890209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256807, 34.170879, 32.576721>,  <27.867235, 33.971825, 32.871281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256807, 34.170879, 32.576721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124779, 33.844765, 32.767033>,  <27.045561, 33.649097, 32.881218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124779, 33.844765, 32.767033>,  <27.256807, 34.170879, 32.576721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124779, 33.844765, 32.767033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905755, 0.415477, 0.083584,
		-0.265819, -0.403350, -0.875585,
		-0.330072, -0.815284, 0.475778,
		27.025757, 33.600178, 32.909767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599569, 34.112560, 32.375137>,  <27.256807, 34.170879, 32.576721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599569, 34.112560, 32.375137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630489, 33.898346, 32.711525>,  <26.649042, 33.769817, 32.913357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630489, 33.898346, 32.711525>,  <26.599569, 34.112560, 32.375137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630489, 33.898346, 32.711525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837779, 0.422394, 0.345992,
		-0.540510, -0.731288, -0.416012,
		0.077299, -0.535538, 0.840966,
		26.653679, 33.737686, 32.963814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947058, 34.075607, 31.835381>,  <26.599569, 34.112560, 32.375137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947058, 34.075607, 31.835381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208588, 34.356342, 31.948477>,  <26.365505, 34.524784, 32.016335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208588, 34.356342, 31.948477>,  <25.947058, 34.075607, 31.835381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208588, 34.356342, 31.948477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633944, -0.712113, 0.301679,
		0.413072, -0.018003, -0.910521,
		0.653825, 0.701834, 0.282741,
		26.404736, 34.566891, 32.033298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889132, 33.750980, 32.424335>,  <25.947058, 34.075607, 31.835381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889132, 33.750980, 32.424335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053726, 33.720127, 32.787594>,  <26.152483, 33.701614, 33.005550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053726, 33.720127, 32.787594>,  <25.889132, 33.750980, 32.424335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053726, 33.720127, 32.787594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773290, 0.497835, 0.392662,
		-0.482392, -0.863836, 0.145209,
		0.411486, -0.077129, 0.908147,
		26.177172, 33.696987, 33.060040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413813, 33.352592, 32.901180>,  <25.889132, 33.750980, 32.424335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413813, 33.352592, 32.901180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642033, 33.603313, 33.113441>,  <25.778965, 33.753746, 33.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642033, 33.603313, 33.113441>,  <25.413813, 33.352592, 32.901180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642033, 33.603313, 33.113441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813791, 0.518454, 0.262581,
		-0.110534, -0.581657, 0.805889,
		0.570549, 0.626801, 0.530655,
		25.813198, 33.791355, 33.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974997, 33.444302, 33.536098>,  <25.413813, 33.352592, 32.901180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974997, 33.444302, 33.536098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245102, 33.728329, 33.456280>,  <25.407166, 33.898746, 33.408390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245102, 33.728329, 33.456280>,  <24.974997, 33.444302, 33.536098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245102, 33.728329, 33.456280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703996, 0.701188, 0.112805,
		0.220018, 0.064305, 0.973374,
		0.675264, 0.710070, -0.199544,
		25.447681, 33.941349, 33.396416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260349, 33.310467, 34.303867>,  <24.974997, 33.444302, 33.536098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260349, 33.310467, 34.303867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467218, 33.623352, 34.164913>,  <25.591339, 33.811085, 34.081539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467218, 33.623352, 34.164913>,  <25.260349, 33.310467, 34.303867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467218, 33.623352, 34.164913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338414, 0.559694, 0.756451,
		0.786135, -0.273655, 0.554170,
		0.517172, 0.782212, -0.347387,
		25.622370, 33.858017, 34.060696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496206, 33.663177, 34.881638>,  <25.260349, 33.310467, 34.303867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496206, 33.663177, 34.881638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543060, 33.943848, 34.600517>,  <25.571173, 34.112251, 34.431847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543060, 33.943848, 34.600517>,  <25.496206, 33.663177, 34.881638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543060, 33.943848, 34.600517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409072, 0.678937, 0.609676,
		0.904953, 0.216082, 0.366563,
		0.117133, 0.701678, -0.702800,
		25.578199, 34.154350, 34.389679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857315, 34.257397, 35.219040>,  <25.496206, 33.663177, 34.881638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857315, 34.257397, 35.219040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653391, 34.415836, 34.913570>,  <25.531036, 34.510899, 34.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653391, 34.415836, 34.913570>,  <25.857315, 34.257397, 35.219040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653391, 34.415836, 34.913570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467096, 0.618008, 0.632366,
		0.722438, 0.679096, -0.130050,
		-0.509809, 0.396100, -0.763675,
		25.500448, 34.534668, 34.684467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070156, 34.985909, 35.034988>,  <25.857315, 34.257397, 35.219040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070156, 34.985909, 35.034988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699501, 34.843060, 34.987988>,  <25.477108, 34.757351, 34.959785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699501, 34.843060, 34.987988>,  <26.070156, 34.985909, 35.034988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699501, 34.843060, 34.987988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336504, 0.648460, 0.682836,
		-0.167658, 0.672282, -0.721060,
		-0.926637, -0.357123, -0.117507,
		25.421511, 34.735924, 34.952736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450567, 35.151978, 34.480129>,  <26.070156, 34.985909, 35.034988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450567, 35.151978, 34.480129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181339, 35.412247, 34.339504>,  <26.019802, 35.568409, 34.255127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181339, 35.412247, 34.339504>,  <26.450567, 35.151978, 34.480129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181339, 35.412247, 34.339504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511730, -0.752927, -0.413804,
		-0.533954, -0.098613, 0.839743,
		-0.673071, 0.650674, -0.351565,
		25.979418, 35.607449, 34.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989614, 35.661350, 34.553116>,  <26.450567, 35.151978, 34.480129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989614, 35.661350, 34.553116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386826, 35.703777, 34.532524>,  <27.625153, 35.729233, 34.520168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386826, 35.703777, 34.532524>,  <26.989614, 35.661350, 34.553116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386826, 35.703777, 34.532524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113036, 0.732447, -0.671374,
		-0.033502, 0.672511, 0.739328,
		0.993026, 0.106063, -0.051479,
		27.684732, 35.735596, 34.517082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274908, 36.366581, 34.763062>,  <26.989614, 35.661350, 34.553116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274908, 36.366581, 34.763062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492537, 36.190544, 34.477318>,  <27.623114, 36.084923, 34.305870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492537, 36.190544, 34.477318>,  <27.274908, 36.366581, 34.763062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492537, 36.190544, 34.477318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149373, 0.786994, -0.598605,
		0.825635, 0.432390, 0.362443,
		0.544071, -0.440090, -0.714358,
		27.655758, 36.058517, 34.263012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686321, 36.874805, 34.616501>,  <27.274908, 36.366581, 34.763062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686321, 36.874805, 34.616501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674404, 36.623051, 34.305893>,  <27.667253, 36.471996, 34.119530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674404, 36.623051, 34.305893>,  <27.686321, 36.874805, 34.616501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674404, 36.623051, 34.305893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004395, 0.776775, -0.629763,
		0.999546, -0.022176, -0.020377,
		-0.029794, -0.629388, -0.776520,
		27.665466, 36.434235, 34.072937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377813, 36.770279, 34.303646>,  <27.686321, 36.874805, 34.616501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377813, 36.770279, 34.303646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086823, 36.716053, 34.034603>,  <27.912228, 36.683517, 33.873177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086823, 36.716053, 34.034603>,  <28.377813, 36.770279, 34.303646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086823, 36.716053, 34.034603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382943, 0.733187, -0.561953,
		0.569328, -0.666378, -0.481463,
		-0.727476, -0.135563, -0.672609,
		27.868580, 36.675385, 33.832821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634418, 37.184288, 33.721905>,  <28.377813, 36.770279, 34.303646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634418, 37.184288, 33.721905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242157, 37.134758, 33.661263>,  <28.006800, 37.105038, 33.624878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242157, 37.134758, 33.661263>,  <28.634418, 37.184288, 33.721905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242157, 37.134758, 33.661263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031413, 0.864004, -0.502504,
		0.193211, -0.488021, -0.851179,
		-0.980654, -0.123827, -0.151605,
		27.947960, 37.097610, 33.615780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557901, 37.165359, 33.020344>,  <28.634418, 37.184288, 33.721905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557901, 37.165359, 33.020344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216080, 37.279602, 33.193855>,  <28.010986, 37.348148, 33.297962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216080, 37.279602, 33.193855>,  <28.557901, 37.165359, 33.020344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216080, 37.279602, 33.193855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014150, 0.822100, -0.569167,
		-0.519167, -0.492523, -0.698489,
		-0.854556, 0.285609, 0.433776,
		27.959713, 37.365284, 33.323990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445269, 37.151352, 32.343575>,  <28.557901, 37.165359, 33.020344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445269, 37.151352, 32.343575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106409, 37.202576, 32.549850>,  <27.903093, 37.233311, 32.673618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106409, 37.202576, 32.549850>,  <28.445269, 37.151352, 32.343575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106409, 37.202576, 32.549850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093958, 0.919125, -0.382598,
		-0.522982, -0.372571, -0.766603,
		-0.847149, 0.128063, 0.515692,
		27.852264, 37.240993, 32.704559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062962, 37.507797, 31.863544>,  <28.445269, 37.151352, 32.343575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062962, 37.507797, 31.863544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904631, 37.558441, 32.227367>,  <27.809631, 37.588825, 32.445660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904631, 37.558441, 32.227367>,  <28.062962, 37.507797, 31.863544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904631, 37.558441, 32.227367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162699, 0.965114, -0.205145,
		-0.903798, -0.229185, -0.361420,
		-0.395827, 0.126607, 0.909556,
		27.785883, 37.596424, 32.500233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395115, 37.843300, 31.784672>,  <28.062962, 37.507797, 31.863544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395115, 37.843300, 31.784672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560547, 37.920975, 32.140480>,  <27.659805, 37.967579, 32.353966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560547, 37.920975, 32.140480>,  <27.395115, 37.843300, 31.784672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560547, 37.920975, 32.140480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198158, 0.972769, -0.120224,
		-0.888643, -0.126543, 0.440795,
		0.413579, 0.194184, 0.889520,
		27.684620, 37.979229, 32.407337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014559, 38.307056, 32.117573>,  <27.395115, 37.843300, 31.784672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014559, 38.307056, 32.117573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376541, 38.346584, 32.283123>,  <27.593731, 38.370300, 32.382454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376541, 38.346584, 32.283123>,  <27.014559, 38.307056, 32.117573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376541, 38.346584, 32.283123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016615, 0.963713, -0.266422,
		-0.425185, 0.247976, 0.870475,
		0.904954, 0.098815, 0.413876,
		27.648027, 38.376228, 32.407288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421459, 38.898609, 31.832075>,  <27.014559, 38.307056, 32.117573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421459, 38.898609, 31.832075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421597, 39.210022, 32.083115>,  <27.421679, 39.396870, 32.233738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421597, 39.210022, 32.083115>,  <27.421459, 38.898609, 31.832075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421597, 39.210022, 32.083115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353657, -0.587137, 0.728146,
		0.935375, 0.221704, -0.275538,
		0.000345, 0.778536, 0.627600,
		27.421700, 39.443584, 32.271397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218554, 39.029427, 32.041119>,  <27.421459, 38.898609, 31.832075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218554, 39.029427, 32.041119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962685, 39.110249, 32.337765>,  <27.809164, 39.158741, 32.515751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962685, 39.110249, 32.337765>,  <28.218554, 39.029427, 32.041119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962685, 39.110249, 32.337765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355578, -0.777602, 0.518555,
		0.681457, 0.595408, 0.425566,
		-0.639673, 0.202051, 0.741616,
		27.770782, 39.170864, 32.560249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502321, 38.990891, 32.783081>,  <28.218554, 39.029427, 32.041119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502321, 38.990891, 32.783081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113865, 38.897221, 32.764973>,  <27.880791, 38.841019, 32.754108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113865, 38.897221, 32.764973>,  <28.502321, 38.990891, 32.783081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113865, 38.897221, 32.764973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211343, -0.932856, 0.291743,
		-0.110553, 0.273755, 0.955425,
		-0.971140, -0.234175, -0.045274,
		27.822523, 38.826969, 32.751389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424351, 38.412781, 33.122814>,  <28.502321, 38.990891, 32.783081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424351, 38.412781, 33.122814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052521, 38.403423, 32.975658>,  <27.829422, 38.397808, 32.887363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052521, 38.403423, 32.975658>,  <28.424351, 38.412781, 33.122814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052521, 38.403423, 32.975658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001780, -0.998258, 0.058970,
		-0.368631, 0.054162, 0.927997,
		-0.929574, -0.023390, -0.367892,
		27.773649, 38.396408, 32.865292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990175, 38.217735, 33.607536>,  <28.424351, 38.412781, 33.122814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990175, 38.217735, 33.607536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873526, 38.130638, 33.234970>,  <27.803535, 38.078381, 33.011429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873526, 38.130638, 33.234970>,  <27.990175, 38.217735, 33.607536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873526, 38.130638, 33.234970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049515, -0.969005, 0.242030,
		-0.955250, 0.116702, 0.271805,
		-0.291625, -0.217740, -0.931420,
		27.786037, 38.065315, 32.955544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409117, 37.915649, 33.697479>,  <27.990175, 38.217735, 33.607536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409117, 37.915649, 33.697479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514507, 37.796349, 33.330517>,  <27.577742, 37.724770, 33.110340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514507, 37.796349, 33.330517>,  <27.409117, 37.915649, 33.697479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514507, 37.796349, 33.330517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100458, -0.954317, 0.281404,
		-0.959421, 0.018018, -0.281400,
		0.263474, -0.298254, -0.917401,
		27.593550, 37.706871, 33.055298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753263, 37.606579, 33.459377>,  <27.409117, 37.915649, 33.697479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753263, 37.606579, 33.459377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115376, 37.482838, 33.342915>,  <27.332642, 37.408592, 33.273037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115376, 37.482838, 33.342915>,  <26.753263, 37.606579, 33.459377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115376, 37.482838, 33.342915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136876, -0.861214, 0.489465,
		-0.402165, -0.403250, -0.821981,
		0.905278, -0.309355, -0.291155,
		27.386959, 37.390030, 33.255569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705141, 36.849079, 33.310997>,  <26.753263, 37.606579, 33.459377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705141, 36.849079, 33.310997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100416, 36.887276, 33.358940>,  <27.337582, 36.910194, 33.387707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100416, 36.887276, 33.358940>,  <26.705141, 36.849079, 33.310997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100416, 36.887276, 33.358940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038037, -0.910478, 0.411805,
		0.148452, -0.402382, -0.903355,
		0.988188, 0.095494, 0.119857,
		27.396873, 36.915924, 33.394897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042713, 36.297146, 32.878277>,  <26.705141, 36.849079, 33.310997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042713, 36.297146, 32.878277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303001, 36.410370, 33.160110>,  <27.459173, 36.478306, 33.329212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303001, 36.410370, 33.160110>,  <27.042713, 36.297146, 32.878277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303001, 36.410370, 33.160110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034406, -0.937956, 0.345044,
		0.758539, -0.200285, -0.620084,
		0.650719, 0.283064, 0.704585,
		27.498217, 36.495289, 33.371487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458347, 35.691086, 32.996223>,  <27.042713, 36.297146, 32.878277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458347, 35.691086, 32.996223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524231, 35.912106, 33.323040>,  <27.563761, 36.044716, 33.519131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524231, 35.912106, 33.323040>,  <27.458347, 35.691086, 32.996223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524231, 35.912106, 33.323040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054552, -0.832192, 0.551798,
		0.984833, -0.046315, -0.167212,
		0.164709, 0.552550, 0.817043,
		27.573643, 36.077869, 33.568153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014326, 35.348217, 33.335392>,  <27.458347, 35.691086, 32.996223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014326, 35.348217, 33.335392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780466, 35.553665, 33.586590>,  <27.640150, 35.676933, 33.737309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780466, 35.553665, 33.586590>,  <28.014326, 35.348217, 33.335392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780466, 35.553665, 33.586590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032398, -0.758675, 0.650663,
		0.810640, 0.400755, 0.426918,
		-0.584648, 0.513621, 0.627996,
		27.605072, 35.707752, 33.774990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456135, 35.463669, 34.008446>,  <28.014326, 35.348217, 33.335392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456135, 35.463669, 34.008446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372082, 35.077961, 33.943905>,  <28.321650, 34.846539, 33.905178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372082, 35.077961, 33.943905>,  <28.456135, 35.463669, 34.008446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372082, 35.077961, 33.943905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951460, -0.239654, 0.193104,
		-0.224873, -0.112946, 0.967820,
		-0.210131, -0.964266, -0.161355,
		28.309042, 34.788681, 33.895500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610233, 35.201973, 34.576427>,  <28.456135, 35.463669, 34.008446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610233, 35.201973, 34.576427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671749, 34.939487, 34.280933>,  <28.708658, 34.781994, 34.103638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671749, 34.939487, 34.280933>,  <28.610233, 35.201973, 34.576427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671749, 34.939487, 34.280933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846547, -0.298088, 0.441023,
		-0.509615, -0.693198, 0.509676,
		0.153789, -0.656216, -0.738735,
		28.717886, 34.742622, 34.059315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694450, 34.495922, 34.901604>,  <28.610233, 35.201973, 34.576427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694450, 34.495922, 34.901604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861258, 34.537727, 34.540455>,  <28.961342, 34.562809, 34.323765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861258, 34.537727, 34.540455>,  <28.694450, 34.495922, 34.901604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861258, 34.537727, 34.540455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900095, -0.185410, 0.394274,
		-0.126196, -0.977088, -0.171388,
		0.417017, 0.104509, -0.902870,
		28.986362, 34.569080, 34.269592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077442, 33.949699, 34.704865>,  <28.694450, 34.495922, 34.901604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077442, 33.949699, 34.704865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228142, 34.276600, 34.530434>,  <29.318562, 34.472740, 34.425774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228142, 34.276600, 34.530434>,  <29.077442, 33.949699, 34.704865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228142, 34.276600, 34.530434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870933, -0.152176, 0.467246,
		0.315497, -0.555827, -0.769102,
		0.376747, 0.817251, -0.436077,
		29.341166, 34.521774, 34.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673861, 33.893570, 34.398846>,  <29.077442, 33.949699, 34.704865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673861, 33.893570, 34.398846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719883, 34.282356, 34.480858>,  <29.747498, 34.515629, 34.530064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719883, 34.282356, 34.480858>,  <29.673861, 33.893570, 34.398846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719883, 34.282356, 34.480858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884337, -0.194235, 0.424525,
		0.452449, 0.132470, -0.881896,
		0.115058, 0.971969, 0.205029,
		29.754400, 34.573948, 34.542366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131395, 34.149368, 33.891838>,  <29.673861, 33.893570, 34.398846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131395, 34.149368, 33.891838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179335, 34.344006, 34.237988>,  <30.208097, 34.460789, 34.445675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179335, 34.344006, 34.237988>,  <30.131395, 34.149368, 33.891838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179335, 34.344006, 34.237988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961133, -0.275235, 0.021653,
		0.248716, 0.829141, -0.500665,
		0.119847, 0.486591, 0.865370,
		30.215288, 34.489983, 34.497597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650705, 34.624790, 33.801083>,  <30.131395, 34.149368, 33.891838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650705, 34.624790, 33.801083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666222, 34.542824, 34.192287>,  <30.675531, 34.493645, 34.427010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666222, 34.542824, 34.192287>,  <30.650705, 34.624790, 33.801083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666222, 34.542824, 34.192287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998635, -0.026313, -0.045121,
		0.034981, 0.978426, 0.203615,
		0.038790, -0.204915, 0.978011,
		30.677858, 34.481350, 34.485691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188143, 34.995323, 33.825035>,  <30.650705, 34.624790, 33.801083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188143, 34.995323, 33.825035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158300, 34.711868, 34.105682>,  <31.140394, 34.541798, 34.274071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158300, 34.711868, 34.105682>,  <31.188143, 34.995323, 33.825035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158300, 34.711868, 34.105682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981354, 0.072808, 0.177887,
		-0.177140, 0.701810, 0.689989,
		-0.074606, -0.708634, 0.701621,
		31.135920, 34.499279, 34.316170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488888, 35.266682, 34.454723>,  <31.188143, 34.995323, 33.825035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488888, 35.266682, 34.454723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516462, 34.867752, 34.445057>,  <31.533007, 34.628395, 34.439259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516462, 34.867752, 34.445057>,  <31.488888, 35.266682, 34.454723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516462, 34.867752, 34.445057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978700, 0.062915, 0.195418,
		-0.193375, -0.037119, 0.980422,
		0.068937, -0.997328, -0.024162,
		31.537144, 34.568554, 34.437809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179413, 35.511749, 34.533718>,  <31.488888, 35.266682, 34.454723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179413, 35.511749, 34.533718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435463, 35.347614, 34.793522>,  <32.589092, 35.249134, 34.949406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435463, 35.347614, 34.793522>,  <32.179413, 35.511749, 34.533718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435463, 35.347614, 34.793522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509476, 0.859513, 0.040899,
		-0.575046, 0.304730, 0.759251,
		0.640122, -0.410339, 0.649512,
		32.627499, 35.224514, 34.988377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117489, 35.522541, 33.662373>,  <32.179413, 35.511749, 34.533718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117489, 35.522541, 33.662373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425552, 35.330128, 33.494823>,  <32.610390, 35.214680, 33.394295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425552, 35.330128, 33.494823>,  <32.117489, 35.522541, 33.662373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425552, 35.330128, 33.494823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129960, -0.524584, 0.841381,
		-0.624467, -0.702437, -0.341501,
		0.770164, -0.481033, -0.418874,
		32.656601, 35.185818, 33.369160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133068, 34.735302, 33.690350>,  <32.117489, 35.522541, 33.662373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133068, 34.735302, 33.690350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507027, 34.877262, 33.689411>,  <32.731403, 34.962437, 33.688850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507027, 34.877262, 33.689411>,  <32.133068, 34.735302, 33.690350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507027, 34.877262, 33.689411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178980, -0.465756, 0.866624,
		0.306474, -0.810627, -0.498956,
		0.934901, 0.354901, -0.002344,
		32.787498, 34.983734, 33.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665905, 34.270889, 33.983807>,  <32.133068, 34.735302, 33.690350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665905, 34.270889, 33.983807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984360, 34.034821, 33.930359>,  <33.175434, 33.893177, 33.898289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984360, 34.034821, 33.930359>,  <32.665905, 34.270889, 33.983807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984360, 34.034821, 33.930359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226254, -0.085530, -0.970306,
		0.561221, 0.802732, -0.201623,
		0.796141, -0.590174, -0.133620,
		33.223202, 33.857769, 33.890274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143124, 34.547306, 33.538441>,  <32.665905, 34.270889, 33.983807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143124, 34.547306, 33.538441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204029, 34.153152, 33.507889>,  <33.240574, 33.916660, 33.489559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204029, 34.153152, 33.507889>,  <33.143124, 34.547306, 33.538441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204029, 34.153152, 33.507889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029986, 0.072639, -0.996908,
		0.987885, 0.154085, -0.018488,
		0.152266, -0.985384, -0.076380,
		33.249710, 33.857536, 33.484974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727123, 34.335453, 33.125034>,  <33.143124, 34.547306, 33.538441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727123, 34.335453, 33.125034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472916, 34.026638, 33.121792>,  <33.320389, 33.841347, 33.119846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472916, 34.026638, 33.121792>,  <33.727123, 34.335453, 33.125034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472916, 34.026638, 33.121792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184450, -0.141618, -0.972585,
		0.749727, -0.619595, 0.232405,
		-0.635521, -0.772040, -0.008109,
		33.282261, 33.795025, 33.119358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097301, 33.869331, 32.854454>,  <33.727123, 34.335453, 33.125034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097301, 33.869331, 32.854454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703766, 33.837440, 32.790329>,  <33.467644, 33.818306, 32.751854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703766, 33.837440, 32.790329>,  <34.097301, 33.869331, 32.854454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703766, 33.837440, 32.790329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173951, -0.213513, -0.961329,
		0.042415, -0.973682, 0.223931,
		-0.983840, -0.079728, -0.160317,
		33.408615, 33.813522, 32.742233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954193, 33.243214, 32.553818>,  <34.097301, 33.869331, 32.854454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954193, 33.243214, 32.553818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664639, 33.494781, 32.440365>,  <33.490906, 33.645721, 32.372295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664639, 33.494781, 32.440365>,  <33.954193, 33.243214, 32.553818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664639, 33.494781, 32.440365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258283, -0.134168, -0.956707,
		-0.639745, -0.765806, -0.065317,
		-0.723889, 0.628919, -0.283628,
		33.447472, 33.683456, 32.355278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460739, 32.940815, 32.102573>,  <33.954193, 33.243214, 32.553818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460739, 32.940815, 32.102573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502262, 33.334637, 32.046185>,  <33.527176, 33.570930, 32.012352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502262, 33.334637, 32.046185>,  <33.460739, 32.940815, 32.102573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502262, 33.334637, 32.046185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422235, -0.171958, -0.890027,
		-0.900523, 0.032866, -0.433564,
		0.103806, 0.984556, -0.140975,
		33.533405, 33.630005, 32.003891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056461, 33.256252, 31.421375>,  <33.460739, 32.940815, 32.102573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056461, 33.256252, 31.421375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369286, 33.491982, 31.502447>,  <33.556980, 33.633419, 31.551090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369286, 33.491982, 31.502447>,  <33.056461, 33.256252, 31.421375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369286, 33.491982, 31.502447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309035, -0.084311, -0.947306,
		-0.541180, 0.803487, -0.248058,
		0.782062, 0.589322, 0.202678,
		33.603905, 33.668777, 31.563251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234856, 33.599716, 30.785854>,  <33.056461, 33.256252, 31.421375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234856, 33.599716, 30.785854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561596, 33.647686, 31.011553>,  <33.757641, 33.676468, 31.146973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561596, 33.647686, 31.011553>,  <33.234856, 33.599716, 30.785854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561596, 33.647686, 31.011553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567489, 0.008458, -0.823337,
		-0.103511, 0.992747, -0.061148,
		0.816848, 0.119926, 0.564248,
		33.806652, 33.683662, 31.180828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549641, 33.982594, 30.397032>,  <33.234856, 33.599716, 30.785854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549641, 33.982594, 30.397032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831348, 33.832481, 30.638086>,  <34.000374, 33.742413, 30.782719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831348, 33.832481, 30.638086>,  <33.549641, 33.982594, 30.397032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831348, 33.832481, 30.638086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624404, -0.076508, -0.777346,
		0.337831, 0.923748, 0.180445,
		0.704266, -0.375282, 0.602638,
		34.042629, 33.719898, 30.818878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190735, 34.414814, 30.316565>,  <33.549641, 33.982594, 30.397032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190735, 34.414814, 30.316565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334301, 34.068604, 30.456301>,  <34.420441, 33.860878, 30.540142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334301, 34.068604, 30.456301>,  <34.190735, 34.414814, 30.316565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334301, 34.068604, 30.456301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633383, -0.049053, -0.772282,
		0.685569, 0.498449, 0.530607,
		0.358915, -0.865530, 0.349338,
		34.441975, 33.808945, 30.561102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980209, 34.427017, 30.319305>,  <34.190735, 34.414814, 30.316565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980209, 34.427017, 30.319305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875549, 34.040985, 30.314213>,  <34.812756, 33.809364, 30.311157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875549, 34.040985, 30.314213>,  <34.980209, 34.427017, 30.319305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875549, 34.040985, 30.314213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790412, -0.206685, -0.576654,
		0.553886, -0.160943, 0.816889,
		-0.261648, -0.965080, -0.012732,
		34.797054, 33.751461, 30.310392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681385, 34.081657, 30.385592>,  <34.980209, 34.427017, 30.319305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681385, 34.081657, 30.385592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399391, 33.837383, 30.241335>,  <35.230194, 33.690819, 30.154781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399391, 33.837383, 30.241335>,  <35.681385, 34.081657, 30.385592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399391, 33.837383, 30.241335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634587, -0.316078, -0.705261,
		0.316705, -0.726054, 0.610364,
		-0.704980, -0.610689, -0.360641,
		35.187897, 33.654175, 30.133142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058014, 33.456474, 30.215769>,  <35.681385, 34.081657, 30.385592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058014, 33.456474, 30.215769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716209, 33.458656, 30.008005>,  <35.511127, 33.459965, 29.883347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716209, 33.458656, 30.008005>,  <36.058014, 33.456474, 30.215769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716209, 33.458656, 30.008005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493098, -0.305871, -0.814431,
		-0.163317, -0.952057, 0.258679,
		-0.854507, 0.005456, -0.519411,
		35.459858, 33.460293, 29.852182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253254, 32.971786, 29.771065>,  <36.058014, 33.456474, 30.215769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253254, 32.971786, 29.771065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924946, 33.127220, 29.603571>,  <35.727962, 33.220482, 29.503075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924946, 33.127220, 29.603571>,  <36.253254, 32.971786, 29.771065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924946, 33.127220, 29.603571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386919, -0.161127, -0.907927,
		-0.420275, -0.907216, -0.018102,
		-0.820770, 0.388583, -0.418736,
		35.678715, 33.243793, 29.477949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060585, 32.542442, 29.409693>,  <36.253254, 32.971786, 29.771065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060585, 32.542442, 29.409693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913528, 32.860157, 29.216223>,  <35.825294, 33.050789, 29.100142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913528, 32.860157, 29.216223>,  <36.060585, 32.542442, 29.409693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913528, 32.860157, 29.216223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371587, -0.351309, -0.859363,
		-0.852504, -0.495664, -0.165994,
		-0.367640, 0.794292, -0.483675,
		35.803238, 33.098446, 29.071121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753845, 32.312469, 28.768890>,  <36.060585, 32.542442, 29.409693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753845, 32.312469, 28.768890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827404, 32.694870, 28.677456>,  <35.871540, 32.924309, 28.622595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827404, 32.694870, 28.677456>,  <35.753845, 32.312469, 28.768890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827404, 32.694870, 28.677456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372115, -0.282953, -0.884007,
		-0.909788, 0.077503, -0.407774,
		0.183894, 0.955997, -0.228587,
		35.882572, 32.981670, 28.608879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680336, 32.281124, 28.027094>,  <35.753845, 32.312469, 28.768890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680336, 32.281124, 28.027094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848309, 32.633717, 28.113495>,  <35.949093, 32.845272, 28.165335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848309, 32.633717, 28.113495>,  <35.680336, 32.281124, 28.027094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848309, 32.633717, 28.113495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531022, -0.045636, -0.846128,
		-0.735986, 0.470016, -0.487248,
		0.419930, 0.881477, 0.216001,
		35.974289, 32.898159, 28.178295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631489, 32.606850, 27.449913>,  <35.680336, 32.281124, 28.027094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631489, 32.606850, 27.449913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920158, 32.785824, 27.661190>,  <36.093361, 32.893208, 27.787956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920158, 32.785824, 27.661190>,  <35.631489, 32.606850, 27.449913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920158, 32.785824, 27.661190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580992, 0.023325, -0.813575,
		-0.376345, 0.894010, -0.243126,
		0.721673, 0.447439, 0.528191,
		36.136662, 32.920055, 27.819647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745705, 33.075665, 27.090019>,  <35.631489, 32.606850, 27.449913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745705, 33.075665, 27.090019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068199, 33.069176, 27.326567>,  <36.261696, 33.065281, 27.468496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068199, 33.069176, 27.326567>,  <35.745705, 33.075665, 27.090019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068199, 33.069176, 27.326567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577610, 0.237638, -0.780958,
		-0.127863, 0.971218, 0.200963,
		0.806237, -0.016222, 0.591371,
		36.310070, 33.064308, 27.503979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082703, 33.762802, 26.970501>,  <35.745705, 33.075665, 27.090019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082703, 33.762802, 26.970501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355766, 33.497509, 27.093204>,  <36.519604, 33.338333, 27.166826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355766, 33.497509, 27.093204>,  <36.082703, 33.762802, 26.970501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355766, 33.497509, 27.093204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543777, 0.180643, -0.819558,
		0.488140, 0.726289, 0.483967,
		0.682661, -0.663229, 0.306760,
		36.560566, 33.298542, 27.185232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745056, 34.126797, 26.913002>,  <36.082703, 33.762802, 26.970501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745056, 34.126797, 26.913002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797634, 33.730309, 26.918732>,  <36.829182, 33.492416, 26.922169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797634, 33.730309, 26.918732>,  <36.745056, 34.126797, 26.913002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797634, 33.730309, 26.918732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440997, 0.045526, -0.896353,
		0.887832, 0.124134, 0.443109,
		0.131441, -0.991221, 0.014323,
		36.837067, 33.432941, 26.923029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484802, 34.038120, 26.814571>,  <36.745056, 34.126797, 26.913002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484802, 34.038120, 26.814571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309582, 33.686977, 26.737137>,  <37.204449, 33.476292, 26.690676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309582, 33.686977, 26.737137>,  <37.484802, 34.038120, 26.814571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309582, 33.686977, 26.737137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410702, -0.003879, -0.911761,
		0.799644, -0.478908, 0.362237,
		-0.438056, -0.877856, -0.193587,
		37.178165, 33.423622, 26.679060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014149, 33.687981, 26.485718>,  <37.484802, 34.038120, 26.814571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014149, 33.687981, 26.485718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687183, 33.483505, 26.379496>,  <37.491005, 33.360821, 26.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687183, 33.483505, 26.379496>,  <38.014149, 33.687981, 26.485718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687183, 33.483505, 26.379496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258420, 0.086597, -0.962143,
		0.514838, -0.855092, 0.061317,
		-0.817411, -0.511194, -0.265557,
		37.441959, 33.330147, 26.299829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284302, 33.236847, 26.035078>,  <38.014149, 33.687981, 26.485718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284302, 33.236847, 26.035078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894962, 33.253250, 25.944832>,  <37.661358, 33.263092, 25.890684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894962, 33.253250, 25.944832>,  <38.284302, 33.236847, 26.035078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894962, 33.253250, 25.944832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223443, -0.051544, -0.973353,
		-0.051544, -0.997828, 0.041008,
		0.973353, -0.041008, 0.225615,
		37.602955, 33.265553, 25.877148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156757, 32.725395, 25.485781>,  <38.284302, 33.236847, 26.035078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156757, 32.725395, 25.485781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838558, 32.964912, 25.448647>,  <37.647636, 33.108624, 25.426365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838558, 32.964912, 25.448647>,  <38.156757, 32.725395, 25.485781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838558, 32.964912, 25.448647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025174, -0.185734, -0.982277,
		-0.605428, -0.779067, 0.162826,
		-0.795502, 0.598797, -0.092836,
		37.599907, 33.144550, 25.420795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755329, 32.463570, 24.927694>,  <38.156757, 32.725395, 25.485781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755329, 32.463570, 24.927694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599335, 32.830196, 24.963074>,  <37.505737, 33.050171, 24.984301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599335, 32.830196, 24.963074>,  <37.755329, 32.463570, 24.927694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599335, 32.830196, 24.963074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152737, 0.030335, -0.987801,
		-0.908066, -0.398735, 0.128163,
		-0.389983, 0.916564, 0.088448,
		37.482338, 33.105167, 24.989609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084812, 32.507538, 24.718523>,  <37.755329, 32.463570, 24.927694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084812, 32.507538, 24.718523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268444, 32.857418, 24.656366>,  <37.378624, 33.067345, 24.619072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268444, 32.857418, 24.656366>,  <37.084812, 32.507538, 24.718523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268444, 32.857418, 24.656366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082485, -0.132190, -0.987786,
		-0.884557, 0.466291, 0.011464,
		0.459080, 0.874699, -0.155392,
		37.406170, 33.119827, 24.609749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969929, 32.605656, 24.066923>,  <37.084812, 32.507538, 24.718523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969929, 32.605656, 24.066923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200535, 32.922173, 24.148392>,  <37.338898, 33.112083, 24.197273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200535, 32.922173, 24.148392>,  <36.969929, 32.605656, 24.066923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200535, 32.922173, 24.148392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066388, 0.203076, -0.976910,
		-0.814384, 0.576726, 0.064545,
		0.576517, 0.791294, 0.203670,
		37.373489, 33.159561, 24.209492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743942, 33.141453, 23.625168>,  <36.969929, 32.605656, 24.066923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743942, 33.141453, 23.625168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113922, 33.254337, 23.727013>,  <37.335911, 33.322067, 23.788120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113922, 33.254337, 23.727013>,  <36.743942, 33.141453, 23.625168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113922, 33.254337, 23.727013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249453, 0.054706, -0.966840,
		-0.286781, 0.957792, -0.019798,
		0.924949, 0.282210, 0.254613,
		37.391407, 33.339001, 23.803396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007244, 33.558094, 23.113739>,  <36.743942, 33.141453, 23.625168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007244, 33.558094, 23.113739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347256, 33.439014, 23.287552>,  <37.551262, 33.367565, 23.391840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347256, 33.439014, 23.287552>,  <37.007244, 33.558094, 23.113739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347256, 33.439014, 23.287552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492200, 0.155165, -0.856541,
		0.187570, 0.941965, 0.278424,
		0.850033, -0.297702, 0.434531,
		37.602264, 33.349705, 23.417912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540905, 34.072803, 23.051474>,  <37.007244, 33.558094, 23.113739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540905, 34.072803, 23.051474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747021, 33.736320, 23.117004>,  <37.870689, 33.534431, 23.156322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747021, 33.736320, 23.117004>,  <37.540905, 34.072803, 23.051474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747021, 33.736320, 23.117004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609982, 0.225719, -0.759588,
		0.601995, 0.491339, 0.629434,
		0.515290, -0.841211, 0.163826,
		37.901608, 33.483955, 23.166153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209927, 34.291748, 23.034582>,  <37.540905, 34.072803, 23.051474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209927, 34.291748, 23.034582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192116, 33.901627, 22.948042>,  <38.181431, 33.667553, 22.896118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192116, 33.901627, 22.948042>,  <38.209927, 34.291748, 23.034582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192116, 33.901627, 22.948042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679814, 0.129108, -0.721931,
		0.732031, -0.179223, 0.657274,
		-0.044527, -0.975300, -0.216349,
		38.178757, 33.609035, 22.883137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904152, 34.164173, 22.998962>,  <38.209927, 34.291748, 23.034582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904152, 34.164173, 22.998962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687428, 33.876255, 22.825371>,  <38.557392, 33.703506, 22.721216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687428, 33.876255, 22.825371>,  <38.904152, 34.164173, 22.998962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687428, 33.876255, 22.825371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567598, 0.067474, -0.820536,
		0.619899, -0.690902, 0.371995,
		-0.541810, -0.719793, -0.433981,
		38.524883, 33.660316, 22.695177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419182, 33.747757, 22.859701>,  <38.904152, 34.164173, 22.998962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419182, 33.747757, 22.859701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083828, 33.701710, 22.646589>,  <38.882614, 33.674080, 22.518723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083828, 33.701710, 22.646589>,  <39.419182, 33.747757, 22.859701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083828, 33.701710, 22.646589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532912, 0.032229, -0.845557,
		0.114511, -0.992829, 0.034328,
		-0.838387, -0.115119, -0.532781,
		38.832314, 33.667175, 22.486755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553547, 33.235016, 22.353054>,  <39.419182, 33.747757, 22.859701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553547, 33.235016, 22.353054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245056, 33.443035, 22.206215>,  <39.059963, 33.567848, 22.118111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245056, 33.443035, 22.206215>,  <39.553547, 33.235016, 22.353054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245056, 33.443035, 22.206215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485670, 0.107915, -0.867455,
		-0.411504, -0.847292, -0.335800,
		-0.771225, 0.520049, -0.367097,
		39.013687, 33.599049, 22.096087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387817, 33.019878, 21.606150>,  <39.553547, 33.235016, 22.353054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387817, 33.019878, 21.606150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246731, 33.389091, 21.667601>,  <39.162079, 33.610619, 21.704472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246731, 33.389091, 21.667601>,  <39.387817, 33.019878, 21.606150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246731, 33.389091, 21.667601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486040, 0.321018, -0.812842,
		-0.799597, -0.212034, -0.561859,
		-0.352717, 0.923033, 0.153628,
		39.140915, 33.666000, 21.713690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247726, 33.250729, 20.914829>,  <39.387817, 33.019878, 21.606150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247726, 33.250729, 20.914829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263435, 33.575504, 21.147799>,  <39.272861, 33.770370, 21.287580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263435, 33.575504, 21.147799>,  <39.247726, 33.250729, 20.914829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263435, 33.575504, 21.147799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638698, 0.427861, -0.639531,
		-0.768454, 0.397110, -0.501778,
		0.039273, 0.811935, 0.582425,
		39.275219, 33.819084, 21.322527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380436, 33.680862, 20.379805>,  <39.247726, 33.250729, 20.914829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380436, 33.680862, 20.379805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459076, 33.887753, 20.712990>,  <39.506260, 34.011887, 20.912901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459076, 33.887753, 20.712990>,  <39.380436, 33.680862, 20.379805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459076, 33.887753, 20.712990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520495, 0.664899, -0.535718,
		-0.830922, 0.538877, -0.138492,
		0.196603, 0.517225, 0.832962,
		39.518059, 34.042919, 20.962879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282406, 34.408882, 20.285734>,  <39.380436, 33.680862, 20.379805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282406, 34.408882, 20.285734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560238, 34.371811, 20.571104>,  <39.726936, 34.349567, 20.742325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560238, 34.371811, 20.571104>,  <39.282406, 34.408882, 20.285734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560238, 34.371811, 20.571104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618603, 0.583207, -0.526498,
		-0.367278, 0.807019, 0.462414,
		0.694577, -0.092680, 0.713424,
		39.768612, 34.344006, 20.785131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542828, 35.040462, 20.233084>,  <39.282406, 34.408882, 20.285734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542828, 35.040462, 20.233084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815567, 34.832375, 20.438782>,  <39.979210, 34.707520, 20.562201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815567, 34.832375, 20.438782>,  <39.542828, 35.040462, 20.233084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815567, 34.832375, 20.438782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718596, 0.607796, -0.337942,
		-0.136750, 0.599959, 0.788256,
		0.681850, -0.520224, 0.514245,
		40.020123, 34.676308, 20.593056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976982, 35.438614, 20.658625>,  <39.542828, 35.040462, 20.233084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976982, 35.438614, 20.658625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202492, 35.118870, 20.575504>,  <40.337799, 34.927025, 20.525631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202492, 35.118870, 20.575504>,  <39.976982, 35.438614, 20.658625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202492, 35.118870, 20.575504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737703, 0.600497, -0.308542,
		0.371420, 0.020652, 0.928235,
		0.563774, -0.799360, -0.207802,
		40.371624, 34.879063, 20.513165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637951, 35.678967, 20.894327>,  <39.976982, 35.438614, 20.658625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637951, 35.678967, 20.894327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713814, 35.382076, 20.637226>,  <40.759331, 35.203941, 20.482965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713814, 35.382076, 20.637226>,  <40.637951, 35.678967, 20.894327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713814, 35.382076, 20.637226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918587, 0.365318, -0.150799,
		0.346737, -0.561825, 0.751084,
		0.189662, -0.742223, -0.642754,
		40.770714, 35.159409, 20.444401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233189, 35.408215, 21.096508>,  <40.637951, 35.678967, 20.894327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233189, 35.408215, 21.096508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195641, 35.309486, 20.710707>,  <41.173111, 35.250252, 20.479225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195641, 35.309486, 20.710707>,  <41.233189, 35.408215, 21.096508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195641, 35.309486, 20.710707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926669, 0.332507, -0.175279,
		0.363967, -0.910231, 0.197504,
		-0.093873, -0.246817, -0.964505,
		41.167480, 35.235443, 20.421356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860077, 35.189884, 20.891043>,  <41.233189, 35.408215, 21.096508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860077, 35.189884, 20.891043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679428, 35.251923, 20.539591>,  <41.571041, 35.289146, 20.328720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679428, 35.251923, 20.539591>,  <41.860077, 35.189884, 20.891043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679428, 35.251923, 20.539591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868297, 0.302875, -0.392845,
		0.205187, -0.940326, -0.271452,
		-0.451618, 0.155094, -0.878628,
		41.543941, 35.298450, 20.276003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321480, 35.083210, 20.392014>,  <41.860077, 35.189884, 20.891043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321480, 35.083210, 20.392014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054840, 35.287796, 20.175106>,  <41.894855, 35.410549, 20.044962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054840, 35.287796, 20.175106>,  <42.321480, 35.083210, 20.392014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054840, 35.287796, 20.175106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737358, 0.559134, -0.379041,
		0.109335, -0.652514, -0.749848,
		-0.666595, 0.511464, -0.542269,
		41.854862, 35.441235, 20.012424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762768, 35.287014, 19.884834>,  <42.321480, 35.083210, 20.392014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762768, 35.287014, 19.884834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434525, 35.512691, 19.848408>,  <42.237579, 35.648098, 19.826551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434525, 35.512691, 19.848408>,  <42.762768, 35.287014, 19.884834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434525, 35.512691, 19.848408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549717, 0.735673, -0.395722,
		-0.156270, -0.374791, -0.913844,
		-0.820604, 0.564195, -0.091065,
		42.188343, 35.681950, 19.821089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888275, 35.582024, 19.206930>,  <42.762768, 35.287014, 19.884834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888275, 35.582024, 19.206930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631596, 35.806129, 19.416437>,  <42.477589, 35.940594, 19.542141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631596, 35.806129, 19.416437>,  <42.888275, 35.582024, 19.206930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631596, 35.806129, 19.416437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449311, 0.828070, -0.335290,
		-0.621567, 0.020181, -0.783101,
		-0.641696, 0.560261, 0.523769,
		42.439087, 35.974209, 19.573568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631393, 36.128334, 18.764561>,  <42.888275, 35.582024, 19.206930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631393, 36.128334, 18.764561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575104, 36.243881, 19.143349>,  <42.541328, 36.313210, 19.370621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575104, 36.243881, 19.143349>,  <42.631393, 36.128334, 18.764561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575104, 36.243881, 19.143349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473540, 0.859622, -0.191857,
		-0.869457, 0.421429, -0.257762,
		-0.140724, 0.288872, 0.946969,
		42.532887, 36.330544, 19.427439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198238, 36.724102, 19.076952>,  <42.631393, 36.128334, 18.764561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198238, 36.724102, 19.076952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423096, 37.046562, 19.150831>,  <42.558010, 37.240040, 19.195158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423096, 37.046562, 19.150831>,  <42.198238, 36.724102, 19.076952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423096, 37.046562, 19.150831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408504, -0.076469, -0.909547,
		-0.719112, 0.586744, -0.372304,
		0.562141, 0.806154, 0.184697,
		42.591740, 37.288410, 19.206240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227722, 37.006874, 18.480949>,  <42.198238, 36.724102, 19.076952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227722, 37.006874, 18.480949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535912, 37.178238, 18.669771>,  <42.720825, 37.281055, 18.783064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535912, 37.178238, 18.669771>,  <42.227722, 37.006874, 18.480949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535912, 37.178238, 18.669771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564601, -0.114802, -0.817341,
		-0.295966, 0.896261, -0.330334,
		0.770473, 0.428412, 0.472053,
		42.767056, 37.306763, 18.811386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522682, 37.483128, 18.039257>,  <42.227722, 37.006874, 18.480949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522682, 37.483128, 18.039257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808071, 37.369701, 18.295555>,  <42.979305, 37.301647, 18.449333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808071, 37.369701, 18.295555>,  <42.522682, 37.483128, 18.039257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808071, 37.369701, 18.295555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412332, -0.569437, -0.711143,
		0.566519, 0.771577, -0.289352,
		0.713469, -0.283567, 0.640743,
		43.022114, 37.284630, 18.487778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253426, 37.317978, 17.666279>,  <42.522682, 37.483128, 18.039257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253426, 37.317978, 17.666279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193695, 37.091076, 17.990234>,  <43.157856, 36.954933, 18.184608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193695, 37.091076, 17.990234>,  <43.253426, 37.317978, 17.666279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193695, 37.091076, 17.990234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526567, -0.738889, -0.420440,
		0.836917, 0.363681, 0.409031,
		-0.149322, -0.567256, 0.809891,
		43.148899, 36.920898, 18.233202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640903, 36.752163, 17.686195>,  <43.253426, 37.317978, 17.666279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640903, 36.752163, 17.686195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392475, 36.556366, 17.931034>,  <43.243420, 36.438889, 18.077938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392475, 36.556366, 17.931034>,  <43.640903, 36.752163, 17.686195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392475, 36.556366, 17.931034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368926, -0.871636, -0.322715,
		0.691495, 0.025390, 0.721935,
		-0.621071, -0.489496, 0.612099,
		43.206154, 36.409515, 18.114664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014954, 36.175171, 18.038465>,  <43.640903, 36.752163, 17.686195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014954, 36.175171, 18.038465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623539, 36.093277, 18.029028>,  <43.388691, 36.044140, 18.023365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623539, 36.093277, 18.029028>,  <44.014954, 36.175171, 18.038465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623539, 36.093277, 18.029028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203684, -0.943338, -0.261966,
		0.031374, -0.261149, 0.964789,
		-0.978534, -0.204731, -0.023596,
		43.329979, 36.031857, 18.021950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500671, 36.039360, 18.646168>,  <44.014954, 36.175171, 18.038465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500671, 36.039360, 18.646168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748867, 35.785717, 18.830734>,  <44.897785, 35.633533, 18.941475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748867, 35.785717, 18.830734>,  <44.500671, 36.039360, 18.646168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748867, 35.785717, 18.830734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324034, 0.328498, 0.887181,
		-0.714142, -0.699999, -0.001644,
		0.620486, -0.634106, 0.461418,
		44.935013, 35.595486, 18.969160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245171, 36.697311, 19.179602>,  <44.500671, 36.039360, 18.646168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245171, 36.697311, 19.179602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920536, 36.514984, 19.325783>,  <43.725754, 36.405590, 19.413492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920536, 36.514984, 19.325783>,  <44.245171, 36.697311, 19.179602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920536, 36.514984, 19.325783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138849, -0.457120, -0.878500,
		0.567489, -0.763724, 0.307704,
		-0.811589, -0.455815, 0.365452,
		43.677059, 36.378239, 19.435419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781788, 37.136097, 19.406914>,  <44.245171, 36.697311, 19.179602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781788, 37.136097, 19.406914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587566, 37.260044, 19.079935>,  <43.471031, 37.334412, 18.883747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587566, 37.260044, 19.079935>,  <43.781788, 37.136097, 19.406914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587566, 37.260044, 19.079935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707515, 0.409936, 0.575651,
		0.513474, 0.857867, 0.020185,
		-0.485558, 0.309863, -0.817446,
		43.441898, 37.353004, 18.834702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808247, 37.826679, 19.454338>,  <43.781788, 37.136097, 19.406914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808247, 37.826679, 19.454338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480927, 37.703587, 19.260151>,  <43.284534, 37.629730, 19.143639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480927, 37.703587, 19.260151>,  <43.808247, 37.826679, 19.454338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480927, 37.703587, 19.260151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565243, 0.277563, 0.776826,
		-0.104307, 0.910087, -0.401075,
		-0.818304, -0.307733, -0.485468,
		43.235435, 37.611267, 19.114510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256100, 38.368153, 19.396734>,  <43.808247, 37.826679, 19.454338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256100, 38.368153, 19.396734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050850, 38.030594, 19.334068>,  <42.927700, 37.828060, 19.296469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050850, 38.030594, 19.334068>,  <43.256100, 38.368153, 19.396734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050850, 38.030594, 19.334068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489854, 0.138049, 0.860805,
		-0.704803, 0.518441, -0.484222,
		-0.513123, -0.843897, -0.156663,
		42.896912, 37.777424, 19.287069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586678, 38.553932, 19.264847>,  <43.256100, 38.368153, 19.396734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586678, 38.553932, 19.264847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663433, 38.207912, 19.450262>,  <42.709484, 38.000301, 19.561512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663433, 38.207912, 19.450262>,  <42.586678, 38.553932, 19.264847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663433, 38.207912, 19.450262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603559, 0.268424, 0.750776,
		-0.773884, -0.423837, -0.470602,
		0.191886, -0.865049, 0.463540,
		42.721001, 37.948399, 19.589325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931961, 38.161339, 19.321911>,  <42.586678, 38.553932, 19.264847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931961, 38.161339, 19.321911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186893, 38.035648, 19.603355>,  <42.339851, 37.960232, 19.772223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186893, 38.035648, 19.603355>,  <41.931961, 38.161339, 19.321911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186893, 38.035648, 19.603355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673973, 0.215363, 0.706668,
		-0.373588, -0.924596, -0.074524,
		0.637332, -0.314230, 0.703610,
		42.378094, 37.941380, 19.814438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471622, 37.904690, 19.755358>,  <41.931961, 38.161339, 19.321911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471622, 37.904690, 19.755358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812912, 37.962662, 19.955759>,  <42.017685, 37.997444, 20.076000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812912, 37.962662, 19.955759>,  <41.471622, 37.904690, 19.755358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812912, 37.962662, 19.955759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508788, 0.020140, 0.860656,
		0.114647, -0.989237, 0.090924,
		0.853224, 0.144932, 0.501003,
		42.068878, 38.006142, 20.106060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251442, 37.636028, 20.315838>,  <41.471622, 37.904690, 19.755358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251442, 37.636028, 20.315838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589863, 37.818798, 20.425686>,  <41.792915, 37.928459, 20.491594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589863, 37.818798, 20.425686>,  <41.251442, 37.636028, 20.315838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589863, 37.818798, 20.425686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367047, 0.125688, 0.921672,
		0.386622, -0.880579, 0.274053,
		0.846050, 0.456929, 0.274620,
		41.843678, 37.955875, 20.508072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374760, 37.312256, 20.957687>,  <41.251442, 37.636028, 20.315838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374760, 37.312256, 20.957687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578163, 37.656567, 20.948954>,  <41.700207, 37.863155, 20.943714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578163, 37.656567, 20.948954>,  <41.374760, 37.312256, 20.957687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578163, 37.656567, 20.948954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217381, 0.152873, 0.964041,
		0.833165, -0.485477, 0.264854,
		0.508509, 0.860780, -0.021835,
		41.730717, 37.914799, 20.942404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897076, 37.346951, 21.354458>,  <41.374760, 37.312256, 20.957687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897076, 37.346951, 21.354458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820694, 37.739159, 21.336073>,  <41.774864, 37.974483, 21.325041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820694, 37.739159, 21.336073>,  <41.897076, 37.346951, 21.354458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820694, 37.739159, 21.336073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174435, 0.012184, 0.984593,
		0.965975, 0.196033, 0.168711,
		-0.190957, 0.980522, -0.045965,
		41.763409, 38.033314, 21.322283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270500, 37.638493, 21.957722>,  <41.897076, 37.346951, 21.354458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270500, 37.638493, 21.957722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998718, 37.907787, 21.841042>,  <41.835651, 38.069366, 21.771032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998718, 37.907787, 21.841042>,  <42.270500, 37.638493, 21.957722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998718, 37.907787, 21.841042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252747, 0.158472, 0.954466,
		0.688812, 0.722242, 0.062486,
		-0.679453, 0.673241, -0.291702,
		41.794884, 38.109760, 21.753531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245419, 38.200275, 22.498026>,  <42.270500, 37.638493, 21.957722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245419, 38.200275, 22.498026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902451, 38.253143, 22.299082>,  <41.696671, 38.284863, 22.179714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902451, 38.253143, 22.299082>,  <42.245419, 38.200275, 22.498026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902451, 38.253143, 22.299082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465226, 0.214101, 0.858910,
		0.220006, 0.967829, -0.122085,
		-0.857416, 0.132168, -0.497362,
		41.645226, 38.292793, 22.149874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984020, 38.823349, 22.836231>,  <42.245419, 38.200275, 22.498026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984020, 38.823349, 22.836231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673908, 38.648319, 22.654034>,  <41.487843, 38.543301, 22.544716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673908, 38.648319, 22.654034>,  <41.984020, 38.823349, 22.836231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673908, 38.648319, 22.654034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509527, 0.007103, 0.860425,
		-0.373263, 0.899155, -0.228462,
		-0.775279, -0.437572, -0.455492,
		41.441326, 38.517048, 22.517385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263741, 39.199005, 23.016012>,  <41.984020, 38.823349, 22.836231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263741, 39.199005, 23.016012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176247, 38.832413, 22.882017>,  <41.123749, 38.612457, 22.801620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176247, 38.832413, 22.882017>,  <41.263741, 39.199005, 23.016012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176247, 38.832413, 22.882017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618190, -0.135461, 0.774269,
		-0.754980, 0.376447, -0.536929,
		-0.218738, -0.916481, -0.334986,
		41.110626, 38.557468, 22.781521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568073, 39.255653, 22.874475>,  <41.263741, 39.199005, 23.016012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568073, 39.255653, 22.874475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659203, 38.868210, 22.914259>,  <40.713882, 38.635742, 22.938129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659203, 38.868210, 22.914259>,  <40.568073, 39.255653, 22.874475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659203, 38.868210, 22.914259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569615, -0.049739, 0.820406,
		-0.789706, -0.243562, -0.563066,
		0.227826, -0.968609, 0.099457,
		40.727551, 38.577625, 22.944096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933243, 39.022125, 22.944618>,  <40.568073, 39.255653, 22.874475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933243, 39.022125, 22.944618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155033, 38.718868, 23.081898>,  <40.288105, 38.536915, 23.164265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155033, 38.718868, 23.081898>,  <39.933243, 39.022125, 22.944618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155033, 38.718868, 23.081898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490747, 0.035191, 0.870591,
		-0.672106, -0.651143, -0.352542,
		0.554473, -0.758138, 0.343199,
		40.321377, 38.491428, 23.184858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528770, 38.438599, 23.078314>,  <39.933243, 39.022125, 22.944618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528770, 38.438599, 23.078314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850552, 38.408981, 23.314070>,  <40.043621, 38.391209, 23.455523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850552, 38.408981, 23.314070>,  <39.528770, 38.438599, 23.078314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850552, 38.408981, 23.314070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589270, -0.224739, 0.776050,
		0.074996, -0.971602, -0.224423,
		0.804448, -0.074045, 0.589390,
		40.091885, 38.386768, 23.490887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321178, 37.937149, 23.560925>,  <39.528770, 38.438599, 23.078314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321178, 37.937149, 23.560925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635891, 38.110733, 23.736496>,  <39.824718, 38.214882, 23.841839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635891, 38.110733, 23.736496>,  <39.321178, 37.937149, 23.560925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635891, 38.110733, 23.736496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347559, -0.276188, 0.896060,
		0.510078, -0.857556, -0.066473,
		0.786780, 0.433957, 0.438928,
		39.871925, 38.240921, 23.868174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467300, 37.453472, 24.050756>,  <39.321178, 37.937149, 23.560925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467300, 37.453472, 24.050756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591846, 37.819561, 24.153072>,  <39.666573, 38.039215, 24.214462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591846, 37.819561, 24.153072>,  <39.467300, 37.453472, 24.050756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591846, 37.819561, 24.153072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439686, -0.099878, 0.892581,
		0.842454, -0.390385, 0.371310,
		0.311364, 0.915218, 0.255789,
		39.685257, 38.094128, 24.229809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693172, 37.352627, 24.763437>,  <39.467300, 37.453472, 24.050756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693172, 37.352627, 24.763437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624752, 37.746296, 24.744883>,  <39.583698, 37.982498, 24.733749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624752, 37.746296, 24.744883>,  <39.693172, 37.352627, 24.763437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624752, 37.746296, 24.744883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510832, -0.048328, 0.858321,
		0.842491, 0.170516, 0.511012,
		-0.171053, 0.984169, -0.046389,
		39.573437, 38.041546, 24.730967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754742, 37.672821, 25.481094>,  <39.693172, 37.352627, 24.763437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754742, 37.672821, 25.481094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536598, 37.929359, 25.265219>,  <39.405712, 38.083282, 25.135695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536598, 37.929359, 25.265219>,  <39.754742, 37.672821, 25.481094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536598, 37.929359, 25.265219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596637, 0.155216, 0.787358,
		0.588735, 0.751390, 0.298002,
		-0.545358, 0.641344, -0.539688,
		39.372990, 38.121761, 25.103312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695789, 38.324966, 25.853500>,  <39.754742, 37.672821, 25.481094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695789, 38.324966, 25.853500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388203, 38.285099, 25.600914>,  <39.203651, 38.261177, 25.449362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388203, 38.285099, 25.600914>,  <39.695789, 38.324966, 25.853500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388203, 38.285099, 25.600914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638901, 0.085614, 0.764510,
		-0.022135, 0.991331, -0.129513,
		-0.768970, -0.099669, -0.631467,
		39.157513, 38.255199, 25.411474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160679, 38.558537, 26.227865>,  <39.695789, 38.324966, 25.853500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160679, 38.558537, 26.227865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955666, 38.387051, 25.930271>,  <38.832657, 38.284157, 25.751715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955666, 38.387051, 25.930271>,  <39.160679, 38.558537, 26.227865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955666, 38.387051, 25.930271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808158, -0.051947, 0.586671,
		-0.290164, 0.901944, -0.319846,
		-0.512529, -0.428716, -0.743987,
		38.801907, 38.258434, 25.707075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478512, 38.798946, 26.376364>,  <39.160679, 38.558537, 26.227865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478512, 38.798946, 26.376364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491581, 38.465893, 26.155218>,  <38.499420, 38.266060, 26.022532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491581, 38.465893, 26.155218>,  <38.478512, 38.798946, 26.376364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491581, 38.465893, 26.155218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663609, -0.431703, 0.610946,
		-0.747366, 0.346926, -0.566645,
		0.032669, -0.832631, -0.552864,
		38.501381, 38.216103, 25.989359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744251, 38.627647, 26.311157>,  <38.478512, 38.798946, 26.376364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744251, 38.627647, 26.311157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934113, 38.292484, 26.203375>,  <38.048031, 38.091385, 26.138706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934113, 38.292484, 26.203375>,  <37.744251, 38.627647, 26.311157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934113, 38.292484, 26.203375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591659, -0.530405, 0.607133,
		-0.651644, -0.128753, -0.747517,
		0.474657, -0.837911, -0.269458,
		38.076511, 38.041111, 26.122538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244297, 38.179581, 26.108109>,  <37.744251, 38.627647, 26.311157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244297, 38.179581, 26.108109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565201, 37.982494, 26.242931>,  <37.757744, 37.864243, 26.323826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565201, 37.982494, 26.242931>,  <37.244297, 38.179581, 26.108109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565201, 37.982494, 26.242931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538926, -0.354914, 0.763934,
		-0.256773, -0.794525, -0.550271,
		0.802263, -0.492713, 0.337058,
		37.805882, 37.834679, 26.344049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009583, 37.551083, 26.376081>,  <37.244297, 38.179581, 26.108109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009583, 37.551083, 26.376081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374214, 37.523819, 26.538254>,  <37.592995, 37.507462, 26.635557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374214, 37.523819, 26.538254>,  <37.009583, 37.551083, 26.376081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374214, 37.523819, 26.538254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371767, -0.557690, 0.742139,
		0.175523, -0.827246, -0.533719,
		0.911582, -0.068157, 0.405430,
		37.647690, 37.503372, 26.659883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962479, 36.902912, 26.629902>,  <37.009583, 37.551083, 26.376081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962479, 36.902912, 26.629902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279823, 37.056160, 26.819130>,  <37.470230, 37.148109, 26.932667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279823, 37.056160, 26.819130>,  <36.962479, 36.902912, 26.629902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279823, 37.056160, 26.819130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099208, -0.685354, 0.721421,
		0.600612, -0.619280, -0.505725,
		0.793362, 0.383122, 0.473069,
		37.517834, 37.171097, 26.961050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378605, 36.259102, 26.804647>,  <36.962479, 36.902912, 26.629902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378605, 36.259102, 26.804647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481720, 36.559231, 27.048143>,  <37.543587, 36.739307, 27.194241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481720, 36.559231, 27.048143>,  <37.378605, 36.259102, 26.804647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481720, 36.559231, 27.048143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171626, -0.584454, 0.793069,
		0.950837, -0.308917, -0.021889,
		0.257785, 0.750323, 0.608739,
		37.559055, 36.784328, 27.230764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718388, 36.010777, 27.395155>,  <37.378605, 36.259102, 26.804647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718388, 36.010777, 27.395155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624157, 36.368759, 27.546707>,  <37.567619, 36.583549, 27.637638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624157, 36.368759, 27.546707>,  <37.718388, 36.010777, 27.395155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624157, 36.368759, 27.546707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177950, -0.422982, 0.888493,
		0.955425, 0.141887, 0.258903,
		-0.235577, 0.894961, 0.378878,
		37.553482, 36.637249, 27.660370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886715, 35.956768, 28.136213>,  <37.718388, 36.010777, 27.395155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886715, 35.956768, 28.136213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651886, 36.279545, 28.110312>,  <37.510990, 36.473209, 28.094770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651886, 36.279545, 28.110312>,  <37.886715, 35.956768, 28.136213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651886, 36.279545, 28.110312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341733, -0.174513, 0.923452,
		0.733872, 0.564260, 0.378210,
		-0.587070, 0.806942, -0.064756,
		37.475765, 36.521629, 28.090885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028030, 36.422783, 28.725931>,  <37.886715, 35.956768, 28.136213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028030, 36.422783, 28.725931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663647, 36.525375, 28.596701>,  <37.445019, 36.586929, 28.519161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663647, 36.525375, 28.596701>,  <38.028030, 36.422783, 28.725931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663647, 36.525375, 28.596701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373504, -0.180413, 0.909916,
		0.175088, 0.949563, 0.260144,
		-0.910955, 0.256480, -0.323077,
		37.390362, 36.602318, 28.499777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771282, 36.896694, 29.264389>,  <38.028030, 36.422783, 28.725931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771282, 36.896694, 29.264389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467045, 36.728157, 29.066818>,  <37.284500, 36.627033, 28.948277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467045, 36.728157, 29.066818>,  <37.771282, 36.896694, 29.264389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467045, 36.728157, 29.066818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497410, -0.110728, 0.860420,
		-0.417225, 0.900116, -0.125361,
		-0.760597, -0.421345, -0.493925,
		37.238865, 36.601753, 28.918640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243702, 37.182705, 29.610374>,  <37.771282, 36.896694, 29.264389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243702, 37.182705, 29.610374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084106, 36.871368, 29.416468>,  <36.988350, 36.684566, 29.300123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084106, 36.871368, 29.416468>,  <37.243702, 37.182705, 29.610374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084106, 36.871368, 29.416468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617882, -0.162408, 0.769315,
		-0.677517, 0.606476, -0.416122,
		-0.398990, -0.778338, -0.484765,
		36.964409, 36.637867, 29.271038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500591, 37.252106, 29.772034>,  <37.243702, 37.182705, 29.610374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500591, 37.252106, 29.772034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521393, 36.872829, 29.646666>,  <36.533875, 36.645264, 29.571444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521393, 36.872829, 29.646666>,  <36.500591, 37.252106, 29.772034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521393, 36.872829, 29.646666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573955, -0.285210, 0.767613,
		-0.817234, 0.139972, -0.559050,
		0.052003, -0.948189, -0.313421,
		36.536995, 36.588371, 29.552639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816063, 37.000404, 29.736628>,  <36.500591, 37.252106, 29.772034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816063, 37.000404, 29.736628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064335, 36.689560, 29.778299>,  <36.213299, 36.503052, 29.803303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064335, 36.689560, 29.778299>,  <35.816063, 37.000404, 29.736628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064335, 36.689560, 29.778299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637470, -0.422799, 0.644106,
		-0.456500, -0.466190, -0.757809,
		0.620677, -0.777115, 0.104175,
		36.250538, 36.456425, 29.809553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383682, 36.384880, 29.735003>,  <35.816063, 37.000404, 29.736628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383682, 36.384880, 29.735003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730713, 36.306217, 29.917706>,  <35.938931, 36.259018, 30.027328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730713, 36.306217, 29.917706>,  <35.383682, 36.384880, 29.735003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730713, 36.306217, 29.917706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496208, -0.281602, 0.821266,
		-0.032884, -0.939162, -0.341896,
		0.867581, -0.196658, 0.456760,
		35.990986, 36.247219, 30.054733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184052, 35.733654, 29.978800>,  <35.383682, 36.384880, 29.735003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184052, 35.733654, 29.978800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509079, 35.870422, 30.167620>,  <35.704094, 35.952484, 30.280910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509079, 35.870422, 30.167620>,  <35.184052, 35.733654, 29.978800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509079, 35.870422, 30.167620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393905, -0.274813, 0.877107,
		0.429624, -0.898649, -0.088620,
		0.812565, 0.341918, 0.472048,
		35.752850, 35.973000, 30.309235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540318, 35.220230, 30.419685>,  <35.184052, 35.733654, 29.978800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540318, 35.220230, 30.419685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637802, 35.570705, 30.586012>,  <35.696293, 35.780991, 30.685808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637802, 35.570705, 30.586012>,  <35.540318, 35.220230, 30.419685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637802, 35.570705, 30.586012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299201, -0.339906, 0.891596,
		0.922542, -0.341704, 0.179317,
		0.243711, 0.876186, 0.415816,
		35.710915, 35.833561, 30.710756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748703, 35.087902, 31.039429>,  <35.540318, 35.220230, 30.419685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748703, 35.087902, 31.039429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706882, 35.480904, 31.101072>,  <35.681789, 35.716705, 31.138058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706882, 35.480904, 31.101072>,  <35.748703, 35.087902, 31.039429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706882, 35.480904, 31.101072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348116, -0.181309, 0.919751,
		0.931603, 0.042517, 0.360983,
		-0.104554, 0.982507, 0.154107,
		35.675518, 35.775654, 31.147305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873146, 35.096180, 31.707394>,  <35.748703, 35.087902, 31.039429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873146, 35.096180, 31.707394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713882, 35.458744, 31.650993>,  <35.618324, 35.676285, 31.617153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713882, 35.458744, 31.650993>,  <35.873146, 35.096180, 31.707394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713882, 35.458744, 31.650993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249253, 0.041025, 0.967569,
		0.882803, 0.420392, 0.209592,
		-0.398159, 0.906415, -0.141001,
		35.594433, 35.730667, 31.608692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212360, 35.631279, 32.235455>,  <35.873146, 35.096180, 31.707394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212360, 35.631279, 32.235455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849815, 35.742886, 32.108547>,  <35.632290, 35.809849, 32.032402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849815, 35.742886, 32.108547>,  <36.212360, 35.631279, 32.235455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849815, 35.742886, 32.108547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335152, -0.017571, 0.942000,
		0.257260, 0.960125, 0.109439,
		-0.906361, 0.279018, -0.317268,
		35.577908, 35.826591, 32.013367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052109, 36.321255, 32.502190>,  <36.212360, 35.631279, 32.235455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052109, 36.321255, 32.502190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725121, 36.099625, 32.439270>,  <35.528927, 35.966648, 32.401520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725121, 36.099625, 32.439270>,  <36.052109, 36.321255, 32.502190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725121, 36.099625, 32.439270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209115, 0.031044, 0.977398,
		-0.536668, 0.831888, -0.141242,
		-0.817470, -0.554075, -0.157300,
		35.479881, 35.933403, 32.392078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809448, 36.310326, 32.092098>,  <36.052109, 36.321255, 32.502190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809448, 36.310326, 32.092098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093510, 36.078014, 32.251286>,  <37.263947, 35.938625, 32.346798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093510, 36.078014, 32.251286>,  <36.809448, 36.310326, 32.092098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093510, 36.078014, 32.251286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704048, 0.586973, -0.399724,
		-0.001444, 0.564053, 0.825738,
		0.710151, -0.580782, 0.397968,
		37.306557, 35.903778, 32.370674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284981, 36.755848, 32.406719>,  <36.809448, 36.310326, 32.092098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284981, 36.755848, 32.406719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467140, 36.414879, 32.303967>,  <37.576435, 36.210297, 32.242313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467140, 36.414879, 32.303967>,  <37.284981, 36.755848, 32.406719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467140, 36.414879, 32.303967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658766, 0.516732, -0.546822,
		0.598861, 0.079800, 0.796867,
		0.455403, -0.852420, -0.256882,
		37.603760, 36.159153, 32.226902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953136, 36.868328, 32.476021>,  <37.284981, 36.755848, 32.406719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953136, 36.868328, 32.476021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974098, 36.541332, 32.246597>,  <37.986675, 36.345135, 32.108944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974098, 36.541332, 32.246597>,  <37.953136, 36.868328, 32.476021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974098, 36.541332, 32.246597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746078, 0.413819, -0.521653,
		0.663794, -0.400582, 0.631594,
		0.052401, -0.817489, -0.573556,
		37.989819, 36.296085, 32.074532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648800, 36.677029, 32.494301>,  <37.953136, 36.868328, 32.476021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648800, 36.677029, 32.494301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523319, 36.501907, 32.157272>,  <38.448032, 36.396835, 31.955055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523319, 36.501907, 32.157272>,  <38.648800, 36.677029, 32.494301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523319, 36.501907, 32.157272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864506, 0.235313, -0.444136,
		0.392712, -0.867730, 0.304667,
		-0.313698, -0.437804, -0.842568,
		38.429211, 36.370567, 31.904501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292850, 36.465469, 32.160076>,  <38.648800, 36.677029, 32.494301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292850, 36.465469, 32.160076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030445, 36.429840, 31.860285>,  <38.873001, 36.408463, 31.680410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030445, 36.429840, 31.860285>,  <39.292850, 36.465469, 32.160076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030445, 36.429840, 31.860285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744875, 0.083689, -0.661934,
		0.121687, -0.992503, 0.011452,
		-0.656013, -0.089079, -0.749474,
		38.833641, 36.403118, 31.635443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533554, 35.941925, 31.667788>,  <39.292850, 36.465469, 32.160076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533554, 35.941925, 31.667788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280869, 36.163742, 31.451115>,  <39.129257, 36.296833, 31.321112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280869, 36.163742, 31.451115>,  <39.533554, 35.941925, 31.667788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280869, 36.163742, 31.451115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721677, 0.165551, -0.672143,
		-0.283056, -0.815521, -0.504782,
		-0.631714, 0.554543, -0.541682,
		39.091354, 36.330105, 31.288610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590099, 35.816204, 30.841160>,  <39.533554, 35.941925, 31.667788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590099, 35.816204, 30.841160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395210, 36.165493, 30.845161>,  <39.278278, 36.375065, 30.847563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395210, 36.165493, 30.845161>,  <39.590099, 35.816204, 30.841160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395210, 36.165493, 30.845161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490462, 0.283101, -0.824197,
		-0.722537, -0.396661, -0.566215,
		-0.487223, 0.873220, 0.010004,
		39.249043, 36.427460, 30.848162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459843, 35.955971, 30.110491>,  <39.590099, 35.816204, 30.841160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459843, 35.955971, 30.110491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442726, 36.305599, 30.304052>,  <39.432457, 36.515377, 30.420189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442726, 36.305599, 30.304052>,  <39.459843, 35.955971, 30.110491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442726, 36.305599, 30.304052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363821, 0.464723, -0.807259,
		-0.930486, 0.141508, -0.337894,
		-0.042793, 0.874075, 0.483902,
		39.429890, 36.567822, 30.449223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262726, 36.454041, 29.611870>,  <39.459843, 35.955971, 30.110491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262726, 36.454041, 29.611870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367725, 36.715126, 29.896139>,  <39.430725, 36.871777, 30.066700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367725, 36.715126, 29.896139>,  <39.262726, 36.454041, 29.611870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367725, 36.715126, 29.896139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357965, 0.618075, -0.699888,
		-0.896078, 0.438116, -0.071405,
		0.262499, 0.652715, 0.710674,
		39.446476, 36.910942, 30.109341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953625, 37.213604, 29.457762>,  <39.262726, 36.454041, 29.611870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953625, 37.213604, 29.457762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283699, 37.207340, 29.683620>,  <39.481743, 37.203583, 29.819136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283699, 37.207340, 29.683620>,  <38.953625, 37.213604, 29.457762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283699, 37.207340, 29.683620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473021, 0.565522, -0.675600,
		-0.308744, 0.824585, 0.474065,
		0.825184, -0.015655, 0.564648,
		39.531254, 37.202644, 29.853014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267143, 37.844677, 29.262396>,  <38.953625, 37.213604, 29.457762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267143, 37.844677, 29.262396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553928, 37.669079, 29.479006>,  <39.725998, 37.563721, 29.608973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553928, 37.669079, 29.479006>,  <39.267143, 37.844677, 29.262396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553928, 37.669079, 29.479006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693930, 0.523579, -0.494294,
		-0.066539, 0.730171, 0.680017,
		0.716962, -0.438994, 0.541526,
		39.769016, 37.537380, 29.641464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765446, 38.321159, 29.436663>,  <39.267143, 37.844677, 29.262396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765446, 38.321159, 29.436663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937557, 37.960255, 29.447863>,  <40.040825, 37.743713, 29.454582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937557, 37.960255, 29.447863>,  <39.765446, 38.321159, 29.436663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937557, 37.960255, 29.447863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782853, 0.357531, -0.509228,
		0.449446, 0.241031, 0.860176,
		0.430279, -0.902261, 0.028001,
		40.066643, 37.689575, 29.456263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359215, 38.541607, 29.480375>,  <39.765446, 38.321159, 29.436663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359215, 38.541607, 29.480375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375931, 38.166103, 29.343561>,  <40.385960, 37.940800, 29.261473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375931, 38.166103, 29.343561>,  <40.359215, 38.541607, 29.480375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375931, 38.166103, 29.343561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690390, 0.274592, -0.669298,
		0.722229, -0.208166, 0.659585,
		0.041792, -0.938758, -0.342034,
		40.388470, 37.884476, 29.240952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005932, 38.477036, 29.263920>,  <40.359215, 38.541607, 29.480375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005932, 38.477036, 29.263920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841297, 38.155949, 29.091295>,  <40.742516, 37.963299, 28.987720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841297, 38.155949, 29.091295>,  <41.005932, 38.477036, 29.263920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841297, 38.155949, 29.091295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651188, 0.072268, -0.755468,
		0.637613, -0.591970, 0.492973,
		-0.411588, -0.802714, -0.431562,
		40.717819, 37.915134, 28.961826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606274, 38.080799, 29.005465>,  <41.005932, 38.477036, 29.263920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606274, 38.080799, 29.005465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269390, 37.997757, 28.806435>,  <41.067261, 37.947933, 28.687017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269390, 37.997757, 28.806435>,  <41.606274, 38.080799, 29.005465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269390, 37.997757, 28.806435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459182, 0.207452, -0.863780,
		0.282549, -0.955962, -0.079389,
		-0.842210, -0.207606, -0.497575,
		41.016727, 37.935474, 28.657162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867184, 37.687572, 28.350256>,  <41.606274, 38.080799, 29.005465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867184, 37.687572, 28.350256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495243, 37.795483, 28.250179>,  <41.272079, 37.860229, 28.190134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495243, 37.795483, 28.250179>,  <41.867184, 37.687572, 28.350256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495243, 37.795483, 28.250179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280829, 0.081041, -0.956330,
		-0.237721, -0.959507, -0.151118,
		-0.929852, 0.269778, -0.250192,
		41.216286, 37.876415, 28.175121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524799, 37.201981, 27.832996>,  <41.867184, 37.687572, 28.350256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524799, 37.201981, 27.832996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359234, 37.564735, 27.801401>,  <41.259895, 37.782387, 27.782444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359234, 37.564735, 27.801401>,  <41.524799, 37.201981, 27.832996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359234, 37.564735, 27.801401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331571, 0.069384, -0.940875,
		-0.847783, -0.415632, -0.329415,
		-0.413914, 0.906882, -0.078989,
		41.235058, 37.836800, 27.777704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418736, 37.290318, 27.159218>,  <41.524799, 37.201981, 27.832996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418736, 37.290318, 27.159218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321835, 37.666622, 27.254114>,  <41.263695, 37.892406, 27.311052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321835, 37.666622, 27.254114>,  <41.418736, 37.290318, 27.159218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321835, 37.666622, 27.254114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290810, 0.303688, -0.907305,
		-0.925604, -0.150805, -0.347152,
		-0.242252, 0.940761, 0.237240,
		41.249161, 37.948849, 27.325287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916771, 37.601505, 26.642441>,  <41.418736, 37.290318, 27.159218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916771, 37.601505, 26.642441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130245, 37.893353, 26.813477>,  <41.258327, 38.068462, 26.916098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130245, 37.893353, 26.813477>,  <40.916771, 37.601505, 26.642441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130245, 37.893353, 26.813477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098506, 0.448540, -0.888318,
		-0.839928, 0.516201, 0.167506,
		0.533683, 0.729622, 0.427590,
		41.290352, 38.112240, 26.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676655, 38.141075, 26.259396>,  <40.916771, 37.601505, 26.642441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676655, 38.141075, 26.259396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043537, 38.202721, 26.406353>,  <41.263668, 38.239708, 26.494528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043537, 38.202721, 26.406353>,  <40.676655, 38.141075, 26.259396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043537, 38.202721, 26.406353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331672, 0.215544, -0.918441,
		-0.220735, 0.964256, 0.146583,
		0.917208, 0.154114, 0.367394,
		41.318699, 38.248955, 26.516571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927219, 38.555885, 25.783686>,  <40.676655, 38.141075, 26.259396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927219, 38.555885, 25.783686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250401, 38.453480, 25.995977>,  <41.444309, 38.392036, 26.123352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250401, 38.453480, 25.995977>,  <40.927219, 38.555885, 25.783686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250401, 38.453480, 25.995977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546058, -0.013171, -0.837644,
		0.221436, 0.966584, 0.129155,
		0.807953, -0.256010, 0.530727,
		41.492786, 38.376678, 26.155195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443283, 38.960743, 25.549938>,  <40.927219, 38.555885, 25.783686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443283, 38.960743, 25.549938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626049, 38.642281, 25.708618>,  <41.735710, 38.451202, 25.803825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626049, 38.642281, 25.708618>,  <41.443283, 38.960743, 25.549938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626049, 38.642281, 25.708618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616966, -0.037608, -0.786090,
		0.640767, 0.603926, 0.474016,
		0.456914, -0.796153, 0.396700,
		41.763123, 38.403435, 25.827629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196411, 39.066525, 25.467167>,  <41.443283, 38.960743, 25.549938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196411, 39.066525, 25.467167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149666, 38.673840, 25.527285>,  <42.121620, 38.438229, 25.563354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149666, 38.673840, 25.527285>,  <42.196411, 39.066525, 25.467167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149666, 38.673840, 25.527285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599702, -0.190377, -0.777247,
		0.791645, -0.000698, 0.610982,
		-0.116859, -0.981711, 0.150293,
		42.114609, 38.379326, 25.572372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834843, 38.798618, 25.368383>,  <42.196411, 39.066525, 25.467167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834843, 38.798618, 25.368383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615513, 38.465275, 25.340509>,  <42.483913, 38.265270, 25.323786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615513, 38.465275, 25.340509>,  <42.834843, 38.798618, 25.368383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615513, 38.465275, 25.340509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545981, -0.293630, -0.784657,
		0.633438, -0.468293, 0.616002,
		-0.548326, -0.833357, -0.069683,
		42.451015, 38.215267, 25.319605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301270, 38.213322, 25.235897>,  <42.834843, 38.798618, 25.368383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301270, 38.213322, 25.235897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958607, 38.038601, 25.126102>,  <42.753010, 37.933769, 25.060226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958607, 38.038601, 25.126102>,  <43.301270, 38.213322, 25.235897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958607, 38.038601, 25.126102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475018, -0.460339, -0.749964,
		0.201227, -0.772849, 0.601841,
		-0.856660, -0.436798, -0.274484,
		42.701611, 37.907562, 25.043756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448887, 37.484482, 25.142885>,  <43.301270, 38.213322, 25.235897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448887, 37.484482, 25.142885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118862, 37.554848, 24.928097>,  <42.920849, 37.597065, 24.799225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118862, 37.554848, 24.928097>,  <43.448887, 37.484482, 25.142885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118862, 37.554848, 24.928097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382862, -0.524867, -0.760218,
		-0.415569, -0.832808, 0.365696,
		-0.825057, 0.175912, -0.536969,
		42.871346, 37.607620, 24.767006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303780, 36.837166, 24.822563>,  <43.448887, 37.484482, 25.142885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303780, 36.837166, 24.822563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082111, 37.084316, 24.599451>,  <42.949108, 37.232609, 24.465584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082111, 37.084316, 24.599451>,  <43.303780, 36.837166, 24.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082111, 37.084316, 24.599451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357321, -0.428625, -0.829821,
		-0.751806, -0.659171, 0.016752,
		-0.554175, 0.617878, -0.557778,
		42.915859, 37.269680, 24.432117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782551, 36.411301, 24.431946>,  <43.303780, 36.837166, 24.822563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782551, 36.411301, 24.431946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875122, 36.758770, 24.256744>,  <42.930664, 36.967251, 24.151623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875122, 36.758770, 24.256744>,  <42.782551, 36.411301, 24.431946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875122, 36.758770, 24.256744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242460, -0.487519, -0.838772,
		-0.942155, 0.087914, -0.323442,
		0.231424, 0.868675, -0.438003,
		42.944550, 37.019371, 24.125343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472683, 36.441509, 23.736506>,  <42.782551, 36.411301, 24.431946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472683, 36.441509, 23.736506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768284, 36.708988, 23.703745>,  <42.945644, 36.869476, 23.684088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768284, 36.708988, 23.703745>,  <42.472683, 36.441509, 23.736506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768284, 36.708988, 23.703745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217292, -0.351664, -0.910558,
		-0.637695, 0.655111, -0.405186,
		0.739006, 0.668702, -0.081904,
		42.989986, 36.909599, 23.679174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364662, 36.866299, 23.109877>,  <42.472683, 36.441509, 23.736506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364662, 36.866299, 23.109877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749584, 36.883389, 23.217314>,  <42.980537, 36.893642, 23.281776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749584, 36.883389, 23.217314>,  <42.364662, 36.866299, 23.109877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749584, 36.883389, 23.217314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270469, -0.253881, -0.928650,
		0.028513, 0.966291, -0.255867,
		0.962306, 0.042726, 0.268591,
		43.038277, 36.896206, 23.297892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736889, 37.191254, 22.536037>,  <42.364662, 36.866299, 23.109877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736889, 37.191254, 22.536037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016350, 37.002926, 22.751520>,  <43.184029, 36.889931, 22.880810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016350, 37.002926, 22.751520>,  <42.736889, 37.191254, 22.536037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016350, 37.002926, 22.751520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423300, -0.335011, -0.841775,
		0.576798, 0.816147, -0.034760,
		0.698657, -0.470820, 0.538709,
		43.225948, 36.861679, 22.913134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288254, 37.198647, 22.129715>,  <42.736889, 37.191254, 22.536037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288254, 37.198647, 22.129715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365700, 36.907154, 22.392458>,  <43.412167, 36.732258, 22.550104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365700, 36.907154, 22.392458>,  <43.288254, 37.198647, 22.129715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365700, 36.907154, 22.392458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522069, -0.490330, -0.697869,
		0.830636, 0.478044, 0.285512,
		0.193616, -0.728732, 0.656858,
		43.423786, 36.688534, 22.589516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898571, 37.049625, 21.977755>,  <43.288254, 37.198647, 22.129715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898571, 37.049625, 21.977755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810375, 36.720917, 22.187927>,  <43.757458, 36.523693, 22.314032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810375, 36.720917, 22.187927>,  <43.898571, 37.049625, 21.977755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810375, 36.720917, 22.187927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478361, -0.560560, -0.675975,
		0.850033, 0.102302, 0.516700,
		-0.220488, -0.821770, 0.525432,
		43.744228, 36.474384, 22.345556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541950, 36.695446, 22.083870>,  <43.898571, 37.049625, 21.977755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541950, 36.695446, 22.083870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239075, 36.434853, 22.102793>,  <44.057350, 36.278496, 22.114145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239075, 36.434853, 22.102793>,  <44.541950, 36.695446, 22.083870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239075, 36.434853, 22.102793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434543, -0.556472, -0.708175,
		0.487687, -0.515665, 0.704451,
		-0.757188, -0.651482, 0.047305,
		44.011917, 36.239407, 22.116983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832584, 36.138416, 21.837227>,  <44.541950, 36.695446, 22.083870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832584, 36.138416, 21.837227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464111, 35.982857, 21.842478>,  <44.243027, 35.889519, 21.845629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464111, 35.982857, 21.842478>,  <44.832584, 36.138416, 21.837227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464111, 35.982857, 21.842478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318847, -0.773726, -0.547435,
		0.223058, -0.500103, 0.836745,
		-0.921185, -0.388903, 0.013129,
		44.187756, 35.866184, 21.846416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925728, 35.380070, 21.977842>,  <44.832584, 36.138416, 21.837227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925728, 35.380070, 21.977842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569355, 35.439560, 21.806208>,  <44.355530, 35.475254, 21.703228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569355, 35.439560, 21.806208>,  <44.925728, 35.380070, 21.977842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569355, 35.439560, 21.806208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170569, -0.766087, -0.619691,
		-0.420879, -0.625294, 0.657167,
		-0.890936, 0.148723, -0.429085,
		44.302074, 35.484177, 21.677483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715900, 34.731091, 21.811289>,  <44.925728, 35.380070, 21.977842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715900, 34.731091, 21.811289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504398, 34.961975, 21.562372>,  <44.377499, 35.100506, 21.413021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504398, 34.961975, 21.562372>,  <44.715900, 34.731091, 21.811289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504398, 34.961975, 21.562372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345393, -0.523392, -0.778951,
		-0.775322, -0.626808, 0.077380,
		-0.528753, 0.577211, -0.622292,
		44.345772, 35.135139, 21.375685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242939, 34.875797, 21.212885>,  <44.715900, 34.731091, 21.811289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242939, 34.875797, 21.212885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616924, 34.736679, 21.240843>,  <45.841316, 34.653206, 21.257618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616924, 34.736679, 21.240843>,  <45.242939, 34.875797, 21.212885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616924, 34.736679, 21.240843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144341, -0.192985, 0.970527,
		-0.324061, -0.917492, -0.230635,
		0.934960, -0.347800, 0.069893,
		45.897411, 34.632339, 21.261810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216064, 34.256527, 21.529745>,  <45.242939, 34.875797, 21.212885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216064, 34.256527, 21.529745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574909, 34.414574, 21.608807>,  <45.790218, 34.509403, 21.656242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574909, 34.414574, 21.608807>,  <45.216064, 34.256527, 21.529745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574909, 34.414574, 21.608807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155717, -0.135880, 0.978411,
		0.413447, -0.908524, -0.060373,
		0.897114, 0.395120, 0.197652,
		45.844044, 34.533108, 21.668102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623878, 33.765083, 21.899780>,  <45.216064, 34.256527, 21.529745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623878, 33.765083, 21.899780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749821, 34.137253, 21.974812>,  <45.825386, 34.360554, 22.019831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749821, 34.137253, 21.974812>,  <45.623878, 33.765083, 21.899780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749821, 34.137253, 21.974812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016444, -0.192254, 0.981207,
		0.948998, -0.312021, -0.045232,
		0.314854, 0.930420, 0.187579,
		45.844276, 34.416378, 22.031086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129627, 33.632259, 22.422163>,  <45.623878, 33.765083, 21.899780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129627, 33.632259, 22.422163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029999, 34.018475, 22.452362>,  <45.970222, 34.250202, 22.470482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029999, 34.018475, 22.452362>,  <46.129627, 33.632259, 22.422163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029999, 34.018475, 22.452362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020379, -0.072710, 0.997145,
		0.968270, 0.249900, -0.001566,
		-0.249072, 0.965538, 0.075496,
		45.955276, 34.308136, 22.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.598820, 33.898323, 22.933256>,  <46.129627, 33.632259, 22.422163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.598820, 33.898323, 22.933256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270123, 34.126144, 22.925871>,  <46.072903, 34.262836, 22.921440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270123, 34.126144, 22.925871>,  <46.598820, 33.898323, 22.933256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270123, 34.126144, 22.925871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036968, 0.085608, 0.995643,
		0.568657, 0.817481, -0.091403,
		-0.821744, 0.569558, -0.018461,
		46.023598, 34.297012, 22.920332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.659866, 34.259144, 23.481600>,  <46.598820, 33.898323, 22.933256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.659866, 34.259144, 23.481600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276180, 34.349792, 23.414013>,  <46.045967, 34.404182, 23.373461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276180, 34.349792, 23.414013>,  <46.659866, 34.259144, 23.481600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276180, 34.349792, 23.414013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187502, -0.062759, 0.980257,
		0.211545, 0.971958, 0.102691,
		-0.959214, 0.226623, -0.168968,
		45.988415, 34.417778, 23.363323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470139, 34.819481, 23.938822>,  <46.659866, 34.259144, 23.481600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470139, 34.819481, 23.938822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124073, 34.642605, 23.844200>,  <45.916431, 34.536480, 23.787428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124073, 34.642605, 23.844200>,  <46.470139, 34.819481, 23.938822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124073, 34.642605, 23.844200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218931, -0.091338, 0.971456,
		-0.451172, 0.892260, -0.017786,
		-0.865166, -0.442188, -0.236552,
		45.864525, 34.509949, 23.773235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887878, 35.292683, 24.186110>,  <46.470139, 34.819481, 23.938822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887878, 35.292683, 24.186110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723053, 34.931145, 24.140039>,  <45.624157, 34.714222, 24.112398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723053, 34.931145, 24.140039>,  <45.887878, 35.292683, 24.186110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723053, 34.931145, 24.140039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330344, 0.030395, 0.943371,
		-0.849161, 0.426777, -0.311105,
		-0.412066, -0.903846, -0.115173,
		45.599434, 34.659992, 24.105488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321083, 35.456287, 24.448338>,  <45.887878, 35.292683, 24.186110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321083, 35.456287, 24.448338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313282, 35.056408, 24.442360>,  <45.308601, 34.816479, 24.438772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313282, 35.056408, 24.442360>,  <45.321083, 35.456287, 24.448338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313282, 35.056408, 24.442360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422347, -0.005313, 0.906419,
		-0.906224, 0.023990, -0.422116,
		-0.019502, -0.999698, -0.014946,
		45.307430, 34.756500, 24.437876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532349, 35.176960, 24.691744>,  <45.321083, 35.456287, 24.448338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532349, 35.176960, 24.691744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827641, 34.912262, 24.744072>,  <45.004814, 34.753445, 24.775469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827641, 34.912262, 24.744072>,  <44.532349, 35.176960, 24.691744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827641, 34.912262, 24.744072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295977, -0.143496, 0.944355,
		-0.606148, -0.735870, -0.301794,
		0.738229, -0.661743, 0.130821,
		45.049110, 34.713737, 24.783318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253922, 34.731262, 25.148420>,  <44.532349, 35.176960, 24.691744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253922, 34.731262, 25.148420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627495, 34.593193, 25.185587>,  <44.851639, 34.510353, 25.207888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627495, 34.593193, 25.185587>,  <44.253922, 34.731262, 25.148420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627495, 34.593193, 25.185587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204087, -0.301475, 0.931376,
		-0.293444, -0.888813, -0.351998,
		0.933938, -0.345145, 0.092929,
		44.907673, 34.489643, 25.213463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255848, 33.925106, 25.251413>,  <44.253922, 34.731262, 25.148420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255848, 33.925106, 25.251413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570599, 34.107349, 25.417908>,  <44.759449, 34.216694, 25.517805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570599, 34.107349, 25.417908>,  <44.255848, 33.925106, 25.251413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570599, 34.107349, 25.417908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351318, -0.223796, 0.909115,
		0.507349, -0.861591, -0.016037,
		0.786875, 0.455605, 0.416235,
		44.806660, 34.244030, 25.542778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583752, 33.504681, 25.773235>,  <44.255848, 33.925106, 25.251413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583752, 33.504681, 25.773235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683281, 33.878838, 25.873734>,  <44.743000, 34.103333, 25.934032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683281, 33.878838, 25.873734>,  <44.583752, 33.504681, 25.773235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683281, 33.878838, 25.873734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370581, -0.147723, 0.916978,
		0.894850, -0.321274, 0.309882,
		0.248825, 0.935393, 0.251248,
		44.757927, 34.159454, 25.949108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786934, 33.464573, 26.489803>,  <44.583752, 33.504681, 25.773235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786934, 33.464573, 26.489803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701214, 33.849983, 26.425692>,  <44.649780, 34.081230, 26.387224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701214, 33.849983, 26.425692>,  <44.786934, 33.464573, 26.489803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701214, 33.849983, 26.425692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523969, 0.025084, 0.851368,
		0.824337, 0.266431, 0.499483,
		-0.214302, 0.963528, -0.160279,
		44.636925, 34.139042, 26.377607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815144, 33.744804, 27.145384>,  <44.786934, 33.464573, 26.489803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815144, 33.744804, 27.145384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650150, 34.055935, 26.955709>,  <44.551155, 34.242611, 26.841906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650150, 34.055935, 26.955709>,  <44.815144, 33.744804, 27.145384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650150, 34.055935, 26.955709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583513, 0.174132, 0.793216,
		0.699552, 0.603878, 0.382044,
		-0.412480, 0.777823, -0.474185,
		44.526405, 34.289284, 26.813454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798306, 34.297527, 27.627811>,  <44.815144, 33.744804, 27.145384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798306, 34.297527, 27.627811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534554, 34.397926, 27.344343>,  <44.376301, 34.458164, 27.174263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534554, 34.397926, 27.344343>,  <44.798306, 34.297527, 27.627811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534554, 34.397926, 27.344343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660321, 0.257306, 0.705528,
		0.359430, 0.933164, -0.003926,
		-0.659384, 0.250995, -0.708671,
		44.336739, 34.473225, 27.131742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529491, 34.932014, 27.834326>,  <44.798306, 34.297527, 27.627811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529491, 34.932014, 27.834326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244366, 34.782211, 27.597130>,  <44.073292, 34.692329, 27.454813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244366, 34.782211, 27.597130>,  <44.529491, 34.932014, 27.834326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244366, 34.782211, 27.597130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680443, 0.164373, 0.714128,
		-0.169978, 0.912536, -0.372002,
		-0.712815, -0.374512, -0.592989,
		44.030521, 34.669857, 27.419233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038368, 35.467434, 27.826160>,  <44.529491, 34.932014, 27.834326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038368, 35.467434, 27.826160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880833, 35.107666, 27.750332>,  <43.786312, 34.891804, 27.704834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880833, 35.107666, 27.750332>,  <44.038368, 35.467434, 27.826160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880833, 35.107666, 27.750332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737541, 0.186133, 0.649144,
		-0.548567, 0.395474, -0.736665,
		-0.393838, -0.899419, -0.189572,
		43.762680, 34.837841, 27.693460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401188, 35.664776, 27.508169>,  <44.038368, 35.467434, 27.826160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401188, 35.664776, 27.508169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386196, 35.303749, 27.679737>,  <43.377201, 35.087132, 27.782677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386196, 35.303749, 27.679737>,  <43.401188, 35.664776, 27.508169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386196, 35.303749, 27.679737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821755, 0.272063, 0.500701,
		-0.568608, -0.333701, -0.751883,
		-0.037475, -0.902566, 0.428917,
		43.374954, 35.032978, 27.808413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754829, 35.633583, 27.634809>,  <43.401188, 35.664776, 27.508169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754829, 35.633583, 27.634809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884499, 35.306896, 27.825758>,  <42.962299, 35.110886, 27.940327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884499, 35.306896, 27.825758>,  <42.754829, 35.633583, 27.634809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884499, 35.306896, 27.825758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693739, 0.137832, 0.706914,
		-0.643147, -0.560333, -0.521908,
		0.324172, -0.816718, 0.477372,
		42.981750, 35.061882, 27.968969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145374, 35.213432, 27.950058>,  <42.754829, 35.633583, 27.634809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145374, 35.213432, 27.950058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468864, 35.131454, 28.170589>,  <42.662960, 35.082268, 28.302908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468864, 35.131454, 28.170589>,  <42.145374, 35.213432, 27.950058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468864, 35.131454, 28.170589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569406, -0.037814, 0.821187,
		-0.147455, -0.978041, -0.147281,
		0.808724, -0.204951, 0.551326,
		42.711483, 35.069969, 28.335987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870953, 34.859909, 28.439318>,  <42.145374, 35.213432, 27.950058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870953, 34.859909, 28.439318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220993, 34.951778, 28.609701>,  <42.431019, 35.006901, 28.711931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220993, 34.951778, 28.609701>,  <41.870953, 34.859909, 28.439318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220993, 34.951778, 28.609701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453072, 0.079535, 0.887919,
		0.170056, -0.970012, 0.173662,
		0.875104, 0.229678, 0.425959,
		42.483524, 35.020679, 28.737490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767326, 34.648582, 29.115599>,  <41.870953, 34.859909, 28.439318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767326, 34.648582, 29.115599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086815, 34.884556, 29.162975>,  <42.278507, 35.026138, 29.191401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086815, 34.884556, 29.162975>,  <41.767326, 34.648582, 29.115599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086815, 34.884556, 29.162975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289207, 0.203779, 0.935326,
		0.527644, -0.781315, 0.333374,
		0.798719, 0.589933, 0.118439,
		42.326431, 35.061535, 29.198507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986389, 34.539917, 29.793970>,  <41.767326, 34.648582, 29.115599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986389, 34.539917, 29.793970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139202, 34.894497, 29.689468>,  <42.230888, 35.107246, 29.626768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139202, 34.894497, 29.689468>,  <41.986389, 34.539917, 29.793970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139202, 34.894497, 29.689468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328701, 0.394548, 0.858072,
		0.863718, -0.241935, 0.442107,
		0.382030, 0.886453, -0.261254,
		42.253811, 35.160435, 29.611092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334171, 34.790436, 30.410530>,  <41.986389, 34.539917, 29.793970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334171, 34.790436, 30.410530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261185, 35.111473, 30.183357>,  <42.217392, 35.304096, 30.047054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261185, 35.111473, 30.183357>,  <42.334171, 34.790436, 30.410530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261185, 35.111473, 30.183357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305039, 0.502915, 0.808720,
		0.934697, 0.320803, 0.153060,
		-0.182463, 0.802597, -0.567931,
		42.206444, 35.352253, 30.012978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710491, 35.380619, 30.665380>,  <42.334171, 34.790436, 30.410530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710491, 35.380619, 30.665380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417686, 35.562172, 30.462147>,  <42.242004, 35.671104, 30.340206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417686, 35.562172, 30.462147>,  <42.710491, 35.380619, 30.665380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417686, 35.562172, 30.462147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177879, 0.592571, 0.785632,
		0.657664, 0.665467, -0.353031,
		-0.732009, 0.453886, -0.508086,
		42.198082, 35.698338, 30.309721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890003, 36.074127, 30.666527>,  <42.710491, 35.380619, 30.665380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890003, 36.074127, 30.666527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493855, 36.083038, 30.611872>,  <42.256165, 36.088387, 30.579079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493855, 36.083038, 30.611872>,  <42.890003, 36.074127, 30.666527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493855, 36.083038, 30.611872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082916, 0.694909, 0.714301,
		0.110862, 0.718753, -0.686370,
		-0.990371, 0.022278, -0.136635,
		42.196743, 36.089722, 30.570881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801659, 36.701714, 30.969408>,  <42.890003, 36.074127, 30.666527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801659, 36.701714, 30.969408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443001, 36.529716, 30.927208>,  <42.227806, 36.426517, 30.901888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443001, 36.529716, 30.927208>,  <42.801659, 36.701714, 30.969408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443001, 36.529716, 30.927208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310168, 0.440013, 0.842724,
		-0.315947, 0.788348, -0.527907,
		-0.896646, -0.429996, -0.105499,
		42.174007, 36.400719, 30.895557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405342, 37.194386, 31.244753>,  <42.801659, 36.701714, 30.969408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405342, 37.194386, 31.244753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175758, 36.867378, 31.225798>,  <42.038010, 36.671173, 31.214424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175758, 36.867378, 31.225798>,  <42.405342, 37.194386, 31.244753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175758, 36.867378, 31.225798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387704, 0.220314, 0.895069,
		-0.721291, 0.532102, -0.443404,
		-0.573956, -0.817514, -0.047388,
		42.003571, 36.622124, 31.211582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767792, 37.426949, 31.494781>,  <42.405342, 37.194386, 31.244753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767792, 37.426949, 31.494781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736626, 37.034832, 31.567408>,  <41.717926, 36.799564, 31.610983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736626, 37.034832, 31.567408>,  <41.767792, 37.426949, 31.494781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736626, 37.034832, 31.567408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100031, 0.188885, 0.976891,
		-0.991929, 0.057956, -0.112777,
		-0.077919, -0.980287, 0.181563,
		41.713249, 36.740746, 31.621876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186466, 37.439091, 31.930716>,  <41.767792, 37.426949, 31.494781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186466, 37.439091, 31.930716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387680, 37.098114, 31.987703>,  <41.508408, 36.893528, 32.021896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387680, 37.098114, 31.987703>,  <41.186466, 37.439091, 31.930716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387680, 37.098114, 31.987703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131273, 0.087571, 0.987471,
		-0.854238, -0.515436, -0.067851,
		0.503036, -0.852442, 0.142469,
		41.538589, 36.842381, 32.030445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775631, 37.129017, 32.361172>,  <41.186466, 37.439091, 31.930716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775631, 37.129017, 32.361172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092747, 36.888763, 32.402596>,  <41.283016, 36.744610, 32.427452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092747, 36.888763, 32.402596>,  <40.775631, 37.129017, 32.361172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092747, 36.888763, 32.402596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276686, -0.203262, 0.939217,
		-0.543077, -0.773255, -0.327331,
		0.792788, -0.600635, 0.103562,
		41.330582, 36.708572, 32.433662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599762, 36.355732, 32.524643>,  <40.775631, 37.129017, 32.361172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599762, 36.355732, 32.524643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975742, 36.407104, 32.651127>,  <41.201332, 36.437927, 32.727016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975742, 36.407104, 32.651127>,  <40.599762, 36.355732, 32.524643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975742, 36.407104, 32.651127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231682, -0.440228, 0.867481,
		0.250615, -0.888654, -0.384040,
		0.939955, 0.128428, 0.316213,
		41.257729, 36.445633, 32.745991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906139, 35.646500, 32.705074>,  <40.599762, 36.355732, 32.524643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906139, 35.646500, 32.705074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103874, 35.928200, 32.908905>,  <41.222515, 36.097218, 33.031204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103874, 35.928200, 32.908905>,  <40.906139, 35.646500, 32.705074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103874, 35.928200, 32.908905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321284, -0.396681, 0.859896,
		0.807719, -0.588796, 0.030170,
		0.494335, 0.704247, 0.509577,
		41.252174, 36.139473, 33.061779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198601, 35.280315, 33.209667>,  <40.906139, 35.646500, 32.705074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198601, 35.280315, 33.209667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217262, 35.659115, 33.336796>,  <41.228458, 35.886395, 33.413074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217262, 35.659115, 33.336796>,  <41.198601, 35.280315, 33.209667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217262, 35.659115, 33.336796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116228, -0.310861, 0.943322,
		0.992126, -0.080950, 0.095565,
		0.046655, 0.947002, 0.317822,
		41.231258, 35.943214, 33.432144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575562, 35.286503, 33.749058>,  <41.198601, 35.280315, 33.209667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575562, 35.286503, 33.749058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414257, 35.646828, 33.813450>,  <41.317474, 35.863022, 33.852085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414257, 35.646828, 33.813450>,  <41.575562, 35.286503, 33.749058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414257, 35.646828, 33.813450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105274, -0.220414, 0.969709,
		0.909010, 0.374097, 0.183717,
		-0.403259, 0.900816, 0.160976,
		41.293278, 35.917072, 33.861744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981777, 35.581192, 34.250278>,  <41.575562, 35.286503, 33.749058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981777, 35.581192, 34.250278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612411, 35.734287, 34.261715>,  <41.390793, 35.826145, 34.268578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612411, 35.734287, 34.261715>,  <41.981777, 35.581192, 34.250278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612411, 35.734287, 34.261715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036160, -0.160915, 0.986306,
		0.382096, 0.909736, 0.162431,
		-0.923415, 0.382737, 0.028588,
		41.335388, 35.849110, 34.270290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902065, 35.965092, 34.893986>,  <41.981777, 35.581192, 34.250278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902065, 35.965092, 34.893986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523716, 35.915405, 34.774059>,  <41.296707, 35.885593, 34.702103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523716, 35.915405, 34.774059>,  <41.902065, 35.965092, 34.893986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523716, 35.915405, 34.774059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266505, -0.229881, 0.936018,
		-0.185189, 0.965260, 0.184335,
		-0.945875, -0.124214, -0.299818,
		41.239952, 35.878139, 34.684113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495564, 36.347679, 35.326077>,  <41.902065, 35.965092, 34.893986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495564, 36.347679, 35.326077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268375, 36.055275, 35.174793>,  <41.132065, 35.879833, 35.084023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268375, 36.055275, 35.174793>,  <41.495564, 36.347679, 35.326077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268375, 36.055275, 35.174793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255306, -0.280378, 0.925315,
		-0.782453, 0.622107, -0.027385,
		-0.567966, -0.731007, -0.378210,
		41.097984, 35.835972, 35.061329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985249, 36.371231, 35.876854>,  <41.495564, 36.347679, 35.326077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985249, 36.371231, 35.876854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859398, 36.049709, 35.674900>,  <40.783886, 35.856796, 35.553730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859398, 36.049709, 35.674900>,  <40.985249, 36.371231, 35.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859398, 36.049709, 35.674900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264753, -0.436474, 0.859882,
		-0.911545, 0.404213, -0.075482,
		-0.314630, -0.803805, -0.504882,
		40.765011, 35.808567, 35.523434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308685, 36.086475, 35.946388>,  <40.985249, 36.371231, 35.876854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308685, 36.086475, 35.946388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530621, 35.765888, 35.857117>,  <40.663780, 35.573536, 35.803555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530621, 35.765888, 35.857117>,  <40.308685, 36.086475, 35.946388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530621, 35.765888, 35.857117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334508, -0.460526, 0.822204,
		-0.761749, -0.381534, -0.523613,
		0.554836, -0.801466, -0.223179,
		40.697071, 35.525448, 35.790161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869865, 35.564049, 36.116489>,  <40.308685, 36.086475, 35.946388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869865, 35.564049, 36.116489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215374, 35.363312, 36.098385>,  <40.422680, 35.242870, 36.087521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215374, 35.363312, 36.098385>,  <39.869865, 35.564049, 36.116489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215374, 35.363312, 36.098385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229284, -0.471449, 0.851566,
		-0.448686, -0.725186, -0.522290,
		0.863777, -0.501838, -0.045259,
		40.474506, 35.212761, 36.084808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670685, 34.970692, 36.128086>,  <39.869865, 35.564049, 36.116489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670685, 34.970692, 36.128086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051628, 34.928234, 36.242451>,  <40.280193, 34.902760, 36.311069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051628, 34.928234, 36.242451>,  <39.670685, 34.970692, 36.128086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051628, 34.928234, 36.242451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298165, -0.521143, 0.799692,
		0.064122, -0.846844, -0.527962,
		0.952358, -0.106142, 0.285916,
		40.337334, 34.896393, 36.328224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636005, 34.343510, 36.239616>,  <39.670685, 34.970692, 36.128086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636005, 34.343510, 36.239616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923119, 34.525948, 36.450050>,  <40.095387, 34.635410, 36.576309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923119, 34.525948, 36.450050>,  <39.636005, 34.343510, 36.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923119, 34.525948, 36.450050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360807, -0.402558, 0.841288,
		0.595487, -0.793677, -0.124388,
		0.717784, 0.456096, 0.526082,
		40.138454, 34.662777, 36.607876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879452, 33.891247, 36.637268>,  <39.636005, 34.343510, 36.239616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879452, 33.891247, 36.637268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012268, 34.213387, 36.833702>,  <40.091957, 34.406670, 36.951565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012268, 34.213387, 36.833702>,  <39.879452, 33.891247, 36.637268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012268, 34.213387, 36.833702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261671, -0.421550, 0.868230,
		0.906245, -0.416789, 0.070765,
		0.332038, 0.805346, 0.491089,
		40.111881, 34.454990, 36.981030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310108, 33.582848, 37.202286>,  <39.879452, 33.891247, 36.637268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310108, 33.582848, 37.202286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286674, 33.958752, 37.337002>,  <40.272614, 34.184292, 37.417831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286674, 33.958752, 37.337002>,  <40.310108, 33.582848, 37.202286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286674, 33.958752, 37.337002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274564, -0.339523, 0.899633,
		0.959783, -0.039770, 0.277913,
		-0.058580, 0.939757, 0.336787,
		40.269100, 34.240677, 37.438038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589020, 33.601887, 37.900017>,  <40.310108, 33.582848, 37.202286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589020, 33.601887, 37.900017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318562, 33.891815, 37.847172>,  <40.156284, 34.065773, 37.815464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318562, 33.891815, 37.847172>,  <40.589020, 33.601887, 37.900017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318562, 33.891815, 37.847172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442802, -0.256471, 0.859156,
		0.588853, 0.639417, 0.494365,
		-0.676150, 0.724823, -0.132111,
		40.115715, 34.109261, 37.807537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499264, 33.755783, 38.615513>,  <40.589020, 33.601887, 37.900017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499264, 33.755783, 38.615513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185154, 33.894138, 38.410103>,  <39.996689, 33.977150, 38.286858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185154, 33.894138, 38.410103>,  <40.499264, 33.755783, 38.615513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185154, 33.894138, 38.410103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575387, -0.101393, 0.811572,
		0.228642, 0.932782, 0.278639,
		-0.785273, 0.345885, -0.513528,
		39.949574, 33.997902, 38.256046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162361, 34.348518, 38.971313>,  <40.499264, 33.755783, 38.615513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162361, 34.348518, 38.971313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895283, 34.143944, 38.754936>,  <39.735035, 34.021198, 38.625111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895283, 34.143944, 38.754936>,  <40.162361, 34.348518, 38.971313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895283, 34.143944, 38.754936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627295, -0.004744, 0.778767,
		-0.400859, 0.859306, -0.317656,
		-0.667692, -0.511440, -0.540940,
		39.694977, 33.990513, 38.592655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449635, 34.679249, 39.093056>,  <40.162361, 34.348518, 38.971313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449635, 34.679249, 39.093056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380676, 34.308693, 38.959141>,  <39.339302, 34.086361, 38.878792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380676, 34.308693, 38.959141>,  <39.449635, 34.679249, 39.093056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380676, 34.308693, 38.959141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736555, -0.104433, 0.668267,
		-0.654038, 0.361796, -0.664332,
		-0.172398, -0.926389, -0.334786,
		39.328957, 34.030777, 38.858704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815342, 34.700439, 38.819725>,  <39.449635, 34.679249, 39.093056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815342, 34.700439, 38.819725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889362, 34.320385, 38.920120>,  <38.933773, 34.092350, 38.980358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889362, 34.320385, 38.920120>,  <38.815342, 34.700439, 38.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889362, 34.320385, 38.920120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614943, 0.087263, 0.783728,
		-0.766552, -0.299372, -0.568133,
		0.185049, -0.950138, 0.250988,
		38.944878, 34.035343, 38.995415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154858, 34.446583, 39.000977>,  <38.815342, 34.700439, 38.819725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154858, 34.446583, 39.000977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437870, 34.199497, 39.138279>,  <38.607677, 34.051247, 39.220661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437870, 34.199497, 39.138279>,  <38.154858, 34.446583, 39.000977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437870, 34.199497, 39.138279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498671, -0.092254, 0.861868,
		-0.500724, -0.780971, -0.373310,
		0.707533, -0.617717, 0.343253,
		38.650131, 34.014183, 39.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761242, 34.091629, 39.373016>,  <38.154858, 34.446583, 39.000977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761242, 34.091629, 39.373016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115314, 34.036736, 39.550831>,  <38.327759, 34.003799, 39.657520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115314, 34.036736, 39.550831>,  <37.761242, 34.091629, 39.373016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115314, 34.036736, 39.550831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414106, 0.203093, 0.887282,
		-0.212046, -0.969495, 0.122946,
		0.885185, -0.137232, 0.444539,
		38.380871, 33.995567, 39.684193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616295, 33.750492, 40.004242>,  <37.761242, 34.091629, 39.373016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616295, 33.750492, 40.004242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985466, 33.895844, 40.055080>,  <38.206970, 33.983055, 40.085583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985466, 33.895844, 40.055080>,  <37.616295, 33.750492, 40.004242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985466, 33.895844, 40.055080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218653, 0.223091, 0.949959,
		0.316841, -0.904537, 0.285351,
		0.922932, 0.363379, 0.127096,
		38.262344, 34.004856, 40.093208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772079, 33.453308, 40.680126>,  <37.616295, 33.750492, 40.004242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772079, 33.453308, 40.680126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013847, 33.759483, 40.591785>,  <38.158909, 33.943188, 40.538780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013847, 33.759483, 40.591785>,  <37.772079, 33.453308, 40.680126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013847, 33.759483, 40.591785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099701, 0.347717, 0.932284,
		0.790401, -0.541475, 0.286483,
		0.604423, 0.765440, -0.220850,
		38.195175, 33.989117, 40.525532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335949, 33.482330, 41.197342>,  <37.772079, 33.453308, 40.680126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335949, 33.482330, 41.197342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331188, 33.862061, 41.071709>,  <38.328331, 34.089897, 40.996330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331188, 33.862061, 41.071709>,  <38.335949, 33.482330, 41.197342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331188, 33.862061, 41.071709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042477, 0.313341, 0.948690,
		0.999026, 0.024630, 0.036595,
		-0.011900, 0.949321, -0.314082,
		38.327618, 34.146858, 40.977486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776409, 33.818390, 41.641819>,  <38.335949, 33.482330, 41.197342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776409, 33.818390, 41.641819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535736, 34.097115, 41.485645>,  <38.391331, 34.264347, 41.391941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535736, 34.097115, 41.485645>,  <38.776409, 33.818390, 41.641819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535736, 34.097115, 41.485645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139636, 0.389519, 0.910372,
		0.786436, 0.602272, -0.137067,
		-0.601682, 0.696809, -0.390431,
		38.355232, 34.306156, 41.368515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978050, 34.419788, 41.944057>,  <38.776409, 33.818390, 41.641819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978050, 34.419788, 41.944057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606613, 34.505520, 41.822880>,  <38.383751, 34.556961, 41.750172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606613, 34.505520, 41.822880>,  <38.978050, 34.419788, 41.944057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606613, 34.505520, 41.822880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175497, 0.465661, 0.867387,
		0.326980, 0.858616, -0.394795,
		-0.928593, 0.214333, -0.302947,
		38.328033, 34.569820, 41.731995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829845, 35.097733, 42.150696>,  <38.978050, 34.419788, 41.944057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829845, 35.097733, 42.150696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462341, 34.947971, 42.100567>,  <38.241840, 34.858116, 42.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462341, 34.947971, 42.100567>,  <38.829845, 35.097733, 42.150696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462341, 34.947971, 42.100567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289742, 0.423742, 0.858191,
		-0.268205, 0.824782, -0.497797,
		-0.918758, -0.374403, -0.125324,
		38.186714, 34.835651, 42.062969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225090, 35.619305, 41.948627>,  <38.829845, 35.097733, 42.150696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225090, 35.619305, 41.948627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107113, 35.313316, 42.177654>,  <38.036327, 35.129723, 42.315071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107113, 35.313316, 42.177654>,  <38.225090, 35.619305, 41.948627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107113, 35.313316, 42.177654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384945, 0.643569, 0.661540,
		-0.874543, -0.025288, -0.484288,
		-0.294944, -0.764970, 0.572563,
		38.018631, 35.083824, 42.349422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487362, 35.623383, 42.007286>,  <38.225090, 35.619305, 41.948627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487362, 35.623383, 42.007286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674072, 35.447369, 42.314137>,  <37.786098, 35.341759, 42.498249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674072, 35.447369, 42.314137>,  <37.487362, 35.623383, 42.007286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674072, 35.447369, 42.314137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578557, 0.504111, 0.641204,
		-0.668873, -0.743127, -0.019280,
		0.466777, -0.440039, 0.767128,
		37.814106, 35.315357, 42.544273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988926, 35.363369, 42.578220>,  <37.487362, 35.623383, 42.007286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988926, 35.363369, 42.578220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344826, 35.500134, 42.699177>,  <37.558365, 35.582191, 42.771751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344826, 35.500134, 42.699177>,  <36.988926, 35.363369, 42.578220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344826, 35.500134, 42.699177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451524, 0.562244, 0.692826,
		0.066864, -0.752981, 0.654636,
		0.889750, 0.341909, 0.302395,
		37.611752, 35.602707, 42.789894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553116, 35.117321, 43.028202>,  <36.988926, 35.363369, 42.578220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553116, 35.117321, 43.028202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487579, 34.994308, 43.403133>,  <36.448257, 34.920502, 43.628090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487579, 34.994308, 43.403133>,  <36.553116, 35.117321, 43.028202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487579, 34.994308, 43.403133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401132, -0.888835, -0.221509,
		0.901249, 0.339700, 0.268986,
		-0.163837, -0.307533, 0.937326,
		36.438427, 34.902050, 43.684330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192436, 34.865807, 43.267738>,  <36.553116, 35.117321, 43.028202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192436, 34.865807, 43.267738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887897, 34.704830, 43.471069>,  <36.705173, 34.608246, 43.593067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887897, 34.704830, 43.471069>,  <37.192436, 34.865807, 43.267738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887897, 34.704830, 43.471069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367281, -0.913810, -0.173366,
		0.534287, 0.054709, 0.843531,
		-0.761343, -0.402440, 0.508330,
		36.659496, 34.584099, 43.623569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462200, 34.291580, 42.888779>,  <37.192436, 34.865807, 43.267738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462200, 34.291580, 42.888779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456661, 34.666332, 42.749031>,  <37.453339, 34.891186, 42.665184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456661, 34.666332, 42.749031>,  <37.462200, 34.291580, 42.888779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456661, 34.666332, 42.749031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050583, -0.348294, -0.936019,
		-0.998624, -0.030635, -0.042567,
		-0.013849, 0.936884, -0.349365,
		37.452507, 34.947399, 42.644222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876728, 34.366474, 42.346527>,  <37.462200, 34.291580, 42.888779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876728, 34.366474, 42.346527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190609, 34.611439, 42.308174>,  <37.378937, 34.758415, 42.285160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190609, 34.611439, 42.308174>,  <36.876728, 34.366474, 42.346527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190609, 34.611439, 42.308174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159572, -0.349049, -0.923418,
		-0.598979, 0.709310, -0.371623,
		0.784705, 0.612409, -0.095887,
		37.426022, 34.795162, 42.279408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070026, 34.286743, 41.679592>,  <36.876728, 34.366474, 42.346527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070026, 34.286743, 41.679592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377594, 34.523037, 41.777405>,  <37.562134, 34.664814, 41.836094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377594, 34.523037, 41.777405>,  <37.070026, 34.286743, 41.679592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377594, 34.523037, 41.777405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330480, -0.039821, -0.942973,
		-0.547306, 0.805885, -0.225844,
		0.768921, 0.590731, 0.244535,
		37.608269, 34.700256, 41.850765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145302, 34.915844, 41.238590>,  <37.070026, 34.286743, 41.679592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145302, 34.915844, 41.238590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503452, 34.812267, 41.383507>,  <37.718342, 34.750122, 41.470455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503452, 34.812267, 41.383507>,  <37.145302, 34.915844, 41.238590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503452, 34.812267, 41.383507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297022, -0.258892, -0.919104,
		0.331791, 0.930550, -0.154893,
		0.895373, -0.258943, 0.362292,
		37.772064, 34.734585, 41.492195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640842, 35.221889, 40.760380>,  <37.145302, 34.915844, 41.238590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640842, 35.221889, 40.760380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859314, 34.950077, 40.956310>,  <37.990398, 34.786991, 41.073868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859314, 34.950077, 40.956310>,  <37.640842, 35.221889, 40.760380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859314, 34.950077, 40.956310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447276, -0.257832, -0.856427,
		0.708259, 0.686850, 0.163114,
		0.546181, -0.679529, 0.489823,
		38.023167, 34.746220, 41.103256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363068, 35.237995, 40.408085>,  <37.640842, 35.221889, 40.760380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363068, 35.237995, 40.408085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355976, 34.893299, 40.610901>,  <38.351723, 34.686481, 40.732590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355976, 34.893299, 40.610901>,  <38.363068, 35.237995, 40.408085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355976, 34.893299, 40.610901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521832, -0.440543, -0.730488,
		0.852864, 0.251641, 0.457493,
		-0.017724, -0.861742, 0.507038,
		38.350658, 34.634777, 40.763012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088707, 34.983742, 40.325623>,  <38.363068, 35.237995, 40.408085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088707, 34.983742, 40.325623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836357, 34.683147, 40.402851>,  <38.684948, 34.502792, 40.449188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836357, 34.683147, 40.402851>,  <39.088707, 34.983742, 40.325623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836357, 34.683147, 40.402851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283117, -0.454644, -0.844479,
		0.722390, -0.478095, 0.499579,
		-0.630871, -0.751482, 0.193073,
		38.647095, 34.457703, 40.460773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494476, 34.323170, 40.249809>,  <39.088707, 34.983742, 40.325623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494476, 34.323170, 40.249809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108665, 34.228100, 40.203854>,  <38.877178, 34.171059, 40.176281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108665, 34.228100, 40.203854>,  <39.494476, 34.323170, 40.249809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108665, 34.228100, 40.203854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219733, -0.481620, -0.848387,
		0.146308, -0.843536, 0.516760,
		-0.964526, -0.237675, -0.114888,
		38.819309, 34.156796, 40.169388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495453, 33.599018, 40.106571>,  <39.494476, 34.323170, 40.249809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495453, 33.599018, 40.106571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169632, 33.764450, 39.943867>,  <38.974140, 33.863708, 39.846245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169632, 33.764450, 39.943867>,  <39.495453, 33.599018, 40.106571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169632, 33.764450, 39.943867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242895, -0.393611, -0.886607,
		-0.526794, -0.820987, 0.220158,
		-0.814549, 0.413583, -0.406766,
		38.925266, 33.888523, 39.821838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301437, 33.078419, 39.701992>,  <39.495453, 33.599018, 40.106571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301437, 33.078419, 39.701992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135567, 33.410179, 39.552250>,  <39.036045, 33.609234, 39.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135567, 33.410179, 39.552250>,  <39.301437, 33.078419, 39.701992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135567, 33.410179, 39.552250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271753, -0.279743, -0.920812,
		-0.868441, -0.483575, -0.109387,
		-0.414681, 0.829397, -0.374353,
		39.011162, 33.658997, 39.439945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093201, 32.826195, 39.148918>,  <39.301437, 33.078419, 39.701992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093201, 32.826195, 39.148918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051125, 33.219028, 39.086384>,  <39.025879, 33.454731, 39.048862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051125, 33.219028, 39.086384>,  <39.093201, 32.826195, 39.148918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051125, 33.219028, 39.086384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333381, -0.113281, -0.935962,
		-0.936906, -0.150571, -0.315494,
		-0.105189, 0.982087, -0.156331,
		39.019569, 33.513657, 39.039486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001228, 32.823334, 38.500965>,  <39.093201, 32.826195, 39.148918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001228, 32.823334, 38.500965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085419, 33.206619, 38.578442>,  <39.135933, 33.436592, 38.624928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085419, 33.206619, 38.578442>,  <39.001228, 32.823334, 38.500965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085419, 33.206619, 38.578442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526632, 0.055789, -0.848261,
		-0.823625, 0.280546, -0.492886,
		0.210478, 0.958218, 0.193694,
		39.148563, 33.494083, 38.636551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984489, 33.128311, 37.905777>,  <39.001228, 32.823334, 38.500965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984489, 33.128311, 37.905777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199684, 33.401733, 38.103088>,  <39.328800, 33.565788, 38.221474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199684, 33.401733, 38.103088>,  <38.984489, 33.128311, 37.905777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199684, 33.401733, 38.103088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564390, 0.142567, -0.813104,
		-0.626126, 0.715841, -0.309091,
		0.537987, 0.683554, 0.493279,
		39.361080, 33.606800, 38.251072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834042, 33.559052, 37.409100>,  <38.984489, 33.128311, 37.905777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834042, 33.559052, 37.409100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636948, 33.403725, 37.720592>,  <38.518692, 33.310528, 37.907486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636948, 33.403725, 37.720592>,  <38.834042, 33.559052, 37.409100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636948, 33.403725, 37.720592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470691, 0.871626, 0.136817,
		-0.731889, -0.299126, -0.612260,
		-0.492736, -0.388320, 0.778729,
		38.489128, 33.287228, 37.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981403, 34.382687, 37.517246>,  <38.834042, 33.559052, 37.409100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981403, 34.382687, 37.517246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270107, 34.301899, 37.782055>,  <39.443329, 34.253426, 37.940941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270107, 34.301899, 37.782055>,  <38.981403, 34.382687, 37.517246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270107, 34.301899, 37.782055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654473, 0.510406, -0.557808,
		-0.225241, 0.835879, 0.500573,
		0.721756, -0.201970, 0.662025,
		39.486633, 34.241306, 37.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306488, 35.065205, 37.783211>,  <38.981403, 34.382687, 37.517246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306488, 35.065205, 37.783211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555447, 34.752125, 37.782429>,  <39.704823, 34.564278, 37.781960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555447, 34.752125, 37.782429>,  <39.306488, 35.065205, 37.783211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555447, 34.752125, 37.782429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602660, 0.480823, -0.636875,
		0.499424, 0.395208, 0.770964,
		0.622396, -0.782700, -0.001959,
		39.742165, 34.517315, 37.781841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988342, 35.411484, 37.732239>,  <39.306488, 35.065205, 37.783211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988342, 35.411484, 37.732239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053497, 35.026604, 37.644939>,  <40.092590, 34.795673, 37.592560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053497, 35.026604, 37.644939>,  <39.988342, 35.411484, 37.732239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053497, 35.026604, 37.644939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501963, 0.271250, -0.821253,
		0.849413, 0.024217, 0.527173,
		0.162884, -0.962204, -0.218247,
		40.102364, 34.737942, 37.579464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744789, 35.447598, 37.616455>,  <39.988342, 35.411484, 37.732239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744789, 35.447598, 37.616455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581261, 35.130623, 37.435387>,  <40.483143, 34.940437, 37.326744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581261, 35.130623, 37.435387>,  <40.744789, 35.447598, 37.616455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581261, 35.130623, 37.435387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564136, 0.170465, -0.807894,
		0.717369, -0.585652, 0.377351,
		-0.408820, -0.792435, -0.452674,
		40.458614, 34.892891, 37.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287594, 35.007439, 37.320133>,  <40.744789, 35.447598, 37.616455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287594, 35.007439, 37.320133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948936, 34.960300, 37.112553>,  <40.745743, 34.932018, 36.988003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948936, 34.960300, 37.112553>,  <41.287594, 35.007439, 37.320133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948936, 34.960300, 37.112553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509285, 0.103460, -0.854356,
		0.154376, -0.987627, -0.027575,
		-0.846638, -0.117849, -0.518956,
		40.694946, 34.924946, 36.956867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593422, 34.781006, 36.636257>,  <41.287594, 35.007439, 37.320133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593422, 34.781006, 36.636257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206230, 34.819466, 36.543503>,  <40.973915, 34.842541, 36.487850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206230, 34.819466, 36.543503>,  <41.593422, 34.781006, 36.636257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206230, 34.819466, 36.543503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250343, 0.301532, -0.920004,
		-0.018536, -0.948596, -0.315947,
		-0.967980, 0.096148, -0.231885,
		40.915836, 34.848309, 36.473938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613483, 34.634300, 35.923786>,  <41.593422, 34.781006, 36.636257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613483, 34.634300, 35.923786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255333, 34.801926, 35.984035>,  <41.040443, 34.902500, 36.020184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255333, 34.801926, 35.984035>,  <41.613483, 34.634300, 35.923786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255333, 34.801926, 35.984035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008129, 0.322802, -0.946432,
		-0.445239, -0.848635, -0.285622,
		-0.895374, 0.419067, 0.150622,
		40.986721, 34.927647, 36.029221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206757, 34.418812, 35.364017>,  <41.613483, 34.634300, 35.923786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206757, 34.418812, 35.364017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051994, 34.760208, 35.503658>,  <40.959137, 34.965046, 35.587440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051994, 34.760208, 35.503658>,  <41.206757, 34.418812, 35.364017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051994, 34.760208, 35.503658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196460, 0.293594, -0.935524,
		-0.900950, -0.430539, 0.054084,
		-0.386901, 0.853486, 0.349097,
		40.935925, 35.016254, 35.608387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633595, 33.817440, 35.305088>,  <41.206757, 34.418812, 35.364017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633595, 33.817440, 35.305088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868359, 34.065365, 35.096710>,  <42.009216, 34.214119, 34.971684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868359, 34.065365, 35.096710>,  <41.633595, 33.817440, 35.305088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868359, 34.065365, 35.096710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415368, 0.321797, 0.850833,
		0.694990, -0.715741, -0.068584,
		0.586905, 0.619808, -0.520941,
		42.044430, 34.251308, 34.940430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427456, 33.268105, 35.842308>,  <41.633595, 33.817440, 35.305088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427456, 33.268105, 35.842308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731346, 33.428364, 36.047173>,  <41.913681, 33.524517, 36.170090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731346, 33.428364, 36.047173>,  <41.427456, 33.268105, 35.842308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731346, 33.428364, 36.047173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494970, -0.867109, -0.055916,
		0.421693, 0.295983, -0.857070,
		0.759723, 0.400645, 0.512157,
		41.959263, 33.548557, 36.200821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088840, 33.160652, 36.483894>,  <41.427456, 33.268105, 35.842308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088840, 33.160652, 36.483894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383572, 32.909969, 36.585335>,  <41.560410, 32.759560, 36.646202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383572, 32.909969, 36.585335>,  <41.088840, 33.160652, 36.483894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383572, 32.909969, 36.585335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474252, 0.746467, 0.466767,
		-0.481836, -0.223655, 0.847238,
		0.736830, -0.626709, 0.253606,
		41.604622, 32.721958, 36.661415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254845, 33.206886, 37.217407>,  <41.088840, 33.160652, 36.483894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254845, 33.206886, 37.217407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580387, 33.105682, 37.008171>,  <41.775715, 33.044960, 36.882629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580387, 33.105682, 37.008171>,  <41.254845, 33.206886, 37.217407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580387, 33.105682, 37.008171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556631, 0.597771, 0.576916,
		0.166720, -0.760695, 0.627334,
		0.813859, -0.253010, -0.523086,
		41.824547, 33.029778, 36.851246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811279, 32.779747, 37.535973>,  <41.254845, 33.206886, 37.217407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811279, 32.779747, 37.535973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851971, 33.085281, 37.281036>,  <41.876385, 33.268604, 37.128075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851971, 33.085281, 37.281036>,  <41.811279, 32.779747, 37.535973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851971, 33.085281, 37.281036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332188, 0.577807, 0.745514,
		0.937711, -0.287557, -0.194958,
		0.101729, 0.763839, -0.637339,
		41.882488, 33.314434, 37.089836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359421, 33.073360, 37.731735>,  <41.811279, 32.779747, 37.535973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359421, 33.073360, 37.731735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214092, 33.360966, 37.494747>,  <42.126896, 33.533527, 37.352554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214092, 33.360966, 37.494747>,  <42.359421, 33.073360, 37.731735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214092, 33.360966, 37.494747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318826, 0.693487, 0.646085,
		0.875412, 0.045843, -0.481200,
		-0.363324, 0.719009, -0.592471,
		42.105095, 33.576668, 37.317005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871746, 33.564945, 37.719975>,  <42.359421, 33.073360, 37.731735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871746, 33.564945, 37.719975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502430, 33.707794, 37.663406>,  <42.280842, 33.793503, 37.629467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502430, 33.707794, 37.663406>,  <42.871746, 33.564945, 37.719975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502430, 33.707794, 37.663406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163653, 0.698840, 0.696305,
		0.347494, 0.619748, -0.703676,
		-0.923291, 0.357120, -0.141419,
		42.225441, 33.814930, 37.620979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808075, 34.029942, 37.183949>,  <42.871746, 33.564945, 37.719975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808075, 34.029942, 37.183949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022541, 33.756878, 36.985355>,  <43.151222, 33.593040, 36.866199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022541, 33.756878, 36.985355>,  <42.808075, 34.029942, 37.183949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022541, 33.756878, 36.985355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429064, 0.726932, -0.536165,
		0.726932, 0.074448, 0.682662,
		0.536165, -0.682662, -0.496487,
		43.183392, 33.552078, 36.836411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512062, 34.362473, 37.154606>,  <42.808075, 34.029942, 37.183949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512062, 34.362473, 37.154606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437817, 34.095818, 36.865845>,  <43.393269, 33.935825, 36.692589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437817, 34.095818, 36.865845>,  <43.512062, 34.362473, 37.154606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437817, 34.095818, 36.865845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463877, 0.588204, -0.662445,
		0.866235, -0.457836, 0.200056,
		-0.185618, -0.666635, -0.721903,
		43.382130, 33.895828, 36.649273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129791, 34.182323, 36.700691>,  <43.512062, 34.362473, 37.154606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129791, 34.182323, 36.700691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792923, 34.121414, 36.493786>,  <43.590801, 34.084869, 36.369640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792923, 34.121414, 36.493786>,  <44.129791, 34.182323, 36.700691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792923, 34.121414, 36.493786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342239, 0.590361, -0.730990,
		0.416681, -0.792646, -0.445072,
		-0.842169, -0.152269, -0.517267,
		43.540272, 34.075733, 36.338604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182430, 33.911209, 35.968105>,  <44.129791, 34.182323, 36.700691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182430, 33.911209, 35.968105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859447, 34.145256, 35.998169>,  <43.665657, 34.285683, 36.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859447, 34.145256, 35.998169>,  <44.182430, 33.911209, 35.968105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859447, 34.145256, 35.998169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378268, 0.611298, -0.695146,
		-0.452687, -0.532871, -0.714929,
		-0.807458, 0.585118, 0.075159,
		43.617210, 34.320793, 36.020718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486591, 33.359646, 35.431252>,  <44.182430, 33.911209, 35.968105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486591, 33.359646, 35.431252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461468, 33.333141, 35.032921>,  <44.446392, 33.317238, 34.793922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461468, 33.333141, 35.032921>,  <44.486591, 33.359646, 35.431252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461468, 33.333141, 35.032921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782243, 0.616386, -0.090355,
		0.619799, -0.784651, 0.013118,
		-0.062812, -0.066264, -0.995823,
		44.442623, 33.313263, 34.734173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100094, 33.035122, 35.085300>,  <44.486591, 33.359646, 35.431252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100094, 33.035122, 35.085300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886295, 33.311874, 34.891136>,  <44.758018, 33.477924, 34.774639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886295, 33.311874, 34.891136>,  <45.100094, 33.035122, 35.085300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886295, 33.311874, 34.891136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783263, 0.621263, 0.023051,
		0.317514, -0.367881, -0.873984,
		-0.534494, 0.691878, -0.485407,
		44.725948, 33.519440, 34.745514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469341, 33.175205, 34.496292>,  <45.100094, 33.035122, 35.085300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469341, 33.175205, 34.496292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235317, 33.474545, 34.621307>,  <45.094902, 33.654148, 34.696316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235317, 33.474545, 34.621307>,  <45.469341, 33.175205, 34.496292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235317, 33.474545, 34.621307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793879, 0.607225, 0.032165,
		-0.165710, 0.266936, -0.949360,
		-0.585061, 0.748347, 0.312538,
		45.059799, 33.699047, 34.715069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537807, 33.844975, 34.172611>,  <45.469341, 33.175205, 34.496292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537807, 33.844975, 34.172611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469677, 33.947567, 34.553181>,  <45.428799, 34.009125, 34.781521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469677, 33.947567, 34.553181>,  <45.537807, 33.844975, 34.172611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469677, 33.947567, 34.553181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915213, 0.399021, 0.056275,
		-0.365204, 0.880340, -0.302702,
		-0.170326, 0.256485, 0.951422,
		45.418579, 34.024513, 34.838608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466522, 34.552483, 34.308315>,  <45.537807, 33.844975, 34.172611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466522, 34.552483, 34.308315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629997, 34.310265, 34.581455>,  <45.728081, 34.164932, 34.745338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629997, 34.310265, 34.581455>,  <45.466522, 34.552483, 34.308315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629997, 34.310265, 34.581455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890999, 0.426811, -0.154769,
		-0.197729, 0.671673, 0.713974,
		0.408686, -0.605548, 0.682852,
		45.752602, 34.128601, 34.786312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757240, 35.022743, 34.683151>,  <45.466522, 34.552483, 34.308315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757240, 35.022743, 34.683151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969303, 34.685196, 34.716194>,  <46.096542, 34.482670, 34.736019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969303, 34.685196, 34.716194>,  <45.757240, 35.022743, 34.683151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969303, 34.685196, 34.716194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844225, 0.516286, -0.143987,
		0.078854, 0.146078, 0.986125,
		0.530156, -0.843866, 0.082612,
		46.128349, 34.432037, 34.740978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234837, 35.279469, 34.991787>,  <45.757240, 35.022743, 34.683151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234837, 35.279469, 34.991787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365158, 34.940018, 34.825081>,  <46.443352, 34.736347, 34.725060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365158, 34.940018, 34.825081>,  <46.234837, 35.279469, 34.991787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365158, 34.940018, 34.825081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907606, 0.404188, -0.113501,
		0.264770, -0.341277, 0.901902,
		0.325803, -0.848624, -0.416762,
		46.462898, 34.685432, 34.700050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850441, 35.021797, 35.345833>,  <46.234837, 35.279469, 34.991787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850441, 35.021797, 35.345833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917511, 34.896080, 34.972073>,  <46.957752, 34.820648, 34.747818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917511, 34.896080, 34.972073>,  <46.850441, 35.021797, 35.345833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.917511, 34.896080, 34.972073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925475, 0.376758, 0.039350,
		0.339675, -0.871362, 0.354048,
		0.167679, -0.314296, -0.934399,
		46.967815, 34.801792, 34.691753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495705, 34.748093, 35.485451>,  <46.850441, 35.021797, 35.345833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495705, 34.748093, 35.485451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404018, 34.719067, 35.097183>,  <47.349007, 34.701653, 34.864223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404018, 34.719067, 35.097183>,  <47.495705, 34.748093, 35.485451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404018, 34.719067, 35.097183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005326, 0.997109, -0.075795,
		0.973362, -0.022543, -0.228164,
		-0.229213, -0.072560, -0.970668,
		47.335255, 34.697300, 34.805984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.988308, 35.120037, 35.064217>,  <47.495705, 34.748093, 35.485451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.988308, 35.120037, 35.064217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606483, 35.093441, 34.948021>,  <47.377388, 35.077484, 34.878304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606483, 35.093441, 34.948021>,  <47.988308, 35.120037, 35.064217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.606483, 35.093441, 34.948021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024153, 0.988845, -0.146975,
		0.297025, -0.133281, -0.945522,
		-0.954564, -0.066492, -0.290493,
		47.320114, 35.073494, 34.860874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.565399, 31.505213, 25.279301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.194382, 31.535921, 25.133003>,  <39.971771, 31.554346, 25.045225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.194382, 31.535921, 25.133003>,  <40.565399, 31.505213, 25.279301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194382, 31.535921, 25.133003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314097, 0.370156, 0.874258,
		0.202502, 0.925792, -0.319221,
		-0.927543, 0.076773, -0.365746,
		39.916119, 31.558952, 25.023279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336536, 32.155533, 25.494434>,  <40.565399, 31.505213, 25.279301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336536, 32.155533, 25.494434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008358, 31.936909, 25.427330>,  <39.811451, 31.805735, 25.387068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008358, 31.936909, 25.427330>,  <40.336536, 32.155533, 25.494434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008358, 31.936909, 25.427330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393057, 0.326138, 0.859733,
		-0.415184, 0.771301, -0.482408,
		-0.820444, -0.546561, -0.167759,
		39.762226, 31.772940, 25.377003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827419, 32.568169, 25.765718>,  <40.336536, 32.155533, 25.494434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827419, 32.568169, 25.765718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.667690, 32.202297, 25.740744>,  <39.571854, 31.982773, 25.725760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.667690, 32.202297, 25.740744>,  <39.827419, 32.568169, 25.765718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667690, 32.202297, 25.740744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246222, 0.041397, 0.968329,
		-0.883128, 0.402050, -0.241745,
		-0.399324, -0.914681, -0.062435,
		39.547894, 31.927893, 25.722013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223732, 32.647408, 26.005243>,  <39.827419, 32.568169, 25.765718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223732, 32.647408, 26.005243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270191, 32.250828, 26.029036>,  <39.298069, 32.012878, 26.043312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270191, 32.250828, 26.029036>,  <39.223732, 32.647408, 26.005243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270191, 32.250828, 26.029036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535669, -0.012099, 0.844341,
		-0.836402, -0.129932, -0.532494,
		0.116150, -0.991449, 0.059481,
		39.305035, 31.953394, 26.046881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537746, 32.443203, 26.181755>,  <39.223732, 32.647408, 26.005243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537746, 32.443203, 26.181755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768986, 32.130821, 26.276339>,  <38.907730, 31.943392, 26.333090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768986, 32.130821, 26.276339>,  <38.537746, 32.443203, 26.181755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768986, 32.130821, 26.276339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409343, -0.026879, 0.911985,
		-0.705863, -0.624009, -0.335217,
		0.578097, -0.780955, 0.236460,
		38.942413, 31.896534, 26.347277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128315, 31.929871, 26.544802>,  <38.537746, 32.443203, 26.181755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128315, 31.929871, 26.544802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510464, 31.857107, 26.637899>,  <38.739754, 31.813450, 26.693758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510464, 31.857107, 26.637899>,  <38.128315, 31.929871, 26.544802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510464, 31.857107, 26.637899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255903, -0.116079, 0.959708,
		-0.147573, -0.976438, -0.157452,
		0.955372, -0.181919, 0.232743,
		38.797077, 31.802534, 26.707724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110447, 31.312740, 26.890764>,  <38.128315, 31.929871, 26.544802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110447, 31.312740, 26.890764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455475, 31.491339, 26.985935>,  <38.662491, 31.598497, 27.043037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455475, 31.491339, 26.985935>,  <38.110447, 31.312740, 26.890764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455475, 31.491339, 26.985935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237778, -0.057332, 0.969626,
		0.446575, -0.892947, 0.056714,
		0.862573, 0.446496, 0.237926,
		38.714249, 31.625288, 27.057314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430252, 30.946463, 27.403696>,  <38.110447, 31.312740, 26.890764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430252, 30.946463, 27.403696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598778, 31.306707, 27.446394>,  <38.699894, 31.522854, 27.472013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598778, 31.306707, 27.446394>,  <38.430252, 30.946463, 27.403696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598778, 31.306707, 27.446394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211371, -0.016947, 0.977259,
		0.881938, -0.434297, 0.183224,
		0.421316, 0.900610, 0.106744,
		38.725174, 31.576891, 27.478416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777458, 30.947348, 28.079323>,  <38.430252, 30.946463, 27.403696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777458, 30.947348, 28.079323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780590, 31.339138, 27.998760>,  <38.782471, 31.574213, 27.950422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780590, 31.339138, 27.998760>,  <38.777458, 30.947348, 28.079323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780590, 31.339138, 27.998760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016688, 0.201256, 0.979397,
		0.999830, -0.011030, -0.014770,
		0.007830, 0.979477, -0.201406,
		38.782940, 31.632980, 27.938339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381134, 31.245951, 28.495802>,  <38.777458, 30.947348, 28.079323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381134, 31.245951, 28.495802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119431, 31.537128, 28.413792>,  <38.962406, 31.711836, 28.364586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119431, 31.537128, 28.413792>,  <39.381134, 31.245951, 28.495802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119431, 31.537128, 28.413792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029430, 0.295406, 0.954919,
		0.755695, 0.618733, -0.214696,
		-0.654262, 0.727946, -0.205027,
		38.923153, 31.755512, 28.352283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632278, 31.799929, 28.937561>,  <39.381134, 31.245951, 28.495802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632278, 31.799929, 28.937561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252605, 31.874681, 28.836271>,  <39.024799, 31.919533, 28.775497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252605, 31.874681, 28.836271>,  <39.632278, 31.799929, 28.937561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252605, 31.874681, 28.836271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156928, 0.416396, 0.895538,
		0.272799, 0.889770, -0.365910,
		-0.949186, 0.186880, -0.253222,
		38.967850, 31.930746, 28.760305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560204, 32.498829, 29.191086>,  <39.632278, 31.799929, 28.937561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560204, 32.498829, 29.191086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180763, 32.392040, 29.123116>,  <38.953098, 32.327969, 29.082335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180763, 32.392040, 29.123116>,  <39.560204, 32.498829, 29.191086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180763, 32.392040, 29.123116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276955, 0.440560, 0.853934,
		-0.153115, 0.857107, -0.491857,
		-0.948605, -0.266973, -0.169924,
		38.896183, 32.311947, 29.072138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219528, 33.148415, 29.118719>,  <39.560204, 32.498829, 29.191086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219528, 33.148415, 29.118719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964962, 32.858257, 29.223621>,  <38.812222, 32.684162, 29.286562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964962, 32.858257, 29.223621>,  <39.219528, 33.148415, 29.118719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964962, 32.858257, 29.223621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243396, 0.511484, 0.824101,
		-0.731935, 0.460641, -0.502076,
		-0.636419, -0.725392, 0.262255,
		38.774036, 32.640640, 29.302298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571262, 33.507565, 29.370676>,  <39.219528, 33.148415, 29.118719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571262, 33.507565, 29.370676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522434, 33.139393, 29.519217>,  <38.493137, 32.918488, 29.608341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522434, 33.139393, 29.519217>,  <38.571262, 33.507565, 29.370676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522434, 33.139393, 29.519217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351515, 0.389992, 0.851084,
		-0.928190, -0.026644, -0.371152,
		-0.122070, -0.920433, 0.371352,
		38.485813, 32.863262, 29.630623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937683, 33.534836, 29.725887>,  <38.571262, 33.507565, 29.370676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937683, 33.534836, 29.725887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149975, 33.231049, 29.876373>,  <38.277351, 33.048775, 29.966665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149975, 33.231049, 29.876373>,  <37.937683, 33.534836, 29.725887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149975, 33.231049, 29.876373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320157, 0.231354, 0.918681,
		-0.784747, -0.608017, -0.120363,
		0.530728, -0.759467, 0.376215,
		38.309193, 33.003208, 29.989237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448658, 33.150436, 30.263971>,  <37.937683, 33.534836, 29.725887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448658, 33.150436, 30.263971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828342, 33.048252, 30.337435>,  <38.056152, 32.986942, 30.381514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828342, 33.048252, 30.337435>,  <37.448658, 33.150436, 30.263971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828342, 33.048252, 30.337435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159434, 0.112693, 0.980755,
		-0.271245, -0.960228, 0.066241,
		0.949214, -0.255464, 0.183660,
		38.113106, 32.971615, 30.392532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358322, 32.733318, 30.847506>,  <37.448658, 33.150436, 30.263971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358322, 32.733318, 30.847506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749268, 32.817944, 30.846283>,  <37.983833, 32.868717, 30.845549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749268, 32.817944, 30.846283>,  <37.358322, 32.733318, 30.847506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749268, 32.817944, 30.846283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038247, -0.162441, 0.985977,
		0.208098, -0.963771, -0.166855,
		0.977360, 0.211562, -0.003058,
		38.042477, 32.881413, 30.845366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655807, 32.201050, 31.295023>,  <37.358322, 32.733318, 30.847506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655807, 32.201050, 31.295023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901711, 32.516315, 31.283192>,  <38.049252, 32.705475, 31.276093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901711, 32.516315, 31.283192>,  <37.655807, 32.201050, 31.295023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901711, 32.516315, 31.283192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145864, -0.076760, 0.986322,
		0.775112, -0.610661, -0.162154,
		0.614756, 0.788163, -0.029576,
		38.086136, 32.752766, 31.274319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300690, 32.016048, 31.646078>,  <37.655807, 32.201050, 31.295023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300690, 32.016048, 31.646078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285263, 32.415722, 31.650761>,  <38.276005, 32.655525, 31.653570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285263, 32.415722, 31.650761>,  <38.300690, 32.016048, 31.646078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285263, 32.415722, 31.650761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254636, -0.001498, 0.967036,
		0.966267, 0.040279, -0.254372,
		-0.038570, 0.999187, 0.011704,
		38.273693, 32.715477, 31.654272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828243, 32.276505, 32.140388>,  <38.300690, 32.016048, 31.646078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828243, 32.276505, 32.140388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585327, 32.592258, 32.104485>,  <38.439575, 32.781712, 32.082943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585327, 32.592258, 32.104485>,  <38.828243, 32.276505, 32.140388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585327, 32.592258, 32.104485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087088, 0.178448, 0.980088,
		0.789689, 0.587385, -0.177117,
		-0.607295, 0.789389, -0.089764,
		38.403137, 32.829075, 32.077557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207436, 32.787884, 32.511810>,  <38.828243, 32.276505, 32.140388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207436, 32.787884, 32.511810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822205, 32.895569, 32.511086>,  <38.591064, 32.960182, 32.510651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822205, 32.895569, 32.511086>,  <39.207436, 32.787884, 32.511810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822205, 32.895569, 32.511086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033703, 0.127222, 0.991302,
		0.267104, 0.954640, -0.131598,
		-0.963078, 0.269216, -0.001807,
		38.533279, 32.976334, 32.510544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179169, 33.344101, 32.975109>,  <39.207436, 32.787884, 32.511810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179169, 33.344101, 32.975109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798485, 33.231808, 32.925423>,  <38.570072, 33.164433, 32.895611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798485, 33.231808, 32.925423>,  <39.179169, 33.344101, 32.975109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798485, 33.231808, 32.925423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110318, -0.064847, 0.991779,
		-0.286479, 0.957593, 0.030746,
		-0.951714, -0.280732, -0.124217,
		38.512970, 33.147587, 32.888157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418835, 33.362804, 33.689445>,  <39.179169, 33.344101, 32.975109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418835, 33.362804, 33.689445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775551, 33.261818, 33.839630>,  <39.989582, 33.201225, 33.929741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775551, 33.261818, 33.839630>,  <39.418835, 33.362804, 33.689445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775551, 33.261818, 33.839630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189032, -0.546045, -0.816151,
		0.411065, 0.798811, -0.439235,
		0.891792, -0.252462, 0.375461,
		40.043087, 33.186081, 33.952267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993286, 33.508537, 33.175335>,  <39.418835, 33.362804, 33.689445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993286, 33.508537, 33.175335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161800, 33.240166, 33.419422>,  <40.262909, 33.079144, 33.565876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161800, 33.240166, 33.419422>,  <39.993286, 33.508537, 33.175335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161800, 33.240166, 33.419422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439669, -0.437398, -0.784458,
		0.793228, 0.598775, 0.110719,
		0.421286, -0.670933, 0.610219,
		40.288185, 33.038887, 33.602489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693420, 33.577164, 33.080528>,  <39.993286, 33.508537, 33.175335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693420, 33.577164, 33.080528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630695, 33.210621, 33.227882>,  <40.593060, 32.990696, 33.316296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630695, 33.210621, 33.227882>,  <40.693420, 33.577164, 33.080528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630695, 33.210621, 33.227882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338384, -0.400271, -0.851633,
		0.927850, -0.008894, 0.372847,
		-0.156814, -0.916354, 0.368382,
		40.583652, 32.935715, 33.338398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273724, 33.275341, 32.928127>,  <40.693420, 33.577164, 33.080528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273724, 33.275341, 32.928127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997780, 32.991276, 32.984348>,  <40.832214, 32.820835, 33.018082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997780, 32.991276, 32.984348>,  <41.273724, 33.275341, 32.928127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997780, 32.991276, 32.984348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362440, -0.506873, -0.782124,
		0.626681, -0.488614, 0.607064,
		-0.689861, -0.710166, 0.140554,
		40.790821, 32.778225, 33.026516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587486, 32.627720, 32.747829>,  <41.273724, 33.275341, 32.928127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587486, 32.627720, 32.747829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.202644, 32.518658, 32.746330>,  <40.971741, 32.453220, 32.745430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.202644, 32.518658, 32.746330>,  <41.587486, 32.627720, 32.747829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202644, 32.518658, 32.746330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132297, -0.454720, -0.880754,
		0.238441, -0.847872, 0.473560,
		-0.962104, -0.272659, -0.003747,
		40.914013, 32.436859, 32.745205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636971, 31.939194, 32.684288>,  <41.587486, 32.627720, 32.747829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636971, 31.939194, 32.684288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.268890, 32.054062, 32.577877>,  <41.048042, 32.122982, 32.514030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.268890, 32.054062, 32.577877>,  <41.636971, 31.939194, 32.684288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268890, 32.054062, 32.577877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102013, -0.480178, -0.871219,
		-0.377928, -0.828831, 0.412564,
		-0.920198, 0.287171, -0.266024,
		40.992832, 32.140213, 32.498070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399197, 31.422359, 32.271370>,  <41.636971, 31.939194, 32.684288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399197, 31.422359, 32.271370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.185192, 31.746567, 32.176018>,  <41.056789, 31.941092, 32.118809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.185192, 31.746567, 32.176018>,  <41.399197, 31.422359, 32.271370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185192, 31.746567, 32.176018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161834, -0.178611, -0.970520,
		-0.829201, -0.557815, -0.035611,
		-0.535010, 0.810519, -0.238377,
		41.024689, 31.989723, 32.104504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841854, 31.174427, 31.732285>,  <41.399197, 31.422359, 32.271370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841854, 31.174427, 31.732285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877464, 31.569944, 31.684351>,  <40.898830, 31.807255, 31.655590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877464, 31.569944, 31.684351>,  <40.841854, 31.174427, 31.732285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877464, 31.569944, 31.684351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087373, -0.127600, -0.987970,
		-0.992189, 0.077489, -0.097754,
		0.089030, 0.988794, -0.119833,
		40.904175, 31.866583, 31.648401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660275, 31.239038, 30.993902>,  <40.841854, 31.174427, 31.732285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660275, 31.239038, 30.993902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.817841, 31.597549, 31.075407>,  <40.912380, 31.812656, 31.124310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.817841, 31.597549, 31.075407>,  <40.660275, 31.239038, 30.993902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817841, 31.597549, 31.075407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159003, 0.151899, -0.975523,
		-0.905291, 0.416669, -0.082676,
		0.393912, 0.896278, 0.203764,
		40.936012, 31.866432, 31.136536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488956, 31.713011, 30.507090>,  <40.660275, 31.239038, 30.993902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488956, 31.713011, 30.507090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.799984, 31.926552, 30.639986>,  <40.986599, 32.054676, 30.719725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.799984, 31.926552, 30.639986>,  <40.488956, 31.713011, 30.507090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799984, 31.926552, 30.639986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281299, 0.177226, -0.943113,
		-0.562367, 0.826795, -0.012367,
		0.777569, 0.533854, 0.332243,
		41.033257, 32.086708, 30.739658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479534, 32.343182, 30.060781>,  <40.488956, 31.713011, 30.507090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479534, 32.343182, 30.060781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.846539, 32.261124, 30.197065>,  <41.066742, 32.211887, 30.278835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.846539, 32.261124, 30.197065>,  <40.479534, 32.343182, 30.060781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846539, 32.261124, 30.197065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368770, 0.118070, -0.921992,
		0.148916, 0.971584, 0.183982,
		0.917515, -0.205146, 0.340708,
		41.121792, 32.199581, 30.299278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837223, 32.919464, 29.828636>,  <40.479534, 32.343182, 30.060781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837223, 32.919464, 29.828636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111164, 32.631641, 29.874617>,  <41.275528, 32.458950, 29.902205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111164, 32.631641, 29.874617>,  <40.837223, 32.919464, 29.828636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111164, 32.631641, 29.874617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311927, 0.146928, -0.938677,
		0.658540, 0.678714, 0.325073,
		0.684855, -0.719555, 0.114952,
		41.316620, 32.415775, 29.909101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497608, 33.261345, 29.514137>,  <40.837223, 32.919464, 29.828636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497608, 33.261345, 29.514137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.512512, 32.862034, 29.496000>,  <41.521454, 32.622448, 29.485117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.512512, 32.862034, 29.496000>,  <41.497608, 33.261345, 29.514137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512512, 32.862034, 29.496000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446007, 0.057220, -0.893199,
		0.894254, 0.013060, 0.447370,
		0.037264, -0.998276, -0.045345,
		41.523693, 32.562550, 29.482397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156326, 33.083870, 29.331448>,  <41.497608, 33.261345, 29.514137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156326, 33.083870, 29.331448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.969769, 32.740841, 29.244686>,  <41.857834, 32.535023, 29.192629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.969769, 32.740841, 29.244686>,  <42.156326, 33.083870, 29.331448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969769, 32.740841, 29.244686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449587, -0.018631, -0.893042,
		0.761808, -0.514025, 0.394243,
		-0.466391, -0.857573, -0.216906,
		41.829849, 32.483570, 29.179615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690613, 32.728001, 29.023458>,  <42.156326, 33.083870, 29.331448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690613, 32.728001, 29.023458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.361767, 32.529503, 28.911840>,  <42.164459, 32.410404, 28.844870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.361767, 32.529503, 28.911840>,  <42.690613, 32.728001, 29.023458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361767, 32.529503, 28.911840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415757, -0.188469, -0.889733,
		0.388932, -0.847480, 0.361260,
		-0.822118, -0.496242, -0.279044,
		42.115131, 32.380630, 28.828127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914894, 32.124519, 28.664547>,  <42.690613, 32.728001, 29.023458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914894, 32.124519, 28.664547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.538437, 32.173138, 28.538389>,  <42.312561, 32.202309, 28.462694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.538437, 32.173138, 28.538389>,  <42.914894, 32.124519, 28.664547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538437, 32.173138, 28.538389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314278, -0.028738, -0.948896,
		-0.124402, -0.992169, -0.011153,
		-0.941145, 0.121549, -0.315392,
		42.256092, 32.209602, 28.443771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866692, 31.716877, 28.138433>,  <42.914894, 32.124519, 28.664547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866692, 31.716877, 28.138433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.554913, 31.959837, 28.077070>,  <42.367847, 32.105614, 28.040253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.554913, 31.959837, 28.077070>,  <42.866692, 31.716877, 28.138433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554913, 31.959837, 28.077070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132424, -0.079597, -0.987992,
		-0.612317, -0.790398, -0.018393,
		-0.779443, 0.607400, -0.153407,
		42.321079, 32.142056, 28.031048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519711, 31.384275, 27.665228>,  <42.866692, 31.716877, 28.138433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519711, 31.384275, 27.665228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.404160, 31.764919, 27.623301>,  <42.334827, 31.993305, 27.598145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.404160, 31.764919, 27.623301>,  <42.519711, 31.384275, 27.665228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404160, 31.764919, 27.623301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052745, -0.125139, -0.990736,
		-0.955912, -0.280671, 0.086343,
		-0.288876, 0.951611, -0.104818,
		42.317497, 32.050404, 27.591856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.907837, 31.270071, 27.045277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027359, 31.645607, 27.113745>,  <42.099072, 31.870928, 27.154825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027359, 31.645607, 27.113745>,  <41.907837, 31.270071, 27.045277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027359, 31.645607, 27.113745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106686, 0.145379, -0.983607,
		-0.948333, 0.312166, -0.056721,
		0.298803, 0.938838, 0.171172,
		42.117001, 31.927258, 27.165096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542259, 31.589985, 26.512043>,  <41.907837, 31.270071, 27.045277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542259, 31.589985, 26.512043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843895, 31.826891, 26.625584>,  <42.024876, 31.969034, 26.693708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843895, 31.826891, 26.625584>,  <41.542259, 31.589985, 26.512043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843895, 31.826891, 26.625584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133863, 0.284516, -0.949279,
		-0.642986, 0.753838, 0.135268,
		0.754089, 0.592266, 0.283851,
		42.070122, 32.004570, 26.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451832, 32.263180, 26.300493>,  <41.542259, 31.589985, 26.512043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451832, 32.263180, 26.300493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.848789, 32.220463, 26.324976>,  <42.086964, 32.194832, 26.339666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.848789, 32.220463, 26.324976>,  <41.451832, 32.263180, 26.300493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848789, 32.220463, 26.324976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080593, 0.187906, -0.978875,
		0.093032, 0.976364, 0.195084,
		0.992396, -0.106789, 0.061207,
		42.146507, 32.188427, 26.343338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598866, 32.742893, 25.806618>,  <41.451832, 32.263180, 26.300493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598866, 32.742893, 25.806618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.931992, 32.529621, 25.866148>,  <42.131866, 32.401657, 25.901865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.931992, 32.529621, 25.866148>,  <41.598866, 32.742893, 25.806618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931992, 32.529621, 25.866148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306393, 0.220076, -0.926115,
		0.461030, 0.816878, 0.346643,
		0.832811, -0.533176, 0.148824,
		42.181835, 32.369667, 25.910795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997269, 32.866226, 25.269268>,  <41.598866, 32.742893, 25.806618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997269, 32.866226, 25.269268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207973, 32.558361, 25.413568>,  <42.334396, 32.373642, 25.500149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207973, 32.558361, 25.413568>,  <41.997269, 32.866226, 25.269268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207973, 32.558361, 25.413568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578421, 0.013581, -0.815625,
		0.622858, 0.638304, 0.452344,
		0.526760, -0.769664, 0.360750,
		42.366001, 32.327461, 25.521793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570900, 33.039684, 25.009336>,  <41.997269, 32.866226, 25.269268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570900, 33.039684, 25.009336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.590137, 32.650955, 25.101645>,  <42.601681, 32.417717, 25.157028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.590137, 32.650955, 25.101645>,  <42.570900, 33.039684, 25.009336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590137, 32.650955, 25.101645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470538, -0.181753, -0.863458,
		0.881068, 0.150109, 0.448537,
		0.048090, -0.971819, 0.230769,
		42.604565, 32.359409, 25.170876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211365, 32.902901, 24.908848>,  <42.570900, 33.039684, 25.009336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211365, 32.902901, 24.908848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.006054, 32.560341, 24.886469>,  <42.882866, 32.354805, 24.873041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.006054, 32.560341, 24.886469>,  <43.211365, 32.902901, 24.908848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006054, 32.560341, 24.886469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455832, -0.216805, -0.863257,
		0.727160, -0.468595, 0.501654,
		-0.513279, -0.856396, -0.055949,
		42.852070, 32.303421, 24.869684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740143, 32.229626, 24.851656>,  <43.211365, 32.902901, 24.908848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740143, 32.229626, 24.851656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.382977, 32.119892, 24.708857>,  <43.168678, 32.054050, 24.623177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.382977, 32.119892, 24.708857>,  <43.740143, 32.229626, 24.851656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382977, 32.119892, 24.708857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441638, -0.379499, -0.812980,
		0.087547, -0.883584, 0.460016,
		-0.892912, -0.274334, -0.357000,
		43.115105, 32.037590, 24.601757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839985, 31.520647, 24.602871>,  <43.740143, 32.229626, 24.851656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839985, 31.520647, 24.602871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.514477, 31.662621, 24.418787>,  <43.319172, 31.747805, 24.308336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.514477, 31.662621, 24.418787>,  <43.839985, 31.520647, 24.602871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514477, 31.662621, 24.418787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354551, -0.324248, -0.877016,
		-0.460504, -0.876861, 0.138023,
		-0.813775, 0.354933, -0.460210,
		43.270344, 31.769100, 24.280724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741142, 31.166176, 24.088531>,  <43.839985, 31.520647, 24.602871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741142, 31.166176, 24.088531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.513180, 31.477491, 23.983097>,  <43.376404, 31.664280, 23.919836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.513180, 31.477491, 23.983097>,  <43.741142, 31.166176, 24.088531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513180, 31.477491, 23.983097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319148, -0.085943, -0.943800,
		-0.757200, -0.622000, -0.199410,
		-0.569905, 0.778287, -0.263585,
		43.342209, 31.710978, 23.904022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501602, 30.965075, 23.485840>,  <43.741142, 31.166176, 24.088531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501602, 30.965075, 23.485840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437447, 31.359879, 23.489552>,  <43.398952, 31.596762, 23.491779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437447, 31.359879, 23.489552>,  <43.501602, 30.965075, 23.485840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437447, 31.359879, 23.489552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337879, 0.063734, -0.939029,
		-0.927423, -0.147474, -0.343713,
		-0.160388, 0.987010, 0.009280,
		43.389332, 31.655981, 23.492336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145638, 31.134794, 22.795086>,  <43.501602, 30.965075, 23.485840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145638, 31.134794, 22.795086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325932, 31.458321, 22.946163>,  <43.434109, 31.652437, 23.036810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325932, 31.458321, 22.946163>,  <43.145638, 31.134794, 22.795086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325932, 31.458321, 22.946163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283534, 0.271482, -0.919731,
		-0.846430, 0.521647, -0.106959,
		0.450737, 0.808815, 0.377695,
		43.461151, 31.700966, 23.059471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021313, 31.705593, 22.362717>,  <43.145638, 31.134794, 22.795086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021313, 31.705593, 22.362717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.337181, 31.846615, 22.563562>,  <43.526703, 31.931229, 22.684071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.337181, 31.846615, 22.563562>,  <43.021313, 31.705593, 22.362717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337181, 31.846615, 22.563562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328943, 0.447544, -0.831565,
		-0.517891, 0.821833, 0.237443,
		0.789674, 0.352555, 0.502115,
		43.574081, 31.952381, 22.714197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054955, 32.405228, 22.199530>,  <43.021313, 31.705593, 22.362717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054955, 32.405228, 22.199530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.423176, 32.305275, 22.319624>,  <43.644108, 32.245304, 22.391682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.423176, 32.305275, 22.319624>,  <43.054955, 32.405228, 22.199530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423176, 32.305275, 22.319624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383982, 0.437796, -0.812953,
		0.071697, 0.863652, 0.498963,
		0.920553, -0.249879, 0.300238,
		43.699341, 32.230312, 22.409695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479496, 32.993923, 22.039297>,  <43.054955, 32.405228, 22.199530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479496, 32.993923, 22.039297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.728001, 32.685204, 22.093506>,  <43.877102, 32.499973, 22.126032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.728001, 32.685204, 22.093506>,  <43.479496, 32.993923, 22.039297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728001, 32.685204, 22.093506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541492, 0.297827, -0.786184,
		0.566412, 0.561809, 0.602949,
		0.621260, -0.771796, 0.135522,
		43.914379, 32.453663, 22.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132187, 33.273663, 22.111362>,  <43.479496, 32.993923, 22.039297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132187, 33.273663, 22.111362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202312, 32.893448, 22.008802>,  <44.244389, 32.665318, 21.947266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202312, 32.893448, 22.008802>,  <44.132187, 33.273663, 22.111362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202312, 32.893448, 22.008802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729228, 0.300345, -0.614833,
		0.661431, -0.079183, 0.745815,
		0.175317, -0.950538, -0.256400,
		44.254906, 32.608288, 21.931883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814499, 33.220322, 22.065247>,  <44.132187, 33.273663, 22.111362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814499, 33.220322, 22.065247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.756798, 32.873718, 21.874098>,  <44.722176, 32.665756, 21.759409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.756798, 32.873718, 21.874098>,  <44.814499, 33.220322, 22.065247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756798, 32.873718, 21.874098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756135, 0.214992, -0.618092,
		0.638318, -0.450498, 0.624181,
		-0.144255, -0.866504, -0.477871,
		44.713520, 32.613766, 21.730736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380722, 32.925079, 21.897892>,  <44.814499, 33.220322, 22.065247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380722, 32.925079, 21.897892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.145996, 32.746178, 21.627893>,  <45.005161, 32.638836, 21.465895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.145996, 32.746178, 21.627893>,  <45.380722, 32.925079, 21.897892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145996, 32.746178, 21.627893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658511, 0.221488, -0.719240,
		0.471184, -0.866550, 0.164547,
		-0.586813, -0.447251, -0.674994,
		44.969952, 32.612003, 21.425396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803879, 32.544548, 21.507391>,  <45.380722, 32.925079, 21.897892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803879, 32.544548, 21.507391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.477840, 32.606419, 21.284073>,  <45.282219, 32.643539, 21.150082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.477840, 32.606419, 21.284073>,  <45.803879, 32.544548, 21.507391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477840, 32.606419, 21.284073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577840, 0.286054, -0.764378,
		0.041474, -0.945647, -0.322538,
		-0.815096, 0.154673, -0.558297,
		45.233311, 32.652821, 21.116585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039192, 32.232944, 20.913691>,  <45.803879, 32.544548, 21.507391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039192, 32.232944, 20.913691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.723194, 32.455158, 20.809937>,  <45.533596, 32.588486, 20.747684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.723194, 32.455158, 20.809937>,  <46.039192, 32.232944, 20.913691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723194, 32.455158, 20.809937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416351, 0.175545, -0.892096,
		-0.450060, -0.812749, -0.369979,
		-0.789998, 0.555539, -0.259384,
		45.486195, 32.621819, 20.732121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818424, 31.997715, 20.291788>,  <46.039192, 32.232944, 20.913691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818424, 31.997715, 20.291788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.712078, 32.381676, 20.327351>,  <45.648270, 32.612053, 20.348688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.712078, 32.381676, 20.327351>,  <45.818424, 31.997715, 20.291788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712078, 32.381676, 20.327351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456404, 0.206573, -0.865461,
		-0.849122, -0.189522, -0.493024,
		-0.265869, 0.959900, 0.088907,
		45.632317, 32.669647, 20.354023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620518, 32.084473, 19.600397>,  <45.818424, 31.997715, 20.291788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620518, 32.084473, 19.600397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.672016, 32.448921, 19.757006>,  <45.702915, 32.667591, 19.850971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.672016, 32.448921, 19.757006>,  <45.620518, 32.084473, 19.600397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672016, 32.448921, 19.757006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553635, 0.261518, -0.790630,
		-0.822748, 0.318549, -0.470758,
		0.128743, 0.911117, 0.391523,
		45.710640, 32.722256, 19.874462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322578, 32.489079, 19.094017>,  <45.620518, 32.084473, 19.600397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322578, 32.489079, 19.094017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.584549, 32.674660, 19.332619>,  <45.741734, 32.786007, 19.475779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.584549, 32.674660, 19.332619>,  <45.322578, 32.489079, 19.094017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584549, 32.674660, 19.332619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525723, 0.287296, -0.800673,
		-0.542846, 0.837980, -0.055751,
		0.654930, 0.463951, 0.596503,
		45.781029, 32.813847, 19.511570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424706, 33.309494, 19.015627>,  <45.322578, 32.489079, 19.094017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424706, 33.309494, 19.015627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.757675, 33.142170, 19.161003>,  <45.957455, 33.041775, 19.248230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.757675, 33.142170, 19.161003>,  <45.424706, 33.309494, 19.015627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757675, 33.142170, 19.161003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506707, 0.309075, -0.804811,
		0.224333, 0.854100, 0.469242,
		0.832420, -0.418314, 0.363442,
		46.007401, 33.016674, 19.270037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709625, 33.250935, 19.463518>,  <45.424706, 33.309494, 19.015627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709625, 33.250935, 19.463518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.519539, 33.133358, 19.131790>,  <44.405487, 33.062813, 18.932753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.519539, 33.133358, 19.131790>,  <44.709625, 33.250935, 19.463518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519539, 33.133358, 19.131790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842834, -0.118515, 0.524963,
		-0.252593, 0.948449, -0.191420,
		-0.475214, -0.293937, -0.829321,
		44.376976, 33.045177, 18.882994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122292, 33.458908, 19.560795>,  <44.709625, 33.250935, 19.463518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122292, 33.458908, 19.560795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.048901, 33.226002, 19.243986>,  <44.004864, 33.086258, 19.053902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.048901, 33.226002, 19.243986>,  <44.122292, 33.458908, 19.560795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048901, 33.226002, 19.243986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901983, -0.220625, 0.371149,
		-0.390848, 0.782488, -0.484717,
		-0.183479, -0.582269, -0.792022,
		43.993858, 33.051319, 19.006380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455875, 33.680389, 19.206884>,  <44.122292, 33.458908, 19.560795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455875, 33.680389, 19.206884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.537434, 33.297314, 19.125628>,  <43.586369, 33.067471, 19.076874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.537434, 33.297314, 19.125628>,  <43.455875, 33.680389, 19.206884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537434, 33.297314, 19.125628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944074, -0.247268, 0.218134,
		-0.259134, 0.147307, -0.954542,
		0.203895, -0.957684, -0.203144,
		43.598602, 33.010010, 19.064686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892788, 33.511551, 18.914293>,  <43.455875, 33.680389, 19.206884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892788, 33.511551, 18.914293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.064594, 33.164219, 19.013508>,  <43.167679, 32.955822, 19.073036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.064594, 33.164219, 19.013508>,  <42.892788, 33.511551, 18.914293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064594, 33.164219, 19.013508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887826, -0.355795, 0.291847,
		-0.165169, -0.345566, -0.923744,
		0.429516, -0.868328, 0.248036,
		43.193451, 32.903721, 19.087919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446968, 33.085888, 18.712011>,  <42.892788, 33.511551, 18.914293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446968, 33.085888, 18.712011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.685135, 32.916817, 18.985310>,  <42.828033, 32.815372, 19.149288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.685135, 32.916817, 18.985310>,  <42.446968, 33.085888, 18.712011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685135, 32.916817, 18.985310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795996, -0.195020, 0.573025,
		-0.108959, -0.885048, -0.452568,
		0.595415, -0.422679, 0.683245,
		42.863758, 32.790012, 19.190283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154964, 32.393440, 18.903515>,  <42.446968, 33.085888, 18.712011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154964, 32.393440, 18.903515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396130, 32.496296, 19.205606>,  <42.540829, 32.558010, 19.386862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396130, 32.496296, 19.205606>,  <42.154964, 32.393440, 18.903515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396130, 32.496296, 19.205606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641638, -0.406284, 0.650565,
		0.474122, -0.876820, -0.079966,
		0.602917, 0.257138, 0.755229,
		42.577003, 32.573437, 19.432175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931095, 31.952297, 19.388454>,  <42.154964, 32.393440, 18.903515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931095, 31.952297, 19.388454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.164001, 32.175327, 19.625124>,  <42.303745, 32.309147, 19.767126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.164001, 32.175327, 19.625124>,  <41.931095, 31.952297, 19.388454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164001, 32.175327, 19.625124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597455, -0.200109, 0.776533,
		0.551375, -0.805646, 0.216610,
		0.582265, 0.557576, 0.591673,
		42.338680, 32.342602, 19.802626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138119, 31.627693, 20.028374>,  <41.931095, 31.952297, 19.388454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138119, 31.627693, 20.028374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.198921, 31.997032, 20.169415>,  <42.235401, 32.218636, 20.254040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.198921, 31.997032, 20.169415>,  <42.138119, 31.627693, 20.028374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198921, 31.997032, 20.169415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504776, -0.234193, 0.830876,
		0.849762, -0.304282, 0.430485,
		0.152004, 0.923345, 0.352602,
		42.244522, 32.274036, 20.275196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127934, 31.555834, 20.809956>,  <42.138119, 31.627693, 20.028374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127934, 31.555834, 20.809956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.068333, 31.945671, 20.743067>,  <42.032574, 32.179573, 20.702932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.068333, 31.945671, 20.743067>,  <42.127934, 31.555834, 20.809956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068333, 31.945671, 20.743067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513045, 0.068373, 0.855634,
		0.845330, 0.213285, 0.489823,
		-0.149003, 0.974595, -0.167223,
		42.023632, 32.238049, 20.692900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421371, 31.769463, 21.489960>,  <42.127934, 31.555834, 20.809956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421371, 31.769463, 21.489960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.189266, 32.019520, 21.281158>,  <42.050003, 32.169556, 21.155878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.189266, 32.019520, 21.281158>,  <42.421371, 31.769463, 21.489960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189266, 32.019520, 21.281158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612247, 0.087834, 0.785773,
		0.537070, 0.775552, 0.331775,
		-0.580267, 0.625143, -0.522003,
		42.015186, 32.207062, 21.124557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286385, 32.310883, 21.960468>,  <42.421371, 31.769463, 21.489960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286385, 32.310883, 21.960468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.991543, 32.358292, 21.694347>,  <41.814636, 32.386738, 21.534676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.991543, 32.358292, 21.694347>,  <42.286385, 32.310883, 21.960468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991543, 32.358292, 21.694347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674111, -0.059876, 0.736199,
		0.047418, 0.991145, 0.124030,
		-0.737106, 0.118520, -0.665303,
		41.770412, 32.393848, 21.494757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876503, 32.789581, 22.248869>,  <42.286385, 32.310883, 21.960468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876503, 32.789581, 22.248869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661907, 32.580402, 21.983931>,  <41.533150, 32.454895, 21.824968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661907, 32.580402, 21.983931>,  <41.876503, 32.789581, 22.248869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661907, 32.580402, 21.983931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694424, -0.172419, 0.698604,
		-0.479536, 0.834743, -0.270649,
		-0.536489, -0.522950, -0.662346,
		41.500961, 32.423519, 21.785227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243031, 33.082809, 22.336643>,  <41.876503, 32.789581, 22.248869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243031, 33.082809, 22.336643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.177113, 32.728836, 22.162409>,  <41.137562, 32.516453, 22.057867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.177113, 32.728836, 22.162409>,  <41.243031, 33.082809, 22.336643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177113, 32.728836, 22.162409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664181, -0.226928, 0.712298,
		-0.729183, 0.406691, -0.550359,
		-0.164793, -0.884933, -0.435588,
		41.127674, 32.463356, 22.031733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496670, 33.018105, 22.352531>,  <41.243031, 33.082809, 22.336643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496670, 33.018105, 22.352531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.666756, 32.657574, 22.319550>,  <40.768806, 32.441254, 22.299761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.666756, 32.657574, 22.319550>,  <40.496670, 33.018105, 22.352531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666756, 32.657574, 22.319550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535238, -0.323876, 0.780144,
		-0.729872, -0.287594, -0.620142,
		0.425214, -0.901329, -0.082457,
		40.794319, 32.387177, 22.294813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006474, 32.632412, 22.576984>,  <40.496670, 33.018105, 22.352531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006474, 32.632412, 22.576984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324112, 32.392494, 22.616302>,  <40.514694, 32.248543, 22.639893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324112, 32.392494, 22.616302>,  <40.006474, 32.632412, 22.576984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324112, 32.392494, 22.616302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370417, -0.349369, 0.860658,
		-0.481874, -0.719856, -0.499605,
		0.794097, -0.599791, 0.098295,
		40.562340, 32.212559, 22.645792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612141, 31.992222, 22.754799>,  <40.006474, 32.632412, 22.576984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612141, 31.992222, 22.754799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.995354, 31.986013, 22.869297>,  <40.225281, 31.982288, 22.937996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.995354, 31.986013, 22.869297>,  <39.612141, 31.992222, 22.754799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995354, 31.986013, 22.869297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267844, -0.404322, 0.874519,
		0.102160, -0.914485, -0.391511,
		0.958031, -0.015523, 0.286244,
		40.282764, 31.981356, 22.955170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653034, 31.398674, 23.053818>,  <39.612141, 31.992222, 22.754799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653034, 31.398674, 23.053818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981243, 31.565193, 23.210505>,  <40.178169, 31.665106, 23.304516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981243, 31.565193, 23.210505>,  <39.653034, 31.398674, 23.053818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981243, 31.565193, 23.210505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218557, -0.404728, 0.887935,
		0.528185, -0.814181, -0.241102,
		0.820520, 0.416299, 0.391716,
		40.227398, 31.690083, 23.328020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884735, 30.861303, 23.402273>,  <39.653034, 31.398674, 23.053818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884735, 30.861303, 23.402273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034561, 31.197418, 23.559050>,  <40.124458, 31.399088, 23.653116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034561, 31.197418, 23.559050>,  <39.884735, 30.861303, 23.402273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034561, 31.197418, 23.559050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319532, -0.279839, 0.905312,
		0.870403, -0.464336, 0.163681,
		0.374564, 0.840287, 0.391943,
		40.146931, 31.449505, 23.676632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015358, 30.573648, 24.059097>,  <39.884735, 30.861303, 23.402273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015358, 30.573648, 24.059097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051392, 30.969208, 24.106373>,  <40.073013, 31.206543, 24.134739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051392, 30.969208, 24.106373>,  <40.015358, 30.573648, 24.059097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051392, 30.969208, 24.106373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077581, -0.111345, 0.990749,
		0.992908, -0.098421, 0.066689,
		0.090085, 0.988896, 0.118191,
		40.078419, 31.265877, 24.141830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583130, 30.707161, 24.600403>,  <40.015358, 30.573648, 24.059097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583130, 30.707161, 24.600403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301208, 30.989738, 24.574532>,  <40.132053, 31.159285, 24.559008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301208, 30.989738, 24.574532>,  <40.583130, 30.707161, 24.600403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301208, 30.989738, 24.574532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267326, -0.180035, 0.946638,
		0.657102, 0.684489, 0.315741,
		-0.704808, 0.706444, -0.064680,
		40.089767, 31.201672, 24.555128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.170742, 31.425520, 30.081799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912495, 31.727991, 30.039152>,  <41.757545, 31.909473, 30.013563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912495, 31.727991, 30.039152>,  <42.170742, 31.425520, 30.081799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912495, 31.727991, 30.039152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053096, 0.094827, 0.994077,
		0.761811, 0.647457, -0.021072,
		-0.645620, 0.756180, -0.106618,
		41.718807, 31.954845, 30.007166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399200, 31.932829, 30.624863>,  <42.170742, 31.425520, 30.081799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399200, 31.932829, 30.624863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026573, 32.040977, 30.527641>,  <41.802998, 32.105865, 30.469309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026573, 32.040977, 30.527641>,  <42.399200, 31.932829, 30.624863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026573, 32.040977, 30.527641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183398, 0.227765, 0.956289,
		0.313911, 0.935427, -0.162593,
		-0.931571, 0.270371, -0.243054,
		41.747101, 32.122089, 30.454725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213066, 32.594196, 30.979635>,  <42.399200, 31.932829, 30.624863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213066, 32.594196, 30.979635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.868671, 32.398243, 30.924906>,  <41.662037, 32.280670, 30.892069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.868671, 32.398243, 30.924906>,  <42.213066, 32.594196, 30.979635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868671, 32.398243, 30.924906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249197, 0.171774, 0.953097,
		-0.443408, 0.854696, -0.269972,
		-0.860982, -0.489887, -0.136822,
		41.610378, 32.251278, 30.883860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738068, 32.909748, 31.450407>,  <42.213066, 32.594196, 30.979635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738068, 32.909748, 31.450407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.490391, 32.609131, 31.359385>,  <41.341785, 32.428761, 31.304771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.490391, 32.609131, 31.359385>,  <41.738068, 32.909748, 31.450407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490391, 32.609131, 31.359385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464308, 0.116710, 0.877950,
		-0.633260, 0.649277, -0.421214,
		-0.619193, -0.751544, -0.227557,
		41.304634, 32.383667, 31.291117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058460, 33.144985, 31.488251>,  <41.738068, 32.909748, 31.450407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058460, 33.144985, 31.488251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007694, 32.752209, 31.544367>,  <40.977234, 32.516541, 31.578035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007694, 32.752209, 31.544367>,  <41.058460, 33.144985, 31.488251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007694, 32.752209, 31.544367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258401, 0.169278, 0.951091,
		-0.957665, 0.084455, -0.275218,
		-0.126913, -0.981943, 0.140288,
		40.969620, 32.457626, 31.586452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339508, 32.972809, 31.732347>,  <41.058460, 33.144985, 31.488251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339508, 32.972809, 31.732347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.559635, 32.663933, 31.859392>,  <40.691711, 32.478607, 31.935619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.559635, 32.663933, 31.859392>,  <40.339508, 32.972809, 31.732347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559635, 32.663933, 31.859392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391653, 0.097217, 0.914963,
		-0.737402, -0.627910, -0.248931,
		0.550314, -0.772190, 0.317611,
		40.724731, 32.432278, 31.954676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739552, 32.511612, 32.084240>,  <40.339508, 32.972809, 31.732347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739552, 32.511612, 32.084240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107231, 32.417328, 32.210426>,  <40.327839, 32.360760, 32.286137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107231, 32.417328, 32.210426>,  <39.739552, 32.511612, 32.084240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107231, 32.417328, 32.210426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302150, 0.091609, 0.948848,
		-0.252551, -0.967496, 0.012987,
		0.919197, -0.235708, 0.315465,
		40.382992, 32.346615, 32.305065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651928, 32.295918, 32.786732>,  <39.739552, 32.511612, 32.084240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651928, 32.295918, 32.786732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.051094, 32.305542, 32.762787>,  <40.290596, 32.311317, 32.748421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.051094, 32.305542, 32.762787>,  <39.651928, 32.295918, 32.786732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051094, 32.305542, 32.762787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054026, 0.195519, 0.979211,
		0.035259, -0.980405, 0.193812,
		0.997917, 0.024055, -0.059861,
		40.350468, 32.312759, 32.744827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883648, 31.943460, 33.384621>,  <39.651928, 32.295918, 32.786732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883648, 31.943460, 33.384621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183941, 32.183800, 33.274792>,  <40.364117, 32.328003, 33.208897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183941, 32.183800, 33.274792>,  <39.883648, 31.943460, 33.384621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183941, 32.183800, 33.274792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277360, 0.090541, 0.956490,
		0.599565, -0.794219, -0.098679,
		0.750728, 0.600848, -0.274570,
		40.409161, 32.364056, 33.192421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418690, 31.755823, 33.800732>,  <39.883648, 31.943460, 33.384621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418690, 31.755823, 33.800732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445702, 32.131638, 33.666443>,  <40.461910, 32.357128, 33.585869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445702, 32.131638, 33.666443>,  <40.418690, 31.755823, 33.800732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445702, 32.131638, 33.666443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137373, 0.324531, 0.935846,
		0.988215, -0.109320, -0.107150,
		0.067533, 0.939537, -0.335724,
		40.465961, 32.413498, 33.565727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753189, 32.136932, 34.357525>,  <40.418690, 31.755823, 33.800732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753189, 32.136932, 34.357525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607059, 32.423870, 34.120220>,  <40.519382, 32.596031, 33.977837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607059, 32.423870, 34.120220>,  <40.753189, 32.136932, 34.357525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607059, 32.423870, 34.120220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017653, 0.642536, 0.766052,
		0.930712, 0.269387, -0.247400,
		-0.365328, 0.717341, -0.593260,
		40.497459, 32.639072, 33.942242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133129, 32.787018, 34.571850>,  <40.753189, 32.136932, 34.357525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133129, 32.787018, 34.571850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797855, 32.871853, 34.370865>,  <40.596691, 32.922756, 34.250275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797855, 32.871853, 34.370865>,  <41.133129, 32.787018, 34.571850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797855, 32.871853, 34.370865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253770, 0.663816, 0.703526,
		0.482755, 0.717192, -0.502576,
		-0.838181, 0.212092, -0.502463,
		40.546402, 32.935482, 34.220127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937199, 33.538212, 34.386684>,  <41.133129, 32.787018, 34.571850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937199, 33.538212, 34.386684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.611984, 33.317215, 34.460144>,  <40.416855, 33.184616, 34.504219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.611984, 33.317215, 34.460144>,  <40.937199, 33.538212, 34.386684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611984, 33.317215, 34.460144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186799, 0.546299, 0.816495,
		-0.551435, 0.629533, -0.547365,
		-0.813035, -0.552491, 0.183652,
		40.368073, 33.151466, 34.515240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470024, 34.017487, 34.549286>,  <40.937199, 33.538212, 34.386684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470024, 34.017487, 34.549286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342869, 33.683983, 34.729858>,  <40.266575, 33.483879, 34.838203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342869, 33.683983, 34.729858>,  <40.470024, 34.017487, 34.549286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342869, 33.683983, 34.729858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361633, 0.546758, 0.755167,
		-0.876453, 0.076803, -0.475321,
		-0.317885, -0.833761, 0.451433,
		40.247505, 33.433853, 34.865288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385662, 34.732746, 34.871037>,  <40.470024, 34.017487, 34.549286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385662, 34.732746, 34.871037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490326, 35.069065, 35.060604>,  <40.553123, 35.270855, 35.174343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490326, 35.069065, 35.060604>,  <40.385662, 34.732746, 34.871037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490326, 35.069065, 35.060604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181240, 0.439488, -0.879774,
		-0.947990, 0.316097, -0.037388,
		0.261663, 0.840793, 0.473919,
		40.568825, 35.321304, 35.202782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115627, 35.270004, 34.555607>,  <40.385662, 34.732746, 34.871037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115627, 35.270004, 34.555607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422707, 35.453457, 34.734623>,  <40.606956, 35.563530, 34.842033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422707, 35.453457, 34.734623>,  <40.115627, 35.270004, 34.555607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422707, 35.453457, 34.734623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163265, 0.535358, -0.828696,
		-0.619662, 0.709257, 0.336115,
		0.767700, 0.458635, 0.447538,
		40.653015, 35.591049, 34.868885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049526, 35.821781, 34.325142>,  <40.115627, 35.270004, 34.555607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049526, 35.821781, 34.325142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422192, 35.864559, 34.464027>,  <40.645790, 35.890228, 34.547359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422192, 35.864559, 34.464027>,  <40.049526, 35.821781, 34.325142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422192, 35.864559, 34.464027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227265, 0.574076, -0.786630,
		-0.283459, 0.811787, 0.510542,
		0.931666, 0.106949, 0.347217,
		40.701691, 35.896645, 34.568192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260258, 36.535603, 34.313049>,  <40.049526, 35.821781, 34.325142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260258, 36.535603, 34.313049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584724, 36.304684, 34.275665>,  <40.779404, 36.166130, 34.253235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584724, 36.304684, 34.275665>,  <40.260258, 36.535603, 34.313049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584724, 36.304684, 34.275665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256319, 0.494603, -0.830463,
		0.525653, 0.649687, 0.549178,
		0.811166, -0.577300, -0.093462,
		40.828075, 36.131493, 34.247627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654045, 37.058403, 34.010906>,  <40.260258, 36.535603, 34.313049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654045, 37.058403, 34.010906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850998, 36.712650, 33.970108>,  <40.969170, 36.505199, 33.945629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850998, 36.712650, 33.970108>,  <40.654045, 37.058403, 34.010906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850998, 36.712650, 33.970108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399689, 0.328650, -0.855709,
		0.773181, 0.380568, 0.507305,
		0.492382, -0.864382, -0.101997,
		40.998711, 36.453335, 33.939510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430668, 37.179111, 33.994534>,  <40.654045, 37.058403, 34.010906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430668, 37.179111, 33.994534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358032, 36.829712, 33.813854>,  <41.314449, 36.620071, 33.705448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358032, 36.829712, 33.813854>,  <41.430668, 37.179111, 33.994534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358032, 36.829712, 33.813854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499983, 0.313523, -0.807292,
		0.846784, -0.372437, 0.379800,
		-0.181589, -0.873496, -0.451698,
		41.303555, 36.567665, 33.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081600, 36.888016, 33.703304>,  <41.430668, 37.179111, 33.994534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081600, 36.888016, 33.703304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.800747, 36.691280, 33.497349>,  <41.632236, 36.573238, 33.373775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.800747, 36.691280, 33.497349>,  <42.081600, 36.888016, 33.703304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800747, 36.691280, 33.497349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471335, 0.220980, -0.853821,
		0.533720, -0.842179, 0.076662,
		-0.702130, -0.491835, -0.514890,
		41.590107, 36.543732, 33.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492577, 36.530170, 33.199093>,  <42.081600, 36.888016, 33.703304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492577, 36.530170, 33.199093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112202, 36.536987, 33.075523>,  <41.883976, 36.541077, 33.001381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112202, 36.536987, 33.075523>,  <42.492577, 36.530170, 33.199093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112202, 36.536987, 33.075523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300631, 0.286815, -0.909592,
		0.073099, -0.957834, -0.277867,
		-0.950935, 0.017045, -0.308920,
		41.826920, 36.542099, 32.982845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545555, 36.258392, 32.536625>,  <42.492577, 36.530170, 33.199093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545555, 36.258392, 32.536625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167656, 36.387028, 32.511242>,  <41.940914, 36.464211, 32.496010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167656, 36.387028, 32.511242>,  <42.545555, 36.258392, 32.536625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167656, 36.387028, 32.511242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059039, -0.023491, -0.997979,
		-0.322433, -0.946587, 0.003207,
		-0.944749, 0.321592, -0.063460,
		41.884232, 36.483505, 32.492203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201134, 35.713047, 32.178535>,  <42.545555, 36.258392, 32.536625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201134, 35.713047, 32.178535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.005920, 36.059879, 32.138542>,  <41.888794, 36.267979, 32.114544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.005920, 36.059879, 32.138542>,  <42.201134, 35.713047, 32.178535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005920, 36.059879, 32.138542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113137, -0.176430, -0.977790,
		-0.865463, -0.465879, 0.184202,
		-0.488031, 0.867081, -0.099986,
		41.859512, 36.320004, 32.108547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706013, 35.467606, 31.838522>,  <42.201134, 35.713047, 32.178535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706013, 35.467606, 31.838522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713619, 35.862053, 31.772539>,  <41.718182, 36.098721, 31.732948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713619, 35.862053, 31.772539>,  <41.706013, 35.467606, 31.838522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713619, 35.862053, 31.772539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144745, -0.160535, -0.976359,
		-0.989286, 0.042442, 0.139683,
		0.019015, 0.986117, -0.164959,
		41.719322, 36.157887, 31.723051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174118, 35.661678, 31.368792>,  <41.706013, 35.467606, 31.838522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174118, 35.661678, 31.368792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445286, 35.952515, 31.325430>,  <41.607986, 36.127018, 31.299412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445286, 35.952515, 31.325430>,  <41.174118, 35.661678, 31.368792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445286, 35.952515, 31.325430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009201, -0.155845, -0.987739,
		-0.735075, 0.668614, -0.112341,
		0.677924, 0.727095, -0.108406,
		41.648663, 36.170643, 31.292908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923588, 35.897736, 30.847067>,  <41.174118, 35.661678, 31.368792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923588, 35.897736, 30.847067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.308029, 36.008053, 30.853001>,  <41.538692, 36.074242, 30.856562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.308029, 36.008053, 30.853001>,  <40.923588, 35.897736, 30.847067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308029, 36.008053, 30.853001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051526, -0.126277, -0.990656,
		-0.271344, 0.952886, -0.135575,
		0.961102, 0.275794, 0.014834,
		41.596359, 36.090790, 30.857450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974609, 36.076290, 30.143255>,  <40.923588, 35.897736, 30.847067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974609, 36.076290, 30.143255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349964, 36.088535, 30.280941>,  <41.575176, 36.095882, 30.363552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349964, 36.088535, 30.280941>,  <40.974609, 36.076290, 30.143255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349964, 36.088535, 30.280941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341133, -0.241238, -0.908533,
		0.055223, 0.969983, -0.236819,
		0.938391, 0.030615, 0.344215,
		41.631481, 36.097721, 30.384205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708542, 36.777027, 30.142843>,  <40.974609, 36.076290, 30.143255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708542, 36.777027, 30.142843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423904, 37.010025, 29.985704>,  <40.253120, 37.149822, 29.891422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423904, 37.010025, 29.985704>,  <40.708542, 36.777027, 30.142843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423904, 37.010025, 29.985704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657239, -0.354262, 0.665233,
		0.248326, 0.731572, 0.634931,
		-0.711598, 0.582496, -0.392845,
		40.210426, 37.184772, 29.867851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582031, 37.265240, 30.644030>,  <40.708542, 36.777027, 30.142843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582031, 37.265240, 30.644030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269535, 37.221077, 30.398273>,  <40.082039, 37.194580, 30.250820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269535, 37.221077, 30.398273>,  <40.582031, 37.265240, 30.644030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269535, 37.221077, 30.398273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593957, -0.171315, 0.786045,
		-0.192035, 0.979011, 0.068264,
		-0.781241, -0.110402, -0.614389,
		40.035164, 37.187958, 30.213957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047703, 37.609062, 30.989611>,  <40.582031, 37.265240, 30.644030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047703, 37.609062, 30.989611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.862587, 37.396763, 30.705601>,  <39.751518, 37.269382, 30.535194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.862587, 37.396763, 30.705601>,  <40.047703, 37.609062, 30.989611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862587, 37.396763, 30.705601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638086, -0.356560, 0.682431,
		-0.615362, 0.768880, -0.173647,
		-0.462791, -0.530744, -0.710025,
		39.723751, 37.237541, 30.492594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325645, 37.711975, 31.011366>,  <40.047703, 37.609062, 30.989611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325645, 37.711975, 31.011366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.358238, 37.359993, 30.824158>,  <39.377792, 37.148804, 30.711834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.358238, 37.359993, 30.824158>,  <39.325645, 37.711975, 31.011366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358238, 37.359993, 30.824158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581916, -0.423233, 0.694441,
		-0.809157, 0.215764, -0.546545,
		0.081480, -0.879955, -0.468018,
		39.382683, 37.096008, 30.683752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683430, 37.582508, 30.918941>,  <39.325645, 37.711975, 31.011366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683430, 37.582508, 30.918941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.859642, 37.225746, 30.878059>,  <38.965370, 37.011688, 30.853529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.859642, 37.225746, 30.878059>,  <38.683430, 37.582508, 30.918941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859642, 37.225746, 30.878059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715090, -0.417451, 0.560698,
		-0.542753, -0.173916, -0.821689,
		0.440529, -0.891901, -0.102207,
		38.991802, 36.958176, 30.847397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229942, 37.128197, 30.616114>,  <38.683430, 37.582508, 30.918941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229942, 37.128197, 30.616114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473377, 36.890636, 30.826603>,  <38.619438, 36.748100, 30.952896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473377, 36.890636, 30.826603>,  <38.229942, 37.128197, 30.616114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473377, 36.890636, 30.826603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784702, -0.352031, 0.510212,
		-0.117766, -0.723437, -0.680272,
		0.608584, -0.593897, 0.526225,
		38.655952, 36.712467, 30.984470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899982, 36.450260, 30.713739>,  <38.229942, 37.128197, 30.616114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899982, 36.450260, 30.713739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185093, 36.446205, 30.994265>,  <38.356159, 36.443771, 31.162580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185093, 36.446205, 30.994265>,  <37.899982, 36.450260, 30.713739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185093, 36.446205, 30.994265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584568, -0.561127, 0.586018,
		0.387588, -0.827668, -0.405884,
		0.712780, -0.010133, 0.701314,
		38.398926, 36.443165, 31.204659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898972, 35.779125, 30.904610>,  <37.899982, 36.450260, 30.713739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898972, 35.779125, 30.904610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078751, 35.960835, 31.212278>,  <38.186619, 36.069862, 31.396879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078751, 35.960835, 31.212278>,  <37.898972, 35.779125, 30.904610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078751, 35.960835, 31.212278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501909, -0.583866, 0.638113,
		0.738973, -0.672855, -0.034414,
		0.449451, 0.454276, 0.769173,
		38.213585, 36.097118, 31.443029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192108, 35.206760, 31.408022>,  <37.898972, 35.779125, 30.904610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192108, 35.206760, 31.408022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116295, 35.540344, 31.615324>,  <38.070808, 35.740494, 31.739706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116295, 35.540344, 31.615324>,  <38.192108, 35.206760, 31.408022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116295, 35.540344, 31.615324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286108, -0.551826, 0.783346,
		0.939266, 0.000191, 0.343191,
		-0.189531, 0.833959, 0.518256,
		38.059437, 35.790531, 31.770802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357719, 35.090851, 32.116203>,  <38.192108, 35.206760, 31.408022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357719, 35.090851, 32.116203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.109871, 35.404213, 32.135571>,  <37.961163, 35.592232, 32.147190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.109871, 35.404213, 32.135571>,  <38.357719, 35.090851, 32.116203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109871, 35.404213, 32.135571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411062, -0.376434, 0.830256,
		0.668657, 0.494538, 0.555275,
		-0.619618, 0.783409, 0.048419,
		37.923985, 35.639236, 32.150097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387222, 35.440380, 32.892262>,  <38.357719, 35.090851, 32.116203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387222, 35.440380, 32.892262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039883, 35.488182, 32.699726>,  <37.831478, 35.516865, 32.584206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039883, 35.488182, 32.699726>,  <38.387222, 35.440380, 32.892262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039883, 35.488182, 32.699726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492427, -0.092164, 0.865460,
		0.059065, 0.988547, 0.138878,
		-0.868347, 0.119506, -0.481343,
		37.779377, 35.524033, 32.555325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853020, 34.917221, 33.126408>,  <38.387222, 35.440380, 32.892262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853020, 34.917221, 33.126408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929199, 35.001793, 33.509872>,  <37.974907, 35.052536, 33.739952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929199, 35.001793, 33.509872>,  <37.853020, 34.917221, 33.126408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929199, 35.001793, 33.509872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918499, -0.383092, -0.097982,
		0.346539, 0.899188, -0.267156,
		0.190450, 0.211428, 0.958659,
		37.986336, 35.065220, 33.797470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.364059, 38.613998, 27.159031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036430, 38.531094, 26.945051>,  <41.839855, 38.481350, 26.816664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036430, 38.531094, 26.945051>,  <42.364059, 38.613998, 27.159031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036430, 38.531094, 26.945051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502533, -0.190606, 0.843285,
		-0.276741, 0.959538, 0.051966,
		-0.819069, -0.207257, -0.534948,
		41.790710, 38.468918, 26.784567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894730, 39.113594, 27.451944>,  <42.364059, 38.613998, 27.159031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894730, 39.113594, 27.451944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684246, 38.808941, 27.300676>,  <41.557957, 38.626148, 27.209915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684246, 38.808941, 27.300676>,  <41.894730, 39.113594, 27.451944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684246, 38.808941, 27.300676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575915, -0.007997, 0.817470,
		-0.625640, 0.647955, -0.434430,
		-0.526210, -0.761637, -0.378170,
		41.526382, 38.580448, 27.187225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156422, 39.201515, 27.642382>,  <41.894730, 39.113594, 27.451944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156422, 39.201515, 27.642382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218086, 38.814724, 27.561207>,  <41.255085, 38.582649, 27.512501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218086, 38.814724, 27.561207>,  <41.156422, 39.201515, 27.642382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218086, 38.814724, 27.561207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576551, -0.254840, 0.776303,
		-0.802385, -0.002674, -0.596800,
		0.154165, -0.966980, -0.202938,
		41.264336, 38.524632, 27.500326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584553, 38.942879, 27.640478>,  <41.156422, 39.201515, 27.642382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584553, 38.942879, 27.640478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808254, 38.615826, 27.695204>,  <40.942474, 38.419594, 27.728039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808254, 38.615826, 27.695204>,  <40.584553, 38.942879, 27.640478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808254, 38.615826, 27.695204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608655, -0.292927, 0.737382,
		-0.562829, -0.495655, -0.661475,
		0.559252, -0.817630, 0.136815,
		40.976028, 38.370537, 27.736248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117390, 38.446739, 27.831816>,  <40.584553, 38.942879, 27.640478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117390, 38.446739, 27.831816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446480, 38.241962, 27.930647>,  <40.643932, 38.119095, 27.989944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446480, 38.241962, 27.930647>,  <40.117390, 38.446739, 27.831816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446480, 38.241962, 27.930647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463936, -0.353558, 0.812256,
		-0.328463, -0.782892, -0.528385,
		0.822724, -0.511933, 0.247082,
		40.693295, 38.088379, 28.004770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931541, 37.626732, 27.964172>,  <40.117390, 38.446739, 27.831816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931541, 37.626732, 27.964172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256306, 37.748009, 28.163719>,  <40.451164, 37.820774, 28.283447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256306, 37.748009, 28.163719>,  <39.931541, 37.626732, 27.964172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256306, 37.748009, 28.163719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356529, -0.419137, 0.834992,
		0.462261, -0.855802, -0.232204,
		0.811912, 0.303196, 0.498869,
		40.499878, 37.838966, 28.313379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030716, 37.082104, 28.266088>,  <39.931541, 37.626732, 27.964172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030716, 37.082104, 28.266088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247410, 37.345142, 28.475506>,  <40.377426, 37.502964, 28.601156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247410, 37.345142, 28.475506>,  <40.030716, 37.082104, 28.266088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247410, 37.345142, 28.475506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467678, -0.281733, 0.837797,
		0.698431, -0.698709, 0.154920,
		0.541731, 0.657596, 0.523541,
		40.409927, 37.542419, 28.632568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354801, 36.670959, 28.746958>,  <40.030716, 37.082104, 28.266088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354801, 36.670959, 28.746958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349133, 37.049412, 28.876348>,  <40.345730, 37.276482, 28.953983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349133, 37.049412, 28.876348>,  <40.354801, 36.670959, 28.746958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349133, 37.049412, 28.876348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460208, -0.293381, 0.837935,
		0.887698, -0.136989, 0.439575,
		-0.014175, 0.946130, 0.323477,
		40.344879, 37.333252, 28.973392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655033, 36.538673, 29.375181>,  <40.354801, 36.670959, 28.746958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655033, 36.538673, 29.375181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446896, 36.879578, 29.396700>,  <40.322014, 37.084122, 29.409611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446896, 36.879578, 29.396700>,  <40.655033, 36.538673, 29.375181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446896, 36.879578, 29.396700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549467, -0.382370, 0.742886,
		0.653702, 0.356998, 0.667253,
		-0.520346, 0.852259, 0.053797,
		40.290791, 37.135254, 29.412840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389629, 36.420982, 29.579138>,  <40.655033, 36.538673, 29.375181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389629, 36.420982, 29.579138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657166, 36.216213, 29.794764>,  <41.817688, 36.093353, 29.924139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657166, 36.216213, 29.794764>,  <41.389629, 36.420982, 29.579138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657166, 36.216213, 29.794764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305179, -0.472137, -0.827015,
		0.677875, 0.717653, -0.159559,
		0.668843, -0.511919, 0.539062,
		41.857819, 36.062637, 29.956482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984913, 36.348373, 29.217665>,  <41.389629, 36.420982, 29.579138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984913, 36.348373, 29.217665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039768, 36.047836, 29.475866>,  <42.072681, 35.867512, 29.630787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039768, 36.047836, 29.475866>,  <41.984913, 36.348373, 29.217665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039768, 36.047836, 29.475866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412625, -0.549099, -0.726794,
		0.900519, 0.366019, 0.234724,
		0.137134, -0.751345, 0.645503,
		42.080910, 35.822433, 29.669518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703739, 36.276283, 29.197441>,  <41.984913, 36.348373, 29.217665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703739, 36.276283, 29.197441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569366, 35.920929, 29.322609>,  <42.488743, 35.707714, 29.397709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569366, 35.920929, 29.322609>,  <42.703739, 36.276283, 29.197441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569366, 35.920929, 29.322609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598000, -0.457841, -0.657858,
		0.727700, -0.033868, 0.685058,
		-0.335928, -0.888389, 0.312918,
		42.468590, 35.654411, 29.416485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308632, 35.994404, 29.315126>,  <42.703739, 36.276283, 29.197441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308632, 35.994404, 29.315126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037739, 35.701191, 29.289755>,  <42.875202, 35.525265, 29.274532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037739, 35.701191, 29.289755>,  <43.308632, 35.994404, 29.315126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037739, 35.701191, 29.289755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523543, -0.419523, -0.741554,
		0.516972, -0.535412, 0.667888,
		-0.677232, -0.733031, -0.063430,
		42.834568, 35.481281, 29.270725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639511, 35.348335, 29.154881>,  <43.308632, 35.994404, 29.315126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639511, 35.348335, 29.154881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269253, 35.233391, 29.056412>,  <43.047096, 35.164425, 28.997332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269253, 35.233391, 29.056412>,  <43.639511, 35.348335, 29.154881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269253, 35.233391, 29.056412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364888, -0.505698, -0.781746,
		0.100153, -0.813447, 0.572952,
		-0.925649, -0.287358, -0.246170,
		42.991558, 35.147182, 28.982561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656864, 34.629261, 29.041080>,  <43.639511, 35.348335, 29.154881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656864, 34.629261, 29.041080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365654, 34.785084, 28.815435>,  <43.190929, 34.878578, 28.680048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365654, 34.785084, 28.815435>,  <43.656864, 34.629261, 29.041080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365654, 34.785084, 28.815435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413316, -0.407083, -0.814526,
		-0.546944, -0.826154, 0.135358,
		-0.728026, 0.389555, -0.564115,
		43.147247, 34.901951, 28.646200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361580, 34.038033, 28.635454>,  <43.656864, 34.629261, 29.041080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361580, 34.038033, 28.635454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234364, 34.363384, 28.440615>,  <43.158035, 34.558594, 28.323711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234364, 34.363384, 28.440615>,  <43.361580, 34.038033, 28.635454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234364, 34.363384, 28.440615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308278, -0.397134, -0.864436,
		-0.896558, -0.425086, -0.124443,
		-0.318039, 0.813380, -0.487098,
		43.138950, 34.607399, 28.294485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068226, 33.796238, 28.069353>,  <43.361580, 34.038033, 28.635454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068226, 33.796238, 28.069353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154858, 34.175014, 27.974365>,  <43.206837, 34.402279, 27.917374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154858, 34.175014, 27.974365>,  <43.068226, 33.796238, 28.069353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154858, 34.175014, 27.974365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367436, -0.304423, -0.878816,
		-0.904479, 0.103083, -0.413874,
		0.216584, 0.946943, -0.237468,
		43.219833, 34.459099, 27.903124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146008, 33.815250, 27.305176>,  <43.068226, 33.796238, 28.069353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146008, 33.815250, 27.305176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343010, 34.130951, 27.451880>,  <43.461212, 34.320374, 27.539902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343010, 34.130951, 27.451880>,  <43.146008, 33.815250, 27.305176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343010, 34.130951, 27.451880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575539, 0.020743, -0.817511,
		-0.652831, 0.613717, -0.444030,
		0.492510, 0.789253, 0.366760,
		43.490765, 34.367725, 27.561907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079483, 34.201057, 26.767351>,  <43.146008, 33.815250, 27.305176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079483, 34.201057, 26.767351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396866, 34.339367, 26.967699>,  <43.587296, 34.422352, 27.087908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396866, 34.339367, 26.967699>,  <43.079483, 34.201057, 26.767351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396866, 34.339367, 26.967699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545776, -0.040011, -0.836975,
		-0.269365, 0.937464, -0.220463,
		0.793455, 0.345776, 0.500868,
		43.634903, 34.443100, 27.117960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382275, 34.744804, 26.331408>,  <43.079483, 34.201057, 26.767351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382275, 34.744804, 26.331408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683739, 34.658516, 26.579750>,  <43.864616, 34.606743, 26.728756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683739, 34.658516, 26.579750>,  <43.382275, 34.744804, 26.331408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683739, 34.658516, 26.579750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651380, 0.118979, -0.749365,
		0.087787, 0.969179, 0.230188,
		0.753657, -0.215724, 0.620858,
		43.909836, 34.593800, 26.766008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846409, 35.316616, 26.305714>,  <43.382275, 34.744804, 26.331408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846409, 35.316616, 26.305714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052372, 35.002457, 26.443129>,  <44.175949, 34.813961, 26.525578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052372, 35.002457, 26.443129>,  <43.846409, 35.316616, 26.305714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052372, 35.002457, 26.443129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741094, 0.206403, -0.638888,
		0.430877, 0.583559, 0.688334,
		0.514903, -0.785402, 0.343537,
		44.206844, 34.766834, 26.546190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510841, 35.405876, 26.251856>,  <43.846409, 35.316616, 26.305714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510841, 35.405876, 26.251856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541706, 35.009193, 26.292952>,  <44.560226, 34.771183, 26.317610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541706, 35.009193, 26.292952>,  <44.510841, 35.405876, 26.251856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541706, 35.009193, 26.292952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785052, -0.003088, -0.619422,
		0.614604, 0.128454, 0.778307,
		0.077164, -0.991711, 0.102742,
		44.564854, 34.711681, 26.323774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269653, 35.292587, 26.338306>,  <44.510841, 35.405876, 26.251856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269653, 35.292587, 26.338306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098274, 34.954716, 26.209961>,  <44.995445, 34.751995, 26.132954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098274, 34.954716, 26.209961>,  <45.269653, 35.292587, 26.338306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098274, 34.954716, 26.209961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605185, -0.004568, -0.796072,
		0.670958, -0.535256, 0.513144,
		-0.428447, -0.844677, -0.320864,
		44.969742, 34.701313, 26.113701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.041897, 32.639160, 22.227865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288784, 32.904587, 22.396971>,  <38.436916, 33.063843, 22.498434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288784, 32.904587, 22.396971>,  <38.041897, 32.639160, 22.227865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288784, 32.904587, 22.396971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453292, -0.139292, 0.880411,
		0.643096, -0.735039, 0.214815,
		0.617214, 0.663563, 0.422766,
		38.473949, 33.103657, 22.523800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201523, 32.328159, 22.879417>,  <38.041897, 32.639160, 22.227865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201523, 32.328159, 22.879417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199684, 32.727962, 22.867014>,  <38.198582, 32.967846, 22.859571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199684, 32.727962, 22.867014>,  <38.201523, 32.328159, 22.879417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199684, 32.727962, 22.867014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351340, 0.027419, 0.935846,
		0.936237, 0.015196, 0.351041,
		-0.004596, 0.999508, -0.031009,
		38.198307, 33.027817, 22.857712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694981, 32.488480, 23.368191>,  <38.201523, 32.328159, 22.879417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694981, 32.488480, 23.368191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437260, 32.786072, 23.297337>,  <38.282627, 32.964626, 23.254824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437260, 32.786072, 23.297337>,  <38.694981, 32.488480, 23.368191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437260, 32.786072, 23.297337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195005, 0.064147, 0.978702,
		0.739495, 0.665118, 0.103750,
		-0.644298, 0.743978, -0.177138,
		38.243969, 33.009266, 23.244196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717804, 32.887650, 23.931293>,  <38.694981, 32.488480, 23.368191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717804, 32.887650, 23.931293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380863, 33.036308, 23.775183>,  <38.178699, 33.125504, 23.681517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380863, 33.036308, 23.775183>,  <38.717804, 32.887650, 23.931293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380863, 33.036308, 23.775183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374631, 0.116772, 0.919791,
		0.387413, 0.921000, 0.040868,
		-0.842355, 0.371650, -0.390275,
		38.128155, 33.147804, 23.658100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627087, 33.526562, 24.222343>,  <38.717804, 32.887650, 23.931293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627087, 33.526562, 24.222343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250851, 33.488377, 24.092001>,  <38.025108, 33.465466, 24.013796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250851, 33.488377, 24.092001>,  <38.627087, 33.526562, 24.222343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250851, 33.488377, 24.092001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339542, 0.257167, 0.904752,
		-0.002573, 0.961640, -0.274303,
		-0.940587, -0.095465, -0.325855,
		37.968674, 33.459736, 23.994244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247910, 34.158337, 24.323643>,  <38.627087, 33.526562, 24.222343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247910, 34.158337, 24.323643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995819, 33.848820, 24.298168>,  <37.844563, 33.663109, 24.282883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995819, 33.848820, 24.298168>,  <38.247910, 34.158337, 24.323643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995819, 33.848820, 24.298168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401415, 0.254527, 0.879819,
		-0.664588, 0.580052, -0.471022,
		-0.630229, -0.773793, -0.063686,
		37.806751, 33.616680, 24.279062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899212, 34.151798, 24.927586>,  <38.247910, 34.158337, 24.323643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899212, 34.151798, 24.927586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666302, 33.855553, 24.793455>,  <37.526554, 33.677807, 24.712976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666302, 33.855553, 24.793455>,  <37.899212, 34.151798, 24.927586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666302, 33.855553, 24.793455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489515, -0.009927, 0.871938,
		-0.649100, 0.671856, -0.356762,
		-0.582276, -0.740615, -0.335327,
		37.491619, 33.633369, 24.692858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130775, 34.343361, 25.043715>,  <37.899212, 34.151798, 24.927586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130775, 34.343361, 25.043715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.208904, 33.951077, 25.040777>,  <37.255779, 33.715706, 25.039015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.208904, 33.951077, 25.040777>,  <37.130775, 34.343361, 25.043715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208904, 33.951077, 25.040777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364945, -0.079626, 0.927618,
		-0.910311, -0.178502, -0.373459,
		0.195318, -0.980712, -0.007341,
		37.267498, 33.656864, 25.038574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563873, 33.990582, 25.355730>,  <37.130775, 34.343361, 25.043715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563873, 33.990582, 25.355730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873978, 33.738152, 25.366411>,  <37.060040, 33.586693, 25.372820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873978, 33.738152, 25.366411>,  <36.563873, 33.990582, 25.355730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873978, 33.738152, 25.366411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190267, -0.193011, 0.962572,
		-0.602298, -0.751329, -0.269707,
		0.775265, -0.631072, 0.026703,
		37.106556, 33.548832, 25.374422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277863, 33.393234, 25.703608>,  <36.563873, 33.990582, 25.355730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277863, 33.393234, 25.703608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670444, 33.330456, 25.747635>,  <36.905994, 33.292789, 25.774052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670444, 33.330456, 25.747635>,  <36.277863, 33.393234, 25.703608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670444, 33.330456, 25.747635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163943, -0.389644, 0.906256,
		-0.099343, -0.907494, -0.408148,
		0.981455, -0.156943, 0.110069,
		36.964882, 33.283371, 25.780655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310627, 32.753765, 25.944212>,  <36.277863, 33.393234, 25.703608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310627, 32.753765, 25.944212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667549, 32.904373, 26.043833>,  <36.881702, 32.994736, 26.103605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667549, 32.904373, 26.043833>,  <36.310627, 32.753765, 25.944212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667549, 32.904373, 26.043833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148796, -0.275561, 0.949698,
		0.426208, -0.884477, -0.189860,
		0.892304, 0.376518, 0.249053,
		36.935242, 33.017330, 26.118549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685360, 32.274044, 26.361555>,  <36.310627, 32.753765, 25.944212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685360, 32.274044, 26.361555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830578, 32.631657, 26.466549>,  <36.917709, 32.846226, 26.529545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830578, 32.631657, 26.466549>,  <36.685360, 32.274044, 26.361555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830578, 32.631657, 26.466549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217371, -0.192670, 0.956885,
		0.906062, -0.404450, 0.124389,
		0.363046, 0.894035, 0.262487,
		36.939491, 32.899868, 26.545296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123039, 32.125984, 26.970558>,  <36.685360, 32.274044, 26.361555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123039, 32.125984, 26.970558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054317, 32.520012, 26.966106>,  <37.013084, 32.756428, 26.963434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054317, 32.520012, 26.966106>,  <37.123039, 32.125984, 26.970558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054317, 32.520012, 26.966106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211923, -0.025922, 0.976942,
		0.962066, 0.170205, 0.213212,
		-0.171808, 0.985068, -0.011132,
		37.002773, 32.815533, 26.962767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458553, 32.350609, 27.540163>,  <37.123039, 32.125984, 26.970558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458553, 32.350609, 27.540163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155735, 32.592422, 27.441027>,  <36.974045, 32.737511, 27.381544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155735, 32.592422, 27.441027>,  <37.458553, 32.350609, 27.540163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155735, 32.592422, 27.441027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269431, 0.056722, 0.961348,
		0.595223, 0.794559, 0.119938,
		-0.757044, 0.604532, -0.247841,
		36.928623, 32.773781, 27.366674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118393, 32.620502, 27.914270>,  <37.458553, 32.350609, 27.540163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118393, 32.620502, 27.914270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358994, 32.343819, 28.074137>,  <38.503353, 32.177807, 28.170057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358994, 32.343819, 28.074137>,  <38.118393, 32.620502, 27.914270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358994, 32.343819, 28.074137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458852, -0.110388, -0.881628,
		0.653949, 0.713689, 0.250994,
		0.601502, -0.691710, 0.399666,
		38.539444, 32.136307, 28.194036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758541, 32.909325, 27.808136>,  <38.118393, 32.620502, 27.914270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758541, 32.909325, 27.808136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777546, 32.510727, 27.835665>,  <38.788948, 32.271568, 27.852182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777546, 32.510727, 27.835665>,  <38.758541, 32.909325, 27.808136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777546, 32.510727, 27.835665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366558, -0.046697, -0.929223,
		0.929181, 0.069380, 0.363055,
		0.047516, -0.996497, 0.068822,
		38.791801, 32.211777, 27.856312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283096, 32.731884, 27.451063>,  <38.758541, 32.909325, 27.808136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283096, 32.731884, 27.451063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.121933, 32.366287, 27.470179>,  <39.025234, 32.146931, 27.481647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.121933, 32.366287, 27.470179>,  <39.283096, 32.731884, 27.451063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121933, 32.366287, 27.470179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501514, -0.264154, -0.823837,
		0.765602, -0.307967, 0.564810,
		-0.402911, -0.913991, 0.047787,
		39.001060, 32.092091, 27.484514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838234, 32.263275, 27.426544>,  <39.283096, 32.731884, 27.451063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838234, 32.263275, 27.426544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519173, 32.048290, 27.317091>,  <39.327736, 31.919298, 27.251419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519173, 32.048290, 27.317091>,  <39.838234, 32.263275, 27.426544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519173, 32.048290, 27.317091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385994, -0.106324, -0.916354,
		0.463416, -0.836555, 0.292269,
		-0.797656, -0.537467, -0.273633,
		39.279877, 31.887051, 27.235001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986938, 31.581257, 27.133169>,  <39.838234, 32.263275, 27.426544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986938, 31.581257, 27.133169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611546, 31.631231, 27.004393>,  <39.386311, 31.661215, 26.927126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611546, 31.631231, 27.004393>,  <39.986938, 31.581257, 27.133169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611546, 31.631231, 27.004393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257652, -0.367425, -0.893652,
		-0.229937, -0.921624, 0.312632,
		-0.938480, 0.124934, -0.321943,
		39.330002, 31.668713, 26.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731815, 30.966272, 26.769245>,  <39.986938, 31.581257, 27.133169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731815, 30.966272, 26.769245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527210, 31.284550, 26.639492>,  <39.404446, 31.475517, 26.561640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527210, 31.284550, 26.639492>,  <39.731815, 30.966272, 26.769245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527210, 31.284550, 26.639492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265209, -0.212884, -0.940396,
		-0.817324, -0.567055, -0.102132,
		-0.511514, 0.795695, -0.324383,
		39.373756, 31.523258, 26.542177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162811, 30.736481, 26.290066>,  <39.731815, 30.966272, 26.769245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162811, 30.736481, 26.290066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274166, 31.109806, 26.199354>,  <39.340981, 31.333801, 26.144928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274166, 31.109806, 26.199354>,  <39.162811, 30.736481, 26.290066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274166, 31.109806, 26.199354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155071, -0.276691, -0.948364,
		-0.947867, 0.228849, -0.221757,
		0.278391, 0.933311, -0.226778,
		39.357685, 31.389799, 26.131321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889511, 30.806370, 25.566351>,  <39.162811, 30.736481, 26.290066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889511, 30.806370, 25.566351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.083031, 31.153728, 25.609842>,  <39.199142, 31.362144, 25.635937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.083031, 31.153728, 25.609842>,  <38.889511, 30.806370, 25.566351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083031, 31.153728, 25.609842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113938, 0.060679, -0.991633,
		-0.867730, 0.492140, -0.069587,
		0.483800, 0.868399, 0.108726,
		39.228172, 31.414248, 25.642460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698654, 31.161547, 25.052692>,  <38.889511, 30.806370, 25.566351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698654, 31.161547, 25.052692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036770, 31.343380, 25.165001>,  <39.239639, 31.452480, 25.232386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036770, 31.343380, 25.165001>,  <38.698654, 31.161547, 25.052692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036770, 31.343380, 25.165001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288160, 0.054656, -0.956021,
		-0.449936, 0.889026, -0.084792,
		0.845294, 0.454582, 0.280773,
		39.290359, 31.479755, 25.249233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763168, 31.725000, 24.541622>,  <38.698654, 31.161547, 25.052692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763168, 31.725000, 24.541622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124176, 31.665119, 24.703136>,  <39.340782, 31.629190, 24.800045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124176, 31.665119, 24.703136>,  <38.763168, 31.725000, 24.541622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124176, 31.665119, 24.703136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420528, 0.104364, -0.901257,
		0.092782, 0.983207, 0.157146,
		0.902523, -0.149705, 0.403783,
		39.394932, 31.620209, 24.824272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278797, 32.249683, 24.297211>,  <38.763168, 31.725000, 24.541622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278797, 32.249683, 24.297211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530991, 31.963467, 24.417536>,  <39.682304, 31.791735, 24.489731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530991, 31.963467, 24.417536>,  <39.278797, 32.249683, 24.297211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530991, 31.963467, 24.417536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617336, 0.227329, -0.753138,
		0.470522, 0.660542, 0.585059,
		0.630480, -0.715546, 0.300813,
		39.720135, 31.748802, 24.507780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022667, 32.507225, 24.229565>,  <39.278797, 32.249683, 24.297211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022667, 32.507225, 24.229565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073818, 32.110641, 24.219330>,  <40.104507, 31.872690, 24.213188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073818, 32.110641, 24.219330>,  <40.022667, 32.507225, 24.229565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073818, 32.110641, 24.219330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521144, 0.089122, -0.848803,
		0.843835, 0.095207, 0.528090,
		0.127876, -0.991460, -0.025587,
		40.112183, 31.813204, 24.211653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702229, 32.456306, 24.245625>,  <40.022667, 32.507225, 24.229565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702229, 32.456306, 24.245625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.544926, 32.126896, 24.082085>,  <40.450542, 31.929251, 23.983961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.544926, 32.126896, 24.082085>,  <40.702229, 32.456306, 24.245625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544926, 32.126896, 24.082085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522956, 0.165395, -0.836159,
		0.756219, -0.542635, 0.365624,
		-0.393257, -0.823524, -0.408849,
		40.426949, 31.879839, 23.959431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312004, 32.097748, 23.939226>,  <40.702229, 32.456306, 24.245625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312004, 32.097748, 23.939226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.970219, 32.016750, 23.747856>,  <40.765148, 31.968151, 23.633034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.970219, 32.016750, 23.747856>,  <41.312004, 32.097748, 23.939226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970219, 32.016750, 23.747856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478268, 0.053012, -0.876613,
		0.202875, -0.977847, 0.051552,
		-0.854460, -0.202499, -0.478427,
		40.713882, 31.956001, 23.604328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875744, 31.627024, 24.245007>,  <41.312004, 32.097748, 23.939226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875744, 31.627024, 24.245007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246632, 31.746889, 24.334867>,  <42.469166, 31.818808, 24.388784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246632, 31.746889, 24.334867>,  <41.875744, 31.627024, 24.245007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246632, 31.746889, 24.334867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269148, 0.116046, 0.956082,
		0.260432, -0.946961, 0.188254,
		0.927218, 0.299663, 0.224651,
		42.524796, 31.836788, 24.402264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091663, 31.228102, 24.751978>,  <41.875744, 31.627024, 24.245007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091663, 31.228102, 24.751978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.335178, 31.544016, 24.781952>,  <42.481289, 31.733564, 24.799936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.335178, 31.544016, 24.781952>,  <42.091663, 31.228102, 24.751978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335178, 31.544016, 24.781952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175348, 0.041840, 0.983617,
		0.773709, -0.611957, 0.163959,
		0.608792, 0.789783, 0.074933,
		42.517815, 31.780951, 24.804432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611012, 31.089191, 25.300661>,  <42.091663, 31.228102, 24.751978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611012, 31.089191, 25.300661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.599636, 31.487152, 25.261953>,  <42.592812, 31.725927, 25.238728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.599636, 31.487152, 25.261953>,  <42.611012, 31.089191, 25.300661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599636, 31.487152, 25.261953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062722, 0.094843, 0.993515,
		0.997626, 0.034326, 0.059704,
		-0.028441, 0.994900, -0.096770,
		42.591103, 31.785622, 25.232922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062904, 31.322659, 25.842335>,  <42.611012, 31.089191, 25.300661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062904, 31.322659, 25.842335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.854347, 31.644106, 25.727551>,  <42.729214, 31.836975, 25.658680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.854347, 31.644106, 25.727551>,  <43.062904, 31.322659, 25.842335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854347, 31.644106, 25.727551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187430, 0.220225, 0.957273,
		0.832479, 0.552899, 0.035799,
		-0.521391, 0.803619, -0.286963,
		42.697929, 31.885191, 25.641462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406109, 31.847832, 26.082661>,  <43.062904, 31.322659, 25.842335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406109, 31.847832, 26.082661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.035400, 31.995087, 26.052816>,  <42.812973, 32.083439, 26.034910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.035400, 31.995087, 26.052816>,  <43.406109, 31.847832, 26.082661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035400, 31.995087, 26.052816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037749, 0.288907, 0.956613,
		0.373721, 0.883746, -0.281648,
		-0.926773, 0.368138, -0.074610,
		42.757370, 32.105530, 26.030434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420204, 32.302711, 26.559484>,  <43.406109, 31.847832, 26.082661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420204, 32.302711, 26.559484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.025650, 32.264305, 26.506086>,  <42.788918, 32.241261, 26.474049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.025650, 32.264305, 26.506086>,  <43.420204, 32.302711, 26.559484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025650, 32.264305, 26.506086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153710, 0.249935, 0.955984,
		-0.058429, 0.963490, -0.261292,
		-0.986387, -0.096020, -0.133494,
		42.729733, 32.235500, 26.466038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143879, 32.793709, 27.040110>,  <43.420204, 32.302711, 26.559484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143879, 32.793709, 27.040110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.834965, 32.558907, 26.942947>,  <42.649616, 32.418026, 26.884651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.834965, 32.558907, 26.942947>,  <43.143879, 32.793709, 27.040110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834965, 32.558907, 26.942947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241542, -0.082322, 0.966892,
		-0.587566, 0.805387, -0.078210,
		-0.772285, -0.587004, -0.242905,
		42.603279, 32.382805, 26.870075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667534, 33.141598, 27.357704>,  <43.143879, 32.793709, 27.040110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667534, 33.141598, 27.357704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.490562, 32.791664, 27.278782>,  <42.384380, 32.581703, 27.231428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.490562, 32.791664, 27.278782>,  <42.667534, 33.141598, 27.357704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490562, 32.791664, 27.278782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314449, -0.054713, 0.947697,
		-0.839870, 0.481327, -0.250883,
		-0.442426, -0.874832, -0.197305,
		42.357834, 32.529213, 27.219591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861946, 33.267029, 27.483166>,  <42.667534, 33.141598, 27.357704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861946, 33.267029, 27.483166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.964462, 32.880779, 27.500528>,  <42.025974, 32.649029, 27.510946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.964462, 32.880779, 27.500528>,  <41.861946, 33.267029, 27.483166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964462, 32.880779, 27.500528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429204, -0.073450, 0.900216,
		-0.866081, -0.249351, -0.433275,
		0.256293, -0.965624, 0.043409,
		42.041351, 32.591091, 27.513552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349785, 32.961819, 27.779005>,  <41.861946, 33.267029, 27.483166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349785, 32.961819, 27.779005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641052, 32.697979, 27.853514>,  <41.815815, 32.539677, 27.898218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641052, 32.697979, 27.853514>,  <41.349785, 32.961819, 27.779005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641052, 32.697979, 27.853514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351014, -0.125461, 0.927927,
		-0.588688, -0.741075, -0.322885,
		0.728173, -0.659597, 0.186270,
		41.859505, 32.500099, 27.909395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043686, 32.579231, 28.246983>,  <41.349785, 32.961819, 27.779005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043686, 32.579231, 28.246983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.420204, 32.449219, 28.283480>,  <41.646114, 32.371212, 28.305378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.420204, 32.449219, 28.283480>,  <41.043686, 32.579231, 28.246983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420204, 32.449219, 28.283480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131461, -0.103964, 0.985855,
		-0.310946, -0.939972, -0.140590,
		0.941292, -0.325030, 0.091243,
		41.702591, 32.351711, 28.310852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938881, 31.959887, 28.554644>,  <41.043686, 32.579231, 28.246983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938881, 31.959887, 28.554644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319256, 32.047356, 28.642185>,  <41.547482, 32.099838, 28.694710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319256, 32.047356, 28.642185>,  <40.938881, 31.959887, 28.554644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319256, 32.047356, 28.642185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155877, -0.272395, 0.949475,
		0.267237, -0.937008, -0.224946,
		0.950940, 0.218671, 0.218852,
		41.604538, 32.112957, 28.707840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173740, 31.397156, 28.955172>,  <40.938881, 31.959887, 28.554644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173740, 31.397156, 28.955172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.368839, 31.736137, 29.039005>,  <41.485897, 31.939528, 29.089306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.368839, 31.736137, 29.039005>,  <41.173740, 31.397156, 28.955172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368839, 31.736137, 29.039005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128669, -0.167667, 0.977411,
		0.863452, -0.503694, 0.027262,
		0.487745, 0.847455, 0.209582,
		41.515163, 31.990374, 29.101879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567097, 31.270662, 29.565294>,  <41.173740, 31.397156, 28.955172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567097, 31.270662, 29.565294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.563503, 31.669239, 29.531769>,  <41.561348, 31.908384, 29.511654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.563503, 31.669239, 29.531769>,  <41.567097, 31.270662, 29.565294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563503, 31.669239, 29.531769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100992, 0.082483, 0.991462,
		0.994847, 0.017370, 0.099891,
		-0.008982, 0.996441, -0.083812,
		41.560810, 31.968172, 29.506626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.870346, 34.851505, 25.943026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.554596, 34.646263, 25.808201>,  <45.365147, 34.523117, 25.727306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.554596, 34.646263, 25.808201>,  <45.870346, 34.851505, 25.943026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554596, 34.646263, 25.808201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480966, -0.175676, -0.858959,
		0.381523, -0.840155, 0.385461,
		-0.789374, -0.513106, -0.337061,
		45.317783, 34.492332, 25.707083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129963, 34.152454, 25.602718>,  <45.870346, 34.851505, 25.943026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129963, 34.152454, 25.602718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.764427, 34.241764, 25.467043>,  <45.545105, 34.295349, 25.385637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.764427, 34.241764, 25.467043>,  <46.129963, 34.152454, 25.602718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764427, 34.241764, 25.467043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341993, -0.027217, -0.939308,
		-0.218956, -0.974375, -0.051487,
		-0.913838, 0.223276, -0.339189,
		45.490276, 34.308746, 25.365286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948071, 33.753658, 24.923010>,  <46.129963, 34.152454, 25.602718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948071, 33.753658, 24.923010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.670330, 34.036873, 24.871538>,  <45.503685, 34.206802, 24.840656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.670330, 34.036873, 24.871538>,  <45.948071, 33.753658, 24.923010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670330, 34.036873, 24.871538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194613, 0.012604, -0.980799,
		-0.692819, -0.706065, -0.146544,
		-0.694355, 0.708035, -0.128677,
		45.462025, 34.249283, 24.832935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410618, 33.439510, 24.443069>,  <45.948071, 33.753658, 24.923010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410618, 33.439510, 24.443069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.341076, 33.833408, 24.439985>,  <45.299351, 34.069748, 24.438135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.341076, 33.833408, 24.439985>,  <45.410618, 33.439510, 24.443069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341076, 33.833408, 24.439985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161205, 0.020736, -0.986703,
		-0.971487, -0.172788, -0.162351,
		-0.173857, 0.984741, -0.007710,
		45.288918, 34.128830, 24.437672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971230, 33.554520, 23.884411>,  <45.410618, 33.439510, 24.443069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971230, 33.554520, 23.884411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.153114, 33.906445, 23.939785>,  <45.262245, 34.117599, 23.973009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.153114, 33.906445, 23.939785>,  <44.971230, 33.554520, 23.884411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153114, 33.906445, 23.939785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342332, -0.029159, -0.939126,
		-0.822217, 0.474428, -0.314447,
		0.454716, 0.879811, 0.138437,
		45.289528, 34.170387, 23.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638165, 33.992287, 23.517006>,  <44.971230, 33.554520, 23.884411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638165, 33.992287, 23.517006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.015827, 34.114590, 23.566113>,  <45.242424, 34.187973, 23.595577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.015827, 34.114590, 23.566113>,  <44.638165, 33.992287, 23.517006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015827, 34.114590, 23.566113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075307, 0.162484, -0.983833,
		-0.320762, 0.938142, 0.130385,
		0.944161, 0.305758, 0.122767,
		45.299076, 34.206318, 23.602943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734417, 34.584866, 23.079163>,  <44.638165, 33.992287, 23.517006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734417, 34.584866, 23.079163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.114822, 34.510429, 23.177916>,  <45.343063, 34.465767, 23.237167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.114822, 34.510429, 23.177916>,  <44.734417, 34.584866, 23.079163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114822, 34.510429, 23.177916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292260, 0.280732, -0.914206,
		0.100819, 0.941573, 0.321367,
		0.951010, -0.186092, 0.246881,
		45.400124, 34.454601, 23.251980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076900, 35.211735, 22.765223>,  <44.734417, 34.584866, 23.079163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076900, 35.211735, 22.765223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.360470, 34.934155, 22.815590>,  <45.530613, 34.767605, 22.845810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.360470, 34.934155, 22.815590>,  <45.076900, 35.211735, 22.765223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360470, 34.934155, 22.815590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401713, 0.250553, -0.880823,
		0.579698, 0.675023, 0.456392,
		0.708927, -0.693950, 0.125921,
		45.573147, 34.725971, 22.853367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613140, 35.593891, 22.601646>,  <45.076900, 35.211735, 22.765223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613140, 35.593891, 22.601646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.729347, 35.213913, 22.555681>,  <45.799072, 34.985928, 22.528101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.729347, 35.213913, 22.555681>,  <45.613140, 35.593891, 22.601646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729347, 35.213913, 22.555681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293975, 0.202897, -0.934029,
		0.910591, 0.237574, 0.338206,
		0.290522, -0.949943, -0.114915,
		45.816505, 34.928928, 22.521206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259674, 35.635559, 22.229050>,  <45.613140, 35.593891, 22.601646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259674, 35.635559, 22.229050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.156174, 35.254169, 22.167173>,  <46.094074, 35.025333, 22.130047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.156174, 35.254169, 22.167173>,  <46.259674, 35.635559, 22.229050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156174, 35.254169, 22.167173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254995, 0.087038, -0.963017,
		0.931679, -0.288628, 0.220611,
		-0.258752, -0.953477, -0.154690,
		46.078548, 34.968128, 22.120766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875298, 35.253273, 21.876554>,  <46.259674, 35.635559, 22.229050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875298, 35.253273, 21.876554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.543346, 35.036873, 21.821966>,  <46.344177, 34.907032, 21.789213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.543346, 35.036873, 21.821966>,  <46.875298, 35.253273, 21.876554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543346, 35.036873, 21.821966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144606, 0.027688, -0.989102,
		0.538880, -0.840568, 0.055254,
		-0.829878, -0.540998, -0.136472,
		46.294384, 34.874573, 21.781025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051296, 34.560238, 21.604824>,  <46.875298, 35.253273, 21.876554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051296, 34.560238, 21.604824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.695965, 34.642235, 21.440458>,  <46.482765, 34.691433, 21.341839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.695965, 34.642235, 21.440458>,  <47.051296, 34.560238, 21.604824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695965, 34.642235, 21.440458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399077, -0.098063, -0.911658,
		-0.227174, -0.973840, 0.005306,
		-0.888330, 0.204988, -0.410915,
		46.429466, 34.703732, 21.317184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893105, 33.985859, 21.062580>,  <47.051296, 34.560238, 21.604824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893105, 33.985859, 21.062580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.666443, 34.304024, 20.976578>,  <46.530445, 34.494923, 20.924976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.666443, 34.304024, 20.976578>,  <46.893105, 33.985859, 21.062580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666443, 34.304024, 20.976578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213324, -0.110422, -0.970721,
		-0.795861, -0.595931, -0.107108,
		-0.566656, 0.795408, -0.215007,
		46.496445, 34.542645, 20.912075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449799, 33.821709, 20.547405>,  <46.893105, 33.985859, 21.062580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449799, 33.821709, 20.547405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.518909, 34.215675, 20.543713>,  <46.560375, 34.452057, 20.541496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.518909, 34.215675, 20.543713>,  <46.449799, 33.821709, 20.547405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518909, 34.215675, 20.543713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376945, -0.074778, -0.923212,
		-0.909979, 0.156026, -0.384180,
		0.172773, 0.984918, -0.009233,
		46.570740, 34.511150, 20.540943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828571, 33.975906, 20.377113>,  <46.449799, 33.821709, 20.547405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828571, 33.975906, 20.377113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.811420, 33.599377, 20.243208>,  <45.801128, 33.373459, 20.162865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.811420, 33.599377, 20.243208>,  <45.828571, 33.975906, 20.377113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811420, 33.599377, 20.243208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775214, -0.180026, 0.605503,
		-0.630242, 0.285477, -0.722010,
		-0.042877, -0.941326, -0.334766,
		45.798557, 33.316978, 20.142778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120148, 33.864613, 20.275082>,  <45.828571, 33.975906, 20.377113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120148, 33.864613, 20.275082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.281139, 33.498775, 20.290739>,  <45.377735, 33.279274, 20.300133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.281139, 33.498775, 20.290739>,  <45.120148, 33.864613, 20.275082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281139, 33.498775, 20.290739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677501, -0.268847, 0.684626,
		-0.615629, -0.302070, -0.727842,
		0.402483, -0.914590, 0.039143,
		45.401886, 33.224400, 20.302483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600933, 33.462936, 20.264919>,  <45.120148, 33.864613, 20.275082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600933, 33.462936, 20.264919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.868702, 33.211437, 20.423187>,  <45.029362, 33.060539, 20.518148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.868702, 33.211437, 20.423187>,  <44.600933, 33.462936, 20.264919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868702, 33.211437, 20.423187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696778, -0.346696, 0.627935,
		-0.257633, -0.696049, -0.670180,
		0.669422, -0.628744, 0.395671,
		45.069527, 33.022816, 20.541887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228191, 32.873299, 20.397461>,  <44.600933, 33.462936, 20.264919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228191, 32.873299, 20.397461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.560791, 32.787045, 20.602249>,  <44.760349, 32.735291, 20.725122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.560791, 32.787045, 20.602249>,  <44.228191, 32.873299, 20.397461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560791, 32.787045, 20.602249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544516, -0.498954, 0.674201,
		0.110065, -0.839372, -0.532298,
		0.831497, -0.215639, 0.511969,
		44.810242, 32.722351, 20.755840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201225, 32.049339, 20.524519>,  <44.228191, 32.873299, 20.397461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201225, 32.049339, 20.524519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.448120, 32.196003, 20.802967>,  <44.596256, 32.284000, 20.970036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.448120, 32.196003, 20.802967>,  <44.201225, 32.049339, 20.524519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448120, 32.196003, 20.802967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601902, -0.349740, 0.717910,
		0.506692, -0.862113, 0.004825,
		0.617233, 0.366664, 0.696119,
		44.633289, 32.306004, 21.011803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086067, 31.634865, 21.095442>,  <44.201225, 32.049339, 20.524519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086067, 31.634865, 21.095442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.287983, 31.934441, 21.267151>,  <44.409134, 32.114185, 21.370176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.287983, 31.934441, 21.267151>,  <44.086067, 31.634865, 21.095442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287983, 31.934441, 21.267151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409757, -0.229800, 0.882775,
		0.759791, -0.621515, 0.190882,
		0.504793, 0.748940, 0.429270,
		44.439423, 32.159122, 21.395931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443180, 31.349968, 21.646585>,  <44.086067, 31.634865, 21.095442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443180, 31.349968, 21.646585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.397915, 31.734755, 21.746033>,  <44.370754, 31.965628, 21.805700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.397915, 31.734755, 21.746033>,  <44.443180, 31.349968, 21.646585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397915, 31.734755, 21.746033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344092, -0.272685, 0.898468,
		0.932091, 0.016130, 0.361865,
		-0.113167, 0.961968, 0.248617,
		44.363964, 32.023346, 21.820618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811954, 31.504667, 22.300905>,  <44.443180, 31.349968, 21.646585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811954, 31.504667, 22.300905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.524960, 31.778454, 22.249178>,  <44.352764, 31.942726, 22.218142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.524960, 31.778454, 22.249178>,  <44.811954, 31.504667, 22.300905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524960, 31.778454, 22.249178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338030, -0.179803, 0.923800,
		0.609058, 0.706525, 0.360375,
		-0.717484, 0.684466, -0.129316,
		44.309715, 31.983793, 22.210382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814175, 31.864548, 22.973852>,  <44.811954, 31.504667, 22.300905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814175, 31.864548, 22.973852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.481705, 32.012310, 22.807625>,  <44.282223, 32.100967, 22.707890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.481705, 32.012310, 22.807625>,  <44.814175, 31.864548, 22.973852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481705, 32.012310, 22.807625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433591, 0.037259, 0.900339,
		0.348073, 0.928521, 0.129202,
		-0.831170, 0.369405, -0.415567,
		44.232353, 32.123131, 22.682955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584843, 32.399307, 23.416523>,  <44.814175, 31.864548, 22.973852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584843, 32.399307, 23.416523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.276730, 32.243641, 23.214445>,  <44.091862, 32.150242, 23.093199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.276730, 32.243641, 23.214445>,  <44.584843, 32.399307, 23.416523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276730, 32.243641, 23.214445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514095, -0.089792, 0.853020,
		-0.377325, 0.916783, -0.130902,
		-0.770280, -0.389162, -0.505194,
		44.045647, 32.126892, 23.062887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924454, 32.814774, 23.547922>,  <44.584843, 32.399307, 23.416523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924454, 32.814774, 23.547922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.792450, 32.465904, 23.403471>,  <43.713249, 32.256584, 23.316799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.792450, 32.465904, 23.403471>,  <43.924454, 32.814774, 23.547922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792450, 32.465904, 23.403471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573819, -0.118424, 0.810375,
		-0.749551, 0.474652, -0.461387,
		-0.330007, -0.872170, -0.361129,
		43.693447, 32.204254, 23.295132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206318, 32.957722, 23.523067>,  <43.924454, 32.814774, 23.547922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206318, 32.957722, 23.523067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.251781, 32.560547, 23.509436>,  <43.279060, 32.322243, 23.501257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.251781, 32.560547, 23.509436>,  <43.206318, 32.957722, 23.523067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251781, 32.560547, 23.509436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598077, -0.095767, 0.795696,
		-0.793338, -0.070054, -0.604737,
		0.113655, -0.992936, -0.034078,
		43.285877, 32.262665, 23.499212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598892, 32.739250, 23.668890>,  <43.206318, 32.957722, 23.523067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598892, 32.739250, 23.668890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833572, 32.420605, 23.727129>,  <42.974380, 32.229420, 23.762072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833572, 32.420605, 23.727129>,  <42.598892, 32.739250, 23.668890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833572, 32.420605, 23.727129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526415, -0.238546, 0.816078,
		-0.615366, -0.555433, -0.559302,
		0.586696, -0.796612, 0.145595,
		43.009583, 32.181622, 23.770807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132931, 32.202084, 23.774860>,  <42.598892, 32.739250, 23.668890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132931, 32.202084, 23.774860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480114, 32.078163, 23.930126>,  <42.688423, 32.003811, 24.023287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480114, 32.078163, 23.930126>,  <42.132931, 32.202084, 23.774860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480114, 32.078163, 23.930126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433966, -0.093044, 0.896111,
		-0.241497, -0.946239, -0.215200,
		0.867959, -0.309798, 0.388166,
		42.740501, 31.985224, 24.046576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596249, 31.814751, 23.340115>,  <42.132931, 32.202084, 23.774860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596249, 31.814751, 23.340115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214851, 31.893339, 23.248682>,  <40.986012, 31.940493, 23.193823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214851, 31.893339, 23.248682>,  <41.596249, 31.814751, 23.340115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214851, 31.893339, 23.248682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249860, 0.091044, -0.963992,
		-0.168585, -0.976274, -0.135900,
		-0.953493, 0.196471, -0.228583,
		40.928802, 31.952280, 23.180107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499504, 31.381655, 22.706997>,  <41.596249, 31.814751, 23.340115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499504, 31.381655, 22.706997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208420, 31.656010, 22.707201>,  <41.033772, 31.820623, 22.707323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208420, 31.656010, 22.707201>,  <41.499504, 31.381655, 22.706997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208420, 31.656010, 22.707201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125081, 0.133440, -0.983132,
		-0.674386, -0.715369, -0.182897,
		-0.727708, 0.685887, 0.000511,
		40.990108, 31.861776, 22.707354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247776, 31.172945, 22.124573>,  <41.499504, 31.381655, 22.706997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247776, 31.172945, 22.124573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109734, 31.541847, 22.194256>,  <41.026909, 31.763189, 22.236065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109734, 31.541847, 22.194256>,  <41.247776, 31.172945, 22.124573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109734, 31.541847, 22.194256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276321, 0.277220, -0.920215,
		-0.896967, -0.269433, -0.350508,
		-0.345104, 0.922255, 0.174207,
		41.006203, 31.818523, 22.246517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943020, 31.330708, 21.467415>,  <41.247776, 31.172945, 22.124573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943020, 31.330708, 21.467415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.966263, 31.686668, 21.648390>,  <40.980209, 31.900244, 21.756975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.966263, 31.686668, 21.648390>,  <40.943020, 31.330708, 21.467415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966263, 31.686668, 21.648390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268094, 0.422644, -0.865735,
		-0.961639, 0.171605, -0.214017,
		0.058111, 0.889901, 0.452437,
		40.983696, 31.953638, 21.784121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638790, 31.857973, 21.013884>,  <40.943020, 31.330708, 21.467415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638790, 31.857973, 21.013884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898518, 32.056107, 21.244717>,  <41.054356, 32.174988, 21.383217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898518, 32.056107, 21.244717>,  <40.638790, 31.857973, 21.013884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898518, 32.056107, 21.244717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331511, 0.498570, -0.800955,
		-0.684457, 0.711387, 0.159523,
		0.649322, 0.495336, 0.577082,
		41.093315, 32.204708, 21.417841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719273, 32.510246, 20.675932>,  <40.638790, 31.857973, 21.013884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719273, 32.510246, 20.675932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038254, 32.485977, 20.916061>,  <41.229641, 32.471416, 21.060139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038254, 32.485977, 20.916061>,  <40.719273, 32.510246, 20.675932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038254, 32.485977, 20.916061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573421, 0.385823, -0.722723,
		-0.187768, 0.920575, 0.342468,
		0.797453, -0.060674, 0.600323,
		41.277489, 32.467773, 21.096159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094479, 33.142506, 20.740509>,  <40.719273, 32.510246, 20.675932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094479, 33.142506, 20.740509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364029, 32.864956, 20.842043>,  <41.525757, 32.698425, 20.902964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364029, 32.864956, 20.842043>,  <41.094479, 33.142506, 20.740509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364029, 32.864956, 20.842043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627645, 0.356345, -0.692156,
		0.389816, 0.625745, 0.675638,
		0.673873, -0.693874, 0.253837,
		41.566193, 32.656792, 20.918194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784348, 33.778008, 21.121189>,  <41.094479, 33.142506, 20.740509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784348, 33.778008, 21.121189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568607, 34.093384, 21.002897>,  <40.439163, 34.282608, 20.931921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568607, 34.093384, 21.002897>,  <40.784348, 33.778008, 21.121189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568607, 34.093384, 21.002897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779273, -0.334250, 0.530104,
		0.319108, 0.516369, 0.794690,
		-0.539355, 0.788441, -0.295731,
		40.406799, 34.329918, 20.914179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554775, 34.158813, 21.808689>,  <40.784348, 33.778008, 21.121189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554775, 34.158813, 21.808689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315594, 34.212189, 21.492552>,  <40.172085, 34.244213, 21.302868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315594, 34.212189, 21.492552>,  <40.554775, 34.158813, 21.808689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315594, 34.212189, 21.492552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789169, -0.270513, 0.551393,
		-0.140224, 0.953425, 0.267057,
		-0.597954, 0.133434, -0.790346,
		40.136208, 34.252220, 21.255447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014061, 34.727135, 22.010862>,  <40.554775, 34.158813, 21.808689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014061, 34.727135, 22.010862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871696, 34.500462, 21.713623>,  <39.786278, 34.364456, 21.535280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871696, 34.500462, 21.713623>,  <40.014061, 34.727135, 22.010862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871696, 34.500462, 21.713623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854377, -0.124862, 0.504430,
		-0.378638, 0.814418, -0.439723,
		-0.355912, -0.566686, -0.743098,
		39.764923, 34.330456, 21.490694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333248, 34.866535, 22.029530>,  <40.014061, 34.727135, 22.010862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333248, 34.866535, 22.029530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.340836, 34.528156, 21.816357>,  <39.345387, 34.325130, 21.688452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.340836, 34.528156, 21.816357>,  <39.333248, 34.866535, 22.029530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340836, 34.528156, 21.816357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814992, -0.321848, 0.481874,
		-0.579162, 0.425198, -0.695542,
		0.018967, -0.845944, -0.532934,
		39.346527, 34.274372, 21.656477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698357, 34.863350, 21.904524>,  <39.333248, 34.866535, 22.029530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698357, 34.863350, 21.904524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834164, 34.490730, 21.852448>,  <38.915649, 34.267159, 21.821201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834164, 34.490730, 21.852448>,  <38.698357, 34.863350, 21.904524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834164, 34.490730, 21.852448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778919, -0.356041, 0.516255,
		-0.527270, -0.073868, -0.846481,
		0.339517, -0.931546, -0.130193,
		38.936020, 34.211266, 21.813391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142033, 34.468803, 21.553013>,  <38.698357, 34.863350, 21.904524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142033, 34.468803, 21.553013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398140, 34.219704, 21.732899>,  <38.551804, 34.070244, 21.840830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398140, 34.219704, 21.732899>,  <38.142033, 34.468803, 21.553013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398140, 34.219704, 21.732899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747452, -0.370076, 0.551687,
		-0.177136, -0.689365, -0.702423,
		0.640264, -0.622751, 0.449714,
		38.590218, 34.032879, 21.867813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859875, 33.777554, 21.616995>,  <38.142033, 34.468803, 21.553013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859875, 33.777554, 21.616995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.141888, 33.749737, 21.899296>,  <38.311096, 33.733047, 22.068676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.141888, 33.749737, 21.899296>,  <37.859875, 33.777554, 21.616995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141888, 33.749737, 21.899296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657611, -0.436646, 0.613912,
		0.265470, -0.896941, -0.353585,
		0.705035, -0.069546, 0.705755,
		38.353397, 33.728874, 22.111023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.601582, 35.851463, 20.560278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.826099, 35.629086, 20.805510>,  <43.960812, 35.495659, 20.952648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.826099, 35.629086, 20.805510>,  <43.601582, 35.851463, 20.560278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826099, 35.629086, 20.805510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415750, 0.451117, 0.789713,
		-0.715609, -0.698152, 0.022076,
		0.561299, -0.555947, 0.613080,
		43.994488, 35.462303, 20.989433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207169, 35.533619, 21.013220>,  <43.601582, 35.851463, 20.560278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207169, 35.533619, 21.013220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.553471, 35.531384, 21.213392>,  <43.761253, 35.530045, 21.333496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.553471, 35.531384, 21.213392>,  <43.207169, 35.533619, 21.013220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553471, 35.531384, 21.213392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457275, 0.397518, 0.795537,
		-0.203373, -0.917578, 0.341601,
		0.865759, -0.005585, 0.500430,
		43.813198, 35.529709, 21.363522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938637, 35.573654, 21.614109>,  <43.207169, 35.533619, 21.013220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938637, 35.573654, 21.614109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.323593, 35.654705, 21.686497>,  <43.554565, 35.703335, 21.729929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.323593, 35.654705, 21.686497>,  <42.938637, 35.573654, 21.614109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323593, 35.654705, 21.686497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236315, 0.295764, 0.925570,
		0.134017, -0.933525, 0.332523,
		0.962390, 0.202622, 0.180969,
		43.612309, 35.715492, 21.740788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043285, 35.409592, 22.290268>,  <42.938637, 35.573654, 21.614109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043285, 35.409592, 22.290268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.356461, 35.651688, 22.232729>,  <43.544365, 35.796944, 22.198206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.356461, 35.651688, 22.232729>,  <43.043285, 35.409592, 22.290268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356461, 35.651688, 22.232729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155923, 0.414768, 0.896468,
		0.602244, -0.679448, 0.419109,
		0.782937, 0.605241, -0.143850,
		43.591343, 35.833260, 22.189573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468987, 35.347950, 22.843407>,  <43.043285, 35.409592, 22.290268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468987, 35.347950, 22.843407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.561111, 35.708111, 22.695768>,  <43.616386, 35.924206, 22.607185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.561111, 35.708111, 22.695768>,  <43.468987, 35.347950, 22.843407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561111, 35.708111, 22.695768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133058, 0.404869, 0.904642,
		0.963976, -0.159241, 0.213053,
		0.230315, 0.900402, -0.369096,
		43.630207, 35.978230, 22.585039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897060, 35.741417, 23.342739>,  <43.468987, 35.347950, 22.843407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897060, 35.741417, 23.342739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.747154, 36.039852, 23.122593>,  <43.657211, 36.218914, 22.990505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.747154, 36.039852, 23.122593>,  <43.897060, 35.741417, 23.342739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747154, 36.039852, 23.122593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133469, 0.544027, 0.828384,
		0.917463, 0.383904, -0.104301,
		-0.374762, 0.746092, -0.550364,
		43.634727, 36.263680, 22.957483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188465, 36.397987, 23.618828>,  <43.897060, 35.741417, 23.342739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188465, 36.397987, 23.618828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.877415, 36.521648, 23.399841>,  <43.690784, 36.595844, 23.268450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.877415, 36.521648, 23.399841>,  <44.188465, 36.397987, 23.618828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877415, 36.521648, 23.399841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208521, 0.694655, 0.688457,
		0.593137, 0.649523, -0.475720,
		-0.777630, 0.309152, -0.547464,
		43.644127, 36.614395, 23.235601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230656, 37.122471, 23.681229>,  <44.188465, 36.397987, 23.618828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230656, 37.122471, 23.681229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.861156, 37.023071, 23.564655>,  <43.639458, 36.963432, 23.494711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.861156, 37.023071, 23.564655>,  <44.230656, 37.122471, 23.681229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861156, 37.023071, 23.564655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382754, 0.625920, 0.679502,
		0.013561, 0.739238, -0.673308,
		-0.923750, -0.248497, -0.291435,
		43.584030, 36.948521, 23.477224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917072, 37.799599, 23.569700>,  <44.230656, 37.122471, 23.681229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917072, 37.799599, 23.569700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.623791, 37.529804, 23.604292>,  <43.447823, 37.367928, 23.625048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.623791, 37.529804, 23.604292>,  <43.917072, 37.799599, 23.569700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623791, 37.529804, 23.604292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559846, 0.670924, 0.486244,
		-0.385988, 0.308100, -0.869533,
		-0.733202, -0.674490, 0.086480,
		43.403831, 37.327457, 23.630236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234703, 38.180870, 23.585560>,  <43.917072, 37.799599, 23.569700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234703, 38.180870, 23.585560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.149345, 37.821461, 23.738987>,  <43.098129, 37.605816, 23.831043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.149345, 37.821461, 23.738987>,  <43.234703, 38.180870, 23.585560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149345, 37.821461, 23.738987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518260, 0.436928, 0.735187,
		-0.828171, -0.041899, -0.558906,
		-0.213398, -0.898520, 0.383566,
		43.085327, 37.551903, 23.854057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496601, 38.257446, 23.721186>,  <43.234703, 38.180870, 23.585560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496601, 38.257446, 23.721186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.610905, 37.930756, 23.921703>,  <42.679485, 37.734741, 24.042013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.610905, 37.930756, 23.921703>,  <42.496601, 38.257446, 23.721186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610905, 37.930756, 23.921703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591975, 0.260919, 0.762553,
		-0.753597, -0.514658, -0.408924,
		0.285758, -0.816730, 0.501292,
		42.696632, 37.685738, 24.072090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834774, 37.926414, 24.009907>,  <42.496601, 38.257446, 23.721186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834774, 37.926414, 24.009907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.153969, 37.834042, 24.232578>,  <42.345486, 37.778618, 24.366180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.153969, 37.834042, 24.232578>,  <41.834774, 37.926414, 24.009907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153969, 37.834042, 24.232578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486431, 0.298540, 0.821132,
		-0.355821, -0.926036, 0.125895,
		0.797983, -0.230937, 0.556680,
		42.393364, 37.764759, 24.399582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168156, 37.690529, 23.673792>,  <41.834774, 37.926414, 24.009907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168156, 37.690529, 23.673792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880131, 37.921585, 23.519993>,  <40.707317, 38.060219, 23.427713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880131, 37.921585, 23.519993>,  <41.168156, 37.690529, 23.673792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880131, 37.921585, 23.519993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350167, -0.175894, -0.920024,
		-0.599076, -0.797114, -0.075617,
		-0.720063, 0.577643, -0.384497,
		40.664112, 38.094879, 23.404644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898151, 37.249996, 23.089983>,  <41.168156, 37.690529, 23.673792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898151, 37.249996, 23.089983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857063, 37.646828, 23.061033>,  <40.832413, 37.884926, 23.043663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857063, 37.646828, 23.061033>,  <40.898151, 37.249996, 23.089983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857063, 37.646828, 23.061033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327529, -0.034969, -0.944194,
		-0.939241, -0.120689, -0.321341,
		-0.102717, 0.992074, -0.072373,
		40.826248, 37.944450, 23.039322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621170, 37.445217, 22.404263>,  <40.898151, 37.249996, 23.089983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621170, 37.445217, 22.404263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.775257, 37.796600, 22.517340>,  <40.867710, 38.007431, 22.585186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.775257, 37.796600, 22.517340>,  <40.621170, 37.445217, 22.404263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775257, 37.796600, 22.517340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448779, 0.089343, -0.889165,
		-0.806355, 0.469385, -0.359819,
		0.385213, 0.878462, 0.282693,
		40.890820, 38.060139, 22.602148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463203, 37.866402, 21.894701>,  <40.621170, 37.445217, 22.404263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463203, 37.866402, 21.894701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739944, 38.070026, 22.099520>,  <40.905991, 38.192200, 22.222410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739944, 38.070026, 22.099520>,  <40.463203, 37.866402, 21.894701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739944, 38.070026, 22.099520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462949, 0.231460, -0.855631,
		-0.554087, 0.829025, -0.075533,
		0.691857, 0.509062, 0.512045,
		40.947502, 38.222744, 22.253134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493839, 38.493217, 21.563967>,  <40.463203, 37.866402, 21.894701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493839, 38.493217, 21.563967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845661, 38.416157, 21.737988>,  <41.056755, 38.369919, 21.842400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845661, 38.416157, 21.737988>,  <40.493839, 38.493217, 21.563967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845661, 38.416157, 21.737988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462615, 0.132486, -0.876604,
		0.111244, 0.972282, 0.205653,
		0.879552, -0.192656, 0.435054,
		41.109528, 38.358360, 21.868504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935070, 39.047245, 21.427629>,  <40.493839, 38.493217, 21.563967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935070, 39.047245, 21.427629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176659, 38.739124, 21.509462>,  <41.321613, 38.554253, 21.558561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176659, 38.739124, 21.509462>,  <40.935070, 39.047245, 21.427629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176659, 38.739124, 21.509462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609300, 0.280788, -0.741560,
		0.513779, 0.572536, 0.638932,
		0.603974, -0.770299, 0.204582,
		41.357849, 38.508034, 21.570837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533554, 39.255161, 21.116171>,  <40.935070, 39.047245, 21.427629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533554, 39.255161, 21.116171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611614, 38.872322, 21.201847>,  <41.658451, 38.642620, 21.253252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611614, 38.872322, 21.201847>,  <41.533554, 39.255161, 21.116171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611614, 38.872322, 21.201847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681607, -0.024677, -0.731302,
		0.705214, 0.288711, 0.647549,
		0.195155, -0.957098, 0.214190,
		41.670162, 38.585194, 21.266104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211926, 39.166458, 21.001616>,  <41.533554, 39.255161, 21.116171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211926, 39.166458, 21.001616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.078178, 38.792316, 20.955471>,  <41.997932, 38.567829, 20.927784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.078178, 38.792316, 20.955471>,  <42.211926, 39.166458, 21.001616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078178, 38.792316, 20.955471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550117, -0.094317, -0.829744,
		0.765226, -0.340899, 0.546092,
		-0.334365, -0.935357, -0.115360,
		41.977867, 38.511711, 20.920862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796577, 38.775856, 20.657770>,  <42.211926, 39.166458, 21.001616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796577, 38.775856, 20.657770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.495842, 38.513515, 20.630674>,  <42.315399, 38.356110, 20.614416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.495842, 38.513515, 20.630674>,  <42.796577, 38.775856, 20.657770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495842, 38.513515, 20.630674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496601, -0.495691, -0.712515,
		0.433726, -0.569340, 0.698379,
		-0.751843, -0.655853, -0.067741,
		42.270290, 38.316761, 20.610352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175564, 38.152351, 20.773531>,  <42.796577, 38.775856, 20.657770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175564, 38.152351, 20.773531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.827801, 38.060173, 20.598701>,  <42.619144, 38.004868, 20.493803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.827801, 38.060173, 20.598701>,  <43.175564, 38.152351, 20.773531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827801, 38.060173, 20.598701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472122, -0.648343, -0.597287,
		-0.145735, -0.725636, 0.672468,
		-0.869403, -0.230441, -0.437075,
		42.566978, 37.991039, 20.467579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248775, 37.533058, 20.662691>,  <43.175564, 38.152351, 20.773531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248775, 37.533058, 20.662691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.972752, 37.649536, 20.397655>,  <42.807137, 37.719425, 20.238634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.972752, 37.649536, 20.397655>,  <43.248775, 37.533058, 20.662691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972752, 37.649536, 20.397655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369490, -0.645460, -0.668475,
		-0.622329, -0.706108, 0.337814,
		-0.690061, 0.291192, -0.662589,
		42.765736, 37.736897, 20.198879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967754, 36.937759, 20.317381>,  <43.248775, 37.533058, 20.662691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967754, 36.937759, 20.317381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.879383, 37.245335, 20.077404>,  <42.826363, 37.429878, 19.933418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.879383, 37.245335, 20.077404>,  <42.967754, 36.937759, 20.317381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879383, 37.245335, 20.077404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345453, -0.513566, -0.785437,
		-0.912061, -0.380774, -0.152172,
		-0.220924, 0.768935, -0.599943,
		42.813107, 37.476013, 19.897421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936169, 36.272152, 20.409586>,  <42.967754, 36.937759, 20.317381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936169, 36.272152, 20.409586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.784584, 36.550751, 20.165855>,  <42.693634, 36.717911, 20.019617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.784584, 36.550751, 20.165855>,  <42.936169, 36.272152, 20.409586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784584, 36.550751, 20.165855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812401, -0.565702, -0.141367,
		-0.443159, 0.441444, 0.780216,
		-0.378965, 0.696497, -0.609325,
		42.670895, 36.759701, 19.983057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349194, 36.606781, 20.670887>,  <42.936169, 36.272152, 20.409586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349194, 36.606781, 20.670887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.392460, 36.548042, 20.277596>,  <42.418419, 36.512798, 20.041620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.392460, 36.548042, 20.277596>,  <42.349194, 36.606781, 20.670887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392460, 36.548042, 20.277596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799868, -0.600173, 0.001638,
		-0.590348, 0.786275, -0.182376,
		0.108169, -0.146844, -0.983228,
		42.424911, 36.503990, 19.982628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686886, 36.708836, 20.375370>,  <42.349194, 36.606781, 20.670887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686886, 36.708836, 20.375370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.917938, 36.480507, 20.141962>,  <42.056572, 36.343510, 20.001917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.917938, 36.480507, 20.141962>,  <41.686886, 36.708836, 20.375370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917938, 36.480507, 20.141962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590710, -0.785666, 0.183821,
		-0.563381, 0.238509, -0.791021,
		0.577636, -0.570826, -0.583519,
		42.091228, 36.309258, 19.966906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158096, 36.439339, 20.030041>,  <41.686886, 36.708836, 20.375370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158096, 36.439339, 20.030041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.476292, 36.210987, 19.948755>,  <41.667210, 36.073975, 19.899984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.476292, 36.210987, 19.948755>,  <41.158096, 36.439339, 20.030041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476292, 36.210987, 19.948755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588130, -0.808133, -0.031985,
		-0.145963, 0.144959, -0.978612,
		0.795486, -0.570883, -0.203212,
		41.714939, 36.039722, 19.887791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945671, 36.139690, 19.403439>,  <41.158096, 36.439339, 20.030041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945671, 36.139690, 19.403439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.223980, 35.907589, 19.572767>,  <41.390965, 35.768330, 19.674364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.223980, 35.907589, 19.572767>,  <40.945671, 36.139690, 19.403439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223980, 35.907589, 19.572767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657164, -0.752144, 0.049148,
		0.289882, -0.312389, -0.904644,
		0.695776, -0.580252, 0.423324,
		41.432713, 35.733513, 19.699764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953323, 35.478802, 19.151220>,  <40.945671, 36.139690, 19.403439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953323, 35.478802, 19.151220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122601, 35.414413, 19.507872>,  <41.224167, 35.375782, 19.721863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122601, 35.414413, 19.507872>,  <40.953323, 35.478802, 19.151220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122601, 35.414413, 19.507872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652870, -0.736522, 0.176905,
		0.628227, -0.656981, -0.416781,
		0.423191, -0.160967, 0.891627,
		41.249557, 35.366123, 19.775360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136494, 34.723202, 19.210936>,  <40.953323, 35.478802, 19.151220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136494, 34.723202, 19.210936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109859, 34.893024, 19.572115>,  <41.093880, 34.994919, 19.788822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109859, 34.893024, 19.572115>,  <41.136494, 34.723202, 19.210936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109859, 34.893024, 19.572115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752060, -0.616076, 0.234216,
		0.655723, -0.663477, 0.360313,
		-0.066583, 0.424557, 0.902950,
		41.089886, 35.020393, 19.843000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113937, 34.137463, 19.704197>,  <41.136494, 34.723202, 19.210936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113937, 34.137463, 19.704197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.014076, 34.441643, 19.943993>,  <40.954159, 34.624153, 20.087870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.014076, 34.441643, 19.943993>,  <41.113937, 34.137463, 19.704197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014076, 34.441643, 19.943993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711471, -0.564012, 0.419165,
		0.656874, -0.321874, 0.681846,
		-0.249651, 0.760453, 0.599489,
		40.939182, 34.669777, 20.123838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066643, 33.860901, 20.388184>,  <41.113937, 34.137463, 19.704197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066643, 33.860901, 20.388184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848301, 34.193691, 20.427916>,  <40.717297, 34.393364, 20.451756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848301, 34.193691, 20.427916>,  <41.066643, 33.860901, 20.388184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848301, 34.193691, 20.427916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697467, -0.516867, 0.496375,
		0.464311, 0.201668, 0.862407,
		-0.545852, 0.831973, 0.099330,
		40.684544, 34.443283, 20.457714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704636, 33.458603, 20.413975>,  <41.066643, 33.860901, 20.388184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704636, 33.458603, 20.413975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.826843, 33.095760, 20.529776>,  <41.900169, 32.878056, 20.599257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.826843, 33.095760, 20.529776>,  <41.704636, 33.458603, 20.413975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826843, 33.095760, 20.529776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814976, 0.091884, -0.572164,
		0.492414, 0.410744, 0.767345,
		0.305520, -0.907109, 0.289501,
		41.918499, 32.823627, 20.616627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399982, 33.548500, 20.615877>,  <41.704636, 33.458603, 20.413975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399982, 33.548500, 20.615877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.356388, 33.168564, 20.498625>,  <42.330231, 32.940601, 20.428272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.356388, 33.168564, 20.498625>,  <42.399982, 33.548500, 20.615877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356388, 33.168564, 20.498625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732796, 0.122486, -0.669333,
		0.671664, -0.287751, 0.682691,
		-0.108981, -0.949840, -0.293132,
		42.323692, 32.883614, 20.410685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025860, 33.187325, 20.521700>,  <42.399982, 33.548500, 20.615877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025860, 33.187325, 20.521700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.814972, 32.924767, 20.305855>,  <42.688438, 32.767231, 20.176348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.814972, 32.924767, 20.305855>,  <43.025860, 33.187325, 20.521700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814972, 32.924767, 20.305855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721673, -0.010643, -0.692153,
		0.448584, -0.754340, 0.479316,
		-0.527220, -0.656398, -0.539612,
		42.656807, 32.727848, 20.143970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527023, 32.784733, 20.341421>,  <43.025860, 33.187325, 20.521700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527023, 32.784733, 20.341421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.231216, 32.742428, 20.075508>,  <43.053734, 32.717045, 19.915960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.231216, 32.742428, 20.075508>,  <43.527023, 32.784733, 20.341421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231216, 32.742428, 20.075508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661077, 0.072023, -0.746853,
		0.126874, -0.991779, 0.016660,
		-0.739513, -0.105770, -0.664780,
		43.009361, 32.710697, 19.876074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722778, 32.201790, 20.014631>,  <43.527023, 32.784733, 20.341421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722778, 32.201790, 20.014631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.466442, 32.409569, 19.788536>,  <43.312641, 32.534237, 19.652878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.466442, 32.409569, 19.788536>,  <43.722778, 32.201790, 20.014631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466442, 32.409569, 19.788536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588413, -0.140526, -0.796256,
		-0.493044, -0.842868, -0.215595,
		-0.640842, 0.519448, -0.565240,
		43.274189, 32.565403, 19.618963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836586, 31.800104, 19.473467>,  <43.722778, 32.201790, 20.014631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836586, 31.800104, 19.473467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.653065, 32.132854, 19.348579>,  <43.542953, 32.332504, 19.273647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.653065, 32.132854, 19.348579>,  <43.836586, 31.800104, 19.473467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653065, 32.132854, 19.348579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510488, -0.040820, -0.858915,
		-0.727256, -0.553458, -0.405934,
		-0.458803, 0.831876, -0.312220,
		43.515423, 32.382416, 19.254913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552437, 31.754749, 18.700491>,  <43.836586, 31.800104, 19.473467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552437, 31.754749, 18.700491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.623192, 32.134201, 18.805422>,  <43.665646, 32.361874, 18.868380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.623192, 32.134201, 18.805422>,  <43.552437, 31.754749, 18.700491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623192, 32.134201, 18.805422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674130, 0.077420, -0.734544,
		-0.717119, 0.306776, -0.625803,
		0.176890, 0.948628, 0.262326,
		43.676258, 32.418789, 18.884119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736694, 32.071766, 18.119247>,  <43.552437, 31.754749, 18.700491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736694, 32.071766, 18.119247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.810291, 32.366215, 18.379793>,  <43.854450, 32.542885, 18.536121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.810291, 32.366215, 18.379793>,  <43.736694, 32.071766, 18.119247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810291, 32.366215, 18.379793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615407, 0.430451, -0.660292,
		-0.766435, 0.522341, -0.373815,
		0.183988, 0.736119, 0.651365,
		43.865486, 32.587051, 18.575203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741859, 32.684898, 17.849787>,  <43.736694, 32.071766, 18.119247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741859, 32.684898, 17.849787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.003540, 32.745342, 18.146214>,  <44.160549, 32.781609, 18.324070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.003540, 32.745342, 18.146214>,  <43.741859, 32.684898, 17.849787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003540, 32.745342, 18.146214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640207, 0.411046, -0.648981,
		-0.402682, 0.899003, 0.172165,
		0.654203, 0.151112, 0.741069,
		44.199802, 32.790676, 18.368534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.250404, 32.713440, 32.616734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614433, 32.849987, 32.710743>,  <37.832851, 32.931915, 32.767147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614433, 32.849987, 32.710743>,  <37.250404, 32.713440, 32.616734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614433, 32.849987, 32.710743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186754, 0.168464, -0.967855,
		-0.369986, 0.924710, 0.089563,
		0.910073, 0.341366, 0.235022,
		37.887455, 32.952396, 32.781250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301411, 33.414608, 32.462959>,  <37.250404, 32.713440, 32.616734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301411, 33.414608, 32.462959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671402, 33.262859, 32.454182>,  <37.893398, 33.171810, 32.448917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671402, 33.262859, 32.454182>,  <37.301411, 33.414608, 32.462959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671402, 33.262859, 32.454182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078563, 0.247405, -0.965722,
		0.371800, 0.891552, 0.258650,
		0.924982, -0.379376, -0.021942,
		37.948898, 33.149048, 32.447598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560478, 33.784649, 31.971191>,  <37.301411, 33.414608, 32.462959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560478, 33.784649, 31.971191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839973, 33.500771, 32.007198>,  <38.007671, 33.330444, 32.028801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839973, 33.500771, 32.007198>,  <37.560478, 33.784649, 31.971191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839973, 33.500771, 32.007198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113920, -0.013841, -0.993393,
		0.706251, 0.704375, 0.071177,
		0.698736, -0.709693, 0.090018,
		38.049595, 33.287861, 32.034203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096558, 34.006199, 31.497503>,  <37.560478, 33.784649, 31.971191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096558, 34.006199, 31.497503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164013, 33.618450, 31.568922>,  <38.204487, 33.385799, 31.611773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164013, 33.618450, 31.568922>,  <38.096558, 34.006199, 31.497503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164013, 33.618450, 31.568922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241916, -0.134896, -0.960874,
		0.955531, 0.205230, 0.211759,
		0.168635, -0.969373, 0.178546,
		38.214603, 33.327637, 31.622486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826336, 33.825134, 31.255169>,  <38.096558, 34.006199, 31.497503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826336, 33.825134, 31.255169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601917, 33.494095, 31.262264>,  <38.467266, 33.295471, 31.266521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601917, 33.494095, 31.262264>,  <38.826336, 33.825134, 31.255169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601917, 33.494095, 31.262264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222416, -0.171354, -0.959775,
		0.797346, -0.534530, 0.280208,
		-0.561044, -0.827596, 0.017741,
		38.433605, 33.245815, 31.267586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283825, 33.289005, 30.956337>,  <38.826336, 33.825134, 31.255169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283825, 33.289005, 30.956337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913300, 33.145046, 30.911777>,  <38.690983, 33.058670, 30.885042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913300, 33.145046, 30.911777>,  <39.283825, 33.289005, 30.956337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913300, 33.145046, 30.911777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258218, -0.391183, -0.883345,
		0.274339, -0.847022, 0.455292,
		-0.926316, -0.359901, -0.111400,
		38.635406, 33.037075, 30.878357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364147, 32.666134, 30.608841>,  <39.283825, 33.289005, 30.956337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364147, 32.666134, 30.608841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983009, 32.775452, 30.556089>,  <38.754326, 32.841042, 30.524439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983009, 32.775452, 30.556089>,  <39.364147, 32.666134, 30.608841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983009, 32.775452, 30.556089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024192, -0.364800, -0.930772,
		-0.302476, -0.890076, 0.340989,
		-0.952850, 0.273287, -0.131876,
		38.697155, 32.857437, 30.516527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041458, 32.000439, 30.401491>,  <39.364147, 32.666134, 30.608841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041458, 32.000439, 30.401491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825596, 32.310867, 30.270960>,  <38.696079, 32.497124, 30.192642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825596, 32.310867, 30.270960>,  <39.041458, 32.000439, 30.401491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825596, 32.310867, 30.270960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005464, -0.390834, -0.920445,
		-0.841868, -0.494940, 0.215157,
		-0.539656, 0.776069, -0.326326,
		38.663700, 32.543690, 30.173061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457798, 31.630489, 30.021967>,  <39.041458, 32.000439, 30.401491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457798, 31.630489, 30.021967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478905, 32.013412, 29.908279>,  <38.491570, 32.243164, 29.840067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478905, 32.013412, 29.908279>,  <38.457798, 31.630489, 30.021967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478905, 32.013412, 29.908279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112089, -0.277141, -0.954269,
		-0.992296, 0.082212, 0.092680,
		0.052767, 0.957306, -0.284221,
		38.494736, 32.300606, 29.823013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924484, 31.685991, 29.606956>,  <38.457798, 31.630489, 30.021967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924484, 31.685991, 29.606956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162346, 31.988825, 29.498722>,  <38.305061, 32.170525, 29.433783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162346, 31.988825, 29.498722>,  <37.924484, 31.685991, 29.606956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162346, 31.988825, 29.498722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002136, -0.338040, -0.941129,
		-0.803982, 0.559065, -0.202632,
		0.594650, 0.757084, -0.270584,
		38.340740, 32.215950, 29.417547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655807, 31.970854, 29.016933>,  <37.924484, 31.685991, 29.606956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655807, 31.970854, 29.016933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043537, 32.068935, 29.023634>,  <38.276176, 32.127785, 29.027655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043537, 32.068935, 29.023634>,  <37.655807, 31.970854, 29.016933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043537, 32.068935, 29.023634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080846, -0.253748, -0.963886,
		-0.232097, 0.935675, -0.265788,
		0.969327, 0.245203, 0.016751,
		38.334335, 32.142498, 29.028660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722797, 32.224545, 28.362617>,  <37.655807, 31.970854, 29.016933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722797, 32.224545, 28.362617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094273, 32.134102, 28.480209>,  <38.317158, 32.079838, 28.550764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094273, 32.134102, 28.480209>,  <37.722797, 32.224545, 28.362617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094273, 32.134102, 28.480209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222960, -0.293056, -0.929735,
		0.296372, 0.928975, -0.221743,
		0.928683, -0.226107, 0.293978,
		38.372879, 32.066269, 28.568403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380558, 32.853775, 28.222580>,  <37.722797, 32.224545, 28.362617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380558, 32.853775, 28.222580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070995, 32.961422, 27.993273>,  <36.885258, 33.026012, 27.855688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070995, 32.961422, 27.993273>,  <37.380558, 32.853775, 28.222580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070995, 32.961422, 27.993273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518686, 0.250016, 0.817592,
		0.363357, 0.930090, -0.053901,
		-0.773910, 0.269120, -0.573270,
		36.838821, 33.042156, 27.821291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114948, 33.492455, 28.367373>,  <37.380558, 32.853775, 28.222580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114948, 33.492455, 28.367373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792965, 33.332272, 28.192247>,  <36.599777, 33.236160, 28.087173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792965, 33.332272, 28.192247>,  <37.114948, 33.492455, 28.367373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792965, 33.332272, 28.192247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554740, 0.246171, 0.794772,
		-0.210498, 0.882628, -0.420308,
		-0.804956, -0.400460, -0.437811,
		36.551479, 33.212135, 28.060904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657177, 34.078407, 28.337347>,  <37.114948, 33.492455, 28.367373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657177, 34.078407, 28.337347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458500, 33.733017, 28.302223>,  <36.339294, 33.525784, 28.281149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458500, 33.733017, 28.302223>,  <36.657177, 34.078407, 28.337347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458500, 33.733017, 28.302223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657940, 0.308607, 0.686933,
		-0.566048, 0.398970, -0.721396,
		-0.496693, -0.863472, -0.087811,
		36.309490, 33.473976, 28.275879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007504, 34.272915, 28.362104>,  <36.657177, 34.078407, 28.337347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007504, 34.272915, 28.362104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985638, 33.878960, 28.427841>,  <35.972519, 33.642586, 28.467283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985638, 33.878960, 28.427841>,  <36.007504, 34.272915, 28.362104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985638, 33.878960, 28.427841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645261, 0.160448, 0.746924,
		-0.762005, -0.065217, -0.644279,
		-0.054661, -0.984887, 0.164344,
		35.969238, 33.583492, 28.477144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301128, 34.130127, 28.485388>,  <36.007504, 34.272915, 28.362104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301128, 34.130127, 28.485388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458321, 33.821762, 28.685894>,  <35.552635, 33.636745, 28.806198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458321, 33.821762, 28.685894>,  <35.301128, 34.130127, 28.485388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458321, 33.821762, 28.685894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680873, 0.122441, 0.722095,
		-0.618045, -0.625065, -0.476775,
		0.392980, -0.770910, 0.501264,
		35.576214, 33.590488, 28.836273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740417, 33.765083, 28.810783>,  <35.301128, 34.130127, 28.485388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740417, 33.765083, 28.810783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032845, 33.593601, 29.023104>,  <35.208302, 33.490711, 29.150496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032845, 33.593601, 29.023104>,  <34.740417, 33.765083, 28.810783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032845, 33.593601, 29.023104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604493, -0.046180, 0.795271,
		-0.316422, -0.902265, -0.292908,
		0.731072, -0.428702, 0.530800,
		35.252167, 33.464993, 29.182344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350681, 33.325256, 29.194912>,  <34.740417, 33.765083, 28.810783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350681, 33.325256, 29.194912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698177, 33.387604, 29.382954>,  <34.906673, 33.425011, 29.495779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698177, 33.387604, 29.382954>,  <34.350681, 33.325256, 29.194912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698177, 33.387604, 29.382954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476096, 0.001262, 0.879392,
		0.136479, -0.987777, 0.075306,
		0.868738, 0.155871, 0.470104,
		34.958797, 33.434364, 29.523985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320961, 32.780937, 29.689943>,  <34.350681, 33.325256, 29.194912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320961, 32.780937, 29.689943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587238, 33.044456, 29.830133>,  <34.747005, 33.202568, 29.914248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587238, 33.044456, 29.830133>,  <34.320961, 32.780937, 29.689943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587238, 33.044456, 29.830133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338432, -0.152046, 0.928626,
		0.665068, -0.736793, 0.121744,
		0.665694, 0.658801, 0.350475,
		34.786945, 33.242096, 29.935276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400749, 32.513241, 30.348907>,  <34.320961, 32.780937, 29.689943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400749, 32.513241, 30.348907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550999, 32.883930, 30.352715>,  <34.641148, 33.106342, 30.354998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550999, 32.883930, 30.352715>,  <34.400749, 32.513241, 30.348907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550999, 32.883930, 30.352715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222504, 0.080209, 0.971627,
		0.899667, -0.367080, 0.236328,
		0.375621, 0.926725, 0.009516,
		34.663685, 33.161949, 30.355570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829796, 32.709538, 31.051365>,  <34.400749, 32.513241, 30.348907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829796, 32.709538, 31.051365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701130, 33.049282, 30.883978>,  <34.623928, 33.253128, 30.783545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701130, 33.049282, 30.883978>,  <34.829796, 32.709538, 31.051365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701130, 33.049282, 30.883978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648324, 0.124532, 0.751111,
		0.690077, 0.512912, 0.510603,
		-0.321668, 0.849360, -0.418470,
		34.604630, 33.304089, 30.758436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864922, 33.153900, 31.652096>,  <34.829796, 32.709538, 31.051365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864922, 33.153900, 31.652096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627125, 33.341866, 31.391092>,  <34.484447, 33.454643, 31.234491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627125, 33.341866, 31.391092>,  <34.864922, 33.153900, 31.652096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627125, 33.341866, 31.391092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551477, 0.352292, 0.756151,
		0.585199, 0.809364, 0.049714,
		-0.594487, 0.469915, -0.652506,
		34.448780, 33.482841, 31.195341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872791, 33.958210, 31.791613>,  <34.864922, 33.153900, 31.652096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872791, 33.958210, 31.791613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531284, 33.842068, 31.618746>,  <34.326378, 33.772381, 31.515026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531284, 33.842068, 31.618746>,  <34.872791, 33.958210, 31.791613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531284, 33.842068, 31.618746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519495, 0.419850, 0.744211,
		-0.034642, 0.859895, -0.509295,
		-0.853771, -0.290357, -0.432167,
		34.275154, 33.754959, 31.489096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493717, 34.531818, 31.834116>,  <34.872791, 33.958210, 31.791613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493717, 34.531818, 31.834116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235836, 34.235638, 31.758121>,  <34.081108, 34.057930, 31.712524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235836, 34.235638, 31.758121>,  <34.493717, 34.531818, 31.834116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235836, 34.235638, 31.758121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603390, 0.340323, 0.721180,
		-0.469341, 0.579581, -0.666187,
		-0.644701, -0.740450, -0.189986,
		34.042427, 34.013504, 31.701126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910023, 34.843048, 32.069954>,  <34.493717, 34.531818, 31.834116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910023, 34.843048, 32.069954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812088, 34.455765, 32.049484>,  <33.753326, 34.223392, 32.037201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812088, 34.455765, 32.049484>,  <33.910023, 34.843048, 32.069954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812088, 34.455765, 32.049484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682383, 0.134584, 0.718499,
		-0.688771, 0.210840, -0.693643,
		-0.244842, -0.968212, -0.051176,
		33.738636, 34.165302, 32.034130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180557, 35.225029, 32.541824>,  <33.910023, 34.843048, 32.069954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180557, 35.225029, 32.541824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219475, 35.621838, 32.509754>,  <34.242825, 35.859924, 32.490513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219475, 35.621838, 32.509754>,  <34.180557, 35.225029, 32.541824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219475, 35.621838, 32.509754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174015, -0.096269, -0.980026,
		-0.979925, 0.081395, -0.181993,
		0.097290, 0.992022, -0.080173,
		34.248661, 35.919445, 32.485703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565414, 35.487736, 31.877365>,  <34.180557, 35.225029, 32.541824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565414, 35.487736, 31.877365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799946, 35.743683, 32.076077>,  <34.940666, 35.897251, 32.195305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799946, 35.743683, 32.076077>,  <34.565414, 35.487736, 31.877365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799946, 35.743683, 32.076077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335187, 0.366657, -0.867878,
		-0.737476, 0.675373, 0.000505,
		0.586327, 0.639870, 0.496777,
		34.975845, 35.935642, 32.225109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422012, 36.235123, 31.644659>,  <34.565414, 35.487736, 31.877365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422012, 36.235123, 31.644659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787090, 36.152287, 31.785566>,  <35.006138, 36.102585, 31.870111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787090, 36.152287, 31.785566>,  <34.422012, 36.235123, 31.644659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787090, 36.152287, 31.785566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393225, 0.210616, -0.894994,
		0.111154, 0.955381, 0.273663,
		0.912699, -0.207093, 0.352269,
		35.060902, 36.090160, 31.891247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838928, 36.795128, 31.426659>,  <34.422012, 36.235123, 31.644659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838928, 36.795128, 31.426659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110287, 36.508595, 31.491949>,  <35.273102, 36.336674, 31.531122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110287, 36.508595, 31.491949>,  <34.838928, 36.795128, 31.426659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110287, 36.508595, 31.491949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391108, 0.164041, -0.905607,
		0.621944, 0.678198, 0.391450,
		0.678395, -0.716336, 0.163225,
		35.313805, 36.293694, 31.540916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489838, 37.061401, 31.217527>,  <34.838928, 36.795128, 31.426659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489838, 37.061401, 31.217527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546513, 36.665474, 31.222954>,  <35.580517, 36.427917, 31.226210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546513, 36.665474, 31.222954>,  <35.489838, 37.061401, 31.217527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546513, 36.665474, 31.222954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397403, 0.044325, -0.916573,
		0.906639, 0.135262, 0.399637,
		0.141692, -0.989818, 0.013567,
		35.589020, 36.368530, 31.227024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122684, 36.948601, 31.089899>,  <35.489838, 37.061401, 31.217527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122684, 36.948601, 31.089899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000229, 36.579830, 30.994955>,  <35.926758, 36.358570, 30.937988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000229, 36.579830, 30.994955>,  <36.122684, 36.948601, 31.089899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000229, 36.579830, 30.994955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672045, -0.032696, -0.739788,
		0.674266, -0.385992, 0.629583,
		-0.306137, -0.921922, -0.237358,
		35.908386, 36.303253, 30.923748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726585, 36.448135, 30.988914>,  <36.122684, 36.948601, 31.089899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726585, 36.448135, 30.988914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422352, 36.281963, 30.789341>,  <36.239811, 36.182262, 30.669598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422352, 36.281963, 30.789341>,  <36.726585, 36.448135, 30.988914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422352, 36.281963, 30.789341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567507, -0.052121, -0.821717,
		0.315360, -0.908131, 0.275401,
		-0.760581, -0.415428, -0.498934,
		36.194176, 36.157333, 30.639660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072224, 35.875549, 30.658136>,  <36.726585, 36.448135, 30.988914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072224, 35.875549, 30.658136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741249, 35.997139, 30.469265>,  <36.542664, 36.070091, 30.355942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741249, 35.997139, 30.469265>,  <37.072224, 35.875549, 30.658136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741249, 35.997139, 30.469265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502133, 0.024036, -0.864456,
		-0.251423, -0.952377, -0.172523,
		-0.827435, 0.303974, -0.472177,
		36.493019, 36.088329, 30.327612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000828, 35.426506, 30.013029>,  <37.072224, 35.875549, 30.658136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000828, 35.426506, 30.013029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783688, 35.755993, 29.947542>,  <36.653404, 35.953686, 29.908251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783688, 35.755993, 29.947542>,  <37.000828, 35.426506, 30.013029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783688, 35.755993, 29.947542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398337, 0.080919, -0.913663,
		-0.739355, -0.561192, -0.372045,
		-0.542846, 0.823721, -0.163715,
		36.620834, 36.003109, 29.898428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754166, 35.358238, 29.229156>,  <37.000828, 35.426506, 30.013029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754166, 35.358238, 29.229156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710552, 35.736092, 29.352947>,  <36.684383, 35.962803, 29.427221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710552, 35.736092, 29.352947>,  <36.754166, 35.358238, 29.229156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710552, 35.736092, 29.352947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277497, 0.327882, -0.903044,
		-0.954519, -0.012584, -0.297883,
		-0.109034, 0.944635, 0.309478,
		36.677841, 36.019482, 29.445791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428776, 35.573788, 28.679562>,  <36.754166, 35.358238, 29.229156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428776, 35.573788, 28.679562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600063, 35.883327, 28.866234>,  <36.702835, 36.069050, 28.978237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600063, 35.883327, 28.866234>,  <36.428776, 35.573788, 28.679562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600063, 35.883327, 28.866234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241394, 0.399706, -0.884287,
		-0.870839, 0.491319, -0.015643,
		0.428215, 0.773848, 0.466681,
		36.728527, 36.115482, 29.006239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160065, 36.191048, 28.252272>,  <36.428776, 35.573788, 28.679562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160065, 36.191048, 28.252272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482761, 36.307903, 28.457727>,  <36.676380, 36.378017, 28.581001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482761, 36.307903, 28.457727>,  <36.160065, 36.191048, 28.252272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482761, 36.307903, 28.457727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343828, 0.474868, -0.810113,
		-0.480575, 0.830154, 0.282650,
		0.806740, 0.292137, 0.513640,
		36.724785, 36.395546, 28.611820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204041, 36.874382, 28.192207>,  <36.160065, 36.191048, 28.252272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204041, 36.874382, 28.192207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578876, 36.767433, 28.281988>,  <36.803780, 36.703266, 28.335857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578876, 36.767433, 28.281988>,  <36.204041, 36.874382, 28.192207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578876, 36.767433, 28.281988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345643, 0.620479, -0.703944,
		0.048945, 0.737238, 0.673858,
		0.937089, -0.267369, 0.224452,
		36.860004, 36.687222, 28.349323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554943, 37.420815, 27.981432>,  <36.204041, 36.874382, 28.192207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554943, 37.420815, 27.981432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851772, 37.155773, 28.021996>,  <37.029869, 36.996746, 28.046333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851772, 37.155773, 28.021996>,  <36.554943, 37.420815, 27.981432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851772, 37.155773, 28.021996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509879, 0.459746, -0.727088,
		0.435150, 0.591258, 0.679013,
		0.742070, -0.662607, 0.101411,
		37.074394, 36.956989, 28.052420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231079, 37.799854, 28.131416>,  <36.554943, 37.420815, 27.981432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231079, 37.799854, 28.131416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.299816, 37.443714, 27.962772>,  <37.341057, 37.230030, 27.861586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.299816, 37.443714, 27.962772>,  <37.231079, 37.799854, 28.131416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299816, 37.443714, 27.962772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586678, 0.436296, -0.682242,
		0.791378, -0.130112, 0.597320,
		0.171840, -0.890347, -0.421609,
		37.351368, 37.176609, 27.836290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997128, 37.759937, 28.028730>,  <37.231079, 37.799854, 28.131416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997128, 37.759937, 28.028730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834309, 37.486626, 27.786263>,  <37.736618, 37.322639, 27.640781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834309, 37.486626, 27.786263>,  <37.997128, 37.759937, 28.028730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834309, 37.486626, 27.786263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534820, 0.359690, -0.764585,
		0.740459, -0.635414, 0.219021,
		-0.407048, -0.683281, -0.606168,
		37.712193, 37.281643, 27.604412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437263, 37.691090, 27.653158>,  <37.997128, 37.759937, 28.028730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437263, 37.691090, 27.653158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146637, 37.530792, 27.429905>,  <37.972263, 37.434616, 27.295952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146637, 37.530792, 27.429905>,  <38.437263, 37.691090, 27.653158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146637, 37.530792, 27.429905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425925, 0.374725, -0.823510,
		0.539163, -0.836054, -0.101575,
		-0.726562, -0.400743, -0.558135,
		37.928669, 37.410568, 27.262465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822433, 37.413418, 27.161287>,  <38.437263, 37.691090, 27.653158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822433, 37.413418, 27.161287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448360, 37.450794, 27.024645>,  <38.223915, 37.473221, 26.942659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448360, 37.450794, 27.024645>,  <38.822433, 37.413418, 27.161287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448360, 37.450794, 27.024645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353526, 0.188825, -0.916168,
		-0.021105, -0.977555, -0.209621,
		-0.935186, 0.093442, -0.341606,
		38.167805, 37.478828, 26.922163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832584, 36.930180, 26.584120>,  <38.822433, 37.413418, 27.161287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832584, 36.930180, 26.584120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552551, 37.212486, 26.540707>,  <38.384529, 37.381870, 26.514658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552551, 37.212486, 26.540707>,  <38.832584, 36.930180, 26.584120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552551, 37.212486, 26.540707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412795, 0.275988, -0.868004,
		-0.582651, -0.652479, -0.484550,
		-0.700084, 0.705764, -0.108535,
		38.342525, 37.424213, 26.508146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542297, 36.828377, 25.869949>,  <38.832584, 36.930180, 26.584120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542297, 36.828377, 25.869949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429558, 37.203121, 25.952755>,  <38.361912, 37.427967, 26.002438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429558, 37.203121, 25.952755>,  <38.542297, 36.828377, 25.869949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429558, 37.203121, 25.952755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415432, 0.313650, -0.853838,
		-0.864856, -0.154657, -0.477604,
		-0.281853, 0.936859, 0.207013,
		38.345001, 37.484180, 26.014858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171055, 37.129135, 25.220257>,  <38.542297, 36.828377, 25.869949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171055, 37.129135, 25.220257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294136, 37.424580, 25.460180>,  <38.367985, 37.601849, 25.604134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294136, 37.424580, 25.460180>,  <38.171055, 37.129135, 25.220257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294136, 37.424580, 25.460180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476519, 0.426012, -0.769054,
		-0.823559, 0.522459, -0.220878,
		0.307702, 0.738614, 0.599808,
		38.386448, 37.646164, 25.640123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229324, 37.551895, 24.752218>,  <38.171055, 37.129135, 25.220257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229324, 37.551895, 24.752218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397217, 37.771294, 25.041489>,  <38.497952, 37.902931, 25.215050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397217, 37.771294, 25.041489>,  <38.229324, 37.551895, 24.752218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397217, 37.771294, 25.041489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552550, 0.477693, -0.683007,
		-0.720081, 0.686267, -0.102570,
		0.419728, 0.548495, 0.723174,
		38.523136, 37.935841, 25.258440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208469, 38.212639, 24.506084>,  <38.229324, 37.551895, 24.752218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208469, 38.212639, 24.506084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495682, 38.207832, 24.784449>,  <38.668007, 38.204948, 24.951468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495682, 38.207832, 24.784449>,  <38.208469, 38.212639, 24.506084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495682, 38.207832, 24.784449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626498, 0.446728, -0.638697,
		-0.303210, 0.894589, 0.328289,
		0.718028, -0.012013, 0.695911,
		38.711090, 38.204227, 24.993221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562721, 38.892204, 24.553198>,  <38.208469, 38.212639, 24.506084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562721, 38.892204, 24.553198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846443, 38.663719, 24.718416>,  <39.016678, 38.526630, 24.817547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846443, 38.663719, 24.718416>,  <38.562721, 38.892204, 24.553198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846443, 38.663719, 24.718416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643949, 0.286730, -0.709306,
		0.286730, 0.769095, 0.571209,
		0.709306, -0.571209, 0.413044,
		39.059235, 38.492355, 24.842329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282242, 39.288685, 24.633642>,  <38.562721, 38.892204, 24.553198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282242, 39.288685, 24.633642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.351719, 38.895535, 24.609018>,  <39.393406, 38.659645, 24.594244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.351719, 38.895535, 24.609018>,  <39.282242, 39.288685, 24.633642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351719, 38.895535, 24.609018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783789, 0.175817, -0.595621,
		0.596242, 0.055209, 0.800904,
		0.173696, -0.982873, -0.061557,
		39.403828, 38.600674, 24.590551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101845, 39.207088, 24.691040>,  <39.282242, 39.288685, 24.633642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101845, 39.207088, 24.691040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.965103, 38.871738, 24.521214>,  <39.883057, 38.670528, 24.419317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.965103, 38.871738, 24.521214>,  <40.101845, 39.207088, 24.691040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965103, 38.871738, 24.521214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691217, 0.081755, -0.718008,
		0.636672, -0.538923, 0.551553,
		-0.341858, -0.838378, -0.424564,
		39.862545, 38.620224, 24.393845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746384, 38.934982, 24.450348>,  <40.101845, 39.207088, 24.691040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746384, 38.934982, 24.450348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479294, 38.700542, 24.266766>,  <40.319042, 38.559879, 24.156616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479294, 38.700542, 24.266766>,  <40.746384, 38.934982, 24.450348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479294, 38.700542, 24.266766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693118, -0.264598, -0.670504,
		0.271541, -0.765819, 0.582912,
		-0.667722, -0.586096, -0.458954,
		40.278976, 38.524715, 24.129080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160751, 38.252880, 24.234058>,  <40.746384, 38.934982, 24.450348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160751, 38.252880, 24.234058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.829159, 38.280689, 24.012085>,  <40.630203, 38.297375, 23.878901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.829159, 38.280689, 24.012085>,  <41.160751, 38.252880, 24.234058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829159, 38.280689, 24.012085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539142, -0.164481, -0.825998,
		-0.148700, -0.983927, 0.098871,
		-0.828984, 0.069521, -0.554935,
		40.580463, 38.301548, 23.845604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505375, 37.702641, 24.642176>,  <41.160751, 38.252880, 24.234058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505375, 37.702641, 24.642176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.889950, 37.708443, 24.752031>,  <42.120693, 37.711926, 24.817944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.889950, 37.708443, 24.752031>,  <41.505375, 37.702641, 24.642176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889950, 37.708443, 24.752031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272707, 0.179543, 0.945196,
		-0.035596, -0.983643, 0.176576,
		0.961438, 0.014508, 0.274637,
		42.178383, 37.712795, 24.834423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675648, 37.190289, 25.164013>,  <41.505375, 37.702641, 24.642176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675648, 37.190289, 25.164013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.891571, 37.525650, 25.194197>,  <42.021126, 37.726868, 25.212307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.891571, 37.525650, 25.194197>,  <41.675648, 37.190289, 25.164013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891571, 37.525650, 25.194197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292577, 0.102808, 0.950699,
		0.789308, -0.535272, 0.300793,
		0.539807, 0.838400, 0.075461,
		42.053513, 37.777168, 25.216835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919624, 37.074886, 25.788744>,  <41.675648, 37.190289, 25.164013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919624, 37.074886, 25.788744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.961338, 37.466015, 25.716099>,  <41.986366, 37.700691, 25.672512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.961338, 37.466015, 25.716099>,  <41.919624, 37.074886, 25.788744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961338, 37.466015, 25.716099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391607, 0.208229, 0.896261,
		0.914204, -0.022346, 0.404638,
		0.104286, 0.977825, -0.181613,
		41.992622, 37.759361, 25.661615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346725, 37.311611, 26.369091>,  <41.919624, 37.074886, 25.788744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346725, 37.311611, 26.369091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.190632, 37.646381, 26.215584>,  <42.096977, 37.847244, 26.123480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.190632, 37.646381, 26.215584>,  <42.346725, 37.311611, 26.369091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190632, 37.646381, 26.215584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272933, 0.292931, 0.916351,
		0.879333, 0.462334, 0.114113,
		-0.390233, 0.836923, -0.383770,
		42.073563, 37.897457, 26.100452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524094, 37.778713, 26.840784>,  <42.346725, 37.311611, 26.369091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524094, 37.778713, 26.840784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.226181, 37.956566, 26.641743>,  <42.047436, 38.063278, 26.522318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.226181, 37.956566, 26.641743>,  <42.524094, 37.778713, 26.840784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226181, 37.956566, 26.641743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439391, 0.234467, 0.867157,
		0.502236, 0.864482, 0.020741,
		-0.744778, 0.444631, -0.497604,
		42.002747, 38.089954, 26.492462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
