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
	<0.619045, 3.372108, 1.936470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.426659, 3.443863, 1.593193>,  <0.311227, 3.486916, 1.387227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.426659, 3.443863, 1.593193>,  <0.619045, 3.372108, 1.936470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.426659, 3.443863, 1.593193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648570, -0.585846, -0.485943,
		-0.589946, -0.790317, 0.165417,
		-0.480958, 0.179395, -0.858194,
		0.282369, 3.497679, 1.335736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.514521, 2.698538, 1.700571>,  <0.619045, 3.372108, 1.936470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.514521, 2.698538, 1.700571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.534210, 2.997818, 1.435913>,  <0.546023, 3.177386, 1.277118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.534210, 2.997818, 1.435913>,  <0.514521, 2.698538, 1.700571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.534210, 2.997818, 1.435913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637005, -0.533748, -0.556182,
		-0.769286, -0.394095, -0.502879,
		0.049222, 0.748199, -0.661646,
		0.548977, 3.222278, 1.237419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.277531, 2.664098, 0.897395>,  <0.514521, 2.698538, 1.700571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.277531, 2.664098, 0.897395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.585915, 2.918777, 0.903542>,  <0.770945, 3.071585, 0.907230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.585915, 2.918777, 0.903542>,  <0.277531, 2.664098, 0.897395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.585915, 2.918777, 0.903542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577135, -0.688224, -0.439617,
		-0.269328, 0.347796, -0.898054,
		0.770959, 0.636700, 0.015367,
		0.817202, 3.109787, 0.908152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.496414, 2.661596, 0.228891>,  <0.277531, 2.664098, 0.897395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.496414, 2.661596, 0.228891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.790993, 2.776672, 0.473801>,  <0.967740, 2.845718, 0.620746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.790993, 2.776672, 0.473801>,  <0.496414, 2.661596, 0.228891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.790993, 2.776672, 0.473801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623049, -0.641034, -0.448201,
		0.263545, 0.711553, -0.651334,
		0.736447, 0.287692, 0.612274,
		1.011927, 2.862980, 0.657483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.068165, 2.590190, -0.222113>,  <0.496414, 2.661596, 0.228891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.068165, 2.590190, -0.222113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209152, 2.628479, 0.150253>,  <1.293745, 2.651453, 0.373673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209152, 2.628479, 0.150253>,  <1.068165, 2.590190, -0.222113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.209152, 2.628479, 0.150253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766102, -0.600810, -0.228287,
		0.537451, 0.793640, -0.285100,
		0.352469, 0.095723, 0.930915,
		1.314893, 2.657196, 0.429528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.827947, 2.874393, -0.173940>,  <1.068165, 2.590190, -0.222113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.827947, 2.874393, -0.173940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.732407, 2.628555, 0.126785>,  <1.675082, 2.481053, 0.307221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.732407, 2.628555, 0.126785>,  <1.827947, 2.874393, -0.173940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.732407, 2.628555, 0.126785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802066, -0.561301, -0.204037,
		0.547394, 0.554270, 0.627013,
		-0.238851, -0.614594, 0.751814,
		1.660751, 2.444177, 0.352329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.415622, 2.703948, 0.097308>,  <1.827947, 2.874393, -0.173940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.415622, 2.703948, 0.097308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192398, 2.403748, 0.238907>,  <2.058464, 2.223627, 0.323866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192398, 2.403748, 0.238907>,  <2.415622, 2.703948, 0.097308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.192398, 2.403748, 0.238907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739095, -0.643499, -0.199117,
		0.377235, 0.150520, 0.913804,
		-0.558061, -0.750502, 0.353998,
		2.024980, 2.178597, 0.345106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.941542, 2.324251, 0.431006>,  <2.415622, 2.703948, 0.097308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.941542, 2.324251, 0.431006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635788, 2.075043, 0.364601>,  <2.452335, 1.925518, 0.324758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635788, 2.075043, 0.364601>,  <2.941542, 2.324251, 0.431006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635788, 2.075043, 0.364601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643420, -0.753666, -0.134159,
		-0.041533, -0.209364, 0.976955,
		-0.764386, -0.623020, -0.166011,
		2.406472, 1.888137, 0.314798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.044391, 0.320475, 0.346398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.691254, 0.177017, 0.225098>,  <2.479371, 0.090943, 0.152318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.691254, 0.177017, 0.225098>,  <3.044391, 0.320475, 0.346398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.691254, 0.177017, 0.225098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365603, 0.930089, -0.035613,
		0.294821, 0.079428, -0.952246,
		-0.882845, -0.358644, -0.303250,
		2.426400, 0.069424, 0.134123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.927760, 0.738757, -0.293702>,  <3.044391, 0.320475, 0.346398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.927760, 0.738757, -0.293702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596886, 0.577942, -0.136665>,  <2.398361, 0.481453, -0.042443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596886, 0.577942, -0.136665>,  <2.927760, 0.738757, -0.293702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.596886, 0.577942, -0.136665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452456, 0.890841, -0.041043,
		-0.333236, -0.211581, -0.918796,
		-0.827186, -0.402038, 0.392592,
		2.348730, 0.457330, -0.018888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.385241, 0.901846, -0.747175>,  <2.927760, 0.738757, -0.293702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.385241, 0.901846, -0.747175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291630, 0.888687, -0.358505>,  <2.235463, 0.880792, -0.125304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291630, 0.888687, -0.358505>,  <2.385241, 0.901846, -0.747175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.291630, 0.888687, -0.358505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335305, 0.940840, -0.048904,
		-0.912580, -0.337251, -0.231213,
		-0.234028, -0.032898, 0.971673,
		2.221421, 0.878818, -0.067003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.676164, 1.290719, -0.537779>,  <2.385241, 0.901846, -0.747175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.676164, 1.290719, -0.537779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.886093, 1.269806, -0.197937>,  <2.012051, 1.257258, 0.005968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.886093, 1.269806, -0.197937>,  <1.676164, 1.290719, -0.537779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.886093, 1.269806, -0.197937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308510, 0.918565, 0.247102,
		-0.793336, -0.391796, 0.465954,
		0.524823, -0.052284, 0.849604,
		2.043540, 1.254121, 0.056944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.343320, 1.170719, 0.155235>,  <1.676164, 1.290719, -0.537779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.343320, 1.170719, 0.155235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.689072, 1.352066, 0.242233>,  <1.896523, 1.460874, 0.294432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.689072, 1.352066, 0.242233>,  <1.343320, 1.170719, 0.155235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.689072, 1.352066, 0.242233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502839, 0.779453, 0.373638,
		-0.000133, -0.432331, 0.901715,
		0.864380, 0.453368, 0.217496,
		1.948386, 1.488077, 0.307482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.225449, 1.292329, 0.814412>,  <1.343320, 1.170719, 0.155235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.225449, 1.292329, 0.814412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.480473, 1.560257, 0.662170>,  <1.633487, 1.721014, 0.570825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.480473, 1.560257, 0.662170>,  <1.225449, 1.292329, 0.814412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.480473, 1.560257, 0.662170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531824, 0.740094, 0.411613,
		0.557390, -0.060013, 0.828079,
		0.637558, 0.669821, -0.380604,
		1.671740, 1.761203, 0.547989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.424637, 1.694404, 1.422257>,  <1.225449, 1.292329, 0.814412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.424637, 1.694404, 1.422257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.476593, 1.907532, 1.087776>,  <1.507767, 2.035408, 0.887088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.476593, 1.907532, 1.087776>,  <1.424637, 1.694404, 1.422257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.476593, 1.907532, 1.087776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575530, 0.727250, 0.373997,
		0.807400, 0.432680, 0.401115,
		0.129890, 0.532818, -0.836202,
		1.515560, 2.067377, 0.836916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.932543, 2.163656, 1.551335>,  <1.424637, 1.694404, 1.422257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.932543, 2.163656, 1.551335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.634033, 2.253311, 1.300629>,  <1.454927, 2.307104, 1.150205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.634033, 2.253311, 1.300629>,  <1.932543, 2.163656, 1.551335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.634033, 2.253311, 1.300629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331240, 0.691687, 0.641754,
		0.577367, 0.686536, -0.441946,
		-0.746276, 0.224138, -0.626766,
		1.410151, 2.320552, 1.112599>
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
