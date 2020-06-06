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
	<24.164642, 35.144913, 35.412922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336905, 34.892124, 35.155193>,  <24.440262, 34.740452, 35.000557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336905, 34.892124, 35.155193>,  <24.164642, 35.144913, 35.412922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.336905, 34.892124, 35.155193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666485, 0.704072, -0.245111,
		0.608550, -0.323870, 0.724414,
		0.430656, -0.631973, -0.644318,
		24.466101, 34.702534, 34.961899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907648, 34.899567, 35.503025>,  <24.164642, 35.144913, 35.412922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907648, 34.899567, 35.503025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813131, 34.925980, 35.115250>,  <24.756420, 34.941826, 34.882584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813131, 34.925980, 35.115250>,  <24.907648, 34.899567, 35.503025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813131, 34.925980, 35.115250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743405, 0.654743, -0.136604,
		0.625712, -0.752962, -0.203799,
		-0.236294, 0.066030, -0.969436,
		24.742243, 34.945789, 34.824417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578554, 34.799191, 35.085117>,  <24.907648, 34.899567, 35.503025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578554, 34.799191, 35.085117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291109, 34.985390, 34.878464>,  <25.118643, 35.097111, 34.754471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291109, 34.985390, 34.878464>,  <25.578554, 34.799191, 35.085117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291109, 34.985390, 34.878464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639779, 0.733708, -0.228814,
		0.272545, -0.494958, -0.825067,
		-0.718612, 0.465498, -0.516632,
		25.075525, 35.125038, 34.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923038, 34.992653, 34.471512>,  <25.578554, 34.799191, 35.085117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923038, 34.992653, 34.471512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618877, 35.234020, 34.567574>,  <25.436380, 35.378841, 34.625210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618877, 35.234020, 34.567574>,  <25.923038, 34.992653, 34.471512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618877, 35.234020, 34.567574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580663, 0.797301, -0.164747,
		-0.290888, 0.014175, -0.956652,
		-0.760404, 0.603416, 0.240156,
		25.390757, 35.415047, 34.639622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973948, 35.675140, 34.054867>,  <25.923038, 34.992653, 34.471512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973948, 35.675140, 34.054867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770792, 35.752140, 34.390720>,  <25.648899, 35.798340, 34.592232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770792, 35.752140, 34.390720>,  <25.973948, 35.675140, 34.054867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770792, 35.752140, 34.390720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513583, 0.850198, 0.115740,
		-0.691578, 0.490007, -0.530672,
		-0.507889, 0.192501, 0.839638,
		25.618425, 35.809891, 34.642612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572851, 36.237690, 33.983482>,  <25.973948, 35.675140, 34.054867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572851, 36.237690, 33.983482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715145, 36.167049, 34.350582>,  <25.800522, 36.124664, 34.570843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715145, 36.167049, 34.350582>,  <25.572851, 36.237690, 33.983482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715145, 36.167049, 34.350582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004334, 0.982285, 0.187343,
		-0.934577, -0.062666, 0.350197,
		0.355733, -0.176604, 0.917750,
		25.821865, 36.114067, 34.625908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153372, 36.618332, 34.537907>,  <25.572851, 36.237690, 33.983482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153372, 36.618332, 34.537907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546776, 36.559273, 34.579681>,  <25.782818, 36.523838, 34.604748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546776, 36.559273, 34.579681>,  <25.153372, 36.618332, 34.537907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546776, 36.559273, 34.579681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138036, 0.985957, 0.093989,
		-0.116853, -0.078023, 0.990080,
		0.983510, -0.147650, 0.104442,
		25.841829, 36.514977, 34.611015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447182, 36.850811, 35.228710>,  <25.153372, 36.618332, 34.537907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447182, 36.850811, 35.228710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763060, 36.851223, 34.983311>,  <25.952587, 36.851471, 34.836071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763060, 36.851223, 34.983311>,  <25.447182, 36.850811, 35.228710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763060, 36.851223, 34.983311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101537, 0.985988, 0.132353,
		0.605038, -0.166811, 0.778526,
		0.789696, 0.001029, -0.613498,
		25.999968, 36.851532, 34.799263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096258, 37.220501, 35.578163>,  <25.447182, 36.850811, 35.228710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096258, 37.220501, 35.578163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144985, 37.252357, 35.182423>,  <26.174221, 37.271469, 34.944977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144985, 37.252357, 35.182423>,  <26.096258, 37.220501, 35.578163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144985, 37.252357, 35.182423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315341, 0.942027, 0.114655,
		0.941127, -0.325951, 0.089648,
		0.121823, 0.079636, -0.989352,
		26.181530, 37.276249, 34.885616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730267, 37.587017, 35.526928>,  <26.096258, 37.220501, 35.578163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730267, 37.587017, 35.526928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535990, 37.621651, 35.178993>,  <26.419424, 37.642429, 34.970234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535990, 37.621651, 35.178993>,  <26.730267, 37.587017, 35.526928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535990, 37.621651, 35.178993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226929, 0.973455, -0.029815,
		0.844161, -0.211871, -0.492446,
		-0.485691, 0.086582, -0.869832,
		26.390282, 37.647625, 34.918045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167818, 38.002403, 35.133141>,  <26.730267, 37.587017, 35.526928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167818, 38.002403, 35.133141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806112, 38.024490, 34.963783>,  <26.589088, 38.037743, 34.862171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806112, 38.024490, 34.963783>,  <27.167818, 38.002403, 35.133141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806112, 38.024490, 34.963783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116470, 0.985896, -0.120184,
		0.410781, -0.157990, -0.897941,
		-0.904264, 0.055214, -0.423389,
		26.534834, 38.041054, 34.836765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225281, 38.408882, 34.479362>,  <27.167818, 38.002403, 35.133141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225281, 38.408882, 34.479362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832504, 38.421242, 34.554024>,  <26.596838, 38.428658, 34.598820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832504, 38.421242, 34.554024>,  <27.225281, 38.408882, 34.479362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832504, 38.421242, 34.554024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013686, 0.995590, -0.092811,
		-0.188701, -0.088580, -0.978031,
		-0.981939, 0.030899, 0.186657,
		26.537922, 38.430511, 34.610020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056049, 38.887138, 33.966339>,  <27.225281, 38.408882, 34.479362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056049, 38.887138, 33.966339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782160, 38.858643, 34.256462>,  <26.617826, 38.841545, 34.430538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782160, 38.858643, 34.256462>,  <27.056049, 38.887138, 33.966339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782160, 38.858643, 34.256462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067236, 0.997142, 0.034464,
		-0.725694, -0.025169, -0.687557,
		-0.684724, -0.071239, 0.725312,
		26.576742, 38.837273, 34.474056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585648, 39.340496, 33.735191>,  <27.056049, 38.887138, 33.966339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585648, 39.340496, 33.735191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522840, 39.315681, 34.129448>,  <26.485157, 39.300793, 34.366001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522840, 39.315681, 34.129448>,  <26.585648, 39.340496, 33.735191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522840, 39.315681, 34.129448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101872, 0.991684, 0.078643,
		-0.982327, 0.112758, -0.149393,
		-0.157018, -0.062034, 0.985645,
		26.475735, 39.297070, 34.425140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101118, 39.924671, 33.943584>,  <26.585648, 39.340496, 33.735191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101118, 39.924671, 33.943584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260002, 39.813995, 34.293594>,  <26.355333, 39.747589, 34.503601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260002, 39.813995, 34.293594>,  <26.101118, 39.924671, 33.943584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260002, 39.813995, 34.293594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166271, 0.959385, 0.227890,
		-0.902540, 0.054971, 0.427082,
		0.397209, -0.276692, 0.875024,
		26.379166, 39.730988, 34.556103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741161, 40.286617, 34.500771>,  <26.101118, 39.924671, 33.943584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741161, 40.286617, 34.500771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085361, 40.183884, 34.676758>,  <26.291882, 40.122242, 34.782349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085361, 40.183884, 34.676758>,  <25.741161, 40.286617, 34.500771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085361, 40.183884, 34.676758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089059, 0.926159, 0.366467,
		-0.501603, -0.276162, 0.819834,
		0.860501, -0.256835, 0.439970,
		26.343512, 40.106834, 34.808750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789791, 40.680111, 35.190693>,  <25.741161, 40.286617, 34.500771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789791, 40.680111, 35.190693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154316, 40.548824, 35.091263>,  <26.373030, 40.470055, 35.031605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154316, 40.548824, 35.091263>,  <25.789791, 40.680111, 35.190693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154316, 40.548824, 35.091263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382646, 0.898026, 0.217097,
		0.151971, -0.292959, 0.943971,
		0.911311, -0.328214, -0.248573,
		26.427710, 40.450359, 35.016689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233809, 40.984459, 35.680233>,  <25.789791, 40.680111, 35.190693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233809, 40.984459, 35.680233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496487, 40.885708, 35.395191>,  <26.654093, 40.826458, 35.224167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496487, 40.885708, 35.395191>,  <26.233809, 40.984459, 35.680233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496487, 40.885708, 35.395191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363786, 0.931398, 0.012561,
		0.660614, -0.267483, 0.701457,
		0.656695, -0.246882, -0.712601,
		26.693495, 40.811642, 35.181412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917418, 41.247784, 35.957329>,  <26.233809, 40.984459, 35.680233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917418, 41.247784, 35.957329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942749, 41.222874, 35.558910>,  <26.957949, 41.207928, 35.319859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942749, 41.222874, 35.558910>,  <26.917418, 41.247784, 35.957329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942749, 41.222874, 35.558910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482891, 0.875351, -0.024026,
		0.873388, -0.479460, 0.085508,
		0.063330, -0.062275, -0.996048,
		26.961748, 41.204193, 35.260098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524982, 41.517349, 35.908810>,  <26.917418, 41.247784, 35.957329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524982, 41.517349, 35.908810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347588, 41.553032, 35.552078>,  <27.241150, 41.574440, 35.338039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347588, 41.553032, 35.552078>,  <27.524982, 41.517349, 35.908810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347588, 41.553032, 35.552078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376155, 0.921688, -0.094860,
		0.813528, -0.377535, -0.442312,
		-0.443487, 0.089206, -0.891830,
		27.214542, 41.579792, 35.284531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054066, 41.917187, 35.582211>,  <27.524982, 41.517349, 35.908810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054066, 41.917187, 35.582211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722477, 41.945984, 35.360355>,  <27.523523, 41.963261, 35.227242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722477, 41.945984, 35.360355>,  <28.054066, 41.917187, 35.582211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722477, 41.945984, 35.360355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238633, 0.942411, -0.234341,
		0.505828, -0.326617, -0.798411,
		-0.828971, 0.071991, -0.554640,
		27.473785, 41.967583, 35.193962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321007, 42.390633, 35.093479>,  <28.054066, 41.917187, 35.582211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321007, 42.390633, 35.093479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925463, 42.392246, 35.033958>,  <27.688137, 42.393215, 34.998245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925463, 42.392246, 35.033958>,  <28.321007, 42.390633, 35.093479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925463, 42.392246, 35.033958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063600, 0.915247, -0.397841,
		0.134585, -0.402872, -0.905307,
		-0.988859, 0.004034, -0.148802,
		27.628805, 42.393456, 34.989319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284918, 42.596199, 34.479458>,  <28.321007, 42.390633, 35.093479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284918, 42.596199, 34.479458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918736, 42.681831, 34.615753>,  <27.699026, 42.733212, 34.697533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918736, 42.681831, 34.615753>,  <28.284918, 42.596199, 34.479458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918736, 42.681831, 34.615753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034619, 0.885503, -0.463341,
		-0.400921, -0.412373, -0.818053,
		-0.915458, 0.214084, 0.340741,
		27.644098, 42.746056, 34.717976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999134, 42.893833, 33.937885>,  <28.284918, 42.596199, 34.479458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999134, 42.893833, 33.937885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770147, 43.021778, 34.239872>,  <27.632755, 43.098545, 34.421062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770147, 43.021778, 34.239872>,  <27.999134, 42.893833, 33.937885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770147, 43.021778, 34.239872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082529, 0.938572, -0.335070,
		-0.815764, -0.129510, -0.563699,
		-0.572466, 0.319860, 0.754965,
		27.598408, 43.117737, 34.466362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442072, 43.394699, 33.643295>,  <27.999134, 42.893833, 33.937885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442072, 43.394699, 33.643295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521996, 43.468349, 34.028248>,  <27.569950, 43.512539, 34.259220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521996, 43.468349, 34.028248>,  <27.442072, 43.394699, 33.643295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521996, 43.468349, 34.028248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194240, 0.955250, -0.223088,
		-0.960389, 0.231508, 0.155104,
		0.199809, 0.184124, 0.962379,
		27.581938, 43.523586, 34.316963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019346, 43.935253, 33.769775>,  <27.442072, 43.394699, 33.643295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019346, 43.935253, 33.769775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340246, 43.930988, 34.008533>,  <27.532785, 43.928429, 34.151787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340246, 43.930988, 34.008533>,  <27.019346, 43.935253, 33.769775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340246, 43.930988, 34.008533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238602, 0.922239, -0.304212,
		-0.547234, 0.386474, 0.742411,
		0.802250, -0.010665, 0.596893,
		27.580921, 43.927788, 34.187603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090059, 44.538170, 33.973125>,  <27.019346, 43.935253, 33.769775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090059, 44.538170, 33.973125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458744, 44.400455, 34.044586>,  <27.679955, 44.317825, 34.087463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458744, 44.400455, 34.044586>,  <27.090059, 44.538170, 33.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458744, 44.400455, 34.044586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387554, 0.798592, -0.460492,
		0.015874, 0.493676, 0.869501,
		0.921710, -0.344288, 0.178649,
		27.735258, 44.297169, 34.098183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506304, 44.945038, 34.399811>,  <27.090059, 44.538170, 33.973125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506304, 44.945038, 34.399811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747360, 44.744408, 34.151539>,  <27.891994, 44.624031, 34.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747360, 44.744408, 34.151539>,  <27.506304, 44.945038, 34.399811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747360, 44.744408, 34.151539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318322, 0.864319, -0.389389,
		0.731775, 0.037085, 0.680537,
		0.602641, -0.501575, -0.620682,
		27.928152, 44.593937, 33.965336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321806, 45.115543, 34.394043>,  <27.506304, 44.945038, 34.399811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321806, 45.115543, 34.394043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195890, 44.977234, 34.040466>,  <28.120340, 44.894249, 33.828320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195890, 44.977234, 34.040466>,  <28.321806, 45.115543, 34.394043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195890, 44.977234, 34.040466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620695, 0.629568, -0.467314,
		0.718085, -0.695761, 0.016441,
		-0.314788, -0.345776, -0.883939,
		28.101454, 44.873501, 33.775284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970772, 44.952259, 33.909702>,  <28.321806, 45.115543, 34.394043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970772, 44.952259, 33.909702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625994, 45.044617, 33.729153>,  <28.419127, 45.100033, 33.620823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625994, 45.044617, 33.729153>,  <28.970772, 44.952259, 33.909702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625994, 45.044617, 33.729153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438601, 0.786159, -0.435411,
		0.254316, -0.573273, -0.778898,
		-0.861947, 0.230893, -0.451371,
		28.367409, 45.113884, 33.593742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426500, 44.707348, 34.399479>,  <28.970772, 44.952259, 33.909702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426500, 44.707348, 34.399479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610586, 44.638374, 34.051121>,  <29.721037, 44.596989, 33.842106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610586, 44.638374, 34.051121>,  <29.426500, 44.707348, 34.399479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610586, 44.638374, 34.051121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817265, 0.465487, 0.339706,
		0.346814, -0.868094, 0.355152,
		0.460215, -0.172438, -0.870900,
		29.748652, 44.586643, 33.789852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142290, 44.601093, 34.542229>,  <29.426500, 44.707348, 34.399479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142290, 44.601093, 34.542229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116989, 44.714462, 34.159466>,  <30.101809, 44.782482, 33.929810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116989, 44.714462, 34.159466>,  <30.142290, 44.601093, 34.542229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116989, 44.714462, 34.159466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792862, 0.596591, 0.124293,
		0.606110, -0.750834, -0.262448,
		-0.063251, 0.283420, -0.956908,
		30.098013, 44.799488, 33.872395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841120, 44.400272, 34.179089>,  <30.142290, 44.601093, 34.542229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841120, 44.400272, 34.179089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633955, 44.718670, 34.053768>,  <30.509657, 44.909710, 33.978577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633955, 44.718670, 34.053768>,  <30.841120, 44.400272, 34.179089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633955, 44.718670, 34.053768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776109, 0.591262, 0.219235,
		0.359754, -0.129611, -0.924001,
		-0.517911, 0.795996, -0.313301,
		30.478582, 44.957470, 33.959778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201124, 44.834030, 33.670715>,  <30.841120, 44.400272, 34.179089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201124, 44.834030, 33.670715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948442, 45.045746, 33.897274>,  <30.796833, 45.172775, 34.033207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948442, 45.045746, 33.897274>,  <31.201124, 44.834030, 33.670715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948442, 45.045746, 33.897274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742603, 0.622840, 0.246192,
		-0.222465, 0.576126, -0.786504,
		-0.631704, 0.529291, 0.566393,
		30.758932, 45.204533, 34.067192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227610, 44.055889, 33.443138>,  <31.201124, 44.834030, 33.670715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227610, 44.055889, 33.443138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347662, 44.010479, 33.821987>,  <31.419693, 43.983231, 34.049297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347662, 44.010479, 33.821987>,  <31.227610, 44.055889, 33.443138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347662, 44.010479, 33.821987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610052, -0.786142, 0.099085,
		0.733321, -0.607530, -0.305202,
		0.300129, -0.113528, 0.947119,
		31.437700, 43.976421, 34.106121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580433, 43.368694, 33.638107>,  <31.227610, 44.055889, 33.443138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580433, 43.368694, 33.638107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364779, 43.514790, 33.941669>,  <31.235386, 43.602448, 34.123806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364779, 43.514790, 33.941669>,  <31.580433, 43.368694, 33.638107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364779, 43.514790, 33.941669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419855, -0.897681, 0.133752,
		0.730107, -0.246521, 0.637316,
		-0.539134, 0.365234, 0.758907,
		31.203039, 43.624359, 34.169342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710640, 42.940708, 34.129250>,  <31.580433, 43.368694, 33.638107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710640, 42.940708, 34.129250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389061, 43.122192, 34.283039>,  <31.196114, 43.231083, 34.375313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389061, 43.122192, 34.283039>,  <31.710640, 42.940708, 34.129250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389061, 43.122192, 34.283039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408232, -0.891147, 0.197999,
		0.432455, 0.002227, 0.901653,
		-0.803946, 0.453709, 0.384472,
		31.147877, 43.258305, 34.398380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586720, 42.585735, 34.729435>,  <31.710640, 42.940708, 34.129250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586720, 42.585735, 34.729435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241121, 42.757572, 34.624393>,  <31.033762, 42.860676, 34.561371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241121, 42.757572, 34.624393>,  <31.586720, 42.585735, 34.729435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241121, 42.757572, 34.624393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498393, -0.803772, 0.324892,
		-0.071501, 0.411585, 0.908562,
		-0.863998, 0.429591, -0.262602,
		30.981922, 42.886448, 34.545612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113935, 42.490376, 35.315304>,  <31.586720, 42.585735, 34.729435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113935, 42.490376, 35.315304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891201, 42.549904, 34.988430>,  <30.757561, 42.585621, 34.792305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891201, 42.549904, 34.988430>,  <31.113935, 42.490376, 35.315304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891201, 42.549904, 34.988430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496677, -0.848215, 0.183967,
		-0.665768, 0.508314, 0.546232,
		-0.556835, 0.148822, -0.817182,
		30.724150, 42.594551, 34.743275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511602, 42.262955, 35.577877>,  <31.113935, 42.490376, 35.315304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511602, 42.262955, 35.577877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438673, 42.271843, 35.184681>,  <30.394915, 42.277176, 34.948765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438673, 42.271843, 35.184681>,  <30.511602, 42.262955, 35.577877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438673, 42.271843, 35.184681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395818, -0.916816, 0.052694,
		-0.900048, 0.398692, 0.175952,
		-0.182324, 0.022218, -0.982987,
		30.383976, 42.278507, 34.889786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854774, 42.049374, 35.459496>,  <30.511602, 42.262955, 35.577877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854774, 42.049374, 35.459496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026386, 41.968819, 35.107273>,  <30.129353, 41.920486, 34.895939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026386, 41.968819, 35.107273>,  <29.854774, 42.049374, 35.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026386, 41.968819, 35.107273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347242, -0.936693, 0.045041,
		-0.833881, 0.286442, -0.471799,
		0.429029, -0.201387, -0.880555,
		30.155094, 41.908401, 34.843105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292463, 41.784740, 34.987995>,  <29.854774, 42.049374, 35.459496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292463, 41.784740, 34.987995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648718, 41.680035, 34.839272>,  <29.862471, 41.617210, 34.750038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648718, 41.680035, 34.839272>,  <29.292463, 41.784740, 34.987995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648718, 41.680035, 34.839272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318014, -0.943023, -0.097848,
		-0.325015, 0.205389, -0.923136,
		0.890636, -0.261768, -0.371813,
		29.915909, 41.601505, 34.727726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128700, 41.326492, 34.498009>,  <29.292463, 41.784740, 34.987995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128700, 41.326492, 34.498009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521376, 41.261105, 34.537132>,  <29.756981, 41.221874, 34.560608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521376, 41.261105, 34.537132>,  <29.128700, 41.326492, 34.498009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521376, 41.261105, 34.537132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136857, -0.962369, -0.234767,
		0.132507, 0.217082, -0.967118,
		0.981688, -0.163465, 0.097812,
		29.815882, 41.212067, 34.566475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310600, 40.954887, 33.915764>,  <29.128700, 41.326492, 34.498009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310600, 40.954887, 33.915764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571247, 40.892754, 34.212753>,  <29.727636, 40.855473, 34.390945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571247, 40.892754, 34.212753>,  <29.310600, 40.954887, 33.915764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571247, 40.892754, 34.212753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248172, -0.968597, 0.015167,
		0.716801, -0.194144, -0.669705,
		0.651619, -0.155330, 0.742473,
		29.766733, 40.846153, 34.435493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761961, 40.319103, 33.732857>,  <29.310600, 40.954887, 33.915764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761961, 40.319103, 33.732857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821684, 40.367588, 34.125389>,  <29.857517, 40.396679, 34.360909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821684, 40.367588, 34.125389>,  <29.761961, 40.319103, 33.732857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821684, 40.367588, 34.125389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011102, -0.992190, 0.124240,
		0.988729, -0.029445, -0.146794,
		0.149306, 0.121210, 0.981334,
		29.866476, 40.403950, 34.419788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291044, 39.923309, 33.904106>,  <29.761961, 40.319103, 33.732857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291044, 39.923309, 33.904106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089031, 39.960659, 34.247322>,  <29.967823, 39.983070, 34.453251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089031, 39.960659, 34.247322>,  <30.291044, 39.923309, 33.904106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089031, 39.960659, 34.247322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120731, -0.992000, 0.036891,
		0.854616, -0.084961, 0.512264,
		-0.505031, 0.093374, 0.858036,
		29.937521, 39.988670, 34.504734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640030, 39.411865, 34.197105>,  <30.291044, 39.923309, 33.904106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640030, 39.411865, 34.197105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289375, 39.491127, 34.372486>,  <30.078981, 39.538685, 34.477715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289375, 39.491127, 34.372486>,  <30.640030, 39.411865, 34.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289375, 39.491127, 34.372486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162823, -0.979670, 0.117199,
		0.452762, 0.031351, 0.891080,
		-0.876639, 0.198151, 0.438453,
		30.026384, 39.550571, 34.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666153, 38.911022, 34.762856>,  <30.640030, 39.411865, 34.197105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666153, 38.911022, 34.762856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282116, 39.017376, 34.728153>,  <30.051693, 39.081188, 34.707333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282116, 39.017376, 34.728153>,  <30.666153, 38.911022, 34.762856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282116, 39.017376, 34.728153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279642, -0.917644, 0.282365,
		-0.004532, 0.295356, 0.955376,
		-0.960094, 0.265884, -0.086752,
		29.994087, 39.097141, 34.702129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229454, 38.648827, 35.338783>,  <30.666153, 38.911022, 34.762856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229454, 38.648827, 35.338783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980860, 38.702675, 35.030075>,  <29.831703, 38.734982, 34.844849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980860, 38.702675, 35.030075>,  <30.229454, 38.648827, 35.338783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980860, 38.702675, 35.030075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327464, -0.939577, 0.099810,
		-0.711704, 0.314759, 0.628016,
		-0.621485, 0.134618, -0.771773,
		29.794415, 38.743061, 34.798542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665211, 38.292751, 35.547329>,  <30.229454, 38.648827, 35.338783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665211, 38.292751, 35.547329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610426, 38.346088, 35.154705>,  <29.577555, 38.378090, 34.919132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610426, 38.346088, 35.154705>,  <29.665211, 38.292751, 35.547329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610426, 38.346088, 35.154705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627061, -0.778756, -0.018297,
		-0.766835, 0.612991, 0.190278,
		-0.136964, 0.133346, -0.981560,
		29.569336, 38.386093, 34.860237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941696, 38.300865, 35.402565>,  <29.665211, 38.292751, 35.547329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941696, 38.300865, 35.402565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134718, 38.200447, 35.066917>,  <29.250532, 38.140194, 34.865528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134718, 38.200447, 35.066917>,  <28.941696, 38.300865, 35.402565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134718, 38.200447, 35.066917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501484, -0.864657, -0.029703,
		-0.718090, 0.435137, -0.543141,
		0.482556, -0.251047, -0.839116,
		29.279484, 38.125134, 34.815182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419565, 37.943298, 35.105457>,  <28.941696, 38.300865, 35.402565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419565, 37.943298, 35.105457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761086, 37.876881, 34.908092>,  <28.965998, 37.837029, 34.789673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761086, 37.876881, 34.908092>,  <28.419565, 37.943298, 35.105457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761086, 37.876881, 34.908092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254819, -0.959768, -0.117949,
		-0.453974, 0.226435, -0.861763,
		0.853800, -0.166048, -0.493410,
		29.017225, 37.827065, 34.760071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158085, 37.637852, 34.577980>,  <28.419565, 37.943298, 35.105457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158085, 37.637852, 34.577980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542616, 37.528431, 34.590763>,  <28.773335, 37.462780, 34.598434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542616, 37.528431, 34.590763>,  <28.158085, 37.637852, 34.577980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542616, 37.528431, 34.590763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268839, -0.957246, -0.106794,
		0.059807, 0.094072, -0.993767,
		0.961326, -0.273550, 0.031960,
		28.831015, 37.446365, 34.600349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322737, 37.296616, 33.878445>,  <28.158085, 37.637852, 34.577980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322737, 37.296616, 33.878445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613995, 37.152416, 34.111629>,  <28.788750, 37.065895, 34.251541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613995, 37.152416, 34.111629>,  <28.322737, 37.296616, 33.878445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613995, 37.152416, 34.111629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206922, -0.926445, -0.314455,
		0.653442, 0.108342, -0.749184,
		0.728146, -0.360501, 0.582959,
		28.832439, 37.044266, 34.286518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636511, 36.770302, 33.467747>,  <28.322737, 37.296616, 33.878445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636511, 36.770302, 33.467747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753445, 36.676289, 33.838539>,  <28.823605, 36.619881, 34.061016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753445, 36.676289, 33.838539>,  <28.636511, 36.770302, 33.467747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753445, 36.676289, 33.838539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265453, -0.951180, -0.157455,
		0.918736, -0.200041, -0.340453,
		0.292334, -0.235034, 0.926984,
		28.841145, 36.605778, 34.116634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993788, 36.078182, 33.406357>,  <28.636511, 36.770302, 33.467747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993788, 36.078182, 33.406357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892462, 36.121803, 33.790844>,  <28.831667, 36.147976, 34.021538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892462, 36.121803, 33.790844>,  <28.993788, 36.078182, 33.406357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892462, 36.121803, 33.790844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343741, -0.938929, 0.015932,
		0.904253, -0.326374, 0.275329,
		-0.253314, 0.109049, 0.961218,
		28.816467, 36.154518, 34.079208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284943, 35.423195, 33.786957>,  <28.993788, 36.078182, 33.406357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284943, 35.423195, 33.786957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963350, 35.548477, 33.989151>,  <28.770395, 35.623646, 34.110470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963350, 35.548477, 33.989151>,  <29.284943, 35.423195, 33.786957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963350, 35.548477, 33.989151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358862, -0.933360, 0.007544,
		0.474167, -0.175336, 0.862799,
		-0.803980, 0.313203, 0.505490,
		28.722157, 35.642437, 34.140797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208218, 34.903305, 34.343506>,  <29.284943, 35.423195, 33.786957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208218, 34.903305, 34.343506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858362, 35.093483, 34.305645>,  <28.648449, 35.207592, 34.282928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858362, 35.093483, 34.305645>,  <29.208218, 34.903305, 34.343506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858362, 35.093483, 34.305645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483390, -0.870114, 0.096101,
		-0.036668, 0.129808, 0.990861,
		-0.874637, 0.475448, -0.094653,
		28.595972, 35.236118, 34.277248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507462, 35.230392, 34.972713>,  <29.208218, 34.903305, 34.343506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507462, 35.230392, 34.972713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342043, 34.883377, 34.862186>,  <29.242792, 34.675167, 34.795868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342043, 34.883377, 34.862186>,  <29.507462, 35.230392, 34.972713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342043, 34.883377, 34.862186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284147, 0.165356, -0.944414,
		0.865008, -0.469075, 0.178126,
		-0.413547, -0.867540, -0.276321,
		29.217979, 34.623116, 34.779289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795641, 35.139843, 35.693386>,  <29.507462, 35.230392, 34.972713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795641, 35.139843, 35.693386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932833, 35.464901, 35.881840>,  <30.015148, 35.659935, 35.994911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932833, 35.464901, 35.881840>,  <29.795641, 35.139843, 35.693386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932833, 35.464901, 35.881840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360962, -0.577071, 0.732595,
		0.867221, -0.081201, -0.491258,
		0.342978, 0.812647, 0.471138,
		30.035727, 35.708694, 36.023182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478041, 35.086048, 36.044876>,  <29.795641, 35.139843, 35.693386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478041, 35.086048, 36.044876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284719, 35.363838, 36.258091>,  <30.168728, 35.530510, 36.386021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284719, 35.363838, 36.258091>,  <30.478041, 35.086048, 36.044876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284719, 35.363838, 36.258091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400083, -0.366358, 0.840068,
		0.778687, 0.619265, -0.100786,
		-0.483301, 0.694473, 0.533036,
		30.139729, 35.572182, 36.418003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955650, 35.528858, 36.438011>,  <30.478041, 35.086048, 36.044876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955650, 35.528858, 36.438011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604813, 35.473198, 36.621899>,  <30.394310, 35.439800, 36.732231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604813, 35.473198, 36.621899>,  <30.955650, 35.528858, 36.438011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604813, 35.473198, 36.621899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479680, -0.303186, 0.823398,
		0.024803, 0.942717, 0.332671,
		-0.877093, -0.139153, 0.459722,
		30.341684, 35.431454, 36.759815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927658, 35.845985, 37.123116>,  <30.955650, 35.528858, 36.438011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927658, 35.845985, 37.123116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681355, 35.532288, 37.153572>,  <30.533573, 35.344067, 37.171844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681355, 35.532288, 37.153572>,  <30.927658, 35.845985, 37.123116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681355, 35.532288, 37.153572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491859, -0.307090, 0.814721,
		-0.615563, 0.539120, 0.574833,
		-0.615757, -0.784249, 0.076138,
		30.496628, 35.297012, 37.176414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688303, 35.859138, 37.770855>,  <30.927658, 35.845985, 37.123116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688303, 35.859138, 37.770855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677769, 35.477188, 37.652519>,  <30.671448, 35.248020, 37.581516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677769, 35.477188, 37.652519>,  <30.688303, 35.859138, 37.770855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677769, 35.477188, 37.652519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596876, -0.252422, 0.761592,
		-0.801901, -0.156524, 0.576589,
		-0.026337, -0.954874, -0.295843,
		30.669868, 35.190727, 37.563766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426292, 35.447781, 38.321442>,  <30.688303, 35.859138, 37.770855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426292, 35.447781, 38.321442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643431, 35.217003, 38.077328>,  <30.773714, 35.078537, 37.930859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643431, 35.217003, 38.077328>,  <30.426292, 35.447781, 38.321442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643431, 35.217003, 38.077328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718573, -0.057056, 0.693107,
		-0.434708, -0.814785, 0.383608,
		0.542846, -0.576949, -0.610285,
		30.806284, 35.043919, 37.894241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664038, 34.997459, 38.764065>,  <30.426292, 35.447781, 38.321442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664038, 34.997459, 38.764065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923622, 34.942612, 38.464718>,  <31.079372, 34.909702, 38.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923622, 34.942612, 38.464718>,  <30.664038, 34.997459, 38.764065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923622, 34.942612, 38.464718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758561, 0.192394, 0.622551,
		0.058615, -0.971690, 0.228871,
		0.648961, -0.137122, -0.748364,
		31.118311, 34.901474, 38.240208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121218, 34.585548, 39.045925>,  <30.664038, 34.997459, 38.764065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121218, 34.585548, 39.045925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304667, 34.761787, 38.737240>,  <31.414736, 34.867531, 38.552029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304667, 34.761787, 38.737240>,  <31.121218, 34.585548, 39.045925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304667, 34.761787, 38.737240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774883, 0.226823, 0.590007,
		0.434996, -0.868578, -0.237383,
		0.458623, 0.440595, -0.771713,
		31.442253, 34.893967, 38.505726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708345, 34.244560, 39.073956>,  <31.121218, 34.585548, 39.045925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708345, 34.244560, 39.073956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779100, 34.586773, 38.879318>,  <31.821552, 34.792099, 38.762535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779100, 34.586773, 38.879318>,  <31.708345, 34.244560, 39.073956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779100, 34.586773, 38.879318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741015, 0.209625, 0.637930,
		0.647772, -0.473417, -0.596882,
		0.176885, 0.855531, -0.486598,
		31.832167, 34.843433, 38.733337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356419, 34.370388, 39.271881>,  <31.708345, 34.244560, 39.073956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356419, 34.370388, 39.271881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280869, 34.706707, 39.068951>,  <32.235538, 34.908501, 38.947193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280869, 34.706707, 39.068951>,  <32.356419, 34.370388, 39.271881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280869, 34.706707, 39.068951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747123, 0.458312, 0.481412,
		0.637285, -0.288109, -0.714745,
		-0.188877, 0.840800, -0.507328,
		32.224205, 34.958946, 38.916752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918152, 34.544903, 38.886101>,  <32.356419, 34.370388, 39.271881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918152, 34.544903, 38.886101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708885, 34.869350, 38.990700>,  <32.583324, 35.064018, 39.053459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708885, 34.869350, 38.990700>,  <32.918152, 34.544903, 38.886101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708885, 34.869350, 38.990700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750853, 0.293562, 0.591643,
		0.403127, 0.505874, -0.762613,
		-0.523171, 0.811118, 0.261494,
		32.551933, 35.112686, 39.069149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432114, 35.021694, 38.942017>,  <32.918152, 34.544903, 38.886101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432114, 35.021694, 38.942017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119667, 35.176167, 39.138271>,  <32.932201, 35.268852, 39.256023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119667, 35.176167, 39.138271>,  <33.432114, 35.021694, 38.942017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119667, 35.176167, 39.138271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622879, 0.536597, 0.569285,
		-0.043426, 0.750283, -0.659689,
		-0.781112, 0.386184, 0.490638,
		32.885334, 35.292023, 39.285461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649551, 35.802124, 39.184887>,  <33.432114, 35.021694, 38.942017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649551, 35.802124, 39.184887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358017, 35.659492, 39.418694>,  <33.183098, 35.573914, 39.558975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358017, 35.659492, 39.418694>,  <33.649551, 35.802124, 39.184887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358017, 35.659492, 39.418694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408659, 0.458410, 0.789213,
		-0.549365, 0.814070, -0.188384,
		-0.728832, -0.356581, 0.584512,
		33.139366, 35.552517, 39.594048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467968, 36.394585, 39.487133>,  <33.649551, 35.802124, 39.184887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467968, 36.394585, 39.487133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359928, 36.081768, 39.711792>,  <33.295105, 35.894077, 39.846588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359928, 36.081768, 39.711792>,  <33.467968, 36.394585, 39.487133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359928, 36.081768, 39.711792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355886, 0.460930, 0.812950,
		-0.894646, 0.419461, 0.153823,
		-0.270099, -0.782046, 0.561650,
		33.278900, 35.847153, 39.880287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245270, 36.693363, 40.164139>,  <33.467968, 36.394585, 39.487133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245270, 36.693363, 40.164139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273464, 36.301388, 40.238716>,  <33.290382, 36.066204, 40.283463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273464, 36.301388, 40.238716>,  <33.245270, 36.693363, 40.164139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273464, 36.301388, 40.238716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401805, 0.198964, 0.893849,
		-0.913008, 0.011909, 0.407767,
		0.070486, -0.979934, 0.186441,
		33.294609, 36.007408, 40.294647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944233, 36.466167, 40.762085>,  <33.245270, 36.693363, 40.164139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944233, 36.466167, 40.762085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215801, 36.174149, 40.730877>,  <33.378742, 35.998936, 40.712154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215801, 36.174149, 40.730877>,  <32.944233, 36.466167, 40.762085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215801, 36.174149, 40.730877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300177, 0.179028, 0.936933,
		-0.670042, -0.659525, 0.340691,
		0.678924, -0.730052, -0.078018,
		33.419479, 35.955132, 40.707470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850384, 36.023495, 41.401535>,  <32.944233, 36.466167, 40.762085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850384, 36.023495, 41.401535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223816, 35.987694, 41.262733>,  <33.447876, 35.966213, 41.179455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223816, 35.987694, 41.262733>,  <32.850384, 36.023495, 41.401535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223816, 35.987694, 41.262733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349730, 0.016352, 0.936708,
		-0.078161, -0.995853, 0.046567,
		0.933584, -0.089500, -0.347001,
		33.503891, 35.960846, 41.158634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185898, 35.474232, 41.864094>,  <32.850384, 36.023495, 41.401535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185898, 35.474232, 41.864094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517319, 35.614941, 41.689850>,  <33.716171, 35.699364, 41.585304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517319, 35.614941, 41.689850>,  <33.185898, 35.474232, 41.864094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517319, 35.614941, 41.689850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495347, -0.097848, 0.863167,
		0.261011, -0.930959, -0.255320,
		0.828555, 0.351768, -0.435609,
		33.765884, 35.720470, 41.559166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784889, 34.955757, 42.036697>,  <33.185898, 35.474232, 41.864094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784889, 34.955757, 42.036697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938080, 35.304451, 41.914448>,  <34.029995, 35.513668, 41.841099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938080, 35.304451, 41.914448>,  <33.784889, 34.955757, 42.036697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938080, 35.304451, 41.914448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660033, -0.026761, 0.750760,
		0.646286, -0.489245, -0.585623,
		0.382978, 0.871736, -0.305622,
		34.052975, 35.565971, 41.822762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640800, 34.837498, 42.169033>,  <33.784889, 34.955757, 42.036697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640800, 34.837498, 42.169033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532101, 35.222042, 42.151463>,  <34.466881, 35.452770, 42.140919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532101, 35.222042, 42.151463>,  <34.640800, 34.837498, 42.169033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532101, 35.222042, 42.151463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452611, 0.167955, 0.875748,
		0.849291, 0.218103, -0.480766,
		-0.271750, 0.961365, -0.043927,
		34.450577, 35.510452, 42.138283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080677, 35.145126, 42.740879>,  <34.640800, 34.837498, 42.169033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080677, 35.145126, 42.740879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817585, 35.439781, 42.677937>,  <34.659729, 35.616573, 42.640171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817585, 35.439781, 42.677937>,  <35.080677, 35.145126, 42.740879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817585, 35.439781, 42.677937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003075, 0.206280, 0.978488,
		0.753247, 0.644066, -0.133412,
		-0.657731, 0.736633, -0.157361,
		34.620266, 35.660770, 42.630730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325642, 35.820488, 42.969311>,  <35.080677, 35.145126, 42.740879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325642, 35.820488, 42.969311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926109, 35.836243, 42.980503>,  <34.686390, 35.845695, 42.987217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926109, 35.836243, 42.980503>,  <35.325642, 35.820488, 42.969311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926109, 35.836243, 42.980503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038478, 0.298345, 0.953682,
		0.029211, 0.953645, -0.299512,
		-0.998832, 0.039383, 0.027979,
		34.626461, 35.848057, 42.988895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148830, 36.612339, 43.099403>,  <35.325642, 35.820488, 42.969311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148830, 36.612339, 43.099403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856342, 36.365841, 43.216404>,  <34.680851, 36.217941, 43.286606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856342, 36.365841, 43.216404>,  <35.148830, 36.612339, 43.099403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856342, 36.365841, 43.216404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094583, 0.516256, 0.851195,
		-0.675552, 0.594746, -0.435784,
		-0.731221, -0.616244, 0.292505,
		34.636974, 36.180969, 43.304157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649410, 36.994480, 43.396748>,  <35.148830, 36.612339, 43.099403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649410, 36.994480, 43.396748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542969, 36.627861, 43.516167>,  <34.479103, 36.407890, 43.587818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542969, 36.627861, 43.516167>,  <34.649410, 36.994480, 43.396748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542969, 36.627861, 43.516167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422203, 0.389246, 0.818677,
		-0.866564, 0.091805, -0.490549,
		-0.266102, -0.916547, 0.298547,
		34.463139, 36.352898, 43.605732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025932, 37.038815, 43.592350>,  <34.649410, 36.994480, 43.396748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025932, 37.038815, 43.592350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154079, 36.723984, 43.803204>,  <34.230968, 36.535084, 43.929714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154079, 36.723984, 43.803204>,  <34.025932, 37.038815, 43.592350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154079, 36.723984, 43.803204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326798, 0.430469, 0.841367,
		-0.889138, -0.441813, -0.119308,
		0.320369, -0.787081, 0.527130,
		34.250191, 36.487858, 43.961342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742928, 37.193478, 44.242977>,  <34.025932, 37.038815, 43.592350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742928, 37.193478, 44.242977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926022, 36.849583, 44.333599>,  <34.035877, 36.643246, 44.387974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926022, 36.849583, 44.333599>,  <33.742928, 37.193478, 44.242977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926022, 36.849583, 44.333599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232618, 0.130136, 0.963822,
		-0.858121, -0.493872, -0.140424,
		0.457731, -0.859741, 0.226556,
		34.063339, 36.591660, 44.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271564, 36.818909, 44.654591>,  <33.742928, 37.193478, 44.242977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271564, 36.818909, 44.654591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635975, 36.691174, 44.758942>,  <33.854622, 36.614532, 44.821552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635975, 36.691174, 44.758942>,  <33.271564, 36.818909, 44.654591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635975, 36.691174, 44.758942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302519, -0.087694, 0.949101,
		-0.280209, -0.943574, -0.176498,
		0.911024, -0.319340, 0.260877,
		33.909283, 36.595371, 44.837204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123623, 36.395596, 45.195263>,  <33.271564, 36.818909, 44.654591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123623, 36.395596, 45.195263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517132, 36.450077, 45.241985>,  <33.753235, 36.482765, 45.270020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517132, 36.450077, 45.241985>,  <33.123623, 36.395596, 45.195263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517132, 36.450077, 45.241985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113028, -0.035165, 0.992969,
		0.139360, -0.990056, -0.019199,
		0.983770, 0.136210, 0.116805,
		33.812263, 36.490940, 45.277027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271889, 35.936428, 45.618626>,  <33.123623, 36.395596, 45.195263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271889, 35.936428, 45.618626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547062, 36.224194, 45.656986>,  <33.712166, 36.396854, 45.680000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547062, 36.224194, 45.656986>,  <33.271889, 35.936428, 45.618626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547062, 36.224194, 45.656986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158335, 0.019813, 0.987187,
		0.708296, -0.694299, 0.127538,
		0.687929, 0.719414, 0.095898,
		33.753441, 36.440018, 45.685757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891758, 35.661549, 46.133739>,  <33.271889, 35.936428, 45.618626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891758, 35.661549, 46.133739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890762, 36.060192, 46.100853>,  <33.890167, 36.299377, 46.081123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890762, 36.060192, 46.100853>,  <33.891758, 35.661549, 46.133739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890762, 36.060192, 46.100853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000067, 0.082213, 0.996615,
		0.999997, 0.002471, -0.000271,
		-0.002485, 0.996612, -0.082213,
		33.890018, 36.359177, 46.076191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516026, 35.922836, 46.486973>,  <33.891758, 35.661549, 46.133739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516026, 35.922836, 46.486973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280247, 36.245735, 46.474945>,  <34.138779, 36.439472, 46.467728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280247, 36.245735, 46.474945>,  <34.516026, 35.922836, 46.486973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280247, 36.245735, 46.474945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103746, 0.112566, 0.988213,
		0.801116, 0.579382, -0.150100,
		-0.589449, 0.807245, -0.030070,
		34.103413, 36.487907, 46.465923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875610, 36.335072, 46.971905>,  <34.516026, 35.922836, 46.486973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875610, 36.335072, 46.971905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523663, 36.518425, 46.921764>,  <34.312492, 36.628437, 46.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523663, 36.518425, 46.921764>,  <34.875610, 36.335072, 46.971905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523663, 36.518425, 46.921764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033368, 0.203531, 0.978500,
		0.474039, 0.865136, -0.163786,
		-0.879871, 0.458382, -0.125350,
		34.259701, 36.655941, 46.884159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789860, 37.034401, 47.374016>,  <34.875610, 36.335072, 46.971905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789860, 37.034401, 47.374016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411037, 36.920181, 47.315308>,  <34.183743, 36.851650, 47.280083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411037, 36.920181, 47.315308>,  <34.789860, 37.034401, 47.374016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411037, 36.920181, 47.315308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220008, 0.244263, 0.944421,
		-0.233833, 0.926712, -0.294155,
		-0.947058, -0.285553, -0.146767,
		34.126919, 36.834515, 47.271278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458572, 37.462879, 47.762455>,  <34.789860, 37.034401, 47.374016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458572, 37.462879, 47.762455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187496, 37.176369, 47.695900>,  <34.024849, 37.004463, 47.655968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187496, 37.176369, 47.695900>,  <34.458572, 37.462879, 47.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187496, 37.176369, 47.695900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312200, 0.075400, 0.947020,
		-0.665782, 0.693732, -0.274719,
		-0.677692, -0.716276, -0.166383,
		33.984188, 36.961487, 47.645985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881191, 37.727859, 48.048958>,  <34.458572, 37.462879, 47.762455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881191, 37.727859, 48.048958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826904, 37.331970, 48.030968>,  <33.794331, 37.094437, 48.020172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826904, 37.331970, 48.030968>,  <33.881191, 37.727859, 48.048958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826904, 37.331970, 48.030968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401674, 0.013471, 0.915684,
		-0.905670, 0.142343, -0.399376,
		-0.135721, -0.989726, -0.044975,
		33.786190, 37.035053, 48.017475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205345, 37.502541, 48.272804>,  <33.881191, 37.727859, 48.048958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205345, 37.502541, 48.272804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459793, 37.205441, 48.356396>,  <33.612461, 37.027180, 48.406551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459793, 37.205441, 48.356396>,  <33.205345, 37.502541, 48.272804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459793, 37.205441, 48.356396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350549, -0.036923, 0.935816,
		-0.687358, -0.668554, -0.283857,
		0.636124, -0.742747, 0.208982,
		33.650631, 36.982616, 48.419090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872360, 37.322079, 48.840191>,  <33.205345, 37.502541, 48.272804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872360, 37.322079, 48.840191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224075, 37.132942, 48.863075>,  <33.435104, 37.019459, 48.876804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224075, 37.132942, 48.863075>,  <32.872360, 37.322079, 48.840191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224075, 37.132942, 48.863075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110715, -0.086092, 0.990116,
		-0.463245, -0.876931, -0.128051,
		0.879288, -0.472843, 0.057208,
		33.487862, 36.991089, 48.880238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802502, 36.767700, 49.246338>,  <32.872360, 37.322079, 48.840191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802502, 36.767700, 49.246338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198643, 36.814045, 49.276745>,  <33.436329, 36.841854, 49.294991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198643, 36.814045, 49.276745>,  <32.802502, 36.767700, 49.246338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198643, 36.814045, 49.276745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068210, -0.069932, 0.995217,
		0.120630, -0.990800, -0.061354,
		0.990351, 0.115868, 0.076018,
		33.495747, 36.848804, 49.299549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027523, 36.519569, 49.943638>,  <32.802502, 36.767700, 49.246338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027523, 36.519569, 49.943638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373821, 36.692932, 49.843525>,  <33.581600, 36.796951, 49.783455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373821, 36.692932, 49.843525>,  <33.027523, 36.519569, 49.943638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373821, 36.692932, 49.843525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241067, 0.077137, 0.967438,
		0.438603, -0.897890, -0.037699,
		0.865745, 0.433410, -0.250284,
		33.633545, 36.822956, 49.768440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497944, 36.202278, 50.279469>,  <33.027523, 36.519569, 49.943638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497944, 36.202278, 50.279469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668541, 36.555866, 50.202835>,  <33.770901, 36.768021, 50.156857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668541, 36.555866, 50.202835>,  <33.497944, 36.202278, 50.279469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668541, 36.555866, 50.202835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218571, 0.104812, 0.970176,
		0.877685, -0.455647, -0.148509,
		0.426492, 0.883969, -0.191583,
		33.796490, 36.821056, 50.145359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283386, 36.210697, 50.407902>,  <33.497944, 36.202278, 50.279469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283386, 36.210697, 50.407902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148052, 36.585873, 50.438358>,  <34.066853, 36.810978, 50.456635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148052, 36.585873, 50.438358>,  <34.283386, 36.210697, 50.407902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148052, 36.585873, 50.438358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362715, 0.055318, 0.930257,
		0.868313, 0.342356, -0.358921,
		-0.338334, 0.937940, 0.076145,
		34.046551, 36.867256, 50.461201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814037, 36.554249, 50.809654>,  <34.283386, 36.210697, 50.407902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814037, 36.554249, 50.809654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482155, 36.777378, 50.817749>,  <34.283024, 36.911255, 50.822605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482155, 36.777378, 50.817749>,  <34.814037, 36.554249, 50.809654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482155, 36.777378, 50.817749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134062, 0.163940, 0.977318,
		0.541857, 0.813604, -0.210806,
		-0.829710, 0.557828, 0.020241,
		34.233242, 36.944725, 50.823822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053780, 37.001266, 51.238689>,  <34.814037, 36.554249, 50.809654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053780, 37.001266, 51.238689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658688, 37.060455, 51.218689>,  <34.421635, 37.095970, 51.206688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658688, 37.060455, 51.218689>,  <35.053780, 37.001266, 51.238689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658688, 37.060455, 51.218689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006586, 0.280410, 0.959858,
		0.156053, 0.948406, -0.275994,
		-0.987727, 0.147971, -0.050005,
		34.362370, 37.104847, 51.203686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948410, 37.616219, 51.631672>,  <35.053780, 37.001266, 51.238689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948410, 37.616219, 51.631672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579060, 37.463650, 51.614246>,  <34.357449, 37.372108, 51.603790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579060, 37.463650, 51.614246>,  <34.948410, 37.616219, 51.631672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579060, 37.463650, 51.614246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177546, 0.323667, 0.929364,
		-0.340381, 0.865884, -0.366586,
		-0.923373, -0.381424, -0.043564,
		34.302048, 37.349224, 51.601177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550339, 38.127529, 52.042759>,  <34.948410, 37.616219, 51.631672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550339, 38.127529, 52.042759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289639, 37.832329, 51.972805>,  <34.133221, 37.655209, 51.930832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289639, 37.832329, 51.972805>,  <34.550339, 38.127529, 52.042759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289639, 37.832329, 51.972805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547579, 0.298322, 0.781768,
		-0.524769, 0.605280, -0.598542,
		-0.651747, -0.737997, -0.174888,
		34.094116, 37.610931, 51.920338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856499, 38.346275, 52.030449>,  <34.550339, 38.127529, 52.042759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856499, 38.346275, 52.030449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825592, 37.959827, 52.128948>,  <33.807049, 37.727959, 52.188046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825592, 37.959827, 52.128948>,  <33.856499, 38.346275, 52.030449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825592, 37.959827, 52.128948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453394, 0.254015, 0.854348,
		-0.887955, -0.045635, -0.457661,
		-0.077265, -0.966123, 0.246244,
		33.802414, 37.669991, 52.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208160, 38.151798, 52.031040>,  <33.856499, 38.346275, 52.030449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208160, 38.151798, 52.031040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368248, 37.888504, 52.286087>,  <33.464298, 37.730530, 52.439114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368248, 37.888504, 52.286087>,  <33.208160, 38.151798, 52.031040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368248, 37.888504, 52.286087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415540, 0.489784, 0.766445,
		-0.816794, -0.571700, -0.077503,
		0.400217, -0.658233, 0.637617,
		33.488312, 37.691032, 52.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790958, 37.660614, 52.355747>,  <33.208160, 38.151798, 52.031040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790958, 37.660614, 52.355747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103844, 37.794319, 52.566044>,  <33.291576, 37.874542, 52.692223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103844, 37.794319, 52.566044>,  <32.790958, 37.660614, 52.355747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103844, 37.794319, 52.566044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622494, 0.453597, 0.637771,
		-0.025296, -0.826148, 0.562885,
		0.782216, 0.334260, 0.525746,
		33.338509, 37.894596, 52.723766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643936, 37.517284, 52.991627>,  <32.790958, 37.660614, 52.355747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643936, 37.517284, 52.991627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871410, 37.844990, 52.962215>,  <33.007896, 38.041615, 52.944569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871410, 37.844990, 52.962215>,  <32.643936, 37.517284, 52.991627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871410, 37.844990, 52.962215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756370, 0.555963, 0.344687,
		0.323266, -0.140408, 0.935834,
		0.568686, 0.819263, -0.073523,
		33.042015, 38.090767, 52.940159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389599, 37.232044, 53.732292>,  <32.643936, 37.517284, 52.991627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389599, 37.232044, 53.732292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591251, 36.948975, 53.534283>,  <32.712242, 36.779133, 53.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591251, 36.948975, 53.534283>,  <32.389599, 37.232044, 53.732292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591251, 36.948975, 53.534283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672219, 0.681397, -0.289516,
		0.542193, -0.186813, 0.819224,
		0.504132, -0.707671, -0.495028,
		32.742493, 36.736671, 53.385773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144199, 37.072628, 53.898815>,  <32.389599, 37.232044, 53.732292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144199, 37.072628, 53.898815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098370, 36.985035, 53.511223>,  <33.070873, 36.932480, 53.278667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098370, 36.985035, 53.511223>,  <33.144199, 37.072628, 53.898815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098370, 36.985035, 53.511223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681005, 0.692834, -0.237094,
		0.723261, -0.687043, 0.069748,
		-0.114570, -0.218980, -0.968980,
		33.063999, 36.919342, 53.220528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779655, 37.237019, 53.553272>,  <33.144199, 37.072628, 53.898815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779655, 37.237019, 53.553272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505093, 37.272346, 53.264538>,  <33.340355, 37.293545, 53.091297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505093, 37.272346, 53.264538>,  <33.779655, 37.237019, 53.553272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505093, 37.272346, 53.264538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474422, 0.806669, -0.352434,
		0.551153, -0.584367, -0.595605,
		-0.686406, 0.088323, -0.721834,
		33.299171, 37.298843, 53.047989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446922, 36.965641, 53.445679>,  <33.779655, 37.237019, 53.553272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446922, 36.965641, 53.445679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655502, 37.302708, 53.392014>,  <34.780651, 37.504948, 53.359814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655502, 37.302708, 53.392014>,  <34.446922, 36.965641, 53.445679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655502, 37.302708, 53.392014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849921, -0.498998, 0.169220,
		0.075652, -0.202265, -0.976405,
		0.521451, 0.842668, -0.134159,
		34.811939, 37.555508, 53.351765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539787, 36.302216, 53.808472>,  <34.446922, 36.965641, 53.445679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539787, 36.302216, 53.808472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588478, 36.007626, 54.074638>,  <34.617695, 35.830872, 54.234341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588478, 36.007626, 54.074638>,  <34.539787, 36.302216, 53.808472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588478, 36.007626, 54.074638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094298, -0.675954, -0.730886,
		0.988074, 0.026223, -0.151732,
		0.121730, -0.736477, 0.665420,
		34.624996, 35.786682, 54.274265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202049, 35.749531, 53.707104>,  <34.539787, 36.302216, 53.808472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202049, 35.749531, 53.707104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875031, 35.598827, 53.881310>,  <34.678818, 35.508408, 53.985832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875031, 35.598827, 53.881310>,  <35.202049, 35.749531, 53.707104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875031, 35.598827, 53.881310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002893, -0.753587, -0.657342,
		0.575857, -0.538667, 0.615001,
		-0.817545, -0.376756, 0.435516,
		34.629768, 35.485802, 54.011963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255737, 35.046268, 53.808563>,  <35.202049, 35.749531, 53.707104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255737, 35.046268, 53.808563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873260, 35.149097, 53.752541>,  <34.643776, 35.210796, 53.718925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873260, 35.149097, 53.752541>,  <35.255737, 35.046268, 53.808563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873260, 35.149097, 53.752541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091477, -0.716841, -0.691210,
		-0.278092, -0.648115, 0.708951,
		-0.956188, 0.257073, -0.140060,
		34.586403, 35.226219, 53.710522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875717, 34.387138, 53.760307>,  <35.255737, 35.046268, 53.808563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875717, 34.387138, 53.760307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627274, 34.638382, 53.572823>,  <34.478207, 34.789127, 53.460331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627274, 34.638382, 53.572823>,  <34.875717, 34.387138, 53.760307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627274, 34.638382, 53.572823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199980, -0.705285, -0.680133,
		-0.757782, -0.328702, 0.563668,
		-0.621107, 0.628115, -0.468719,
		34.440941, 34.826817, 53.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285404, 33.982563, 53.594742>,  <34.875717, 34.387138, 53.760307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285404, 33.982563, 53.594742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278286, 34.291489, 53.340748>,  <34.274014, 34.476845, 53.188351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278286, 34.291489, 53.340748>,  <34.285404, 33.982563, 53.594742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278286, 34.291489, 53.340748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255093, -0.617579, -0.743992,
		-0.966753, 0.148741, 0.208004,
		-0.017797, 0.772316, -0.634988,
		34.272945, 34.523182, 53.150249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718082, 33.805721, 53.225906>,  <34.285404, 33.982563, 53.594742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718082, 33.805721, 53.225906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910267, 34.073124, 52.998837>,  <34.025578, 34.233566, 52.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910267, 34.073124, 52.998837>,  <33.718082, 33.805721, 53.225906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910267, 34.073124, 52.998837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305655, -0.479054, -0.822850,
		-0.822029, 0.568860, -0.025834,
		0.480462, 0.668510, -0.567671,
		34.054405, 34.273678, 52.828537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234402, 33.964397, 52.628925>,  <33.718082, 33.805721, 53.225906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234402, 33.964397, 52.628925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603542, 34.074841, 52.521511>,  <33.825027, 34.141106, 52.457062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603542, 34.074841, 52.521511>,  <33.234402, 33.964397, 52.628925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603542, 34.074841, 52.521511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125352, -0.443927, -0.887252,
		-0.364189, 0.852462, -0.375067,
		0.922850, 0.276112, -0.268531,
		33.880398, 34.157673, 52.440952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128334, 34.267464, 51.930000>,  <33.234402, 33.964397, 52.628925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128334, 34.267464, 51.930000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519863, 34.186520, 51.942421>,  <33.754780, 34.137955, 51.949871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519863, 34.186520, 51.942421>,  <33.128334, 34.267464, 51.930000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519863, 34.186520, 51.942421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046177, -0.365974, -0.929479,
		0.199450, 0.908358, -0.367567,
		0.978819, -0.202358, 0.031048,
		33.813507, 34.125813, 51.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440582, 34.539509, 51.286911>,  <33.128334, 34.267464, 51.930000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440582, 34.539509, 51.286911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681259, 34.248959, 51.419785>,  <33.825665, 34.074627, 51.499508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681259, 34.248959, 51.419785>,  <33.440582, 34.539509, 51.286911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681259, 34.248959, 51.419785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241405, -0.231057, -0.942516,
		0.761376, 0.647292, 0.036326,
		0.601689, -0.726379, 0.332181,
		33.861767, 34.031044, 51.519440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149437, 34.702007, 51.006474>,  <33.440582, 34.539509, 51.286911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149437, 34.702007, 51.006474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139442, 34.316761, 51.113651>,  <34.133446, 34.085613, 51.177956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139442, 34.316761, 51.113651>,  <34.149437, 34.702007, 51.006474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139442, 34.316761, 51.113651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321392, -0.261534, -0.910114,
		0.946616, 0.063372, 0.316072,
		-0.024988, -0.963111, 0.267940,
		34.131947, 34.027828, 51.194035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656929, 34.421597, 50.565849>,  <34.149437, 34.702007, 51.006474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656929, 34.421597, 50.565849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474998, 34.095268, 50.708714>,  <34.365841, 33.899471, 50.794430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474998, 34.095268, 50.708714>,  <34.656929, 34.421597, 50.565849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474998, 34.095268, 50.708714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064008, -0.429948, -0.900582,
		0.888276, -0.386749, 0.247772,
		-0.454828, -0.815825, 0.357157,
		34.338551, 33.850521, 50.815861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048393, 33.895779, 50.362747>,  <34.656929, 34.421597, 50.565849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048393, 33.895779, 50.362747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681652, 33.755798, 50.439602>,  <34.461609, 33.671810, 50.485714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681652, 33.755798, 50.439602>,  <35.048393, 33.895779, 50.362747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681652, 33.755798, 50.439602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021889, -0.524615, -0.851058,
		0.398630, -0.776088, 0.488653,
		-0.916850, -0.349953, 0.192140,
		34.406597, 33.650814, 50.497242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063225, 33.227970, 50.159599>,  <35.048393, 33.895779, 50.362747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063225, 33.227970, 50.159599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674450, 33.322048, 50.161663>,  <34.441185, 33.378494, 50.162899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674450, 33.322048, 50.161663>,  <35.063225, 33.227970, 50.159599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674450, 33.322048, 50.161663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146139, -0.586440, -0.796700,
		-0.184357, -0.775094, 0.604353,
		-0.971934, 0.235197, 0.005157,
		34.382870, 33.392609, 50.163212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838505, 32.661724, 49.803337>,  <35.063225, 33.227970, 50.159599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838505, 32.661724, 49.803337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541752, 32.927952, 49.770763>,  <34.363701, 33.087688, 49.751221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541752, 32.927952, 49.770763>,  <34.838505, 32.661724, 49.803337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541752, 32.927952, 49.770763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012219, -0.134843, -0.990792,
		-0.670420, -0.734054, 0.108170,
		-0.741881, 0.665568, -0.081433,
		34.319187, 33.127621, 49.746334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207157, 32.320305, 49.661266>,  <34.838505, 32.661724, 49.803337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207157, 32.320305, 49.661266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178711, 32.703419, 49.549847>,  <34.161644, 32.933289, 49.482994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178711, 32.703419, 49.549847>,  <34.207157, 32.320305, 49.661266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178711, 32.703419, 49.549847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156571, -0.286517, -0.945195,
		-0.985103, -0.023609, 0.170339,
		-0.071120, 0.957784, -0.278552,
		34.157375, 32.990753, 49.466282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803249, 32.284081, 49.169846>,  <34.207157, 32.320305, 49.661266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803249, 32.284081, 49.169846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975296, 32.635891, 49.088436>,  <34.078526, 32.846977, 49.039589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975296, 32.635891, 49.088436>,  <33.803249, 32.284081, 49.169846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975296, 32.635891, 49.088436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131314, -0.162094, -0.977999,
		-0.893170, 0.447383, 0.045775,
		0.430120, 0.879531, -0.203525,
		34.104332, 32.899750, 49.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289856, 32.650345, 48.833847>,  <33.803249, 32.284081, 49.169846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289856, 32.650345, 48.833847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643951, 32.811749, 48.741295>,  <33.856407, 32.908592, 48.685764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643951, 32.811749, 48.741295>,  <33.289856, 32.650345, 48.833847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643951, 32.811749, 48.741295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224658, -0.064657, -0.972290,
		-0.407289, 0.912688, 0.033415,
		0.885237, 0.403510, -0.231377,
		33.909523, 32.932800, 48.671883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182941, 33.223877, 48.382496>,  <33.289856, 32.650345, 48.833847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182941, 33.223877, 48.382496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577061, 33.176922, 48.332851>,  <33.813534, 33.148746, 48.303066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577061, 33.176922, 48.332851>,  <33.182941, 33.223877, 48.382496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577061, 33.176922, 48.332851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123313, 0.014043, -0.992268,
		0.118226, 0.992986, -0.000639,
		0.985300, -0.117391, -0.124108,
		33.872650, 33.141705, 48.295620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228107, 33.662006, 47.728382>,  <33.182941, 33.223877, 48.382496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228107, 33.662006, 47.728382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515171, 33.392292, 47.798008>,  <33.687408, 33.230461, 47.839783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515171, 33.392292, 47.798008>,  <33.228107, 33.662006, 47.728382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515171, 33.392292, 47.798008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069259, -0.317821, -0.945618,
		0.692940, 0.666577, -0.274788,
		0.717661, -0.674288, 0.174065,
		33.730469, 33.190006, 47.850227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711514, 33.617470, 47.089977>,  <33.228107, 33.662006, 47.728382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711514, 33.617470, 47.089977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797401, 33.285248, 47.295532>,  <33.848934, 33.085915, 47.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797401, 33.285248, 47.295532>,  <33.711514, 33.617470, 47.089977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797401, 33.285248, 47.295532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155649, -0.548535, -0.821512,
		0.964193, 0.096412, -0.247057,
		0.214723, -0.830550, 0.513887,
		33.861816, 33.036083, 47.449699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189442, 33.382133, 46.665592>,  <33.711514, 33.617470, 47.089977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189442, 33.382133, 46.665592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081467, 33.073528, 46.896034>,  <34.016682, 32.888363, 47.034298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081467, 33.073528, 46.896034>,  <34.189442, 33.382133, 46.665592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081467, 33.073528, 46.896034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087576, -0.615509, -0.783249,
		0.958886, -0.160977, 0.233716,
		-0.269940, -0.771515, 0.576105,
		34.000484, 32.842075, 47.068867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682003, 32.825253, 46.512352>,  <34.189442, 33.382133, 46.665592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682003, 32.825253, 46.512352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343800, 32.687756, 46.675797>,  <34.140877, 32.605259, 46.773861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343800, 32.687756, 46.675797>,  <34.682003, 32.825253, 46.512352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343800, 32.687756, 46.675797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108836, -0.638229, -0.762115,
		0.522753, -0.688845, 0.502216,
		-0.845508, -0.343739, 0.408608,
		34.090149, 32.584633, 46.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761234, 32.098202, 46.475018>,  <34.682003, 32.825253, 46.512352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761234, 32.098202, 46.475018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372768, 32.189636, 46.502110>,  <34.139690, 32.244499, 46.518364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372768, 32.189636, 46.502110>,  <34.761234, 32.098202, 46.475018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372768, 32.189636, 46.502110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184779, -0.542144, -0.819717,
		-0.150656, -0.808596, 0.568749,
		-0.971164, 0.228588, 0.067735,
		34.081421, 32.258213, 46.522430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419270, 31.503183, 46.264286>,  <34.761234, 32.098202, 46.475018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419270, 31.503183, 46.264286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150372, 31.794771, 46.212620>,  <33.989033, 31.969725, 46.181622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150372, 31.794771, 46.212620>,  <34.419270, 31.503183, 46.264286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150372, 31.794771, 46.212620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251552, -0.389008, -0.886225,
		-0.696280, -0.563269, 0.444883,
		-0.672246, 0.728972, -0.129167,
		33.948696, 32.013462, 46.173870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850983, 31.132376, 45.948875>,  <34.419270, 31.503183, 46.264286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850983, 31.132376, 45.948875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771969, 31.517437, 45.874813>,  <33.724560, 31.748474, 45.830376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771969, 31.517437, 45.874813>,  <33.850983, 31.132376, 45.948875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771969, 31.517437, 45.874813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441175, -0.255965, -0.860144,
		-0.875412, -0.088219, 0.475259,
		-0.197530, 0.962653, -0.185155,
		33.712711, 31.806232, 45.819267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275112, 31.096684, 45.631390>,  <33.850983, 31.132376, 45.948875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275112, 31.096684, 45.631390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407589, 31.461020, 45.532856>,  <33.487076, 31.679621, 45.473736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407589, 31.461020, 45.532856>,  <33.275112, 31.096684, 45.631390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407589, 31.461020, 45.532856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311547, -0.140871, -0.939731,
		-0.890647, 0.387975, 0.237115,
		0.331189, 0.910841, -0.246338,
		33.506947, 31.734272, 45.458954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722229, 31.376436, 45.268501>,  <33.275112, 31.096684, 45.631390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722229, 31.376436, 45.268501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050812, 31.573923, 45.154339>,  <33.247959, 31.692415, 45.085842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050812, 31.573923, 45.154339>,  <32.722229, 31.376436, 45.268501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050812, 31.573923, 45.154339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314757, -0.024805, -0.948848,
		-0.475543, 0.869268, 0.135025,
		0.821454, 0.493718, -0.285404,
		33.297249, 31.722038, 45.068718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423256, 31.988644, 44.943249>,  <32.722229, 31.376436, 45.268501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423256, 31.988644, 44.943249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793140, 31.918827, 44.807934>,  <33.015072, 31.876936, 44.726746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793140, 31.918827, 44.807934>,  <32.423256, 31.988644, 44.943249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793140, 31.918827, 44.807934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348119, -0.028230, -0.937025,
		0.154001, 0.984245, -0.086867,
		0.924715, -0.174543, -0.338286,
		33.070557, 31.866465, 44.706448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408146, 32.326324, 44.274796>,  <32.423256, 31.988644, 44.943249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408146, 32.326324, 44.274796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738808, 32.101578, 44.262447>,  <32.937202, 31.966730, 44.255039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738808, 32.101578, 44.262447>,  <32.408146, 32.326324, 44.274796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738808, 32.101578, 44.262447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049151, -0.017450, -0.998639,
		0.560565, 0.827043, -0.042042,
		0.826651, -0.561868, -0.030869,
		32.986801, 31.933018, 44.253185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851048, 32.733398, 43.965431>,  <32.408146, 32.326324, 44.274796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851048, 32.733398, 43.965431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946838, 32.348225, 43.915787>,  <33.004311, 32.117119, 43.885998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946838, 32.348225, 43.915787>,  <32.851048, 32.733398, 43.965431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946838, 32.348225, 43.915787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142182, 0.091674, -0.985586,
		0.960435, 0.253669, -0.114959,
		0.239474, -0.962937, -0.124114,
		33.018681, 32.059345, 43.878551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228222, 32.772827, 43.474560>,  <32.851048, 32.733398, 43.965431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228222, 32.772827, 43.474560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141182, 32.382866, 43.455738>,  <33.088959, 32.148888, 43.444447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141182, 32.382866, 43.455738>,  <33.228222, 32.772827, 43.474560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141182, 32.382866, 43.455738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078752, 0.030516, -0.996427,
		0.972856, -0.220529, 0.070135,
		-0.217601, -0.974903, -0.047055,
		33.075901, 32.090397, 43.441620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657383, 32.455608, 42.957317>,  <33.228222, 32.772827, 43.474560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657383, 32.455608, 42.957317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349670, 32.203476, 42.999046>,  <33.165043, 32.052197, 43.024086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349670, 32.203476, 42.999046>,  <33.657383, 32.455608, 42.957317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349670, 32.203476, 42.999046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001171, -0.161895, -0.986807,
		0.638909, -0.759254, 0.123805,
		-0.769281, -0.630335, 0.104326,
		33.118885, 32.014374, 43.030346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696358, 32.040634, 42.393517>,  <33.657383, 32.455608, 42.957317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696358, 32.040634, 42.393517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336224, 31.927298, 42.525650>,  <33.120144, 31.859297, 42.604931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336224, 31.927298, 42.525650>,  <33.696358, 32.040634, 42.393517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336224, 31.927298, 42.525650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274419, -0.219506, -0.936222,
		0.337779, -0.933561, 0.119874,
		-0.900333, -0.283340, 0.330331,
		33.066124, 31.842295, 42.624748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663319, 31.434219, 42.168728>,  <33.696358, 32.040634, 42.393517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663319, 31.434219, 42.168728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304688, 31.604792, 42.216564>,  <33.089508, 31.707134, 42.245266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304688, 31.604792, 42.216564>,  <33.663319, 31.434219, 42.168728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304688, 31.604792, 42.216564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254010, -0.273919, -0.927603,
		-0.362802, -0.862046, 0.353908,
		-0.896579, 0.426433, 0.119591,
		33.035713, 31.732721, 42.252441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233955, 31.007048, 41.796700>,  <33.663319, 31.434219, 42.168728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233955, 31.007048, 41.796700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038574, 31.353531, 41.838833>,  <32.921345, 31.561420, 41.864113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038574, 31.353531, 41.838833>,  <33.233955, 31.007048, 41.796700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038574, 31.353531, 41.838833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318565, -0.064639, -0.945695,
		-0.812359, -0.495486, 0.307516,
		-0.488456, 0.866207, 0.105335,
		32.892036, 31.613394, 41.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496502, 30.933901, 41.483135>,  <33.233955, 31.007048, 41.796700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496502, 30.933901, 41.483135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554455, 31.329084, 41.504837>,  <32.589226, 31.566195, 41.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554455, 31.329084, 41.504837>,  <32.496502, 30.933901, 41.483135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554455, 31.329084, 41.504837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284182, 0.094067, -0.954144,
		-0.947760, 0.122821, 0.294390,
		0.144881, 0.987961, 0.054250,
		32.597919, 31.625473, 41.521111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837688, 31.284847, 41.191750>,  <32.496502, 30.933901, 41.483135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837688, 31.284847, 41.191750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123260, 31.563063, 41.159428>,  <32.294605, 31.729992, 41.140034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123260, 31.563063, 41.159428>,  <31.837688, 31.284847, 41.191750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123260, 31.563063, 41.159428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335218, 0.238179, -0.911537,
		-0.614760, 0.677864, 0.403200,
		0.713932, 0.695536, -0.080809,
		32.337440, 31.771723, 41.135185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499556, 31.848761, 40.944126>,  <31.837688, 31.284847, 41.191750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499556, 31.848761, 40.944126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885992, 31.917942, 40.867435>,  <32.117855, 31.959450, 40.821423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885992, 31.917942, 40.867435>,  <31.499556, 31.848761, 40.944126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885992, 31.917942, 40.867435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244800, 0.377375, -0.893119,
		-0.082115, 0.909767, 0.406917,
		0.966090, 0.172952, -0.191723,
		32.175819, 31.969828, 40.809917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512499, 32.506123, 40.793343>,  <31.499556, 31.848761, 40.944126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512499, 32.506123, 40.793343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854532, 32.370098, 40.636784>,  <32.059753, 32.288483, 40.542847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854532, 32.370098, 40.636784>,  <31.512499, 32.506123, 40.793343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854532, 32.370098, 40.636784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133554, 0.584948, -0.800000,
		0.500997, 0.736338, 0.454762,
		0.855082, -0.340062, -0.391398,
		32.111057, 32.268078, 40.519363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833193, 33.026932, 40.484344>,  <31.512499, 32.506123, 40.793343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833193, 33.026932, 40.484344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054905, 32.746101, 40.305519>,  <32.187931, 32.577602, 40.198223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054905, 32.746101, 40.305519>,  <31.833193, 33.026932, 40.484344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054905, 32.746101, 40.305519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137485, 0.452513, -0.881096,
		0.820897, 0.549837, 0.154293,
		0.554279, -0.702076, -0.447062,
		32.221188, 32.535477, 40.171402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406445, 33.336700, 40.056553>,  <31.833193, 33.026932, 40.484344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406445, 33.336700, 40.056553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300060, 32.978630, 39.913483>,  <32.236229, 32.763790, 39.827641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300060, 32.978630, 39.913483>,  <32.406445, 33.336700, 40.056553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300060, 32.978630, 39.913483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143744, 0.403719, -0.903520,
		0.953205, -0.188890, -0.236051,
		-0.265964, -0.895171, -0.357675,
		32.220272, 32.710079, 39.806179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776440, 33.315262, 39.425385>,  <32.406445, 33.336700, 40.056553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776440, 33.315262, 39.425385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473202, 33.055843, 39.397987>,  <32.291260, 32.900192, 39.381550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473202, 33.055843, 39.397987>,  <32.776440, 33.315262, 39.425385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473202, 33.055843, 39.397987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186062, 0.315746, -0.930422,
		0.625044, -0.692600, -0.360034,
		-0.758090, -0.648543, -0.068489,
		32.245773, 32.861282, 39.377441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890911, 32.898994, 38.778435>,  <32.776440, 33.315262, 39.425385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890911, 32.898994, 38.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506275, 32.915237, 38.887024>,  <32.275494, 32.924984, 38.952175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506275, 32.915237, 38.887024>,  <32.890911, 32.898994, 38.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506275, 32.915237, 38.887024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219563, 0.479730, -0.849501,
		-0.164731, -0.876476, -0.452387,
		-0.961590, 0.040612, 0.271468,
		32.217796, 32.927422, 38.968464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366253, 32.271439, 38.545490>,  <32.890911, 32.898994, 38.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366253, 32.271439, 38.545490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659103, 32.514805, 38.422970>,  <33.834812, 32.660824, 38.349457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659103, 32.514805, 38.422970>,  <33.366253, 32.271439, 38.545490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659103, 32.514805, 38.422970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491596, -0.160669, 0.855873,
		0.471514, -0.777184, -0.416725,
		0.732126, 0.608416, -0.306302,
		33.878742, 32.697330, 38.331078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812553, 32.142010, 39.052307>,  <33.366253, 32.271439, 38.545490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812553, 32.142010, 39.052307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047668, 32.406723, 38.866173>,  <34.188740, 32.565552, 38.754490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047668, 32.406723, 38.866173>,  <33.812553, 32.142010, 39.052307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047668, 32.406723, 38.866173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722078, -0.169761, 0.670660,
		0.364838, -0.730218, -0.577646,
		0.587790, 0.661788, -0.465339,
		34.224007, 32.605259, 38.726570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523495, 31.836744, 38.980778>,  <33.812553, 32.142010, 39.052307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523495, 31.836744, 38.980778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564495, 32.234325, 38.965000>,  <34.589096, 32.472874, 38.955532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564495, 32.234325, 38.965000>,  <34.523495, 31.836744, 38.980778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564495, 32.234325, 38.965000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801480, -0.059030, 0.595101,
		0.589173, -0.092613, -0.802682,
		0.102496, 0.993951, -0.039448,
		34.595245, 32.532509, 38.953167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226955, 32.037392, 38.868950>,  <34.523495, 31.836744, 38.980778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226955, 32.037392, 38.868950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062683, 32.364338, 39.030567>,  <34.964119, 32.560505, 39.127537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062683, 32.364338, 39.030567>,  <35.226955, 32.037392, 38.868950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062683, 32.364338, 39.030567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773787, 0.078049, 0.628619,
		0.482278, 0.570804, -0.664523,
		-0.410684, 0.817368, 0.404040,
		34.939480, 32.609547, 39.151779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821724, 32.426151, 39.143063>,  <35.226955, 32.037392, 38.868950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821724, 32.426151, 39.143063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511059, 32.579594, 39.342918>,  <35.324657, 32.671658, 39.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511059, 32.579594, 39.342918>,  <35.821724, 32.426151, 39.143063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511059, 32.579594, 39.342918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553372, 0.036558, 0.832131,
		0.300944, 0.922773, -0.240670,
		-0.776667, 0.383605, 0.499635,
		35.278057, 32.694675, 39.492809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046070, 33.086765, 39.520409>,  <35.821724, 32.426151, 39.143063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046070, 33.086765, 39.520409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721237, 32.966274, 39.720322>,  <35.526337, 32.893982, 39.840271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721237, 32.966274, 39.720322>,  <36.046070, 33.086765, 39.520409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721237, 32.966274, 39.720322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533983, -0.038197, 0.844632,
		-0.235334, 0.952788, 0.191868,
		-0.812084, -0.301225, 0.499783,
		35.477612, 32.875908, 39.870258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008133, 33.530670, 39.942249>,  <36.046070, 33.086765, 39.520409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008133, 33.530670, 39.942249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793209, 33.227921, 40.091084>,  <35.664257, 33.046272, 40.180386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793209, 33.227921, 40.091084>,  <36.008133, 33.530670, 39.942249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793209, 33.227921, 40.091084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369289, 0.185505, 0.910612,
		-0.758239, 0.626685, 0.179831,
		-0.537307, -0.756871, 0.372085,
		35.632015, 33.000858, 40.202709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816902, 33.738483, 40.561302>,  <36.008133, 33.530670, 39.942249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816902, 33.738483, 40.561302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768929, 33.341801, 40.579750>,  <35.740143, 33.103790, 40.590820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768929, 33.341801, 40.579750>,  <35.816902, 33.738483, 40.561302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768929, 33.341801, 40.579750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329015, 0.004128, 0.944316,
		-0.936677, 0.128433, 0.325792,
		-0.119936, -0.991710, 0.046123,
		35.732948, 33.044289, 40.593586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362469, 33.676762, 41.147953>,  <35.816902, 33.738483, 40.561302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362469, 33.676762, 41.147953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555302, 33.330338, 41.094994>,  <35.671001, 33.122482, 41.063217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555302, 33.330338, 41.094994>,  <35.362469, 33.676762, 41.147953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555302, 33.330338, 41.094994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199597, -0.038574, 0.979119,
		-0.853087, -0.498442, 0.154268,
		0.482083, -0.866064, -0.132395,
		35.699928, 33.070518, 41.055275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997307, 33.277485, 41.577278>,  <35.362469, 33.676762, 41.147953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997307, 33.277485, 41.577278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359589, 33.123539, 41.506195>,  <35.576958, 33.031174, 41.463543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359589, 33.123539, 41.506195>,  <34.997307, 33.277485, 41.577278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359589, 33.123539, 41.506195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247877, 0.140742, 0.958514,
		-0.343883, -0.912181, 0.222869,
		0.905705, -0.384861, -0.177710,
		35.631302, 33.008080, 41.452881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995712, 32.739769, 41.947613>,  <34.997307, 33.277485, 41.577278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995712, 32.739769, 41.947613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388664, 32.784679, 41.887859>,  <35.624435, 32.811626, 41.852009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388664, 32.784679, 41.887859>,  <34.995712, 32.739769, 41.947613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388664, 32.784679, 41.887859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157280, -0.065063, 0.985409,
		0.100919, -0.991545, -0.081575,
		0.982384, 0.112276, -0.149384,
		35.683380, 32.818363, 41.843044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378494, 32.246693, 42.390888>,  <34.995712, 32.739769, 41.947613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378494, 32.246693, 42.390888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668747, 32.507328, 42.302452>,  <35.842899, 32.663712, 42.249390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668747, 32.507328, 42.302452>,  <35.378494, 32.246693, 42.390888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668747, 32.507328, 42.302452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314359, -0.028110, 0.948888,
		0.612072, -0.758049, -0.225231,
		0.725635, 0.651591, -0.221094,
		35.886436, 32.702805, 42.236122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984234, 31.898745, 42.580833>,  <35.378494, 32.246693, 42.390888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984234, 31.898745, 42.580833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052986, 32.292728, 42.573795>,  <36.094238, 32.529118, 42.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052986, 32.292728, 42.573795>,  <35.984234, 31.898745, 42.580833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052986, 32.292728, 42.573795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415517, -0.056296, 0.907842,
		0.893197, -0.163352, -0.418944,
		0.171883, 0.984960, -0.017592,
		36.104549, 32.588215, 42.568516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611118, 31.880934, 42.911137>,  <35.984234, 31.898745, 42.580833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611118, 31.880934, 42.911137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463875, 32.252743, 42.919941>,  <36.375526, 32.475826, 42.925224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463875, 32.252743, 42.919941>,  <36.611118, 31.880934, 42.911137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463875, 32.252743, 42.919941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348774, 0.116099, 0.929988,
		0.861887, 0.350017, -0.366930,
		-0.368112, 0.929521, 0.022012,
		36.353439, 32.531597, 42.926544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058674, 32.168407, 43.396458>,  <36.611118, 31.880934, 42.911137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058674, 32.168407, 43.396458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761234, 32.433861, 43.363842>,  <36.582771, 32.593132, 43.344273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761234, 32.433861, 43.363842>,  <37.058674, 32.168407, 43.396458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761234, 32.433861, 43.363842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116715, 0.248917, 0.961466,
		0.658355, 0.705433, -0.262551,
		-0.743604, 0.663630, -0.081542,
		36.538155, 32.632950, 43.339378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367973, 32.717670, 43.578541>,  <37.058674, 32.168407, 43.396458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367973, 32.717670, 43.578541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973110, 32.747429, 43.635078>,  <36.736191, 32.765285, 43.668999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973110, 32.747429, 43.635078>,  <37.367973, 32.717670, 43.578541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973110, 32.747429, 43.635078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153210, 0.190892, 0.969581,
		0.045151, 0.978788, -0.199840,
		-0.987162, 0.074395, 0.141341,
		36.676960, 32.769749, 43.677483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308224, 33.294308, 43.982647>,  <37.367973, 32.717670, 43.578541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308224, 33.294308, 43.982647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982136, 33.072701, 44.050156>,  <36.786484, 32.939735, 44.090660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982136, 33.072701, 44.050156>,  <37.308224, 33.294308, 43.982647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982136, 33.072701, 44.050156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139760, 0.094606, 0.985656,
		-0.562036, 0.827113, 0.000304,
		-0.815220, -0.554016, 0.168769,
		36.737572, 32.906494, 44.100788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939690, 33.697071, 44.511833>,  <37.308224, 33.294308, 43.982647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939690, 33.697071, 44.511833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768219, 33.336254, 44.532097>,  <36.665337, 33.119766, 44.544254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768219, 33.336254, 44.532097>,  <36.939690, 33.697071, 44.511833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768219, 33.336254, 44.532097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153190, 0.127827, 0.979894,
		-0.890377, 0.412296, -0.192980,
		-0.428675, -0.902038, 0.050655,
		36.639618, 33.065643, 44.547295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409622, 33.836128, 45.030888>,  <36.939690, 33.697071, 44.511833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409622, 33.836128, 45.030888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443176, 33.438583, 45.002029>,  <36.463306, 33.200058, 44.984715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443176, 33.438583, 45.002029>,  <36.409622, 33.836128, 45.030888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443176, 33.438583, 45.002029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184123, -0.086616, 0.979079,
		-0.979317, -0.068842, -0.190258,
		0.083881, -0.993861, -0.072149,
		36.468342, 33.140427, 44.980385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839645, 33.459946, 45.264801>,  <36.409622, 33.836128, 45.030888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839645, 33.459946, 45.264801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132160, 33.189919, 45.303802>,  <36.307671, 33.027905, 45.327202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132160, 33.189919, 45.303802>,  <35.839645, 33.459946, 45.264801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132160, 33.189919, 45.303802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167264, -0.038902, 0.985144,
		-0.661243, -0.736732, -0.141363,
		0.731287, -0.675065, 0.097505,
		36.351547, 32.987400, 45.333054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611404, 32.959023, 45.700985>,  <35.839645, 33.459946, 45.264801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611404, 32.959023, 45.700985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008469, 32.918190, 45.726944>,  <36.246708, 32.893692, 45.742519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008469, 32.918190, 45.726944>,  <35.611404, 32.959023, 45.700985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008469, 32.918190, 45.726944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074683, -0.095153, 0.992657,
		-0.095153, -0.990215, -0.102078,
		-0.992657, 0.102078, -0.064898,
		36.306267, 32.887566, 45.746414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669079, 32.464157, 46.225349>,  <35.611404, 32.959023, 45.700985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669079, 32.464157, 46.225349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019627, 32.650494, 46.176395>,  <36.229954, 32.762295, 46.147022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019627, 32.650494, 46.176395>,  <35.669079, 32.464157, 46.225349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019627, 32.650494, 46.176395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067066, 0.133602, 0.988763,
		0.476956, -0.874725, 0.085842,
		0.876365, 0.465839, -0.122387,
		36.282536, 32.790245, 46.139679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030121, 32.262108, 46.763962>,  <35.669079, 32.464157, 46.225349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030121, 32.262108, 46.763962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236279, 32.583229, 46.644039>,  <36.359974, 32.775902, 46.572086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236279, 32.583229, 46.644039>,  <36.030121, 32.262108, 46.763962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236279, 32.583229, 46.644039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216553, 0.216483, 0.951966,
		0.829141, -0.555560, -0.062275,
		0.515393, 0.802800, -0.299803,
		36.390896, 32.824070, 46.554100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522919, 32.234024, 47.168091>,  <36.030121, 32.262108, 46.763962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522919, 32.234024, 47.168091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509136, 32.612709, 47.039997>,  <36.500866, 32.839920, 46.963139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509136, 32.612709, 47.039997>,  <36.522919, 32.234024, 47.168091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509136, 32.612709, 47.039997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347659, 0.311769, 0.884270,
		0.936988, -0.080867, -0.339874,
		-0.034454, 0.946710, -0.320238,
		36.498798, 32.896721, 46.943924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118595, 32.556763, 47.412006>,  <36.522919, 32.234024, 47.168091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118595, 32.556763, 47.412006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857449, 32.850788, 47.338856>,  <36.700760, 33.027203, 47.294968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857449, 32.850788, 47.338856>,  <37.118595, 32.556763, 47.412006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857449, 32.850788, 47.338856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192920, 0.394824, 0.898274,
		0.732493, 0.551174, -0.399577,
		-0.652867, 0.735066, -0.182873,
		36.661587, 33.071308, 47.283993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385990, 33.162853, 47.745773>,  <37.118595, 32.556763, 47.412006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385990, 33.162853, 47.745773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021065, 33.289921, 47.642414>,  <36.802109, 33.366161, 47.580399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021065, 33.289921, 47.642414>,  <37.385990, 33.162853, 47.745773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021065, 33.289921, 47.642414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003468, 0.625006, 0.780612,
		0.409477, 0.713059, -0.569100,
		-0.912314, 0.317669, -0.258399,
		36.747372, 33.385220, 47.564896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518261, 33.989399, 47.681519>,  <37.385990, 33.162853, 47.745773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518261, 33.989399, 47.681519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134266, 33.905781, 47.756054>,  <36.903870, 33.855610, 47.800774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134266, 33.905781, 47.756054>,  <37.518261, 33.989399, 47.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134266, 33.905781, 47.756054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045853, 0.539080, 0.841005,
		-0.276256, 0.815901, -0.507927,
		-0.959990, -0.209042, 0.186336,
		36.846268, 33.843067, 47.811954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134037, 34.566193, 47.776123>,  <37.518261, 33.989399, 47.681519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134037, 34.566193, 47.776123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922897, 34.295883, 47.981918>,  <36.796215, 34.133698, 48.105396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922897, 34.295883, 47.981918>,  <37.134037, 34.566193, 47.776123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922897, 34.295883, 47.981918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079180, 0.642269, 0.762378,
		-0.845640, 0.361682, -0.392529,
		-0.527848, -0.675778, 0.514491,
		36.764542, 34.093151, 48.136265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655277, 34.985153, 48.142033>,  <37.134037, 34.566193, 47.776123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655277, 34.985153, 48.142033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667255, 34.616524, 48.296852>,  <36.674442, 34.395348, 48.389744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667255, 34.616524, 48.296852>,  <36.655277, 34.985153, 48.142033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667255, 34.616524, 48.296852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114179, 0.381538, 0.917274,
		-0.993009, -0.071658, -0.093801,
		0.029941, -0.921571, 0.387053,
		36.676239, 34.340054, 48.412968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014839, 34.927597, 48.632729>,  <36.655277, 34.985153, 48.142033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014839, 34.927597, 48.632729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280136, 34.644924, 48.731297>,  <36.439312, 34.475323, 48.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280136, 34.644924, 48.731297>,  <36.014839, 34.927597, 48.632729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280136, 34.644924, 48.731297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058708, 0.279116, 0.958461,
		-0.746103, -0.650154, 0.143633,
		0.663238, -0.706678, 0.246419,
		36.479107, 34.432922, 48.805222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772717, 34.558525, 49.319099>,  <36.014839, 34.927597, 48.632729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772717, 34.558525, 49.319099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170773, 34.526890, 49.295639>,  <36.409607, 34.507908, 49.281563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170773, 34.526890, 49.295639>,  <35.772717, 34.558525, 49.319099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170773, 34.526890, 49.295639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077145, 0.256212, 0.963537,
		-0.061176, -0.963380, 0.261069,
		0.995141, -0.079085, -0.058646,
		36.469315, 34.503162, 49.278046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844997, 34.356762, 49.949924>,  <35.772717, 34.558525, 49.319099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844997, 34.356762, 49.949924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212063, 34.434525, 49.811306>,  <36.432304, 34.481182, 49.728134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212063, 34.434525, 49.811306>,  <35.844997, 34.356762, 49.949924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212063, 34.434525, 49.811306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240571, 0.422304, 0.873948,
		0.316249, -0.885362, 0.340765,
		0.917667, 0.194407, -0.346546,
		36.487362, 34.492847, 49.707340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215439, 34.008305, 50.394279>,  <35.844997, 34.356762, 49.949924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215439, 34.008305, 50.394279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459682, 34.278896, 50.229588>,  <36.606228, 34.441254, 50.130772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459682, 34.278896, 50.229588>,  <36.215439, 34.008305, 50.394279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459682, 34.278896, 50.229588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275363, 0.306102, 0.911305,
		0.742514, -0.669831, 0.000632,
		0.610614, 0.676483, -0.411731,
		36.642868, 34.481842, 50.106068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884579, 33.925018, 50.752544>,  <36.215439, 34.008305, 50.394279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884579, 33.925018, 50.752544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883202, 34.282024, 50.572140>,  <36.882378, 34.496227, 50.463898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883202, 34.282024, 50.572140>,  <36.884579, 33.925018, 50.752544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883202, 34.282024, 50.572140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242924, 0.438248, 0.865406,
		0.970039, -0.106583, -0.218320,
		-0.003440, 0.892513, -0.451009,
		36.882168, 34.549778, 50.436836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318859, 34.309868, 51.155540>,  <36.884579, 33.925018, 50.752544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318859, 34.309868, 51.155540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099140, 34.595795, 50.982426>,  <36.967308, 34.767349, 50.878555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099140, 34.595795, 50.982426>,  <37.318859, 34.309868, 51.155540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099140, 34.595795, 50.982426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092075, 0.462995, 0.881566,
		0.830538, 0.524092, -0.188506,
		-0.549299, 0.714817, -0.432790,
		36.934349, 34.810238, 50.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658409, 35.047924, 51.165806>,  <37.318859, 34.309868, 51.155540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658409, 35.047924, 51.165806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259155, 35.050579, 51.141502>,  <37.019604, 35.052174, 51.126919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259155, 35.050579, 51.141502>,  <37.658409, 35.047924, 51.165806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259155, 35.050579, 51.141502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051264, 0.450357, 0.891376,
		0.033281, 0.892824, -0.449174,
		-0.998130, 0.006640, -0.060758,
		36.959717, 35.052570, 51.123276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470894, 35.709312, 51.369022>,  <37.658409, 35.047924, 51.165806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470894, 35.709312, 51.369022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148129, 35.480705, 51.428696>,  <36.954468, 35.343540, 51.464500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148129, 35.480705, 51.428696>,  <37.470894, 35.709312, 51.369022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148129, 35.480705, 51.428696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090406, 0.369089, 0.924986,
		-0.583707, 0.732899, -0.349492,
		-0.806916, -0.571517, 0.149181,
		36.906055, 35.309250, 51.473450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075504, 36.167065, 51.454670>,  <37.470894, 35.709312, 51.369022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075504, 36.167065, 51.454670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146481, 36.555214, 51.520256>,  <38.189068, 36.788105, 51.559608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146481, 36.555214, 51.520256>,  <38.075504, 36.167065, 51.454670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146481, 36.555214, 51.520256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362594, 0.219348, -0.905766,
		-0.914899, 0.101269, 0.390774,
		0.177441, 0.970377, 0.163962,
		38.199715, 36.846329, 51.569447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429745, 36.595078, 51.339565>,  <38.075504, 36.167065, 51.454670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429745, 36.595078, 51.339565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755299, 36.826660, 51.319981>,  <37.950630, 36.965611, 51.308228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755299, 36.826660, 51.319981>,  <37.429745, 36.595078, 51.339565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755299, 36.826660, 51.319981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374773, 0.458710, -0.805686,
		-0.443994, 0.674090, 0.590315,
		0.813888, 0.578955, -0.048966,
		37.999466, 37.000347, 51.305290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236725, 37.251072, 51.188591>,  <37.429745, 36.595078, 51.339565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236725, 37.251072, 51.188591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620083, 37.223377, 51.077824>,  <37.850098, 37.206760, 51.011364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620083, 37.223377, 51.077824>,  <37.236725, 37.251072, 51.188591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620083, 37.223377, 51.077824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248002, 0.278329, -0.927916,
		0.141324, 0.957987, 0.249577,
		0.958396, -0.069241, -0.276917,
		37.907600, 37.202606, 50.994747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260563, 37.730789, 50.620312>,  <37.236725, 37.251072, 51.188591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260563, 37.730789, 50.620312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587582, 37.503716, 50.581627>,  <37.783794, 37.367474, 50.558418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587582, 37.503716, 50.581627>,  <37.260563, 37.730789, 50.620312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587582, 37.503716, 50.581627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053325, 0.092585, -0.994276,
		0.573384, 0.818026, 0.045421,
		0.817549, -0.567680, -0.096708,
		37.832848, 37.333412, 50.552616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727409, 38.068607, 50.109989>,  <37.260563, 37.730789, 50.620312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727409, 38.068607, 50.109989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800522, 37.675358, 50.113018>,  <37.844391, 37.439407, 50.114834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800522, 37.675358, 50.113018>,  <37.727409, 38.068607, 50.109989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800522, 37.675358, 50.113018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000816, -0.007855, -0.999969,
		0.983153, 0.182771, -0.002238,
		0.182783, -0.983124, 0.007574,
		37.855358, 37.380421, 50.115292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136963, 37.963692, 49.593319>,  <37.727409, 38.068607, 50.109989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136963, 37.963692, 49.593319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000431, 37.593124, 49.656860>,  <37.918510, 37.370785, 49.694984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000431, 37.593124, 49.656860>,  <38.136963, 37.963692, 49.593319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000431, 37.593124, 49.656860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067488, -0.192725, -0.978929,
		0.937518, -0.323416, 0.128305,
		-0.341329, -0.926423, 0.158857,
		37.898033, 37.315197, 49.704517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560852, 37.639900, 49.209503>,  <38.136963, 37.963692, 49.593319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560852, 37.639900, 49.209503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240395, 37.409210, 49.273449>,  <38.048119, 37.270794, 49.311817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240395, 37.409210, 49.273449>,  <38.560852, 37.639900, 49.209503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240395, 37.409210, 49.273449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075242, -0.167943, -0.982921,
		0.593726, -0.799488, 0.091152,
		-0.801142, -0.576727, 0.159867,
		38.000053, 37.236191, 49.321407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714890, 37.053406, 48.861633>,  <38.560852, 37.639900, 49.209503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714890, 37.053406, 48.861633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320560, 37.002296, 48.905136>,  <38.083961, 36.971630, 48.931236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320560, 37.002296, 48.905136>,  <38.714890, 37.053406, 48.861633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320560, 37.002296, 48.905136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046305, -0.415831, -0.908262,
		0.161278, -0.900421, 0.404019,
		-0.985822, -0.127775, 0.108758,
		38.024815, 36.963963, 48.937763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651398, 36.432671, 48.523224>,  <38.714890, 37.053406, 48.861633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651398, 36.432671, 48.523224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282413, 36.586617, 48.535492>,  <38.061024, 36.678982, 48.542854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282413, 36.586617, 48.535492>,  <38.651398, 36.432671, 48.523224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282413, 36.586617, 48.535492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158832, -0.305891, -0.938724,
		-0.351905, -0.870808, 0.343302,
		-0.922461, 0.384869, 0.030668,
		38.005672, 36.702076, 48.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185715, 36.010231, 48.329903>,  <38.651398, 36.432671, 48.523224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185715, 36.010231, 48.329903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997726, 36.352211, 48.242092>,  <37.884933, 36.557400, 48.189407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997726, 36.352211, 48.242092>,  <38.185715, 36.010231, 48.329903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997726, 36.352211, 48.242092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192337, -0.341912, -0.919839,
		-0.861473, -0.390073, 0.325127,
		-0.469969, 0.854950, -0.219522,
		37.856735, 36.608696, 48.176235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583248, 35.749660, 47.907154>,  <38.185715, 36.010231, 48.329903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583248, 35.749660, 47.907154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579185, 36.144405, 47.842651>,  <37.576748, 36.381252, 47.803951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579185, 36.144405, 47.842651>,  <37.583248, 35.749660, 47.907154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579185, 36.144405, 47.842651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048300, -0.160589, -0.985839,
		-0.998781, -0.017797, -0.046035,
		-0.010153, 0.986861, -0.161253,
		37.576141, 36.440464, 47.794277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187824, 35.886440, 47.260239>,  <37.583248, 35.749660, 47.907154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187824, 35.886440, 47.260239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400269, 36.223534, 47.295399>,  <37.527737, 36.425789, 47.316494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400269, 36.223534, 47.295399>,  <37.187824, 35.886440, 47.260239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400269, 36.223534, 47.295399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096087, 0.043165, -0.994437,
		-0.841835, 0.536605, -0.058050,
		0.531114, 0.842729, 0.087899,
		37.559601, 36.476353, 47.321770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863644, 36.447269, 46.920506>,  <37.187824, 35.886440, 47.260239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863644, 36.447269, 46.920506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249718, 36.551788, 46.925289>,  <37.481361, 36.614498, 46.928158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249718, 36.551788, 46.925289>,  <36.863644, 36.447269, 46.920506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249718, 36.551788, 46.925289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054118, -0.154762, -0.986468,
		-0.255910, 0.952771, -0.163515,
		0.965185, 0.261296, 0.011957,
		37.539272, 36.630177, 46.928875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990799, 36.968781, 46.439304>,  <36.863644, 36.447269, 46.920506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990799, 36.968781, 46.439304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346786, 36.798183, 46.503872>,  <37.560379, 36.695827, 46.542610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346786, 36.798183, 46.503872>,  <36.990799, 36.968781, 46.439304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346786, 36.798183, 46.503872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135199, -0.091276, -0.986605,
		0.435511, 0.899874, -0.023572,
		0.889972, -0.426491, 0.161414,
		37.613777, 36.670235, 46.552296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437881, 37.303776, 46.009201>,  <36.990799, 36.968781, 46.439304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437881, 37.303776, 46.009201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658485, 36.983524, 46.102867>,  <37.790848, 36.791374, 46.159065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658485, 36.983524, 46.102867>,  <37.437881, 37.303776, 46.009201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658485, 36.983524, 46.102867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145425, -0.184133, -0.972084,
		0.821394, 0.570167, 0.014880,
		0.551510, -0.800628, 0.234163,
		37.823940, 36.743336, 46.173115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032715, 37.437988, 45.682678>,  <37.437881, 37.303776, 46.009201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032715, 37.437988, 45.682678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013706, 37.044155, 45.750008>,  <38.002300, 36.807854, 45.790405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013706, 37.044155, 45.750008>,  <38.032715, 37.437988, 45.682678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013706, 37.044155, 45.750008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101633, -0.172405, -0.979769,
		0.993686, -0.029454, 0.108259,
		-0.047522, -0.984586, 0.168323,
		37.999451, 36.748779, 45.800503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648472, 37.045673, 45.288345>,  <38.032715, 37.437988, 45.682678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648472, 37.045673, 45.288345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352764, 36.785549, 45.358303>,  <38.175339, 36.629475, 45.400276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352764, 36.785549, 45.358303>,  <38.648472, 37.045673, 45.288345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352764, 36.785549, 45.358303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064115, -0.326503, -0.943019,
		0.670355, -0.685928, 0.283067,
		-0.739265, -0.650307, 0.174894,
		38.130985, 36.590458, 45.410770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856094, 36.502525, 44.876358>,  <38.648472, 37.045673, 45.288345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856094, 36.502525, 44.876358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479256, 36.398308, 44.960812>,  <38.253155, 36.335777, 45.011482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479256, 36.398308, 44.960812>,  <38.856094, 36.502525, 44.876358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479256, 36.398308, 44.960812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077767, -0.442693, -0.893294,
		0.326207, -0.857986, 0.396797,
		-0.942094, -0.260541, 0.211132,
		38.196629, 36.320145, 45.024151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809280, 35.734306, 44.850826>,  <38.856094, 36.502525, 44.876358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809280, 35.734306, 44.850826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445564, 35.889156, 44.789749>,  <38.227333, 35.982067, 44.753101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445564, 35.889156, 44.789749>,  <38.809280, 35.734306, 44.850826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445564, 35.889156, 44.789749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102819, -0.564529, -0.818985,
		-0.403252, -0.728998, 0.553127,
		-0.909294, 0.387129, -0.152692,
		38.172775, 36.005295, 44.743942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266521, 35.213165, 44.979519>,  <38.809280, 35.734306, 44.850826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266521, 35.213165, 44.979519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135544, 35.502300, 44.736115>,  <38.056957, 35.675781, 44.590073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135544, 35.502300, 44.736115>,  <38.266521, 35.213165, 44.979519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135544, 35.502300, 44.736115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167046, -0.678155, -0.715682,
		-0.929987, -0.132697, 0.342806,
		-0.327445, 0.722839, -0.608509,
		38.037312, 35.719151, 44.553562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843044, 34.830990, 44.454922>,  <38.266521, 35.213165, 44.979519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843044, 34.830990, 44.454922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831795, 35.200932, 44.303207>,  <37.825047, 35.422897, 44.212181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831795, 35.200932, 44.303207>,  <37.843044, 34.830990, 44.454922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831795, 35.200932, 44.303207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200002, -0.376967, -0.904375,
		-0.979392, 0.050426, 0.195573,
		-0.028121, 0.924853, -0.379284,
		37.823357, 35.478386, 44.189423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267746, 34.827812, 44.167843>,  <37.843044, 34.830990, 44.454922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267746, 34.827812, 44.167843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493980, 35.106915, 43.992004>,  <37.629723, 35.274376, 43.886501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493980, 35.106915, 43.992004>,  <37.267746, 34.827812, 44.167843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493980, 35.106915, 43.992004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142566, -0.442299, -0.885464,
		-0.812270, 0.563482, -0.150684,
		0.565590, 0.697753, -0.439600,
		37.663658, 35.316242, 43.860123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900307, 35.150356, 43.639584>,  <37.267746, 34.827812, 44.167843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900307, 35.150356, 43.639584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289303, 35.175915, 43.549980>,  <37.522701, 35.191250, 43.496216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289303, 35.175915, 43.549980>,  <36.900307, 35.150356, 43.639584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289303, 35.175915, 43.549980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162817, -0.501302, -0.849816,
		-0.166600, 0.862909, -0.477107,
		0.972489, 0.063899, -0.224013,
		37.581051, 35.195084, 43.482777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880909, 35.424004, 43.001942>,  <36.900307, 35.150356, 43.639584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880909, 35.424004, 43.001942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257084, 35.289642, 43.022934>,  <37.482788, 35.209026, 43.035530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257084, 35.289642, 43.022934>,  <36.880909, 35.424004, 43.001942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257084, 35.289642, 43.022934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001293, -0.150838, -0.988558,
		0.339975, 0.929741, -0.141419,
		0.940434, -0.335902, 0.052483,
		37.539215, 35.188873, 43.038677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089024, 35.677158, 42.350327>,  <36.880909, 35.424004, 43.001942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089024, 35.677158, 42.350327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359573, 35.424820, 42.502403>,  <37.521904, 35.273415, 42.593647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359573, 35.424820, 42.502403>,  <37.089024, 35.677158, 42.350327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359573, 35.424820, 42.502403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243231, -0.295909, -0.923730,
		0.695235, 0.717263, -0.046704,
		0.676378, -0.630849, 0.380187,
		37.562485, 35.235565, 42.616459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756981, 35.731297, 41.950878>,  <37.089024, 35.677158, 42.350327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756981, 35.731297, 41.950878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757275, 35.374130, 42.130970>,  <37.757450, 35.159832, 42.239025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757275, 35.374130, 42.130970>,  <37.756981, 35.731297, 41.950878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757275, 35.374130, 42.130970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252374, -0.435492, -0.864091,
		0.967630, 0.114263, 0.225026,
		0.000737, -0.892911, 0.450232,
		37.757496, 35.106258, 42.266041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267075, 35.432594, 41.687927>,  <37.756981, 35.731297, 41.950878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267075, 35.432594, 41.687927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070404, 35.109966, 41.819199>,  <37.952400, 34.916389, 41.897961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070404, 35.109966, 41.819199>,  <38.267075, 35.432594, 41.687927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070404, 35.109966, 41.819199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259859, -0.495616, -0.828757,
		0.831101, -0.322199, 0.453276,
		-0.491676, -0.806569, 0.328180,
		37.922901, 34.867996, 41.917652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678200, 34.841160, 41.563187>,  <38.267075, 35.432594, 41.687927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678200, 34.841160, 41.563187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311710, 34.686928, 41.606750>,  <38.091816, 34.594387, 41.632889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311710, 34.686928, 41.606750>,  <38.678200, 34.841160, 41.563187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311710, 34.686928, 41.606750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123687, -0.530732, -0.838466,
		0.381097, -0.754752, 0.533961,
		-0.916224, -0.385581, 0.108907,
		38.036842, 34.571255, 41.639423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776955, 34.139275, 41.494480>,  <38.678200, 34.841160, 41.563187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776955, 34.139275, 41.494480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392757, 34.215919, 41.413742>,  <38.162239, 34.261906, 41.365299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392757, 34.215919, 41.413742>,  <38.776955, 34.139275, 41.494480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392757, 34.215919, 41.413742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082859, -0.495499, -0.864647,
		-0.265691, -0.847211, 0.460046,
		-0.960491, 0.191610, -0.201849,
		38.104610, 34.273403, 41.353188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541218, 33.524250, 41.353401>,  <38.776955, 34.139275, 41.494480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541218, 33.524250, 41.353401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311596, 33.800171, 41.176937>,  <38.173820, 33.965725, 41.071056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311596, 33.800171, 41.176937>,  <38.541218, 33.524250, 41.353401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311596, 33.800171, 41.176937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055919, -0.504499, -0.861600,
		-0.816904, -0.519277, 0.251038,
		-0.574058, 0.689806, -0.441164,
		38.139378, 34.007111, 41.044586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119915, 33.194191, 40.908581>,  <38.541218, 33.524250, 41.353401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119915, 33.194191, 40.908581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083946, 33.560390, 40.751724>,  <38.062366, 33.780109, 40.657612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083946, 33.560390, 40.751724>,  <38.119915, 33.194191, 40.908581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083946, 33.560390, 40.751724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181439, -0.372086, -0.910292,
		-0.979282, -0.153004, -0.132649,
		-0.089922, 0.915501, -0.392138,
		38.056969, 33.835041, 40.634083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722809, 32.929516, 40.346748>,  <38.119915, 33.194191, 40.908581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722809, 32.929516, 40.346748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849823, 33.297665, 40.255447>,  <37.926029, 33.518555, 40.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849823, 33.297665, 40.255447>,  <37.722809, 32.929516, 40.346748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849823, 33.297665, 40.255447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040796, -0.227224, -0.972988,
		-0.947370, 0.318266, -0.034603,
		0.317531, 0.920368, -0.228249,
		37.945084, 33.573776, 40.186974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565559, 33.031158, 39.718105>,  <37.722809, 32.929516, 40.346748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565559, 33.031158, 39.718105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827034, 33.331421, 39.756493>,  <37.983917, 33.511578, 39.779526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827034, 33.331421, 39.756493>,  <37.565559, 33.031158, 39.718105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827034, 33.331421, 39.756493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208861, -0.057066, -0.976279,
		-0.727372, 0.658226, -0.194085,
		0.653688, 0.750655, 0.095969,
		38.023140, 33.556618, 39.785282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355839, 33.587067, 39.237835>,  <37.565559, 33.031158, 39.718105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355839, 33.587067, 39.237835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741680, 33.604649, 39.341839>,  <37.973186, 33.615196, 39.404240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741680, 33.604649, 39.341839>,  <37.355839, 33.587067, 39.237835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741680, 33.604649, 39.341839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262596, -0.070049, -0.962360,
		-0.024086, 0.996575, -0.079112,
		0.964605, 0.043954, 0.260009,
		38.031063, 33.617836, 39.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716972, 34.149807, 38.843002>,  <37.355839, 33.587067, 39.237835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716972, 34.149807, 38.843002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022461, 33.928497, 38.976036>,  <38.205753, 33.795712, 39.055859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022461, 33.928497, 38.976036>,  <37.716972, 34.149807, 38.843002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022461, 33.928497, 38.976036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448332, 0.083910, -0.889920,
		0.464460, 0.828764, 0.312133,
		0.763724, -0.553272, 0.332589,
		38.251579, 33.762516, 39.075813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298214, 34.579205, 38.741272>,  <37.716972, 34.149807, 38.843002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298214, 34.579205, 38.741272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390900, 34.190113, 38.745560>,  <38.446510, 33.956657, 38.748131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390900, 34.190113, 38.745560>,  <38.298214, 34.579205, 38.741272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390900, 34.190113, 38.745560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494356, 0.108254, -0.862493,
		0.837808, 0.205150, 0.505956,
		0.231712, -0.972725, 0.010721,
		38.460415, 33.898296, 38.748775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964916, 34.652184, 38.492603>,  <38.298214, 34.579205, 38.741272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964916, 34.652184, 38.492603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828121, 34.282921, 38.422375>,  <38.746044, 34.061363, 38.380238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828121, 34.282921, 38.422375>,  <38.964916, 34.652184, 38.492603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828121, 34.282921, 38.422375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551724, -0.046010, -0.832756,
		0.760687, -0.381659, 0.525063,
		-0.341987, -0.923157, -0.175571,
		38.725525, 34.005974, 38.369705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605484, 34.274879, 38.231304>,  <38.964916, 34.652184, 38.492603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605484, 34.274879, 38.231304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302074, 34.026871, 38.151085>,  <39.120029, 33.878067, 38.102955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302074, 34.026871, 38.151085>,  <39.605484, 34.274879, 38.231304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302074, 34.026871, 38.151085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400041, -0.200113, -0.894383,
		0.514406, -0.758635, 0.399825,
		-0.758520, -0.620023, -0.200546,
		39.074520, 33.840862, 38.090919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903587, 33.634254, 37.886494>,  <39.605484, 34.274879, 38.231304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903587, 33.634254, 37.886494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515110, 33.642391, 37.791523>,  <39.282024, 33.647274, 37.734543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515110, 33.642391, 37.791523>,  <39.903587, 33.634254, 37.886494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515110, 33.642391, 37.791523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238228, 0.059511, -0.969384,
		-0.005589, -0.998021, -0.062643,
		-0.971193, 0.020341, -0.237424,
		39.223751, 33.648495, 37.720295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678108, 33.003315, 37.676075>,  <39.903587, 33.634254, 37.886494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678108, 33.003315, 37.676075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409580, 33.248688, 37.509693>,  <39.248463, 33.395912, 37.409863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409580, 33.248688, 37.509693>,  <39.678108, 33.003315, 37.676075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409580, 33.248688, 37.509693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465360, -0.087934, -0.880743,
		-0.576856, -0.784833, -0.226437,
		-0.671324, 0.613437, -0.415955,
		39.208183, 33.432720, 37.384907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379845, 32.726139, 37.098991>,  <39.678108, 33.003315, 37.676075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379845, 32.726139, 37.098991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342403, 33.120300, 37.042122>,  <39.319939, 33.356796, 37.007999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342403, 33.120300, 37.042122>,  <39.379845, 32.726139, 37.098991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342403, 33.120300, 37.042122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546777, -0.068463, -0.834474,
		-0.832030, -0.155846, -0.532389,
		-0.093600, 0.985406, -0.142176,
		39.314323, 33.415920, 36.999470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464844, 32.821850, 36.342300>,  <39.379845, 32.726139, 37.098991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464844, 32.821850, 36.342300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510395, 33.176281, 36.522034>,  <39.537724, 33.388939, 36.629871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510395, 33.176281, 36.522034>,  <39.464844, 32.821850, 36.342300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510395, 33.176281, 36.522034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726433, 0.234265, -0.646076,
		-0.677736, 0.399980, -0.617000,
		0.113876, 0.886079, 0.449329,
		39.544559, 33.442104, 36.656834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426765, 33.297726, 35.769653>,  <39.464844, 32.821850, 36.342300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426765, 33.297726, 35.769653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647076, 33.381168, 36.092918>,  <39.779263, 33.431232, 36.286877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647076, 33.381168, 36.092918>,  <39.426765, 33.297726, 35.769653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647076, 33.381168, 36.092918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774937, 0.231848, -0.587978,
		-0.310025, 0.950122, -0.033956,
		0.550778, 0.208602, 0.808164,
		39.812309, 33.443748, 36.335369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860786, 33.923706, 35.602303>,  <39.426765, 33.297726, 35.769653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860786, 33.923706, 35.602303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023190, 33.734123, 35.914845>,  <40.120632, 33.620373, 36.102371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023190, 33.734123, 35.914845>,  <39.860786, 33.923706, 35.602303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023190, 33.734123, 35.914845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875603, -0.043072, -0.481107,
		0.261680, 0.879493, 0.397513,
		0.406008, -0.473959, 0.781358,
		40.144993, 33.591934, 36.149250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427467, 34.410858, 35.702293>,  <39.860786, 33.923706, 35.602303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427467, 34.410858, 35.702293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495705, 34.030178, 35.804405>,  <40.536648, 33.801769, 35.865673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495705, 34.030178, 35.804405>,  <40.427467, 34.410858, 35.702293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495705, 34.030178, 35.804405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773443, -0.031177, -0.633098,
		0.610478, 0.305442, 0.730768,
		0.170592, -0.951700, 0.255275,
		40.546883, 33.744667, 35.880989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136208, 34.224026, 36.043869>,  <40.427467, 34.410858, 35.702293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136208, 34.224026, 36.043869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968773, 33.938831, 35.818859>,  <40.868313, 33.767715, 35.683853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968773, 33.938831, 35.818859>,  <41.136208, 34.224026, 36.043869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968773, 33.938831, 35.818859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860820, -0.114084, -0.495957,
		0.289437, -0.691832, 0.661509,
		-0.418587, -0.712989, -0.562523,
		40.843197, 33.724934, 35.650101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302700, 34.866638, 36.217804>,  <41.136208, 34.224026, 36.043869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302700, 34.866638, 36.217804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917835, 34.757656, 36.219482>,  <40.686916, 34.692268, 36.220490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917835, 34.757656, 36.219482>,  <41.302700, 34.866638, 36.217804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917835, 34.757656, 36.219482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053863, -0.205272, -0.977222,
		0.267108, -0.940017, 0.212180,
		-0.962160, -0.272453, 0.004198,
		40.629189, 34.675919, 36.220741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997204, 34.441708, 35.936840>,  <41.302700, 34.866638, 36.217804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997204, 34.441708, 35.936840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227394, 34.585335, 35.642929>,  <42.365509, 34.671513, 35.466583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227394, 34.585335, 35.642929>,  <41.997204, 34.441708, 35.936840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227394, 34.585335, 35.642929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093220, -0.863801, -0.495134,
		-0.812489, 0.353433, -0.463624,
		0.575476, 0.359071, -0.734776,
		42.400036, 34.693058, 35.422497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663227, 34.354977, 35.159946>,  <41.997204, 34.441708, 35.936840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663227, 34.354977, 35.159946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060081, 34.326870, 35.201389>,  <42.298195, 34.310005, 35.226254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060081, 34.326870, 35.201389>,  <41.663227, 34.354977, 35.159946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060081, 34.326870, 35.201389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021608, -0.911304, -0.411166,
		0.123308, 0.405693, -0.905654,
		0.992133, -0.070270, 0.103605,
		42.357723, 34.305790, 35.232471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917557, 34.088783, 34.538052>,  <41.663227, 34.354977, 35.159946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917557, 34.088783, 34.538052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215961, 33.987751, 34.784519>,  <42.395004, 33.927132, 34.932400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215961, 33.987751, 34.784519>,  <41.917557, 34.088783, 34.538052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215961, 33.987751, 34.784519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039180, -0.907025, -0.419251,
		0.664774, 0.336909, -0.666759,
		0.746016, -0.252584, 0.616166,
		42.439766, 33.911976, 34.969368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420811, 33.834255, 34.120602>,  <41.917557, 34.088783, 34.538052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420811, 33.834255, 34.120602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463421, 33.682514, 34.488243>,  <42.488987, 33.591469, 34.708828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463421, 33.682514, 34.488243>,  <42.420811, 33.834255, 34.120602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463421, 33.682514, 34.488243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078387, -0.924686, -0.372574,
		0.991215, -0.032356, -0.128241,
		0.106528, -0.379353, 0.919099,
		42.495380, 33.568707, 34.763973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739803, 33.253624, 33.993092>,  <42.420811, 33.834255, 34.120602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739803, 33.253624, 33.993092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642899, 33.178497, 34.373837>,  <42.584755, 33.133423, 34.602283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642899, 33.178497, 34.373837>,  <42.739803, 33.253624, 33.993092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642899, 33.178497, 34.373837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156080, -0.960761, -0.229299,
		0.957574, -0.204116, 0.203443,
		-0.242263, -0.187817, 0.951858,
		42.570221, 33.122150, 34.659393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153187, 32.695198, 34.286213>,  <42.739803, 33.253624, 33.993092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153187, 32.695198, 34.286213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838593, 32.682365, 34.532925>,  <42.649837, 32.674667, 34.680950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838593, 32.682365, 34.532925>,  <43.153187, 32.695198, 34.286213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838593, 32.682365, 34.532925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138616, -0.964004, -0.226897,
		0.601855, -0.263946, 0.753726,
		-0.786484, -0.032081, 0.616777,
		42.602646, 32.672741, 34.717957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135727, 31.970100, 34.597359>,  <43.153187, 32.695198, 34.286213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135727, 31.970100, 34.597359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763691, 32.116184, 34.613110>,  <42.540470, 32.203835, 34.622559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763691, 32.116184, 34.613110>,  <43.135727, 31.970100, 34.597359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763691, 32.116184, 34.613110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363933, -0.901643, -0.233651,
		-0.049828, -0.231648, 0.971523,
		-0.930092, 0.365211, 0.039378,
		42.484665, 32.225746, 34.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799568, 31.511122, 35.001049>,  <43.135727, 31.970100, 34.597359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799568, 31.511122, 35.001049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518303, 31.696047, 34.784966>,  <42.349545, 31.807003, 34.655315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518303, 31.696047, 34.784966>,  <42.799568, 31.511122, 35.001049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518303, 31.696047, 34.784966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353660, -0.886518, -0.298347,
		-0.616831, -0.018739, 0.786873,
		-0.703167, 0.462315, -0.540204,
		42.307354, 31.834742, 34.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250717, 31.051882, 35.045410>,  <42.799568, 31.511122, 35.001049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250717, 31.051882, 35.045410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167629, 31.288542, 34.733822>,  <42.117775, 31.430538, 34.546867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167629, 31.288542, 34.733822>,  <42.250717, 31.051882, 35.045410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167629, 31.288542, 34.733822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357953, -0.787086, -0.502360,
		-0.910341, 0.174485, 0.375278,
		-0.207722, 0.591651, -0.778975,
		42.105312, 31.466038, 34.500130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639198, 30.774553, 34.637630>,  <42.250717, 31.051882, 35.045410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639198, 30.774553, 34.637630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826412, 31.013453, 34.377094>,  <41.938740, 31.156792, 34.220772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826412, 31.013453, 34.377094>,  <41.639198, 30.774553, 34.637630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826412, 31.013453, 34.377094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172177, -0.661296, -0.730098,
		-0.866777, 0.453854, -0.206675,
		0.468031, 0.597248, -0.651339,
		41.966820, 31.192627, 34.181694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265842, 30.790686, 34.003529>,  <41.639198, 30.774553, 34.637630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265842, 30.790686, 34.003529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632431, 30.903074, 33.889587>,  <41.852383, 30.970507, 33.821220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632431, 30.903074, 33.889587>,  <41.265842, 30.790686, 34.003529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632431, 30.903074, 33.889587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064454, -0.598972, -0.798171,
		-0.394884, 0.749858, -0.530829,
		0.916467, 0.280971, -0.284856,
		41.907372, 30.987366, 33.804131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211983, 30.710409, 33.284786>,  <41.265842, 30.790686, 34.003529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211983, 30.710409, 33.284786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607628, 30.765480, 33.305546>,  <41.845016, 30.798523, 33.318001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607628, 30.765480, 33.305546>,  <41.211983, 30.710409, 33.284786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607628, 30.765480, 33.305546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123019, -0.580348, -0.805023,
		-0.080715, 0.802646, -0.590969,
		0.989117, 0.137678, 0.051898,
		41.904362, 30.806784, 33.321114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521877, 30.842531, 32.572639>,  <41.211983, 30.710409, 33.284786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521877, 30.842531, 32.572639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826977, 30.683352, 32.776543>,  <42.010036, 30.587843, 32.898884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826977, 30.683352, 32.776543>,  <41.521877, 30.842531, 32.572639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826977, 30.683352, 32.776543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167711, -0.639564, -0.750221,
		0.624575, 0.657719, -0.421083,
		0.762744, -0.397949, 0.509762,
		42.055801, 30.563967, 32.929470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952072, 30.632509, 31.975842>,  <41.521877, 30.842531, 32.572639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952072, 30.632509, 31.975842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075851, 30.426050, 32.295300>,  <42.150120, 30.302174, 32.486973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075851, 30.426050, 32.295300>,  <41.952072, 30.632509, 31.975842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075851, 30.426050, 32.295300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233650, -0.772850, -0.590009,
		0.921765, 0.369179, -0.118556,
		0.309445, -0.516149, 0.798645,
		42.168686, 30.271206, 32.534893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558937, 30.203072, 31.769310>,  <41.952072, 30.632509, 31.975842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558937, 30.203072, 31.769310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437481, 30.019432, 32.103264>,  <42.364609, 29.909248, 32.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437481, 30.019432, 32.103264>,  <42.558937, 30.203072, 31.769310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437481, 30.019432, 32.103264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108932, -0.887236, -0.448271,
		0.946539, -0.045167, 0.319411,
		-0.303640, -0.459100, 0.834883,
		42.346390, 29.881702, 32.353729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079227, 29.712227, 31.920982>,  <42.558937, 30.203072, 31.769310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079227, 29.712227, 31.920982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733185, 29.586433, 32.077282>,  <42.525558, 29.510958, 32.171062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733185, 29.586433, 32.077282>,  <43.079227, 29.712227, 31.920982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733185, 29.586433, 32.077282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143162, -0.901443, -0.408540,
		0.480716, -0.297492, 0.824870,
		-0.865111, -0.314482, 0.390748,
		42.473652, 29.492088, 32.194508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261307, 29.027914, 32.018738>,  <43.079227, 29.712227, 31.920982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261307, 29.027914, 32.018738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862186, 29.052929, 32.027439>,  <42.622711, 29.067938, 32.032658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862186, 29.052929, 32.027439>,  <43.261307, 29.027914, 32.018738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862186, 29.052929, 32.027439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065764, -0.897921, -0.435216,
		-0.007688, -0.435692, 0.900063,
		-0.997805, 0.062538, 0.021750,
		42.562843, 29.071690, 32.033962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095253, 28.372290, 32.280716>,  <43.261307, 29.027914, 32.018738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095253, 28.372290, 32.280716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781528, 28.524378, 32.084637>,  <42.593296, 28.615631, 31.966990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781528, 28.524378, 32.084637>,  <43.095253, 28.372290, 32.280716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781528, 28.524378, 32.084637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135329, -0.875997, -0.462942,
		-0.605429, -0.296752, 0.738508,
		-0.784310, 0.380220, -0.490195,
		42.546234, 28.638443, 31.937578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688450, 27.832561, 32.168148>,  <43.095253, 28.372290, 32.280716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688450, 27.832561, 32.168148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518356, 28.079655, 31.903547>,  <42.416302, 28.227911, 31.744787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518356, 28.079655, 31.903547>,  <42.688450, 27.832561, 32.168148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518356, 28.079655, 31.903547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123617, -0.763664, -0.633669,
		-0.896604, -0.187683, 0.401095,
		-0.425231, 0.617732, -0.661503,
		42.390785, 28.264975, 31.705097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089302, 27.488102, 32.025906>,  <42.688450, 27.832561, 32.168148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089302, 27.488102, 32.025906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160725, 27.725719, 31.712158>,  <42.203579, 27.868290, 31.523911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160725, 27.725719, 31.712158>,  <42.089302, 27.488102, 32.025906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160725, 27.725719, 31.712158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067462, -0.787912, -0.612082,
		-0.981615, 0.162204, -0.100608,
		0.178552, 0.594042, -0.784368,
		42.214291, 27.903933, 31.476849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638718, 27.313959, 31.489754>,  <42.089302, 27.488102, 32.025906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638718, 27.313959, 31.489754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946301, 27.492773, 31.306950>,  <42.130852, 27.600061, 31.197268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946301, 27.492773, 31.306950>,  <41.638718, 27.313959, 31.489754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946301, 27.492773, 31.306950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117141, -0.604239, -0.788145,
		-0.628471, 0.659588, -0.412271,
		0.768962, 0.447033, -0.457011,
		42.176991, 27.626883, 31.169846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487732, 27.400173, 30.838732>,  <41.638718, 27.313959, 31.489754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487732, 27.400173, 30.838732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885094, 27.428200, 30.802435>,  <42.123512, 27.445015, 30.780657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885094, 27.428200, 30.802435>,  <41.487732, 27.400173, 30.838732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885094, 27.428200, 30.802435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036220, -0.559157, -0.828270,
		-0.108774, 0.826096, -0.552932,
		0.993406, 0.070067, -0.090743,
		42.183117, 27.449221, 30.775211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669830, 27.454107, 30.009754>,  <41.487732, 27.400173, 30.838732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669830, 27.454107, 30.009754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971088, 27.333040, 30.243391>,  <42.151844, 27.260401, 30.383574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971088, 27.333040, 30.243391>,  <41.669830, 27.454107, 30.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971088, 27.333040, 30.243391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303898, -0.627390, -0.716957,
		0.583454, 0.717477, -0.380536,
		0.753145, -0.302667, 0.584093,
		42.197033, 27.242241, 30.418619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208927, 27.358418, 29.630079>,  <41.669830, 27.454107, 30.009754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208927, 27.358418, 29.630079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316765, 27.115026, 29.928629>,  <42.381466, 26.968992, 30.107759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316765, 27.115026, 29.928629>,  <42.208927, 27.358418, 29.630079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316765, 27.115026, 29.928629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287102, -0.689035, -0.665435,
		0.919181, 0.393681, -0.011062,
		0.269591, -0.608479, 0.746374,
		42.397640, 26.932484, 30.152542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954418, 27.315990, 29.636936>,  <42.208927, 27.358418, 29.630079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954418, 27.315990, 29.636936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714714, 27.013746, 29.742722>,  <42.570892, 26.832399, 29.806192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714714, 27.013746, 29.742722>,  <42.954418, 27.315990, 29.636936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714714, 27.013746, 29.742722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207148, -0.465454, -0.860490,
		0.773292, -0.460872, 0.435450,
		-0.599257, -0.755612, 0.264463,
		42.534935, 26.787062, 29.822060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405914, 27.928854, 29.422199>,  <42.954418, 27.315990, 29.636936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405914, 27.928854, 29.422199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441368, 27.702902, 29.094040>,  <43.462639, 27.567331, 28.897144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441368, 27.702902, 29.094040>,  <43.405914, 27.928854, 29.422199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441368, 27.702902, 29.094040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906540, 0.387015, -0.168537,
		0.412710, -0.728787, 0.546389,
		0.088633, -0.564880, -0.820399,
		43.467957, 27.533438, 28.847919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039207, 28.197311, 28.755859>,  <43.405914, 27.928854, 29.422199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039207, 28.197311, 28.755859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682190, 28.350517, 28.660635>,  <42.467979, 28.442440, 28.603500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682190, 28.350517, 28.660635>,  <43.039207, 28.197311, 28.755859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682190, 28.350517, 28.660635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436159, -0.867324, 0.239821,
		-0.114619, 0.317881, 0.941177,
		-0.892540, 0.383015, -0.238059,
		42.414429, 28.465422, 28.589218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289257, 28.891869, 28.875338>,  <43.039207, 28.197311, 28.755859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289257, 28.891869, 28.875338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316547, 28.893101, 29.274405>,  <43.332920, 28.893839, 29.513844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316547, 28.893101, 29.274405>,  <43.289257, 28.891869, 28.875338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316547, 28.893101, 29.274405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381278, 0.924008, -0.028926,
		-0.921939, 0.382362, 0.061868,
		0.068227, 0.003079, 0.997665,
		43.337017, 28.894024, 29.573704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841396, 28.426401, 28.880072>,  <43.289257, 28.891869, 28.875338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841396, 28.426401, 28.880072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223583, 28.397638, 28.765593>,  <44.452896, 28.380381, 28.696905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223583, 28.397638, 28.765593>,  <43.841396, 28.426401, 28.880072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223583, 28.397638, 28.765593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212682, 0.840126, 0.498953,
		0.204564, -0.537604, 0.818008,
		0.955469, -0.071908, -0.286198,
		44.510223, 28.376066, 28.679733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216614, 28.579317, 29.469261>,  <43.841396, 28.426401, 28.880072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216614, 28.579317, 29.469261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469921, 28.638460, 29.165390>,  <44.621906, 28.673946, 28.983067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469921, 28.638460, 29.165390>,  <44.216614, 28.579317, 29.469261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469921, 28.638460, 29.165390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362663, 0.810448, 0.460054,
		0.683702, -0.566845, 0.459608,
		0.633267, 0.147857, -0.759678,
		44.659901, 28.682817, 28.937487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856911, 28.497789, 29.793512>,  <44.216614, 28.579317, 29.469261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856911, 28.497789, 29.793512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889618, 28.710463, 29.456318>,  <44.909241, 28.838066, 29.254002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889618, 28.710463, 29.456318>,  <44.856911, 28.497789, 29.793512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889618, 28.710463, 29.456318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342891, 0.779178, 0.524698,
		0.935810, -0.331956, -0.118598,
		0.081767, 0.531684, -0.842987,
		44.914146, 28.869968, 29.203423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501686, 28.921944, 29.719301>,  <44.856911, 28.497789, 29.793512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501686, 28.921944, 29.719301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185844, 29.090609, 29.540987>,  <44.996338, 29.191807, 29.433998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185844, 29.090609, 29.540987>,  <45.501686, 28.921944, 29.719301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185844, 29.090609, 29.540987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215582, 0.870810, 0.441830,
		0.574496, 0.252769, -0.778500,
		-0.789607, 0.421660, -0.445785,
		44.948963, 29.217106, 29.407251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700943, 29.616081, 29.446461>,  <45.501686, 28.921944, 29.719301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700943, 29.616081, 29.446461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310604, 29.615545, 29.533838>,  <45.076401, 29.615223, 29.586266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310604, 29.615545, 29.533838>,  <45.700943, 29.616081, 29.446461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310604, 29.615545, 29.533838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128614, 0.804769, 0.579488,
		-0.176573, 0.593587, -0.785160,
		-0.975848, -0.001339, 0.218444,
		45.017849, 29.615143, 29.599371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429993, 30.354441, 29.263319>,  <45.700943, 29.616081, 29.446461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429993, 30.354441, 29.263319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203167, 30.170456, 29.536631>,  <45.067070, 30.060064, 29.700617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203167, 30.170456, 29.536631>,  <45.429993, 30.354441, 29.263319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203167, 30.170456, 29.536631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263599, 0.684581, 0.679606,
		-0.780353, 0.565494, -0.266958,
		-0.567067, -0.459963, 0.683278,
		45.033047, 30.032467, 29.741613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024548, 30.920851, 29.645702>,  <45.429993, 30.354441, 29.263319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024548, 30.920851, 29.645702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027172, 30.596632, 29.879957>,  <45.028748, 30.402102, 30.020510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027172, 30.596632, 29.879957>,  <45.024548, 30.920851, 29.645702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027172, 30.596632, 29.879957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177306, 0.577313, 0.797040,
		-0.984134, 0.098609, 0.147502,
		0.006559, -0.810547, 0.585637,
		45.029140, 30.353468, 30.055649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788742, 31.085859, 30.217625>,  <45.024548, 30.920851, 29.645702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788742, 31.085859, 30.217625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950859, 30.749592, 30.361300>,  <45.048130, 30.547831, 30.447504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950859, 30.749592, 30.361300>,  <44.788742, 31.085859, 30.217625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950859, 30.749592, 30.361300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153360, 0.324811, 0.933262,
		-0.901233, -0.433327, 0.002719,
		0.405291, -0.840669, 0.359185,
		45.072445, 30.497391, 30.469055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329487, 30.717638, 30.695671>,  <44.788742, 31.085859, 30.217625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329487, 30.717638, 30.695671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712555, 30.640804, 30.781427>,  <44.942398, 30.594704, 30.832882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712555, 30.640804, 30.781427>,  <44.329487, 30.717638, 30.695671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712555, 30.640804, 30.781427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134048, 0.361509, 0.922682,
		-0.254736, -0.912368, 0.320460,
		0.957675, -0.192084, 0.214391,
		44.999859, 30.583179, 30.845745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333233, 30.374804, 31.417883>,  <44.329487, 30.717638, 30.695671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333233, 30.374804, 31.417883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700733, 30.514721, 31.344635>,  <44.921234, 30.598671, 31.300686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700733, 30.514721, 31.344635>,  <44.333233, 30.374804, 31.417883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700733, 30.514721, 31.344635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069158, 0.314056, 0.946882,
		0.388724, -0.882617, 0.264350,
		0.918755, 0.349794, -0.183121,
		44.976360, 30.619659, 31.289700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709278, 30.278311, 31.975325>,  <44.333233, 30.374804, 31.417883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709278, 30.278311, 31.975325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937485, 30.548990, 31.789165>,  <45.074409, 30.711397, 31.677469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937485, 30.548990, 31.789165>,  <44.709278, 30.278311, 31.975325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937485, 30.548990, 31.789165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232973, 0.410047, 0.881808,
		0.787552, -0.611508, 0.076285,
		0.570513, 0.676698, -0.465398,
		45.108639, 30.751999, 31.649546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187931, 30.448618, 32.518246>,  <44.709278, 30.278311, 31.975325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187931, 30.448618, 32.518246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212658, 30.738174, 32.243389>,  <45.227493, 30.911909, 32.078476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212658, 30.738174, 32.243389>,  <45.187931, 30.448618, 32.518246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212658, 30.738174, 32.243389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257947, 0.653477, 0.711639,
		0.964179, -0.221239, -0.146326,
		0.061822, 0.723892, -0.687137,
		45.231205, 30.955341, 32.037247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717888, 30.842690, 32.832878>,  <45.187931, 30.448618, 32.518246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717888, 30.842690, 32.832878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562611, 31.090443, 32.559917>,  <45.469444, 31.239096, 32.396141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562611, 31.090443, 32.559917>,  <45.717888, 30.842690, 32.832878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562611, 31.090443, 32.559917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163906, 0.775065, 0.610254,
		0.906884, 0.125049, -0.402398,
		-0.388196, 0.619385, -0.682397,
		45.446152, 31.276258, 32.355198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191963, 31.366554, 32.840336>,  <45.717888, 30.842690, 32.832878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191963, 31.366554, 32.840336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853214, 31.517521, 32.690479>,  <45.649963, 31.608101, 32.600567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853214, 31.517521, 32.690479>,  <46.191963, 31.366554, 32.840336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853214, 31.517521, 32.690479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121743, 0.823378, 0.554281,
		0.517666, 0.423798, -0.743248,
		-0.846877, 0.377418, -0.374640,
		45.599152, 31.630747, 32.578087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321751, 32.072464, 32.586250>,  <46.191963, 31.366554, 32.840336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321751, 32.072464, 32.586250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934589, 32.045628, 32.683125>,  <45.702293, 32.029526, 32.741249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934589, 32.045628, 32.683125>,  <46.321751, 32.072464, 32.586250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934589, 32.045628, 32.683125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083046, 0.824177, 0.560210,
		-0.237194, 0.562344, -0.792154,
		-0.967906, -0.067093, 0.242190,
		45.644218, 32.025501, 32.755783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106400, 32.757732, 32.584892>,  <46.321751, 32.072464, 32.586250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106400, 32.757732, 32.584892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836788, 32.555290, 32.800133>,  <45.675022, 32.433826, 32.929276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836788, 32.555290, 32.800133>,  <46.106400, 32.757732, 32.584892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836788, 32.555290, 32.800133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072516, 0.679581, 0.730008,
		-0.735138, 0.531066, -0.421356,
		-0.674028, -0.506101, 0.538097,
		45.634579, 32.403461, 32.961563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645027, 33.278744, 32.833332>,  <46.106400, 32.757732, 32.584892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645027, 33.278744, 32.833332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603024, 32.951267, 33.059151>,  <45.577820, 32.754780, 33.194641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603024, 32.951267, 33.059151>,  <45.645027, 33.278744, 32.833332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603024, 32.951267, 33.059151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173628, 0.574060, 0.800193,
		-0.979197, -0.013995, -0.202429,
		-0.105008, -0.818694, 0.564548,
		45.571522, 32.705658, 33.228516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018147, 33.352886, 33.212883>,  <45.645027, 33.278744, 32.833332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018147, 33.352886, 33.212883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211609, 33.090157, 33.444283>,  <45.327686, 32.932518, 33.583122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211609, 33.090157, 33.444283>,  <45.018147, 33.352886, 33.212883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211609, 33.090157, 33.444283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250734, 0.529270, 0.810559,
		-0.838574, -0.537083, 0.091299,
		0.483659, -0.656822, 0.578497,
		45.356709, 32.893108, 33.617832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502838, 33.097134, 33.695766>,  <45.018147, 33.352886, 33.212883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502838, 33.097134, 33.695766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854740, 33.008537, 33.864040>,  <45.065880, 32.955379, 33.965004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854740, 33.008537, 33.864040>,  <44.502838, 33.097134, 33.695766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854740, 33.008537, 33.864040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338532, 0.329445, 0.881398,
		-0.333815, -0.917828, 0.214848,
		0.879752, -0.221491, 0.420687,
		45.118668, 32.942089, 33.990246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440575, 32.817448, 34.343315>,  <44.502838, 33.097134, 33.695766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440575, 32.817448, 34.343315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822102, 32.931877, 34.379963>,  <45.051018, 33.000534, 34.401951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822102, 32.931877, 34.379963>,  <44.440575, 32.817448, 34.343315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822102, 32.931877, 34.379963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202915, 0.388718, 0.898735,
		0.221491, -0.875819, 0.428815,
		0.953817, 0.286075, 0.091619,
		45.108246, 33.017700, 34.407448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547813, 32.657063, 35.012550>,  <44.440575, 32.817448, 34.343315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547813, 32.657063, 35.012550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830868, 32.919552, 34.907768>,  <45.000702, 33.077045, 34.844898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830868, 32.919552, 34.907768>,  <44.547813, 32.657063, 35.012550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830868, 32.919552, 34.907768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157744, 0.508104, 0.846727,
		0.688739, -0.557857, 0.463070,
		0.707640, 0.656221, -0.261953,
		45.043159, 33.116417, 34.829182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987083, 32.596638, 35.566238>,  <44.547813, 32.657063, 35.012550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987083, 32.596638, 35.566238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058971, 32.956108, 35.406197>,  <45.102104, 33.171791, 35.310173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058971, 32.956108, 35.406197>,  <44.987083, 32.596638, 35.566238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058971, 32.956108, 35.406197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102263, 0.421591, 0.901001,
		0.978388, -0.121010, 0.167669,
		0.179718, 0.898675, -0.400105,
		45.112888, 33.225712, 35.286163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583588, 32.801823, 35.922749>,  <44.987083, 32.596638, 35.566238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583588, 32.801823, 35.922749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420166, 33.122452, 35.748135>,  <45.322113, 33.314831, 35.643364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420166, 33.122452, 35.748135>,  <45.583588, 32.801823, 35.922749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420166, 33.122452, 35.748135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071717, 0.448605, 0.890848,
		0.909913, 0.395265, -0.125792,
		-0.408552, 0.801572, -0.436539,
		45.297600, 33.362923, 35.617172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107475, 33.412102, 35.781780>,  <45.583588, 32.801823, 35.922749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107475, 33.412102, 35.781780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737167, 33.562698, 35.795639>,  <45.514980, 33.653057, 35.803955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737167, 33.562698, 35.795639>,  <46.107475, 33.412102, 35.781780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737167, 33.562698, 35.795639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213023, 0.443703, 0.870488,
		0.312359, 0.813254, -0.490969,
		-0.925772, 0.376492, 0.034648,
		45.459435, 33.675648, 35.806034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045753, 34.227215, 35.910316>,  <46.107475, 33.412102, 35.781780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045753, 34.227215, 35.910316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747299, 34.018837, 36.076160>,  <45.568226, 33.893810, 36.175667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747299, 34.018837, 36.076160>,  <46.045753, 34.227215, 35.910316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747299, 34.018837, 36.076160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130905, 0.495794, 0.858517,
		-0.652802, 0.694843, -0.301734,
		-0.746132, -0.520943, 0.414614,
		45.523460, 33.862553, 36.200546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678406, 33.758114, 36.052994>,  <46.045753, 34.227215, 35.910316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678406, 33.758114, 36.052994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990673, 33.793484, 35.805534>,  <47.178036, 33.814705, 35.657059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990673, 33.793484, 35.805534>,  <46.678406, 33.758114, 36.052994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.990673, 33.793484, 35.805534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614093, 0.292174, -0.733160,
		0.115927, 0.952269, 0.282392,
		0.780673, 0.088422, -0.618653,
		47.224876, 33.820011, 35.619938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766121, 34.444027, 35.657379>,  <46.678406, 33.758114, 36.052994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766121, 34.444027, 35.657379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895905, 34.134148, 35.440281>,  <46.973774, 33.948219, 35.310024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895905, 34.134148, 35.440281>,  <46.766121, 34.444027, 35.657379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895905, 34.134148, 35.440281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434619, 0.387531, -0.812974,
		0.840138, 0.499664, -0.210959,
		0.324460, -0.774697, -0.542743,
		46.993244, 33.901737, 35.277458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.328625, 34.581921, 35.201355>,  <46.766121, 34.444027, 35.657379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.328625, 34.581921, 35.201355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.065929, 34.315285, 35.060303>,  <46.908310, 34.155304, 34.975670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.065929, 34.315285, 35.060303>,  <47.328625, 34.581921, 35.201355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.065929, 34.315285, 35.060303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381028, 0.696846, -0.607637,
		0.650774, -0.264699, -0.711637,
		-0.656743, -0.666588, -0.352632,
		46.868908, 34.115307, 34.954514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.024826, 34.740200, 34.928143>,  <47.328625, 34.581921, 35.201355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.024826, 34.740200, 34.928143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753513, 35.033810, 34.941658>,  <47.590725, 35.209976, 34.949768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753513, 35.033810, 34.941658>,  <48.024826, 34.740200, 34.928143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753513, 35.033810, 34.941658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340584, 0.354806, -0.870698,
		-0.651101, -0.579072, -0.490656,
		-0.678284, 0.734022, 0.033792,
		47.550030, 35.254017, 34.951794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.558727, 39.782497, 44.557003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258881, 39.518421, 44.538139>,  <35.078972, 39.359978, 44.526821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258881, 39.518421, 44.538139>,  <35.558727, 39.782497, 44.557003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258881, 39.518421, 44.538139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120901, -0.066529, -0.990433,
		0.650735, -0.748147, 0.129689,
		-0.749618, -0.660189, -0.047160,
		35.033997, 39.320366, 44.523991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779167, 39.139400, 44.195217>,  <35.558727, 39.782497, 44.557003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779167, 39.139400, 44.195217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381481, 39.105534, 44.168797>,  <35.142868, 39.085213, 44.152943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381481, 39.105534, 44.168797>,  <35.779167, 39.139400, 44.195217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381481, 39.105534, 44.168797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077994, -0.146514, -0.986129,
		0.073817, -0.985578, 0.152271,
		-0.994217, -0.084669, -0.066054,
		35.083218, 39.080132, 44.148979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706764, 38.566612, 43.722397>,  <35.779167, 39.139400, 44.195217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706764, 38.566612, 43.722397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343407, 38.733826, 43.719109>,  <35.125393, 38.834152, 43.717136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343407, 38.733826, 43.719109>,  <35.706764, 38.566612, 43.722397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343407, 38.733826, 43.719109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122984, -0.285931, -0.950325,
		-0.399616, -0.862261, 0.311150,
		-0.908395, 0.418032, -0.008218,
		35.070889, 38.859234, 43.716644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270092, 38.049007, 43.633369>,  <35.706764, 38.566612, 43.722397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270092, 38.049007, 43.633369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069927, 38.379051, 43.528465>,  <34.949829, 38.577076, 43.465523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069927, 38.379051, 43.528465>,  <35.270092, 38.049007, 43.633369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069927, 38.379051, 43.528465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053924, -0.332029, -0.941726,
		-0.864104, -0.457113, 0.210646,
		-0.500416, 0.825109, -0.262259,
		34.919804, 38.626583, 43.449787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583977, 37.913685, 43.329224>,  <35.270092, 38.049007, 43.633369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583977, 37.913685, 43.329224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693081, 38.266418, 43.175358>,  <34.758541, 38.478058, 43.083038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693081, 38.266418, 43.175358>,  <34.583977, 37.913685, 43.329224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693081, 38.266418, 43.175358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001120, -0.400120, -0.916462,
		-0.962082, 0.249540, -0.110123,
		0.272757, 0.881835, -0.384669,
		34.774906, 38.530968, 43.059956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224834, 38.019798, 42.732918>,  <34.583977, 37.913685, 43.329224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224834, 38.019798, 42.732918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519547, 38.285297, 42.681408>,  <34.696373, 38.444599, 42.650501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519547, 38.285297, 42.681408>,  <34.224834, 38.019798, 42.732918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519547, 38.285297, 42.681408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035783, -0.228475, -0.972892,
		-0.675180, 0.712204, -0.192088,
		0.736785, 0.663751, -0.128777,
		34.740582, 38.484421, 42.642776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017551, 38.440823, 42.170399>,  <34.224834, 38.019798, 42.732918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017551, 38.440823, 42.170399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.414742, 38.447464, 42.217258>,  <34.653057, 38.451450, 42.245377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.414742, 38.447464, 42.217258>,  <34.017551, 38.440823, 42.170399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414742, 38.447464, 42.217258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117566, -0.250410, -0.960975,
		0.013380, 0.967998, -0.250603,
		0.992975, 0.016605, 0.117154,
		34.712635, 38.452446, 42.252403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079987, 38.457047, 41.482483>,  <34.017551, 38.440823, 42.170399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079987, 38.457047, 41.482483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460915, 38.429035, 41.601257>,  <34.689472, 38.412228, 41.672523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460915, 38.429035, 41.601257>,  <34.079987, 38.457047, 41.482483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460915, 38.429035, 41.601257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247432, -0.392110, -0.886018,
		0.178481, 0.917249, -0.356089,
		0.952325, -0.070029, 0.296940,
		34.746613, 38.408028, 41.690338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607082, 38.849167, 41.028767>,  <34.079987, 38.457047, 41.482483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607082, 38.849167, 41.028767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.829166, 38.561745, 41.196297>,  <34.962418, 38.389290, 41.296814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.829166, 38.561745, 41.196297>,  <34.607082, 38.849167, 41.028767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829166, 38.561745, 41.196297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244973, -0.339945, -0.907979,
		0.794811, 0.606724, -0.012715,
		0.555215, -0.718557, 0.418823,
		34.995731, 38.346176, 41.321945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172298, 38.806332, 40.564457>,  <34.607082, 38.849167, 41.028767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172298, 38.806332, 40.564457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188461, 38.469543, 40.779659>,  <35.198158, 38.267471, 40.908783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188461, 38.469543, 40.779659>,  <35.172298, 38.806332, 40.564457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188461, 38.469543, 40.779659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272504, -0.508751, -0.816648,
		0.961306, 0.179605, 0.208885,
		0.040404, -0.841971, 0.538008,
		35.200584, 38.216953, 40.941063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809093, 38.426567, 40.436649>,  <35.172298, 38.806332, 40.564457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809093, 38.426567, 40.436649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540379, 38.151093, 40.545761>,  <35.379150, 37.985806, 40.611229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540379, 38.151093, 40.545761>,  <35.809093, 38.426567, 40.436649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540379, 38.151093, 40.545761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276706, -0.574908, -0.770009,
		0.687121, -0.441802, 0.576780,
		-0.671787, -0.688688, 0.272782,
		35.338840, 37.944485, 40.627594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164032, 37.818268, 40.526821>,  <35.809093, 38.426567, 40.436649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164032, 37.818268, 40.526821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786533, 37.695259, 40.478214>,  <35.560032, 37.621452, 40.449051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786533, 37.695259, 40.478214>,  <36.164032, 37.818268, 40.526821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786533, 37.695259, 40.478214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260036, -0.463246, -0.847222,
		0.204252, -0.831163, 0.517155,
		-0.943749, -0.307525, -0.121513,
		35.503410, 37.603001, 40.441761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147842, 37.076363, 40.385044>,  <36.164032, 37.818268, 40.526821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147842, 37.076363, 40.385044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779499, 37.164299, 40.256245>,  <35.558495, 37.217060, 40.178963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779499, 37.164299, 40.256245>,  <36.147842, 37.076363, 40.385044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779499, 37.164299, 40.256245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105151, -0.655239, -0.748068,
		-0.375447, -0.722724, 0.580266,
		-0.920860, 0.219844, -0.322003,
		35.503242, 37.230251, 40.159645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732582, 36.444824, 40.288425>,  <36.147842, 37.076363, 40.385044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732582, 36.444824, 40.288425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566242, 36.727764, 40.059784>,  <35.466438, 36.897530, 39.922600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566242, 36.727764, 40.059784>,  <35.732582, 36.444824, 40.288425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566242, 36.727764, 40.059784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273256, -0.502297, -0.820383,
		-0.867410, -0.497349, 0.015592,
		-0.415849, 0.707348, -0.571601,
		35.441486, 36.939968, 39.888302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329597, 36.102432, 39.656200>,  <35.732582, 36.444824, 40.288425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329597, 36.102432, 39.656200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336811, 36.490128, 39.558014>,  <35.341141, 36.722744, 39.499104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336811, 36.490128, 39.558014>,  <35.329597, 36.102432, 39.656200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336811, 36.490128, 39.558014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009756, -0.245324, -0.969392,
		-0.999790, 0.019877, 0.005032,
		0.018034, 0.969237, -0.245466,
		35.342220, 36.780899, 39.484375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682087, 36.239025, 39.264610>,  <35.329597, 36.102432, 39.656200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682087, 36.239025, 39.264610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995872, 36.468151, 39.169529>,  <35.184143, 36.605629, 39.112480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995872, 36.468151, 39.169529>,  <34.682087, 36.239025, 39.264610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995872, 36.468151, 39.169529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143658, -0.205024, -0.968157,
		-0.603312, 0.793628, -0.078543,
		0.784460, 0.572818, -0.237704,
		35.231209, 36.639996, 39.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509762, 36.691395, 38.631149>,  <34.682087, 36.239025, 39.264610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509762, 36.691395, 38.631149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909271, 36.676270, 38.643875>,  <35.148979, 36.667194, 38.651512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909271, 36.676270, 38.643875>,  <34.509762, 36.691395, 38.631149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909271, 36.676270, 38.643875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020532, -0.268119, -0.963167,
		0.044953, 0.962644, -0.267015,
		0.998778, -0.037815, 0.031818,
		35.208904, 36.664925, 38.653419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640549, 36.931057, 37.963051>,  <34.509762, 36.691395, 38.631149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640549, 36.931057, 37.963051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991322, 36.781258, 38.083542>,  <35.201786, 36.691376, 38.155834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991322, 36.781258, 38.083542>,  <34.640549, 36.931057, 37.963051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991322, 36.781258, 38.083542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207860, -0.269571, -0.940280,
		0.433337, 0.887176, -0.158552,
		0.876934, -0.374501, 0.301223,
		35.254402, 36.668907, 38.173908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155418, 37.152695, 37.490376>,  <34.640549, 36.931057, 37.963051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155418, 37.152695, 37.490376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.317383, 36.836884, 37.674850>,  <35.414562, 36.647396, 37.785534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.317383, 36.836884, 37.674850>,  <35.155418, 37.152695, 37.490376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317383, 36.836884, 37.674850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224868, -0.402910, -0.887185,
		0.886275, 0.462936, 0.014397,
		0.404910, -0.789527, 0.461188,
		35.438854, 36.600025, 37.813206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706837, 37.071308, 37.135880>,  <35.155418, 37.152695, 37.490376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706837, 37.071308, 37.135880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676464, 36.712719, 37.310497>,  <35.658241, 36.497566, 37.415268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676464, 36.712719, 37.310497>,  <35.706837, 37.071308, 37.135880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676464, 36.712719, 37.310497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134327, -0.443018, -0.886392,
		0.988023, -0.008665, 0.154059,
		-0.075932, -0.896470, 0.436549,
		35.653687, 36.443779, 37.441463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304111, 36.579124, 36.895386>,  <35.706837, 37.071308, 37.135880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304111, 36.579124, 36.895386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.016502, 36.340237, 37.037556>,  <35.843937, 36.196903, 37.122860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.016502, 36.340237, 37.037556>,  <36.304111, 36.579124, 36.895386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016502, 36.340237, 37.037556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084057, -0.582397, -0.808547,
		0.689880, -0.551491, 0.468960,
		-0.719027, -0.597220, 0.355427,
		35.800793, 36.161072, 37.144184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583702, 35.886955, 36.748043>,  <36.304111, 36.579124, 36.895386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583702, 35.886955, 36.748043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186214, 35.874062, 36.790890>,  <35.947720, 35.866325, 36.816597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186214, 35.874062, 36.790890>,  <36.583702, 35.886955, 36.748043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186214, 35.874062, 36.790890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046854, -0.749580, -0.660254,
		0.101578, -0.661129, 0.743365,
		-0.993723, -0.032237, 0.107117,
		35.888096, 35.864391, 36.823025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081062, 35.813450, 37.246593>,  <36.583702, 35.886955, 36.748043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081062, 35.813450, 37.246593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464291, 35.822102, 37.132313>,  <37.694229, 35.827293, 37.063744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464291, 35.822102, 37.132313>,  <37.081062, 35.813450, 37.246593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464291, 35.822102, 37.132313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208379, 0.631781, 0.746613,
		0.196649, -0.774845, 0.600786,
		0.958075, 0.021630, -0.285700,
		37.751713, 35.828590, 37.046604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584171, 35.650085, 37.866333>,  <37.081062, 35.813450, 37.246593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584171, 35.650085, 37.866333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736565, 35.870380, 37.569271>,  <37.827999, 36.002556, 37.391033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736565, 35.870380, 37.569271>,  <37.584171, 35.650085, 37.866333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736565, 35.870380, 37.569271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500775, 0.552304, 0.666472,
		0.777223, -0.625820, -0.065375,
		0.380984, 0.550735, -0.742658,
		37.850861, 36.035603, 37.346474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294373, 35.591194, 37.949799>,  <37.584171, 35.650085, 37.866333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294373, 35.591194, 37.949799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187870, 35.936939, 37.779160>,  <38.123970, 36.144386, 37.676777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187870, 35.936939, 37.779160>,  <38.294373, 35.591194, 37.949799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187870, 35.936939, 37.779160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468109, 0.502831, 0.726660,
		0.842605, -0.006221, -0.538496,
		-0.266252, 0.864362, -0.426600,
		38.107994, 36.196247, 37.651180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783024, 35.962292, 38.106785>,  <38.294373, 35.591194, 37.949799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783024, 35.962292, 38.106785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523430, 36.236904, 37.975636>,  <38.367676, 36.401672, 37.896946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523430, 36.236904, 37.975636>,  <38.783024, 35.962292, 38.106785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523430, 36.236904, 37.975636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401199, 0.674988, 0.619218,
		0.646423, 0.270317, -0.713489,
		-0.648982, 0.686527, -0.327876,
		38.328735, 36.442863, 37.877274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159397, 36.550064, 38.110729>,  <38.783024, 35.962292, 38.106785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159397, 36.550064, 38.110729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777390, 36.667351, 38.092983>,  <38.548187, 36.737724, 38.082336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777390, 36.667351, 38.092983>,  <39.159397, 36.550064, 38.110729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777390, 36.667351, 38.092983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172107, 0.669842, 0.722281,
		0.241502, 0.682155, -0.690175,
		-0.955016, 0.293216, -0.044365,
		38.490883, 36.755314, 38.079674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143303, 37.252480, 38.202473>,  <39.159397, 36.550064, 38.110729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143303, 37.252480, 38.202473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758755, 37.214527, 38.305820>,  <38.528027, 37.191753, 38.367828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758755, 37.214527, 38.305820>,  <39.143303, 37.252480, 38.202473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758755, 37.214527, 38.305820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164146, 0.555866, 0.814904,
		-0.220943, 0.825839, -0.518820,
		-0.961374, -0.094885, 0.258373,
		38.470341, 37.186062, 38.383331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874683, 37.837784, 38.476234>,  <39.143303, 37.252480, 38.202473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874683, 37.837784, 38.476234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620514, 37.561546, 38.614403>,  <38.468014, 37.395802, 38.697304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620514, 37.561546, 38.614403>,  <38.874683, 37.837784, 38.476234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620514, 37.561546, 38.614403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078860, 0.503039, 0.860658,
		-0.768128, 0.519641, -0.374102,
		-0.635421, -0.690597, 0.345420,
		38.429886, 37.354366, 38.718029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328678, 38.236931, 38.786041>,  <38.874683, 37.837784, 38.476234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328678, 38.236931, 38.786041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.290546, 37.872414, 38.946274>,  <38.267670, 37.653706, 39.042412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.290546, 37.872414, 38.946274>,  <38.328678, 38.236931, 38.786041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290546, 37.872414, 38.946274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209063, 0.411764, 0.886986,
		-0.973245, 0.000808, -0.229769,
		-0.095327, -0.911290, 0.400578,
		38.261948, 37.599026, 39.066448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797607, 38.239918, 39.248642>,  <38.328678, 38.236931, 38.786041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797607, 38.239918, 39.248642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947060, 37.898090, 39.392925>,  <38.036732, 37.692993, 39.479496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947060, 37.898090, 39.392925>,  <37.797607, 38.239918, 39.248642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947060, 37.898090, 39.392925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226962, 0.292829, 0.928838,
		-0.899383, -0.428909, -0.084545,
		0.373630, -0.854569, 0.360712,
		38.059147, 37.641720, 39.501141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313240, 37.992630, 39.731083>,  <37.797607, 38.239918, 39.248642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313240, 37.992630, 39.731083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653481, 37.805752, 39.827583>,  <37.857624, 37.693626, 39.885483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653481, 37.805752, 39.827583>,  <37.313240, 37.992630, 39.731083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653481, 37.805752, 39.827583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187183, 0.159712, 0.969255,
		-0.491360, -0.869611, 0.048401,
		0.850605, -0.467193, 0.241252,
		37.908661, 37.665592, 39.899960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068916, 37.669067, 40.240601>,  <37.313240, 37.992630, 39.731083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068916, 37.669067, 40.240601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465721, 37.640354, 40.282104>,  <37.703804, 37.623127, 40.307007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465721, 37.640354, 40.282104>,  <37.068916, 37.669067, 40.240601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465721, 37.640354, 40.282104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092777, 0.142367, 0.985456,
		-0.085514, -0.987207, 0.134569,
		0.992008, -0.071785, 0.103764,
		37.763325, 37.618820, 40.313232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269180, 37.081329, 40.673153>,  <37.068916, 37.669067, 40.240601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269180, 37.081329, 40.673153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577007, 37.334385, 40.707870>,  <37.761703, 37.486217, 40.728699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577007, 37.334385, 40.707870>,  <37.269180, 37.081329, 40.673153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577007, 37.334385, 40.707870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200101, 0.109843, 0.973599,
		0.606408, -0.766614, 0.211124,
		0.769565, 0.632644, 0.086791,
		37.807877, 37.524178, 40.733910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757450, 36.846020, 41.242809>,  <37.269180, 37.081329, 40.673153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757450, 36.846020, 41.242809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801369, 37.242229, 41.209793>,  <37.827721, 37.479954, 41.189983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801369, 37.242229, 41.209793>,  <37.757450, 36.846020, 41.242809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801369, 37.242229, 41.209793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089131, 0.092524, 0.991713,
		0.989950, -0.101529, 0.098444,
		0.109796, 0.990521, -0.082545,
		37.834309, 37.539387, 41.185028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973423, 37.043934, 41.878727>,  <37.757450, 36.846020, 41.242809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973423, 37.043934, 41.878727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923618, 37.413280, 41.733459>,  <37.893738, 37.634888, 41.646297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923618, 37.413280, 41.733459>,  <37.973423, 37.043934, 41.878727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923618, 37.413280, 41.733459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120973, 0.377413, 0.918110,
		0.984817, 0.070378, -0.158693,
		-0.124508, 0.923367, -0.363169,
		37.886265, 37.690292, 41.624508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487923, 37.385460, 42.157780>,  <37.973423, 37.043934, 41.878727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487923, 37.385460, 42.157780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197147, 37.645988, 42.070755>,  <38.022682, 37.802307, 42.018539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197147, 37.645988, 42.070755>,  <38.487923, 37.385460, 42.157780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197147, 37.645988, 42.070755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109156, 0.422399, 0.899813,
		0.677967, 0.630364, -0.378156,
		-0.726943, 0.651321, -0.217564,
		37.979065, 37.841385, 42.005486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692295, 37.947121, 42.482792>,  <38.487923, 37.385460, 42.157780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692295, 37.947121, 42.482792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306324, 38.021961, 42.409134>,  <38.074741, 38.066864, 42.364941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306324, 38.021961, 42.409134>,  <38.692295, 37.947121, 42.482792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306324, 38.021961, 42.409134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077078, 0.468612, 0.880035,
		0.250948, 0.863363, -0.437755,
		-0.964927, 0.187102, -0.184143,
		38.016846, 38.078091, 42.353889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519585, 38.727028, 42.387959>,  <38.692295, 37.947121, 42.482792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519585, 38.727028, 42.387959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211891, 38.506924, 42.517872>,  <38.027275, 38.374859, 42.595821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211891, 38.506924, 42.517872>,  <38.519585, 38.727028, 42.387959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211891, 38.506924, 42.517872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062828, 0.570977, 0.818558,
		-0.635868, 0.609259, -0.473788,
		-0.769236, -0.550263, 0.324787,
		37.981121, 38.341846, 42.615307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240082, 39.179138, 42.904202>,  <38.519585, 38.727028, 42.387959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240082, 39.179138, 42.904202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015446, 38.852852, 42.959663>,  <37.880665, 38.657082, 42.992943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015446, 38.852852, 42.959663>,  <38.240082, 39.179138, 42.904202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015446, 38.852852, 42.959663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183205, 0.286008, 0.940551,
		-0.806876, 0.502804, -0.310063,
		-0.561593, -0.815713, 0.138657,
		37.846970, 38.608139, 43.001259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.202663, 39.305553, 43.035019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329041, 38.955868, 43.182499>,  <37.404865, 38.746056, 43.270988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329041, 38.955868, 43.182499>,  <37.202663, 39.305553, 43.035019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329041, 38.955868, 43.182499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293598, 0.279446, 0.914172,
		-0.902210, -0.397071, -0.168379,
		0.315938, -0.874211, 0.368698,
		37.423820, 38.693604, 43.293110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665958, 39.136963, 43.476254>,  <37.202663, 39.305553, 43.035019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665958, 39.136963, 43.476254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988651, 38.922031, 43.574608>,  <37.182266, 38.793072, 43.633621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988651, 38.922031, 43.574608>,  <36.665958, 39.136963, 43.476254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988651, 38.922031, 43.574608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182951, 0.168553, 0.968565,
		-0.561883, -0.826359, 0.037673,
		0.806732, -0.537328, 0.245890,
		37.230671, 38.760834, 43.648376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455494, 38.655815, 43.980125>,  <36.665958, 39.136963, 43.476254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455494, 38.655815, 43.980125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847980, 38.728794, 44.005173>,  <37.083473, 38.772579, 44.020203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847980, 38.728794, 44.005173>,  <36.455494, 38.655815, 43.980125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847980, 38.728794, 44.005173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081126, 0.095788, 0.992090,
		0.175006, -0.978538, 0.108790,
		0.981219, 0.182448, 0.062622,
		37.142345, 38.783527, 44.023960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720669, 38.240585, 44.532482>,  <36.455494, 38.655815, 43.980125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720669, 38.240585, 44.532482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982830, 38.540699, 44.497795>,  <37.140125, 38.720768, 44.476982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982830, 38.540699, 44.497795>,  <36.720669, 38.240585, 44.532482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982830, 38.540699, 44.497795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135895, 0.230085, 0.963636,
		0.742957, -0.619780, 0.252757,
		0.655398, 0.750288, -0.086718,
		37.179451, 38.765785, 44.471779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223164, 38.126328, 45.139099>,  <36.720669, 38.240585, 44.532482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223164, 38.126328, 45.139099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274426, 38.505520, 45.022545>,  <37.305183, 38.733036, 44.952610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274426, 38.505520, 45.022545>,  <37.223164, 38.126328, 45.139099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274426, 38.505520, 45.022545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104627, 0.305094, 0.946558,
		0.986220, -0.090818, 0.138284,
		0.128154, 0.947982, -0.291387,
		37.312870, 38.789913, 44.935127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427391, 38.318707, 45.781521>,  <37.223164, 38.126328, 45.139099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427391, 38.318707, 45.781521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421860, 38.651516, 45.559692>,  <37.418541, 38.851200, 45.426598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421860, 38.651516, 45.559692>,  <37.427391, 38.318707, 45.781521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421860, 38.651516, 45.559692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189646, 0.546736, 0.815546,
		0.981755, -0.093895, -0.165350,
		-0.013827, 0.832024, -0.554568,
		37.417713, 38.901123, 45.393322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049534, 38.732681, 45.876858>,  <37.427391, 38.318707, 45.781521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049534, 38.732681, 45.876858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755596, 38.993122, 45.800884>,  <37.579235, 39.149387, 45.755299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755596, 38.993122, 45.800884>,  <38.049534, 38.732681, 45.876858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755596, 38.993122, 45.800884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267069, 0.535197, 0.801398,
		0.623443, 0.538176, -0.567174,
		-0.734843, 0.651100, -0.189934,
		37.535145, 39.188454, 45.743904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294094, 39.393196, 46.049126>,  <38.049534, 38.732681, 45.876858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294094, 39.393196, 46.049126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897709, 39.439590, 46.076061>,  <37.659878, 39.467426, 46.092224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897709, 39.439590, 46.076061>,  <38.294094, 39.393196, 46.049126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897709, 39.439590, 46.076061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118190, 0.517862, 0.847260,
		0.063396, 0.847565, -0.526892,
		-0.990965, 0.115986, 0.067344,
		37.600418, 39.474388, 46.096264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177055, 40.098103, 46.137638>,  <38.294094, 39.393196, 46.049126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177055, 40.098103, 46.137638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857182, 39.907120, 46.283264>,  <37.665257, 39.792530, 46.370640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857182, 39.907120, 46.283264>,  <38.177055, 40.098103, 46.137638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857182, 39.907120, 46.283264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133016, 0.732159, 0.668020,
		-0.585502, 0.485779, -0.649005,
		-0.799684, -0.477455, 0.364064,
		37.617275, 39.763882, 46.392483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734989, 40.613388, 46.360634>,  <38.177055, 40.098103, 46.137638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734989, 40.613388, 46.360634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629143, 40.272713, 46.541569>,  <37.565636, 40.068306, 46.650127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629143, 40.272713, 46.541569>,  <37.734989, 40.613388, 46.360634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629143, 40.272713, 46.541569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162881, 0.501786, 0.849518,
		-0.950500, 0.151118, -0.271504,
		-0.264614, -0.851689, 0.452334,
		37.549759, 40.017204, 46.677269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171616, 40.808067, 46.719013>,  <37.734989, 40.613388, 46.360634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171616, 40.808067, 46.719013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309788, 40.468483, 46.878986>,  <37.392693, 40.264732, 46.974968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309788, 40.468483, 46.878986>,  <37.171616, 40.808067, 46.719013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309788, 40.468483, 46.878986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096447, 0.391789, 0.914986,
		-0.933475, -0.354636, 0.053457,
		0.345431, -0.848961, 0.399929,
		37.413418, 40.213795, 46.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730579, 40.587688, 47.299004>,  <37.171616, 40.808067, 46.719013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730579, 40.587688, 47.299004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054508, 40.364784, 47.372379>,  <37.248867, 40.231041, 47.416405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054508, 40.364784, 47.372379>,  <36.730579, 40.587688, 47.299004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054508, 40.364784, 47.372379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000564, 0.311931, 0.950104,
		-0.586674, -0.769520, 0.252295,
		0.809823, -0.557259, 0.183436,
		37.297455, 40.197605, 47.427410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783302, 40.480618, 47.958675>,  <36.730579, 40.587688, 47.299004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783302, 40.480618, 47.958675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142838, 40.321609, 47.884853>,  <37.358559, 40.226204, 47.840561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142838, 40.321609, 47.884853>,  <36.783302, 40.480618, 47.958675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142838, 40.321609, 47.884853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268558, 0.166785, 0.948715,
		-0.346351, -0.902309, 0.256670,
		0.898842, -0.397519, -0.184556,
		37.412491, 40.202354, 47.829487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842392, 39.950191, 48.459846>,  <36.783302, 40.480618, 47.958675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842392, 39.950191, 48.459846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213993, 40.047543, 48.348331>,  <37.436954, 40.105953, 48.281422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213993, 40.047543, 48.348331>,  <36.842392, 39.950191, 48.459846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213993, 40.047543, 48.348331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312660, -0.113146, 0.943102,
		0.197988, -0.963309, -0.181208,
		0.929002, 0.243379, -0.278787,
		37.492695, 40.120556, 48.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260239, 39.411888, 48.647892>,  <36.842392, 39.950191, 48.459846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260239, 39.411888, 48.647892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490368, 39.736763, 48.609211>,  <37.628445, 39.931690, 48.586002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490368, 39.736763, 48.609211>,  <37.260239, 39.411888, 48.647892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490368, 39.736763, 48.609211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330407, -0.122619, 0.935840,
		0.748222, -0.570362, -0.338898,
		0.575322, 0.812190, -0.096705,
		37.662964, 39.980419, 48.580200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932186, 39.231014, 48.938271>,  <37.260239, 39.411888, 48.647892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932186, 39.231014, 48.938271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916897, 39.630592, 48.928146>,  <37.907722, 39.870338, 48.922073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916897, 39.630592, 48.928146>,  <37.932186, 39.231014, 48.938271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916897, 39.630592, 48.928146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427320, 0.039238, 0.903248,
		0.903292, 0.023710, -0.428371,
		-0.038225, 0.998949, -0.025312,
		37.905430, 39.930279, 48.920551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502934, 39.441635, 49.281635>,  <37.932186, 39.231014, 48.938271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502934, 39.441635, 49.281635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269562, 39.765488, 49.307270>,  <38.129539, 39.959797, 49.322651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269562, 39.765488, 49.307270>,  <38.502934, 39.441635, 49.281635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269562, 39.765488, 49.307270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219459, 0.081184, 0.972238,
		0.781949, 0.581301, -0.225046,
		-0.583433, 0.809628, 0.064090,
		38.094532, 40.008377, 49.326496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925301, 39.761951, 49.713737>,  <38.502934, 39.441635, 49.281635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925301, 39.761951, 49.713737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588520, 39.969891, 49.771526>,  <38.386452, 40.094654, 49.806198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588520, 39.969891, 49.771526>,  <38.925301, 39.761951, 49.713737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588520, 39.969891, 49.771526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103567, -0.107065, 0.988843,
		0.529520, 0.847520, 0.036303,
		-0.841951, 0.519852, 0.144468,
		38.335934, 40.125847, 49.814865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095078, 40.383884, 50.016697>,  <38.925301, 39.761951, 49.713737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095078, 40.383884, 50.016697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728031, 40.261822, 50.118561>,  <38.507801, 40.188583, 50.179680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728031, 40.261822, 50.118561>,  <39.095078, 40.383884, 50.016697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728031, 40.261822, 50.118561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230245, 0.114140, 0.966416,
		-0.323979, 0.945436, -0.034475,
		-0.917619, -0.305160, 0.254661,
		38.452744, 40.170273, 50.194958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952675, 40.786743, 50.540138>,  <39.095078, 40.383884, 50.016697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952675, 40.786743, 50.540138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673740, 40.508015, 50.607258>,  <38.506378, 40.340778, 50.647530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673740, 40.508015, 50.607258>,  <38.952675, 40.786743, 50.540138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673740, 40.508015, 50.607258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162804, 0.073994, 0.983880,
		-0.698006, 0.713416, 0.061847,
		-0.697339, -0.696823, 0.167796,
		38.464539, 40.298969, 50.657597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617126, 41.037312, 51.210876>,  <38.952675, 40.786743, 50.540138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617126, 41.037312, 51.210876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525894, 40.651665, 51.156540>,  <38.471153, 40.420277, 51.123940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525894, 40.651665, 51.156540>,  <38.617126, 41.037312, 51.210876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525894, 40.651665, 51.156540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165202, -0.175819, 0.970462,
		-0.959523, 0.198906, 0.199376,
		-0.228085, -0.964118, -0.135842,
		38.457470, 40.362431, 51.115788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974018, 40.932095, 51.527378>,  <38.617126, 41.037312, 51.210876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974018, 40.932095, 51.527378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167934, 40.582268, 51.523361>,  <38.284283, 40.372372, 51.520950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167934, 40.582268, 51.523361>,  <37.974018, 40.932095, 51.527378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167934, 40.582268, 51.523361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269226, -0.160138, 0.949670,
		-0.832162, -0.457690, -0.313091,
		0.484792, -0.874572, -0.010038,
		38.313374, 40.319897, 51.520351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624828, 40.226986, 51.873039>,  <37.974018, 40.932095, 51.527378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624828, 40.226986, 51.873039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020630, 40.283417, 51.885551>,  <38.258110, 40.317276, 51.893059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020630, 40.283417, 51.885551>,  <37.624828, 40.226986, 51.873039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020630, 40.283417, 51.885551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041588, 0.070716, 0.996629,
		0.138386, -0.987470, 0.075841,
		0.989505, 0.141074, 0.031281,
		38.317482, 40.325741, 51.894936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277985, 40.920013, 51.785828>,  <37.624828, 40.226986, 51.873039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277985, 40.920013, 51.785828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614529, 40.879650, 51.998219>,  <37.816456, 40.855434, 52.125652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614529, 40.879650, 51.998219>,  <37.277985, 40.920013, 51.785828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614529, 40.879650, 51.998219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416633, 0.746896, -0.518232,
		-0.344294, 0.657241, 0.670445,
		0.841356, -0.100905, 0.530979,
		37.866936, 40.849377, 52.157513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313095, 40.749794, 51.092255>,  <37.277985, 40.920013, 51.785828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313095, 40.749794, 51.092255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978012, 40.777058, 51.308994>,  <36.776962, 40.793415, 51.439037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978012, 40.777058, 51.308994>,  <37.313095, 40.749794, 51.092255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978012, 40.777058, 51.308994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347071, -0.832486, -0.431866,
		0.421649, -0.549838, 0.721034,
		-0.837708, 0.068154, 0.541850,
		36.726700, 40.797504, 51.471550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097343, 40.028454, 51.230972>,  <37.313095, 40.749794, 51.092255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097343, 40.028454, 51.230972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770115, 40.251015, 51.289177>,  <36.573780, 40.384552, 51.324100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770115, 40.251015, 51.289177>,  <37.097343, 40.028454, 51.230972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770115, 40.251015, 51.289177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564294, -0.727688, -0.389926,
		-0.111067, -0.401100, 0.909276,
		-0.818069, 0.556407, 0.145516,
		36.524693, 40.417938, 51.332832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556751, 39.500408, 51.389610>,  <37.097343, 40.028454, 51.230972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556751, 39.500408, 51.389610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342606, 39.830875, 51.319382>,  <36.214119, 40.029156, 51.277245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342606, 39.830875, 51.319382>,  <36.556751, 39.500408, 51.389610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342606, 39.830875, 51.319382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744206, -0.559717, -0.364520,
		-0.399428, -0.064488, 0.914494,
		-0.535365, 0.826171, -0.175575,
		36.181995, 40.078728, 51.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849785, 39.385071, 51.498798>,  <36.556751, 39.500408, 51.389610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849785, 39.385071, 51.498798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844704, 39.694000, 51.244755>,  <35.841656, 39.879356, 51.092331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844704, 39.694000, 51.244755>,  <35.849785, 39.385071, 51.498798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844704, 39.694000, 51.244755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705847, -0.456811, -0.541389,
		-0.708250, 0.441413, 0.550942,
		-0.012700, 0.772320, -0.635107,
		35.840893, 39.925697, 51.054222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088276, 39.552193, 51.357208>,  <35.849785, 39.385071, 51.498798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088276, 39.552193, 51.357208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.315117, 39.673851, 51.051033>,  <35.451221, 39.746845, 50.867329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.315117, 39.673851, 51.051033>,  <35.088276, 39.552193, 51.357208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315117, 39.673851, 51.051033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560970, -0.537839, -0.629319,
		-0.603085, 0.786274, -0.134393,
		0.567098, 0.304143, -0.765439,
		35.485245, 39.765095, 50.821400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553127, 39.550068, 50.777870>,  <35.088276, 39.552193, 51.357208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553127, 39.550068, 50.777870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889950, 39.645744, 50.584484>,  <35.092041, 39.703152, 50.468452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889950, 39.645744, 50.584484>,  <34.553127, 39.550068, 50.777870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889950, 39.645744, 50.584484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362409, -0.412973, -0.835532,
		-0.399509, 0.878772, -0.261059,
		0.842052, 0.239193, -0.483461,
		35.142567, 39.717503, 50.439445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437019, 39.921513, 50.130241>,  <34.553127, 39.550068, 50.777870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437019, 39.921513, 50.130241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789513, 39.738590, 50.082417>,  <35.001011, 39.628838, 50.053722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789513, 39.738590, 50.082417>,  <34.437019, 39.921513, 50.130241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789513, 39.738590, 50.082417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323461, -0.398999, -0.858005,
		0.344664, 0.794780, -0.499533,
		0.881238, -0.457302, -0.119559,
		35.053883, 39.601398, 50.046547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616287, 40.070171, 49.512486>,  <34.437019, 39.921513, 50.130241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616287, 40.070171, 49.512486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827545, 39.738415, 49.585342>,  <34.954300, 39.539360, 49.629055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827545, 39.738415, 49.585342>,  <34.616287, 40.070171, 49.512486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827545, 39.738415, 49.585342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048218, -0.243446, -0.968715,
		0.847783, 0.502842, -0.168567,
		0.528147, -0.829388, 0.182143,
		34.985989, 39.489597, 49.639984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210472, 40.106815, 49.110367>,  <34.616287, 40.070171, 49.512486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210472, 40.106815, 49.110367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108421, 39.728477, 49.190651>,  <35.047192, 39.501472, 49.238823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108421, 39.728477, 49.190651>,  <35.210472, 40.106815, 49.110367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108421, 39.728477, 49.190651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049462, -0.194543, -0.979646,
		0.965642, -0.259859, 0.002849,
		-0.255124, -0.945847, 0.200712,
		35.031883, 39.444725, 49.250866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596367, 39.768894, 48.595104>,  <35.210472, 40.106815, 49.110367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596367, 39.768894, 48.595104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351028, 39.485279, 48.734283>,  <35.203827, 39.315109, 48.817791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351028, 39.485279, 48.734283>,  <35.596367, 39.768894, 48.595104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351028, 39.485279, 48.734283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109981, -0.359579, -0.926611,
		0.782119, -0.606601, 0.142565,
		-0.613346, -0.709041, 0.347948,
		35.167023, 39.272568, 48.838669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828495, 39.155945, 48.289757>,  <35.596367, 39.768894, 48.595104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828495, 39.155945, 48.289757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444984, 39.071701, 48.366055>,  <35.214878, 39.021156, 48.411835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444984, 39.071701, 48.366055>,  <35.828495, 39.155945, 48.289757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444984, 39.071701, 48.366055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137313, -0.244290, -0.959931,
		0.248769, -0.946555, 0.205301,
		-0.958780, -0.210610, 0.190746,
		35.157349, 39.008518, 48.423279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694908, 38.529041, 48.016315>,  <35.828495, 39.155945, 48.289757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694908, 38.529041, 48.016315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321156, 38.669399, 48.041008>,  <35.096905, 38.753613, 48.055824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321156, 38.669399, 48.041008>,  <35.694908, 38.529041, 48.016315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321156, 38.669399, 48.041008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080366, -0.038779, -0.996011,
		-0.347098, -0.935613, 0.064434,
		-0.934379, 0.350891, 0.061731,
		35.040840, 38.774666, 48.059528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337620, 38.178295, 47.427418>,  <35.694908, 38.529041, 48.016315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337620, 38.178295, 47.427418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084358, 38.475807, 47.513123>,  <34.932404, 38.654316, 47.564545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084358, 38.475807, 47.513123>,  <35.337620, 38.178295, 47.427418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084358, 38.475807, 47.513123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183821, 0.124404, -0.975056,
		-0.751884, -0.656743, 0.057956,
		-0.633151, 0.743783, 0.214260,
		34.894413, 38.698940, 47.577400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705067, 38.053696, 47.077488>,  <35.337620, 38.178295, 47.427418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705067, 38.053696, 47.077488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720230, 38.444962, 47.159225>,  <34.729328, 38.679722, 47.208267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720230, 38.444962, 47.159225>,  <34.705067, 38.053696, 47.077488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720230, 38.444962, 47.159225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024934, 0.203501, -0.978757,
		-0.998970, 0.042197, -0.016676,
		0.037907, 0.978165, 0.204343,
		34.731602, 38.738411, 47.220528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281239, 38.302166, 46.537682>,  <34.705067, 38.053696, 47.077488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281239, 38.302166, 46.537682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494446, 38.611591, 46.674789>,  <34.622372, 38.797245, 46.757053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494446, 38.611591, 46.674789>,  <34.281239, 38.302166, 46.537682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494446, 38.611591, 46.674789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020826, 0.393002, -0.919302,
		-0.845847, 0.497143, 0.193367,
		0.533019, 0.773562, 0.342773,
		34.654350, 38.843658, 46.777622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969254, 38.803631, 46.341194>,  <34.281239, 38.302166, 46.537682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969254, 38.803631, 46.341194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320068, 38.976425, 46.425282>,  <34.530560, 39.080101, 46.475735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320068, 38.976425, 46.425282>,  <33.969254, 38.803631, 46.341194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320068, 38.976425, 46.425282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029271, 0.484815, -0.874127,
		-0.479525, 0.760491, 0.437846,
		0.877040, 0.431982, 0.210221,
		34.583179, 39.106018, 46.488346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838596, 39.580524, 46.317360>,  <33.969254, 38.803631, 46.341194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838596, 39.580524, 46.317360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195232, 39.417526, 46.238361>,  <34.409214, 39.319729, 46.190960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195232, 39.417526, 46.238361>,  <33.838596, 39.580524, 46.317360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195232, 39.417526, 46.238361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000314, 0.436699, -0.899608,
		0.452836, 0.802023, 0.389487,
		0.891594, -0.407497, -0.197501,
		34.462711, 39.295277, 46.179111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064495, 39.973236, 45.781357>,  <33.838596, 39.580524, 46.317360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064495, 39.973236, 45.781357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340763, 39.685200, 45.754692>,  <34.506523, 39.512379, 45.738693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340763, 39.685200, 45.754692>,  <34.064495, 39.973236, 45.781357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340763, 39.685200, 45.754692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088257, 0.175422, -0.980529,
		0.717768, 0.671334, 0.184712,
		0.690666, -0.720095, -0.066662,
		34.547962, 39.469170, 45.734692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481304, 40.194862, 45.312294>,  <34.064495, 39.973236, 45.781357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481304, 40.194862, 45.312294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566315, 39.804184, 45.324326>,  <34.617321, 39.569778, 45.331543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566315, 39.804184, 45.324326>,  <34.481304, 40.194862, 45.312294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566315, 39.804184, 45.324326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335095, 0.043929, -0.941160,
		0.917903, 0.210097, 0.336621,
		0.212522, -0.976693, 0.030079,
		34.630070, 39.511177, 45.333351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999340, 40.189499, 44.897404>,  <34.481304, 40.194862, 45.312294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999340, 40.189499, 44.897404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927917, 39.796387, 44.916412>,  <34.885063, 39.560520, 44.927818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927917, 39.796387, 44.916412>,  <34.999340, 40.189499, 44.897404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927917, 39.796387, 44.916412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243147, -0.090872, -0.965723,
		0.953414, -0.160880, 0.255186,
		-0.178555, -0.982782, 0.047522,
		34.874352, 39.501553, 44.930668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.411819, 27.739311, 30.995344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039997, 27.628798, 30.897701>,  <42.816902, 27.562489, 30.839115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039997, 27.628798, 30.897701>,  <43.411819, 27.739311, 30.995344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039997, 27.628798, 30.897701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333066, 0.913223, 0.234714,
		0.158074, 0.299483, -0.940916,
		-0.929559, -0.276285, -0.244105,
		42.761131, 27.545912, 30.824471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053921, 28.331192, 30.600061>,  <43.411819, 27.739311, 30.995344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053921, 28.331192, 30.600061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750755, 28.114773, 30.745844>,  <42.568855, 27.984921, 30.833313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750755, 28.114773, 30.745844>,  <43.053921, 28.331192, 30.600061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750755, 28.114773, 30.745844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377435, 0.819370, 0.431481,
		-0.532078, 0.189467, -0.825225,
		-0.757915, -0.541050, 0.364457,
		42.523380, 27.952457, 30.855181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309502, 28.674089, 30.457939>,  <43.053921, 28.331192, 30.600061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309502, 28.674089, 30.457939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299812, 28.449770, 30.788979>,  <42.293999, 28.315178, 30.987602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299812, 28.449770, 30.788979>,  <42.309502, 28.674089, 30.457939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299812, 28.449770, 30.788979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349799, 0.780264, 0.518487,
		-0.936512, -0.276935, -0.215065,
		-0.024220, -0.560798, 0.827598,
		42.292545, 28.281530, 31.037258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727016, 28.974771, 30.813749>,  <42.309502, 28.674089, 30.457939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727016, 28.974771, 30.813749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.938332, 28.777460, 31.090179>,  <42.065121, 28.659073, 31.256039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.938332, 28.777460, 31.090179>,  <41.727016, 28.974771, 30.813749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938332, 28.777460, 31.090179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265526, 0.677121, 0.686297,
		-0.806480, -0.546060, 0.226735,
		0.528286, -0.493281, 0.691077,
		42.096817, 28.629477, 31.297503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467930, 29.232647, 31.382622>,  <41.727016, 28.974771, 30.813749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467930, 29.232647, 31.382622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781799, 29.041122, 31.540117>,  <41.970119, 28.926208, 31.634615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781799, 29.041122, 31.540117>,  <41.467930, 29.232647, 31.382622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781799, 29.041122, 31.540117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015758, 0.650356, 0.759466,
		-0.619713, -0.589726, 0.517860,
		0.784670, -0.478812, 0.393741,
		42.017200, 28.897478, 31.658239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307156, 28.999842, 32.156029>,  <41.467930, 29.232647, 31.382622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307156, 28.999842, 32.156029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702881, 29.034931, 32.109440>,  <41.940315, 29.055984, 32.081486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702881, 29.034931, 32.109440>,  <41.307156, 28.999842, 32.156029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702881, 29.034931, 32.109440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009283, 0.759262, 0.650719,
		0.145515, -0.644846, 0.750333,
		0.989312, 0.087724, -0.116471,
		41.999676, 29.061249, 32.074497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531574, 28.964954, 32.871956>,  <41.307156, 28.999842, 32.156029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531574, 28.964954, 32.871956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816532, 29.140263, 32.652718>,  <41.987507, 29.245447, 32.521175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816532, 29.140263, 32.652718>,  <41.531574, 28.964954, 32.871956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816532, 29.140263, 32.652718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085103, 0.721297, 0.687378,
		0.696602, -0.536328, 0.476549,
		0.712393, 0.438273, -0.548100,
		42.030251, 29.271744, 32.488289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170567, 29.170313, 33.363991>,  <41.531574, 28.964954, 32.871956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170567, 29.170313, 33.363991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189850, 29.399082, 33.036434>,  <42.201420, 29.536345, 32.839901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189850, 29.399082, 33.036434>,  <42.170567, 29.170313, 33.363991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189850, 29.399082, 33.036434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119488, 0.810654, 0.573205,
		0.991665, -0.125479, -0.029260,
		0.048205, 0.571923, -0.818890,
		42.204311, 29.570660, 32.790768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619389, 29.616594, 33.610210>,  <42.170567, 29.170313, 33.363991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619389, 29.616594, 33.610210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487720, 29.815620, 33.289192>,  <42.408718, 29.935036, 33.096581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487720, 29.815620, 33.289192>,  <42.619389, 29.616594, 33.610210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487720, 29.815620, 33.289192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069566, 0.860376, 0.504891,
		0.941704, 0.110367, -0.317825,
		-0.329172, 0.497567, -0.802541,
		42.388969, 29.964891, 33.048431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020329, 30.161688, 33.639561>,  <42.619389, 29.616594, 33.610210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020329, 30.161688, 33.639561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708641, 30.267397, 33.412235>,  <42.521629, 30.330822, 33.275841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708641, 30.267397, 33.412235>,  <43.020329, 30.161688, 33.639561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708641, 30.267397, 33.412235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026314, 0.919750, 0.391621,
		0.626200, 0.290203, -0.723641,
		-0.779219, 0.264275, -0.568311,
		42.474876, 30.346680, 33.241741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188938, 30.859335, 33.472759>,  <43.020329, 30.161688, 33.639561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188938, 30.859335, 33.472759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791172, 30.827620, 33.444870>,  <42.552513, 30.808590, 33.428135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791172, 30.827620, 33.444870>,  <43.188938, 30.859335, 33.472759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791172, 30.827620, 33.444870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104653, 0.827587, 0.551496,
		0.013975, 0.555710, -0.831259,
		-0.994411, -0.079287, -0.069722,
		42.492847, 30.803833, 33.423954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959000, 31.479280, 33.351711>,  <43.188938, 30.859335, 33.472759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959000, 31.479280, 33.351711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637566, 31.297493, 33.505444>,  <42.444706, 31.188419, 33.597683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637566, 31.297493, 33.505444>,  <42.959000, 31.479280, 33.351711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637566, 31.297493, 33.505444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221980, 0.827977, 0.514955,
		-0.552245, 0.328498, -0.766234,
		-0.803586, -0.454470, 0.384326,
		42.396488, 31.161152, 33.620743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480030, 32.018303, 33.364807>,  <42.959000, 31.479280, 33.351711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480030, 32.018303, 33.364807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343109, 31.747402, 33.625317>,  <42.260956, 31.584862, 33.781624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343109, 31.747402, 33.625317>,  <42.480030, 32.018303, 33.364807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343109, 31.747402, 33.625317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083842, 0.712400, 0.696748,
		-0.935841, 0.183896, -0.300640,
		-0.342305, -0.677251, 0.651274,
		42.240417, 31.544228, 33.820698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804535, 32.228619, 33.474926>,  <42.480030, 32.018303, 33.364807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804535, 32.228619, 33.474926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909672, 32.013680, 33.795467>,  <41.972755, 31.884716, 33.987793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909672, 32.013680, 33.795467>,  <41.804535, 32.228619, 33.474926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909672, 32.013680, 33.795467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054347, 0.820997, 0.568340,
		-0.963307, -0.192936, 0.186591,
		0.262844, -0.537345, 0.801357,
		41.988525, 31.852476, 34.035873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462563, 32.555630, 33.954899>,  <41.804535, 32.228619, 33.474926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462563, 32.555630, 33.954899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700012, 32.333054, 34.187443>,  <41.842484, 32.199509, 34.326969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700012, 32.333054, 34.187443>,  <41.462563, 32.555630, 33.954899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700012, 32.333054, 34.187443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129350, 0.779006, 0.613530,
		-0.794276, -0.289009, 0.534415,
		0.593628, -0.556438, 0.581362,
		41.878101, 32.166122, 34.361851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291523, 32.687386, 34.644913>,  <41.462563, 32.555630, 33.954899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291523, 32.687386, 34.644913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.667351, 32.550915, 34.656311>,  <41.892849, 32.469032, 34.663151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.667351, 32.550915, 34.656311>,  <41.291523, 32.687386, 34.644913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667351, 32.550915, 34.656311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269644, 0.788725, 0.552453,
		-0.210961, -0.511383, 0.833056,
		0.939568, -0.341174, 0.028499,
		41.949223, 32.448563, 34.664860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463638, 32.808632, 35.377102>,  <41.291523, 32.687386, 34.644913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463638, 32.808632, 35.377102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802464, 32.772457, 35.167606>,  <42.005760, 32.750751, 35.041908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802464, 32.772457, 35.167606>,  <41.463638, 32.808632, 35.377102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802464, 32.772457, 35.167606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305824, 0.888878, 0.341127,
		0.434687, -0.449128, 0.780596,
		0.847065, -0.090441, -0.523738,
		42.056583, 32.745323, 35.010487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031609, 32.957176, 35.836113>,  <41.463638, 32.808632, 35.377102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031609, 32.957176, 35.836113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194477, 33.023560, 35.476852>,  <42.292198, 33.063389, 35.261295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194477, 33.023560, 35.476852>,  <42.031609, 32.957176, 35.836113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194477, 33.023560, 35.476852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422945, 0.837308, 0.346458,
		0.809525, -0.520935, 0.270733,
		0.407169, 0.165961, -0.898148,
		42.316628, 33.073349, 35.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751995, 33.150272, 35.975418>,  <42.031609, 32.957176, 35.836113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751995, 33.150272, 35.975418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679688, 33.286446, 35.606327>,  <42.636303, 33.368149, 35.384872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679688, 33.286446, 35.606327>,  <42.751995, 33.150272, 35.975418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679688, 33.286446, 35.606327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218629, 0.928621, 0.299773,
		0.958919, -0.147547, -0.242292,
		-0.180767, 0.340430, -0.922730,
		42.625458, 33.388573, 35.329510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270718, 33.623302, 35.864674>,  <42.751995, 33.150272, 35.975418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270718, 33.623302, 35.864674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994579, 33.716106, 35.590565>,  <42.828896, 33.771790, 35.426098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994579, 33.716106, 35.590565>,  <43.270718, 33.623302, 35.864674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994579, 33.716106, 35.590565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154391, 0.972611, 0.173753,
		0.706815, 0.014149, -0.707256,
		-0.690344, 0.232005, -0.685272,
		42.787476, 33.785709, 35.384983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609985, 34.075035, 35.511353>,  <43.270718, 33.623302, 35.864674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609985, 34.075035, 35.511353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225342, 34.147408, 35.428810>,  <42.994556, 34.190830, 35.379284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225342, 34.147408, 35.428810>,  <43.609985, 34.075035, 35.511353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225342, 34.147408, 35.428810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086715, 0.913692, 0.397048,
		0.260380, 0.363909, -0.894300,
		-0.961604, 0.180932, -0.206351,
		42.936859, 34.201687, 35.366905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117268, 33.709236, 35.908791>,  <43.609985, 34.075035, 35.511353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117268, 33.709236, 35.908791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482628, 33.861187, 35.967297>,  <44.701843, 33.952358, 36.002399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482628, 33.861187, 35.967297>,  <44.117268, 33.709236, 35.908791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482628, 33.861187, 35.967297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235298, -0.199503, -0.951227,
		-0.332167, 0.903268, -0.271609,
		0.913400, 0.379876, 0.146269,
		44.756649, 33.975151, 36.011177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385757, 34.212627, 35.452110>,  <44.117268, 33.709236, 35.908791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385757, 34.212627, 35.452110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713600, 34.031963, 35.593102>,  <44.910305, 33.923565, 35.677696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713600, 34.031963, 35.593102>,  <44.385757, 34.212627, 35.452110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713600, 34.031963, 35.593102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324259, -0.141510, -0.935324,
		0.472328, 0.880896, 0.030471,
		0.819611, -0.451660, 0.352477,
		44.959484, 33.896465, 35.698845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937771, 34.517250, 35.193760>,  <44.385757, 34.212627, 35.452110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937771, 34.517250, 35.193760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.065983, 34.149429, 35.284691>,  <45.142910, 33.928738, 35.339249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.065983, 34.149429, 35.284691>,  <44.937771, 34.517250, 35.193760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065983, 34.149429, 35.284691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325673, -0.118375, -0.938043,
		0.889493, 0.374705, 0.261532,
		0.320530, -0.919556, 0.227325,
		45.162144, 33.873562, 35.352890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475056, 34.416481, 34.749947>,  <44.937771, 34.517250, 35.193760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475056, 34.416481, 34.749947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400539, 34.054150, 34.902142>,  <45.355831, 33.836750, 34.993458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400539, 34.054150, 34.902142>,  <45.475056, 34.416481, 34.749947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400539, 34.054150, 34.902142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328107, -0.422390, -0.844945,
		0.926089, -0.032564, 0.375896,
		-0.186290, -0.905829, 0.380486,
		45.344654, 33.782402, 35.016289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051739, 33.965290, 34.606201>,  <45.475056, 34.416481, 34.749947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.051739, 33.965290, 34.606201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.754486, 33.708591, 34.682011>,  <45.576134, 33.554573, 34.727497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.754486, 33.708591, 34.682011>,  <46.051739, 33.965290, 34.606201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754486, 33.708591, 34.682011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295797, -0.569113, -0.767213,
		0.600216, -0.514079, 0.612751,
		-0.743133, -0.641743, 0.189527,
		45.531548, 33.516068, 34.738869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349228, 33.311203, 34.510040>,  <46.051739, 33.965290, 34.606201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349228, 33.311203, 34.510040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960762, 33.218998, 34.485710>,  <45.727684, 33.163673, 34.471111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960762, 33.218998, 34.485710>,  <46.349228, 33.311203, 34.510040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960762, 33.218998, 34.485710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197572, -0.635424, -0.746460,
		0.133422, -0.736953, 0.662645,
		-0.971166, -0.230515, -0.060822,
		45.669411, 33.149845, 34.467464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252064, 32.636147, 34.521030>,  <46.349228, 33.311203, 34.510040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252064, 32.636147, 34.521030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.894779, 32.733418, 34.369747>,  <45.680408, 32.791779, 34.278976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.894779, 32.733418, 34.369747>,  <46.252064, 32.636147, 34.521030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894779, 32.733418, 34.369747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079591, -0.742343, -0.665276,
		-0.442537, -0.624334, 0.643714,
		-0.893211, 0.243175, -0.378205,
		45.626816, 32.806370, 34.256287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932308, 31.990723, 34.314041>,  <46.252064, 32.636147, 34.521030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932308, 31.990723, 34.314041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.736431, 32.265289, 34.098991>,  <45.618904, 32.430031, 33.969963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.736431, 32.265289, 34.098991>,  <45.932308, 31.990723, 34.314041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736431, 32.265289, 34.098991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057773, -0.640801, -0.765530,
		-0.869981, -0.343812, 0.353450,
		-0.489690, 0.686416, -0.537622,
		45.589523, 32.471214, 33.937706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301666, 31.709288, 34.011929>,  <45.932308, 31.990723, 34.314041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301666, 31.709288, 34.011929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376087, 32.028812, 33.783092>,  <45.420738, 32.220528, 33.645790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376087, 32.028812, 33.783092>,  <45.301666, 31.709288, 34.011929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376087, 32.028812, 33.783092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209364, -0.536651, -0.817418,
		-0.959975, 0.271858, 0.067396,
		0.186053, 0.798811, -0.572089,
		45.431904, 32.268456, 33.611465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680439, 31.837900, 33.667782>,  <45.301666, 31.709288, 34.011929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680439, 31.837900, 33.667782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990406, 31.996008, 33.470493>,  <45.176388, 32.090874, 33.352119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990406, 31.996008, 33.470493>,  <44.680439, 31.837900, 33.667782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990406, 31.996008, 33.470493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207661, -0.577803, -0.789317,
		-0.596974, 0.714079, -0.365668,
		0.774918, 0.395267, -0.493220,
		45.222881, 32.114590, 33.322529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433193, 31.904669, 33.035145>,  <44.680439, 31.837900, 33.667782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433193, 31.904669, 33.035145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822906, 31.949825, 32.957138>,  <45.056732, 31.976919, 32.910336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822906, 31.949825, 32.957138>,  <44.433193, 31.904669, 33.035145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822906, 31.949825, 32.957138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100718, -0.556022, -0.825042,
		-0.201572, 0.823465, -0.530352,
		0.974281, 0.112890, -0.195017,
		45.115192, 31.983692, 32.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453327, 32.130600, 32.184170>,  <44.433193, 31.904669, 33.035145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453327, 32.130600, 32.184170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795345, 31.955700, 32.295685>,  <45.000557, 31.850761, 32.362595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795345, 31.955700, 32.295685>,  <44.453327, 32.130600, 32.184170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795345, 31.955700, 32.295685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077229, -0.638988, -0.765330,
		0.512778, 0.632859, -0.580129,
		0.855041, -0.437247, 0.278784,
		45.051857, 31.824526, 32.379318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797279, 32.069370, 31.569344>,  <44.453327, 32.130600, 32.184170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797279, 32.069370, 31.569344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.994869, 31.829765, 31.821432>,  <45.113422, 31.686003, 31.972685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.994869, 31.829765, 31.821432>,  <44.797279, 32.069370, 31.569344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994869, 31.829765, 31.821432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032797, -0.737150, -0.674932,
		0.868859, 0.312729, -0.383778,
		0.493973, -0.599008, 0.630223,
		45.143063, 31.650063, 32.010498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427628, 31.946938, 31.191315>,  <44.797279, 32.069370, 31.569344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427628, 31.946938, 31.191315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370556, 31.646322, 31.448946>,  <45.336315, 31.465954, 31.603525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370556, 31.646322, 31.448946>,  <45.427628, 31.946938, 31.191315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370556, 31.646322, 31.448946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177451, -0.659615, -0.730356,
		0.973733, 0.010090, 0.227471,
		-0.142674, -0.751536, 0.644079,
		45.327755, 31.420862, 31.642170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906471, 31.514893, 31.021324>,  <45.427628, 31.946938, 31.191315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906471, 31.514893, 31.021324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.660545, 31.280640, 31.232620>,  <45.512989, 31.140087, 31.359398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.660545, 31.280640, 31.232620>,  <45.906471, 31.514893, 31.021324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660545, 31.280640, 31.232620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114463, -0.728953, -0.674927,
		0.780322, -0.354491, 0.515204,
		-0.614814, -0.585632, 0.528241,
		45.476101, 31.104950, 31.391092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276131, 30.813297, 31.105352>,  <45.906471, 31.514893, 31.021324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276131, 30.813297, 31.105352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879677, 30.779505, 31.146383>,  <45.641804, 30.759230, 31.171001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879677, 30.779505, 31.146383>,  <46.276131, 30.813297, 31.105352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879677, 30.779505, 31.146383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025946, -0.634032, -0.772871,
		0.130333, -0.768678, 0.626217,
		-0.991131, -0.084483, 0.102579,
		45.582336, 30.754160, 31.177156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187088, 30.135460, 31.066311>,  <46.276131, 30.813297, 31.105352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187088, 30.135460, 31.066311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815544, 30.276379, 31.020521>,  <45.592617, 30.360929, 30.993048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815544, 30.276379, 31.020521>,  <46.187088, 30.135460, 31.066311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815544, 30.276379, 31.020521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136540, -0.612893, -0.778280,
		-0.344346, -0.707284, 0.617394,
		-0.928861, 0.352297, -0.114475,
		45.536884, 30.382069, 30.986179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778690, 29.585602, 30.948248>,  <46.187088, 30.135460, 31.066311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778690, 29.585602, 30.948248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535709, 29.872099, 30.810841>,  <45.389923, 30.043997, 30.728397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535709, 29.872099, 30.810841>,  <45.778690, 29.585602, 30.948248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535709, 29.872099, 30.810841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350161, -0.629600, -0.693535,
		-0.713017, -0.301001, 0.633250,
		-0.607449, 0.716241, -0.343517,
		45.353474, 30.086971, 30.707787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094318, 29.362072, 30.837355>,  <45.778690, 29.585602, 30.948248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094318, 29.362072, 30.837355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053394, 29.679070, 30.596861>,  <45.028839, 29.869268, 30.452564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053394, 29.679070, 30.596861>,  <45.094318, 29.362072, 30.837355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053394, 29.679070, 30.596861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593527, -0.533667, -0.602433,
		-0.798285, 0.295216, 0.524965,
		-0.102309, 0.792494, -0.601237,
		45.022701, 29.916819, 30.416491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324131, 29.402626, 30.630079>,  <45.094318, 29.362072, 30.837355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324131, 29.402626, 30.630079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.537182, 29.602203, 30.356625>,  <44.665012, 29.721949, 30.192551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.537182, 29.602203, 30.356625>,  <44.324131, 29.402626, 30.630079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537182, 29.602203, 30.356625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416166, -0.548952, -0.724885,
		-0.736959, 0.670603, -0.084746,
		0.532632, 0.498942, -0.683638,
		44.696972, 29.751886, 30.151533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867737, 29.702898, 30.108347>,  <44.324131, 29.402626, 30.630079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867737, 29.702898, 30.108347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231731, 29.664562, 29.946987>,  <44.450130, 29.641562, 29.850172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231731, 29.664562, 29.946987>,  <43.867737, 29.702898, 30.108347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231731, 29.664562, 29.946987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408522, -0.373609, -0.832783,
		-0.070900, 0.922622, -0.379133,
		0.909991, -0.095839, -0.403400,
		44.504730, 29.635811, 29.825968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.722252, 38.417458, 40.774570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442337, 38.131767, 40.779961>,  <38.274387, 37.960354, 40.783195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442337, 38.131767, 40.779961>,  <38.722252, 38.417458, 40.774570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442337, 38.131767, 40.779961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305580, -0.316351, -0.898077,
		0.645694, -0.624343, 0.439631,
		-0.699786, -0.714226, 0.013479,
		38.232403, 37.917500, 40.784004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018410, 37.820210, 40.543243>,  <38.722252, 38.417458, 40.774570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018410, 37.820210, 40.543243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635841, 37.746677, 40.452503>,  <38.406300, 37.702557, 40.398060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635841, 37.746677, 40.452503>,  <39.018410, 37.820210, 40.543243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635841, 37.746677, 40.452503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280176, -0.359036, -0.890278,
		0.082215, -0.915040, 0.394896,
		-0.956421, -0.183835, -0.226854,
		38.348915, 37.691528, 40.384445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013809, 37.140244, 40.264919>,  <39.018410, 37.820210, 40.543243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013809, 37.140244, 40.264919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676723, 37.323063, 40.151123>,  <38.474472, 37.432755, 40.082844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676723, 37.323063, 40.151123>,  <39.013809, 37.140244, 40.264919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676723, 37.323063, 40.151123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119534, -0.356402, -0.926655,
		-0.524917, -0.814915, 0.245714,
		-0.842718, 0.457046, -0.284491,
		38.423908, 37.460178, 40.065777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812954, 36.669453, 39.774067>,  <39.013809, 37.140244, 40.264919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812954, 36.669453, 39.774067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571636, 36.983459, 39.717796>,  <38.426846, 37.171864, 39.684032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571636, 36.983459, 39.717796>,  <38.812954, 36.669453, 39.774067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571636, 36.983459, 39.717796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245459, -0.350598, -0.903787,
		-0.758807, -0.510718, 0.404202,
		-0.603292, 0.785015, -0.140676,
		38.390648, 37.218964, 39.675594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068684, 36.440411, 39.630913>,  <38.812954, 36.669453, 39.774067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068684, 36.440411, 39.630913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145729, 36.794067, 39.460644>,  <38.191956, 37.006260, 39.358482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145729, 36.794067, 39.460644>,  <38.068684, 36.440411, 39.630913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145729, 36.794067, 39.460644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127245, -0.407633, -0.904237,
		-0.972990, 0.228329, 0.033989,
		0.192609, 0.884139, -0.425677,
		38.203510, 37.059307, 39.332939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658688, 36.462536, 39.078899>,  <38.068684, 36.440411, 39.630913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658688, 36.462536, 39.078899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922886, 36.747063, 38.982754>,  <38.081406, 36.917778, 38.925068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922886, 36.747063, 38.982754>,  <37.658688, 36.462536, 39.078899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922886, 36.747063, 38.982754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207820, -0.134422, -0.968887,
		-0.721492, 0.689901, 0.059039,
		0.660500, 0.711313, -0.240360,
		38.121037, 36.960457, 38.910645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301018, 36.779629, 38.615913>,  <37.658688, 36.462536, 39.078899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301018, 36.779629, 38.615913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683212, 36.880375, 38.554443>,  <37.912529, 36.940823, 38.517563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683212, 36.880375, 38.554443>,  <37.301018, 36.779629, 38.615913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683212, 36.880375, 38.554443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104937, -0.196702, -0.974831,
		-0.275750, 0.947562, -0.161516,
		0.955484, 0.251861, -0.153675,
		37.969856, 36.955933, 38.508343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221313, 37.073196, 37.988281>,  <37.301018, 36.779629, 38.615913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221313, 37.073196, 37.988281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608952, 36.982124, 38.026241>,  <37.841534, 36.927479, 38.049019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608952, 36.982124, 38.026241>,  <37.221313, 37.073196, 37.988281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608952, 36.982124, 38.026241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020938, -0.307415, -0.951345,
		0.245780, 0.923935, -0.293149,
		0.969099, -0.227684, 0.094902,
		37.899681, 36.913818, 38.054710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511723, 37.339470, 37.433823>,  <37.221313, 37.073196, 37.988281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511723, 37.339470, 37.433823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750793, 37.050148, 37.572163>,  <37.894238, 36.876556, 37.655167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750793, 37.050148, 37.572163>,  <37.511723, 37.339470, 37.433823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750793, 37.050148, 37.572163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058750, -0.469728, -0.880854,
		0.799581, 0.506149, -0.323240,
		0.597678, -0.723305, 0.345849,
		37.930096, 36.833157, 37.675919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852798, 37.225430, 36.876743>,  <37.511723, 37.339470, 37.433823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852798, 37.225430, 36.876743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926949, 36.904835, 37.104168>,  <37.971439, 36.712479, 37.240623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926949, 36.904835, 37.104168>,  <37.852798, 37.225430, 36.876743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926949, 36.904835, 37.104168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149821, -0.594876, -0.789732,
		0.971180, 0.061211, -0.230352,
		0.185371, -0.801483, 0.568561,
		37.982559, 36.664391, 37.274734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337524, 36.861755, 36.526337>,  <37.852798, 37.225430, 36.876743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337524, 36.861755, 36.526337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163559, 36.588573, 36.761089>,  <38.059181, 36.424664, 36.901939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163559, 36.588573, 36.761089>,  <38.337524, 36.861755, 36.526337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163559, 36.588573, 36.761089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004611, -0.653427, -0.756975,
		0.900461, -0.326512, 0.287333,
		-0.434913, -0.682952, 0.586880,
		38.033085, 36.383690, 36.937153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727600, 36.245689, 36.383678>,  <38.337524, 36.861755, 36.526337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727600, 36.245689, 36.383678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390961, 36.118999, 36.558678>,  <38.188976, 36.042988, 36.663677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390961, 36.118999, 36.558678>,  <38.727600, 36.245689, 36.383678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390961, 36.118999, 36.558678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043830, -0.767297, -0.639793,
		0.538325, -0.557623, 0.631873,
		-0.841597, -0.316721, 0.437495,
		38.138481, 36.023983, 36.689926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807224, 35.468784, 36.642483>,  <38.727600, 36.245689, 36.383678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807224, 35.468784, 36.642483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447937, 35.602684, 36.528534>,  <38.232365, 35.683025, 36.460167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447937, 35.602684, 36.528534>,  <38.807224, 35.468784, 36.642483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447937, 35.602684, 36.528534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161489, -0.854074, -0.494448,
		-0.408816, -0.398118, 0.821201,
		-0.898215, 0.334753, -0.284867,
		38.178471, 35.703110, 36.443073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612709, 34.964020, 36.210793>,  <38.807224, 35.468784, 36.642483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612709, 34.964020, 36.210793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293846, 35.204155, 36.185070>,  <38.102528, 35.348236, 36.169636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293846, 35.204155, 36.185070>,  <38.612709, 34.964020, 36.210793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293846, 35.204155, 36.185070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400839, -0.605869, -0.687205,
		-0.451518, -0.522033, 0.723611,
		-0.797157, 0.600338, -0.064309,
		38.054699, 35.384254, 36.165775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879227, 34.436615, 36.537781>,  <38.612709, 34.964020, 36.210793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879227, 34.436615, 36.537781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961254, 34.074486, 36.686554>,  <39.010471, 33.857208, 36.775818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961254, 34.074486, 36.686554>,  <38.879227, 34.436615, 36.537781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961254, 34.074486, 36.686554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462325, 0.245339, 0.852094,
		-0.862672, -0.346689, -0.368244,
		0.205067, -0.905327, 0.371930,
		39.022774, 33.802887, 36.798134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281635, 34.174900, 36.892296>,  <38.879227, 34.436615, 36.537781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281635, 34.174900, 36.892296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564690, 33.934353, 37.040676>,  <38.734524, 33.790024, 37.129704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564690, 33.934353, 37.040676>,  <38.281635, 34.174900, 36.892296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564690, 33.934353, 37.040676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442981, 0.031414, 0.895981,
		-0.550467, -0.798355, -0.244164,
		0.707640, -0.601368, 0.370948,
		38.776981, 33.753944, 37.151962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979252, 33.759003, 37.399269>,  <38.281635, 34.174900, 36.892296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979252, 33.759003, 37.399269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340462, 33.610527, 37.485771>,  <38.557186, 33.521442, 37.537670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340462, 33.610527, 37.485771>,  <37.979252, 33.759003, 37.399269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340462, 33.610527, 37.485771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248523, -0.040794, 0.967767,
		-0.350402, -0.927661, -0.129087,
		0.903025, -0.371189, 0.216250,
		38.611370, 33.499172, 37.550648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969147, 33.105724, 37.826946>,  <37.979252, 33.759003, 37.399269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969147, 33.105724, 37.826946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299606, 33.317390, 37.904373>,  <38.497883, 33.444389, 37.950829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299606, 33.317390, 37.904373>,  <37.969147, 33.105724, 37.826946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299606, 33.317390, 37.904373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189355, -0.062809, 0.979898,
		0.530685, -0.846191, 0.048311,
		0.826146, 0.529165, 0.193563,
		38.547451, 33.476139, 37.962440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350563, 32.709473, 38.255478>,  <37.969147, 33.105724, 37.826946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350563, 32.709473, 38.255478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441738, 33.096226, 38.301418>,  <38.496441, 33.328278, 38.328983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441738, 33.096226, 38.301418>,  <38.350563, 32.709473, 38.255478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441738, 33.096226, 38.301418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115807, -0.090197, 0.989168,
		0.966765, -0.238767, 0.091412,
		0.227935, 0.966879, 0.114850,
		38.510120, 33.386288, 38.335873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826790, 32.691643, 38.810524>,  <38.350563, 32.709473, 38.255478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826790, 32.691643, 38.810524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697849, 33.069157, 38.781239>,  <38.620483, 33.295666, 38.763668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697849, 33.069157, 38.781239>,  <38.826790, 32.691643, 38.810524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697849, 33.069157, 38.781239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003712, 0.078599, 0.996899,
		0.946612, 0.321081, -0.028839,
		-0.322352, 0.943784, -0.073211,
		38.601143, 33.352291, 38.759274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175755, 32.927315, 39.457821>,  <38.826790, 32.691643, 38.810524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175755, 32.927315, 39.457821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924961, 33.216663, 39.342148>,  <38.774487, 33.390274, 39.272743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924961, 33.216663, 39.342148>,  <39.175755, 32.927315, 39.457821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924961, 33.216663, 39.342148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186053, 0.221424, 0.957265,
		0.756491, 0.653990, -0.004242,
		-0.626981, 0.723373, -0.289182,
		38.736866, 33.433674, 39.255394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327599, 33.571964, 39.819183>,  <39.175755, 32.927315, 39.457821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327599, 33.571964, 39.819183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943371, 33.571526, 39.707966>,  <38.712833, 33.571262, 39.641235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943371, 33.571526, 39.707966>,  <39.327599, 33.571964, 39.819183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943371, 33.571526, 39.707966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256922, 0.385775, 0.886097,
		0.106293, 0.922592, -0.370844,
		-0.960569, -0.001093, -0.278040,
		38.655201, 33.571198, 39.624554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043674, 34.359505, 39.896385>,  <39.327599, 33.571964, 39.819183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043674, 34.359505, 39.896385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733383, 34.108833, 39.866680>,  <38.547207, 33.958431, 39.848858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733383, 34.108833, 39.866680>,  <39.043674, 34.359505, 39.896385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733383, 34.108833, 39.866680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390112, 0.383719, 0.837002,
		-0.496035, 0.678259, -0.542138,
		-0.775733, -0.626677, -0.074259,
		38.500664, 33.920830, 39.844402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375149, 34.797462, 39.912945>,  <39.043674, 34.359505, 39.896385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375149, 34.797462, 39.912945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252014, 34.426674, 39.998695>,  <38.178131, 34.204201, 40.050144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252014, 34.426674, 39.998695>,  <38.375149, 34.797462, 39.912945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252014, 34.426674, 39.998695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399219, 0.330367, 0.855267,
		-0.863632, 0.177703, -0.471765,
		-0.307839, -0.926973, 0.214373,
		38.159664, 34.148582, 40.063007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753239, 34.955143, 40.127441>,  <38.375149, 34.797462, 39.912945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753239, 34.955143, 40.127441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842358, 34.595203, 40.277451>,  <37.895828, 34.379242, 40.367455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842358, 34.595203, 40.277451>,  <37.753239, 34.955143, 40.127441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842358, 34.595203, 40.277451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370886, 0.277520, 0.886243,
		-0.901556, -0.336544, -0.271909,
		0.222800, -0.899845, 0.375019,
		37.909199, 34.325249, 40.389957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183578, 34.744102, 40.493053>,  <37.753239, 34.955143, 40.127441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183578, 34.744102, 40.493053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459435, 34.509041, 40.662312>,  <37.624950, 34.368004, 40.763866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459435, 34.509041, 40.662312>,  <37.183578, 34.744102, 40.493053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459435, 34.509041, 40.662312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308401, 0.290347, 0.905863,
		-0.655197, -0.755219, 0.019001,
		0.689642, -0.587659, 0.423145,
		37.666328, 34.332745, 40.789253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896694, 34.569523, 41.029869>,  <37.183578, 34.744102, 40.493053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896694, 34.569523, 41.029869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272076, 34.479397, 41.134586>,  <37.497303, 34.425320, 41.197414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272076, 34.479397, 41.134586>,  <36.896694, 34.569523, 41.029869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272076, 34.479397, 41.134586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186965, 0.305914, 0.933521,
		-0.290426, -0.925013, 0.244959,
		0.938455, -0.225320, 0.261790,
		37.553612, 34.411800, 41.213123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801647, 34.252487, 41.729805>,  <36.896694, 34.569523, 41.029869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801647, 34.252487, 41.729805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189762, 34.347561, 41.711651>,  <37.422630, 34.404606, 41.700756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189762, 34.347561, 41.711651>,  <36.801647, 34.252487, 41.729805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189762, 34.347561, 41.711651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023191, 0.278053, 0.960286,
		0.240857, -0.930697, 0.275302,
		0.970284, 0.237676, -0.045387,
		37.480846, 34.418865, 41.698036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792847, 33.567684, 41.926777>,  <36.801647, 34.252487, 41.729805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792847, 33.567684, 41.926777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517647, 33.295479, 42.027618>,  <36.352528, 33.132156, 42.088123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517647, 33.295479, 42.027618>,  <36.792847, 33.567684, 41.926777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517647, 33.295479, 42.027618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111494, -0.244145, -0.963308,
		0.717091, -0.690867, 0.092100,
		-0.688004, -0.680511, 0.252101,
		36.311245, 33.091324, 42.103249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945839, 33.036495, 41.528435>,  <36.792847, 33.567684, 41.926777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945839, 33.036495, 41.528435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566044, 32.970009, 41.634899>,  <36.338165, 32.930119, 41.698776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566044, 32.970009, 41.634899>,  <36.945839, 33.036495, 41.528435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566044, 32.970009, 41.634899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231035, -0.203682, -0.951387,
		0.212344, -0.964825, 0.154993,
		-0.949491, -0.166213, 0.266159,
		36.281197, 32.920143, 41.714748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789436, 32.407818, 41.210182>,  <36.945839, 33.036495, 41.528435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789436, 32.407818, 41.210182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443016, 32.592083, 41.287903>,  <36.235165, 32.702641, 41.334534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443016, 32.592083, 41.287903>,  <36.789436, 32.407818, 41.210182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443016, 32.592083, 41.287903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296098, -0.159448, -0.941755,
		-0.402847, -0.873138, 0.274490,
		-0.866048, 0.460659, 0.194302,
		36.183201, 32.730282, 41.346195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281635, 31.931427, 40.988342>,  <36.789436, 32.407818, 41.210182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281635, 31.931427, 40.988342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100075, 32.287834, 40.985115>,  <35.991138, 32.501678, 40.983177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100075, 32.287834, 40.985115>,  <36.281635, 31.931427, 40.988342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100075, 32.287834, 40.985115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408018, -0.215884, -0.887082,
		-0.792147, -0.399354, 0.461541,
		-0.453899, 0.891017, -0.008068,
		35.963905, 32.555138, 40.982697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647350, 31.773354, 40.847389>,  <36.281635, 31.931427, 40.988342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647350, 31.773354, 40.847389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682869, 32.159962, 40.751099>,  <35.704182, 32.391926, 40.693325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682869, 32.159962, 40.751099>,  <35.647350, 31.773354, 40.847389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682869, 32.159962, 40.751099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497253, -0.166394, -0.851500,
		-0.863049, 0.195316, 0.465830,
		0.088800, 0.966522, -0.240728,
		35.709511, 32.449917, 40.678879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926067, 31.960491, 40.588551>,  <35.647350, 31.773354, 40.847389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926067, 31.960491, 40.588551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150208, 32.273636, 40.480381>,  <35.284691, 32.461521, 40.415478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150208, 32.273636, 40.480381>,  <34.926067, 31.960491, 40.588551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150208, 32.273636, 40.480381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663470, 0.228824, -0.712353,
		-0.495793, 0.578591, 0.647628,
		0.560354, 0.782862, -0.270428,
		35.318314, 32.508495, 40.399254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421928, 32.477177, 40.495323>,  <34.926067, 31.960491, 40.588551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421928, 32.477177, 40.495323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748878, 32.598705, 40.299530>,  <34.945049, 32.671623, 40.182056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748878, 32.598705, 40.299530>,  <34.421928, 32.477177, 40.495323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748878, 32.598705, 40.299530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560691, 0.224306, -0.797065,
		-0.132369, 0.925949, 0.353690,
		0.817376, 0.303818, -0.489480,
		34.994091, 32.689850, 40.152687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346519, 33.203239, 40.356251>,  <34.421928, 32.477177, 40.495323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346519, 33.203239, 40.356251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604290, 33.050304, 40.091362>,  <34.758953, 32.958546, 39.932430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604290, 33.050304, 40.091362>,  <34.346519, 33.203239, 40.356251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604290, 33.050304, 40.091362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564011, 0.347121, -0.749265,
		0.516340, 0.856346, 0.008053,
		0.644426, -0.382334, -0.662221,
		34.797619, 32.935604, 39.892696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400745, 33.631618, 39.745483>,  <34.346519, 33.203239, 40.356251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400745, 33.631618, 39.745483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545811, 33.299728, 39.575764>,  <34.632851, 33.100594, 39.473930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545811, 33.299728, 39.575764>,  <34.400745, 33.631618, 39.745483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545811, 33.299728, 39.575764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350264, 0.300556, -0.887119,
		0.863592, 0.470343, -0.181623,
		0.362662, -0.829725, -0.424302,
		34.654610, 33.050812, 39.448475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483002, 33.866776, 39.101814>,  <34.400745, 33.631618, 39.745483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483002, 33.866776, 39.101814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524364, 33.473190, 39.043682>,  <34.549183, 33.237038, 39.008801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524364, 33.473190, 39.043682>,  <34.483002, 33.866776, 39.101814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524364, 33.473190, 39.043682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480937, 0.078439, -0.873240,
		0.870636, 0.160194, -0.465113,
		0.103405, -0.983964, -0.145335,
		34.555386, 33.178001, 39.000080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661171, 33.785946, 38.389538>,  <34.483002, 33.866776, 39.101814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661171, 33.785946, 38.389538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558300, 33.406815, 38.464893>,  <34.496578, 33.179337, 38.510109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558300, 33.406815, 38.464893>,  <34.661171, 33.785946, 38.389538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558300, 33.406815, 38.464893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413667, -0.068210, -0.907870,
		0.873351, -0.311412, -0.374541,
		-0.257174, -0.947824, 0.188391,
		34.481148, 33.122467, 38.521412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933743, 33.289463, 37.907795>,  <34.661171, 33.785946, 38.389538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933743, 33.289463, 37.907795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584297, 33.154716, 38.048260>,  <34.374630, 33.073868, 38.132538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584297, 33.154716, 38.048260>,  <34.933743, 33.289463, 37.907795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584297, 33.154716, 38.048260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333233, -0.111735, -0.936200,
		0.354613, -0.934898, -0.014642,
		-0.873616, -0.336868, 0.351162,
		34.322212, 33.053658, 38.153606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.555660, 32.613186, 45.717136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166946, 32.707039, 45.726734>,  <36.933716, 32.763351, 45.732494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166946, 32.707039, 45.726734>,  <37.555660, 32.613186, 45.717136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166946, 32.707039, 45.726734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024602, 0.000339, -0.999697,
		-0.234570, -0.972084, 0.005443,
		-0.971788, 0.234633, 0.023995,
		36.875408, 32.777428, 45.733932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334785, 32.118362, 45.315792>,  <37.555660, 32.613186, 45.717136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334785, 32.118362, 45.315792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055023, 32.403786, 45.332157>,  <36.887165, 32.575039, 45.341976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055023, 32.403786, 45.332157>,  <37.334785, 32.118362, 45.315792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055023, 32.403786, 45.332157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007488, 0.064559, -0.997886,
		-0.714690, -0.697616, -0.050496,
		-0.699401, 0.713557, 0.040916,
		36.845203, 32.617851, 45.344433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837193, 31.847744, 44.804077>,  <37.334785, 32.118362, 45.315792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837193, 31.847744, 44.804077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714397, 32.222614, 44.870361>,  <36.640720, 32.447536, 44.910133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714397, 32.222614, 44.870361>,  <36.837193, 31.847744, 44.804077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714397, 32.222614, 44.870361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214792, 0.101403, -0.971382,
		-0.927159, -0.333794, 0.170168,
		-0.306986, 0.937176, 0.165713,
		36.622303, 32.503769, 44.920074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189304, 31.846201, 44.475643>,  <36.837193, 31.847744, 44.804077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189304, 31.846201, 44.475643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304092, 32.225746, 44.528267>,  <36.372963, 32.453472, 44.559841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304092, 32.225746, 44.528267>,  <36.189304, 31.846201, 44.475643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304092, 32.225746, 44.528267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127108, 0.173839, -0.976537,
		-0.949470, 0.263512, 0.170495,
		0.286968, 0.948863, 0.131560,
		36.390182, 32.510406, 44.567734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621853, 32.262402, 44.353951>,  <36.189304, 31.846201, 44.475643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621853, 32.262402, 44.353951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.958874, 32.466099, 44.283775>,  <36.161087, 32.588318, 44.241673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.958874, 32.466099, 44.283775>,  <35.621853, 32.262402, 44.353951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958874, 32.466099, 44.283775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254605, 0.089532, -0.962892,
		-0.474640, 0.855953, 0.205091,
		0.842552, 0.509244, -0.175435,
		36.211639, 32.618874, 44.231144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362442, 32.719479, 43.842667>,  <35.621853, 32.262402, 44.353951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362442, 32.719479, 43.842667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.757107, 32.750565, 43.785458>,  <35.993904, 32.769218, 43.751133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.757107, 32.750565, 43.785458>,  <35.362442, 32.719479, 43.842667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757107, 32.750565, 43.785458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153140, 0.145391, -0.977450,
		-0.055170, 0.986317, 0.155354,
		0.986663, 0.077717, -0.143023,
		36.053104, 32.773880, 43.742550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491917, 33.339497, 43.461239>,  <35.362442, 32.719479, 43.842667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491917, 33.339497, 43.461239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792076, 33.080887, 43.406239>,  <35.972172, 32.925720, 43.373238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792076, 33.080887, 43.406239>,  <35.491917, 33.339497, 43.461239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792076, 33.080887, 43.406239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005951, 0.214622, -0.976679,
		0.660962, 0.732078, 0.164899,
		0.750396, -0.646529, -0.137500,
		36.017197, 32.886929, 43.364990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907581, 33.747395, 43.041813>,  <35.491917, 33.339497, 43.461239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907581, 33.747395, 43.041813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014526, 33.365177, 42.992092>,  <36.078693, 33.135845, 42.962257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014526, 33.365177, 42.992092>,  <35.907581, 33.747395, 43.041813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014526, 33.365177, 42.992092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016647, 0.124402, -0.992092,
		0.963451, 0.267321, 0.017354,
		0.267366, -0.955543, -0.124306,
		36.094738, 33.078514, 42.954800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498322, 33.792343, 42.524220>,  <35.907581, 33.747395, 43.041813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498322, 33.792343, 42.524220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.346004, 33.422703, 42.537083>,  <36.254616, 33.200920, 42.544800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.346004, 33.422703, 42.537083>,  <36.498322, 33.792343, 42.524220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346004, 33.422703, 42.537083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031728, -0.021701, -0.999261,
		0.924116, -0.381530, -0.021056,
		-0.380791, -0.924102, 0.032160,
		36.231766, 33.145473, 42.546730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172218, 33.926479, 42.404995>,  <36.498322, 33.792343, 42.524220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172218, 33.926479, 42.404995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398365, 34.217678, 42.249878>,  <37.534054, 34.392399, 42.156807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398365, 34.217678, 42.249878>,  <37.172218, 33.926479, 42.404995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398365, 34.217678, 42.249878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192802, 0.340480, 0.920272,
		0.801993, -0.595054, 0.052135,
		0.565363, 0.728001, -0.387790,
		37.567974, 34.436077, 42.133541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702354, 33.986874, 42.935089>,  <37.172218, 33.926479, 42.404995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702354, 33.986874, 42.935089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746288, 34.323658, 42.723793>,  <37.772648, 34.525730, 42.597015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746288, 34.323658, 42.723793>,  <37.702354, 33.986874, 42.935089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746288, 34.323658, 42.723793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205029, 0.500837, 0.840908,
		0.972574, -0.200666, -0.117617,
		0.109835, 0.841959, -0.528243,
		37.779240, 34.576244, 42.565319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359585, 34.253696, 43.033413>,  <37.702354, 33.986874, 42.935089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359585, 34.253696, 43.033413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.127247, 34.560028, 42.923046>,  <37.987846, 34.743828, 42.856827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.127247, 34.560028, 42.923046>,  <38.359585, 34.253696, 43.033413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127247, 34.560028, 42.923046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246088, 0.488298, 0.837261,
		0.775929, 0.418415, -0.472084,
		-0.580840, 0.765829, -0.275917,
		37.952995, 34.789776, 42.840271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715252, 34.776089, 43.279579>,  <38.359585, 34.253696, 43.033413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715252, 34.776089, 43.279579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357288, 34.924606, 43.180557>,  <38.142509, 35.013718, 43.121143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357288, 34.924606, 43.180557>,  <38.715252, 34.776089, 43.279579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357288, 34.924606, 43.180557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023925, 0.514028, 0.857440,
		0.445614, 0.773251, -0.451123,
		-0.894906, 0.371293, -0.247558,
		38.088818, 35.035995, 43.106289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815548, 35.509087, 43.423870>,  <38.715252, 34.776089, 43.279579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815548, 35.509087, 43.423870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427067, 35.416954, 43.399490>,  <38.193977, 35.361675, 43.384861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427067, 35.416954, 43.399490>,  <38.815548, 35.509087, 43.423870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427067, 35.416954, 43.399490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174017, 0.510984, 0.841792,
		-0.162748, 0.828156, -0.536350,
		-0.971201, -0.230334, -0.060952,
		38.135708, 35.347855, 43.381207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491638, 36.191730, 43.314110>,  <38.815548, 35.509087, 43.423870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491638, 36.191730, 43.314110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.242985, 35.925541, 43.479382>,  <38.093792, 35.765827, 43.578545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.242985, 35.925541, 43.479382>,  <38.491638, 36.191730, 43.314110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242985, 35.925541, 43.479382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114675, 0.599113, 0.792410,
		-0.774867, 0.445208, -0.448743,
		-0.621635, -0.665472, 0.413178,
		38.056496, 35.725899, 43.603336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019058, 36.621532, 43.520348>,  <38.491638, 36.191730, 43.314110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019058, 36.621532, 43.520348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988201, 36.282845, 43.730911>,  <37.969688, 36.079632, 43.857250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988201, 36.282845, 43.730911>,  <38.019058, 36.621532, 43.520348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988201, 36.282845, 43.730911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119139, 0.532031, 0.838301,
		-0.989876, 0.001952, -0.141919,
		-0.077142, -0.846723, 0.526412,
		37.965057, 36.028828, 43.888836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356976, 36.662868, 44.013214>,  <38.019058, 36.621532, 43.520348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356976, 36.662868, 44.013214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594688, 36.380531, 44.167416>,  <37.737316, 36.211128, 44.259937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594688, 36.380531, 44.167416>,  <37.356976, 36.662868, 44.013214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594688, 36.380531, 44.167416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096288, 0.413433, 0.905429,
		-0.798470, -0.575201, 0.177732,
		0.594284, -0.705845, 0.385500,
		37.772972, 36.168777, 44.283066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981552, 36.568150, 44.630070>,  <37.356976, 36.662868, 44.013214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981552, 36.568150, 44.630070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330902, 36.375961, 44.661968>,  <37.540512, 36.260647, 44.681107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330902, 36.375961, 44.661968>,  <36.981552, 36.568150, 44.630070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330902, 36.375961, 44.661968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016587, 0.192976, 0.981063,
		-0.486763, -0.855515, 0.176510,
		0.873376, -0.480473, 0.079743,
		37.592915, 36.231819, 44.685890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910004, 36.179066, 45.233589>,  <36.981552, 36.568150, 44.630070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910004, 36.179066, 45.233589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305153, 36.194553, 45.173439>,  <37.542240, 36.203846, 45.137348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305153, 36.194553, 45.173439>,  <36.910004, 36.179066, 45.233589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305153, 36.194553, 45.173439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145990, 0.098262, 0.984394,
		0.052886, -0.994407, 0.091418,
		0.987871, 0.038715, -0.150370,
		37.601513, 36.206169, 45.128326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235561, 35.674763, 45.653889>,  <36.910004, 36.179066, 45.233589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235561, 35.674763, 45.653889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515087, 35.948048, 45.569145>,  <37.682804, 36.112019, 45.518299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515087, 35.948048, 45.569145>,  <37.235561, 35.674763, 45.653889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515087, 35.948048, 45.569145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229599, 0.066271, 0.971026,
		0.677455, -0.727209, -0.110554,
		0.698813, 0.683209, -0.211862,
		37.724731, 36.153011, 45.505585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830269, 35.461807, 46.076984>,  <37.235561, 35.674763, 45.653889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830269, 35.461807, 46.076984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918797, 35.842579, 45.992275>,  <37.971912, 36.071041, 45.941448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918797, 35.842579, 45.992275>,  <37.830269, 35.461807, 46.076984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918797, 35.842579, 45.992275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174134, 0.175092, 0.969030,
		0.959529, -0.251342, -0.127012,
		0.221320, 0.951930, -0.211773,
		37.985191, 36.128159, 45.928741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500824, 35.625340, 46.474560>,  <37.830269, 35.461807, 46.076984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500824, 35.625340, 46.474560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302574, 35.965008, 46.401596>,  <38.183624, 36.168808, 46.357819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302574, 35.965008, 46.401596>,  <38.500824, 35.625340, 46.474560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302574, 35.965008, 46.401596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143366, 0.287119, 0.947105,
		0.856623, 0.443258, -0.264045,
		-0.495624, 0.849167, -0.182405,
		38.153889, 36.219757, 46.346874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763683, 36.182457, 46.860409>,  <38.500824, 35.625340, 46.474560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763683, 36.182457, 46.860409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405109, 36.322006, 46.751095>,  <38.189964, 36.405735, 46.685505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405109, 36.322006, 46.751095>,  <38.763683, 36.182457, 46.860409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405109, 36.322006, 46.751095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138281, 0.365680, 0.920411,
		0.421045, 0.862881, -0.279567,
		-0.896437, 0.348876, -0.273288,
		38.136177, 36.426670, 46.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.035820, 37.095947, 46.816540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403854, 36.939743, 46.828770>,  <33.624676, 36.846020, 46.836105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403854, 36.939743, 46.828770>,  <33.035820, 37.095947, 46.816540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403854, 36.939743, 46.828770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115970, 0.197025, -0.973515,
		0.374147, 0.899267, 0.226569,
		0.920090, -0.390513, 0.030572,
		33.679882, 36.822590, 46.837940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521477, 37.601509, 46.431255>,  <33.035820, 37.095947, 46.816540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521477, 37.601509, 46.431255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655529, 37.224670, 46.435921>,  <33.735958, 36.998566, 46.438721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655529, 37.224670, 46.435921>,  <33.521477, 37.601509, 46.431255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655529, 37.224670, 46.435921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294946, 0.093151, -0.950963,
		0.894816, 0.322133, 0.309087,
		0.335128, -0.942101, 0.011659,
		33.756069, 36.942039, 46.439419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068188, 37.659607, 46.014709>,  <33.521477, 37.601509, 46.431255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068188, 37.659607, 46.014709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007236, 37.264977, 46.038181>,  <33.970665, 37.028198, 46.052265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007236, 37.264977, 46.038181>,  <34.068188, 37.659607, 46.014709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007236, 37.264977, 46.038181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393042, -0.114969, -0.912305,
		0.906807, -0.115951, 0.405285,
		-0.152378, -0.986579, 0.058681,
		33.961521, 36.969002, 46.055786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732044, 37.359821, 45.733665>,  <34.068188, 37.659607, 46.014709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732044, 37.359821, 45.733665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446865, 37.079567, 45.722267>,  <34.275757, 36.911415, 45.715427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446865, 37.079567, 45.722267>,  <34.732044, 37.359821, 45.733665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446865, 37.079567, 45.722267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372796, -0.344304, -0.861672,
		0.593908, -0.624951, 0.506666,
		-0.712950, -0.700636, -0.028495,
		34.232979, 36.869377, 45.713718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082817, 36.757221, 45.461994>,  <34.732044, 37.359821, 45.733665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082817, 36.757221, 45.461994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.698471, 36.662758, 45.404068>,  <34.467865, 36.606079, 45.369312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.698471, 36.662758, 45.404068>,  <35.082817, 36.757221, 45.461994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698471, 36.662758, 45.404068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220115, -0.333424, -0.916721,
		0.168206, -0.912720, 0.372356,
		-0.960862, -0.236159, -0.144819,
		34.410213, 36.591911, 45.360622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072220, 36.149746, 45.139050>,  <35.082817, 36.757221, 45.461994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072220, 36.149746, 45.139050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703579, 36.264088, 45.034031>,  <34.482395, 36.332695, 44.971020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703579, 36.264088, 45.034031>,  <35.072220, 36.149746, 45.139050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703579, 36.264088, 45.034031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136959, -0.393402, -0.909108,
		-0.363157, -0.873798, 0.323412,
		-0.921607, 0.285854, -0.262541,
		34.427097, 36.349846, 44.955269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875648, 35.690445, 44.701591>,  <35.072220, 36.149746, 45.139050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875648, 35.690445, 44.701591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594189, 35.965137, 44.628613>,  <34.425312, 36.129951, 44.584824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594189, 35.965137, 44.628613>,  <34.875648, 35.690445, 44.701591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594189, 35.965137, 44.628613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050620, -0.207672, -0.976888,
		-0.708745, -0.696619, 0.111366,
		-0.703646, 0.686727, -0.182450,
		34.383095, 36.171154, 44.573879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621269, 35.334042, 44.182251>,  <34.875648, 35.690445, 44.701591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621269, 35.334042, 44.182251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506104, 35.716610, 44.162819>,  <34.437004, 35.946152, 44.151161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506104, 35.716610, 44.162819>,  <34.621269, 35.334042, 44.182251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506104, 35.716610, 44.162819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030663, -0.041497, -0.998668,
		-0.957164, -0.289024, -0.017380,
		-0.287918, 0.956422, -0.048582,
		34.419727, 36.003536, 44.148243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019817, 35.152260, 43.990757>,  <34.621269, 35.334042, 44.182251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019817, 35.152260, 43.990757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135563, 35.521179, 43.888287>,  <34.205009, 35.742531, 43.826805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135563, 35.521179, 43.888287>,  <34.019817, 35.152260, 43.990757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135563, 35.521179, 43.888287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066096, -0.247736, -0.966570,
		-0.954933, 0.296626, -0.010726,
		0.289367, 0.922301, -0.256177,
		34.222374, 35.797871, 43.811432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497837, 35.432430, 43.444912>,  <34.019817, 35.152260, 43.990757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497837, 35.432430, 43.444912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831692, 35.651142, 43.418346>,  <34.032005, 35.782372, 43.402409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831692, 35.651142, 43.418346>,  <33.497837, 35.432430, 43.444912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831692, 35.651142, 43.418346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066969, -0.018946, -0.997575,
		-0.546714, 0.837061, 0.020804,
		0.834637, 0.546782, -0.066415,
		34.082085, 35.815178, 43.398422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318275, 36.022362, 43.053337>,  <33.497837, 35.432430, 43.444912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318275, 36.022362, 43.053337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708515, 35.941166, 43.019852>,  <33.942657, 35.892448, 42.999760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708515, 35.941166, 43.019852>,  <33.318275, 36.022362, 43.053337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708515, 35.941166, 43.019852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038741, 0.216131, -0.975595,
		0.216131, 0.955030, 0.202992,
		0.975595, -0.202992, -0.083711,
		34.001194, 35.880268, 42.994740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591728, 36.428215, 42.493324>,  <33.318275, 36.022362, 43.053337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591728, 36.428215, 42.493324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898724, 36.175541, 42.537045>,  <34.082920, 36.023937, 42.563278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898724, 36.175541, 42.537045>,  <33.591728, 36.428215, 42.493324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898724, 36.175541, 42.537045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265612, 0.158158, -0.951019,
		0.583454, 0.758923, 0.289166,
		0.767484, -0.631682, 0.109301,
		34.128967, 35.986038, 42.569836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031708, 36.742054, 42.092438>,  <33.591728, 36.428215, 42.493324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031708, 36.742054, 42.092438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141933, 36.358044, 42.112068>,  <34.208069, 36.127636, 42.123848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141933, 36.358044, 42.112068>,  <34.031708, 36.742054, 42.092438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141933, 36.358044, 42.112068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115814, -0.017528, -0.993116,
		0.954281, 0.279351, 0.106354,
		0.275564, -0.960029, 0.049079,
		34.224602, 36.070034, 42.126793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631077, 36.705967, 41.754566>,  <34.031708, 36.742054, 42.092438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631077, 36.705967, 41.754566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.445396, 36.351677, 41.753963>,  <34.333988, 36.139103, 41.753601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.445396, 36.351677, 41.753963>,  <34.631077, 36.705967, 41.754566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445396, 36.351677, 41.753963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268267, 0.142214, -0.952790,
		0.844128, -0.441880, -0.303628,
		-0.464199, -0.885730, -0.001505,
		34.306137, 36.085957, 41.753513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201694, 37.136543, 41.733414>,  <34.631077, 36.705967, 41.754566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201694, 37.136543, 41.733414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251778, 37.458584, 41.501507>,  <35.281830, 37.651810, 41.362362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251778, 37.458584, 41.501507>,  <35.201694, 37.136543, 41.733414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251778, 37.458584, 41.501507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112946, 0.592133, 0.797886,
		0.985680, -0.034421, 0.165075,
		0.125211, 0.805105, -0.579766,
		35.289341, 37.700115, 41.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805305, 37.533916, 41.925293>,  <35.201694, 37.136543, 41.733414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805305, 37.533916, 41.925293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547607, 37.777740, 41.740520>,  <35.392990, 37.924034, 41.629658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547607, 37.777740, 41.740520>,  <35.805305, 37.533916, 41.925293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547607, 37.777740, 41.740520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152641, 0.489347, 0.858627,
		0.749431, 0.623677, -0.222215,
		-0.644246, 0.609563, -0.461931,
		35.354332, 37.960609, 41.601940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862366, 38.037983, 42.310619>,  <35.805305, 37.533916, 41.925293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862366, 38.037983, 42.310619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554058, 38.187752, 42.104427>,  <35.369072, 38.277615, 41.980713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554058, 38.187752, 42.104427>,  <35.862366, 38.037983, 42.310619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554058, 38.187752, 42.104427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241644, 0.576829, 0.780306,
		0.589509, 0.725999, -0.354126,
		-0.770771, 0.374425, -0.515479,
		35.322826, 38.300079, 41.949783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980400, 38.773777, 42.308228>,  <35.862366, 38.037983, 42.310619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980400, 38.773777, 42.308228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595314, 38.671238, 42.273643>,  <35.364262, 38.609715, 42.252895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595314, 38.671238, 42.273643>,  <35.980400, 38.773777, 42.308228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595314, 38.671238, 42.273643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235566, 0.637175, 0.733837,
		-0.133025, 0.726840, -0.673801,
		-0.962711, -0.256343, -0.086458,
		35.306499, 38.594334, 42.247707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610195, 39.410088, 42.495628>,  <35.980400, 38.773777, 42.308228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610195, 39.410088, 42.495628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333248, 39.122028, 42.513580>,  <35.167080, 38.949192, 42.524353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333248, 39.122028, 42.513580>,  <35.610195, 39.410088, 42.495628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333248, 39.122028, 42.513580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385203, 0.421503, 0.820947,
		-0.610120, 0.551109, -0.569238,
		-0.692367, -0.720149, 0.044879,
		35.125538, 38.905983, 42.527042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005066, 39.707306, 42.593452>,  <35.610195, 39.410088, 42.495628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005066, 39.707306, 42.593452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945381, 39.340244, 42.740768>,  <34.909573, 39.120007, 42.829159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945381, 39.340244, 42.740768>,  <35.005066, 39.707306, 42.593452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945381, 39.340244, 42.740768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304265, 0.397000, 0.865918,
		-0.940829, 0.017145, -0.338448,
		-0.149210, -0.917659, 0.368293,
		34.900620, 39.064945, 42.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244240, 39.683880, 42.955147>,  <35.005066, 39.707306, 42.593452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244240, 39.683880, 42.955147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477894, 39.396469, 43.106144>,  <34.618088, 39.224022, 43.196743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477894, 39.396469, 43.106144>,  <34.244240, 39.683880, 42.955147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477894, 39.396469, 43.106144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152272, 0.359813, 0.920515,
		-0.797243, -0.595188, 0.100768,
		0.584137, -0.718530, 0.377489,
		34.653133, 39.180908, 43.219391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948097, 39.538525, 43.602310>,  <34.244240, 39.683880, 42.955147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948097, 39.538525, 43.602310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282265, 39.324524, 43.652664>,  <34.482765, 39.196125, 43.682877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282265, 39.324524, 43.652664>,  <33.948097, 39.538525, 43.602310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282265, 39.324524, 43.652664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076026, 0.114355, 0.990527,
		-0.544329, -0.837076, 0.054860,
		0.835420, -0.535001, 0.125886,
		34.532890, 39.164024, 43.690430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777042, 38.890671, 44.010178>,  <33.948097, 39.538525, 43.602310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777042, 38.890671, 44.010178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169071, 38.959194, 44.050404>,  <34.404289, 39.000309, 44.074539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169071, 38.959194, 44.050404>,  <33.777042, 38.890671, 44.010178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169071, 38.959194, 44.050404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072864, -0.160955, 0.984268,
		0.184805, -0.971980, -0.145264,
		0.980070, 0.171313, 0.100567,
		34.463093, 39.010590, 44.080574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896309, 38.692093, 44.658001>,  <33.777042, 38.890671, 44.010178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896309, 38.692093, 44.658001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264664, 38.837261, 44.601070>,  <34.485676, 38.924362, 44.566914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264664, 38.837261, 44.601070>,  <33.896309, 38.692093, 44.658001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264664, 38.837261, 44.601070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133438, 0.049586, 0.989816,
		0.366280, -0.930500, -0.002764,
		0.920887, 0.362919, -0.142326,
		34.540932, 38.946136, 44.558372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406120, 38.324356, 45.048973>,  <33.896309, 38.692093, 44.658001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406120, 38.324356, 45.048973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567410, 38.687893, 45.006237>,  <34.664185, 38.906013, 44.980595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567410, 38.687893, 45.006237>,  <34.406120, 38.324356, 45.048973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567410, 38.687893, 45.006237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211195, 0.021177, 0.977215,
		0.890397, -0.416600, -0.183404,
		0.403223, 0.908843, -0.106839,
		34.688377, 38.960545, 44.974186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069069, 38.319382, 45.169270>,  <34.406120, 38.324356, 45.048973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069069, 38.319382, 45.169270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952583, 38.695679, 45.238785>,  <34.882690, 38.921455, 45.280495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952583, 38.695679, 45.238785>,  <35.069069, 38.319382, 45.169270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952583, 38.695679, 45.238785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291513, -0.085763, 0.952715,
		0.911161, 0.328109, -0.249262,
		-0.291217, 0.940739, 0.173792,
		34.865219, 38.977901, 45.290924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497112, 38.568333, 45.676056>,  <35.069069, 38.319382, 45.169270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497112, 38.568333, 45.676056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203754, 38.839287, 45.698956>,  <35.027740, 39.001862, 45.712696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203754, 38.839287, 45.698956>,  <35.497112, 38.568333, 45.676056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203754, 38.839287, 45.698956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166874, 0.097760, 0.981120,
		0.659003, 0.729101, -0.184736,
		-0.733395, 0.677389, 0.057244,
		34.983734, 39.042503, 45.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700066, 39.120529, 46.030102>,  <35.497112, 38.568333, 45.676056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700066, 39.120529, 46.030102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301853, 39.129753, 46.066723>,  <35.062923, 39.135288, 46.088696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301853, 39.129753, 46.066723>,  <35.700066, 39.120529, 46.030102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301853, 39.129753, 46.066723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093272, 0.089784, 0.991584,
		0.014650, 0.995694, -0.091534,
		-0.995533, 0.023065, 0.091555,
		35.003193, 39.136673, 46.094189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317284, 39.567299, 46.041058>,  <35.700066, 39.120529, 46.030102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317284, 39.567299, 46.041058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717255, 39.563480, 46.038292>,  <36.957237, 39.561188, 46.036633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717255, 39.563480, 46.038292>,  <36.317284, 39.567299, 46.041058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717255, 39.563480, 46.038292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009437, -0.296957, -0.954844,
		0.007061, 0.954843, -0.297026,
		0.999931, -0.009545, -0.006915,
		37.017235, 39.560616, 46.036217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531212, 39.946716, 45.469223>,  <36.317284, 39.567299, 46.041058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531212, 39.946716, 45.469223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.841095, 39.708488, 45.554188>,  <37.027027, 39.565552, 45.605167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.841095, 39.708488, 45.554188>,  <36.531212, 39.946716, 45.469223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841095, 39.708488, 45.554188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003599, -0.331762, -0.943356,
		0.632306, 0.731592, -0.254876,
		0.774710, -0.595573, 0.212408,
		37.073509, 39.529816, 45.617908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050110, 40.090721, 44.894161>,  <36.531212, 39.946716, 45.469223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050110, 40.090721, 44.894161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160702, 39.726955, 45.018433>,  <37.227058, 39.508694, 45.092995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160702, 39.726955, 45.018433>,  <37.050110, 40.090721, 44.894161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160702, 39.726955, 45.018433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220298, -0.254694, -0.941594,
		0.935429, 0.328774, 0.129925,
		0.276480, -0.909417, 0.310676,
		37.243645, 39.454132, 45.111637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605816, 39.947968, 44.535198>,  <37.050110, 40.090721, 44.894161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605816, 39.947968, 44.535198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501366, 39.591476, 44.683533>,  <37.438694, 39.377583, 44.772533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501366, 39.591476, 44.683533>,  <37.605816, 39.947968, 44.535198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501366, 39.591476, 44.683533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194057, -0.424792, -0.884247,
		0.945597, -0.158939, 0.283875,
		-0.261129, -0.891229, 0.370839,
		37.423027, 39.324108, 44.794785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221733, 39.467808, 44.385689>,  <37.605816, 39.947968, 44.535198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221733, 39.467808, 44.385689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.888870, 39.250931, 44.432247>,  <37.689152, 39.120804, 44.460182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.888870, 39.250931, 44.432247>,  <38.221733, 39.467808, 44.385689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888870, 39.250931, 44.432247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131244, -0.396484, -0.908612,
		0.538792, -0.740828, 0.401095,
		-0.832153, -0.542194, 0.116393,
		37.639225, 39.088272, 44.467167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481674, 38.896271, 44.135071>,  <38.221733, 39.467808, 44.385689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481674, 38.896271, 44.135071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083122, 38.862690, 44.129734>,  <37.843990, 38.842541, 44.126534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083122, 38.862690, 44.129734>,  <38.481674, 38.896271, 44.135071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083122, 38.862690, 44.129734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045269, -0.391198, -0.919193,
		0.071947, -0.916470, 0.393583,
		-0.996381, -0.083950, -0.013342,
		37.784206, 38.837505, 44.125732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305515, 38.148872, 44.061134>,  <38.481674, 38.896271, 44.135071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305515, 38.148872, 44.061134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.978252, 38.347115, 43.944519>,  <37.781895, 38.466061, 43.874550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.978252, 38.347115, 43.944519>,  <38.305515, 38.148872, 44.061134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978252, 38.347115, 43.944519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010150, -0.519397, -0.854473,
		-0.574908, -0.696132, 0.429978,
		-0.818155, 0.495607, -0.291540,
		37.732803, 38.495796, 43.857056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858978, 37.602776, 43.882988>,  <38.305515, 38.148872, 44.061134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858978, 37.602776, 43.882988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760048, 37.943867, 43.698952>,  <37.700691, 38.148521, 43.588531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760048, 37.943867, 43.698952>,  <37.858978, 37.602776, 43.882988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760048, 37.943867, 43.698952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020347, -0.479309, -0.877410,
		-0.968720, -0.207641, 0.135895,
		-0.247322, 0.852729, -0.460092,
		37.685852, 38.199684, 43.560925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287952, 37.506035, 43.442520>,  <37.858978, 37.602776, 43.882988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287952, 37.506035, 43.442520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.469227, 37.829170, 43.291775>,  <37.577991, 38.023052, 43.201328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.469227, 37.829170, 43.291775>,  <37.287952, 37.506035, 43.442520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469227, 37.829170, 43.291775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234540, -0.299813, -0.924718,
		-0.860007, 0.507459, 0.053599,
		0.453186, 0.807835, -0.376861,
		37.605183, 38.071522, 43.178715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854912, 37.760738, 42.873283>,  <37.287952, 37.506035, 43.442520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854912, 37.760738, 42.873283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209534, 37.936489, 42.815372>,  <37.422306, 38.041939, 42.780624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209534, 37.936489, 42.815372>,  <36.854912, 37.760738, 42.873283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209534, 37.936489, 42.815372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043531, -0.390802, -0.919445,
		-0.460563, 0.808840, -0.365595,
		0.886559, 0.439377, -0.144779,
		37.475502, 38.068302, 42.771938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744438, 38.163826, 42.246681>,  <36.854912, 37.760738, 42.873283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744438, 38.163826, 42.246681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143536, 38.160561, 42.273327>,  <37.382996, 38.158604, 42.289314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143536, 38.160561, 42.273327>,  <36.744438, 38.163826, 42.246681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143536, 38.160561, 42.273327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064636, -0.150070, -0.986560,
		0.018046, 0.988642, -0.149204,
		0.997746, -0.008159, 0.066610,
		37.442860, 38.158112, 42.293308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069687, 38.683231, 41.742619>,  <36.744438, 38.163826, 42.246681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069687, 38.683231, 41.742619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350689, 38.407234, 41.812359>,  <37.519291, 38.241634, 41.854202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350689, 38.407234, 41.812359>,  <37.069687, 38.683231, 41.742619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350689, 38.407234, 41.812359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309390, 0.075469, -0.947936,
		0.640912, 0.719870, 0.266494,
		0.702502, -0.689994, 0.174351,
		37.561440, 38.200237, 41.864666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398445, 38.808994, 41.195877>,  <37.069687, 38.683231, 41.742619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398445, 38.808994, 41.195877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.576347, 38.489132, 41.357239>,  <37.683090, 38.297215, 41.454056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.576347, 38.489132, 41.357239>,  <37.398445, 38.808994, 41.195877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576347, 38.489132, 41.357239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502590, -0.149985, -0.851415,
		0.741346, 0.581422, 0.335193,
		0.444757, -0.799658, 0.403408,
		37.709774, 38.249233, 41.478260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168987, 38.786713, 41.045597>,  <37.398445, 38.808994, 41.195877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168987, 38.786713, 41.045597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057648, 38.406193, 41.098576>,  <37.990845, 38.177879, 41.130363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057648, 38.406193, 41.098576>,  <38.168987, 38.786713, 41.045597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057648, 38.406193, 41.098576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483998, -0.258032, -0.836161,
		0.829619, -0.168642, 0.532252,
		-0.278350, -0.951304, 0.132446,
		37.974144, 38.120800, 41.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.552774, 43.985733, 35.564362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539223, 43.844891, 35.190224>,  <27.531092, 43.760384, 34.965740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539223, 43.844891, 35.190224>,  <27.552774, 43.985733, 35.564362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539223, 43.844891, 35.190224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186705, -0.917177, 0.352033,
		-0.981832, 0.186560, -0.034668,
		-0.033878, -0.352110, -0.935346,
		27.529058, 43.739258, 34.909618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942535, 43.544014, 35.484886>,  <27.552774, 43.985733, 35.564362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942535, 43.544014, 35.484886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164345, 43.413067, 35.178856>,  <27.297430, 43.334499, 34.995239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164345, 43.413067, 35.178856>,  <26.942535, 43.544014, 35.484886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164345, 43.413067, 35.178856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340118, -0.928235, 0.150665,
		-0.759488, 0.176667, -0.626073,
		0.554525, -0.327366, -0.765071,
		27.330702, 43.314857, 34.949333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450506, 43.132484, 35.111961>,  <26.942535, 43.544014, 35.484886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450506, 43.132484, 35.111961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816010, 42.999084, 35.019157>,  <27.035311, 42.919044, 34.963474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816010, 42.999084, 35.019157>,  <26.450506, 43.132484, 35.111961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816010, 42.999084, 35.019157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312671, -0.941927, 0.122520,
		-0.259397, -0.039410, -0.964966,
		0.913756, -0.333498, -0.232011,
		27.090136, 42.899036, 34.949554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339851, 42.519775, 35.138012>,  <26.450506, 43.132484, 35.111961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339851, 42.519775, 35.138012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734255, 42.482674, 35.082611>,  <26.970898, 42.460415, 35.049370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734255, 42.482674, 35.082611>,  <26.339851, 42.519775, 35.138012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734255, 42.482674, 35.082611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091774, -0.995689, 0.013447,
		-0.139151, -0.000548, -0.990271,
		0.986009, -0.092752, -0.138501,
		27.030058, 42.454849, 35.041061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326334, 42.179829, 34.583084>,  <26.339851, 42.519775, 35.138012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326334, 42.179829, 34.583084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.677408, 42.102676, 34.758568>,  <26.888052, 42.056385, 34.863857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.677408, 42.102676, 34.758568>,  <26.326334, 42.179829, 34.583084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677408, 42.102676, 34.758568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166565, -0.981136, -0.098123,
		0.449359, 0.013048, -0.893256,
		0.877686, -0.192877, 0.438709,
		26.940714, 42.044815, 34.890179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783760, 41.790127, 34.098545>,  <26.326334, 42.179829, 34.583084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783760, 41.790127, 34.098545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942741, 41.706650, 34.455975>,  <27.038130, 41.656563, 34.670433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942741, 41.706650, 34.455975>,  <26.783760, 41.790127, 34.098545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942741, 41.706650, 34.455975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169677, -0.973717, -0.151938,
		0.901799, -0.091231, -0.422416,
		0.397452, -0.208692, 0.893577,
		27.061977, 41.644043, 34.724049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059111, 41.147743, 34.000118>,  <26.783760, 41.790127, 34.098545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059111, 41.147743, 34.000118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052242, 41.141968, 34.400017>,  <27.048120, 41.138504, 34.639957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052242, 41.141968, 34.400017>,  <27.059111, 41.147743, 34.000118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052242, 41.141968, 34.400017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016402, -0.999757, -0.014716,
		0.999718, -0.016650, 0.016931,
		-0.017172, -0.014434, 0.999748,
		27.047091, 41.137638, 34.699940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536472, 40.593372, 34.260250>,  <27.059111, 41.147743, 34.000118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536472, 40.593372, 34.260250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273144, 40.652973, 34.555386>,  <27.115147, 40.688732, 34.732468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273144, 40.652973, 34.555386>,  <27.536472, 40.593372, 34.260250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273144, 40.652973, 34.555386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066775, -0.987909, 0.139920,
		0.749769, 0.042843, 0.660312,
		-0.658322, 0.149000, 0.737842,
		27.075647, 40.697674, 34.776737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621532, 40.075008, 34.607723>,  <27.536472, 40.593372, 34.260250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621532, 40.075008, 34.607723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.265444, 40.192268, 34.747189>,  <27.051790, 40.262627, 34.830868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.265444, 40.192268, 34.747189>,  <27.621532, 40.075008, 34.607723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265444, 40.192268, 34.747189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198188, -0.938422, 0.282995,
		0.410152, 0.182828, 0.893504,
		-0.890223, 0.293153, 0.348661,
		26.998377, 40.280212, 34.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580547, 39.755161, 35.232975>,  <27.621532, 40.075008, 34.607723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580547, 39.755161, 35.232975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211142, 39.848068, 35.110878>,  <26.989498, 39.903812, 35.037621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211142, 39.848068, 35.110878>,  <27.580547, 39.755161, 35.232975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211142, 39.848068, 35.110878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299705, -0.933606, 0.196356,
		-0.239370, 0.272821, 0.931811,
		-0.923514, 0.232267, -0.305243,
		26.934088, 39.917747, 35.019306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997728, 39.374424, 35.627548>,  <27.580547, 39.755161, 35.232975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997728, 39.374424, 35.627548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808748, 39.473816, 35.289307>,  <26.695360, 39.533451, 35.086361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808748, 39.473816, 35.289307>,  <26.997728, 39.374424, 35.627548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808748, 39.473816, 35.289307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289943, -0.949851, -0.117119,
		-0.832300, 0.189844, 0.520803,
		-0.472450, 0.248481, -0.845605,
		26.667013, 39.548359, 35.035625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212257, 39.217133, 35.695694>,  <26.997728, 39.374424, 35.627548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212257, 39.217133, 35.695694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282078, 39.248310, 35.303070>,  <26.323971, 39.267017, 35.067497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282078, 39.248310, 35.303070>,  <26.212257, 39.217133, 35.695694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282078, 39.248310, 35.303070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362106, -0.921924, -0.137605,
		-0.915648, 0.379447, -0.132697,
		0.174551, 0.077947, -0.981558,
		26.334442, 39.271694, 35.008602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719595, 38.868576, 35.395828>,  <26.212257, 39.217133, 35.695694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719595, 38.868576, 35.395828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944971, 38.870731, 35.065372>,  <26.080196, 38.872025, 34.867100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944971, 38.870731, 35.065372>,  <25.719595, 38.868576, 35.395828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944971, 38.870731, 35.065372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314778, -0.923150, -0.220701,
		-0.763840, 0.384402, -0.518443,
		0.563439, 0.005386, -0.826140,
		26.114002, 38.872349, 34.817532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278091, 38.523983, 34.753853>,  <25.719595, 38.868576, 35.395828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278091, 38.523983, 34.753853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674799, 38.488213, 34.717209>,  <25.912825, 38.466751, 34.695221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674799, 38.488213, 34.717209>,  <25.278091, 38.523983, 34.753853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674799, 38.488213, 34.717209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109469, -0.963421, -0.244616,
		-0.066384, 0.252632, -0.965282,
		0.991771, -0.089430, -0.091611,
		25.972330, 38.461384, 34.689724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427952, 38.201725, 34.111088>,  <25.278091, 38.523983, 34.753853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427952, 38.201725, 34.111088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770704, 38.159527, 34.312931>,  <25.976357, 38.134209, 34.434036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770704, 38.159527, 34.312931>,  <25.427952, 38.201725, 34.111088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770704, 38.159527, 34.312931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005750, -0.976822, -0.213976,
		0.515483, 0.186253, -0.836413,
		0.856880, -0.105492, 0.504606,
		26.027769, 38.127880, 34.464314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954849, 37.751328, 33.715969>,  <25.427952, 38.201725, 34.111088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954849, 37.751328, 33.715969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.095881, 37.715050, 34.088520>,  <26.180500, 37.693283, 34.312050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.095881, 37.715050, 34.088520>,  <25.954849, 37.751328, 33.715969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095881, 37.715050, 34.088520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082326, -0.988427, -0.127413,
		0.932154, 0.121599, -0.341031,
		0.352578, -0.090693, 0.931377,
		26.201654, 37.687843, 34.367931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422886, 37.239067, 33.622250>,  <25.954849, 37.751328, 33.715969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422886, 37.239067, 33.622250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.382053, 37.259857, 34.019615>,  <26.357553, 37.272331, 34.258034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.382053, 37.259857, 34.019615>,  <26.422886, 37.239067, 33.622250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382053, 37.259857, 34.019615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111078, -0.991794, 0.063303,
		0.988555, 0.116808, 0.095469,
		-0.102080, 0.051974, 0.993418,
		26.351429, 37.275448, 34.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978245, 36.843758, 33.992264>,  <26.422886, 37.239067, 33.622250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978245, 36.843758, 33.992264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658182, 36.838875, 34.232132>,  <26.466145, 36.835945, 34.376053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658182, 36.838875, 34.232132>,  <26.978245, 36.843758, 33.992264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658182, 36.838875, 34.232132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018583, -0.999818, 0.004436,
		0.599506, 0.014693, 0.800236,
		-0.800155, -0.012211, 0.599669,
		26.418137, 36.835213, 34.412033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160664, 36.405094, 34.551514>,  <26.978245, 36.843758, 33.992264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160664, 36.405094, 34.551514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762636, 36.433174, 34.523468>,  <26.523821, 36.450024, 34.506641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762636, 36.433174, 34.523468>,  <27.160664, 36.405094, 34.551514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762636, 36.433174, 34.523468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076563, -0.992753, 0.092630,
		-0.063099, 0.097541, 0.993229,
		-0.995066, 0.070200, -0.070110,
		26.464117, 36.454235, 34.502434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476658, 35.870296, 34.134293>,  <27.160664, 36.405094, 34.551514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476658, 35.870296, 34.134293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.815567, 35.674053, 34.215710>,  <28.018913, 35.556309, 34.264561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.815567, 35.674053, 34.215710>,  <27.476658, 35.870296, 34.134293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815567, 35.674053, 34.215710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458886, 0.869097, 0.184644,
		-0.267486, -0.063042, 0.961497,
		0.847275, -0.490607, 0.203542,
		28.069750, 35.526871, 34.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772381, 35.994858, 34.913376>,  <27.476658, 35.870296, 34.134293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772381, 35.994858, 34.913376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055197, 35.897034, 34.647961>,  <28.224886, 35.838341, 34.488712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055197, 35.897034, 34.647961>,  <27.772381, 35.994858, 34.913376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055197, 35.897034, 34.647961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549240, 0.780947, 0.297417,
		0.445453, -0.574728, 0.686484,
		0.707041, -0.244559, -0.663539,
		28.267309, 35.823666, 34.448898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370560, 36.143383, 35.293030>,  <27.772381, 35.994858, 34.913376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370560, 36.143383, 35.293030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523769, 36.130856, 34.923748>,  <28.615694, 36.123341, 34.702179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523769, 36.130856, 34.923748>,  <28.370560, 36.143383, 35.293030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523769, 36.130856, 34.923748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512116, 0.838975, 0.184005,
		0.768786, -0.543267, 0.337386,
		0.383023, -0.031320, -0.923208,
		28.638676, 36.121460, 34.646786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062334, 36.322712, 35.366646>,  <28.370560, 36.143383, 35.293030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062334, 36.322712, 35.366646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996458, 36.424160, 34.985374>,  <28.956932, 36.485027, 34.756611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996458, 36.424160, 34.985374>,  <29.062334, 36.322712, 35.366646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996458, 36.424160, 34.985374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433766, 0.886535, 0.160942,
		0.885847, -0.386952, -0.256014,
		-0.164689, 0.253620, -0.953181,
		28.947052, 36.500244, 34.699421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698969, 36.672619, 35.164749>,  <29.062334, 36.322712, 35.366646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698969, 36.672619, 35.164749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438841, 36.775696, 34.878902>,  <29.282764, 36.837540, 34.707394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438841, 36.775696, 34.878902>,  <29.698969, 36.672619, 35.164749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438841, 36.775696, 34.878902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416789, 0.907512, -0.052042,
		0.635116, -0.331690, -0.697573,
		-0.650318, 0.257688, -0.714621,
		29.243746, 36.853001, 34.664516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058800, 36.924419, 34.587959>,  <29.698969, 36.672619, 35.164749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058800, 36.924419, 34.587959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.698694, 37.098549, 34.589512>,  <29.482632, 37.203026, 34.590443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.698694, 37.098549, 34.589512>,  <30.058800, 36.924419, 34.587959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698694, 37.098549, 34.589512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431214, 0.892910, -0.129483,
		-0.059830, -0.114897, -0.991574,
		-0.900264, 0.435328, 0.003878,
		29.428616, 37.229149, 34.590675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031750, 37.356316, 34.013252>,  <30.058800, 36.924419, 34.587959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031750, 37.356316, 34.013252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739447, 37.492710, 34.249802>,  <29.564064, 37.574547, 34.391731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739447, 37.492710, 34.249802>,  <30.031750, 37.356316, 34.013252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739447, 37.492710, 34.249802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330899, 0.934663, -0.130040,
		-0.597074, 0.100655, -0.795847,
		-0.730759, 0.340988, 0.591369,
		29.520218, 37.595005, 34.427212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978088, 37.955982, 33.708012>,  <30.031750, 37.356316, 34.013252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978088, 37.955982, 33.708012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761204, 37.989479, 34.042435>,  <29.631073, 38.009575, 34.243088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761204, 37.989479, 34.042435>,  <29.978088, 37.955982, 33.708012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761204, 37.989479, 34.042435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230933, 0.971555, 0.052458,
		-0.807885, 0.221517, -0.546124,
		-0.542210, 0.083738, 0.836060,
		29.598541, 38.014599, 34.293251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392229, 38.433193, 33.629860>,  <29.978088, 37.955982, 33.708012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392229, 38.433193, 33.629860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486982, 38.420292, 34.018261>,  <29.543835, 38.412552, 34.251301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486982, 38.420292, 34.018261>,  <29.392229, 38.433193, 33.629860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486982, 38.420292, 34.018261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017908, 0.999134, 0.037557,
		-0.971373, -0.026286, 0.236099,
		0.236882, -0.032254, 0.971003,
		29.558046, 38.410614, 34.309563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940750, 38.984589, 33.901226>,  <29.392229, 38.433193, 33.629860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940750, 38.984589, 33.901226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185890, 38.928871, 34.212357>,  <29.332973, 38.895439, 34.399036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185890, 38.928871, 34.212357>,  <28.940750, 38.984589, 33.901226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185890, 38.928871, 34.212357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120158, 0.989321, 0.082501,
		-0.781012, 0.042902, 0.623041,
		0.612848, -0.139298, 0.777826,
		29.369745, 38.887081, 34.445705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805113, 39.519100, 34.392681>,  <28.940750, 38.984589, 33.901226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805113, 39.519100, 34.392681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164019, 39.378319, 34.499298>,  <29.379362, 39.293850, 34.563267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164019, 39.378319, 34.499298>,  <28.805113, 39.519100, 34.392681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164019, 39.378319, 34.499298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342318, 0.935873, 0.083425,
		-0.278808, 0.016387, 0.960207,
		0.897265, -0.351956, 0.266539,
		29.433199, 39.272732, 34.579258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898685, 39.746220, 35.115623>,  <28.805113, 39.519100, 34.392681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898685, 39.746220, 35.115623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239519, 39.673950, 34.919132>,  <29.444019, 39.630589, 34.801235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239519, 39.673950, 34.919132>,  <28.898685, 39.746220, 35.115623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239519, 39.673950, 34.919132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275376, 0.952886, 0.127189,
		0.445108, -0.243649, 0.861692,
		0.852084, -0.180677, -0.491232,
		29.495144, 39.619747, 34.771763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304094, 39.939892, 35.637459>,  <28.898685, 39.746220, 35.115623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304094, 39.939892, 35.637459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524750, 39.957493, 35.304291>,  <29.657143, 39.968052, 35.104389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524750, 39.957493, 35.304291>,  <29.304094, 39.939892, 35.637459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524750, 39.957493, 35.304291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330397, 0.905392, 0.266650,
		0.765855, -0.422290, 0.484910,
		0.551638, 0.044002, -0.832922,
		29.690241, 39.970692, 35.054413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791754, 40.531635, 35.697182>,  <29.304094, 39.939892, 35.637459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791754, 40.531635, 35.697182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854834, 40.474026, 35.306412>,  <29.892681, 40.439461, 35.071949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854834, 40.474026, 35.306412>,  <29.791754, 40.531635, 35.697182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854834, 40.474026, 35.306412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369394, 0.926085, -0.076903,
		0.915794, -0.348744, 0.199247,
		0.157700, -0.144028, -0.976927,
		29.902143, 40.430817, 35.013332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594362, 40.563656, 35.370426>,  <29.791754, 40.531635, 35.697182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594362, 40.563656, 35.370426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329441, 40.665428, 35.088543>,  <30.170488, 40.726494, 34.919411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329441, 40.665428, 35.088543>,  <30.594362, 40.563656, 35.370426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329441, 40.665428, 35.088543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477555, 0.868108, -0.135391,
		0.577317, -0.426208, -0.696456,
		-0.662304, 0.254433, -0.704711,
		30.130751, 40.741756, 34.877129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002966, 40.841034, 34.866245>,  <30.594362, 40.563656, 35.370426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002966, 40.841034, 34.866245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632376, 40.976784, 34.801174>,  <30.410021, 41.058235, 34.762131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632376, 40.976784, 34.801174>,  <31.002966, 40.841034, 34.866245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632376, 40.976784, 34.801174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373461, 0.882518, -0.285814,
		0.046571, -0.325555, -0.944376,
		-0.926476, 0.339377, -0.162681,
		30.354433, 41.078598, 34.752369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038586, 41.223808, 34.247074>,  <31.002966, 40.841034, 34.866245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038586, 41.223808, 34.247074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.690063, 41.335396, 34.408566>,  <30.480949, 41.402348, 34.505463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.690063, 41.335396, 34.408566>,  <31.038586, 41.223808, 34.247074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690063, 41.335396, 34.408566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210758, 0.955689, -0.205523,
		-0.443176, -0.093984, -0.891494,
		-0.871307, 0.278972, 0.403731,
		30.428671, 41.419086, 34.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810068, 41.690731, 33.770443>,  <31.038586, 41.223808, 34.247074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810068, 41.690731, 33.770443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592813, 41.761196, 34.098827>,  <30.462461, 41.803474, 34.295856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592813, 41.761196, 34.098827>,  <30.810068, 41.690731, 33.770443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592813, 41.761196, 34.098827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176063, 0.979901, -0.093784,
		-0.820978, 0.093603, -0.563235,
		-0.543136, 0.176159, 0.820958,
		30.429873, 41.814045, 34.345116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353985, 42.184109, 33.607582>,  <30.810068, 41.690731, 33.770443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353985, 42.184109, 33.607582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.339380, 42.214344, 34.006168>,  <30.330618, 42.232487, 34.245319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.339380, 42.214344, 34.006168>,  <30.353985, 42.184109, 33.607582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339380, 42.214344, 34.006168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252455, 0.965490, -0.063989,
		-0.966919, 0.249228, -0.054336,
		-0.036513, 0.075590, 0.996470,
		30.328426, 42.237022, 34.305111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943316, 42.819702, 33.748634>,  <30.353985, 42.184109, 33.607582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943316, 42.819702, 33.748634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197182, 42.750294, 34.049858>,  <30.349501, 42.708649, 34.230591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197182, 42.750294, 34.049858>,  <29.943316, 42.819702, 33.748634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197182, 42.750294, 34.049858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309181, 0.950091, -0.041649,
		-0.708244, 0.259264, 0.656638,
		0.634664, -0.173523, 0.753055,
		30.387581, 42.698238, 34.275776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871313, 43.450729, 34.305107>,  <29.943316, 42.819702, 33.748634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871313, 43.450729, 34.305107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.223705, 43.276382, 34.378746>,  <30.435141, 43.171776, 34.422928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.223705, 43.276382, 34.378746>,  <29.871313, 43.450729, 34.305107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223705, 43.276382, 34.378746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420637, 0.899644, 0.117070,
		-0.216646, -0.025700, 0.975912,
		0.880982, -0.435867, 0.184094,
		30.487999, 43.145622, 34.433975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100031, 43.824055, 34.877686>,  <29.871313, 43.450729, 34.305107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100031, 43.824055, 34.877686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415098, 43.633003, 34.722019>,  <30.604139, 43.518372, 34.628620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415098, 43.633003, 34.722019>,  <30.100031, 43.824055, 34.877686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415098, 43.633003, 34.722019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490644, 0.868326, -0.072652,
		0.372621, -0.133715, 0.918299,
		0.787669, -0.477630, -0.389163,
		30.651400, 43.489716, 34.605270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781485, 44.023544, 35.271008>,  <30.100031, 43.824055, 34.877686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781485, 44.023544, 35.271008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.896561, 43.897598, 34.909214>,  <30.965607, 43.822033, 34.692139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.896561, 43.897598, 34.909214>,  <30.781485, 44.023544, 35.271008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896561, 43.897598, 34.909214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558426, 0.822406, -0.108672,
		0.778072, -0.473826, 0.412424,
		0.287688, -0.314863, -0.904487,
		30.982866, 43.803139, 34.637867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.776108, 36.982094, 47.056511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.391529, 36.888210, 46.999203>,  <38.160782, 36.831879, 46.964817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.391529, 36.888210, 46.999203>,  <38.776108, 36.982094, 47.056511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391529, 36.888210, 46.999203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229350, 0.397047, 0.888680,
		-0.151698, 0.887279, -0.435572,
		-0.961450, -0.234709, -0.143267,
		38.103092, 36.817799, 46.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340221, 37.540718, 47.276119>,  <38.776108, 36.982094, 47.056511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340221, 37.540718, 47.276119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089912, 37.229218, 47.293808>,  <37.939728, 37.042316, 47.304420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089912, 37.229218, 47.293808>,  <38.340221, 37.540718, 47.276119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089912, 37.229218, 47.293808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288794, 0.283982, 0.914305,
		-0.724570, 0.559380, -0.402607,
		-0.625777, -0.778748, 0.044219,
		37.902180, 36.995594, 47.307076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628429, 37.749149, 47.513760>,  <38.340221, 37.540718, 47.276119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628429, 37.749149, 47.513760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597843, 37.361385, 47.607048>,  <37.579491, 37.128727, 47.663021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597843, 37.361385, 47.607048>,  <37.628429, 37.749149, 47.513760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597843, 37.361385, 47.607048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092978, 0.239823, 0.966354,
		-0.992728, 0.052210, -0.108472,
		-0.076468, -0.969412, 0.233224,
		37.574902, 37.070560, 47.677013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152409, 37.715565, 48.062817>,  <37.628429, 37.749149, 47.513760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152409, 37.715565, 48.062817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336109, 37.360809, 48.082912>,  <37.446331, 37.147957, 48.094971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336109, 37.360809, 48.082912>,  <37.152409, 37.715565, 48.062817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336109, 37.360809, 48.082912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047548, 0.031936, 0.998358,
		-0.887034, -0.460885, -0.027503,
		0.459250, -0.886885, 0.050243,
		37.473885, 37.094746, 48.097984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762192, 37.189735, 48.539845>,  <37.152409, 37.715565, 48.062817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762192, 37.189735, 48.539845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147060, 37.080765, 48.540684>,  <37.377983, 37.015381, 48.541187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147060, 37.080765, 48.540684>,  <36.762192, 37.189735, 48.539845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147060, 37.080765, 48.540684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041544, 0.154332, 0.987145,
		-0.269248, -0.949719, 0.159812,
		0.962174, -0.272426, 0.002098,
		37.435711, 36.999039, 48.541313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726269, 36.758232, 49.027977>,  <36.762192, 37.189735, 48.539845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726269, 36.758232, 49.027977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117306, 36.835728, 48.995060>,  <37.351929, 36.882225, 48.975311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117306, 36.835728, 48.995060>,  <36.726269, 36.758232, 49.027977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117306, 36.835728, 48.995060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093616, -0.050036, 0.994350,
		0.188524, -0.979777, -0.067052,
		0.977597, 0.193736, -0.082290,
		37.410583, 36.893848, 48.970371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010128, 36.421200, 49.540154>,  <36.726269, 36.758232, 49.027977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010128, 36.421200, 49.540154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290333, 36.696434, 49.464455>,  <37.458458, 36.861576, 49.419037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290333, 36.696434, 49.464455>,  <37.010128, 36.421200, 49.540154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290333, 36.696434, 49.464455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237959, 0.024784, 0.970959,
		0.672796, -0.725204, -0.146375,
		0.700515, 0.688088, -0.189243,
		37.500488, 36.902859, 49.407681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499126, 36.128563, 50.058258>,  <37.010128, 36.421200, 49.540154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499126, 36.128563, 50.058258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638836, 36.482979, 49.936314>,  <37.722660, 36.695629, 49.863148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638836, 36.482979, 49.936314>,  <37.499126, 36.128563, 50.058258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638836, 36.482979, 49.936314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481043, 0.109650, 0.869813,
		0.804118, -0.450453, -0.387926,
		0.349274, 0.886041, -0.304859,
		37.743618, 36.748791, 49.844856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225872, 36.158184, 50.155758>,  <37.499126, 36.128563, 50.058258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225872, 36.158184, 50.155758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103714, 36.538742, 50.139893>,  <38.030418, 36.767078, 50.130375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103714, 36.538742, 50.139893>,  <38.225872, 36.158184, 50.155758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103714, 36.538742, 50.139893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433970, 0.176133, 0.883543,
		0.847587, 0.252621, -0.466669,
		-0.305397, 0.951399, -0.039659,
		38.012096, 36.824162, 50.127995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866383, 36.575287, 50.296810>,  <38.225872, 36.158184, 50.155758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866383, 36.575287, 50.296810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.549854, 36.801426, 50.389927>,  <38.359940, 36.937111, 50.445797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.549854, 36.801426, 50.389927>,  <38.866383, 36.575287, 50.296810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549854, 36.801426, 50.389927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431160, 0.246042, 0.868081,
		0.433491, 0.787301, -0.438454,
		-0.791319, 0.565350, 0.232796,
		38.312458, 36.971031, 50.459766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159634, 37.102020, 50.731400>,  <38.866383, 36.575287, 50.296810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159634, 37.102020, 50.731400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768372, 37.126682, 50.810806>,  <38.533615, 37.141479, 50.858452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768372, 37.126682, 50.810806>,  <39.159634, 37.102020, 50.731400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768372, 37.126682, 50.810806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204474, 0.113489, 0.972271,
		0.037416, 0.991624, -0.123617,
		-0.978156, 0.061655, 0.198515,
		38.474926, 37.145180, 50.870361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092541, 37.656933, 51.200832>,  <39.159634, 37.102020, 50.731400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092541, 37.656933, 51.200832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.751053, 37.452251, 51.239460>,  <38.546162, 37.329441, 51.262634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.751053, 37.452251, 51.239460>,  <39.092541, 37.656933, 51.200832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751053, 37.452251, 51.239460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015783, 0.210780, 0.977406,
		-0.520501, 0.832902, -0.188023,
		-0.853715, -0.511708, 0.096566,
		38.494938, 37.298740, 51.268429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875092, 38.005135, 51.734489>,  <39.092541, 37.656933, 51.200832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875092, 38.005135, 51.734489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620377, 37.697086, 51.749550>,  <38.467548, 37.512257, 51.758587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620377, 37.697086, 51.749550>,  <38.875092, 38.005135, 51.734489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620377, 37.697086, 51.749550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193245, 0.206678, 0.959135,
		-0.746430, 0.603490, -0.280432,
		-0.636788, -0.770120, 0.037649,
		38.429340, 37.466049, 51.760845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582207, 38.521732, 51.366379>,  <38.875092, 38.005135, 51.734489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582207, 38.521732, 51.366379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913654, 38.647133, 51.180859>,  <39.112522, 38.722374, 51.069546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913654, 38.647133, 51.180859>,  <38.582207, 38.521732, 51.366379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913654, 38.647133, 51.180859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223543, -0.574269, -0.787555,
		-0.513241, 0.756263, -0.405771,
		0.828620, 0.313499, -0.463796,
		39.162239, 38.741184, 51.041721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877525, 39.192623, 51.335453>,  <38.582207, 38.521732, 51.366379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877525, 39.192623, 51.335453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674500, 39.531517, 51.398140>,  <38.552685, 39.734856, 51.435753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674500, 39.531517, 51.398140>,  <38.877525, 39.192623, 51.335453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674500, 39.531517, 51.398140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438622, -0.097521, -0.893364,
		-0.741610, -0.522183, 0.421117,
		-0.507567, 0.847239, 0.156718,
		38.522228, 39.785690, 51.445156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204758, 39.071445, 50.971817>,  <38.877525, 39.192623, 51.335453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204758, 39.071445, 50.971817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.275173, 39.462875, 51.014549>,  <38.317421, 39.697731, 51.040188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.275173, 39.462875, 51.014549>,  <38.204758, 39.071445, 50.971817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275173, 39.462875, 51.014549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407046, 0.171170, -0.897226,
		-0.896284, 0.114460, 0.428455,
		0.176035, 0.978570, 0.106826,
		38.327984, 39.756447, 51.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556671, 39.458084, 50.815338>,  <38.204758, 39.071445, 50.971817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556671, 39.458084, 50.815338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861458, 39.712448, 50.766308>,  <38.044331, 39.865067, 50.736889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861458, 39.712448, 50.766308>,  <37.556671, 39.458084, 50.815338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861458, 39.712448, 50.766308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415958, 0.335493, -0.845236,
		-0.496370, 0.695029, 0.520146,
		0.761968, 0.635909, -0.122575,
		38.090050, 39.903221, 50.729534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198555, 39.925236, 50.464363>,  <37.556671, 39.458084, 50.815338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198555, 39.925236, 50.464363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584625, 39.996868, 50.388077>,  <37.816265, 40.039848, 50.342304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584625, 39.996868, 50.388077>,  <37.198555, 39.925236, 50.464363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584625, 39.996868, 50.388077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244802, 0.361131, -0.899809,
		-0.092267, 0.915158, 0.392393,
		0.965173, 0.179081, -0.190712,
		37.874176, 40.050594, 50.330864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249321, 40.704346, 50.076969>,  <37.198555, 39.925236, 50.464363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249321, 40.704346, 50.076969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595478, 40.527271, 49.983063>,  <37.803173, 40.421024, 49.926720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595478, 40.527271, 49.983063>,  <37.249321, 40.704346, 50.076969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595478, 40.527271, 49.983063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207981, 0.108921, -0.972049,
		0.455887, 0.890035, 0.002189,
		0.865396, -0.442689, -0.234767,
		37.855099, 40.394466, 49.912632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376717, 41.020756, 49.359570>,  <37.249321, 40.704346, 50.076969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376717, 41.020756, 49.359570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637798, 40.717743, 49.364029>,  <37.794449, 40.535934, 49.366707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637798, 40.717743, 49.364029>,  <37.376717, 41.020756, 49.359570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637798, 40.717743, 49.364029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026065, 0.007741, -0.999630,
		0.757163, 0.652755, 0.024797,
		0.652705, -0.757530, 0.011153,
		37.833611, 40.490482, 49.367374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904709, 41.208977, 48.880848>,  <37.376717, 41.020756, 49.359570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904709, 41.208977, 48.880848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937675, 40.811089, 48.905315>,  <37.957455, 40.572357, 48.919998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937675, 40.811089, 48.905315>,  <37.904709, 41.208977, 48.880848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937675, 40.811089, 48.905315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012683, -0.062423, -0.997969,
		0.996517, 0.081474, -0.017761,
		0.082418, -0.994719, 0.061172,
		37.962402, 40.512672, 48.923668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439556, 41.016376, 48.440613>,  <37.904709, 41.208977, 48.880848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439556, 41.016376, 48.440613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200230, 40.698154, 48.478783>,  <38.056633, 40.507221, 48.501682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200230, 40.698154, 48.478783>,  <38.439556, 41.016376, 48.440613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200230, 40.698154, 48.478783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172106, 0.011289, -0.985014,
		0.782559, -0.605772, -0.143674,
		-0.598315, -0.795558, 0.095423,
		38.020737, 40.459488, 48.507408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735607, 40.415794, 48.066986>,  <38.439556, 41.016376, 48.440613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735607, 40.415794, 48.066986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349010, 40.326408, 48.117527>,  <38.117054, 40.272778, 48.147850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349010, 40.326408, 48.117527>,  <38.735607, 40.415794, 48.066986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349010, 40.326408, 48.117527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085503, -0.183858, -0.979227,
		0.242058, -0.957214, 0.158589,
		-0.966487, -0.223469, 0.126349,
		38.059063, 40.259369, 48.155430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655453, 39.878689, 47.695076>,  <38.735607, 40.415794, 48.066986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655453, 39.878689, 47.695076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271267, 39.978664, 47.744114>,  <38.040756, 40.038651, 47.773537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271267, 39.978664, 47.744114>,  <38.655453, 39.878689, 47.695076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271267, 39.978664, 47.744114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226956, -0.447973, -0.864761,
		-0.161215, -0.858400, 0.486989,
		-0.960469, 0.249937, 0.122599,
		37.983128, 40.053646, 47.780895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227894, 39.304440, 47.605843>,  <38.655453, 39.878689, 47.695076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227894, 39.304440, 47.605843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952370, 39.591450, 47.564491>,  <37.787056, 39.763657, 47.539680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952370, 39.591450, 47.564491>,  <38.227894, 39.304440, 47.605843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952370, 39.591450, 47.564491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314641, -0.424377, -0.849061,
		-0.653098, -0.552317, 0.518081,
		-0.688813, 0.717530, -0.103378,
		37.745724, 39.806709, 47.533478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716778, 38.980831, 47.369808>,  <38.227894, 39.304440, 47.605843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716778, 38.980831, 47.369808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616879, 39.356297, 47.274693>,  <37.556938, 39.581573, 47.217625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616879, 39.356297, 47.274693>,  <37.716778, 38.980831, 47.369808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616879, 39.356297, 47.274693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484474, -0.333753, -0.808637,
		-0.838399, -0.086749, 0.538110,
		-0.249744, 0.938661, -0.237791,
		37.541954, 39.637894, 47.203354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030205, 38.938515, 47.163815>,  <37.716778, 38.980831, 47.369808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030205, 38.938515, 47.163815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194756, 39.271557, 47.015472>,  <37.293488, 39.471382, 46.926468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194756, 39.271557, 47.015472>,  <37.030205, 38.938515, 47.163815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194756, 39.271557, 47.015472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383757, -0.210836, -0.899043,
		-0.826741, 0.512162, 0.232787,
		0.411375, 0.832609, -0.370853,
		37.318169, 39.521339, 46.904217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512390, 39.264740, 46.737705>,  <37.030205, 38.938515, 47.163815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512390, 39.264740, 46.737705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.865253, 39.406372, 46.613499>,  <37.076973, 39.491352, 46.538975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.865253, 39.406372, 46.613499>,  <36.512390, 39.264740, 46.737705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865253, 39.406372, 46.613499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313450, -0.050648, -0.948253,
		-0.351487, 0.933842, 0.066308,
		0.882160, 0.354082, -0.310515,
		37.129902, 39.512596, 46.520344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795574, 39.412003, 46.732254>,  <36.512390, 39.264740, 46.737705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795574, 39.412003, 46.732254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409473, 39.360394, 46.641354>,  <35.177814, 39.329430, 46.586815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409473, 39.360394, 46.641354>,  <35.795574, 39.412003, 46.732254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409473, 39.360394, 46.641354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222564, -0.049815, 0.973644,
		-0.136941, 0.990390, 0.019369,
		-0.965252, -0.129021, -0.227247,
		35.119896, 39.321686, 46.573181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319630, 39.930862, 47.137936>,  <35.795574, 39.412003, 46.732254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319630, 39.930862, 47.137936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119759, 39.601620, 47.029991>,  <34.999836, 39.404076, 46.965225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119759, 39.601620, 47.029991>,  <35.319630, 39.930862, 47.137936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119759, 39.601620, 47.029991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300685, -0.127351, 0.945183,
		-0.812349, 0.553429, -0.183860,
		-0.499677, -0.823103, -0.269861,
		34.969856, 39.354691, 46.949032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699486, 40.013634, 47.511375>,  <35.319630, 39.930862, 47.137936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699486, 40.013634, 47.511375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701698, 39.626991, 47.408897>,  <34.703026, 39.395004, 47.347412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701698, 39.626991, 47.408897>,  <34.699486, 40.013634, 47.511375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701698, 39.626991, 47.408897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224143, -0.250878, 0.941711,
		-0.974541, 0.052217, -0.218046,
		0.005530, -0.966609, -0.256195,
		34.703358, 39.337009, 47.332039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028595, 39.677013, 47.776546>,  <34.699486, 40.013634, 47.511375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028595, 39.677013, 47.776546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292301, 39.383099, 47.712734>,  <34.450523, 39.206749, 47.674446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292301, 39.383099, 47.712734>,  <34.028595, 39.677013, 47.776546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292301, 39.383099, 47.712734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020878, -0.229978, 0.972972,
		-0.751621, -0.638115, -0.166958,
		0.659265, -0.734792, -0.159534,
		34.490082, 39.162663, 47.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810062, 39.125168, 48.162621>,  <34.028595, 39.677013, 47.776546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810062, 39.125168, 48.162621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203556, 39.061340, 48.129612>,  <34.439651, 39.023045, 48.109806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203556, 39.061340, 48.129612>,  <33.810062, 39.125168, 48.162621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203556, 39.061340, 48.129612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079469, -0.025455, 0.996512,
		-0.161114, -0.986859, -0.012360,
		0.983731, -0.159569, -0.082526,
		34.498676, 39.013470, 48.104855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958797, 38.723515, 48.774441>,  <33.810062, 39.125168, 48.162621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958797, 38.723515, 48.774441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342785, 38.785774, 48.681286>,  <34.573177, 38.823132, 48.625393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342785, 38.785774, 48.681286>,  <33.958797, 38.723515, 48.774441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342785, 38.785774, 48.681286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222439, 0.081701, 0.971517,
		0.170246, -0.984427, 0.043807,
		0.959967, 0.155653, -0.232885,
		34.630775, 38.832470, 48.611420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405277, 38.287796, 49.169266>,  <33.958797, 38.723515, 48.774441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405277, 38.287796, 49.169266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627262, 38.608311, 49.079853>,  <34.760452, 38.800617, 49.026207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627262, 38.608311, 49.079853>,  <34.405277, 38.287796, 49.169266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627262, 38.608311, 49.079853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297271, 0.059944, 0.952910,
		0.776950, -0.595274, -0.204932,
		0.554958, 0.801284, -0.223531,
		34.793751, 38.848698, 49.012794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669109, 37.596004, 49.536762>,  <34.405277, 38.287796, 49.169266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669109, 37.596004, 49.536762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331238, 37.388954, 49.591290>,  <34.128513, 37.264725, 49.624004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331238, 37.388954, 49.591290>,  <34.669109, 37.596004, 49.536762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331238, 37.388954, 49.591290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017827, -0.227321, -0.973657,
		0.534978, -0.824857, 0.182785,
		-0.844678, -0.517626, 0.136317,
		34.077835, 37.233665, 49.632183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815346, 37.043816, 49.125317>,  <34.669109, 37.596004, 49.536762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815346, 37.043816, 49.125317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425991, 37.005985, 49.208820>,  <34.192379, 36.983288, 49.258923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425991, 37.005985, 49.208820>,  <34.815346, 37.043816, 49.125317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425991, 37.005985, 49.208820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170659, -0.308890, -0.935662,
		0.152977, -0.946384, 0.284528,
		-0.973382, -0.094577, 0.208762,
		34.133976, 36.977612, 49.271450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668438, 36.375687, 48.963577>,  <34.815346, 37.043816, 49.125317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668438, 36.375687, 48.963577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324280, 36.577126, 48.932301>,  <34.117786, 36.697987, 48.913536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324280, 36.577126, 48.932301>,  <34.668438, 36.375687, 48.963577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324280, 36.577126, 48.932301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057115, -0.057173, -0.996729,
		-0.506416, -0.862047, 0.020429,
		-0.860396, 0.503593, -0.078189,
		34.066162, 36.728203, 48.908844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222511, 35.874210, 48.551891>,  <34.668438, 36.375687, 48.963577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222511, 35.874210, 48.551891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077892, 36.243916, 48.502857>,  <33.991123, 36.465740, 48.473438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077892, 36.243916, 48.502857>,  <34.222511, 35.874210, 48.551891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077892, 36.243916, 48.502857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129773, -0.180085, -0.975053,
		-0.923280, -0.336615, 0.185053,
		-0.361543, 0.924262, -0.122585,
		33.969429, 36.521194, 48.466084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726738, 35.777084, 48.047573>,  <34.222511, 35.874210, 48.551891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726738, 35.777084, 48.047573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.708138, 36.174454, 48.005733>,  <33.696976, 36.412876, 47.980629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.708138, 36.174454, 48.005733>,  <33.726738, 35.777084, 48.047573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708138, 36.174454, 48.005733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152109, -0.110531, -0.982164,
		-0.987269, -0.029764, 0.156249,
		-0.046503, 0.993427, -0.104597,
		33.694187, 36.472481, 47.974354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170448, 35.994583, 47.658463>,  <33.726738, 35.777084, 48.047573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170448, 35.994583, 47.658463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408901, 36.314087, 47.625954>,  <33.551975, 36.505791, 47.606449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408901, 36.314087, 47.625954>,  <33.170448, 35.994583, 47.658463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408901, 36.314087, 47.625954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063422, -0.054065, -0.996521,
		-0.800376, 0.599216, 0.018429,
		0.596135, 0.798760, -0.081276,
		33.587742, 36.553715, 47.601570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931160, 36.389359, 47.073048>,  <33.170448, 35.994583, 47.658463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931160, 36.389359, 47.073048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307167, 36.516605, 47.122303>,  <33.532772, 36.592953, 47.151855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307167, 36.516605, 47.122303>,  <32.931160, 36.389359, 47.073048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307167, 36.516605, 47.122303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076187, 0.156074, -0.984803,
		-0.332497, 0.935118, 0.122477,
		0.940022, 0.318113, 0.123138,
		33.589172, 36.612038, 47.159245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.551384, 35.221313, 52.074951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.540436, 35.510235, 51.798538>,  <36.533867, 35.683590, 51.632690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.540436, 35.510235, 51.798538>,  <36.551384, 35.221313, 52.074951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540436, 35.510235, 51.798538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129865, -0.682861, -0.718913,
		-0.991154, -0.109418, -0.075112,
		-0.027371, 0.722308, -0.691030,
		36.532223, 35.726929, 51.591228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978500, 35.134029, 51.534283>,  <36.551384, 35.221313, 52.074951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978500, 35.134029, 51.534283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317219, 35.305981, 51.408978>,  <36.520451, 35.409153, 51.333794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317219, 35.305981, 51.408978>,  <35.978500, 35.134029, 51.534283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317219, 35.305981, 51.408978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043505, -0.642938, -0.764682,
		-0.530132, 0.633903, -0.563141,
		0.846798, 0.429882, -0.313264,
		36.571259, 35.434944, 51.314999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814465, 35.292683, 50.832180>,  <35.978500, 35.134029, 51.534283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814465, 35.292683, 50.832180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.206226, 35.249710, 50.900558>,  <36.441284, 35.223927, 50.941586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.206226, 35.249710, 50.900558>,  <35.814465, 35.292683, 50.832180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206226, 35.249710, 50.900558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099935, -0.477743, -0.872797,
		0.175433, 0.871906, -0.457168,
		0.979406, -0.107430, 0.170946,
		36.500050, 35.217480, 50.951843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137596, 35.557747, 50.221195>,  <35.814465, 35.292683, 50.832180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137596, 35.557747, 50.221195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408577, 35.336582, 50.415245>,  <36.571163, 35.203884, 50.531677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408577, 35.336582, 50.415245>,  <36.137596, 35.557747, 50.221195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408577, 35.336582, 50.415245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411182, -0.262201, -0.873029,
		0.609910, 0.790909, 0.049720,
		0.677450, -0.552913, 0.485127,
		36.611813, 35.170708, 50.560783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754501, 35.790466, 50.010357>,  <36.137596, 35.557747, 50.221195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754501, 35.790466, 50.010357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786850, 35.410595, 50.131401>,  <36.806259, 35.182671, 50.204029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786850, 35.410595, 50.131401>,  <36.754501, 35.790466, 50.010357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786850, 35.410595, 50.131401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409925, -0.245050, -0.878585,
		0.908527, 0.195100, 0.369479,
		0.080871, -0.949677, 0.302611,
		36.811111, 35.125690, 50.222183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226749, 35.509060, 49.625996>,  <36.754501, 35.790466, 50.010357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226749, 35.509060, 49.625996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.069305, 35.180557, 49.791218>,  <36.974838, 34.983456, 49.890350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.069305, 35.180557, 49.791218>,  <37.226749, 35.509060, 49.625996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069305, 35.180557, 49.791218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286860, -0.536616, -0.793571,
		0.873376, -0.193866, 0.446801,
		-0.393606, -0.821255, 0.413055,
		36.951225, 34.934181, 49.915134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695843, 34.830570, 49.340958>,  <37.226749, 35.509060, 49.625996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695843, 34.830570, 49.340958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.330078, 34.710464, 49.449539>,  <37.110619, 34.638401, 49.514687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.330078, 34.710464, 49.449539>,  <37.695843, 34.830570, 49.340958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330078, 34.710464, 49.449539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003469, -0.664791, -0.747021,
		0.404761, -0.684030, 0.606854,
		-0.914416, -0.300260, 0.271455,
		37.055752, 34.620388, 49.530975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743660, 34.145794, 49.272980>,  <37.695843, 34.830570, 49.340958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743660, 34.145794, 49.272980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.355309, 34.240498, 49.287598>,  <37.122295, 34.297318, 49.296368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.355309, 34.240498, 49.287598>,  <37.743660, 34.145794, 49.272980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355309, 34.240498, 49.287598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181240, -0.626164, -0.758334,
		-0.156655, -0.742876, 0.650841,
		-0.970881, 0.236756, 0.036547,
		37.064045, 34.311523, 49.298561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396305, 33.530113, 49.130871>,  <37.743660, 34.145794, 49.272980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396305, 33.530113, 49.130871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151901, 33.831490, 49.033710>,  <37.005260, 34.012314, 48.975414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151901, 33.831490, 49.033710>,  <37.396305, 33.530113, 49.130871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151901, 33.831490, 49.033710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192933, -0.439312, -0.877372,
		-0.767752, -0.489220, 0.413787,
		-0.611010, 0.753438, -0.242897,
		36.968597, 34.057522, 48.960842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719772, 33.184338, 49.015926>,  <37.396305, 33.530113, 49.130871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719772, 33.184338, 49.015926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.708439, 33.545078, 48.843479>,  <36.701637, 33.761520, 48.740009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.708439, 33.545078, 48.843479>,  <36.719772, 33.184338, 49.015926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708439, 33.545078, 48.843479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350875, -0.412825, -0.840513,
		-0.935993, 0.127455, 0.328133,
		-0.028334, 0.901849, -0.431122,
		36.699940, 33.815632, 48.714142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088726, 33.165047, 48.741684>,  <36.719772, 33.184338, 49.015926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088726, 33.165047, 48.741684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.306843, 33.448238, 48.562160>,  <36.437714, 33.618153, 48.454445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.306843, 33.448238, 48.562160>,  <36.088726, 33.165047, 48.741684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306843, 33.448238, 48.562160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366895, -0.279823, -0.887179,
		-0.753688, 0.648436, 0.107168,
		0.545291, 0.707976, -0.448808,
		36.470428, 33.660633, 48.427517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631611, 33.441727, 48.266117>,  <36.088726, 33.165047, 48.741684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631611, 33.441727, 48.266117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.989311, 33.547230, 48.121479>,  <36.203930, 33.610531, 48.034695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.989311, 33.547230, 48.121479>,  <35.631611, 33.441727, 48.266117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989311, 33.547230, 48.121479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249670, -0.376552, -0.892118,
		-0.371463, 0.888054, -0.270878,
		0.894248, 0.263758, -0.361595,
		36.257587, 33.626358, 48.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964302, 33.781052, 48.338444>,  <35.631611, 33.441727, 48.266117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964302, 33.781052, 48.338444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663723, 33.534645, 48.432976>,  <34.483376, 33.386803, 48.489697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663723, 33.534645, 48.432976>,  <34.964302, 33.781052, 48.338444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663723, 33.534645, 48.432976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051243, 0.302615, 0.951734,
		-0.657799, 0.727289, -0.195833,
		-0.751448, -0.616015, 0.236329,
		34.438290, 33.349842, 48.503876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581741, 34.091625, 48.855541>,  <34.964302, 33.781052, 48.338444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581741, 34.091625, 48.855541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441494, 33.718731, 48.891350>,  <34.357346, 33.494995, 48.912834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441494, 33.718731, 48.891350>,  <34.581741, 34.091625, 48.855541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441494, 33.718731, 48.891350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175938, 0.159458, 0.971401,
		-0.919845, 0.324836, -0.219923,
		-0.350615, -0.932231, 0.089525,
		34.336311, 33.439060, 48.918209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847374, 34.208763, 49.058495>,  <34.581741, 34.091625, 48.855541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847374, 34.208763, 49.058495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948738, 33.840500, 49.177273>,  <34.009556, 33.619541, 49.248539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948738, 33.840500, 49.177273>,  <33.847374, 34.208763, 49.058495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948738, 33.840500, 49.177273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139072, 0.269105, 0.953017,
		-0.957309, -0.282805, -0.059842,
		0.253414, -0.920654, 0.296947,
		34.024761, 33.564304, 49.266357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442532, 34.097450, 49.701332>,  <33.847374, 34.208763, 49.058495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442532, 34.097450, 49.701332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699890, 33.792339, 49.727299>,  <33.854305, 33.609272, 49.742878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699890, 33.792339, 49.727299>,  <33.442532, 34.097450, 49.701332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699890, 33.792339, 49.727299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002159, 0.086603, 0.996240,
		-0.765527, -0.640841, 0.057368,
		0.643400, -0.762773, 0.064913,
		33.892910, 33.563507, 49.746773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114189, 33.523689, 50.081890>,  <33.442532, 34.097450, 49.701332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114189, 33.523689, 50.081890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509983, 33.495895, 50.132622>,  <33.747459, 33.479221, 50.163063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509983, 33.495895, 50.132622>,  <33.114189, 33.523689, 50.081890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509983, 33.495895, 50.132622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124535, 0.036490, 0.991544,
		-0.073524, -0.996916, 0.027453,
		0.989487, -0.069484, 0.126834,
		33.806828, 33.475052, 50.170673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229256, 33.128864, 50.654545>,  <33.114189, 33.523689, 50.081890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229256, 33.128864, 50.654545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592674, 33.291348, 50.615498>,  <33.810726, 33.388840, 50.592068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592674, 33.291348, 50.615498>,  <33.229256, 33.128864, 50.654545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592674, 33.291348, 50.615498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025560, 0.179184, 0.983483,
		0.416996, -0.896038, 0.152414,
		0.908549, 0.406213, -0.097622,
		33.865238, 33.413212, 50.586212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622429, 32.917355, 51.273613>,  <33.229256, 33.128864, 50.654545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622429, 32.917355, 51.273613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850292, 33.209827, 51.123482>,  <33.987011, 33.385311, 51.033401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850292, 33.209827, 51.123482>,  <33.622429, 32.917355, 51.273613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850292, 33.209827, 51.123482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166380, 0.344624, 0.923879,
		0.804868, -0.588738, 0.074663,
		0.569654, 0.731178, -0.375331,
		34.021187, 33.429180, 51.010883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300690, 32.839119, 51.601456>,  <33.622429, 32.917355, 51.273613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300690, 32.839119, 51.601456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243965, 33.210579, 51.464340>,  <34.209930, 33.433456, 51.382072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243965, 33.210579, 51.464340>,  <34.300690, 32.839119, 51.601456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243965, 33.210579, 51.464340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127467, 0.360532, 0.923996,
		0.981653, 0.087338, -0.169499,
		-0.141810, 0.928649, -0.342784,
		34.201424, 33.489174, 51.361504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729450, 33.194668, 52.014538>,  <34.300690, 32.839119, 51.601456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729450, 33.194668, 52.014538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482643, 33.453362, 51.835194>,  <34.334560, 33.608578, 51.727589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482643, 33.453362, 51.835194>,  <34.729450, 33.194668, 52.014538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482643, 33.453362, 51.835194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044032, 0.540480, 0.840204,
		0.785719, 0.538160, -0.305007,
		-0.617014, 0.646734, -0.448362,
		34.297539, 33.647381, 51.700684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060379, 33.789917, 52.093285>,  <34.729450, 33.194668, 52.014538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060379, 33.789917, 52.093285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.677120, 33.894547, 52.046768>,  <34.447163, 33.957325, 52.018856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.677120, 33.894547, 52.046768>,  <35.060379, 33.789917, 52.093285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677120, 33.894547, 52.046768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118614, 0.732515, 0.670337,
		0.260532, 0.628490, -0.732887,
		-0.958151, 0.261575, -0.116295,
		34.389675, 33.973019, 52.011879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095444, 34.493362, 52.049740>,  <35.060379, 33.789917, 52.093285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095444, 34.493362, 52.049740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716648, 34.406544, 52.144478>,  <34.489368, 34.354454, 52.201321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716648, 34.406544, 52.144478>,  <35.095444, 34.493362, 52.049740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716648, 34.406544, 52.144478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031863, 0.670167, 0.741526,
		-0.319670, 0.709767, -0.627728,
		-0.946993, -0.217042, 0.236848,
		34.432549, 34.341431, 52.215534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776207, 35.073303, 52.093357>,  <35.095444, 34.493362, 52.049740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776207, 35.073303, 52.093357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.551968, 34.819729, 52.306473>,  <34.417423, 34.667583, 52.434341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.551968, 34.819729, 52.306473>,  <34.776207, 35.073303, 52.093357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551968, 34.819729, 52.306473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047479, 0.666940, 0.743597,
		-0.826727, 0.391562, -0.403983,
		-0.560597, -0.633932, 0.532786,
		34.383789, 34.629551, 52.466309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222080, 35.515781, 52.349911>,  <34.776207, 35.073303, 52.093357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222080, 35.515781, 52.349911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.228462, 35.204571, 52.601124>,  <34.232292, 35.017845, 52.751850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.228462, 35.204571, 52.601124>,  <34.222080, 35.515781, 52.349911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228462, 35.204571, 52.601124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038457, 0.627172, 0.777931,
		-0.999133, -0.036567, -0.019911,
		0.015959, -0.778022, 0.628034,
		34.233250, 34.971165, 52.789536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717571, 35.678570, 52.769924>,  <34.222080, 35.515781, 52.349911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717571, 35.678570, 52.769924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947441, 35.416130, 52.965591>,  <34.085361, 35.258667, 53.082993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947441, 35.416130, 52.965591>,  <33.717571, 35.678570, 52.769924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947441, 35.416130, 52.965591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087984, 0.544729, 0.833984,
		-0.813641, -0.522306, 0.255314,
		0.574671, -0.656100, 0.489168,
		34.119843, 35.219299, 53.112343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753796, 36.387104, 52.644550>,  <33.717571, 35.678570, 52.769924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753796, 36.387104, 52.644550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.797901, 36.761791, 52.511642>,  <33.824364, 36.986603, 52.431896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.797901, 36.761791, 52.511642>,  <33.753796, 36.387104, 52.644550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797901, 36.761791, 52.511642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034503, -0.337718, -0.940615,
		-0.993303, 0.092253, -0.069558,
		0.110265, 0.936716, -0.332273,
		33.830982, 37.042805, 52.411961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580738, 36.305962, 52.023071>,  <33.753796, 36.387104, 52.644550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580738, 36.305962, 52.023071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.747341, 36.668545, 51.995213>,  <33.847305, 36.886093, 51.978497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.747341, 36.668545, 51.995213>,  <33.580738, 36.305962, 52.023071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747341, 36.668545, 51.995213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169027, -0.152480, -0.973745,
		-0.893279, 0.393805, -0.216726,
		0.416512, 0.906459, -0.069644,
		33.872295, 36.940483, 51.974319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102077, 36.813358, 51.647362>,  <33.580738, 36.305962, 52.023071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102077, 36.813358, 51.647362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.475800, 36.952892, 51.618011>,  <33.700035, 37.036613, 51.600403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.475800, 36.952892, 51.618011>,  <33.102077, 36.813358, 51.647362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475800, 36.952892, 51.618011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107427, 0.079269, -0.991048,
		-0.339893, 0.933827, 0.111536,
		0.934308, 0.348833, -0.073376,
		33.756092, 37.057541, 51.596001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122223, 37.460503, 51.272079>,  <33.102077, 36.813358, 51.647362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122223, 37.460503, 51.272079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.494823, 37.315510, 51.260059>,  <33.718384, 37.228516, 51.252850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.494823, 37.315510, 51.260059>,  <33.122223, 37.460503, 51.272079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494823, 37.315510, 51.260059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008105, 0.061904, -0.998049,
		0.363636, 0.929932, 0.054726,
		0.931506, -0.362483, -0.030047,
		33.774277, 37.206764, 51.251045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374683, 37.948727, 50.866535>,  <33.122223, 37.460503, 51.272079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374683, 37.948727, 50.866535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625343, 37.639595, 50.826439>,  <33.775738, 37.454117, 50.802383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625343, 37.639595, 50.826439>,  <33.374683, 37.948727, 50.866535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625343, 37.639595, 50.826439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004369, 0.125140, -0.992130,
		0.779292, 0.622152, 0.075042,
		0.626646, -0.772831, -0.100238,
		33.813335, 37.407745, 50.796368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766418, 38.157825, 50.410305>,  <33.374683, 37.948727, 50.866535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766418, 38.157825, 50.410305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820267, 37.761826, 50.427177>,  <33.852573, 37.524227, 50.437302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820267, 37.761826, 50.427177>,  <33.766418, 38.157825, 50.410305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820267, 37.761826, 50.427177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111229, -0.027204, -0.993422,
		0.984635, 0.138424, 0.106454,
		0.134617, -0.989999, 0.042182,
		33.860653, 37.464825, 50.439831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257343, 38.084381, 49.868137>,  <33.766418, 38.157825, 50.410305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257343, 38.084381, 49.868137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108482, 37.719868, 49.938633>,  <34.019165, 37.501160, 49.980930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108482, 37.719868, 49.938633>,  <34.257343, 38.084381, 49.868137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108482, 37.719868, 49.938633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100149, -0.228194, -0.968451,
		0.922751, -0.342765, 0.176188,
		-0.372156, -0.911285, 0.176239,
		33.996834, 37.446484, 49.991505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995262, 38.230648, 49.636890>,  <34.257343, 38.084381, 49.868137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995262, 38.230648, 49.636890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.999897, 38.608566, 49.505905>,  <35.002678, 38.835316, 49.427315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.999897, 38.608566, 49.505905>,  <34.995262, 38.230648, 49.636890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999897, 38.608566, 49.505905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465797, 0.284685, 0.837847,
		0.884816, -0.162241, -0.436783,
		0.011588, 0.944792, -0.327465,
		35.003372, 38.892002, 49.407665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677231, 38.438416, 49.796783>,  <34.995262, 38.230648, 49.636890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677231, 38.438416, 49.796783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.458580, 38.770374, 49.752125>,  <35.327389, 38.969551, 49.725330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.458580, 38.770374, 49.752125>,  <35.677231, 38.438416, 49.796783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458580, 38.770374, 49.752125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479979, 0.419776, 0.770330,
		0.686163, 0.367495, -0.627796,
		-0.546626, 0.829901, -0.111645,
		35.294594, 39.019344, 49.718632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146523, 38.939705, 49.958332>,  <35.677231, 38.438416, 49.796783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146523, 38.939705, 49.958332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.815868, 39.164143, 49.975513>,  <35.617474, 39.298805, 49.985825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.815868, 39.164143, 49.975513>,  <36.146523, 38.939705, 49.958332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815868, 39.164143, 49.975513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425447, 0.573185, 0.700324,
		0.368323, 0.597191, -0.712532,
		-0.826640, 0.561090, 0.042956,
		35.567875, 39.332470, 49.988400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255871, 39.650810, 49.782154>,  <36.146523, 38.939705, 49.958332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255871, 39.650810, 49.782154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916370, 39.659805, 49.993481>,  <35.712669, 39.665203, 50.120277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916370, 39.659805, 49.993481>,  <36.255871, 39.650810, 49.782154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916370, 39.659805, 49.993481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321074, 0.815762, 0.481087,
		-0.420163, 0.577951, -0.699597,
		-0.848749, 0.022488, 0.528318,
		35.661747, 39.666553, 50.151978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162327, 40.334038, 49.847637>,  <36.255871, 39.650810, 49.782154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162327, 40.334038, 49.847637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.949997, 40.157253, 50.136883>,  <35.822598, 40.051182, 50.310432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.949997, 40.157253, 50.136883>,  <36.162327, 40.334038, 49.847637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949997, 40.157253, 50.136883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234385, 0.743413, 0.626419,
		-0.814426, 0.502006, -0.291034,
		-0.530825, -0.441958, 0.723117,
		35.790749, 40.024666, 50.353817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956764, 40.911968, 50.238605>,  <36.162327, 40.334038, 49.847637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956764, 40.911968, 50.238605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894627, 40.593880, 50.473042>,  <35.857346, 40.403027, 50.613701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894627, 40.593880, 50.473042>,  <35.956764, 40.911968, 50.238605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894627, 40.593880, 50.473042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267815, 0.537168, 0.799828,
		-0.950865, 0.281210, 0.129526,
		-0.155343, -0.795218, 0.586087,
		35.848022, 40.355316, 50.648869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545834, 41.130474, 50.697708>,  <35.956764, 40.911968, 50.238605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545834, 41.130474, 50.697708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.736534, 40.822178, 50.866787>,  <35.850952, 40.637199, 50.968235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.736534, 40.822178, 50.866787>,  <35.545834, 41.130474, 50.697708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736534, 40.822178, 50.866787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313005, 0.598188, 0.737698,
		-0.821425, -0.219391, 0.526430,
		0.476748, -0.770739, 0.422696,
		35.879559, 40.590958, 50.993595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433784, 41.169384, 51.460091>,  <35.545834, 41.130474, 50.697708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433784, 41.169384, 51.460091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771313, 40.959518, 51.415012>,  <35.973827, 40.833599, 51.387966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771313, 40.959518, 51.415012>,  <35.433784, 41.169384, 51.460091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771313, 40.959518, 51.415012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474070, 0.630416, 0.614681,
		-0.251456, -0.572104, 0.780683,
		0.843817, -0.524664, -0.112695,
		36.024460, 40.802120, 51.381203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670879, 40.922886, 52.214169>,  <35.433784, 41.169384, 51.460091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670879, 40.922886, 52.214169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.984215, 40.895844, 51.967007>,  <36.172218, 40.879616, 51.818710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.984215, 40.895844, 51.967007>,  <35.670879, 40.922886, 52.214169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984215, 40.895844, 51.967007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463499, 0.725899, 0.508173,
		0.414177, -0.684471, 0.599964,
		0.783342, -0.067610, -0.617902,
		36.219219, 40.875561, 51.781635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.560665, 35.717838, 36.949135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958923, 35.745628, 36.924259>,  <35.197876, 35.762302, 36.909332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958923, 35.745628, 36.924259>,  <34.560665, 35.717838, 36.949135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958923, 35.745628, 36.924259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035428, 0.335065, 0.941529,
		0.086246, -0.939630, 0.331144,
		0.995644, 0.069472, -0.062187,
		35.257618, 35.766472, 36.905602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827358, 35.372902, 37.525501>,  <34.560665, 35.717838, 36.949135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827358, 35.372902, 37.525501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109863, 35.628685, 37.403980>,  <35.279366, 35.782154, 37.331066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109863, 35.628685, 37.403980>,  <34.827358, 35.372902, 37.525501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109863, 35.628685, 37.403980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083200, 0.351186, 0.932602,
		0.703049, -0.683934, 0.194825,
		0.706258, 0.639455, -0.303805,
		35.321739, 35.820522, 37.312840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403904, 35.273132, 37.971123>,  <34.827358, 35.372902, 37.525501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403904, 35.273132, 37.971123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476097, 35.628693, 37.802704>,  <35.519413, 35.842030, 37.701653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476097, 35.628693, 37.802704>,  <35.403904, 35.273132, 37.971123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476097, 35.628693, 37.802704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245188, 0.373904, 0.894471,
		0.952527, -0.264677, -0.150462,
		0.180487, 0.888899, -0.421049,
		35.530243, 35.895363, 37.676388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009663, 35.538887, 38.351986>,  <35.403904, 35.273132, 37.971123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009663, 35.538887, 38.351986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851582, 35.860989, 38.175182>,  <35.756733, 36.054249, 38.069099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851582, 35.860989, 38.175182>,  <36.009663, 35.538887, 38.351986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851582, 35.860989, 38.175182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077618, 0.508733, 0.857418,
		0.915307, 0.304549, -0.263557,
		-0.395206, 0.805258, -0.442009,
		35.733021, 36.102566, 38.042580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403324, 36.203438, 38.621983>,  <36.009663, 35.538887, 38.351986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403324, 36.203438, 38.621983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049931, 36.328850, 38.482758>,  <35.837894, 36.404099, 38.399223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049931, 36.328850, 38.482758>,  <36.403324, 36.203438, 38.621983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049931, 36.328850, 38.482758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110756, 0.582140, 0.805510,
		0.455177, 0.750206, -0.479587,
		-0.883485, 0.313533, -0.348067,
		35.784885, 36.422909, 38.378338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445194, 36.852795, 38.769714>,  <36.403324, 36.203438, 38.621983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445194, 36.852795, 38.769714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055977, 36.795261, 38.697609>,  <35.822445, 36.760742, 38.654346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055977, 36.795261, 38.697609>,  <36.445194, 36.852795, 38.769714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055977, 36.795261, 38.697609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225510, 0.429896, 0.874262,
		-0.048257, 0.891348, -0.450745,
		-0.973045, -0.143837, -0.180262,
		35.764065, 36.752110, 38.643532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114304, 37.496170, 38.793964>,  <36.445194, 36.852795, 38.769714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114304, 37.496170, 38.793964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843960, 37.219364, 38.895412>,  <35.681755, 37.053280, 38.956280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843960, 37.219364, 38.895412>,  <36.114304, 37.496170, 38.793964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843960, 37.219364, 38.895412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268595, 0.551705, 0.789606,
		-0.686345, 0.465543, -0.558749,
		-0.675860, -0.692019, 0.253618,
		35.641201, 37.011757, 38.971497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514935, 37.913906, 38.941536>,  <36.114304, 37.496170, 38.793964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514935, 37.913906, 38.941536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434029, 37.562763, 39.115177>,  <35.385487, 37.352077, 39.219364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434029, 37.562763, 39.115177>,  <35.514935, 37.913906, 38.941536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434029, 37.562763, 39.115177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333943, 0.478526, 0.812093,
		-0.920636, 0.019291, -0.389944,
		-0.202264, -0.877861, 0.434106,
		35.373348, 37.299404, 39.245407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818859, 37.902332, 39.220604>,  <35.514935, 37.913906, 38.941536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818859, 37.902332, 39.220604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021107, 37.612263, 39.407570>,  <35.142456, 37.438221, 39.519749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021107, 37.612263, 39.407570>,  <34.818859, 37.902332, 39.220604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021107, 37.612263, 39.407570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399339, 0.283525, 0.871861,
		-0.764773, -0.627486, -0.146234,
		0.505620, -0.725173, 0.467412,
		35.172794, 37.394711, 39.547794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335484, 37.647991, 39.764133>,  <34.818859, 37.902332, 39.220604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335484, 37.647991, 39.764133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687740, 37.504898, 39.888386>,  <34.899094, 37.419041, 39.962936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687740, 37.504898, 39.888386>,  <34.335484, 37.647991, 39.764133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687740, 37.504898, 39.888386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265941, 0.169374, 0.948993,
		-0.392100, -0.918335, 0.054022,
		0.880643, -0.357734, 0.310634,
		34.951935, 37.397579, 39.981575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238464, 37.328213, 40.379074>,  <34.335484, 37.647991, 39.764133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238464, 37.328213, 40.379074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631577, 37.395527, 40.409607>,  <34.867443, 37.435917, 40.427929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631577, 37.395527, 40.409607>,  <34.238464, 37.328213, 40.379074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631577, 37.395527, 40.409607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113130, 0.221306, 0.968620,
		0.146107, -0.960575, 0.236533,
		0.982779, 0.168281, 0.076336,
		34.926411, 37.446014, 40.432507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425838, 37.017712, 41.004517>,  <34.238464, 37.328213, 40.379074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425838, 37.017712, 41.004517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673172, 37.312450, 40.895184>,  <34.821571, 37.489296, 40.829582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673172, 37.312450, 40.895184>,  <34.425838, 37.017712, 41.004517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673172, 37.312450, 40.895184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258534, 0.519143, 0.814647,
		0.742171, -0.433061, 0.511507,
		0.618338, 0.736850, -0.273332,
		34.858673, 37.533504, 40.813183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790161, 36.320862, 41.138599>,  <34.425838, 37.017712, 41.004517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790161, 36.320862, 41.138599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463249, 36.119648, 41.251038>,  <34.267101, 35.998920, 41.318501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463249, 36.119648, 41.251038>,  <34.790161, 36.320862, 41.138599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463249, 36.119648, 41.251038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306064, -0.034369, -0.951390,
		0.488247, -0.863580, -0.125873,
		-0.817276, -0.503039, 0.281092,
		34.218067, 35.968735, 41.335365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679939, 35.720268, 40.583595>,  <34.790161, 36.320862, 41.138599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679939, 35.720268, 40.583595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330963, 35.772480, 40.771980>,  <34.121578, 35.803806, 40.885014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330963, 35.772480, 40.771980>,  <34.679939, 35.720268, 40.583595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330963, 35.772480, 40.771980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479553, -0.414417, -0.773490,
		0.094211, -0.900678, 0.424151,
		-0.872441, 0.130532, 0.470966,
		34.069229, 35.811638, 40.913269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237167, 35.014626, 40.632183>,  <34.679939, 35.720268, 40.583595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237167, 35.014626, 40.632183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956562, 35.295105, 40.683086>,  <33.788200, 35.463394, 40.713631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956562, 35.295105, 40.683086>,  <34.237167, 35.014626, 40.632183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956562, 35.295105, 40.683086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551622, -0.421206, -0.719929,
		-0.451218, -0.575235, 0.682281,
		-0.701509, 0.701206, 0.127257,
		33.746109, 35.505466, 40.721264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590004, 34.786274, 40.566734>,  <34.237167, 35.014626, 40.632183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590004, 34.786274, 40.566734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490810, 35.169994, 40.512695>,  <33.431293, 35.400227, 40.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490810, 35.169994, 40.512695>,  <33.590004, 34.786274, 40.566734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490810, 35.169994, 40.512695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733235, -0.276999, -0.620998,
		-0.633144, -0.054936, 0.772082,
		-0.247981, 0.959299, -0.135099,
		33.416416, 35.457783, 40.472164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871513, 34.716614, 40.538857>,  <33.590004, 34.786274, 40.566734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871513, 34.716614, 40.538857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960526, 35.074562, 40.384098>,  <33.013935, 35.289330, 40.291245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960526, 35.074562, 40.384098>,  <32.871513, 34.716614, 40.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960526, 35.074562, 40.384098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728952, -0.110791, -0.675540,
		-0.647385, 0.432356, 0.627663,
		0.222534, 0.894871, -0.386891,
		33.027287, 35.343025, 40.268032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279682, 35.163876, 40.464108>,  <32.871513, 34.716614, 40.538857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279682, 35.163876, 40.464108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552025, 35.257393, 40.186466>,  <32.715431, 35.313503, 40.019882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552025, 35.257393, 40.186466>,  <32.279682, 35.163876, 40.464108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552025, 35.257393, 40.186466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704707, -0.049099, -0.707798,
		-0.199559, 0.971045, 0.131327,
		0.680856, 0.233795, -0.694100,
		32.756283, 35.327530, 39.978237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940159, 35.690769, 40.043564>,  <32.279682, 35.163876, 40.464108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940159, 35.690769, 40.043564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224789, 35.539829, 39.806492>,  <32.395565, 35.449265, 39.664249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224789, 35.539829, 39.806492>,  <31.940159, 35.690769, 40.043564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224789, 35.539829, 39.806492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657581, -0.060545, -0.750947,
		0.247487, 0.924089, -0.291221,
		0.711574, -0.377351, -0.592679,
		32.438259, 35.426624, 39.628689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722088, 35.903454, 39.507374>,  <31.940159, 35.690769, 40.043564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722088, 35.903454, 39.507374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003429, 35.674561, 39.338688>,  <32.172234, 35.537224, 39.237476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003429, 35.674561, 39.338688>,  <31.722088, 35.903454, 39.507374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003429, 35.674561, 39.338688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498529, 0.025809, -0.866489,
		0.506714, 0.819687, -0.267120,
		0.703356, -0.572229, -0.421716,
		32.214436, 35.502892, 39.212173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852388, 36.158371, 38.763023>,  <31.722088, 35.903454, 39.507374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852388, 36.158371, 38.763023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983339, 35.781044, 38.784866>,  <32.061909, 35.554649, 38.797974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983339, 35.781044, 38.784866>,  <31.852388, 36.158371, 38.763023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983339, 35.781044, 38.784866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516789, -0.227136, -0.825433,
		0.791046, 0.242005, -0.561853,
		0.327376, -0.943315, 0.054609,
		32.081551, 35.498051, 38.801250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041134, 35.952553, 38.119240>,  <31.852388, 36.158371, 38.763023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041134, 35.952553, 38.119240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983999, 35.599453, 38.298286>,  <31.949718, 35.387592, 38.405712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983999, 35.599453, 38.298286>,  <32.041134, 35.952553, 38.119240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983999, 35.599453, 38.298286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492588, -0.328858, -0.805735,
		0.858460, -0.335578, -0.387857,
		-0.142837, -0.882745, 0.447614,
		31.941149, 35.334629, 38.432571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137650, 35.460175, 37.548592>,  <32.041134, 35.952553, 38.119240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137650, 35.460175, 37.548592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922981, 35.295418, 37.843163>,  <31.794180, 35.196564, 38.019905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922981, 35.295418, 37.843163>,  <32.137650, 35.460175, 37.548592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922981, 35.295418, 37.843163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634151, -0.378849, -0.674038,
		0.556627, -0.828743, -0.057885,
		-0.536674, -0.411896, 0.736426,
		31.761978, 35.171848, 38.064091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969576, 34.790398, 37.267544>,  <32.137650, 35.460175, 37.548592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969576, 34.790398, 37.267544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691107, 34.850056, 37.548428>,  <31.524025, 34.885853, 37.716957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691107, 34.850056, 37.548428>,  <31.969576, 34.790398, 37.267544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691107, 34.850056, 37.548428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701465, -0.349292, -0.621242,
		0.152619, -0.925068, 0.347789,
		-0.696171, 0.149148, 0.702212,
		31.482256, 34.894802, 37.759090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596640, 34.229683, 37.251621>,  <31.969576, 34.790398, 37.267544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596640, 34.229683, 37.251621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360622, 34.492001, 37.439995>,  <31.219011, 34.649391, 37.553020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360622, 34.492001, 37.439995>,  <31.596640, 34.229683, 37.251621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360622, 34.492001, 37.439995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800182, -0.397333, -0.449261,
		-0.107504, -0.641920, 0.759198,
		-0.590044, 0.655794, 0.470938,
		31.183609, 34.688740, 37.581276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650219, 33.868626, 37.862045>,  <31.596640, 34.229683, 37.251621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650219, 33.868626, 37.862045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451374, 33.522030, 37.843792>,  <31.332067, 33.314072, 37.832840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451374, 33.522030, 37.843792>,  <31.650219, 33.868626, 37.862045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451374, 33.522030, 37.843792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241753, -0.188824, 0.951789,
		-0.833327, 0.462114, 0.303342,
		-0.497113, -0.866485, -0.045635,
		31.302240, 33.262085, 37.830101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518816, 33.684223, 38.568592>,  <31.650219, 33.868626, 37.862045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518816, 33.684223, 38.568592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504456, 33.321426, 38.400749>,  <31.495840, 33.103748, 38.300041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504456, 33.321426, 38.400749>,  <31.518816, 33.684223, 38.568592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504456, 33.321426, 38.400749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232382, -0.415949, 0.879196,
		-0.971962, -0.065946, 0.225702,
		-0.035901, -0.906994, -0.419611,
		31.493685, 33.049328, 38.274864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079977, 33.233551, 39.019939>,  <31.518816, 33.684223, 38.568592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079977, 33.233551, 39.019939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366396, 33.045742, 38.813320>,  <31.538248, 32.933056, 38.689346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366396, 33.045742, 38.813320>,  <31.079977, 33.233551, 39.019939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366396, 33.045742, 38.813320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278468, -0.486430, 0.828155,
		-0.640104, -0.736841, -0.217560,
		0.716047, -0.469522, -0.516553,
		31.581209, 32.904884, 38.658356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032402, 32.501488, 39.185539>,  <31.079977, 33.233551, 39.019939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032402, 32.501488, 39.185539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403364, 32.620235, 39.094505>,  <31.625940, 32.691483, 39.039886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403364, 32.620235, 39.094505>,  <31.032402, 32.501488, 39.185539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403364, 32.620235, 39.094505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351505, -0.483553, 0.801636,
		0.127931, -0.823436, -0.552799,
		0.927404, 0.296866, -0.227580,
		31.681585, 32.709293, 39.026230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403181, 31.908066, 39.157207>,  <31.032402, 32.501488, 39.185539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403181, 31.908066, 39.157207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661924, 32.204166, 39.230534>,  <31.817171, 32.381828, 39.274529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661924, 32.204166, 39.230534>,  <31.403181, 31.908066, 39.157207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661924, 32.204166, 39.230534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296024, -0.465258, 0.834209,
		0.702812, -0.485349, -0.520088,
		0.646858, 0.740250, 0.183314,
		31.855982, 32.426243, 39.285526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022850, 31.534460, 39.388275>,  <31.403181, 31.908066, 39.157207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022850, 31.534460, 39.388275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071098, 31.910082, 39.517040>,  <32.100048, 32.135456, 39.594299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071098, 31.910082, 39.517040>,  <32.022850, 31.534460, 39.388275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071098, 31.910082, 39.517040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511451, -0.336716, 0.790595,
		0.850805, 0.069280, -0.520895,
		0.120621, 0.939054, 0.321913,
		32.107285, 32.191799, 39.613613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752163, 31.485420, 39.634651>,  <32.022850, 31.534460, 39.388275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752163, 31.485420, 39.634651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574802, 31.807804, 39.791534>,  <32.468388, 32.001236, 39.885662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574802, 31.807804, 39.791534>,  <32.752163, 31.485420, 39.634651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574802, 31.807804, 39.791534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382009, -0.225918, 0.896119,
		0.810842, 0.547166, -0.207712,
		-0.443400, 0.805960, 0.392206,
		32.441784, 32.049591, 39.909195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185806, 31.639645, 40.086582>,  <32.752163, 31.485420, 39.634651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185806, 31.639645, 40.086582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859535, 31.845907, 40.191475>,  <32.663773, 31.969666, 40.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859535, 31.845907, 40.191475>,  <33.185806, 31.639645, 40.086582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859535, 31.845907, 40.191475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198597, -0.176152, 0.964121,
		0.543349, 0.838492, 0.041275,
		-0.815679, 0.515657, 0.262233,
		32.614830, 32.000603, 40.270145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394367, 32.239410, 40.503666>,  <33.185806, 31.639645, 40.086582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394367, 32.239410, 40.503666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018597, 32.139584, 40.597637>,  <32.793133, 32.079689, 40.654022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018597, 32.139584, 40.597637>,  <33.394367, 32.239410, 40.503666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018597, 32.139584, 40.597637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211355, 0.117793, 0.970285,
		-0.269823, 0.961167, -0.057911,
		-0.939428, -0.249566, 0.234931,
		32.736767, 32.064713, 40.668118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235268, 32.680584, 40.984150>,  <33.394367, 32.239410, 40.503666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235268, 32.680584, 40.984150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968311, 32.387508, 41.037453>,  <32.808140, 32.211662, 41.069435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968311, 32.387508, 41.037453>,  <33.235268, 32.680584, 40.984150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968311, 32.387508, 41.037453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157650, 0.035880, 0.986843,
		-0.727833, 0.679614, 0.091563,
		-0.667387, -0.732691, 0.133256,
		32.768097, 32.167702, 41.077431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835957, 32.894440, 41.556553>,  <33.235268, 32.680584, 40.984150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835957, 32.894440, 41.556553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756191, 32.502514, 41.550789>,  <32.708332, 32.267361, 41.547329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756191, 32.502514, 41.550789>,  <32.835957, 32.894440, 41.556553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756191, 32.502514, 41.550789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032399, -0.008107, 0.999442,
		-0.979381, 0.199766, -0.030128,
		-0.199410, -0.979810, -0.014412,
		32.696369, 32.208572, 41.546467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304192, 32.798508, 42.079445>,  <32.835957, 32.894440, 41.556553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304192, 32.798508, 42.079445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515511, 32.466320, 42.008755>,  <32.642300, 32.267010, 41.966339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515511, 32.466320, 42.008755>,  <32.304192, 32.798508, 42.079445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515511, 32.466320, 42.008755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177066, -0.095805, 0.979525,
		-0.830393, -0.548769, 0.096433,
		0.528295, -0.830466, -0.176724,
		32.674000, 32.217182, 41.955738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875200, 32.310936, 42.326252>,  <32.304192, 32.798508, 42.079445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875200, 32.310936, 42.326252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233589, 32.133526, 42.317123>,  <32.448624, 32.027081, 42.311646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233589, 32.133526, 42.317123>,  <31.875200, 32.310936, 42.326252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233589, 32.133526, 42.317123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040133, -0.132041, 0.990432,
		-0.442294, -0.886483, -0.136105,
		0.895972, -0.443524, -0.022824,
		32.502380, 32.000469, 42.310276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810625, 31.691744, 42.839108>,  <31.875200, 32.310936, 42.326252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810625, 31.691744, 42.839108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203964, 31.738342, 42.783314>,  <32.439968, 31.766302, 42.749836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203964, 31.738342, 42.783314>,  <31.810625, 31.691744, 42.839108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203964, 31.738342, 42.783314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155796, -0.145233, 0.977054,
		0.093565, -0.982515, -0.160964,
		0.983348, 0.116496, -0.139484,
		32.498970, 31.773291, 42.741470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139961, 31.188751, 43.248249>,  <31.810625, 31.691744, 42.839108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139961, 31.188751, 43.248249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447144, 31.440590, 43.201160>,  <32.631451, 31.591694, 43.172909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447144, 31.440590, 43.201160>,  <32.139961, 31.188751, 43.248249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447144, 31.440590, 43.201160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269923, -0.151444, 0.950897,
		0.580855, -0.762018, -0.286244,
		0.767951, 0.629598, -0.117720,
		32.677528, 31.629469, 43.165844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752972, 30.852968, 43.374710>,  <32.139961, 31.188751, 43.248249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752972, 30.852968, 43.374710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861900, 31.236307, 43.409149>,  <32.927258, 31.466311, 43.429813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861900, 31.236307, 43.409149>,  <32.752972, 30.852968, 43.374710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861900, 31.236307, 43.409149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429862, -0.201225, 0.880186,
		0.860849, -0.202681, -0.466755,
		0.272320, 0.958347, 0.086099,
		32.943596, 31.523811, 43.434978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466236, 30.871145, 43.645699>,  <32.752972, 30.852968, 43.374710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466236, 30.871145, 43.645699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335625, 31.241787, 43.720295>,  <33.257256, 31.464172, 43.765053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335625, 31.241787, 43.720295>,  <33.466236, 30.871145, 43.645699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335625, 31.241787, 43.720295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440039, -0.025585, 0.897614,
		0.836506, 0.375163, -0.399388,
		-0.326533, 0.926606, 0.186488,
		33.237663, 31.519768, 43.776241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936668, 31.057034, 44.144688>,  <33.466236, 30.871145, 43.645699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936668, 31.057034, 44.144688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662857, 31.346407, 44.180618>,  <33.498569, 31.520031, 44.202179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662857, 31.346407, 44.180618>,  <33.936668, 31.057034, 44.144688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662857, 31.346407, 44.180618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438704, 0.310391, 0.843325,
		0.582207, 0.616686, -0.529843,
		-0.684525, 0.723433, 0.089831,
		33.457500, 31.563437, 44.207569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298412, 31.705772, 44.268772>,  <33.936668, 31.057034, 44.144688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298412, 31.705772, 44.268772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922371, 31.764843, 44.391670>,  <33.696747, 31.800285, 44.465408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922371, 31.764843, 44.391670>,  <34.298412, 31.705772, 44.268772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922371, 31.764843, 44.391670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340063, 0.343460, 0.875439,
		0.023757, 0.927484, -0.373107,
		-0.940103, 0.147677, 0.307243,
		33.640339, 31.809147, 44.483845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315136, 32.361660, 44.636326>,  <34.298412, 31.705772, 44.268772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315136, 32.361660, 44.636326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986919, 32.174652, 44.767860>,  <33.789989, 32.062447, 44.846783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986919, 32.174652, 44.767860>,  <34.315136, 32.361660, 44.636326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986919, 32.174652, 44.767860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178320, 0.337212, 0.924386,
		-0.543054, 0.817139, -0.193330,
		-0.820545, -0.467516, 0.328837,
		33.740757, 32.034397, 44.866512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963425, 32.830627, 44.990364>,  <34.315136, 32.361660, 44.636326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963425, 32.830627, 44.990364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821995, 32.489208, 45.143436>,  <33.737137, 32.284359, 45.235279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821995, 32.489208, 45.143436>,  <33.963425, 32.830627, 44.990364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821995, 32.489208, 45.143436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145385, 0.353991, 0.923880,
		-0.924040, 0.382295, -0.001068,
		-0.353573, -0.853546, 0.382682,
		33.715923, 32.233143, 45.258240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502934, 33.082268, 45.566563>,  <33.963425, 32.830627, 44.990364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502934, 33.082268, 45.566563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566044, 32.693417, 45.635921>,  <33.603909, 32.460106, 45.677536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566044, 32.693417, 45.635921>,  <33.502934, 33.082268, 45.566563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566044, 32.693417, 45.635921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050733, 0.183345, 0.981739,
		-0.986171, -0.146097, 0.078247,
		0.157775, -0.972132, 0.173397,
		33.613377, 32.401775, 45.687943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078442, 32.929577, 46.109306>,  <33.502934, 33.082268, 45.566563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078442, 32.929577, 46.109306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343464, 32.630051, 46.116184>,  <33.502476, 32.450333, 46.120312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343464, 32.630051, 46.116184>,  <33.078442, 32.929577, 46.109306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343464, 32.630051, 46.116184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192539, 0.192459, 0.962231,
		-0.723846, -0.634217, 0.271691,
		0.662553, -0.748818, 0.017199,
		33.542229, 32.405407, 46.121346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847301, 32.507519, 46.679321>,  <33.078442, 32.929577, 46.109306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847301, 32.507519, 46.679321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239391, 32.449348, 46.625626>,  <33.474644, 32.414448, 46.593410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239391, 32.449348, 46.625626>,  <32.847301, 32.507519, 46.679321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239391, 32.449348, 46.625626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179437, 0.366931, 0.912778,
		-0.083483, -0.918811, 0.385768,
		0.980221, -0.145423, -0.134236,
		33.533459, 32.405724, 46.585354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032906, 31.963966, 47.157162>,  <32.847301, 32.507519, 46.679321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032906, 31.963966, 47.157162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332142, 32.206985, 47.050388>,  <33.511684, 32.352795, 46.986324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332142, 32.206985, 47.050388>,  <33.032906, 31.963966, 47.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332142, 32.206985, 47.050388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158157, 0.227421, 0.960867,
		0.644476, -0.761031, 0.074043,
		0.748089, 0.607546, -0.266930,
		33.556568, 32.389248, 46.970310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435619, 31.842342, 47.668110>,  <33.032906, 31.963966, 47.157162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435619, 31.842342, 47.668110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617733, 32.153778, 47.495361>,  <33.727001, 32.340641, 47.391712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617733, 32.153778, 47.495361>,  <33.435619, 31.842342, 47.668110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617733, 32.153778, 47.495361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297694, 0.324026, 0.897990,
		0.839104, -0.537405, -0.084258,
		0.455283, 0.778590, -0.431874,
		33.754318, 32.387356, 47.365799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037811, 31.942478, 48.101440>,  <33.435619, 31.842342, 47.668110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037811, 31.942478, 48.101440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025959, 32.283600, 47.892887>,  <34.018848, 32.488274, 47.767754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025959, 32.283600, 47.892887>,  <34.037811, 31.942478, 48.101440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025959, 32.283600, 47.892887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413234, 0.485405, 0.770467,
		0.910142, -0.192623, -0.366793,
		-0.029633, 0.852806, -0.521386,
		34.017071, 32.539440, 47.736473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723644, 32.338806, 48.152412>,  <34.037811, 31.942478, 48.101440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723644, 32.338806, 48.152412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455296, 32.613674, 48.040897>,  <34.294285, 32.778595, 47.973988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455296, 32.613674, 48.040897>,  <34.723644, 32.338806, 48.152412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455296, 32.613674, 48.040897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412320, 0.658119, 0.629978,
		0.616377, 0.307688, -0.724850,
		-0.670874, 0.687174, -0.278783,
		34.254032, 32.819828, 47.957264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066097, 33.053108, 47.842850>,  <34.723644, 32.338806, 48.152412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066097, 33.053108, 47.842850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690449, 33.112423, 47.966827>,  <34.465061, 33.148010, 48.041214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690449, 33.112423, 47.966827>,  <35.066097, 33.053108, 47.842850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690449, 33.112423, 47.966827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328863, 0.649201, 0.685848,
		-0.099513, 0.746022, -0.658444,
		-0.939120, 0.148287, 0.309943,
		34.408714, 33.156910, 48.059811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530415, 33.644527, 47.572598>,  <35.066097, 33.053108, 47.842850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530415, 33.644527, 47.572598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924149, 33.574558, 47.581379>,  <36.160389, 33.532578, 47.586647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924149, 33.574558, 47.581379>,  <35.530415, 33.644527, 47.572598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924149, 33.574558, 47.581379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059625, -0.447514, -0.892287,
		0.165907, 0.877002, -0.450935,
		0.984337, -0.174923, 0.021955,
		36.219448, 33.522079, 47.587967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791718, 34.006279, 47.024479>,  <35.530415, 33.644527, 47.572598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791718, 34.006279, 47.024479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078457, 33.735935, 47.092991>,  <36.250500, 33.573730, 47.134098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078457, 33.735935, 47.092991>,  <35.791718, 34.006279, 47.024479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078457, 33.735935, 47.092991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011533, -0.257126, -0.966309,
		0.697129, 0.690726, -0.192117,
		0.716853, -0.675858, 0.171284,
		36.293514, 33.533176, 47.144375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324669, 34.063038, 46.549091>,  <35.791718, 34.006279, 47.024479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324669, 34.063038, 46.549091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375992, 33.693264, 46.692734>,  <36.406784, 33.471401, 46.778919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375992, 33.693264, 46.692734>,  <36.324669, 34.063038, 46.549091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375992, 33.693264, 46.692734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140198, -0.341553, -0.929347,
		0.981775, 0.169587, 0.085780,
		0.128306, -0.924436, 0.359104,
		36.414482, 33.415932, 46.800465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933407, 33.944649, 46.235355>,  <36.324669, 34.063038, 46.549091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933407, 33.944649, 46.235355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781281, 33.586788, 46.329124>,  <36.690002, 33.372070, 46.385384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781281, 33.586788, 46.329124>,  <36.933407, 33.944649, 46.235355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781281, 33.586788, 46.329124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228869, -0.336624, -0.913402,
		0.896089, -0.293734, 0.332783,
		-0.380320, -0.894654, 0.234419,
		36.667183, 33.318394, 46.399448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504482, 33.334377, 46.070026>,  <36.933407, 33.944649, 46.235355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504482, 33.334377, 46.070026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138351, 33.175140, 46.045692>,  <36.918674, 33.079597, 46.031094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138351, 33.175140, 46.045692>,  <37.504482, 33.334377, 46.070026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138351, 33.175140, 46.045692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205740, -0.332401, -0.920424,
		0.346191, -0.855005, 0.386158,
		-0.915327, -0.398090, -0.060835,
		36.863754, 33.055714, 46.027443>
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
