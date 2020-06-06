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
	<24.322947, 34.578732, 34.499126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178268, 34.862804, 34.740726>,  <24.091461, 35.033249, 34.885685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178268, 34.862804, 34.740726>,  <24.322947, 34.578732, 34.499126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178268, 34.862804, 34.740726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039848, -0.635492, 0.771078,
		0.931444, 0.302965, 0.201557,
		-0.361697, 0.710185, 0.603997,
		24.069759, 35.075859, 34.921925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792597, 34.194290, 35.008858>,  <24.322947, 34.578732, 34.499126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792597, 34.194290, 35.008858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745127, 33.808044, 34.916336>,  <24.716644, 33.576298, 34.860825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745127, 33.808044, 34.916336>,  <24.792597, 34.194290, 35.008858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745127, 33.808044, 34.916336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691648, -0.086744, 0.717006,
		-0.712417, 0.245071, -0.657573,
		-0.118677, -0.965617, -0.231300,
		24.709524, 33.518360, 34.846947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235746, 34.851933, 34.931644>,  <24.792597, 34.194290, 35.008858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235746, 34.851933, 34.931644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566895, 34.760654, 34.726681>,  <25.765583, 34.705887, 34.603703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566895, 34.760654, 34.726681>,  <25.235746, 34.851933, 34.931644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566895, 34.760654, 34.726681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392824, 0.416226, -0.820028,
		0.400405, 0.880160, 0.254939,
		0.827868, -0.228197, -0.512407,
		25.815254, 34.692196, 34.572960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626579, 35.468945, 34.693401>,  <25.235746, 34.851933, 34.931644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626579, 35.468945, 34.693401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726624, 35.175083, 34.441139>,  <25.786650, 34.998764, 34.289783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726624, 35.175083, 34.441139>,  <25.626579, 35.468945, 34.693401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726624, 35.175083, 34.441139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338240, 0.544022, -0.767877,
		0.907215, 0.405367, -0.112424,
		0.250111, -0.734655, -0.630656,
		25.801657, 34.954685, 34.251942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839918, 35.836960, 34.095154>,  <25.626579, 35.468945, 34.693401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839918, 35.836960, 34.095154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799198, 35.463207, 33.958584>,  <25.774767, 35.238956, 33.876644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799198, 35.463207, 33.958584>,  <25.839918, 35.836960, 34.095154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799198, 35.463207, 33.958584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163325, 0.354247, -0.920779,
		0.981306, -0.037972, -0.188670,
		-0.101800, -0.934381, -0.341423,
		25.768658, 35.182892, 33.856155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216951, 35.700787, 33.499168>,  <25.839918, 35.836960, 34.095154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216951, 35.700787, 33.499168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915182, 35.445282, 33.438732>,  <25.734119, 35.291981, 33.402470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915182, 35.445282, 33.438732>,  <26.216951, 35.700787, 33.499168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915182, 35.445282, 33.438732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037918, 0.272215, -0.961489,
		0.655290, -0.719643, -0.229586,
		-0.754426, -0.638759, -0.151093,
		25.688854, 35.253654, 33.393406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309385, 35.277969, 32.963581>,  <26.216951, 35.700787, 33.499168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309385, 35.277969, 32.963581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918560, 35.346573, 33.014065>,  <25.684065, 35.387733, 33.044353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918560, 35.346573, 33.014065>,  <26.309385, 35.277969, 32.963581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918560, 35.346573, 33.014065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105846, 0.123128, -0.986730,
		-0.184770, -0.977459, -0.102151,
		-0.977065, 0.171506, 0.126211,
		25.625441, 35.398026, 33.051929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889698, 34.843742, 32.600731>,  <26.309385, 35.277969, 32.963581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889698, 34.843742, 32.600731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703430, 35.194721, 32.646751>,  <25.591669, 35.405308, 32.674362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703430, 35.194721, 32.646751>,  <25.889698, 34.843742, 32.600731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703430, 35.194721, 32.646751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052283, 0.102499, -0.993358,
		-0.883413, -0.468592, -0.001855,
		-0.465670, 0.877448, 0.115049,
		25.563728, 35.457954, 32.681267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422451, 34.888035, 32.072208>,  <25.889698, 34.843742, 32.600731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422451, 34.888035, 32.072208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436937, 35.275139, 32.171913>,  <25.445629, 35.507401, 32.231735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436937, 35.275139, 32.171913>,  <25.422451, 34.888035, 32.072208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436937, 35.275139, 32.171913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170187, 0.251753, -0.952710,
		-0.984746, -0.007918, 0.173817,
		0.036215, 0.967759, 0.249260,
		25.447802, 35.565468, 32.246693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923000, 35.183357, 31.620962>,  <25.422451, 34.888035, 32.072208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923000, 35.183357, 31.620962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149338, 35.492439, 31.736029>,  <25.285141, 35.677887, 31.805069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149338, 35.492439, 31.736029>,  <24.923000, 35.183357, 31.620962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149338, 35.492439, 31.736029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091838, 0.405790, -0.909341,
		-0.819381, 0.488127, 0.300577,
		0.565845, 0.772701, 0.287668,
		25.319092, 35.724251, 31.822329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556301, 35.790134, 31.421556>,  <24.923000, 35.183357, 31.620962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556301, 35.790134, 31.421556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938194, 35.904533, 31.454279>,  <25.167330, 35.973175, 31.473913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938194, 35.904533, 31.454279>,  <24.556301, 35.790134, 31.421556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938194, 35.904533, 31.454279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042649, 0.140565, -0.989152,
		-0.294398, 0.947864, 0.122004,
		0.954731, 0.286001, 0.081807,
		25.224613, 35.990334, 31.478821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722492, 36.595051, 31.221352>,  <24.556301, 35.790134, 31.421556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722492, 36.595051, 31.221352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008955, 36.323483, 31.156626>,  <25.180832, 36.160542, 31.117790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008955, 36.323483, 31.156626>,  <24.722492, 36.595051, 31.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008955, 36.323483, 31.156626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022876, 0.254551, -0.966789,
		0.697566, 0.688669, 0.197829,
		0.716155, -0.678925, -0.161812,
		25.223801, 36.119804, 31.108082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091263, 36.834347, 30.770578>,  <24.722492, 36.595051, 31.221352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091263, 36.834347, 30.770578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244156, 36.467716, 30.723619>,  <25.335892, 36.247738, 30.695444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244156, 36.467716, 30.723619>,  <25.091263, 36.834347, 30.770578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244156, 36.467716, 30.723619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289085, 0.239278, -0.926918,
		0.877684, 0.320359, 0.356428,
		0.382232, -0.916579, -0.117399,
		25.358826, 36.192741, 30.688400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899817, 36.769436, 30.722336>,  <25.091263, 36.834347, 30.770578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899817, 36.769436, 30.722336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673124, 36.521881, 30.504786>,  <25.537109, 36.373348, 30.374254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673124, 36.521881, 30.504786>,  <25.899817, 36.769436, 30.722336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673124, 36.521881, 30.504786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326265, 0.437579, -0.837900,
		0.756551, -0.652310, -0.046069,
		-0.566729, -0.618883, -0.543877,
		25.503105, 36.336216, 30.341623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225037, 36.195030, 30.320900>,  <25.899817, 36.769436, 30.722336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225037, 36.195030, 30.320900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893274, 36.342861, 30.153330>,  <25.694218, 36.431561, 30.052788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893274, 36.342861, 30.153330>,  <26.225037, 36.195030, 30.320900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893274, 36.342861, 30.153330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552668, 0.433405, -0.711841,
		-0.081517, -0.821932, -0.563723,
		-0.829405, 0.369579, -0.418926,
		25.644453, 36.453735, 30.027653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162857, 35.672581, 30.929585>,  <26.225037, 36.195030, 30.320900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162857, 35.672581, 30.929585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907665, 35.961929, 31.035198>,  <25.754551, 36.135540, 31.098566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907665, 35.961929, 31.035198>,  <26.162857, 35.672581, 30.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907665, 35.961929, 31.035198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126907, -0.239422, 0.962586,
		0.759526, 0.647616, 0.060944,
		-0.637978, 0.723374, 0.264034,
		25.716272, 36.178940, 31.114408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485395, 36.075565, 31.614037>,  <26.162857, 35.672581, 30.929585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485395, 36.075565, 31.614037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089470, 36.098907, 31.562092>,  <25.851915, 36.112911, 31.530926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089470, 36.098907, 31.562092>,  <26.485395, 36.075565, 31.614037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089470, 36.098907, 31.562092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142063, -0.344932, 0.927814,
		0.009351, 0.936812, 0.349709,
		-0.989813, 0.058357, -0.129861,
		25.792526, 36.116413, 31.523134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327272, 36.502197, 32.033947>,  <26.485395, 36.075565, 31.614037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327272, 36.502197, 32.033947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020182, 36.251907, 31.978714>,  <25.835928, 36.101734, 31.945574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020182, 36.251907, 31.978714>,  <26.327272, 36.502197, 32.033947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020182, 36.251907, 31.978714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035297, -0.256460, 0.965910,
		-0.639805, 0.736681, 0.218977,
		-0.767727, -0.625723, -0.138081,
		25.789864, 36.064190, 31.937290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756214, 36.794575, 32.552391>,  <26.327272, 36.502197, 32.033947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756214, 36.794575, 32.552391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681978, 36.410854, 32.467262>,  <25.637438, 36.180622, 32.416187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681978, 36.410854, 32.467262>,  <25.756214, 36.794575, 32.552391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681978, 36.410854, 32.467262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147849, -0.186853, 0.971199,
		-0.971441, 0.211708, -0.107155,
		-0.185589, -0.959305, -0.212817,
		25.626301, 36.123062, 32.403416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017159, 36.616474, 32.876839>,  <25.756214, 36.794575, 32.552391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017159, 36.616474, 32.876839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231394, 36.281059, 32.836838>,  <25.359936, 36.079811, 32.812840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231394, 36.281059, 32.836838>,  <25.017159, 36.616474, 32.876839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231394, 36.281059, 32.836838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157646, -0.215612, 0.963670,
		-0.829635, -0.500365, -0.247672,
		0.535588, -0.838538, -0.099999,
		25.392071, 36.029499, 32.806839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631115, 35.981590, 32.988155>,  <25.017159, 36.616474, 32.876839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631115, 35.981590, 32.988155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006475, 35.893383, 33.094574>,  <25.231691, 35.840458, 33.158424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006475, 35.893383, 33.094574>,  <24.631115, 35.981590, 32.988155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006475, 35.893383, 33.094574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316013, -0.236160, 0.918893,
		-0.139795, -0.946363, -0.291297,
		0.938399, -0.220510, 0.266049,
		25.287994, 35.827229, 33.174389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055677, 35.516235, 33.135494>,  <24.631115, 35.981590, 32.988155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055677, 35.516235, 33.135494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254250, 35.668709, 32.823532>,  <24.373392, 35.760193, 32.636353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254250, 35.668709, 32.823532>,  <24.055677, 35.516235, 33.135494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254250, 35.668709, 32.823532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735765, -0.661530, 0.145007,
		-0.460660, -0.645816, -0.608863,
		0.496429, 0.381181, -0.779909,
		24.403179, 35.783062, 32.589558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585958, 35.062874, 33.314003>,  <24.055677, 35.516235, 33.135494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585958, 35.062874, 33.314003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940491, 35.026115, 33.132465>,  <25.153210, 35.004063, 33.023544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940491, 35.026115, 33.132465>,  <24.585958, 35.062874, 33.314003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940491, 35.026115, 33.132465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421705, -0.244644, 0.873106,
		-0.191261, -0.965249, -0.178085,
		0.886332, -0.091892, -0.453841,
		25.206390, 34.998547, 32.996311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926222, 34.372242, 33.370674>,  <24.585958, 35.062874, 33.314003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926222, 34.372242, 33.370674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249146, 34.602119, 33.317032>,  <25.442900, 34.740044, 33.284847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249146, 34.602119, 33.317032>,  <24.926222, 34.372242, 33.370674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249146, 34.602119, 33.317032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429450, -0.416261, 0.801436,
		0.404754, -0.704598, -0.582851,
		0.807308, 0.574690, -0.134106,
		25.491339, 34.774525, 33.276798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648474, 33.980766, 33.371128>,  <24.926222, 34.372242, 33.370674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648474, 33.980766, 33.371128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692595, 34.354557, 33.506535>,  <25.719067, 34.578831, 33.587776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692595, 34.354557, 33.506535>,  <25.648474, 33.980766, 33.371128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692595, 34.354557, 33.506535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586349, -0.336189, 0.737002,
		0.802514, 0.117192, -0.585011,
		0.110303, 0.934475, 0.338512,
		25.725685, 34.634899, 33.608089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439444, 34.140034, 33.511261>,  <25.648474, 33.980766, 33.371128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439444, 34.140034, 33.511261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218756, 34.389988, 33.732212>,  <26.086344, 34.539959, 33.864784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218756, 34.389988, 33.732212>,  <26.439444, 34.140034, 33.511261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218756, 34.389988, 33.732212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565074, -0.207058, 0.798635,
		0.613431, 0.752758, -0.238868,
		-0.551720, 0.624886, 0.552380,
		26.053240, 34.577454, 33.897926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951920, 34.535606, 33.851616>,  <26.439444, 34.140034, 33.511261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951920, 34.535606, 33.851616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616259, 34.567253, 34.066860>,  <26.414862, 34.586243, 34.196007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616259, 34.567253, 34.066860>,  <26.951920, 34.535606, 33.851616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616259, 34.567253, 34.066860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514572, -0.204995, 0.832582,
		0.176182, 0.975560, 0.131311,
		-0.839152, 0.079117, 0.538113,
		26.364513, 34.590988, 34.228294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136377, 34.937904, 34.369423>,  <26.951920, 34.535606, 33.851616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136377, 34.937904, 34.369423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819895, 34.724297, 34.488632>,  <26.630005, 34.596134, 34.560158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819895, 34.724297, 34.488632>,  <27.136377, 34.937904, 34.369423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819895, 34.724297, 34.488632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394560, -0.073424, 0.915932,
		-0.467240, 0.842280, 0.268795,
		-0.791207, -0.534016, 0.298023,
		26.582533, 34.564091, 34.578041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642843, 35.074474, 34.851864>,  <27.136377, 34.937904, 34.369423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642843, 35.074474, 34.851864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759075, 34.728367, 35.015263>,  <27.828814, 34.520702, 35.113300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759075, 34.728367, 35.015263>,  <27.642843, 35.074474, 34.851864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759075, 34.728367, 35.015263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158399, -0.464524, -0.871279,
		0.943649, 0.188471, -0.272039,
		0.290580, -0.865272, 0.408494,
		27.846249, 34.468784, 35.137810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284620, 35.503460, 34.740204>,  <27.642843, 35.074474, 34.851864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284620, 35.503460, 34.740204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558622, 35.625530, 35.004822>,  <28.723022, 35.698772, 35.163593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558622, 35.625530, 35.004822>,  <28.284620, 35.503460, 34.740204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558622, 35.625530, 35.004822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727265, 0.340135, 0.596149,
		-0.043081, -0.889479, 0.454940,
		0.685004, 0.305179, 0.661541,
		28.764124, 35.717083, 35.203285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151203, 35.248356, 35.394623>,  <28.284620, 35.503460, 34.740204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151203, 35.248356, 35.394623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409931, 35.522552, 35.528324>,  <28.565168, 35.687069, 35.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409931, 35.522552, 35.528324>,  <28.151203, 35.248356, 35.394623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409931, 35.522552, 35.528324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608201, 0.199222, 0.768376,
		0.460127, -0.700292, 0.545778,
		0.646819, 0.685493, 0.334252,
		28.603977, 35.728199, 35.628601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235880, 35.117981, 36.135101>,  <28.151203, 35.248356, 35.394623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235880, 35.117981, 36.135101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334604, 35.501732, 36.080441>,  <28.393839, 35.731983, 36.047646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334604, 35.501732, 36.080441>,  <28.235880, 35.117981, 36.135101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334604, 35.501732, 36.080441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616488, 0.264242, 0.741701,
		0.747682, -0.098817, 0.656664,
		0.246810, 0.959381, -0.136650,
		28.408648, 35.789547, 36.039444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345518, 35.408592, 36.842598>,  <28.235880, 35.117981, 36.135101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345518, 35.408592, 36.842598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308386, 35.730022, 36.607430>,  <28.286106, 35.922882, 36.466328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308386, 35.730022, 36.607430>,  <28.345518, 35.408592, 36.842598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308386, 35.730022, 36.607430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612140, 0.419636, 0.670217,
		0.785281, 0.422107, 0.452944,
		-0.092832, 0.803574, -0.587921,
		28.280537, 35.971096, 36.431053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515638, 36.037956, 37.301491>,  <28.345518, 35.408592, 36.842598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515638, 36.037956, 37.301491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299145, 36.127010, 36.977146>,  <28.169249, 36.180443, 36.782539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299145, 36.127010, 36.977146>,  <28.515638, 36.037956, 37.301491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299145, 36.127010, 36.977146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596550, 0.577949, 0.556869,
		0.592617, 0.785116, -0.179991,
		-0.541232, 0.222637, -0.810864,
		28.136776, 36.193802, 36.733887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967472, 36.646740, 36.963226>,  <28.515638, 36.037956, 37.301491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967472, 36.646740, 36.963226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799726, 36.988968, 36.841812>,  <28.699080, 37.194305, 36.768963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799726, 36.988968, 36.841812>,  <28.967472, 36.646740, 36.963226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799726, 36.988968, 36.841812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686212, -0.079844, 0.723006,
		0.594345, 0.511496, 0.620585,
		-0.419364, 0.855568, -0.303540,
		28.673918, 37.245640, 36.750751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743853, 37.036217, 37.550068>,  <28.967472, 36.646740, 36.963226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743853, 37.036217, 37.550068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500877, 37.168335, 37.261093>,  <28.355091, 37.247608, 37.087708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500877, 37.168335, 37.261093>,  <28.743853, 37.036217, 37.550068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500877, 37.168335, 37.261093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777162, -0.058859, 0.626541,
		0.164423, 0.942040, 0.292448,
		-0.607440, 0.330298, -0.722440,
		28.318645, 37.267426, 37.044361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380043, 37.694546, 37.598999>,  <28.743853, 37.036217, 37.550068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380043, 37.694546, 37.598999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161915, 37.404366, 37.431026>,  <28.031038, 37.230255, 37.330242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161915, 37.404366, 37.431026>,  <28.380043, 37.694546, 37.598999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161915, 37.404366, 37.431026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725317, 0.157261, 0.670211,
		-0.420168, 0.670064, -0.611941,
		-0.545319, -0.725454, -0.419933,
		27.998320, 37.186729, 37.305046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772017, 37.960949, 37.508083>,  <28.380043, 37.694546, 37.598999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772017, 37.960949, 37.508083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778765, 37.562168, 37.538559>,  <27.782814, 37.322899, 37.556843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778765, 37.562168, 37.538559>,  <27.772017, 37.960949, 37.508083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778765, 37.562168, 37.538559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625019, 0.048958, 0.779073,
		-0.780427, -0.060761, -0.622287,
		0.016871, -0.996951, 0.076185,
		27.783827, 37.263084, 37.561413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128315, 37.710117, 37.762402>,  <27.772017, 37.960949, 37.508083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128315, 37.710117, 37.762402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401350, 37.447227, 37.890232>,  <27.565172, 37.289494, 37.966930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401350, 37.447227, 37.890232>,  <27.128315, 37.710117, 37.762402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401350, 37.447227, 37.890232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393334, 0.038159, 0.918603,
		-0.615923, -0.752729, -0.232462,
		0.682589, -0.657224, 0.319577,
		27.606127, 37.250061, 37.986107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756191, 37.326515, 38.149483>,  <27.128315, 37.710117, 37.762402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756191, 37.326515, 38.149483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132326, 37.282993, 38.278435>,  <27.358007, 37.256878, 38.355804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132326, 37.282993, 38.278435>,  <26.756191, 37.326515, 38.149483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132326, 37.282993, 38.278435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295561, 0.208148, 0.932372,
		-0.168552, -0.972026, 0.163570,
		0.940337, -0.108809, 0.322377,
		27.414427, 37.250351, 38.375149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784698, 36.764172, 38.619156>,  <26.756191, 37.326515, 38.149483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784698, 36.764172, 38.619156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011351, 37.080956, 38.710136>,  <27.147343, 37.271027, 38.764725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011351, 37.080956, 38.710136>,  <26.784698, 36.764172, 38.619156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011351, 37.080956, 38.710136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308724, -0.051873, 0.949736,
		0.763949, -0.608369, 0.215103,
		0.566632, 0.791957, 0.227446,
		27.181341, 37.318542, 38.778370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626223, 36.634850, 38.682308>,  <26.784698, 36.764172, 38.619156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626223, 36.634850, 38.682308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360729, 36.691162, 38.388470>,  <27.201433, 36.724949, 38.212166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360729, 36.691162, 38.388470>,  <27.626223, 36.634850, 38.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360729, 36.691162, 38.388470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747031, 0.075593, -0.660477,
		-0.037454, -0.987150, -0.155343,
		-0.663733, 0.140783, -0.734601,
		27.161610, 36.733398, 38.168091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806803, 36.218323, 38.152283>,  <27.626223, 36.634850, 38.682308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806803, 36.218323, 38.152283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580124, 36.493992, 37.971661>,  <27.444117, 36.659393, 37.863289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580124, 36.493992, 37.971661>,  <27.806803, 36.218323, 38.152283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580124, 36.493992, 37.971661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541305, -0.101762, -0.834645,
		-0.621164, -0.717417, -0.315384,
		-0.566695, 0.689171, -0.451552,
		27.410116, 36.700745, 37.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626543, 35.892685, 37.530544>,  <27.806803, 36.218323, 38.152283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626543, 35.892685, 37.530544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647383, 36.292137, 37.532475>,  <27.659887, 36.531807, 37.533630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647383, 36.292137, 37.532475>,  <27.626543, 35.892685, 37.530544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647383, 36.292137, 37.532475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473303, -0.020441, -0.880663,
		-0.879358, 0.048164, -0.473720,
		0.052100, 0.998630, 0.004821,
		27.663013, 36.591724, 37.533920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251606, 36.175896, 36.987766>,  <27.626543, 35.892685, 37.530544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251606, 36.175896, 36.987766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522881, 36.455891, 37.077278>,  <27.685646, 36.623886, 37.130985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522881, 36.455891, 37.077278>,  <27.251606, 36.175896, 36.987766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522881, 36.455891, 37.077278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325239, -0.012827, -0.945545,
		-0.659001, 0.714038, -0.236363,
		0.678187, 0.699989, 0.223780,
		27.726337, 36.665886, 37.144413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122263, 36.700996, 36.534935>,  <27.251606, 36.175896, 36.987766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122263, 36.700996, 36.534935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498325, 36.728142, 36.668503>,  <27.723963, 36.744431, 36.748642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498325, 36.728142, 36.668503>,  <27.122263, 36.700996, 36.534935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498325, 36.728142, 36.668503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340735, -0.195811, -0.919542,
		0.002978, 0.978290, -0.207218,
		0.940155, 0.067868, 0.333921,
		27.780373, 36.748501, 36.768681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444008, 36.837318, 35.908321>,  <27.122263, 36.700996, 36.534935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444008, 36.837318, 35.908321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726664, 36.704964, 36.158497>,  <27.896257, 36.625553, 36.308601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726664, 36.704964, 36.158497>,  <27.444008, 36.837318, 35.908321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726664, 36.704964, 36.158497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485326, -0.416569, -0.768719,
		0.514896, 0.846750, -0.133778,
		0.706641, -0.330885, 0.625439,
		27.938656, 36.605698, 36.346130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959459, 36.911034, 35.535595>,  <27.444008, 36.837318, 35.908321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959459, 36.911034, 35.535595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074686, 36.644138, 35.810349>,  <28.143822, 36.484001, 35.975201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074686, 36.644138, 35.810349>,  <27.959459, 36.911034, 35.535595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074686, 36.644138, 35.810349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725128, -0.316507, -0.611565,
		0.625465, 0.674249, 0.392660,
		0.288068, -0.667241, 0.686881,
		28.161106, 36.443966, 36.016415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648214, 36.964886, 35.556599>,  <27.959459, 36.911034, 35.535595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648214, 36.964886, 35.556599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578604, 36.610409, 35.728355>,  <28.536837, 36.397724, 35.831409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578604, 36.610409, 35.728355>,  <28.648214, 36.964886, 35.556599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578604, 36.610409, 35.728355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827147, -0.368165, -0.424598,
		0.534362, 0.281279, 0.797081,
		-0.174027, -0.886192, 0.429393,
		28.526396, 36.344551, 35.857174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236366, 36.729073, 35.985592>,  <28.648214, 36.964886, 35.556599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236366, 36.729073, 35.985592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017977, 36.451630, 35.797626>,  <28.886942, 36.285164, 35.684849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017977, 36.451630, 35.797626>,  <29.236366, 36.729073, 35.985592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017977, 36.451630, 35.797626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808999, -0.290668, -0.510913,
		0.217788, -0.659102, 0.719828,
		-0.545975, -0.693611, -0.469909,
		28.854183, 36.243546, 35.656654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614481, 36.086254, 36.105240>,  <29.236366, 36.729073, 35.985592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614481, 36.086254, 36.105240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374819, 36.013744, 35.793304>,  <29.231022, 35.970238, 35.606144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374819, 36.013744, 35.793304>,  <29.614481, 36.086254, 36.105240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374819, 36.013744, 35.793304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753027, -0.458456, -0.471983,
		-0.271962, -0.870032, 0.411194,
		-0.599155, -0.181279, -0.779841,
		29.195072, 35.959362, 35.559353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684805, 35.310425, 35.917416>,  <29.614481, 36.086254, 36.105240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684805, 35.310425, 35.917416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592846, 35.520638, 35.589767>,  <29.537670, 35.646767, 35.393177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592846, 35.520638, 35.589767>,  <29.684805, 35.310425, 35.917416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592846, 35.520638, 35.589767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722777, -0.471431, -0.505318,
		-0.651721, -0.708214, -0.271463,
		-0.229897, 0.525534, -0.819122,
		29.523876, 35.678299, 35.344032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444387, 34.832703, 35.386635>,  <29.684805, 35.310425, 35.917416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444387, 34.832703, 35.386635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623606, 35.161739, 35.246582>,  <29.731136, 35.359161, 35.162548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623606, 35.161739, 35.246582>,  <29.444387, 34.832703, 35.386635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623606, 35.161739, 35.246582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527456, -0.559444, -0.639384,
		-0.721835, 0.101791, -0.684538,
		0.448044, 0.822594, -0.350136,
		29.758018, 35.408516, 35.141541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973164, 34.499660, 35.772499>,  <29.444387, 34.832703, 35.386635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973164, 34.499660, 35.772499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900280, 34.190834, 36.016045>,  <28.856550, 34.005539, 36.162170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900280, 34.190834, 36.016045>,  <28.973164, 34.499660, 35.772499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900280, 34.190834, 36.016045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932360, -0.332316, -0.142374,
		0.312257, 0.541740, 0.780393,
		-0.182208, -0.772065, 0.608865,
		28.845617, 33.959213, 36.198704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541159, 34.391949, 36.210434>,  <28.973164, 34.499660, 35.772499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541159, 34.391949, 36.210434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384518, 34.024536, 36.232132>,  <29.290533, 33.804089, 36.245152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384518, 34.024536, 36.232132>,  <29.541159, 34.391949, 36.210434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384518, 34.024536, 36.232132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914092, -0.395099, -0.091277,
		0.105273, 0.013839, 0.994347,
		-0.391602, -0.918534, 0.054244,
		29.267036, 33.748978, 36.248405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805731, 33.990986, 36.805256>,  <29.541159, 34.391949, 36.210434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805731, 33.990986, 36.805256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728062, 33.791538, 36.467339>,  <29.681459, 33.671871, 36.264587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728062, 33.791538, 36.467339>,  <29.805731, 33.990986, 36.805256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728062, 33.791538, 36.467339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958799, -0.278513, -0.055993,
		-0.207367, -0.820859, 0.532155,
		-0.194174, -0.498618, -0.844794,
		29.669809, 33.641953, 36.213902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179207, 33.376343, 36.935585>,  <29.805731, 33.990986, 36.805256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179207, 33.376343, 36.935585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107191, 33.414433, 36.543968>,  <30.063982, 33.437286, 36.308998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107191, 33.414433, 36.543968>,  <30.179207, 33.376343, 36.935585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107191, 33.414433, 36.543968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939510, -0.278191, -0.199829,
		-0.291388, -0.955794, -0.039376,
		-0.180041, 0.095222, -0.979039,
		30.053179, 33.443001, 36.250256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414326, 32.766647, 36.544907>,  <30.179207, 33.376343, 36.935585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414326, 32.766647, 36.544907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439058, 33.083767, 36.302372>,  <30.453897, 33.274040, 36.156853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439058, 33.083767, 36.302372>,  <30.414326, 32.766647, 36.544907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439058, 33.083767, 36.302372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993016, -0.110021, -0.042593,
		-0.100477, -0.599470, -0.794066,
		0.061831, 0.792800, -0.606338,
		30.457607, 33.321606, 36.120472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859348, 32.642620, 35.848343>,  <30.414326, 32.766647, 36.544907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859348, 32.642620, 35.848343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840378, 33.028702, 35.951210>,  <30.828995, 33.260349, 36.012932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840378, 33.028702, 35.951210>,  <30.859348, 32.642620, 35.848343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840378, 33.028702, 35.951210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998867, 0.044794, 0.016089,
		0.004010, 0.257639, -0.966233,
		-0.047427, 0.965203, 0.257167,
		30.826149, 33.318264, 36.028358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284739, 33.082359, 35.312096>,  <30.859348, 32.642620, 35.848343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284739, 33.082359, 35.312096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268522, 33.242878, 35.678116>,  <31.258793, 33.339188, 35.897728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268522, 33.242878, 35.678116>,  <31.284739, 33.082359, 35.312096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268522, 33.242878, 35.678116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999078, 0.003318, 0.042807,
		0.014142, 0.915941, -0.401063,
		-0.040539, 0.401298, 0.915050,
		31.256361, 33.363266, 35.952629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653322, 33.575993, 35.606968>,  <31.284739, 33.082359, 35.312096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653322, 33.575993, 35.606968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608639, 33.748539, 35.965061>,  <31.581829, 33.852066, 36.179916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608639, 33.748539, 35.965061>,  <31.653322, 33.575993, 35.606968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608639, 33.748539, 35.965061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993723, 0.053954, 0.098002,
		-0.006026, 0.900561, -0.434689,
		-0.111710, 0.431369, 0.895233,
		31.575127, 33.877949, 36.233631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044220, 34.144657, 35.608616>,  <31.653322, 33.575993, 35.606968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044220, 34.144657, 35.608616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013092, 34.020351, 35.987534>,  <31.994415, 33.945766, 36.214886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013092, 34.020351, 35.987534>,  <32.044220, 34.144657, 35.608616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013092, 34.020351, 35.987534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996890, -0.012419, 0.077818,
		-0.012419, 0.950405, 0.310766,
		-0.077818, -0.310766, 0.947295,
		31.989746, 33.927120, 36.271721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363758, 34.561920, 36.027401>,  <32.044220, 34.144657, 35.608616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363758, 34.561920, 36.027401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362080, 34.191235, 36.177700>,  <32.361073, 33.968822, 36.267879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362080, 34.191235, 36.177700>,  <32.363758, 34.561920, 36.027401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362080, 34.191235, 36.177700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999449, 0.008485, 0.032084,
		-0.032920, 0.375676, 0.926166,
		-0.004195, -0.926712, 0.375748,
		32.360821, 33.913219, 36.290424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776077, 34.509052, 36.684967>,  <32.363758, 34.561920, 36.027401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776077, 34.509052, 36.684967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787586, 34.178944, 36.459362>,  <32.794491, 33.980881, 36.324001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787586, 34.178944, 36.459362>,  <32.776077, 34.509052, 36.684967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787586, 34.178944, 36.459362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987958, 0.109292, -0.109519,
		0.152024, -0.554067, 0.818473,
		0.028771, -0.825267, -0.564010,
		32.796219, 33.931362, 36.290157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359303, 34.258892, 36.902405>,  <32.776077, 34.509052, 36.684967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359303, 34.258892, 36.902405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281830, 34.117325, 36.536404>,  <33.235344, 34.032383, 36.316803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281830, 34.117325, 36.536404>,  <33.359303, 34.258892, 36.902405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281830, 34.117325, 36.536404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976422, 0.021079, -0.214838,
		0.095323, -0.935038, 0.341494,
		-0.193684, -0.353921, -0.915001,
		33.223724, 34.011150, 36.261902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914425, 33.800003, 36.735588>,  <33.359303, 34.258892, 36.902405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914425, 33.800003, 36.735588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727192, 33.845600, 36.385067>,  <33.614853, 33.872959, 36.174755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727192, 33.845600, 36.385067>,  <33.914425, 33.800003, 36.735588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727192, 33.845600, 36.385067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794911, -0.378875, -0.473889,
		-0.386028, -0.918401, 0.086731,
		-0.468080, 0.113991, -0.876303,
		33.586769, 33.879795, 36.122177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898731, 33.162888, 36.369888>,  <33.914425, 33.800003, 36.735588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898731, 33.162888, 36.369888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874920, 33.473663, 36.119186>,  <33.860634, 33.660130, 35.968765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874920, 33.473663, 36.119186>,  <33.898731, 33.162888, 36.369888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874920, 33.473663, 36.119186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476835, -0.529472, -0.701633,
		-0.876975, -0.340625, -0.338954,
		-0.059527, 0.776939, -0.626755,
		33.857063, 33.706745, 35.931160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667664, 32.907681, 35.770336>,  <33.898731, 33.162888, 36.369888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667664, 32.907681, 35.770336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886948, 33.235207, 35.702206>,  <34.018517, 33.431721, 35.661327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886948, 33.235207, 35.702206>,  <33.667664, 32.907681, 35.770336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886948, 33.235207, 35.702206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462569, -0.466525, -0.753912,
		-0.696775, 0.334514, -0.634511,
		0.548210, 0.818813, -0.170328,
		34.051411, 33.480850, 35.651108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585251, 32.981525, 35.114887>,  <33.667664, 32.907681, 35.770336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585251, 32.981525, 35.114887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902042, 33.215801, 35.183861>,  <34.092117, 33.356365, 35.225246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902042, 33.215801, 35.183861>,  <33.585251, 32.981525, 35.114887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902042, 33.215801, 35.183861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483543, -0.429266, -0.762835,
		-0.372762, 0.687532, -0.623176,
		0.791982, 0.585688, 0.172437,
		34.139637, 33.391506, 35.235592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790058, 33.368324, 34.494629>,  <33.585251, 32.981525, 35.114887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790058, 33.368324, 34.494629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132519, 33.376469, 34.701157>,  <34.337994, 33.381355, 34.825073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132519, 33.376469, 34.701157>,  <33.790058, 33.368324, 34.494629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132519, 33.376469, 34.701157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504391, -0.249941, -0.826510,
		0.112218, 0.968047, -0.224260,
		0.856153, 0.020365, 0.516322,
		34.389366, 33.382580, 34.856052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298271, 33.751762, 34.125374>,  <33.790058, 33.368324, 34.494629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298271, 33.751762, 34.125374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547779, 33.548836, 34.363213>,  <34.697483, 33.427078, 34.505917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547779, 33.548836, 34.363213>,  <34.298271, 33.751762, 34.125374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547779, 33.548836, 34.363213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621077, -0.140143, -0.771119,
		0.474530, 0.850288, 0.227666,
		0.623767, -0.507317, 0.594596,
		34.734909, 33.396641, 34.541592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954605, 34.054749, 33.978001>,  <34.298271, 33.751762, 34.125374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954605, 34.054749, 33.978001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016399, 33.708115, 34.167809>,  <35.053474, 33.500134, 34.281693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016399, 33.708115, 34.167809>,  <34.954605, 34.054749, 33.978001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016399, 33.708115, 34.167809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696642, -0.245033, -0.674276,
		0.700589, 0.434737, 0.565843,
		0.154483, -0.866581, 0.474524,
		35.062744, 33.448139, 34.310165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644390, 34.009247, 34.067963>,  <34.954605, 34.054749, 33.978001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644390, 34.009247, 34.067963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505852, 33.634007, 34.066544>,  <35.422729, 33.408863, 34.065693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505852, 33.634007, 34.066544>,  <35.644390, 34.009247, 34.067963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505852, 33.634007, 34.066544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734130, -0.268680, -0.623589,
		0.584036, -0.218583, 0.781744,
		-0.346345, -0.938100, -0.003550,
		35.401947, 33.352577, 34.065479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256351, 33.644897, 34.233429>,  <35.644390, 34.009247, 34.067963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256351, 33.644897, 34.233429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003628, 33.379028, 34.073917>,  <35.851994, 33.219509, 33.978210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003628, 33.379028, 34.073917>,  <36.256351, 33.644897, 34.233429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003628, 33.379028, 34.073917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733809, -0.347188, -0.583938,
		0.249672, -0.661571, 0.707098,
		-0.631813, -0.664668, -0.398783,
		35.814083, 33.179626, 33.954281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647034, 33.038506, 34.151196>,  <36.256351, 33.644897, 34.233429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647034, 33.038506, 34.151196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334003, 32.985905, 33.907795>,  <36.146183, 32.954346, 33.761753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334003, 32.985905, 33.907795>,  <36.647034, 33.038506, 34.151196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334003, 32.985905, 33.907795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574348, -0.529629, -0.624194,
		-0.240200, -0.837975, 0.490003,
		-0.782578, -0.131501, -0.608506,
		36.099232, 32.946453, 33.725243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771427, 32.466663, 33.767056>,  <36.647034, 33.038506, 34.151196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771427, 32.466663, 33.767056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491638, 32.630676, 33.532921>,  <36.323765, 32.729084, 33.392441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491638, 32.630676, 33.532921>,  <36.771427, 32.466663, 33.767056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491638, 32.630676, 33.532921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512811, -0.282490, -0.810694,
		-0.497761, -0.867222, -0.012675,
		-0.699471, 0.410031, -0.585333,
		36.281796, 32.753685, 33.357323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629078, 32.000896, 33.183208>,  <36.771427, 32.466663, 33.767056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629078, 32.000896, 33.183208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519962, 32.366600, 33.063393>,  <36.454494, 32.586021, 32.991501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519962, 32.366600, 33.063393>,  <36.629078, 32.000896, 33.183208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519962, 32.366600, 33.063393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283943, -0.220974, -0.933031,
		-0.919219, -0.339572, -0.199317,
		-0.272787, 0.914255, -0.299542,
		36.438126, 32.640877, 32.973530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483250, 31.886536, 32.491856>,  <36.629078, 32.000896, 33.183208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483250, 31.886536, 32.491856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479889, 32.284897, 32.527878>,  <36.477871, 32.523914, 32.549492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479889, 32.284897, 32.527878>,  <36.483250, 31.886536, 32.491856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479889, 32.284897, 32.527878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241336, 0.089413, -0.966314,
		-0.970405, 0.013612, -0.241099,
		-0.008404, 0.995902, 0.090052,
		36.477367, 32.583668, 32.554893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023636, 32.120502, 32.049313>,  <36.483250, 31.886536, 32.491856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023636, 32.120502, 32.049313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283592, 32.419147, 32.106190>,  <36.439564, 32.598335, 32.140316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283592, 32.419147, 32.106190>,  <36.023636, 32.120502, 32.049313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283592, 32.419147, 32.106190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098370, 0.102888, -0.989817,
		-0.753636, 0.657259, -0.006578,
		0.649889, 0.746609, 0.142195,
		36.478558, 32.643131, 32.148849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944321, 32.585197, 31.443453>,  <36.023636, 32.120502, 32.049313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944321, 32.585197, 31.443453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272968, 32.733429, 31.616709>,  <36.470158, 32.822369, 31.720661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272968, 32.733429, 31.616709>,  <35.944321, 32.585197, 31.443453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272968, 32.733429, 31.616709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411384, 0.140502, -0.900568,
		-0.394589, 0.918112, -0.037011,
		0.821622, 0.370579, 0.433138,
		36.519455, 32.844604, 31.746651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065418, 33.101559, 31.051657>,  <35.944321, 32.585197, 31.443453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065418, 33.101559, 31.051657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419796, 33.096371, 31.237103>,  <36.632423, 33.093258, 31.348370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419796, 33.096371, 31.237103>,  <36.065418, 33.101559, 31.051657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419796, 33.096371, 31.237103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427490, 0.410540, -0.805425,
		-0.179885, 0.911750, 0.369260,
		0.885942, -0.012971, 0.463614,
		36.685577, 33.092480, 31.376186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292343, 33.815403, 30.986092>,  <36.065418, 33.101559, 31.051657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292343, 33.815403, 30.986092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598057, 33.568371, 31.060343>,  <36.781487, 33.420151, 31.104895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598057, 33.568371, 31.060343>,  <36.292343, 33.815403, 30.986092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598057, 33.568371, 31.060343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504979, 0.394121, -0.767896,
		0.401080, 0.680630, 0.613088,
		0.764284, -0.617585, 0.185630,
		36.827343, 33.383095, 31.116032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968189, 34.215370, 31.033066>,  <36.292343, 33.815403, 30.986092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968189, 34.215370, 31.033066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053440, 33.840015, 30.924250>,  <37.104591, 33.614803, 30.858959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053440, 33.840015, 30.924250>,  <36.968189, 34.215370, 31.033066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053440, 33.840015, 30.924250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543768, 0.345257, -0.764927,
		0.811722, 0.015100, 0.583849,
		0.213128, -0.938387, -0.272042,
		37.117378, 33.558498, 30.842636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572327, 34.323147, 30.641769>,  <36.968189, 34.215370, 31.033066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572327, 34.323147, 30.641769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501926, 33.936356, 30.568037>,  <37.459686, 33.704281, 30.523798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501926, 33.936356, 30.568037>,  <37.572327, 34.323147, 30.641769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501926, 33.936356, 30.568037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319662, 0.120963, -0.939779,
		0.931043, -0.224320, 0.287817,
		-0.175996, -0.966979, -0.184329,
		37.449127, 33.646263, 30.512739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200146, 34.088230, 30.394711>,  <37.572327, 34.323147, 30.641769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200146, 34.088230, 30.394711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886856, 33.874729, 30.267172>,  <37.698883, 33.746628, 30.190649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886856, 33.874729, 30.267172>,  <38.200146, 34.088230, 30.394711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886856, 33.874729, 30.267172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366907, 0.017215, -0.930098,
		0.501934, -0.845464, 0.182355,
		-0.783226, -0.533755, -0.318847,
		37.651890, 33.714603, 30.171518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581394, 33.518730, 29.888887>,  <38.200146, 34.088230, 30.394711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581394, 33.518730, 29.888887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190720, 33.546890, 29.807766>,  <37.956314, 33.563786, 29.759094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190720, 33.546890, 29.807766>,  <38.581394, 33.518730, 29.888887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190720, 33.546890, 29.807766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189088, -0.165157, -0.967972,
		-0.101634, -0.983752, 0.147996,
		-0.976687, 0.070395, -0.202801,
		37.897713, 33.568008, 29.746925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344505, 32.962902, 29.424168>,  <38.581394, 33.518730, 29.888887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344505, 32.962902, 29.424168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061142, 33.240250, 29.371408>,  <37.891125, 33.406658, 29.339752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061142, 33.240250, 29.371408>,  <38.344505, 32.962902, 29.424168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061142, 33.240250, 29.371408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015126, -0.171922, -0.984994,
		-0.705638, -0.699776, 0.111304,
		-0.708411, 0.693365, -0.131900,
		37.848618, 33.448257, 29.331839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819824, 32.680489, 29.000484>,  <38.344505, 32.962902, 29.424168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819824, 32.680489, 29.000484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804024, 33.077625, 28.955410>,  <37.794544, 33.315907, 28.928366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804024, 33.077625, 28.955410>,  <37.819824, 32.680489, 29.000484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804024, 33.077625, 28.955410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037128, -0.114155, -0.992769,
		-0.998530, -0.035031, 0.041371,
		-0.039500, 0.992845, -0.112686,
		37.792175, 33.375481, 28.921604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302353, 32.728703, 28.442034>,  <37.819824, 32.680489, 29.000484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302353, 32.728703, 28.442034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503967, 33.073891, 28.456106>,  <37.624935, 33.281002, 28.464550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503967, 33.073891, 28.456106>,  <37.302353, 32.728703, 28.442034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503967, 33.073891, 28.456106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269329, -0.118345, -0.955749,
		-0.820618, 0.491203, -0.292072,
		0.504032, 0.862968, 0.035179,
		37.655178, 33.332783, 28.466660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168755, 33.112122, 27.818857>,  <37.302353, 32.728703, 28.442034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168755, 33.112122, 27.818857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492813, 33.315002, 27.936441>,  <37.687248, 33.436729, 28.006992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492813, 33.315002, 27.936441>,  <37.168755, 33.112122, 27.818857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492813, 33.315002, 27.936441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461250, -0.242006, -0.853629,
		-0.361818, 0.827154, -0.430005,
		0.810146, 0.507197, 0.293963,
		37.735855, 33.467163, 28.024630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293552, 33.494465, 27.293137>,  <37.168755, 33.112122, 27.818857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293552, 33.494465, 27.293137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642746, 33.485985, 27.488052>,  <37.852261, 33.480896, 27.605001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642746, 33.485985, 27.488052>,  <37.293552, 33.494465, 27.293137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642746, 33.485985, 27.488052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468737, -0.239751, -0.850179,
		0.134853, 0.970603, -0.199360,
		0.872983, -0.021202, 0.487289,
		37.904640, 33.479626, 27.634239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750713, 33.937706, 26.969452>,  <37.293552, 33.494465, 27.293137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750713, 33.937706, 26.969452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998341, 33.703415, 27.178707>,  <38.146915, 33.562840, 27.304260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998341, 33.703415, 27.178707>,  <37.750713, 33.937706, 26.969452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998341, 33.703415, 27.178707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632756, -0.022536, -0.774023,
		0.465160, 0.810191, 0.356674,
		0.619069, -0.585732, 0.523136,
		38.184063, 33.527695, 27.335648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498814, 34.269279, 26.914309>,  <37.750713, 33.937706, 26.969452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498814, 34.269279, 26.914309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510490, 33.878597, 26.999352>,  <38.517494, 33.644188, 27.050377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510490, 33.878597, 26.999352>,  <38.498814, 34.269279, 26.914309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510490, 33.878597, 26.999352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668332, -0.139094, -0.730743,
		0.743291, 0.163422, 0.648701,
		0.029189, -0.976702, 0.212607,
		38.519249, 33.585587, 27.063133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143997, 34.099453, 26.799725>,  <38.498814, 34.269279, 26.914309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143997, 34.099453, 26.799725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983440, 33.734478, 26.767881>,  <38.887108, 33.515491, 26.748775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983440, 33.734478, 26.767881>,  <39.143997, 34.099453, 26.799725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983440, 33.734478, 26.767881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631113, -0.212549, -0.746002,
		0.663762, -0.349680, 0.661169,
		-0.401393, -0.912440, -0.079606,
		38.863022, 33.460747, 26.743999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644585, 33.735989, 26.676353>,  <39.143997, 34.099453, 26.799725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644585, 33.735989, 26.676353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336182, 33.534164, 26.520935>,  <39.151142, 33.413071, 26.427685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336182, 33.534164, 26.520935>,  <39.644585, 33.735989, 26.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336182, 33.534164, 26.520935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550979, -0.222579, -0.804289,
		0.319333, -0.834191, 0.449613,
		-0.771005, -0.504563, -0.388545,
		39.104881, 33.382797, 26.404371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861309, 33.135265, 26.284058>,  <39.644585, 33.735989, 26.676353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861309, 33.135265, 26.284058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500454, 33.193325, 26.121536>,  <39.283943, 33.228161, 26.024023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500454, 33.193325, 26.121536>,  <39.861309, 33.135265, 26.284058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500454, 33.193325, 26.121536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355916, -0.281929, -0.890977,
		-0.243872, -0.948392, 0.202678,
		-0.902136, 0.145148, -0.406303,
		39.229813, 33.236870, 25.999645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692234, 32.500244, 25.863329>,  <39.861309, 33.135265, 26.284058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692234, 32.500244, 25.863329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512718, 32.827618, 25.719805>,  <39.405006, 33.024044, 25.633690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512718, 32.827618, 25.719805>,  <39.692234, 32.500244, 25.863329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512718, 32.827618, 25.719805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473068, -0.123053, -0.872390,
		-0.758150, -0.561264, -0.331951,
		-0.448793, 0.818438, -0.358808,
		39.378078, 33.073151, 25.612162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735020, 32.292282, 25.151358>,  <39.692234, 32.500244, 25.863329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735020, 32.292282, 25.151358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609493, 32.672070, 25.148994>,  <39.534176, 32.899940, 25.147575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609493, 32.672070, 25.148994>,  <39.735020, 32.292282, 25.151358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609493, 32.672070, 25.148994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268687, 0.082833, -0.959659,
		-0.910674, -0.302745, -0.281103,
		-0.313817, 0.949465, -0.005910,
		39.515347, 32.956909, 25.147221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261639, 32.436150, 24.549917>,  <39.735020, 32.292282, 25.151358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261639, 32.436150, 24.549917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425602, 32.791668, 24.631910>,  <39.523979, 33.004978, 24.681107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425602, 32.791668, 24.631910>,  <39.261639, 32.436150, 24.549917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425602, 32.791668, 24.631910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084083, 0.186956, -0.978763,
		-0.908243, 0.418440, 0.001902,
		0.409909, 0.888795, 0.204985,
		39.548576, 33.058308, 24.693405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895115, 32.897282, 24.054197>,  <39.261639, 32.436150, 24.549917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895115, 32.897282, 24.054197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222061, 33.079548, 24.195215>,  <39.418228, 33.188908, 24.279825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222061, 33.079548, 24.195215>,  <38.895115, 32.897282, 24.054197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222061, 33.079548, 24.195215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227470, 0.306968, -0.924136,
		-0.529313, 0.835550, 0.147256,
		0.817365, 0.455661, 0.352545,
		39.467270, 33.216248, 24.300978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935371, 33.409683, 23.657431>,  <38.895115, 32.897282, 24.054197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935371, 33.409683, 23.657431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302868, 33.376850, 23.811920>,  <39.523365, 33.357151, 23.904613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302868, 33.376850, 23.811920>,  <38.935371, 33.409683, 23.657431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302868, 33.376850, 23.811920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391085, 0.054401, -0.918745,
		0.054401, 0.995140, 0.082081,
		0.918745, -0.082081, 0.386225,
		39.578491, 33.352226, 23.927788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327168, 34.037174, 23.518238>,  <38.935371, 33.409683, 23.657431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327168, 34.037174, 23.518238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622738, 33.773178, 23.572496>,  <39.800079, 33.614780, 23.605051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622738, 33.773178, 23.572496>,  <39.327168, 34.037174, 23.518238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622738, 33.773178, 23.572496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480938, 0.375641, -0.792208,
		0.471897, 0.650620, 0.594986,
		0.738927, -0.659991, 0.135644,
		39.844418, 33.575180, 23.613190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915451, 34.346931, 23.284805>,  <39.327168, 34.037174, 23.518238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915451, 34.346931, 23.284805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041767, 33.968388, 23.312195>,  <40.117558, 33.741261, 23.328629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041767, 33.968388, 23.312195>,  <39.915451, 34.346931, 23.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041767, 33.968388, 23.312195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636036, 0.157582, -0.755398,
		0.704085, 0.282099, 0.651679,
		0.315790, -0.946355, 0.068474,
		40.136505, 33.684483, 23.332737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719612, 34.354992, 23.339643>,  <39.915451, 34.346931, 23.284805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719612, 34.354992, 23.339643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588448, 34.001659, 23.205660>,  <40.509750, 33.789661, 23.125269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588448, 34.001659, 23.205660>,  <40.719612, 34.354992, 23.339643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588448, 34.001659, 23.205660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708272, 0.004762, -0.705923,
		0.625160, -0.468723, 0.624078,
		-0.327910, -0.883333, -0.334961,
		40.490074, 33.736660, 23.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337719, 34.089081, 23.132467>,  <40.719612, 34.354992, 23.339643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337719, 34.089081, 23.132467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061493, 33.855019, 22.962427>,  <40.895756, 33.714581, 22.860403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061493, 33.855019, 22.962427>,  <41.337719, 34.089081, 23.132467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061493, 33.855019, 22.962427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567291, -0.073613, -0.820221,
		0.448667, -0.807570, 0.382790,
		-0.690564, -0.585160, -0.425100,
		40.854324, 33.679470, 22.834898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751381, 33.620724, 22.686655>,  <41.337719, 34.089081, 23.132467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751381, 33.620724, 22.686655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371586, 33.595398, 22.563711>,  <41.143711, 33.580204, 22.489944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371586, 33.595398, 22.563711>,  <41.751381, 33.620724, 22.686655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371586, 33.595398, 22.563711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308662, -0.011702, -0.951100,
		0.056626, -0.997925, 0.030656,
		-0.949485, -0.063319, -0.307359,
		41.086739, 33.576405, 22.471504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697315, 33.076199, 22.155584>,  <41.751381, 33.620724, 22.686655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697315, 33.076199, 22.155584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408985, 33.346569, 22.094225>,  <41.235985, 33.508789, 22.057409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408985, 33.346569, 22.094225>,  <41.697315, 33.076199, 22.155584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408985, 33.346569, 22.094225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303601, 0.108957, -0.946549,
		-0.623082, -0.728872, -0.283750,
		-0.720829, 0.675925, -0.153397,
		41.192738, 33.549347, 22.048206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547070, 32.940037, 21.504892>,  <41.697315, 33.076199, 22.155584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547070, 32.940037, 21.504892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370399, 33.295815, 21.551903>,  <41.264397, 33.509281, 21.580109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370399, 33.295815, 21.551903>,  <41.547070, 32.940037, 21.504892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370399, 33.295815, 21.551903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412245, 0.317549, -0.853942,
		-0.796853, -0.328717, -0.506922,
		-0.441677, 0.889443, 0.117528,
		41.237896, 33.562649, 21.587162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361210, 33.047520, 20.894354>,  <41.547070, 32.940037, 21.504892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361210, 33.047520, 20.894354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361046, 33.417183, 21.047155>,  <41.360947, 33.638981, 21.138836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361046, 33.417183, 21.047155>,  <41.361210, 33.047520, 20.894354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361046, 33.417183, 21.047155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392690, 0.351469, -0.849861,
		-0.919671, 0.149661, -0.363053,
		-0.000411, 0.924160, 0.382006,
		41.360924, 33.694431, 21.161757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230461, 33.341343, 20.298193>,  <41.361210, 33.047520, 20.894354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230461, 33.341343, 20.298193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379047, 33.619400, 20.544373>,  <41.468201, 33.786236, 20.692081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379047, 33.619400, 20.544373>,  <41.230461, 33.341343, 20.298193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379047, 33.619400, 20.544373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520237, 0.393202, -0.758120,
		-0.769002, 0.601799, -0.215578,
		0.371470, 0.695147, 0.615451,
		41.490490, 33.827946, 20.729008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086464, 34.063812, 19.970612>,  <41.230461, 33.341343, 20.298193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086464, 34.063812, 19.970612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393948, 34.046585, 20.225870>,  <41.578438, 34.036247, 20.379025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393948, 34.046585, 20.225870>,  <41.086464, 34.063812, 19.970612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393948, 34.046585, 20.225870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594996, 0.414207, -0.688776,
		-0.234659, 0.909163, 0.344031,
		0.768710, -0.043070, 0.638146,
		41.624561, 34.033665, 20.417315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095844, 34.712284, 20.343124>,  <41.086464, 34.063812, 19.970612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095844, 34.712284, 20.343124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109650, 35.104549, 20.266075>,  <41.117931, 35.339909, 20.219847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109650, 35.104549, 20.266075>,  <41.095844, 34.712284, 20.343124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109650, 35.104549, 20.266075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041338, -0.193973, -0.980136,
		-0.998549, 0.025866, -0.047233,
		0.034514, 0.980666, -0.192622,
		41.120003, 35.398750, 20.208288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579094, 34.822735, 19.831358>,  <41.095844, 34.712284, 20.343124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579094, 34.822735, 19.831358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839203, 35.126137, 19.814283>,  <40.995270, 35.308178, 19.804039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839203, 35.126137, 19.814283>,  <40.579094, 34.822735, 19.831358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839203, 35.126137, 19.814283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078752, -0.123185, -0.989254,
		-0.755609, 0.639923, -0.139837,
		0.650272, 0.758501, -0.042685,
		41.034283, 35.353687, 19.801477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368576, 35.370026, 19.325493>,  <40.579094, 34.822735, 19.831358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368576, 35.370026, 19.325493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760582, 35.340385, 19.399343>,  <40.995785, 35.322601, 19.443655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760582, 35.340385, 19.399343>,  <40.368576, 35.370026, 19.325493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760582, 35.340385, 19.399343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174121, -0.129425, -0.976182,
		0.096230, 0.988817, -0.113936,
		0.980011, -0.074099, 0.184629,
		41.054585, 35.318157, 19.454733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799915, 35.899372, 18.985237>,  <40.368576, 35.370026, 19.325493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799915, 35.899372, 18.985237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052544, 35.591400, 19.021730>,  <41.204121, 35.406616, 19.043627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052544, 35.591400, 19.021730>,  <40.799915, 35.899372, 18.985237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052544, 35.591400, 19.021730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278864, 0.115786, -0.953325,
		0.723428, 0.627538, 0.287832,
		0.631575, -0.769928, 0.091235,
		41.242016, 35.360420, 19.049101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498741, 36.015430, 18.646605>,  <40.799915, 35.899372, 18.985237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498741, 36.015430, 18.646605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419548, 35.626354, 18.598158>,  <41.372032, 35.392906, 18.569090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419548, 35.626354, 18.598158>,  <41.498741, 36.015430, 18.646605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419548, 35.626354, 18.598158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302058, 0.057007, -0.951584,
		0.932504, -0.224983, 0.282524,
		-0.197984, -0.972694, -0.121117,
		41.360153, 35.334545, 18.561823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096153, 35.553661, 18.516317>,  <41.498741, 36.015430, 18.646605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096153, 35.553661, 18.516317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754887, 35.448570, 18.336060>,  <41.550125, 35.385517, 18.227905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754887, 35.448570, 18.336060>,  <42.096153, 35.553661, 18.516317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754887, 35.448570, 18.336060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479023, -0.052597, -0.876225,
		0.206506, -0.963435, 0.170727,
		-0.853166, -0.262728, -0.450646,
		41.498936, 35.369751, 18.200867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118629, 35.751991, 19.171597>,  <42.096153, 35.553661, 18.516317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118629, 35.751991, 19.171597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722435, 35.728775, 19.221497>,  <41.484718, 35.714844, 19.251436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722435, 35.728775, 19.221497>,  <42.118629, 35.751991, 19.171597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722435, 35.728775, 19.221497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111064, 0.197916, 0.973907,
		-0.081220, 0.978499, -0.189587,
		-0.990489, -0.058045, 0.124751,
		41.425289, 35.711361, 19.258923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843651, 36.392963, 19.600080>,  <42.118629, 35.751991, 19.171597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843651, 36.392963, 19.600080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593170, 36.087299, 19.661953>,  <41.442883, 35.903900, 19.699076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593170, 36.087299, 19.661953>,  <41.843651, 36.392963, 19.600080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593170, 36.087299, 19.661953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093933, 0.270892, 0.958016,
		-0.773982, 0.585381, -0.241413,
		-0.626201, -0.764164, 0.154680,
		41.405312, 35.858051, 19.708357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192856, 36.676712, 19.959532>,  <41.843651, 36.392963, 19.600080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192856, 36.676712, 19.959532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173122, 36.285110, 20.038643>,  <41.161282, 36.050148, 20.086109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173122, 36.285110, 20.038643>,  <41.192856, 36.676712, 19.959532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173122, 36.285110, 20.038643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317123, 0.203126, 0.926376,
		-0.947100, -0.017018, -0.320486,
		-0.049334, -0.979004, 0.197778,
		41.158321, 35.991409, 20.097977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565529, 36.507156, 20.124414>,  <41.192856, 36.676712, 19.959532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565529, 36.507156, 20.124414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734299, 36.182766, 20.286552>,  <40.835560, 35.988132, 20.383835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734299, 36.182766, 20.286552>,  <40.565529, 36.507156, 20.124414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734299, 36.182766, 20.286552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498760, 0.165733, 0.850747,
		-0.757111, -0.561121, -0.334553,
		0.421926, -0.810972, 0.405343,
		40.860878, 35.939476, 20.408155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070621, 36.284370, 20.576162>,  <40.565529, 36.507156, 20.124414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070621, 36.284370, 20.576162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398228, 36.092583, 20.702225>,  <40.594791, 35.977509, 20.777863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398228, 36.092583, 20.702225>,  <40.070621, 36.284370, 20.576162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398228, 36.092583, 20.702225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351945, 0.013993, 0.935916,
		-0.453155, -0.877446, -0.157288,
		0.819015, -0.479472, 0.315154,
		40.643932, 35.948742, 20.796770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892799, 35.614784, 21.006126>,  <40.070621, 36.284370, 20.576162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892799, 35.614784, 21.006126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246910, 35.755764, 21.127489>,  <40.459377, 35.840351, 21.200308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246910, 35.755764, 21.127489>,  <39.892799, 35.614784, 21.006126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246910, 35.755764, 21.127489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341466, 0.049710, 0.938579,
		0.315722, -0.934509, 0.164358,
		0.885280, 0.352452, 0.303408,
		40.512493, 35.861500, 21.218512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982162, 35.266029, 21.541275>,  <39.892799, 35.614784, 21.006126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982162, 35.266029, 21.541275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235569, 35.574570, 21.565487>,  <40.387615, 35.759693, 21.580013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235569, 35.574570, 21.565487>,  <39.982162, 35.266029, 21.541275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235569, 35.574570, 21.565487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210869, 0.096860, 0.972704,
		0.744438, -0.628990, 0.224018,
		0.633520, 0.771356, 0.060528,
		40.425625, 35.805977, 21.583645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235027, 35.079803, 22.131367>,  <39.982162, 35.266029, 21.541275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235027, 35.079803, 22.131367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351158, 35.458340, 22.074577>,  <40.420837, 35.685459, 22.040504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351158, 35.458340, 22.074577>,  <40.235027, 35.079803, 22.131367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351158, 35.458340, 22.074577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018479, 0.153878, 0.987917,
		0.956748, -0.284198, 0.062162,
		0.290330, 0.946337, -0.141971,
		40.438255, 35.742241, 22.031986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599960, 35.208752, 22.615807>,  <40.235027, 35.079803, 22.131367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599960, 35.208752, 22.615807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521362, 35.593269, 22.538549>,  <40.474205, 35.823978, 22.492195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521362, 35.593269, 22.538549>,  <40.599960, 35.208752, 22.615807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521362, 35.593269, 22.538549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061447, 0.184522, 0.980906,
		0.978578, 0.204609, 0.022812,
		-0.196493, 0.961295, -0.193141,
		40.462414, 35.881657, 22.480606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017696, 35.618176, 23.101725>,  <40.599960, 35.208752, 22.615807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017696, 35.618176, 23.101725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707428, 35.845310, 22.991520>,  <40.521267, 35.981590, 22.925396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707428, 35.845310, 22.991520>,  <41.017696, 35.618176, 23.101725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707428, 35.845310, 22.991520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218841, 0.167474, 0.961281,
		0.591988, 0.805927, -0.005639,
		-0.775667, 0.567832, -0.275513,
		40.474728, 36.015659, 22.908867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050377, 36.209679, 23.554115>,  <41.017696, 35.618176, 23.101725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050377, 36.209679, 23.554115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681980, 36.217846, 23.398499>,  <40.460941, 36.222744, 23.305128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681980, 36.217846, 23.398499>,  <41.050377, 36.209679, 23.554115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681980, 36.217846, 23.398499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374097, 0.232352, 0.897811,
		0.108724, 0.972418, -0.206358,
		-0.920994, 0.020415, -0.389041,
		40.405682, 36.223972, 23.281786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728600, 36.868191, 23.738138>,  <41.050377, 36.209679, 23.554115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728600, 36.868191, 23.738138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433121, 36.612946, 23.651295>,  <40.255833, 36.459797, 23.599188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433121, 36.612946, 23.651295>,  <40.728600, 36.868191, 23.738138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433121, 36.612946, 23.651295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503226, 0.307817, 0.807473,
		-0.448429, 0.705734, -0.548498,
		-0.738698, -0.638113, -0.217109,
		40.211510, 36.421513, 23.586163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078663, 37.182240, 24.024252>,  <40.728600, 36.868191, 23.738138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078663, 37.182240, 24.024252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958656, 36.805267, 23.965174>,  <39.886650, 36.579082, 23.929728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958656, 36.805267, 23.965174>,  <40.078663, 37.182240, 24.024252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958656, 36.805267, 23.965174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587788, 0.060692, 0.806735,
		-0.751328, 0.328849, -0.572158,
		-0.300019, -0.942430, -0.147694,
		39.868652, 36.522537, 23.920866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487354, 37.162243, 24.286003>,  <40.078663, 37.182240, 24.024252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487354, 37.162243, 24.286003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519680, 36.764061, 24.265827>,  <39.539078, 36.525154, 24.253721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519680, 36.764061, 24.265827>,  <39.487354, 37.162243, 24.286003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519680, 36.764061, 24.265827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590304, -0.088578, 0.802306,
		-0.803125, -0.035066, -0.594778,
		0.080818, -0.995452, -0.050440,
		39.543926, 36.465424, 24.250696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789970, 36.926880, 24.298405>,  <39.487354, 37.162243, 24.286003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789970, 36.926880, 24.298405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043522, 36.654499, 24.445105>,  <39.195652, 36.491070, 24.533125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043522, 36.654499, 24.445105>,  <38.789970, 36.926880, 24.298405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043522, 36.654499, 24.445105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600827, -0.134934, 0.787908,
		-0.487042, -0.719788, -0.494667,
		0.633874, -0.680954, 0.366750,
		39.233685, 36.450214, 24.555130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316910, 36.426117, 24.551205>,  <38.789970, 36.926880, 24.298405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316910, 36.426117, 24.551205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663990, 36.331837, 24.726265>,  <38.872238, 36.275269, 24.831301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663990, 36.331837, 24.726265>,  <38.316910, 36.426117, 24.551205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663990, 36.331837, 24.726265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480910, -0.175281, 0.859070,
		-0.125770, -0.955888, -0.265442,
		0.867702, -0.235699, 0.437651,
		38.924301, 36.261127, 24.857561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256054, 35.898609, 25.071096>,  <38.316910, 36.426117, 24.551205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256054, 35.898609, 25.071096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595173, 36.087482, 25.167656>,  <38.798645, 36.200806, 25.225592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595173, 36.087482, 25.167656>,  <38.256054, 35.898609, 25.071096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595173, 36.087482, 25.167656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238577, -0.066937, 0.968814,
		0.473621, -0.878953, 0.055904,
		0.847800, 0.472188, 0.241400,
		38.849514, 36.229137, 25.240076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696804, 35.468540, 25.521530>,  <38.256054, 35.898609, 25.071096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696804, 35.468540, 25.521530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803715, 35.850586, 25.572630>,  <38.867859, 36.079815, 25.603291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803715, 35.850586, 25.572630>,  <38.696804, 35.468540, 25.521530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803715, 35.850586, 25.572630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180068, -0.080734, 0.980335,
		0.946646, -0.285023, 0.150408,
		0.267275, 0.955115, 0.127750,
		38.883896, 36.137119, 25.610954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213760, 35.490234, 26.085056>,  <38.696804, 35.468540, 25.521530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213760, 35.490234, 26.085056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038715, 35.848637, 26.054955>,  <38.933689, 36.063679, 26.036894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038715, 35.848637, 26.054955>,  <39.213760, 35.490234, 26.085056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038715, 35.848637, 26.054955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161788, 0.003861, 0.986818,
		0.884489, 0.444018, 0.143274,
		-0.437612, 0.896010, -0.075252,
		38.907433, 36.117439, 26.032379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366661, 35.774799, 26.711475>,  <39.213760, 35.490234, 26.085056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366661, 35.774799, 26.711475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085098, 36.034512, 26.596270>,  <38.916161, 36.190338, 26.527145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085098, 36.034512, 26.596270>,  <39.366661, 35.774799, 26.711475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085098, 36.034512, 26.596270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215057, 0.191641, 0.957614,
		0.676953, 0.736011, 0.004735,
		-0.703906, 0.649278, -0.288017,
		38.873928, 36.229294, 26.509865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520691, 36.432041, 27.106180>,  <39.366661, 35.774799, 26.711475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520691, 36.432041, 27.106180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141541, 36.464478, 26.982922>,  <38.914051, 36.483940, 26.908966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141541, 36.464478, 26.982922>,  <39.520691, 36.432041, 27.106180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141541, 36.464478, 26.982922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279691, 0.251573, 0.926544,
		0.152659, 0.964435, -0.215779,
		-0.947876, 0.081094, -0.308149,
		38.857178, 36.488808, 26.890476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239067, 37.123013, 27.336794>,  <39.520691, 36.432041, 27.106180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239067, 37.123013, 27.336794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923920, 36.880341, 27.294472>,  <38.734829, 36.734737, 27.269079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923920, 36.880341, 27.294472>,  <39.239067, 37.123013, 27.336794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923920, 36.880341, 27.294472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298825, 0.226393, 0.927065,
		-0.538482, 0.762025, -0.359661,
		-0.787871, -0.606684, -0.105804,
		38.687557, 36.698334, 27.262730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680847, 37.507126, 27.523109>,  <39.239067, 37.123013, 27.336794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680847, 37.507126, 27.523109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550529, 37.130424, 27.556477>,  <38.472340, 36.904404, 27.576496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550529, 37.130424, 27.556477>,  <38.680847, 37.507126, 27.523109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550529, 37.130424, 27.556477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398107, 0.216679, 0.891381,
		-0.857535, 0.257202, -0.445512,
		-0.325798, -0.941752, 0.083416,
		38.452789, 36.847900, 27.581501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988113, 37.522495, 27.905754>,  <38.680847, 37.507126, 27.523109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988113, 37.522495, 27.905754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134102, 37.151993, 27.943356>,  <38.221695, 36.929691, 27.965916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134102, 37.151993, 27.943356>,  <37.988113, 37.522495, 27.905754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134102, 37.151993, 27.943356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515451, -0.116952, 0.848901,
		-0.775309, -0.358280, -0.520126,
		0.364974, -0.926260, 0.094002,
		38.243595, 36.874115, 27.971556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461597, 37.058758, 28.105951>,  <37.988113, 37.522495, 27.905754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461597, 37.058758, 28.105951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791225, 36.854992, 28.205069>,  <37.989002, 36.732731, 28.264540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791225, 36.854992, 28.205069>,  <37.461597, 37.058758, 28.105951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791225, 36.854992, 28.205069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284266, 0.006500, 0.958724,
		-0.490003, -0.860494, -0.139454,
		0.824070, -0.509419, 0.247794,
		38.038445, 36.702168, 28.279408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192852, 36.533344, 28.504738>,  <37.461597, 37.058758, 28.105951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192852, 36.533344, 28.504738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578217, 36.529915, 28.611893>,  <37.809437, 36.527859, 28.676186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578217, 36.529915, 28.611893>,  <37.192852, 36.533344, 28.504738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578217, 36.529915, 28.611893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266822, -0.125292, 0.955567,
		0.025370, -0.992083, -0.122996,
		0.963412, -0.008575, 0.267889,
		37.867241, 36.527344, 28.692259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252346, 35.921940, 28.817785>,  <37.192852, 36.533344, 28.504738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252346, 35.921940, 28.817785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556637, 36.149986, 28.941891>,  <37.739212, 36.286812, 29.016354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556637, 36.149986, 28.941891>,  <37.252346, 35.921940, 28.817785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556637, 36.149986, 28.941891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242923, -0.193193, 0.950613,
		0.601899, -0.798527, -0.008473,
		0.760727, 0.570114, 0.310263,
		37.784855, 36.321022, 29.034969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558445, 35.475655, 29.288261>,  <37.252346, 35.921940, 28.817785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558445, 35.475655, 29.288261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683620, 35.842194, 29.388161>,  <37.758724, 36.062119, 29.448101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683620, 35.842194, 29.388161>,  <37.558445, 35.475655, 29.288261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683620, 35.842194, 29.388161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203922, -0.191998, 0.959975,
		0.927625, -0.351339, 0.126781,
		0.312935, 0.916350, 0.249748,
		37.777500, 36.117100, 29.463085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013386, 35.315887, 29.854612>,  <37.558445, 35.475655, 29.288261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013386, 35.315887, 29.854612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918304, 35.702236, 29.895788>,  <37.861256, 35.934044, 29.920494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918304, 35.702236, 29.895788>,  <38.013386, 35.315887, 29.854612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918304, 35.702236, 29.895788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155303, -0.142407, 0.977549,
		0.958842, 0.216380, 0.183852,
		-0.237704, 0.965867, 0.102941,
		37.846992, 35.991997, 29.926670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426594, 35.575306, 30.515152>,  <38.013386, 35.315887, 29.854612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426594, 35.575306, 30.515152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124496, 35.827225, 30.442528>,  <37.943237, 35.978374, 30.398954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124496, 35.827225, 30.442528>,  <38.426594, 35.575306, 30.515152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124496, 35.827225, 30.442528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313778, -0.104210, 0.943760,
		0.575453, 0.769741, 0.276319,
		-0.755247, 0.629792, -0.181559,
		37.897923, 36.016163, 30.388060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428051, 36.056042, 31.036880>,  <38.426594, 35.575306, 30.515152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428051, 36.056042, 31.036880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057739, 36.083660, 30.888201>,  <37.835552, 36.100231, 30.798992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057739, 36.083660, 30.888201>,  <38.428051, 36.056042, 31.036880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057739, 36.083660, 30.888201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365798, 0.084773, 0.926825,
		0.095503, 0.994005, -0.053224,
		-0.925781, 0.069046, -0.371702,
		37.780006, 36.104374, 30.776690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212322, 36.467255, 31.484997>,  <38.428051, 36.056042, 31.036880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212322, 36.467255, 31.484997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877357, 36.311405, 31.331673>,  <37.676376, 36.217896, 31.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877357, 36.311405, 31.331673>,  <38.212322, 36.467255, 31.484997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877357, 36.311405, 31.331673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459900, 0.123346, 0.879362,
		-0.295339, 0.912677, -0.282479,
		-0.837417, -0.389622, -0.383312,
		37.626133, 36.194519, 31.216679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632408, 36.924686, 31.459759>,  <38.212322, 36.467255, 31.484997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632408, 36.924686, 31.459759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470123, 36.560249, 31.488882>,  <37.372753, 36.341587, 31.506355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470123, 36.560249, 31.488882>,  <37.632408, 36.924686, 31.459759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470123, 36.560249, 31.488882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482901, 0.281307, 0.829260,
		-0.776017, 0.301284, -0.554099,
		-0.405715, -0.911095, 0.072808,
		37.348408, 36.286922, 31.510725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979687, 37.038513, 31.707693>,  <37.632408, 36.924686, 31.459759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979687, 37.038513, 31.707693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998669, 36.640820, 31.746147>,  <37.010059, 36.402203, 31.769220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998669, 36.640820, 31.746147>,  <36.979687, 37.038513, 31.707693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998669, 36.640820, 31.746147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482074, 0.061497, 0.873969,
		-0.874844, -0.087821, -0.476377,
		0.047457, -0.994236, 0.096137,
		37.012905, 36.342548, 31.774988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300842, 36.851944, 31.891247>,  <36.979687, 37.038513, 31.707693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300842, 36.851944, 31.891247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534851, 36.547287, 32.002708>,  <36.675255, 36.364494, 32.069584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534851, 36.547287, 32.002708>,  <36.300842, 36.851944, 31.891247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534851, 36.547287, 32.002708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454479, -0.023308, 0.890452,
		-0.671713, -0.647577, -0.359787,
		0.585022, -0.761644, 0.278654,
		36.710358, 36.318794, 32.086304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879337, 36.391735, 32.168694>,  <36.300842, 36.851944, 31.891247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879337, 36.391735, 32.168694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228687, 36.287155, 32.333061>,  <36.438297, 36.224407, 32.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228687, 36.287155, 32.333061>,  <35.879337, 36.391735, 32.168694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228687, 36.287155, 32.333061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452001, -0.120862, 0.883791,
		-0.181409, -0.957618, -0.223736,
		0.873376, -0.261457, 0.410919,
		36.490700, 36.208721, 32.456337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660416, 35.776386, 32.563339>,  <35.879337, 36.391735, 32.168694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660416, 35.776386, 32.563339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998276, 35.918819, 32.723225>,  <36.200993, 36.004280, 32.819157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998276, 35.918819, 32.723225>,  <35.660416, 35.776386, 32.563339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998276, 35.918819, 32.723225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417712, -0.028556, 0.908131,
		0.334784, -0.934018, 0.124620,
		0.844652, 0.356083, 0.399711,
		36.251671, 36.025642, 32.843140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854790, 35.283478, 33.052433>,  <35.660416, 35.776386, 32.563339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854790, 35.283478, 33.052433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068146, 35.603294, 33.162872>,  <36.196159, 35.795185, 33.229137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068146, 35.603294, 33.162872>,  <35.854790, 35.283478, 33.052433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068146, 35.603294, 33.162872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569460, 0.098062, 0.816149,
		0.625472, -0.592548, 0.507613,
		0.533385, 0.799544, 0.276097,
		36.228161, 35.843159, 33.245701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104267, 35.133194, 33.755604>,  <35.854790, 35.283478, 33.052433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104267, 35.133194, 33.755604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136894, 35.531399, 33.736370>,  <36.156471, 35.770321, 33.724831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136894, 35.531399, 33.736370>,  <36.104267, 35.133194, 33.755604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136894, 35.531399, 33.736370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346450, 0.073552, 0.935181,
		0.934516, -0.059619, 0.350893,
		0.081563, 0.995508, -0.048080,
		36.161362, 35.830051, 33.721947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487122, 35.353363, 34.374996>,  <36.104267, 35.133194, 33.755604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487122, 35.353363, 34.374996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296085, 35.680271, 34.246017>,  <36.181461, 35.876415, 34.168629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296085, 35.680271, 34.246017>,  <36.487122, 35.353363, 34.374996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296085, 35.680271, 34.246017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390719, 0.131151, 0.911119,
		0.786920, 0.561132, 0.256686,
		-0.477593, 0.817270, -0.322450,
		36.152809, 35.925453, 34.149281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650997, 35.886799, 34.809875>,  <36.487122, 35.353363, 34.374996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650997, 35.886799, 34.809875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295803, 35.983742, 34.653545>,  <36.082687, 36.041908, 34.559746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295803, 35.983742, 34.653545>,  <36.650997, 35.886799, 34.809875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295803, 35.983742, 34.653545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353149, 0.184995, 0.917095,
		0.294568, 0.952386, -0.078683,
		-0.887984, 0.242360, -0.390828,
		36.029408, 36.056450, 34.536297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400700, 36.489544, 35.056881>,  <36.650997, 35.886799, 34.809875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400700, 36.489544, 35.056881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068443, 36.297127, 34.944714>,  <35.869087, 36.181679, 34.877415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068443, 36.297127, 34.944714>,  <36.400700, 36.489544, 35.056881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068443, 36.297127, 34.944714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493755, 0.403571, 0.770283,
		-0.257368, 0.778288, -0.572739,
		-0.830643, -0.481039, -0.280417,
		35.819252, 36.152817, 34.860588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576756, 37.292980, 34.958160>,  <36.400700, 36.489544, 35.056881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576756, 37.292980, 34.958160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833942, 37.518566, 35.165440>,  <36.988255, 37.653919, 35.289806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833942, 37.518566, 35.165440>,  <36.576756, 37.292980, 34.958160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833942, 37.518566, 35.165440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621309, 0.011556, -0.783480,
		-0.447844, 0.825717, -0.342967,
		0.642970, 0.563966, 0.518201,
		37.026833, 37.687756, 35.320900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778732, 38.029278, 34.642174>,  <36.576756, 37.292980, 34.958160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778732, 38.029278, 34.642174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063179, 37.856647, 34.864185>,  <37.233849, 37.753067, 34.997391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063179, 37.856647, 34.864185>,  <36.778732, 38.029278, 34.642174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063179, 37.856647, 34.864185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638397, 0.065627, -0.766904,
		0.294555, 0.899685, 0.322187,
		0.711116, -0.431579, 0.555025,
		37.276512, 37.727173, 35.030693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350929, 38.457550, 34.659050>,  <36.778732, 38.029278, 34.642174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350929, 38.457550, 34.659050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517792, 38.107372, 34.756691>,  <37.617908, 37.897266, 34.815273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517792, 38.107372, 34.756691>,  <37.350929, 38.457550, 34.659050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517792, 38.107372, 34.756691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732672, 0.165018, -0.660273,
		0.537750, 0.454280, 0.710250,
		0.417153, -0.875442, 0.244099,
		37.642937, 37.844738, 34.829922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105236, 38.517727, 34.686996>,  <37.350929, 38.457550, 34.659050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105236, 38.517727, 34.686996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062851, 38.122406, 34.643112>,  <38.037422, 37.885216, 34.616779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062851, 38.122406, 34.643112>,  <38.105236, 38.517727, 34.686996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062851, 38.122406, 34.643112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758818, -0.009059, -0.651240,
		0.642627, -0.152256, 0.750899,
		-0.105958, -0.988300, -0.109713,
		38.031063, 37.825916, 34.610199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754677, 38.360683, 34.617760>,  <38.105236, 38.517727, 34.686996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754677, 38.360683, 34.617760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562160, 38.038502, 34.479424>,  <38.446651, 37.845192, 34.396423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562160, 38.038502, 34.479424>,  <38.754677, 38.360683, 34.617760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562160, 38.038502, 34.479424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739119, -0.160798, -0.654101,
		0.471236, -0.570430, 0.672715,
		-0.481290, -0.805452, -0.345842,
		38.417774, 37.796867, 34.375671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260674, 37.897755, 34.340336>,  <38.754677, 38.360683, 34.617760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260674, 37.897755, 34.340336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924957, 37.757404, 34.174213>,  <38.723530, 37.673195, 34.074539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924957, 37.757404, 34.174213>,  <39.260674, 37.897755, 34.340336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924957, 37.757404, 34.174213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516928, -0.278286, -0.809532,
		0.168473, -0.894115, 0.414941,
		-0.839287, -0.350879, -0.415309,
		38.673172, 37.652142, 34.049622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431202, 37.216328, 33.945621>,  <39.260674, 37.897755, 34.340336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431202, 37.216328, 33.945621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096260, 37.362713, 33.783180>,  <38.895294, 37.450542, 33.685715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096260, 37.362713, 33.783180>,  <39.431202, 37.216328, 33.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096260, 37.362713, 33.783180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423025, -0.036753, -0.905372,
		-0.346255, -0.929905, -0.124035,
		-0.837351, 0.365959, -0.406099,
		38.845055, 37.472500, 33.661350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355247, 36.834610, 33.319958>,  <39.431202, 37.216328, 33.945621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355247, 36.834610, 33.319958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125870, 37.157200, 33.262325>,  <38.988243, 37.350754, 33.227745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125870, 37.157200, 33.262325>,  <39.355247, 36.834610, 33.319958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125870, 37.157200, 33.262325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326542, 0.063716, -0.943033,
		-0.751351, -0.587827, -0.299885,
		-0.573448, 0.806473, -0.144077,
		38.953835, 37.399143, 33.219101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090206, 36.693455, 32.762413>,  <39.355247, 36.834610, 33.319958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090206, 36.693455, 32.762413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056950, 37.090679, 32.795696>,  <39.036995, 37.329014, 32.815666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056950, 37.090679, 32.795696>,  <39.090206, 36.693455, 32.762413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056950, 37.090679, 32.795696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171547, 0.096514, -0.980437,
		-0.981662, -0.067238, -0.178380,
		-0.083139, 0.993058, 0.083210,
		39.032009, 37.388596, 32.820660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769138, 36.928623, 32.208035>,  <39.090206, 36.693455, 32.762413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769138, 36.928623, 32.208035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897026, 37.289089, 32.325123>,  <38.973759, 37.505367, 32.395374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897026, 37.289089, 32.325123>,  <38.769138, 36.928623, 32.208035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897026, 37.289089, 32.325123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312722, 0.191261, -0.930389,
		-0.894418, 0.389004, -0.220663,
		0.319721, 0.901163, 0.292717,
		38.992943, 37.559437, 32.412937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586090, 37.421471, 31.674980>,  <38.769138, 36.928623, 32.208035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586090, 37.421471, 31.674980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903095, 37.550831, 31.881798>,  <39.093300, 37.628445, 32.005890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903095, 37.550831, 31.881798>,  <38.586090, 37.421471, 31.674980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903095, 37.550831, 31.881798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457110, 0.246219, -0.854650,
		-0.403697, 0.913669, 0.047305,
		0.792515, 0.323396, 0.517045,
		39.140850, 37.647850, 32.036911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615303, 38.061279, 31.465851>,  <38.586090, 37.421471, 31.674980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615303, 38.061279, 31.465851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977787, 37.966610, 31.606007>,  <39.195278, 37.909809, 31.690100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977787, 37.966610, 31.606007>,  <38.615303, 38.061279, 31.465851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977787, 37.966610, 31.606007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391872, 0.158826, -0.906207,
		0.158826, 0.958519, 0.236676,
		0.906207, -0.236676, 0.350391,
		39.249649, 37.895607, 31.711124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055271, 38.577362, 31.153149>,  <38.615303, 38.061279, 31.465851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055271, 38.577362, 31.153149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319050, 38.293716, 31.252979>,  <39.477318, 38.123531, 31.312878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319050, 38.293716, 31.252979>,  <39.055271, 38.577362, 31.153149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319050, 38.293716, 31.252979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442391, 0.097639, -0.891492,
		0.607798, 0.698304, 0.378092,
		0.659448, -0.709111, 0.249578,
		39.516884, 38.080982, 31.327852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708733, 38.879005, 31.099571>,  <39.055271, 38.577362, 31.153149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708733, 38.879005, 31.099571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752193, 38.482613, 31.068190>,  <39.778271, 38.244778, 31.049360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752193, 38.482613, 31.068190>,  <39.708733, 38.879005, 31.099571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752193, 38.482613, 31.068190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560681, 0.126265, -0.818348,
		0.820871, 0.044930, 0.569343,
		0.108657, -0.990978, -0.078456,
		39.784790, 38.185318, 31.044653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382015, 38.786598, 30.868040>,  <39.708733, 38.879005, 31.099571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382015, 38.786598, 30.868040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231209, 38.427010, 30.778858>,  <40.140724, 38.211258, 30.725349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231209, 38.427010, 30.778858>,  <40.382015, 38.786598, 30.868040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231209, 38.427010, 30.778858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534804, -0.014756, -0.844847,
		0.756204, -0.437757, 0.486337,
		-0.377014, -0.898972, -0.222956,
		40.118103, 38.157318, 30.711971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948387, 38.403530, 30.516741>,  <40.382015, 38.786598, 30.868040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948387, 38.403530, 30.516741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612202, 38.221252, 30.399466>,  <40.410492, 38.111885, 30.329100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612202, 38.221252, 30.399466>,  <40.948387, 38.403530, 30.516741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612202, 38.221252, 30.399466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459288, -0.311988, -0.831696,
		0.287530, -0.833668, 0.471512,
		-0.840465, -0.455697, -0.293188,
		40.360062, 38.084545, 30.311510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222305, 37.802040, 30.181467>,  <40.948387, 38.403530, 30.516741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222305, 37.802040, 30.181467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844807, 37.847733, 30.057343>,  <40.618309, 37.875149, 29.982868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844807, 37.847733, 30.057343>,  <41.222305, 37.802040, 30.181467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844807, 37.847733, 30.057343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275314, -0.248336, -0.928726,
		-0.183149, -0.961916, 0.202917,
		-0.943747, 0.114230, -0.310311,
		40.561684, 37.882004, 29.964249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889141, 37.132534, 29.904919>,  <41.222305, 37.802040, 30.181467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889141, 37.132534, 29.904919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716434, 37.448856, 29.731388>,  <40.612812, 37.638649, 29.627270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716434, 37.448856, 29.731388>,  <40.889141, 37.132534, 29.904919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716434, 37.448856, 29.731388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131336, -0.420721, -0.897633,
		-0.892374, -0.444542, 0.077791,
		-0.431764, 0.790807, -0.433825,
		40.586906, 37.686100, 29.601240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478554, 36.878510, 29.339983>,  <40.889141, 37.132534, 29.904919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478554, 36.878510, 29.339983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471401, 37.255100, 29.205338>,  <40.467110, 37.481052, 29.124550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471401, 37.255100, 29.205338>,  <40.478554, 36.878510, 29.339983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471401, 37.255100, 29.205338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023480, -0.336181, -0.941505,
		-0.999564, -0.024738, -0.016095,
		-0.017881, 0.941473, -0.336615,
		40.466038, 37.537540, 29.104353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116005, 36.916573, 28.744211>,  <40.478554, 36.878510, 29.339983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116005, 36.916573, 28.744211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312572, 37.263279, 28.710218>,  <40.430515, 37.471302, 28.689823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312572, 37.263279, 28.710218>,  <40.116005, 36.916573, 28.744211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312572, 37.263279, 28.710218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183752, -0.198570, -0.962707,
		-0.851315, 0.457481, -0.256852,
		0.491423, 0.866765, -0.084982,
		40.459999, 37.523308, 28.684723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921173, 37.084892, 28.155069>,  <40.116005, 36.916573, 28.744211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921173, 37.084892, 28.155069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252472, 37.300087, 28.217773>,  <40.451252, 37.429203, 28.255396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252472, 37.300087, 28.217773>,  <39.921173, 37.084892, 28.155069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252472, 37.300087, 28.217773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247597, -0.100397, -0.963647,
		-0.502688, 0.836956, -0.216357,
		0.828252, 0.537983, 0.156760,
		40.500946, 37.461483, 28.264801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888489, 37.692379, 27.599667>,  <39.921173, 37.084892, 28.155069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888489, 37.692379, 27.599667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243362, 37.550072, 27.717201>,  <40.456287, 37.464687, 27.787722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243362, 37.550072, 27.717201>,  <39.888489, 37.692379, 27.599667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243362, 37.550072, 27.717201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311728, -0.007390, -0.950143,
		0.340201, 0.934545, 0.104346,
		0.887180, -0.355767, 0.293838,
		40.509518, 37.443340, 27.805353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382835, 38.116364, 27.274263>,  <39.888489, 37.692379, 27.599667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382835, 38.116364, 27.274263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602028, 37.802055, 27.389008>,  <40.733543, 37.613472, 27.457853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602028, 37.802055, 27.389008>,  <40.382835, 38.116364, 27.274263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602028, 37.802055, 27.389008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369427, -0.080342, -0.925780,
		0.750493, 0.613284, 0.246257,
		0.547982, -0.785766, 0.286860,
		40.766422, 37.566326, 27.475065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032234, 38.266029, 27.004599>,  <40.382835, 38.116364, 27.274263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032234, 38.266029, 27.004599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026131, 37.868660, 27.050003>,  <41.022469, 37.630238, 27.077246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026131, 37.868660, 27.050003>,  <41.032234, 38.266029, 27.004599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026131, 37.868660, 27.050003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475030, -0.107097, -0.873428,
		0.879837, 0.040590, 0.473539,
		-0.015262, -0.993420, 0.113509,
		41.021553, 37.570633, 27.084055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713078, 38.056923, 26.846458>,  <41.032234, 38.266029, 27.004599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713078, 38.056923, 26.846458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474396, 37.740017, 26.795471>,  <41.331184, 37.549873, 26.764879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474396, 37.740017, 26.795471>,  <41.713078, 38.056923, 26.846458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474396, 37.740017, 26.795471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553426, -0.291276, -0.780306,
		0.581084, -0.536160, 0.612269,
		-0.596708, -0.792270, -0.127469,
		41.295383, 37.502335, 26.757231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162201, 37.640858, 26.542038>,  <41.713078, 38.056923, 26.846458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162201, 37.640858, 26.542038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831051, 37.418804, 26.509928>,  <41.632362, 37.285572, 26.490662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831051, 37.418804, 26.509928>,  <42.162201, 37.640858, 26.542038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831051, 37.418804, 26.509928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413827, -0.507889, -0.755510,
		0.378642, -0.658688, 0.650200,
		-0.827875, -0.555138, -0.080275,
		41.582687, 37.252262, 26.485846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250137, 36.897049, 26.683260>,  <42.162201, 37.640858, 26.542038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250137, 36.897049, 26.683260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931107, 36.897793, 26.441977>,  <41.739689, 36.898239, 26.297207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931107, 36.897793, 26.441977>,  <42.250137, 36.897049, 26.683260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931107, 36.897793, 26.441977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461423, -0.642216, -0.612084,
		-0.388525, -0.766521, 0.511364,
		-0.797582, 0.001855, -0.603208,
		41.691833, 36.898350, 26.261015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393108, 36.303989, 26.306103>,  <42.250137, 36.897049, 26.683260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393108, 36.303989, 26.306103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099731, 36.496910, 26.114500>,  <41.923706, 36.612663, 25.999538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099731, 36.496910, 26.114500>,  <42.393108, 36.303989, 26.306103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099731, 36.496910, 26.114500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209301, -0.510209, -0.834194,
		-0.646727, -0.712090, 0.273262,
		-0.733442, 0.482302, -0.479007,
		41.879700, 36.641602, 25.970798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043839, 35.734253, 25.888258>,  <42.393108, 36.303989, 26.306103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043839, 35.734253, 25.888258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978050, 36.088116, 25.713751>,  <41.938576, 36.300434, 25.609047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978050, 36.088116, 25.713751>,  <42.043839, 35.734253, 25.888258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978050, 36.088116, 25.713751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210364, -0.400654, -0.891752,
		-0.963688, -0.238446, -0.120202,
		-0.164475, 0.884658, -0.436266,
		41.928707, 36.353512, 25.582870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667847, 35.584126, 25.339375>,  <42.043839, 35.734253, 25.888258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667847, 35.584126, 25.339375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843990, 35.927162, 25.233076>,  <41.949677, 36.132984, 25.169296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843990, 35.927162, 25.233076>,  <41.667847, 35.584126, 25.339375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843990, 35.927162, 25.233076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215551, -0.388318, -0.895962,
		-0.871564, 0.337262, -0.355853,
		0.440358, 0.857592, -0.265746,
		41.976097, 36.184441, 25.153353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654678, 35.581959, 24.647701>,  <41.667847, 35.584126, 25.339375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654678, 35.581959, 24.647701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936275, 35.862904, 24.689817>,  <42.105232, 36.031471, 24.715086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936275, 35.862904, 24.689817>,  <41.654678, 35.581959, 24.647701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936275, 35.862904, 24.689817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422562, -0.295078, -0.856954,
		-0.570823, 0.647779, -0.504523,
		0.703990, 0.702362, 0.105289,
		42.147472, 36.073612, 24.721405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629448, 35.953949, 24.062870>,  <41.654678, 35.581959, 24.647701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629448, 35.953949, 24.062870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994095, 36.030556, 24.208347>,  <42.212883, 36.076519, 24.295633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994095, 36.030556, 24.208347>,  <41.629448, 35.953949, 24.062870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994095, 36.030556, 24.208347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409789, -0.354568, -0.840449,
		-0.032005, 0.915206, -0.401712,
		0.911619, 0.191516, 0.363694,
		42.267582, 36.088009, 24.317455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046246, 36.341908, 23.551357>,  <41.629448, 35.953949, 24.062870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046246, 36.341908, 23.551357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296555, 36.160828, 23.805431>,  <42.446739, 36.052177, 23.957876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296555, 36.160828, 23.805431>,  <42.046246, 36.341908, 23.551357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296555, 36.160828, 23.805431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621623, -0.202449, -0.756703,
		0.471155, 0.868374, 0.154723,
		0.625777, -0.452704, 0.635187,
		42.484287, 36.025017, 23.995987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719131, 36.608913, 23.362862>,  <42.046246, 36.341908, 23.551357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719131, 36.608913, 23.362862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754318, 36.264091, 23.562508>,  <42.775429, 36.057198, 23.682295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754318, 36.264091, 23.562508>,  <42.719131, 36.608913, 23.362862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754318, 36.264091, 23.562508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544929, -0.377793, -0.748549,
		0.833856, 0.337827, 0.436529,
		0.087962, -0.862059, 0.499117,
		42.780708, 36.005474, 23.712242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308338, 36.325901, 23.105293>,  <42.719131, 36.608913, 23.362862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308338, 36.325901, 23.105293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114666, 36.024059, 23.282444>,  <42.998463, 35.842953, 23.388735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114666, 36.024059, 23.282444>,  <43.308338, 36.325901, 23.105293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114666, 36.024059, 23.282444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519326, -0.655213, -0.548632,
		0.704179, -0.035640, 0.709127,
		-0.484182, -0.754603, 0.442879,
		42.969410, 35.797680, 23.415308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778622, 35.839973, 23.284414>,  <43.308338, 36.325901, 23.105293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778622, 35.839973, 23.284414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478790, 35.576225, 23.261209>,  <43.298893, 35.417976, 23.247288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478790, 35.576225, 23.261209>,  <43.778622, 35.839973, 23.284414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478790, 35.576225, 23.261209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593217, -0.630313, -0.500798,
		0.293647, -0.409800, 0.863618,
		-0.749577, -0.659370, -0.058011,
		43.253918, 35.378414, 23.243807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081276, 35.163315, 23.502899>,  <43.778622, 35.839973, 23.284414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081276, 35.163315, 23.502899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770000, 35.098598, 23.260164>,  <43.583237, 35.059769, 23.114523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770000, 35.098598, 23.260164>,  <44.081276, 35.163315, 23.502899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770000, 35.098598, 23.260164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614959, -0.392425, -0.683980,
		-0.127479, -0.905443, 0.404872,
		-0.778187, -0.161786, -0.606836,
		43.536545, 35.050064, 23.078114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272144, 34.557499, 23.184137>,  <44.081276, 35.163315, 23.502899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272144, 34.557499, 23.184137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981964, 34.691570, 22.943676>,  <43.807858, 34.772011, 22.799400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981964, 34.691570, 22.943676>,  <44.272144, 34.557499, 23.184137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981964, 34.691570, 22.943676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570956, -0.194693, -0.797561,
		-0.384363, -0.921820, -0.050131,
		-0.725447, 0.335176, -0.601152,
		43.764328, 34.792122, 22.763330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664978, 33.849510, 23.110703>,  <44.272144, 34.557499, 23.184137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664978, 33.849510, 23.110703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821941, 33.524963, 23.283998>,  <44.916119, 33.330235, 23.387976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821941, 33.524963, 23.283998>,  <44.664978, 33.849510, 23.110703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821941, 33.524963, 23.283998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560345, 0.162640, 0.812134,
		-0.729401, -0.561454, -0.390824,
		0.392412, -0.811368, 0.433238,
		44.939667, 33.281551, 23.413969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116852, 33.552017, 23.531351>,  <44.664978, 33.849510, 23.110703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116852, 33.552017, 23.531351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456978, 33.413780, 23.690113>,  <44.661053, 33.330837, 23.785370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456978, 33.413780, 23.690113>,  <44.116852, 33.552017, 23.531351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456978, 33.413780, 23.690113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340593, 0.213568, 0.915634,
		-0.401199, -0.913760, 0.063895,
		0.850315, -0.345589, 0.396904,
		44.712074, 33.310104, 23.809185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918064, 33.038467, 23.997475>,  <44.116852, 33.552017, 23.531351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918064, 33.038467, 23.997475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280983, 33.168674, 24.103943>,  <44.498734, 33.246799, 24.167824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280983, 33.168674, 24.103943>,  <43.918064, 33.038467, 23.997475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280983, 33.168674, 24.103943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359463, 0.272028, 0.892629,
		0.218158, -0.905561, 0.363821,
		0.907300, 0.325514, 0.266171,
		44.553173, 33.266327, 24.183794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172977, 32.593594, 24.624388>,  <43.918064, 33.038467, 23.997475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172977, 32.593594, 24.624388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384830, 32.932602, 24.610527>,  <44.511940, 33.136005, 24.602211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384830, 32.932602, 24.610527>,  <44.172977, 32.593594, 24.624388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384830, 32.932602, 24.610527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195757, 0.161876, 0.967200,
		0.825331, -0.505475, 0.251643,
		0.529631, 0.847520, -0.034651,
		44.543720, 33.186859, 24.600132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521088, 32.550766, 25.265974>,  <44.172977, 32.593594, 24.624388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521088, 32.550766, 25.265974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500362, 32.929966, 25.140360>,  <44.487926, 33.157486, 25.064991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500362, 32.929966, 25.140360>,  <44.521088, 32.550766, 25.265974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500362, 32.929966, 25.140360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129210, 0.305452, 0.943400,
		0.990263, 0.089457, 0.106664,
		-0.051813, 0.947996, -0.314036,
		44.484818, 33.214363, 25.046148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947277, 32.919495, 25.803541>,  <44.521088, 32.550766, 25.265974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947277, 32.919495, 25.803541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734997, 33.195831, 25.607136>,  <44.607628, 33.361633, 25.489292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734997, 33.195831, 25.607136>,  <44.947277, 32.919495, 25.803541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734997, 33.195831, 25.607136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333163, 0.362652, 0.870337,
		0.779334, 0.625474, 0.037706,
		-0.530698, 0.690845, -0.491012,
		44.575787, 33.403084, 25.459833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945667, 33.469109, 26.289700>,  <44.947277, 32.919495, 25.803541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945667, 33.469109, 26.289700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636349, 33.541000, 26.046486>,  <44.450756, 33.584137, 25.900558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636349, 33.541000, 26.046486>,  <44.945667, 33.469109, 26.289700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636349, 33.541000, 26.046486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516012, 0.378844, 0.768250,
		0.368427, 0.907841, -0.200217,
		-0.773300, 0.179729, -0.608033,
		44.404358, 33.594917, 25.864077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801079, 34.075314, 26.507624>,  <44.945667, 33.469109, 26.289700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801079, 34.075314, 26.507624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476566, 33.936275, 26.319578>,  <44.281860, 33.852852, 26.206751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476566, 33.936275, 26.319578>,  <44.801079, 34.075314, 26.507624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476566, 33.936275, 26.319578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558769, 0.224340, 0.798404,
		-0.172053, 0.910413, -0.376225,
		-0.811280, -0.347590, -0.470113,
		44.233181, 33.831997, 26.178545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233322, 34.562088, 26.488054>,  <44.801079, 34.075314, 26.507624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233322, 34.562088, 26.488054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016857, 34.229347, 26.438780>,  <43.886978, 34.029705, 26.409216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016857, 34.229347, 26.438780>,  <44.233322, 34.562088, 26.488054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016857, 34.229347, 26.438780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677621, 0.344619, 0.649667,
		-0.497972, 0.435047, -0.750172,
		-0.541159, -0.831848, -0.123187,
		43.854507, 33.979794, 26.401823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595558, 34.749218, 26.467665>,  <44.233322, 34.562088, 26.488054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595558, 34.749218, 26.467665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548412, 34.364700, 26.567276>,  <43.520123, 34.133987, 26.627043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548412, 34.364700, 26.567276>,  <43.595558, 34.749218, 26.467665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548412, 34.364700, 26.567276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707584, 0.257252, 0.658138,
		-0.696729, -0.098635, -0.710521,
		-0.117868, -0.961298, 0.249028,
		43.513054, 34.076313, 26.641985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906166, 34.649261, 26.727240>,  <43.595558, 34.749218, 26.467665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906166, 34.649261, 26.727240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081585, 34.307594, 26.839003>,  <43.186836, 34.102592, 26.906061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081585, 34.307594, 26.839003>,  <42.906166, 34.649261, 26.727240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081585, 34.307594, 26.839003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505752, 0.022432, 0.862387,
		-0.742893, -0.519509, -0.422161,
		0.438548, -0.854170, 0.279408,
		43.213150, 34.051342, 26.922825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425240, 34.189423, 26.863230>,  <42.906166, 34.649261, 26.727240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425240, 34.189423, 26.863230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743645, 34.106728, 27.090780>,  <42.934689, 34.057110, 27.227310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743645, 34.106728, 27.090780>,  <42.425240, 34.189423, 26.863230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743645, 34.106728, 27.090780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576742, 0.026119, 0.816508,
		-0.183665, -0.978047, -0.098445,
		0.796012, -0.206741, 0.568878,
		42.982449, 34.044704, 27.261444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236889, 33.673592, 27.310303>,  <42.425240, 34.189423, 26.863230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236889, 33.673592, 27.310303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544983, 33.847427, 27.497009>,  <42.729839, 33.951729, 27.609034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544983, 33.847427, 27.497009>,  <42.236889, 33.673592, 27.310303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544983, 33.847427, 27.497009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474767, -0.097960, 0.874643,
		0.425838, -0.895284, 0.130879,
		0.770232, 0.434593, 0.466766,
		42.776054, 33.977806, 27.637039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205276, 33.467533, 27.967606>,  <42.236889, 33.673592, 27.310303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205276, 33.467533, 27.967606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462673, 33.772877, 27.990221>,  <42.617111, 33.956085, 28.003790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462673, 33.772877, 27.990221>,  <42.205276, 33.467533, 27.967606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462673, 33.772877, 27.990221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344156, 0.222556, 0.912154,
		0.683722, -0.606421, 0.405928,
		0.643491, 0.763362, 0.056537,
		42.655720, 34.001884, 28.007183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325985, 33.480927, 28.623062>,  <42.205276, 33.467533, 27.967606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325985, 33.480927, 28.623062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474651, 33.839390, 28.526094>,  <42.563850, 34.054466, 28.467913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474651, 33.839390, 28.526094>,  <42.325985, 33.480927, 28.623062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474651, 33.839390, 28.526094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287226, 0.359312, 0.887917,
		0.882818, -0.260376, 0.390943,
		0.371663, 0.896158, -0.242420,
		42.586151, 34.108238, 28.453369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709846, 33.850983, 29.229744>,  <42.325985, 33.480927, 28.623062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709846, 33.850983, 29.229744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613098, 34.183247, 29.029144>,  <42.555050, 34.382607, 28.908785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613098, 34.183247, 29.029144>,  <42.709846, 33.850983, 29.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613098, 34.183247, 29.029144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280850, 0.434787, 0.855619,
		0.928775, 0.347793, 0.128130,
		-0.241868, 0.830663, -0.501497,
		42.540539, 34.432446, 28.878695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112095, 34.321804, 29.577044>,  <42.709846, 33.850983, 29.229744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112095, 34.321804, 29.577044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834141, 34.523018, 29.371487>,  <42.667366, 34.643745, 29.248154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834141, 34.523018, 29.371487>,  <43.112095, 34.321804, 29.577044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834141, 34.523018, 29.371487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216891, 0.534729, 0.816715,
		0.685630, 0.678985, -0.262473,
		-0.694889, 0.503036, -0.513891,
		42.625675, 34.673927, 29.217319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172043, 35.011120, 29.746315>,  <43.112095, 34.321804, 29.577044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172043, 35.011120, 29.746315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799435, 34.990753, 29.602278>,  <42.575871, 34.978531, 29.515854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799435, 34.990753, 29.602278>,  <43.172043, 35.011120, 29.746315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799435, 34.990753, 29.602278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332042, 0.522997, 0.784998,
		0.148357, 0.850812, -0.504092,
		-0.931525, -0.050920, -0.360095,
		42.519978, 34.975475, 29.494249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861004, 35.739250, 29.855598>,  <43.172043, 35.011120, 29.746315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861004, 35.739250, 29.855598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549068, 35.493717, 29.806515>,  <42.361908, 35.346397, 29.777065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549068, 35.493717, 29.806515>,  <42.861004, 35.739250, 29.855598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549068, 35.493717, 29.806515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375561, 0.301972, 0.876223,
		-0.500798, 0.729401, -0.466021,
		-0.779843, -0.613830, -0.122707,
		42.315117, 35.309566, 29.769703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210728, 36.129761, 29.923185>,  <42.861004, 35.739250, 29.855598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210728, 36.129761, 29.923185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108055, 35.753719, 30.012913>,  <42.046452, 35.528095, 30.066750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108055, 35.753719, 30.012913>,  <42.210728, 36.129761, 29.923185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108055, 35.753719, 30.012913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460052, 0.322957, 0.827074,
		-0.849981, 0.109096, -0.515394,
		-0.256681, -0.940104, 0.224318,
		42.031052, 35.471687, 30.080208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511173, 36.171452, 29.937157>,  <42.210728, 36.129761, 29.923185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511173, 36.171452, 29.937157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605621, 35.842461, 30.144148>,  <41.662292, 35.645065, 30.268343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605621, 35.842461, 30.144148>,  <41.511173, 36.171452, 29.937157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605621, 35.842461, 30.144148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571931, 0.312895, 0.758282,
		-0.785584, -0.475008, -0.396517,
		0.236122, -0.822474, 0.517477,
		41.676456, 35.595718, 30.299391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839073, 35.912842, 30.173344>,  <41.511173, 36.171452, 29.937157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839073, 35.912842, 30.173344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129368, 35.746292, 30.392406>,  <41.303547, 35.646362, 30.523844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129368, 35.746292, 30.392406>,  <40.839073, 35.912842, 30.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129368, 35.746292, 30.392406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526129, 0.177000, 0.831781,
		-0.443269, -0.891797, -0.090612,
		0.725741, -0.416376, 0.547659,
		41.347092, 35.621380, 30.556704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542213, 35.716431, 30.821659>,  <40.839073, 35.912842, 30.173344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542213, 35.716431, 30.821659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928310, 35.707870, 30.925846>,  <41.159969, 35.702736, 30.988358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928310, 35.707870, 30.925846>,  <40.542213, 35.716431, 30.821659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928310, 35.707870, 30.925846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257005, 0.103168, 0.960888,
		-0.047434, -0.994434, 0.094082,
		0.965245, -0.021399, 0.260468,
		41.217884, 35.701450, 31.003986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661022, 35.334335, 31.553757>,  <40.542213, 35.716431, 30.821659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661022, 35.334335, 31.553757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983330, 35.561573, 31.486824>,  <41.176716, 35.697914, 31.446665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983330, 35.561573, 31.486824>,  <40.661022, 35.334335, 31.553757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983330, 35.561573, 31.486824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119159, 0.432291, 0.893826,
		0.580113, -0.700282, 0.416021,
		0.805772, 0.568093, -0.167333,
		41.225063, 35.732002, 31.436625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054993, 35.224247, 32.246078>,  <40.661022, 35.334335, 31.553757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054993, 35.224247, 32.246078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212624, 35.549656, 32.075020>,  <41.307201, 35.744900, 31.972385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212624, 35.549656, 32.075020>,  <41.054993, 35.224247, 32.246078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212624, 35.549656, 32.075020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112790, 0.418972, 0.900966,
		0.912128, -0.403288, 0.073352,
		0.394081, 0.813524, -0.427644,
		41.330849, 35.793713, 31.946726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721176, 35.405556, 32.612804>,  <41.054993, 35.224247, 32.246078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721176, 35.405556, 32.612804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613205, 35.754612, 32.450008>,  <41.548424, 35.964046, 32.352329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613205, 35.754612, 32.450008>,  <41.721176, 35.405556, 32.612804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613205, 35.754612, 32.450008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046672, 0.434042, 0.899683,
		0.961749, 0.223854, -0.157887,
		-0.269927, 0.872638, -0.406992,
		41.532227, 36.016403, 32.327911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167511, 35.930672, 32.910332>,  <41.721176, 35.405556, 32.612804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167511, 35.930672, 32.910332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825855, 36.098019, 32.786770>,  <41.620861, 36.198425, 32.712631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825855, 36.098019, 32.786770>,  <42.167511, 35.930672, 32.910332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825855, 36.098019, 32.786770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243485, 0.203155, 0.948390,
		0.459528, 0.885268, -0.071657,
		-0.854136, 0.418365, -0.308905,
		41.569614, 36.223530, 32.694099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119083, 36.518200, 33.243286>,  <42.167511, 35.930672, 32.910332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119083, 36.518200, 33.243286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738102, 36.439999, 33.149818>,  <41.509514, 36.393078, 33.093739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738102, 36.439999, 33.149818>,  <42.119083, 36.518200, 33.243286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738102, 36.439999, 33.149818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284860, 0.299401, 0.910612,
		-0.108064, 0.933883, -0.340858,
		-0.952458, -0.195501, -0.233672,
		41.452366, 36.381348, 33.079716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746681, 37.056740, 33.503201>,  <42.119083, 36.518200, 33.243286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746681, 37.056740, 33.503201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462364, 36.780228, 33.451195>,  <41.291775, 36.614323, 33.419991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462364, 36.780228, 33.451195>,  <41.746681, 37.056740, 33.503201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462364, 36.780228, 33.451195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407959, 0.254568, 0.876792,
		-0.573008, 0.676262, -0.462959,
		-0.710796, -0.691277, -0.130018,
		41.249126, 36.572845, 33.412189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084850, 37.385494, 33.754360>,  <41.746681, 37.056740, 33.503201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084850, 37.385494, 33.754360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035301, 36.988667, 33.745770>,  <41.005569, 36.750572, 33.740616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035301, 36.988667, 33.745770>,  <41.084850, 37.385494, 33.754360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035301, 36.988667, 33.745770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377022, 0.027037, 0.925809,
		-0.917883, 0.122782, -0.377380,
		-0.123876, -0.992065, -0.021475,
		40.998138, 36.691048, 33.739326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422764, 37.265316, 33.978634>,  <41.084850, 37.385494, 33.754360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422764, 37.265316, 33.978634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631554, 36.930645, 34.044971>,  <40.756828, 36.729843, 34.084774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631554, 36.930645, 34.044971>,  <40.422764, 37.265316, 33.978634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631554, 36.930645, 34.044971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388797, -0.060324, 0.919347,
		-0.759196, -0.544358, -0.356786,
		0.521977, -0.836682, 0.165847,
		40.788147, 36.679642, 34.094727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002277, 36.933331, 34.453491>,  <40.422764, 37.265316, 33.978634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002277, 36.933331, 34.453491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346088, 36.731712, 34.487316>,  <40.552376, 36.610741, 34.507610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346088, 36.731712, 34.487316>,  <40.002277, 36.933331, 34.453491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346088, 36.731712, 34.487316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146651, -0.084734, 0.985552,
		-0.489602, -0.859508, -0.146750,
		0.859525, -0.504050, 0.084562,
		40.603947, 36.580498, 34.512684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817902, 36.437363, 34.941586>,  <40.002277, 36.933331, 34.453491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817902, 36.437363, 34.941586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217766, 36.426945, 34.940796>,  <40.457684, 36.420696, 34.940323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217766, 36.426945, 34.940796>,  <39.817902, 36.437363, 34.941586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217766, 36.426945, 34.940796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003234, -0.198394, 0.980117,
		-0.025914, -0.979777, -0.198411,
		0.999659, -0.026041, -0.001973,
		40.517662, 36.419132, 34.940205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025345, 35.775288, 35.221516>,  <39.817902, 36.437363, 34.941586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025345, 35.775288, 35.221516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321007, 36.040005, 35.271595>,  <40.498405, 36.198833, 35.301643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321007, 36.040005, 35.271595>,  <40.025345, 35.775288, 35.221516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321007, 36.040005, 35.271595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143414, -0.336268, 0.930783,
		0.658085, -0.670041, -0.343465,
		0.739159, 0.661792, 0.125200,
		40.542755, 36.238541, 35.309155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530132, 35.342819, 35.530251>,  <40.025345, 35.775288, 35.221516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530132, 35.342819, 35.530251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656982, 35.716087, 35.597931>,  <40.733093, 35.940048, 35.638538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656982, 35.716087, 35.597931>,  <40.530132, 35.342819, 35.530251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656982, 35.716087, 35.597931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243986, -0.252684, 0.936281,
		0.916463, -0.255632, -0.307811,
		0.317122, 0.933168, 0.169206,
		40.752121, 35.996037, 35.648693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181343, 35.322922, 35.702538>,  <40.530132, 35.342819, 35.530251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181343, 35.322922, 35.702538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074203, 35.675240, 35.858723>,  <41.009918, 35.886631, 35.952435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074203, 35.675240, 35.858723>,  <41.181343, 35.322922, 35.702538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074203, 35.675240, 35.858723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345220, -0.290620, 0.892392,
		0.899489, 0.373821, -0.226225,
		-0.267849, 0.880794, 0.390460,
		40.993851, 35.939476, 35.975861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819191, 35.519798, 36.005722>,  <41.181343, 35.322922, 35.702538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819191, 35.519798, 36.005722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494595, 35.694553, 36.160954>,  <41.299835, 35.799408, 36.254093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494595, 35.694553, 36.160954>,  <41.819191, 35.519798, 36.005722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494595, 35.694553, 36.160954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226534, -0.376979, 0.898092,
		0.538666, 0.816709, 0.206945,
		-0.811493, 0.436891, 0.388078,
		41.251148, 35.825623, 36.277378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950394, 35.505486, 36.671692>,  <41.819191, 35.519798, 36.005722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950394, 35.505486, 36.671692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563145, 35.602695, 36.695938>,  <41.330795, 35.661022, 36.710484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563145, 35.602695, 36.695938>,  <41.950394, 35.505486, 36.671692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563145, 35.602695, 36.695938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020981, -0.319829, 0.947243,
		0.249588, 0.915778, 0.314733,
		-0.968125, 0.243024, 0.060612,
		41.272709, 35.675602, 36.714123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735168, 36.009418, 37.261902>,  <41.950394, 35.505486, 36.671692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735168, 36.009418, 37.261902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394211, 35.816372, 37.181396>,  <41.189636, 35.700546, 37.133095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394211, 35.816372, 37.181396>,  <41.735168, 36.009418, 37.261902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394211, 35.816372, 37.181396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118133, -0.197205, 0.973219,
		-0.509376, 0.853344, 0.111084,
		-0.852397, -0.482612, -0.201260,
		41.138493, 35.671589, 37.121017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459015, 36.091217, 37.914673>,  <41.735168, 36.009418, 37.261902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459015, 36.091217, 37.914673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199894, 35.830181, 37.757458>,  <41.044422, 35.673557, 37.663128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199894, 35.830181, 37.757458>,  <41.459015, 36.091217, 37.914673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199894, 35.830181, 37.757458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133509, -0.410684, 0.901950,
		-0.750019, 0.636759, 0.178915,
		-0.647802, -0.652593, -0.393033,
		41.005554, 35.634403, 37.639549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422569, 35.632576, 38.470516>,  <41.459015, 36.091217, 37.914673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422569, 35.632576, 38.470516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684196, 35.651993, 38.772465>,  <41.841175, 35.663643, 38.953636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684196, 35.651993, 38.772465>,  <41.422569, 35.632576, 38.470516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684196, 35.651993, 38.772465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702062, -0.332558, 0.629694,
		0.281606, -0.941833, -0.183438,
		0.654070, 0.048541, 0.754875,
		41.880417, 35.666553, 38.998928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429195, 34.961437, 38.827354>,  <41.422569, 35.632576, 38.470516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429195, 34.961437, 38.827354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562435, 35.223755, 39.098347>,  <41.642380, 35.381145, 39.260944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562435, 35.223755, 39.098347>,  <41.429195, 34.961437, 38.827354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562435, 35.223755, 39.098347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615186, -0.393362, 0.683236,
		0.714556, -0.644364, 0.272405,
		0.333099, 0.655791, 0.677484,
		41.662365, 35.420490, 39.301590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472443, 34.486141, 39.400871>,  <41.429195, 34.961437, 38.827354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472443, 34.486141, 39.400871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491867, 34.866352, 39.523602>,  <41.503521, 35.094479, 39.597240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491867, 34.866352, 39.523602>,  <41.472443, 34.486141, 39.400871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491867, 34.866352, 39.523602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693437, -0.189005, 0.695286,
		0.718879, -0.246526, 0.649952,
		0.048562, 0.950527, 0.306822,
		41.506435, 35.151512, 39.615646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998768, 34.599716, 40.012768>,  <41.472443, 34.486141, 39.400871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998768, 34.599716, 40.012768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196545, 34.937073, 40.096886>,  <41.315212, 35.139484, 40.147358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196545, 34.937073, 40.096886>,  <40.998768, 34.599716, 40.012768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196545, 34.937073, 40.096886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556334, 0.121172, 0.822077,
		0.667848, -0.523464, 0.529118,
		0.494441, 0.843388, 0.210297,
		41.344875, 35.190090, 40.159973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251122, 34.627445, 40.707291>,  <40.998768, 34.599716, 40.012768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251122, 34.627445, 40.707291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230057, 35.018257, 40.624687>,  <41.217419, 35.252743, 40.575127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230057, 35.018257, 40.624687>,  <41.251122, 34.627445, 40.707291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230057, 35.018257, 40.624687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598788, 0.134597, 0.789517,
		0.799174, 0.165233, 0.577944,
		-0.052664, 0.977027, -0.206506,
		41.214256, 35.311367, 40.562737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420704, 35.087620, 41.269783>,  <41.251122, 34.627445, 40.707291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420704, 35.087620, 41.269783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142445, 35.219948, 41.014713>,  <40.975491, 35.299343, 40.861671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142445, 35.219948, 41.014713>,  <41.420704, 35.087620, 41.269783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142445, 35.219948, 41.014713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690742, -0.064167, 0.720249,
		0.197353, 0.941511, 0.273146,
		-0.695650, 0.330817, -0.637677,
		40.933750, 35.319191, 40.823410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923908, 35.599682, 41.570129>,  <41.420704, 35.087620, 41.269783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923908, 35.599682, 41.570129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725605, 35.436188, 41.263622>,  <40.606621, 35.338093, 41.079720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725605, 35.436188, 41.263622>,  <40.923908, 35.599682, 41.570129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725605, 35.436188, 41.263622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826973, -0.047269, 0.560251,
		-0.265213, 0.911430, -0.314575,
		-0.495760, -0.408731, -0.766264,
		40.576878, 35.313568, 41.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278130, 35.955917, 41.695950>,  <40.923908, 35.599682, 41.570129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278130, 35.955917, 41.695950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237785, 35.646221, 41.446026>,  <40.213581, 35.460403, 41.296070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237785, 35.646221, 41.446026>,  <40.278130, 35.955917, 41.695950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237785, 35.646221, 41.446026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916119, -0.172651, 0.361825,
		-0.388012, 0.608893, -0.691879,
		-0.100859, -0.774236, -0.624809,
		40.207527, 35.413952, 41.258583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597557, 36.009068, 41.292274>,  <40.278130, 35.955917, 41.695950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597557, 36.009068, 41.292274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733196, 35.640553, 41.368431>,  <39.814579, 35.419445, 41.414124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733196, 35.640553, 41.368431>,  <39.597557, 36.009068, 41.292274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733196, 35.640553, 41.368431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886886, -0.245566, 0.391320,
		-0.313765, -0.301547, -0.900345,
		0.339095, -0.921286, 0.190387,
		39.834927, 35.364166, 41.425549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171658, 35.602833, 40.990467>,  <39.597557, 36.009068, 41.292274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171658, 35.602833, 40.990467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337639, 35.395294, 41.289429>,  <39.437225, 35.270771, 41.468807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337639, 35.395294, 41.289429>,  <39.171658, 35.602833, 40.990467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337639, 35.395294, 41.289429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906548, -0.305625, 0.291142,
		0.077369, -0.798369, -0.597178,
		0.414951, -0.518845, 0.747406,
		39.462124, 35.239639, 41.513649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489620, 35.364719, 41.309696>,  <39.171658, 35.602833, 40.990467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489620, 35.364719, 41.309696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792713, 35.211208, 41.520805>,  <38.974571, 35.119102, 41.647472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792713, 35.211208, 41.520805>,  <38.489620, 35.364719, 41.309696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792713, 35.211208, 41.520805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650229, -0.512353, 0.560978,
		0.055117, -0.768250, -0.637773,
		0.757736, -0.383779, 0.527778,
		39.020035, 35.096073, 41.679138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433250, 34.608868, 41.349380>,  <38.489620, 35.364719, 41.309696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433250, 34.608868, 41.349380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663055, 34.675365, 41.669952>,  <38.800938, 34.715263, 41.862297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663055, 34.675365, 41.669952>,  <38.433250, 34.608868, 41.349380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663055, 34.675365, 41.669952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456824, -0.747332, 0.482500,
		0.679148, -0.643318, -0.353411,
		0.574517, 0.166243, 0.801432,
		38.835411, 34.725239, 41.910381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553448, 33.993145, 41.781120>,  <38.433250, 34.608868, 41.349380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553448, 33.993145, 41.781120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673267, 34.257488, 42.056377>,  <38.745159, 34.416096, 42.221531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673267, 34.257488, 42.056377>,  <38.553448, 33.993145, 41.781120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673267, 34.257488, 42.056377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292784, -0.622784, 0.725546,
		0.908046, -0.418813, 0.006935,
		0.299550, 0.660859, 0.688139,
		38.763134, 34.455746, 42.262817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983307, 33.579086, 42.196358>,  <38.553448, 33.993145, 41.781120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983307, 33.579086, 42.196358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850811, 33.909389, 42.378963>,  <38.771313, 34.107571, 42.488525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850811, 33.909389, 42.378963>,  <38.983307, 33.579086, 42.196358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850811, 33.909389, 42.378963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400796, -0.561145, 0.724209,
		0.854190, 0.056921, 0.516835,
		-0.331242, 0.825758, 0.456511,
		38.751438, 34.157116, 42.515915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408939, 33.710907, 42.883804>,  <38.983307, 33.579086, 42.196358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408939, 33.710907, 42.883804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024471, 33.821014, 42.891636>,  <38.793793, 33.887077, 42.896336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024471, 33.821014, 42.891636>,  <39.408939, 33.710907, 42.883804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024471, 33.821014, 42.891636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194626, -0.726468, 0.659064,
		0.195643, 0.629660, 0.751832,
		-0.961168, 0.275268, 0.019580,
		38.736122, 33.903595, 42.897511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228767, 33.818642, 43.577572>,  <39.408939, 33.710907, 42.883804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228767, 33.818642, 43.577572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882900, 33.747105, 43.389801>,  <38.675381, 33.704182, 43.277138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882900, 33.747105, 43.389801>,  <39.228767, 33.818642, 43.577572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882900, 33.747105, 43.389801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263318, -0.634449, 0.726731,
		-0.427800, 0.751991, 0.501495,
		-0.864668, -0.178843, -0.469430,
		38.623501, 33.693451, 43.248974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783367, 33.831013, 44.065258>,  <39.228767, 33.818642, 43.577572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783367, 33.831013, 44.065258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596630, 33.611504, 43.787868>,  <38.484589, 33.479797, 43.621433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596630, 33.611504, 43.787868>,  <38.783367, 33.831013, 44.065258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596630, 33.611504, 43.787868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350551, -0.605094, 0.714826,
		-0.811895, 0.576807, 0.090109,
		-0.466841, -0.548776, -0.693473,
		38.456577, 33.446869, 43.579826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222019, 33.719952, 44.366772>,  <38.783367, 33.831013, 44.065258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222019, 33.719952, 44.366772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224079, 33.462273, 44.060833>,  <38.225315, 33.307667, 43.877270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224079, 33.462273, 44.060833>,  <38.222019, 33.719952, 44.366772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224079, 33.462273, 44.060833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431924, -0.691261, 0.579311,
		-0.901896, 0.327371, -0.281803,
		0.005150, -0.644195, -0.764844,
		38.225624, 33.269012, 43.831379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576893, 33.577141, 44.129509>,  <38.222019, 33.719952, 44.366772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576893, 33.577141, 44.129509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784519, 33.244301, 44.051353>,  <37.909096, 33.044598, 44.004459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784519, 33.244301, 44.051353>,  <37.576893, 33.577141, 44.129509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784519, 33.244301, 44.051353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617010, -0.522972, 0.588048,
		-0.591499, -0.184677, -0.784871,
		0.519065, -0.832103, -0.195390,
		37.940239, 32.994671, 43.992737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150219, 33.059315, 44.002369>,  <37.576893, 33.577141, 44.129509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150219, 33.059315, 44.002369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465851, 32.849884, 44.130886>,  <37.655231, 32.724228, 44.207996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465851, 32.849884, 44.130886>,  <37.150219, 33.059315, 44.002369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465851, 32.849884, 44.130886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590121, -0.500810, 0.633203,
		-0.170623, -0.689247, -0.704149,
		0.789078, -0.523573, 0.321290,
		37.702576, 32.692814, 44.227272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098461, 32.277035, 43.847755>,  <37.150219, 33.059315, 44.002369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098461, 32.277035, 43.847755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301472, 32.366692, 44.180546>,  <37.423279, 32.420486, 44.380219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301472, 32.366692, 44.180546>,  <37.098461, 32.277035, 43.847755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301472, 32.366692, 44.180546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576579, -0.629183, 0.521235,
		0.640293, -0.744238, -0.190092,
		0.507525, 0.224140, 0.831973,
		37.453728, 32.433933, 44.430138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494671, 31.708065, 44.207264>,  <37.098461, 32.277035, 43.847755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494671, 31.708065, 44.207264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353313, 31.954325, 44.488998>,  <37.268501, 32.102081, 44.658039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353313, 31.954325, 44.488998>,  <37.494671, 31.708065, 44.207264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353313, 31.954325, 44.488998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478893, -0.765840, 0.429128,
		0.803603, -0.185654, 0.565469,
		-0.353390, 0.615647, 0.704339,
		37.247295, 32.139019, 44.700298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757221, 31.186619, 44.722946>,  <37.494671, 31.708065, 44.207264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757221, 31.186619, 44.722946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637394, 30.848787, 44.545433>,  <37.565498, 30.646088, 44.438923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637394, 30.848787, 44.545433>,  <37.757221, 31.186619, 44.722946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637394, 30.848787, 44.545433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777613, 0.053365, -0.626474,
		0.552789, -0.532765, 0.640770,
		-0.299568, -0.844579, -0.443785,
		37.547523, 30.595413, 44.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990215, 31.718807, 45.025406>,  <37.757221, 31.186619, 44.722946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990215, 31.718807, 45.025406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145664, 31.635242, 44.666447>,  <38.238934, 31.585104, 44.451069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145664, 31.635242, 44.666447>,  <37.990215, 31.718807, 45.025406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145664, 31.635242, 44.666447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056121, 0.966782, -0.249365,
		0.919686, 0.147272, 0.363990,
		0.388624, -0.208910, -0.897401,
		38.262253, 31.572569, 44.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388100, 32.322418, 44.793449>,  <37.990215, 31.718807, 45.025406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388100, 32.322418, 44.793449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282589, 32.095421, 44.481457>,  <38.219284, 31.959223, 44.294262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282589, 32.095421, 44.481457>,  <38.388100, 32.322418, 44.793449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282589, 32.095421, 44.481457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074131, 0.818159, -0.570194,
		0.961732, -0.092580, -0.257876,
		-0.263772, -0.567491, -0.779987,
		38.203457, 31.925173, 44.247459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863293, 32.458271, 44.169575>,  <38.388100, 32.322418, 44.793449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863293, 32.458271, 44.169575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493454, 32.355133, 44.057411>,  <38.271549, 32.293251, 43.990112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493454, 32.355133, 44.057411>,  <38.863293, 32.458271, 44.169575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493454, 32.355133, 44.057411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018671, 0.765891, -0.642699,
		0.380485, -0.589003, -0.712956,
		-0.924598, -0.257849, -0.280412,
		38.216076, 32.277779, 43.973286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733547, 32.060219, 43.519794>,  <38.863293, 32.458271, 44.169575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733547, 32.060219, 43.519794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462479, 32.326275, 43.645241>,  <38.299835, 32.485909, 43.720509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462479, 32.326275, 43.645241>,  <38.733547, 32.060219, 43.519794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462479, 32.326275, 43.645241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327535, 0.654849, -0.681097,
		-0.658391, -0.358842, -0.661629,
		-0.677673, 0.665135, 0.313614,
		38.259178, 32.525814, 43.739326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295452, 32.276665, 42.936653>,  <38.733547, 32.060219, 43.519794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295452, 32.276665, 42.936653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282150, 32.570805, 43.207401>,  <38.274170, 32.747288, 43.369850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282150, 32.570805, 43.207401>,  <38.295452, 32.276665, 42.936653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282150, 32.570805, 43.207401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064275, 0.677418, -0.732785,
		-0.997378, 0.019138, -0.069792,
		-0.033255, 0.735349, 0.676872,
		38.272175, 32.791409, 43.410461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955685, 32.802498, 42.589588>,  <38.295452, 32.276665, 42.936653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955685, 32.802498, 42.589588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095402, 32.994984, 42.911190>,  <38.179234, 33.110474, 43.104153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095402, 32.994984, 42.911190>,  <37.955685, 32.802498, 42.589588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095402, 32.994984, 42.911190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061047, 0.844544, -0.531996,
		-0.935023, 0.234905, 0.265617,
		0.349294, 0.481213, 0.804007,
		38.200191, 33.139347, 43.152393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613182, 33.415737, 42.613892>,  <37.955685, 32.802498, 42.589588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613182, 33.415737, 42.613892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920975, 33.493393, 42.857269>,  <38.105652, 33.539986, 43.003296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920975, 33.493393, 42.857269>,  <37.613182, 33.415737, 42.613892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920975, 33.493393, 42.857269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067481, 0.922630, -0.379736,
		-0.635090, 0.333259, 0.696850,
		0.769485, 0.194143, 0.608441,
		38.151821, 33.551636, 43.039803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480778, 34.165279, 42.895763>,  <37.613182, 33.415737, 42.613892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480778, 34.165279, 42.895763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868645, 34.068344, 42.908554>,  <38.101364, 34.010181, 42.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868645, 34.068344, 42.908554>,  <37.480778, 34.165279, 42.895763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868645, 34.068344, 42.908554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241915, 0.932626, -0.267743,
		0.035064, 0.267356, 0.962960,
		0.969664, -0.242343, 0.031976,
		38.159542, 33.995640, 42.918148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807610, 34.792896, 43.265125>,  <37.480778, 34.165279, 42.895763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807610, 34.792896, 43.265125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087231, 34.562653, 43.095421>,  <38.255005, 34.424507, 42.993599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087231, 34.562653, 43.095421>,  <37.807610, 34.792896, 43.265125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087231, 34.562653, 43.095421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460384, 0.816280, -0.348903,
		0.547145, 0.048581, 0.835627,
		0.699055, -0.575610, -0.424258,
		38.296947, 34.389969, 42.968143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307919, 35.208485, 43.134331>,  <37.807610, 34.792896, 43.265125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307919, 35.208485, 43.134331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449581, 34.887932, 42.941517>,  <38.534580, 34.695602, 42.825829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449581, 34.887932, 42.941517>,  <38.307919, 35.208485, 43.134331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449581, 34.887932, 42.941517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554427, 0.595018, -0.581863,
		0.753114, -0.061181, 0.655039,
		0.354160, -0.801380, -0.482037,
		38.555828, 34.647518, 42.796906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042068, 35.419720, 43.094593>,  <38.307919, 35.208485, 43.134331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042068, 35.419720, 43.094593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972332, 35.106750, 42.855453>,  <38.930489, 34.918968, 42.711971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972332, 35.106750, 42.855453>,  <39.042068, 35.419720, 43.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972332, 35.106750, 42.855453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762486, 0.276909, -0.584753,
		0.623073, -0.557797, 0.548308,
		-0.174342, -0.782422, -0.597847,
		38.920029, 34.872025, 42.676098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676456, 35.124664, 43.017963>,  <39.042068, 35.419720, 43.094593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676456, 35.124664, 43.017963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445786, 34.984467, 42.722778>,  <39.307381, 34.900349, 42.545666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445786, 34.984467, 42.722778>,  <39.676456, 35.124664, 43.017963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445786, 34.984467, 42.722778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790454, -0.011110, -0.612421,
		0.206450, -0.936500, 0.283454,
		-0.576682, -0.350491, -0.737967,
		39.272781, 34.879318, 42.501389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950729, 34.685154, 42.543423>,  <39.676456, 35.124664, 43.017963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950729, 34.685154, 42.543423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653484, 34.735420, 42.280518>,  <39.475140, 34.765579, 42.122776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653484, 34.735420, 42.280518>,  <39.950729, 34.685154, 42.543423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653484, 34.735420, 42.280518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655928, -0.057633, -0.752620,
		-0.132461, -0.990397, -0.039602,
		-0.743110, 0.125668, -0.657263,
		39.430550, 34.773121, 42.083340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088043, 34.203018, 42.027691>,  <39.950729, 34.685154, 42.543423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088043, 34.203018, 42.027691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896313, 34.519321, 41.875401>,  <39.781277, 34.709103, 41.784027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896313, 34.519321, 41.875401>,  <40.088043, 34.203018, 42.027691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896313, 34.519321, 41.875401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688257, 0.069504, -0.722130,
		-0.544565, -0.608174, -0.577558,
		-0.479323, 0.790755, -0.380730,
		39.752514, 34.756550, 41.761181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914188, 34.029751, 41.296383>,  <40.088043, 34.203018, 42.027691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914188, 34.029751, 41.296383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920883, 34.428383, 41.328770>,  <39.924900, 34.667561, 41.348202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920883, 34.428383, 41.328770>,  <39.914188, 34.029751, 41.296383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920883, 34.428383, 41.328770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781946, 0.037418, -0.622222,
		-0.623121, 0.073727, -0.778643,
		0.016739, 0.996576, 0.080967,
		39.925903, 34.727356, 41.353058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762062, 34.415344, 40.562279>,  <39.914188, 34.029751, 41.296383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762062, 34.415344, 40.562279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942970, 34.667187, 40.814960>,  <40.051514, 34.818291, 40.966572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942970, 34.667187, 40.814960>,  <39.762062, 34.415344, 40.562279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942970, 34.667187, 40.814960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466848, 0.436386, -0.769168,
		-0.759939, 0.642782, -0.096565,
		0.452268, 0.629602, 0.631708,
		40.078651, 34.856068, 41.004475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914959, 34.803867, 40.027306>,  <39.762062, 34.415344, 40.562279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914959, 34.803867, 40.027306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119366, 34.933487, 40.345764>,  <40.242012, 35.011257, 40.536839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119366, 34.933487, 40.345764>,  <39.914959, 34.803867, 40.027306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119366, 34.933487, 40.345764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591439, 0.539553, -0.599235,
		-0.623746, 0.777094, 0.084066,
		0.511019, 0.324050, 0.796147,
		40.272671, 35.030701, 40.584610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003284, 35.541256, 39.889122>,  <39.914959, 34.803867, 40.027306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003284, 35.541256, 39.889122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286678, 35.399963, 40.133507>,  <40.456715, 35.315186, 40.280140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286678, 35.399963, 40.133507>,  <40.003284, 35.541256, 39.889122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286678, 35.399963, 40.133507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705684, 0.364271, -0.607714,
		-0.007891, 0.861703, 0.507352,
		0.708483, -0.353235, 0.610965,
		40.499222, 35.293991, 40.316795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382107, 36.019966, 40.022896>,  <40.003284, 35.541256, 39.889122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382107, 36.019966, 40.022896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641434, 35.724983, 40.098618>,  <40.797031, 35.547993, 40.144051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641434, 35.724983, 40.098618>,  <40.382107, 36.019966, 40.022896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641434, 35.724983, 40.098618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736675, 0.544786, -0.400647,
		0.192332, 0.399200, 0.896464,
		0.648320, -0.737460, 0.189301,
		40.835930, 35.503746, 40.155407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952122, 36.361374, 40.057465>,  <40.382107, 36.019966, 40.022896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952122, 36.361374, 40.057465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083485, 35.983578, 40.061264>,  <41.162304, 35.756901, 40.063545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083485, 35.983578, 40.061264>,  <40.952122, 36.361374, 40.057465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083485, 35.983578, 40.061264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853022, 0.292255, -0.432366,
		0.405587, 0.150099, 0.901648,
		0.328409, -0.944488, 0.009503,
		41.182007, 35.700230, 40.064114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614147, 36.382763, 40.121216>,  <40.952122, 36.361374, 40.057465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614147, 36.382763, 40.121216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596561, 36.021217, 39.950996>,  <41.586010, 35.804291, 39.848866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596561, 36.021217, 39.950996>,  <41.614147, 36.382763, 40.121216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596561, 36.021217, 39.950996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859380, 0.182998, -0.477469,
		0.509444, -0.386695, 0.768722,
		-0.043960, -0.903868, -0.425546,
		41.583374, 35.750057, 39.823334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272491, 36.227993, 40.145687>,  <41.614147, 36.382763, 40.121216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272491, 36.227993, 40.145687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084023, 35.984226, 39.890621>,  <41.970943, 35.837967, 39.737583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084023, 35.984226, 39.890621>,  <42.272491, 36.227993, 40.145687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084023, 35.984226, 39.890621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816838, -0.028682, -0.576154,
		0.332827, -0.792333, 0.511307,
		-0.471170, -0.609415, -0.637661,
		41.942673, 35.801403, 39.699322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741226, 35.655212, 39.973492>,  <42.272491, 36.227993, 40.145687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741226, 35.655212, 39.973492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473911, 35.714035, 39.681805>,  <42.313522, 35.749329, 39.506790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473911, 35.714035, 39.681805>,  <42.741226, 35.655212, 39.973492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473911, 35.714035, 39.681805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743733, 0.152904, -0.650755,
		0.015800, -0.977238, -0.211558,
		-0.668291, 0.147061, -0.729219,
		42.273422, 35.758152, 39.463039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641823, 35.135704, 39.481544>,  <42.741226, 35.655212, 39.973492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641823, 35.135704, 39.481544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609589, 35.520145, 39.375870>,  <42.590248, 35.750809, 39.312466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609589, 35.520145, 39.375870>,  <42.641823, 35.135704, 39.481544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609589, 35.520145, 39.375870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955615, -0.000862, -0.294616,
		-0.283383, -0.276203, -0.918371,
		-0.080582, 0.961099, -0.264188,
		42.585415, 35.808475, 39.296612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821877, 35.208553, 38.803547>,  <42.641823, 35.135704, 39.481544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821877, 35.208553, 38.803547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938496, 35.540234, 38.994308>,  <43.008469, 35.739243, 39.108765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938496, 35.540234, 38.994308>,  <42.821877, 35.208553, 38.803547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938496, 35.540234, 38.994308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907634, -0.082403, -0.411594,
		-0.301995, 0.552849, -0.776632,
		0.291546, 0.829197, 0.476899,
		43.025959, 35.788994, 39.137379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103138, 35.668156, 38.355705>,  <42.821877, 35.208553, 38.803547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103138, 35.668156, 38.355705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264370, 35.682365, 38.721493>,  <43.361111, 35.690891, 38.940968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264370, 35.682365, 38.721493>,  <43.103138, 35.668156, 38.355705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264370, 35.682365, 38.721493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912340, -0.094024, -0.398492,
		0.071826, 0.994936, -0.070310,
		0.403085, 0.035525, 0.914473,
		43.385296, 35.693024, 38.995834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484299, 36.265194, 38.332294>,  <43.103138, 35.668156, 38.355705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484299, 36.265194, 38.332294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647633, 36.008804, 38.592266>,  <43.745632, 35.854969, 38.748249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647633, 36.008804, 38.592266>,  <43.484299, 36.265194, 38.332294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647633, 36.008804, 38.592266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878647, 0.082961, -0.470208,
		0.247474, 0.763063, 0.597069,
		0.408332, -0.640977, 0.649933,
		43.770134, 35.816509, 38.787247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754299, 36.753864, 37.890976>,  <43.484299, 36.265194, 38.332294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754299, 36.753864, 37.890976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153751, 36.738724, 37.876507>,  <44.393421, 36.729641, 37.867825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153751, 36.738724, 37.876507>,  <43.754299, 36.753864, 37.890976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153751, 36.738724, 37.876507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052170, -0.660955, -0.748610,
		0.004427, 0.749471, -0.662023,
		0.998628, -0.037852, -0.036174,
		44.453339, 36.727367, 37.865654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946548, 36.809017, 37.160259>,  <43.754299, 36.753864, 37.890976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946548, 36.809017, 37.160259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236210, 36.631935, 37.371773>,  <44.410007, 36.525684, 37.498680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236210, 36.631935, 37.371773>,  <43.946548, 36.809017, 37.160259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236210, 36.631935, 37.371773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033617, -0.788501, -0.614114,
		0.688817, 0.426938, -0.585880,
		0.724156, -0.442708, 0.528780,
		44.453457, 36.499123, 37.530407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440750, 36.384186, 36.722538>,  <43.946548, 36.809017, 37.160259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440750, 36.384186, 36.722538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394703, 36.207893, 37.078629>,  <44.367073, 36.102116, 37.292282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394703, 36.207893, 37.078629>,  <44.440750, 36.384186, 36.722538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394703, 36.207893, 37.078629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100129, -0.896767, -0.431026,
		0.988292, 0.039517, 0.147365,
		-0.115119, -0.440736, 0.890225,
		44.360168, 36.075672, 37.345695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275314, 37.104286, 36.277847>,  <44.440750, 36.384186, 36.722538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275314, 37.104286, 36.277847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659130, 37.127480, 36.388069>,  <44.889420, 37.141396, 36.454201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659130, 37.127480, 36.388069>,  <44.275314, 37.104286, 36.277847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659130, 37.127480, 36.388069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125683, 0.787502, -0.603361,
		-0.251982, 0.613579, 0.748349,
		0.959536, 0.057981, 0.275553,
		44.946991, 37.144875, 36.470734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453281, 37.810780, 36.239288>,  <44.275314, 37.104286, 36.277847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453281, 37.810780, 36.239288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795040, 37.603455, 36.224590>,  <45.000095, 37.479061, 36.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795040, 37.603455, 36.224590>,  <44.453281, 37.810780, 36.239288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795040, 37.603455, 36.224590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361860, 0.644263, -0.673782,
		0.372903, 0.562384, 0.738016,
		0.854401, -0.518314, -0.036743,
		45.051361, 37.447960, 36.213566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013084, 38.234203, 36.504436>,  <44.453281, 37.810780, 36.239288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013084, 38.234203, 36.504436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111862, 37.975601, 36.215702>,  <45.171131, 37.820438, 36.042461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111862, 37.975601, 36.215702>,  <45.013084, 38.234203, 36.504436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111862, 37.975601, 36.215702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028183, 0.749385, -0.661535,
		0.968619, 0.143021, 0.203279,
		0.246947, -0.646504, -0.721837,
		45.185947, 37.781651, 35.999149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613792, 38.573372, 36.411743>,  <45.013084, 38.234203, 36.504436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613792, 38.573372, 36.411743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738293, 38.433018, 36.765015>,  <45.812992, 38.348804, 36.976978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738293, 38.433018, 36.765015>,  <45.613792, 38.573372, 36.411743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738293, 38.433018, 36.765015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325705, -0.833667, -0.446000,
		0.892771, 0.426472, -0.145192,
		0.311248, -0.350886, 0.883178,
		45.831669, 38.327751, 37.029968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.307472, 38.474995, 36.349266>,  <45.613792, 38.573372, 36.411743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.307472, 38.474995, 36.349266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144424, 38.227150, 36.617569>,  <46.046597, 38.078442, 36.778553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144424, 38.227150, 36.617569>,  <46.307472, 38.474995, 36.349266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144424, 38.227150, 36.617569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360347, -0.784092, -0.505322,
		0.839044, 0.035726, 0.542890,
		-0.407623, -0.619615, 0.670761,
		46.022137, 38.041264, 36.818798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854210, 38.109642, 36.585720>,  <46.307472, 38.474995, 36.349266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854210, 38.109642, 36.585720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508369, 37.914558, 36.634041>,  <46.300865, 37.797508, 36.663033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508369, 37.914558, 36.634041>,  <46.854210, 38.109642, 36.585720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508369, 37.914558, 36.634041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356938, -0.765408, -0.535487,
		0.353627, -0.419866, 0.835859,
		-0.864606, -0.487713, 0.120803,
		46.248989, 37.768246, 36.670280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.925980, 37.396969, 36.730938>,  <46.854210, 38.109642, 36.585720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.925980, 37.396969, 36.730938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571583, 37.402420, 36.545536>,  <46.358944, 37.405689, 36.434296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571583, 37.402420, 36.545536>,  <46.925980, 37.396969, 36.730938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571583, 37.402420, 36.545536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251964, -0.824976, -0.505894,
		-0.389271, -0.565003, 0.727488,
		-0.885992, 0.013629, -0.463500,
		46.305786, 37.406509, 36.406487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.480988, 36.824837, 36.932682>,  <46.925980, 37.396969, 36.730938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.480988, 36.824837, 36.932682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450100, 36.968750, 36.560749>,  <46.431568, 37.055099, 36.337589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450100, 36.968750, 36.560749>,  <46.480988, 36.824837, 36.932682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450100, 36.968750, 36.560749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427049, -0.830802, -0.356927,
		-0.900925, -0.424646, -0.089491,
		-0.077218, 0.359781, -0.929836,
		46.426933, 37.076683, 36.281799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513237, 36.266556, 36.357864>,  <46.480988, 36.824837, 36.932682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513237, 36.266556, 36.357864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638653, 36.575424, 36.136795>,  <46.713902, 36.760746, 36.004154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638653, 36.575424, 36.136795>,  <46.513237, 36.266556, 36.357864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.638653, 36.575424, 36.136795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443302, -0.633733, -0.633929,
		-0.839746, -0.046236, -0.541007,
		0.313543, 0.772169, -0.552671,
		46.732716, 36.807076, 35.970993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381763, 36.094368, 35.659039>,  <46.513237, 36.266556, 36.357864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381763, 36.094368, 35.659039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687778, 36.350933, 35.682018>,  <46.871387, 36.504871, 35.695805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687778, 36.350933, 35.682018>,  <46.381763, 36.094368, 35.659039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687778, 36.350933, 35.682018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564443, -0.624932, -0.539318,
		-0.310025, 0.445027, -0.840140,
		0.765041, 0.641413, 0.057448,
		46.917290, 36.543358, 35.699253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674267, 36.139515, 34.971672>,  <46.381763, 36.094368, 35.659039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674267, 36.139515, 34.971672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712803, 35.813301, 35.199928>,  <46.735924, 35.617573, 35.336880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712803, 35.813301, 35.199928>,  <46.674267, 36.139515, 34.971672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712803, 35.813301, 35.199928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812042, -0.267134, -0.518871,
		0.575592, 0.513370, 0.636510,
		0.096340, -0.815531, 0.570638,
		46.741703, 35.568642, 35.371120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.297523, 36.098072, 35.161915>,  <46.674267, 36.139515, 34.971672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.297523, 36.098072, 35.161915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148487, 35.727089, 35.149281>,  <47.059067, 35.504498, 35.141701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148487, 35.727089, 35.149281>,  <47.297523, 36.098072, 35.161915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148487, 35.727089, 35.149281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794580, -0.301259, -0.527148,
		0.479393, -0.221506, 0.849186,
		-0.372591, -0.927458, -0.031583,
		47.036709, 35.448853, 35.139805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.743141, 35.638969, 35.023678>,  <47.297523, 36.098072, 35.161915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.743141, 35.638969, 35.023678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530689, 35.334602, 34.874592>,  <47.403217, 35.151981, 34.785141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530689, 35.334602, 34.874592>,  <47.743141, 35.638969, 35.023678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.530689, 35.334602, 34.874592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712784, -0.163435, -0.682077,
		0.458088, -0.627932, 0.629172,
		-0.531126, -0.760914, -0.372712,
		47.371353, 35.106327, 34.762779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.119343, 34.923138, 35.075630>,  <47.743141, 35.638969, 35.023678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.119343, 34.923138, 35.075630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881268, 34.997883, 34.763008>,  <47.738422, 35.042732, 34.575436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881268, 34.997883, 34.763008>,  <48.119343, 34.923138, 35.075630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.881268, 34.997883, 34.763008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791089, -0.034608, -0.610721,
		-0.141171, -0.981776, -0.127229,
		-0.595188, 0.186866, -0.781558,
		47.702709, 35.053944, 34.528542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.922626, 31.557114, 28.819889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.611038, 31.582184, 28.570320>,  <40.424084, 31.597225, 28.420580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.611038, 31.582184, 28.570320>,  <40.922626, 31.557114, 28.819889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611038, 31.582184, 28.570320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619744, 0.074596, 0.781251,
		0.095507, 0.995242, -0.019265,
		-0.778971, 0.062675, -0.623920,
		40.377346, 31.600986, 28.383144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570412, 32.226810, 29.064119>,  <40.922626, 31.557114, 28.819889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570412, 32.226810, 29.064119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354362, 31.956036, 28.864111>,  <40.224731, 31.793571, 28.744106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354362, 31.956036, 28.864111>,  <40.570412, 32.226810, 29.064119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354362, 31.956036, 28.864111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669630, -0.014200, 0.742559,
		-0.509766, 0.735905, -0.445627,
		-0.540125, -0.676937, -0.500022,
		40.192326, 31.752954, 28.714104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889164, 32.361462, 29.273586>,  <40.570412, 32.226810, 29.064119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889164, 32.361462, 29.273586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835297, 31.987667, 29.141762>,  <39.802979, 31.763391, 29.062668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835297, 31.987667, 29.141762>,  <39.889164, 32.361462, 29.273586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835297, 31.987667, 29.141762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682912, -0.153462, 0.714200,
		-0.717982, 0.321237, -0.617503,
		-0.134664, -0.934482, -0.329559,
		39.794899, 31.707323, 29.042894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198318, 32.290585, 29.076462>,  <39.889164, 32.361462, 29.273586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198318, 32.290585, 29.076462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327301, 31.926092, 29.178980>,  <39.404690, 31.707397, 29.240492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327301, 31.926092, 29.178980>,  <39.198318, 32.290585, 29.076462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327301, 31.926092, 29.178980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618203, 0.002319, 0.786015,
		-0.716833, -0.411896, -0.562576,
		0.322452, -0.911228, 0.256297,
		39.424038, 31.652723, 29.255869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618473, 32.053631, 29.383121>,  <39.198318, 32.290585, 29.076462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618473, 32.053631, 29.383121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910671, 31.803959, 29.493954>,  <39.085991, 31.654156, 29.560453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910671, 31.803959, 29.493954>,  <38.618473, 32.053631, 29.383121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910671, 31.803959, 29.493954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356997, -0.003150, 0.934100,
		-0.582172, -0.781276, -0.225131,
		0.730499, -0.624178, 0.277079,
		39.129822, 31.616705, 29.577078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279446, 31.593254, 29.938168>,  <38.618473, 32.053631, 29.383121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279446, 31.593254, 29.938168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676460, 31.565636, 29.978357>,  <38.914669, 31.549065, 30.002472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676460, 31.565636, 29.978357>,  <38.279446, 31.593254, 29.938168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676460, 31.565636, 29.978357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097839, 0.040566, 0.994375,
		-0.072733, -0.996788, 0.033508,
		0.992541, -0.069046, 0.100475,
		38.974224, 31.544922, 30.008499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315636, 31.176268, 30.523443>,  <38.279446, 31.593254, 29.938168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315636, 31.176268, 30.523443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682800, 31.333828, 30.504374>,  <38.903099, 31.428364, 30.492931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682800, 31.333828, 30.504374>,  <38.315636, 31.176268, 30.523443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682800, 31.333828, 30.504374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102898, -0.120277, 0.987393,
		0.383200, -0.911250, -0.150936,
		0.917916, 0.393900, -0.047675,
		38.958176, 31.451998, 30.490070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781845, 30.758818, 30.937132>,  <38.315636, 31.176268, 30.523443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781845, 30.758818, 30.937132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987823, 31.098354, 30.889296>,  <39.111412, 31.302076, 30.860594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987823, 31.098354, 30.889296>,  <38.781845, 30.758818, 30.937132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987823, 31.098354, 30.889296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003092, 0.137671, 0.990473,
		0.857217, -0.510410, 0.068268,
		0.514946, 0.848840, -0.119592,
		39.142307, 31.353006, 30.853418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263706, 30.761421, 31.383734>,  <38.781845, 30.758818, 30.937132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263706, 30.761421, 31.383734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246933, 31.154329, 31.310644>,  <39.236870, 31.390074, 31.266790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246933, 31.154329, 31.310644>,  <39.263706, 30.761421, 31.383734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246933, 31.154329, 31.310644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122224, 0.176468, 0.976688,
		0.991616, 0.063288, 0.112657,
		-0.041933, 0.982270, -0.182724,
		39.234352, 31.449011, 31.255827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776192, 31.096931, 31.818226>,  <39.263706, 30.761421, 31.383734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776192, 31.096931, 31.818226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524906, 31.395065, 31.728937>,  <39.374134, 31.573946, 31.675364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524906, 31.395065, 31.728937>,  <39.776192, 31.096931, 31.818226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524906, 31.395065, 31.728937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088582, 0.353552, 0.931211,
		0.772984, 0.565223, -0.288129,
		-0.628211, 0.745334, -0.223222,
		39.336441, 31.618666, 31.661970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158001, 31.712244, 31.925398>,  <39.776192, 31.096931, 31.818226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158001, 31.712244, 31.925398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762665, 31.771906, 31.937672>,  <39.525463, 31.807703, 31.945036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762665, 31.771906, 31.937672>,  <40.158001, 31.712244, 31.925398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762665, 31.771906, 31.937672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078104, 0.323544, 0.942984,
		0.130722, 0.934383, -0.331420,
		-0.988338, 0.149154, 0.030684,
		39.466164, 31.816652, 31.946877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134911, 32.293659, 32.206661>,  <40.158001, 31.712244, 31.925398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134911, 32.293659, 32.206661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749817, 32.209190, 32.274254>,  <39.518761, 32.158508, 32.314808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749817, 32.209190, 32.274254>,  <40.134911, 32.293659, 32.206661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749817, 32.209190, 32.274254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065115, 0.425438, 0.902642,
		-0.262502, 0.880006, -0.395832,
		-0.962732, -0.211171, 0.168979,
		39.460999, 32.145840, 32.324947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779377, 32.837471, 32.442413>,  <40.134911, 32.293659, 32.206661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779377, 32.837471, 32.442413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556004, 32.533409, 32.575268>,  <39.421982, 32.350971, 32.654980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556004, 32.533409, 32.575268>,  <39.779377, 32.837471, 32.442413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556004, 32.533409, 32.575268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141937, 0.306917, 0.941093,
		-0.817318, 0.572678, -0.063497,
		-0.558431, -0.760159, 0.332132,
		39.388474, 32.305363, 32.674908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265293, 33.119747, 32.976788>,  <39.779377, 32.837471, 32.442413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265293, 33.119747, 32.976788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318768, 32.727890, 33.036694>,  <39.350853, 32.492775, 33.072639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318768, 32.727890, 33.036694>,  <39.265293, 33.119747, 32.976788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318768, 32.727890, 33.036694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161618, 0.170654, 0.971986,
		-0.977756, -0.105740, 0.181142,
		0.133690, -0.979641, 0.149768,
		39.358875, 32.433998, 33.081623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131371, 33.121822, 33.713902>,  <39.265293, 33.119747, 32.976788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131371, 33.121822, 33.713902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291004, 32.764130, 33.632828>,  <39.386784, 32.549515, 33.584183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291004, 32.764130, 33.632828>,  <39.131371, 33.121822, 33.713902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291004, 32.764130, 33.632828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152447, -0.153268, 0.976355,
		-0.904152, -0.420547, 0.075156,
		0.399084, -0.894231, -0.202689,
		39.410728, 32.495861, 33.572021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647926, 32.568306, 33.894520>,  <39.131371, 33.121822, 33.713902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647926, 32.568306, 33.894520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028267, 32.448448, 33.925758>,  <39.256470, 32.376534, 33.944500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028267, 32.448448, 33.925758>,  <38.647926, 32.568306, 33.894520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028267, 32.448448, 33.925758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150423, -0.226531, 0.962318,
		-0.270663, -0.926767, -0.260471,
		0.950849, -0.299645, 0.078094,
		39.313522, 32.358555, 33.949188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519211, 32.234718, 34.430042>,  <38.647926, 32.568306, 33.894520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519211, 32.234718, 34.430042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918533, 32.219296, 34.412582>,  <39.158127, 32.210041, 34.402107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918533, 32.219296, 34.412582>,  <38.519211, 32.234718, 34.430042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918533, 32.219296, 34.412582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038802, -0.118512, 0.992194,
		-0.043430, -0.992204, -0.116814,
		0.998303, -0.038558, -0.043647,
		39.218025, 32.207726, 34.399487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757366, 31.696173, 34.944965>,  <38.519211, 32.234718, 34.430042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757366, 31.696173, 34.944965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061443, 31.947447, 34.878651>,  <39.243889, 32.098209, 34.838860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061443, 31.947447, 34.878651>,  <38.757366, 31.696173, 34.944965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061443, 31.947447, 34.878651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099638, 0.139436, 0.985206,
		0.642008, -0.765468, 0.043408,
		0.760196, 0.628185, -0.165789,
		39.289501, 32.135902, 34.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217705, 31.538754, 35.503906>,  <38.757366, 31.696173, 34.944965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217705, 31.538754, 35.503906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332458, 31.902617, 35.383755>,  <39.401310, 32.120934, 35.311665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332458, 31.902617, 35.383755>,  <39.217705, 31.538754, 35.503906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332458, 31.902617, 35.383755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245347, 0.233333, 0.940936,
		0.926015, -0.343633, -0.156243,
		0.286880, 0.909655, -0.300379,
		39.418522, 32.175514, 35.293640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786659, 31.619059, 35.943630>,  <39.217705, 31.538754, 35.503906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786659, 31.619059, 35.943630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713356, 31.985268, 35.800392>,  <39.669376, 32.204994, 35.714451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713356, 31.985268, 35.800392>,  <39.786659, 31.619059, 35.943630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713356, 31.985268, 35.800392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166365, 0.387891, 0.906567,
		0.968886, 0.106558, -0.223394,
		-0.183255, 0.915525, -0.358095,
		39.658379, 32.259926, 35.692963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356094, 31.993620, 36.247974>,  <39.786659, 31.619059, 35.943630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356094, 31.993620, 36.247974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059025, 32.246471, 36.159573>,  <39.880783, 32.398182, 36.106529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059025, 32.246471, 36.159573>,  <40.356094, 31.993620, 36.247974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059025, 32.246471, 36.159573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086604, 0.417929, 0.904342,
		0.664028, 0.652493, -0.365130,
		-0.742675, 0.632131, -0.221008,
		39.836224, 32.436111, 36.093269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581520, 32.604954, 36.420277>,  <40.356094, 31.993620, 36.247974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581520, 32.604954, 36.420277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.190548, 32.688862, 36.430374>,  <39.955967, 32.739204, 36.436432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.190548, 32.688862, 36.430374>,  <40.581520, 32.604954, 36.420277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190548, 32.688862, 36.430374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094885, 0.329081, 0.939522,
		0.188775, 0.920708, -0.341556,
		-0.977426, 0.209767, 0.025239,
		39.897320, 32.751793, 36.437946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470432, 33.284660, 36.481972>,  <40.581520, 32.604954, 36.420277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470432, 33.284660, 36.481972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766613, 33.374157, 36.735481>,  <40.944321, 33.427856, 36.887585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766613, 33.374157, 36.735481>,  <40.470432, 33.284660, 36.481972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766613, 33.374157, 36.735481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671038, -0.299293, -0.678331,
		0.037911, 0.927557, -0.371753,
		0.740454, 0.223744, 0.633772,
		40.988750, 33.441280, 36.925613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810764, 33.787800, 36.130348>,  <40.470432, 33.284660, 36.481972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810764, 33.787800, 36.130348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.054382, 33.603802, 36.388798>,  <41.200554, 33.493404, 36.543869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.054382, 33.603802, 36.388798>,  <40.810764, 33.787800, 36.130348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054382, 33.603802, 36.388798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605671, -0.256234, -0.753330,
		0.512086, 0.850147, 0.122548,
		0.609040, -0.459993, 0.646124,
		41.237095, 33.465805, 36.582634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460732, 33.967293, 35.842445>,  <40.810764, 33.787800, 36.130348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460732, 33.967293, 35.842445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.513062, 33.650185, 36.080570>,  <41.544460, 33.459919, 36.223446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.513062, 33.650185, 36.080570>,  <41.460732, 33.967293, 35.842445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513062, 33.650185, 36.080570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631091, -0.396512, -0.666710,
		0.764598, 0.462920, 0.448437,
		0.130823, -0.792770, 0.595316,
		41.552307, 33.412354, 36.259167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137871, 33.956745, 35.891979>,  <41.460732, 33.967293, 35.842445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137871, 33.956745, 35.891979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.016075, 33.585270, 35.976669>,  <41.942997, 33.362385, 36.027485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.016075, 33.585270, 35.976669>,  <42.137871, 33.956745, 35.891979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016075, 33.585270, 35.976669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447120, -0.335621, -0.829122,
		0.841055, -0.157788, 0.517426,
		-0.304485, -0.928688, 0.211725,
		41.924728, 33.306664, 36.040188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623684, 33.574978, 35.700211>,  <42.137871, 33.956745, 35.891979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623684, 33.574978, 35.700211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.349052, 33.284496, 35.714279>,  <42.184273, 33.110207, 35.722721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.349052, 33.284496, 35.714279>,  <42.623684, 33.574978, 35.700211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349052, 33.284496, 35.714279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265384, -0.295349, -0.917791,
		0.676891, -0.620802, 0.395503,
		-0.686578, -0.726205, 0.035168,
		42.143078, 33.066635, 35.724831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965134, 32.877838, 35.589455>,  <42.623684, 33.574978, 35.700211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965134, 32.877838, 35.589455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.582123, 32.845043, 35.478882>,  <42.352314, 32.825367, 35.412537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.582123, 32.845043, 35.478882>,  <42.965134, 32.877838, 35.589455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582123, 32.845043, 35.478882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287964, -0.223198, -0.931268,
		0.014651, -0.971319, 0.237327,
		-0.957529, -0.081986, -0.276435,
		42.294865, 32.820446, 35.395950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912418, 32.228706, 35.280704>,  <42.965134, 32.877838, 35.589455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912418, 32.228706, 35.280704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.585392, 32.409939, 35.138550>,  <42.389175, 32.518677, 35.053257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.585392, 32.409939, 35.138550>,  <42.912418, 32.228706, 35.280704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585392, 32.409939, 35.138550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187659, -0.373839, -0.908311,
		-0.544393, -0.809299, 0.220616,
		-0.817570, 0.453077, -0.355387,
		42.340122, 32.545860, 35.031933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441414, 31.696520, 35.005318>,  <42.912418, 32.228706, 35.280704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441414, 31.696520, 35.005318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.395615, 32.051365, 34.826466>,  <42.368134, 32.264271, 34.719154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.395615, 32.051365, 34.826466>,  <42.441414, 31.696520, 35.005318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395615, 32.051365, 34.826466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107101, -0.436443, -0.893334,
		-0.987633, -0.150174, -0.045038,
		-0.114499, 0.887110, -0.447130,
		42.361263, 32.317497, 34.692326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153248, 31.501209, 34.470867>,  <42.441414, 31.696520, 35.005318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153248, 31.501209, 34.470867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.264046, 31.867485, 34.354397>,  <42.330524, 32.087250, 34.284515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.264046, 31.867485, 34.354397>,  <42.153248, 31.501209, 34.470867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264046, 31.867485, 34.354397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231088, -0.357626, -0.904822,
		-0.932668, 0.183348, -0.310667,
		0.276999, 0.915690, -0.291177,
		42.347145, 32.142193, 34.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758316, 31.705837, 33.758469>,  <42.153248, 31.501209, 34.470867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758316, 31.705837, 33.758469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096981, 31.915363, 33.795959>,  <42.300179, 32.041080, 33.818455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096981, 31.915363, 33.795959>,  <41.758316, 31.705837, 33.758469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096981, 31.915363, 33.795959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218859, -0.182225, -0.958590,
		-0.485044, 0.832113, -0.268924,
		0.846660, 0.523815, 0.093728,
		42.350979, 32.072506, 33.824078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796261, 31.807371, 33.074936>,  <41.758316, 31.705837, 33.758469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796261, 31.807371, 33.074936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.148052, 31.946695, 33.204670>,  <42.359127, 32.030289, 33.282509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.148052, 31.946695, 33.204670>,  <41.796261, 31.807371, 33.074936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148052, 31.946695, 33.204670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387547, -0.128552, -0.912843,
		-0.276259, 0.928523, -0.248046,
		0.879482, 0.348311, 0.324332,
		42.411896, 32.051189, 33.301971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874844, 32.328472, 32.552574>,  <41.796261, 31.807371, 33.074936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874844, 32.328472, 32.552574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.208237, 32.222408, 32.746483>,  <42.408272, 32.158772, 32.862827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.208237, 32.222408, 32.746483>,  <41.874844, 32.328472, 32.552574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208237, 32.222408, 32.746483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536321, 0.177162, -0.825211,
		0.132931, 0.947789, 0.289873,
		0.833480, -0.265161, 0.484769,
		42.458282, 32.142860, 32.891914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338219, 32.806068, 32.348125>,  <41.874844, 32.328472, 32.552574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338219, 32.806068, 32.348125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.557781, 32.504745, 32.493027>,  <42.689518, 32.323952, 32.579967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.557781, 32.504745, 32.493027>,  <42.338219, 32.806068, 32.348125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557781, 32.504745, 32.493027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645157, 0.106257, -0.756626,
		0.531480, 0.649027, 0.544327,
		0.548910, -0.753308, 0.362251,
		42.722454, 32.278751, 32.601704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001591, 33.003998, 32.236221>,  <42.338219, 32.806068, 32.348125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001591, 33.003998, 32.236221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.032421, 32.606369, 32.266872>,  <43.050919, 32.367790, 32.285263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.032421, 32.606369, 32.266872>,  <43.001591, 33.003998, 32.236221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032421, 32.606369, 32.266872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589532, -0.016545, -0.807576,
		0.804059, 0.107420, 0.584765,
		0.077075, -0.994076, 0.076631,
		43.055542, 32.308147, 32.289864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590923, 32.883720, 31.797548>,  <43.001591, 33.003998, 32.236221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590923, 32.883720, 31.797548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.423641, 32.521469, 31.825666>,  <43.323273, 32.304119, 31.842537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.423641, 32.521469, 31.825666>,  <43.590923, 32.883720, 31.797548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423641, 32.521469, 31.825666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167893, -0.153122, -0.973841,
		0.892700, -0.395466, 0.216085,
		-0.418209, -0.905627, 0.070296,
		43.298180, 32.249783, 31.846756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121899, 32.421154, 31.423777>,  <43.590923, 32.883720, 31.797548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121899, 32.421154, 31.423777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.768032, 32.234722, 31.419241>,  <43.555710, 32.122864, 31.416519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.768032, 32.234722, 31.419241>,  <44.121899, 32.421154, 31.423777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768032, 32.234722, 31.419241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014849, -0.003864, -0.999882,
		0.465985, -0.884732, 0.010340,
		-0.884668, -0.466084, -0.011337,
		43.502632, 32.094898, 31.415840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121967, 31.989159, 30.899778>,  <44.121899, 32.421154, 31.423777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121967, 31.989159, 30.899778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.726891, 31.967510, 30.958477>,  <43.489845, 31.954521, 30.993696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.726891, 31.967510, 30.958477>,  <44.121967, 31.989159, 30.899778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726891, 31.967510, 30.958477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141992, -0.083154, -0.986369,
		0.065587, -0.995066, 0.074446,
		-0.987693, -0.054122, 0.146745,
		43.430584, 31.951275, 31.002501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869743, 31.425320, 30.437778>,  <44.121967, 31.989159, 30.899778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869743, 31.425320, 30.437778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.553940, 31.656712, 30.519787>,  <43.364456, 31.795547, 30.568993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.553940, 31.656712, 30.519787>,  <43.869743, 31.425320, 30.437778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553940, 31.656712, 30.519787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278694, -0.040288, -0.959534,
		-0.546813, -0.814700, 0.193027,
		-0.789509, 0.578482, 0.205022,
		43.317085, 31.830256, 30.581293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.177704, 30.958801, 30.497097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.371403, 31.303331, 30.435619>,  <42.487621, 31.510050, 30.398733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.371403, 31.303331, 30.435619>,  <42.177704, 30.958801, 30.497097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371403, 31.303331, 30.435619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092639, -0.124203, -0.987923,
		-0.870013, 0.492637, 0.019648,
		0.484247, 0.861326, -0.153695,
		42.516678, 31.561729, 30.389511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808025, 31.203609, 29.955236>,  <42.177704, 30.958801, 30.497097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808025, 31.203609, 29.955236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.142612, 31.421906, 29.935297>,  <42.343365, 31.552883, 29.923334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.142612, 31.421906, 29.935297>,  <41.808025, 31.203609, 29.955236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142612, 31.421906, 29.935297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007892, -0.078958, -0.996847,
		-0.547954, 0.834227, -0.061739,
		0.836471, 0.545739, -0.049849,
		42.393555, 31.585627, 29.920341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645214, 31.647104, 29.414101>,  <41.808025, 31.203609, 29.955236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645214, 31.647104, 29.414101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.040054, 31.696157, 29.455259>,  <42.276958, 31.725590, 29.479956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.040054, 31.696157, 29.455259>,  <41.645214, 31.647104, 29.414101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040054, 31.696157, 29.455259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087189, 0.127226, -0.988034,
		-0.134257, 0.984263, 0.114893,
		0.987103, 0.122633, 0.102898,
		42.336185, 31.732948, 29.486130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895264, 32.345894, 29.052353>,  <41.645214, 31.647104, 29.414101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895264, 32.345894, 29.052353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.199478, 32.086231, 29.057688>,  <42.382008, 31.930433, 29.060888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.199478, 32.086231, 29.057688>,  <41.895264, 32.345894, 29.052353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199478, 32.086231, 29.057688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071824, 0.063694, -0.995382,
		0.645307, 0.757985, 0.095066,
		0.760540, -0.649154, 0.013339,
		42.427639, 31.891485, 29.061689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467983, 32.578453, 28.571838>,  <41.895264, 32.345894, 29.052353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467983, 32.578453, 28.571838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.593575, 32.201664, 28.619333>,  <42.668930, 31.975590, 28.647831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.593575, 32.201664, 28.619333>,  <42.467983, 32.578453, 28.571838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593575, 32.201664, 28.619333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146081, -0.075645, -0.986376,
		0.938125, 0.327045, 0.113854,
		0.313977, -0.941976, 0.118739,
		42.687767, 31.919071, 28.654955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061485, 32.527527, 28.105890>,  <42.467983, 32.578453, 28.571838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061485, 32.527527, 28.105890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.954231, 32.149803, 28.182184>,  <42.889881, 31.923168, 28.227961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.954231, 32.149803, 28.182184>,  <43.061485, 32.527527, 28.105890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954231, 32.149803, 28.182184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382177, -0.286004, -0.878716,
		0.884334, -0.162717, 0.437581,
		-0.268132, -0.944312, 0.190737,
		42.873791, 31.866510, 28.239405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629250, 32.131161, 27.882168>,  <43.061485, 32.527527, 28.105890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629250, 32.131161, 27.882168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.324699, 31.874567, 27.919708>,  <43.141972, 31.720610, 27.942232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.324699, 31.874567, 27.919708>,  <43.629250, 32.131161, 27.882168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324699, 31.874567, 27.919708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434997, -0.612812, -0.659726,
		0.480717, -0.461473, 0.745623,
		-0.761373, -0.641486, 0.093850,
		43.096287, 31.682121, 27.947863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931870, 31.500443, 27.698471>,  <43.629250, 32.131161, 27.882168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931870, 31.500443, 27.698471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.537544, 31.479454, 27.634708>,  <43.300949, 31.466862, 27.596451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.537544, 31.479454, 27.634708>,  <43.931870, 31.500443, 27.698471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537544, 31.479454, 27.634708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150133, -0.700185, -0.697998,
		-0.074990, -0.712031, 0.698132,
		-0.985818, -0.052470, -0.159406,
		43.241798, 31.463713, 27.586887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828888, 30.726892, 27.634193>,  <43.931870, 31.500443, 27.698471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828888, 30.726892, 27.634193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.525829, 30.931412, 27.471935>,  <43.343994, 31.054123, 27.374580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.525829, 30.931412, 27.471935>,  <43.828888, 30.726892, 27.634193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525829, 30.931412, 27.471935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124811, -0.496543, -0.858992,
		-0.640622, -0.701439, 0.312388,
		-0.757645, 0.511300, -0.405644,
		43.298534, 31.084801, 27.350243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421867, 30.246807, 27.278605>,  <43.828888, 30.726892, 27.634193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421867, 30.246807, 27.278605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.362507, 30.608513, 27.118464>,  <43.326893, 30.825537, 27.022379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.362507, 30.608513, 27.118464>,  <43.421867, 30.246807, 27.278605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362507, 30.608513, 27.118464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114427, -0.386415, -0.915200,
		-0.982285, -0.181625, -0.046129,
		-0.148399, 0.904265, -0.400353,
		43.317986, 30.879793, 26.998358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960331, 30.110926, 26.731787>,  <43.421867, 30.246807, 27.278605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960331, 30.110926, 26.731787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.116535, 30.469328, 26.647242>,  <43.210258, 30.684370, 26.596514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.116535, 30.469328, 26.647242>,  <42.960331, 30.110926, 26.731787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116535, 30.469328, 26.647242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135095, -0.282884, -0.949592,
		-0.910633, 0.342269, -0.231515,
		0.390508, 0.896007, -0.211365,
		43.233688, 30.738131, 26.583832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678749, 30.255194, 26.060600>,  <42.960331, 30.110926, 26.731787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678749, 30.255194, 26.060600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.004803, 30.478563, 26.122210>,  <43.200436, 30.612585, 26.159174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.004803, 30.478563, 26.122210>,  <42.678749, 30.255194, 26.060600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004803, 30.478563, 26.122210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152151, 0.050157, -0.987084,
		-0.558936, 0.828039, -0.044080,
		0.815132, 0.558423, 0.154021,
		43.249344, 30.646090, 26.168415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483540, 30.848516, 25.733440>,  <42.678749, 30.255194, 26.060600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483540, 30.848516, 25.733440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881805, 30.840052, 25.769670>,  <43.120766, 30.834972, 25.791409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.881805, 30.840052, 25.769670>,  <42.483540, 30.848516, 25.733440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881805, 30.840052, 25.769670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092003, 0.080899, -0.992467,
		0.013674, 0.996498, 0.082496,
		0.995665, -0.021161, 0.090575,
		43.180504, 30.833704, 25.796843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807201, 31.314867, 25.325195>,  <42.483540, 30.848516, 25.733440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807201, 31.314867, 25.325195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.110474, 31.055901, 25.356197>,  <43.292439, 30.900520, 25.374798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.110474, 31.055901, 25.356197>,  <42.807201, 31.314867, 25.325195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110474, 31.055901, 25.356197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235949, 0.161603, -0.958234,
		0.607853, 0.744805, 0.275282,
		0.758184, -0.647418, 0.077505,
		43.337929, 30.861675, 25.379448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275990, 31.538483, 24.810991>,  <42.807201, 31.314867, 25.325195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275990, 31.538483, 24.810991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.406609, 31.170713, 24.898649>,  <43.484982, 30.950052, 24.951244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.406609, 31.170713, 24.898649>,  <43.275990, 31.538483, 24.810991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406609, 31.170713, 24.898649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517120, -0.020287, -0.855672,
		0.791173, 0.392741, 0.468829,
		0.326547, -0.919425, 0.219145,
		43.504574, 30.894886, 24.964392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998089, 31.562895, 24.677736>,  <43.275990, 31.538483, 24.810991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998089, 31.562895, 24.677736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.897068, 31.176088, 24.664482>,  <43.836456, 30.944004, 24.656530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.897068, 31.176088, 24.664482>,  <43.998089, 31.562895, 24.677736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897068, 31.176088, 24.664482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449622, -0.086965, -0.888975,
		0.856771, -0.239413, 0.456754,
		-0.252554, -0.967015, -0.033136,
		43.821301, 30.885984, 24.654541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566425, 31.274532, 24.411066>,  <43.998089, 31.562895, 24.677736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566425, 31.274532, 24.411066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.280560, 30.997351, 24.372974>,  <44.109039, 30.831041, 24.350119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.280560, 30.997351, 24.372974>,  <44.566425, 31.274532, 24.411066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280560, 30.997351, 24.372974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307462, -0.188926, -0.932617,
		0.628270, -0.695787, 0.348076,
		-0.714664, -0.692955, -0.095231,
		44.066162, 30.789465, 24.344404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886013, 30.833721, 24.087563>,  <44.566425, 31.274532, 24.411066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886013, 30.833721, 24.087563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.505749, 30.720951, 24.035769>,  <44.277592, 30.653288, 24.004692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.505749, 30.720951, 24.035769>,  <44.886013, 30.833721, 24.087563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505749, 30.720951, 24.035769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201801, -0.244933, -0.948306,
		0.235638, -0.927645, 0.289741,
		-0.950659, -0.281927, -0.129484,
		44.220551, 30.636374, 23.996923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980114, 30.185608, 23.914175>,  <44.886013, 30.833721, 24.087563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980114, 30.185608, 23.914175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.626301, 30.324469, 23.789536>,  <44.414013, 30.407785, 23.714752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.626301, 30.324469, 23.789536>,  <44.980114, 30.185608, 23.914175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626301, 30.324469, 23.789536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282061, -0.134016, -0.949990,
		-0.371551, -0.928184, 0.020623,
		-0.884529, 0.347152, -0.311598,
		44.360943, 30.428614, 23.696056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813568, 29.851469, 23.254459>,  <44.980114, 30.185608, 23.914175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813568, 29.851469, 23.254459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.533485, 30.137041, 23.255842>,  <44.365437, 30.308384, 23.256672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.533485, 30.137041, 23.255842>,  <44.813568, 29.851469, 23.254459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533485, 30.137041, 23.255842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046182, -0.040458, -0.998113,
		-0.712441, -0.699049, 0.061299,
		-0.700211, 0.713928, 0.003459,
		44.323421, 30.351219, 23.256880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375832, 29.696537, 22.760218>,  <44.813568, 29.851469, 23.254459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375832, 29.696537, 22.760218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.327354, 30.091398, 22.801868>,  <44.298267, 30.328316, 22.826859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.327354, 30.091398, 22.801868>,  <44.375832, 29.696537, 22.760218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327354, 30.091398, 22.801868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085726, 0.094098, -0.991865,
		-0.988920, -0.129133, 0.073221,
		-0.121193, 0.987153, 0.104125,
		44.290997, 30.387545, 22.833105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994160, 29.819681, 22.219891>,  <44.375832, 29.696537, 22.760218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994160, 29.819681, 22.219891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.146931, 30.176168, 22.317753>,  <44.238594, 30.390060, 22.376471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.146931, 30.176168, 22.317753>,  <43.994160, 29.819681, 22.219891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146931, 30.176168, 22.317753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079159, 0.295297, -0.952121,
		-0.920795, 0.344278, 0.183331,
		0.381931, 0.891220, 0.244655,
		44.261509, 30.443535, 22.391150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476547, 30.248880, 22.004938>,  <43.994160, 29.819681, 22.219891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476547, 30.248880, 22.004938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848087, 30.395882, 22.023638>,  <44.071011, 30.484081, 22.034857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848087, 30.395882, 22.023638>,  <43.476547, 30.248880, 22.004938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848087, 30.395882, 22.023638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085556, 0.335573, -0.938121,
		-0.360449, 0.867371, 0.343138,
		0.928847, 0.367502, 0.046748,
		44.126743, 30.506132, 22.037663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318310, 30.099382, 21.381935>,  <43.476547, 30.248880, 22.004938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318310, 30.099382, 21.381935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.115635, 30.183653, 21.047539>,  <42.994030, 30.234215, 20.846901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.115635, 30.183653, 21.047539>,  <43.318310, 30.099382, 21.381935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115635, 30.183653, 21.047539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603045, 0.606373, 0.518314,
		0.616119, 0.766764, -0.180194,
		-0.506689, 0.210678, -0.835991,
		42.963627, 30.246857, 20.796741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425835, 30.667877, 21.061464>,  <43.318310, 30.099382, 21.381935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425835, 30.667877, 21.061464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054146, 30.527466, 21.015289>,  <42.831131, 30.443218, 20.987585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054146, 30.527466, 21.015289>,  <43.425835, 30.667877, 21.061464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054146, 30.527466, 21.015289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322370, 0.617377, 0.717582,
		-0.180623, 0.704006, -0.686841,
		-0.929222, -0.351029, -0.115438,
		42.775379, 30.422157, 20.980658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054459, 31.220152, 21.240257>,  <43.425835, 30.667877, 21.061464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054459, 31.220152, 21.240257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.798447, 30.913664, 21.263132>,  <42.644840, 30.729771, 21.276857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.798447, 30.913664, 21.263132>,  <43.054459, 31.220152, 21.240257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798447, 30.913664, 21.263132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452938, 0.436363, 0.777454,
		-0.620656, 0.471689, -0.626335,
		-0.640026, -0.766222, 0.057186,
		42.606438, 30.683798, 21.280289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468250, 31.565081, 21.312403>,  <43.054459, 31.220152, 21.240257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468250, 31.565081, 21.312403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421997, 31.186142, 21.431843>,  <42.394245, 30.958778, 21.503508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421997, 31.186142, 21.431843>,  <42.468250, 31.565081, 21.312403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421997, 31.186142, 21.431843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553459, 0.311077, 0.772603,
		-0.824811, -0.075928, -0.560287,
		-0.115630, -0.947347, 0.298602,
		42.387306, 30.901937, 21.521423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716312, 31.454746, 21.261377>,  <42.468250, 31.565081, 21.312403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716312, 31.454746, 21.261377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.879833, 31.206425, 21.528954>,  <41.977947, 31.057432, 21.689499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.879833, 31.206425, 21.528954>,  <41.716312, 31.454746, 21.261377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879833, 31.206425, 21.528954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605796, 0.363620, 0.707667,
		-0.682563, -0.694538, -0.227432,
		0.408803, -0.620804, 0.668941,
		42.002476, 31.020184, 21.729635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141876, 31.344023, 21.719019>,  <41.716312, 31.454746, 21.261377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141876, 31.344023, 21.719019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474842, 31.216904, 21.900606>,  <41.674622, 31.140633, 22.009560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474842, 31.216904, 21.900606>,  <41.141876, 31.344023, 21.719019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474842, 31.216904, 21.900606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408869, 0.200735, 0.890242,
		-0.374046, -0.926666, 0.037156,
		0.832415, -0.317799, 0.453969,
		41.724567, 31.121563, 22.036797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875252, 31.059824, 22.385889>,  <41.141876, 31.344023, 21.719019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875252, 31.059824, 22.385889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267258, 31.091227, 22.458994>,  <41.502460, 31.110067, 22.502857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267258, 31.091227, 22.458994>,  <40.875252, 31.059824, 22.385889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267258, 31.091227, 22.458994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197878, 0.291377, 0.935919,
		0.020221, -0.953382, 0.301089,
		0.980018, 0.078504, 0.182761,
		41.561264, 31.114779, 22.513823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987331, 30.717478, 23.040297>,  <40.875252, 31.059824, 22.385889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987331, 30.717478, 23.040297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309532, 30.949608, 22.992310>,  <41.502853, 31.088886, 22.963518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309532, 30.949608, 22.992310>,  <40.987331, 30.717478, 23.040297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309532, 30.949608, 22.992310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042331, 0.258272, 0.965145,
		0.591080, -0.772347, 0.232604,
		0.805501, 0.580324, -0.119965,
		41.551182, 31.123705, 22.956320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487858, 30.529541, 23.515612>,  <40.987331, 30.717478, 23.040297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487858, 30.529541, 23.515612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.594711, 30.903093, 23.420527>,  <41.658821, 31.127224, 23.363476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.594711, 30.903093, 23.420527>,  <41.487858, 30.529541, 23.515612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594711, 30.903093, 23.420527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057836, 0.230698, 0.971305,
		0.961923, -0.273213, 0.007614,
		0.267130, 0.933880, -0.237715,
		41.674850, 31.183258, 23.349213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116436, 30.706844, 23.903990>,  <41.487858, 30.529541, 23.515612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116436, 30.706844, 23.903990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.930519, 31.051353, 23.821840>,  <41.818970, 31.258059, 23.772551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.930519, 31.051353, 23.821840>,  <42.116436, 30.706844, 23.903990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930519, 31.051353, 23.821840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076910, 0.270345, 0.959687,
		0.882075, 0.430256, -0.191894,
		-0.464789, 0.861274, -0.205374,
		41.791084, 31.309736, 23.760229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419456, 31.278696, 24.315989>,  <42.116436, 30.706844, 23.903990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419456, 31.278696, 24.315989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.052734, 31.406546, 24.220232>,  <41.832703, 31.483255, 24.162779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.052734, 31.406546, 24.220232>,  <42.419456, 31.278696, 24.315989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052734, 31.406546, 24.220232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188024, 0.183361, 0.964897,
		0.352298, 0.929634, -0.108010,
		-0.916806, 0.319622, -0.239391,
		41.777691, 31.502432, 24.148415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270176, 31.898191, 24.755711>,  <42.419456, 31.278696, 24.315989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270176, 31.898191, 24.755711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.913078, 31.749855, 24.653347>,  <41.698822, 31.660854, 24.591928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.913078, 31.749855, 24.653347>,  <42.270176, 31.898191, 24.755711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913078, 31.749855, 24.653347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329091, 0.148724, 0.932513,
		-0.307753, 0.916711, -0.254813,
		-0.892741, -0.370840, -0.255911,
		41.645256, 31.638603, 24.576574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793697, 32.277905, 25.112072>,  <42.270176, 31.898191, 24.755711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793697, 32.277905, 25.112072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581688, 31.956409, 25.003929>,  <41.454483, 31.763514, 24.939043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581688, 31.956409, 25.003929>,  <41.793697, 32.277905, 25.112072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581688, 31.956409, 25.003929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473027, 0.015618, 0.880909,
		-0.703793, 0.594785, -0.388466,
		-0.530019, -0.803733, -0.270357,
		41.422684, 31.715290, 24.922821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167866, 32.413185, 25.280939>,  <41.793697, 32.277905, 25.112072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167866, 32.413185, 25.280939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139874, 32.014660, 25.261103>,  <41.123077, 31.775545, 25.249201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139874, 32.014660, 25.261103>,  <41.167866, 32.413185, 25.280939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139874, 32.014660, 25.261103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535554, -0.004416, 0.844490,
		-0.841596, 0.085656, -0.533271,
		-0.069980, -0.996315, -0.049590,
		41.118881, 31.715765, 25.246225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487961, 32.241482, 25.455772>,  <41.167866, 32.413185, 25.280939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487961, 32.241482, 25.455772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695293, 31.905834, 25.521755>,  <40.819695, 31.704447, 25.561346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695293, 31.905834, 25.521755>,  <40.487961, 32.241482, 25.455772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695293, 31.905834, 25.521755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452592, -0.105505, 0.885454,
		-0.725596, -0.533620, -0.434465,
		0.518334, -0.839118, 0.164958,
		40.850792, 31.654099, 25.571243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048649, 31.778925, 25.759989>,  <40.487961, 32.241482, 25.455772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048649, 31.778925, 25.759989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.396412, 31.600056, 25.844046>,  <40.605072, 31.492735, 25.894480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.396412, 31.600056, 25.844046>,  <40.048649, 31.778925, 25.759989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396412, 31.600056, 25.844046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343911, -0.242321, 0.907197,
		-0.354753, -0.860998, -0.364464,
		0.869411, -0.447173, 0.210142,
		40.657234, 31.465904, 25.907089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900925, 31.123503, 26.081472>,  <40.048649, 31.778925, 25.759989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900925, 31.123503, 26.081472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275723, 31.202248, 26.196905>,  <40.500603, 31.249495, 26.266165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275723, 31.202248, 26.196905>,  <39.900925, 31.123503, 26.081472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275723, 31.202248, 26.196905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222745, -0.299683, 0.927672,
		0.269107, -0.933507, -0.236952,
		0.936998, 0.196863, 0.288580,
		40.556824, 31.261307, 26.283480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126732, 30.549881, 26.385475>,  <39.900925, 31.123503, 26.081472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126732, 30.549881, 26.385475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.366905, 30.838831, 26.522676>,  <40.511009, 31.012201, 26.604998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.366905, 30.838831, 26.522676>,  <40.126732, 30.549881, 26.385475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366905, 30.838831, 26.522676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398960, -0.101130, 0.911375,
		0.693044, -0.684065, 0.227477,
		0.600434, 0.722377, 0.343002,
		40.547035, 31.055544, 26.625578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203522, 30.414101, 27.093527>,  <40.126732, 30.549881, 26.385475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203522, 30.414101, 27.093527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381294, 30.772408, 27.096987>,  <40.487957, 30.987392, 27.099062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381294, 30.772408, 27.096987>,  <40.203522, 30.414101, 27.093527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381294, 30.772408, 27.096987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306845, 0.143154, 0.940932,
		0.841620, -0.420837, 0.338485,
		0.444435, 0.895769, 0.008651,
		40.514626, 31.041138, 27.099583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570774, 30.408884, 27.744976>,  <40.203522, 30.414101, 27.093527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570774, 30.408884, 27.744976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506863, 30.785606, 27.626675>,  <40.468513, 31.011641, 27.555693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506863, 30.785606, 27.626675>,  <40.570774, 30.408884, 27.744976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506863, 30.785606, 27.626675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260060, 0.248861, 0.932972,
		0.952281, 0.225985, 0.205163,
		-0.159781, 0.941806, -0.295755,
		40.458927, 31.068148, 27.537949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990368, 30.881992, 28.234674>,  <40.570774, 30.408884, 27.744976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990368, 30.881992, 28.234674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698257, 31.089287, 28.056631>,  <40.522991, 31.213663, 27.949804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698257, 31.089287, 28.056631>,  <40.990368, 30.881992, 28.234674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698257, 31.089287, 28.056631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392696, 0.214694, 0.894257,
		0.558999, 0.827851, 0.046723,
		-0.730280, 0.518237, -0.445108,
		40.479172, 31.244759, 27.923100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.729736, 31.971056, 33.430424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360550, 31.995607, 33.278442>,  <43.139038, 32.010338, 33.187256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360550, 31.995607, 33.278442>,  <43.729736, 31.971056, 33.430424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360550, 31.995607, 33.278442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343384, 0.314538, 0.884959,
		0.173827, 0.947258, -0.269232,
		-0.922969, 0.061380, -0.379949,
		43.083660, 32.014023, 33.164459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529373, 32.469566, 33.810986>,  <43.729736, 31.971056, 33.430424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529373, 32.469566, 33.810986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187340, 32.355545, 33.637745>,  <42.982121, 32.287132, 33.533802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187340, 32.355545, 33.637745>,  <43.529373, 32.469566, 33.810986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187340, 32.355545, 33.637745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518339, 0.449864, 0.727288,
		-0.012480, 0.846385, -0.532426,
		-0.855084, -0.285053, -0.433100,
		42.930813, 32.270031, 33.507816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134823, 33.116680, 33.717552>,  <43.529373, 32.469566, 33.810986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134823, 33.116680, 33.717552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900978, 32.794247, 33.754326>,  <42.760670, 32.600784, 33.776390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900978, 32.794247, 33.754326>,  <43.134823, 33.116680, 33.717552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900978, 32.794247, 33.754326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473292, 0.430881, 0.768334,
		-0.658954, 0.405670, -0.633413,
		-0.584615, -0.806085, 0.091930,
		42.725594, 32.552422, 33.781906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418156, 33.344536, 33.727448>,  <43.134823, 33.116680, 33.717552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418156, 33.344536, 33.727448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426521, 32.985634, 33.903858>,  <42.431541, 32.770294, 34.009705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426521, 32.985634, 33.903858>,  <42.418156, 33.344536, 33.727448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426521, 32.985634, 33.903858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637237, 0.327945, 0.697410,
		-0.770384, -0.295618, -0.564905,
		0.020909, -0.897252, 0.441023,
		42.432793, 32.716457, 34.036163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848583, 33.349751, 34.101131>,  <42.418156, 33.344536, 33.727448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848583, 33.349751, 34.101131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007416, 33.041821, 34.301010>,  <42.102715, 32.857063, 34.420937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007416, 33.041821, 34.301010>,  <41.848583, 33.349751, 34.101131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007416, 33.041821, 34.301010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645612, 0.152683, 0.748247,
		-0.652314, -0.619724, -0.436381,
		0.397079, -0.769825, 0.499699,
		42.126541, 32.810875, 34.450920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344891, 33.182499, 34.565636>,  <41.848583, 33.349751, 34.101131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344891, 33.182499, 34.565636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.666115, 33.003193, 34.722683>,  <41.858849, 32.895611, 34.816910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.666115, 33.003193, 34.722683>,  <41.344891, 33.182499, 34.565636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666115, 33.003193, 34.722683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378798, 0.124595, 0.917054,
		-0.460000, -0.885176, -0.069743,
		0.803064, -0.448263, 0.392617,
		41.907036, 32.868713, 34.840469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045925, 32.774097, 35.081230>,  <41.344891, 33.182499, 34.565636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045925, 32.774097, 35.081230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.434429, 32.749718, 35.173256>,  <41.667534, 32.735088, 35.228474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.434429, 32.749718, 35.173256>,  <41.045925, 32.774097, 35.081230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434429, 32.749718, 35.173256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222853, 0.106475, 0.969020,
		-0.083558, -0.992445, 0.089833,
		0.971264, -0.060950, 0.230066,
		41.725807, 32.731434, 35.242275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052784, 32.339245, 35.673054>,  <41.045925, 32.774097, 35.081230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052784, 32.339245, 35.673054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.396164, 32.542717, 35.699329>,  <41.602192, 32.664799, 35.715096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.396164, 32.542717, 35.699329>,  <41.052784, 32.339245, 35.673054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396164, 32.542717, 35.699329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130009, 0.091912, 0.987244,
		0.496155, -0.856035, 0.145035,
		0.858445, 0.508681, 0.065689,
		41.653698, 32.695320, 35.719036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464199, 32.135681, 36.250622>,  <41.052784, 32.339245, 35.673054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464199, 32.135681, 36.250622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.593548, 32.505432, 36.169670>,  <41.671158, 32.727283, 36.121101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.593548, 32.505432, 36.169670>,  <41.464199, 32.135681, 36.250622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593548, 32.505432, 36.169670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284660, 0.298989, 0.910810,
		0.902441, -0.236921, 0.359818,
		0.323372, 0.924378, -0.202378,
		41.690559, 32.782745, 36.108955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734306, 32.338276, 36.945992>,  <41.464199, 32.135681, 36.250622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734306, 32.338276, 36.945992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698357, 32.667717, 36.721992>,  <41.676788, 32.865383, 36.587593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698357, 32.667717, 36.721992>,  <41.734306, 32.338276, 36.945992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698357, 32.667717, 36.721992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130593, 0.547676, 0.826436,
		0.987354, 0.147407, 0.058335,
		-0.089874, 0.823603, -0.560000,
		41.671394, 32.914799, 36.553993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996880, 32.757523, 37.364880>,  <41.734306, 32.338276, 36.945992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996880, 32.757523, 37.364880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789433, 33.007847, 37.131847>,  <41.664963, 33.158043, 36.992027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789433, 33.007847, 37.131847>,  <41.996880, 32.757523, 37.364880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789433, 33.007847, 37.131847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306682, 0.499873, 0.809983,
		0.798110, 0.598739, -0.067319,
		-0.518619, 0.625810, -0.582577,
		41.633846, 33.195591, 36.957073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020523, 33.420986, 37.736397>,  <41.996880, 32.757523, 37.364880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020523, 33.420986, 37.736397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701050, 33.419693, 37.495701>,  <41.509365, 33.418915, 37.351284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701050, 33.419693, 37.495701>,  <42.020523, 33.420986, 37.736397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701050, 33.419693, 37.495701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483295, 0.599216, 0.638252,
		0.358508, 0.800581, -0.480148,
		-0.798685, -0.003235, -0.601741,
		41.461445, 33.418724, 37.315178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760517, 34.155499, 37.585491>,  <42.020523, 33.420986, 37.736397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760517, 34.155499, 37.585491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.458279, 33.893784, 37.572979>,  <41.276936, 33.736755, 37.565472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.458279, 33.893784, 37.572979>,  <41.760517, 34.155499, 37.585491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458279, 33.893784, 37.572979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491943, 0.535284, 0.686631,
		-0.432511, 0.534205, -0.726333,
		-0.755596, -0.654290, -0.031282,
		41.231598, 33.697498, 37.563595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184277, 34.454636, 37.315067>,  <41.760517, 34.155499, 37.585491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184277, 34.454636, 37.315067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954494, 34.694759, 37.537643>,  <40.816624, 34.838833, 37.671188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954494, 34.694759, 37.537643>,  <41.184277, 34.454636, 37.315067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954494, 34.694759, 37.537643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031887, 0.662873, -0.748053,
		-0.817915, -0.447465, -0.361647,
		-0.574454, 0.600312, 0.556442,
		40.782158, 34.874851, 37.704575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500702, 34.579845, 37.033195>,  <41.184277, 34.454636, 37.315067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500702, 34.579845, 37.033195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616978, 34.903751, 37.237072>,  <40.686745, 35.098095, 37.359398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616978, 34.903751, 37.237072>,  <40.500702, 34.579845, 37.033195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616978, 34.903751, 37.237072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112542, 0.557929, -0.822222,
		-0.950175, 0.181652, 0.253317,
		0.290691, 0.809764, 0.509687,
		40.704185, 35.146679, 37.389977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020660, 35.116463, 36.877037>,  <40.500702, 34.579845, 37.033195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020660, 35.116463, 36.877037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371204, 35.290638, 36.959381>,  <40.581532, 35.395142, 37.008789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371204, 35.290638, 36.959381>,  <40.020660, 35.116463, 36.877037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371204, 35.290638, 36.959381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086730, 0.563092, -0.821830,
		-0.473776, 0.702368, 0.531240,
		0.876365, 0.435437, 0.205863,
		40.634113, 35.421268, 37.021141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936520, 35.842216, 36.772255>,  <40.020660, 35.116463, 36.877037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936520, 35.842216, 36.772255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333054, 35.794296, 36.750740>,  <40.570976, 35.765545, 36.737831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333054, 35.794296, 36.750740>,  <39.936520, 35.842216, 36.772255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333054, 35.794296, 36.750740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044659, 0.692700, -0.719842,
		0.123496, 0.711206, 0.692051,
		0.991340, -0.119804, -0.053784,
		40.630455, 35.758354, 36.734604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174648, 36.468472, 36.670998>,  <39.936520, 35.842216, 36.772255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174648, 36.468472, 36.670998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.511044, 36.277843, 36.568527>,  <40.712879, 36.163467, 36.507046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.511044, 36.277843, 36.568527>,  <40.174648, 36.468472, 36.670998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511044, 36.277843, 36.568527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019601, 0.500000, -0.865803,
		0.540702, 0.723107, 0.429834,
		0.840986, -0.476566, -0.256177,
		40.763340, 36.134872, 36.491673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614422, 37.020210, 36.512993>,  <40.174648, 36.468472, 36.670998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614422, 37.020210, 36.512993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.724140, 36.680820, 36.331951>,  <40.789970, 36.477188, 36.223328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.724140, 36.680820, 36.331951>,  <40.614422, 37.020210, 36.512993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724140, 36.680820, 36.331951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080995, 0.448599, -0.890055,
		0.958227, 0.280801, 0.054329,
		0.274300, -0.848475, -0.452603,
		40.806431, 36.426277, 36.196171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082993, 37.252861, 35.987152>,  <40.614422, 37.020210, 36.512993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082993, 37.252861, 35.987152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998444, 36.875912, 35.883411>,  <40.947712, 36.649742, 35.821167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998444, 36.875912, 35.883411>,  <41.082993, 37.252861, 35.987152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998444, 36.875912, 35.883411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029812, 0.271438, -0.961994,
		0.976951, -0.195609, -0.085469,
		-0.211374, -0.942369, -0.259350,
		40.935032, 36.593201, 35.805607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505627, 37.124218, 35.440510>,  <41.082993, 37.252861, 35.987152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505627, 37.124218, 35.440510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222923, 36.844543, 35.397350>,  <41.053303, 36.676739, 35.371456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222923, 36.844543, 35.397350>,  <41.505627, 37.124218, 35.440510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222923, 36.844543, 35.397350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010469, 0.162832, -0.986598,
		0.707380, -0.696154, -0.122402,
		-0.706755, -0.699182, -0.107896,
		41.010895, 36.634789, 35.364983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785152, 36.586147, 35.036083>,  <41.505627, 37.124218, 35.440510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785152, 36.586147, 35.036083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.392639, 36.523651, 34.991066>,  <41.157131, 36.486153, 34.964054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.392639, 36.523651, 34.991066>,  <41.785152, 36.586147, 35.036083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392639, 36.523651, 34.991066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127838, -0.091543, -0.987561,
		0.143993, -0.983468, 0.109803,
		-0.981287, -0.156239, -0.112543,
		41.098251, 36.476780, 34.957302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677486, 35.901596, 34.752773>,  <41.785152, 36.586147, 35.036083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677486, 35.901596, 34.752773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350811, 36.121658, 34.683094>,  <41.154804, 36.253696, 34.641289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350811, 36.121658, 34.683094>,  <41.677486, 35.901596, 34.752773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350811, 36.121658, 34.683094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068701, -0.207017, -0.975922,
		-0.572973, -0.808993, 0.131272,
		-0.816689, 0.550158, -0.174194,
		41.105804, 36.286705, 34.630836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314056, 35.550282, 34.184177>,  <41.677486, 35.901596, 34.752773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314056, 35.550282, 34.184177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143356, 35.910694, 34.153126>,  <41.040936, 36.126942, 34.134495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143356, 35.910694, 34.153126>,  <41.314056, 35.550282, 34.184177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143356, 35.910694, 34.153126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093798, -0.129477, -0.987136,
		-0.899493, -0.413978, 0.139769,
		-0.426750, 0.901032, -0.077633,
		41.015331, 36.181004, 34.129837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839661, 35.400810, 33.691788>,  <41.314056, 35.550282, 34.184177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839661, 35.400810, 33.691788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899147, 35.795822, 33.712444>,  <40.934837, 36.032829, 33.724838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899147, 35.795822, 33.712444>,  <40.839661, 35.400810, 33.691788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899147, 35.795822, 33.712444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070124, 0.062622, -0.995571,
		-0.986390, 0.144437, 0.078562,
		0.148717, 0.987530, 0.051641,
		40.943764, 36.092083, 33.727936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431038, 35.617134, 33.149055>,  <40.839661, 35.400810, 33.691788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431038, 35.617134, 33.149055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669983, 35.925438, 33.237679>,  <40.813351, 36.110420, 33.290852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669983, 35.925438, 33.237679>,  <40.431038, 35.617134, 33.149055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669983, 35.925438, 33.237679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207662, 0.118184, -0.971035,
		-0.774616, 0.626073, -0.089458,
		0.597367, 0.770756, 0.221559,
		40.849194, 36.156666, 33.304146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236698, 36.200134, 32.714844>,  <40.431038, 35.617134, 33.149055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236698, 36.200134, 32.714844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.618263, 36.248554, 32.824673>,  <40.847202, 36.277607, 32.890568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.618263, 36.248554, 32.824673>,  <40.236698, 36.200134, 32.714844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618263, 36.248554, 32.824673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235715, 0.263934, -0.935295,
		-0.185689, 0.956914, 0.223237,
		0.953917, 0.121054, 0.274568,
		40.904438, 36.284870, 32.907043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439827, 36.796009, 32.316536>,  <40.236698, 36.200134, 32.714844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439827, 36.796009, 32.316536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.773819, 36.599770, 32.416233>,  <40.974213, 36.482025, 32.476051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.773819, 36.599770, 32.416233>,  <40.439827, 36.796009, 32.316536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773819, 36.599770, 32.416233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307352, 0.040083, -0.950752,
		0.456447, 0.870463, 0.184255,
		0.834980, -0.490599, 0.249243,
		41.024311, 36.452591, 32.491005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426884, 37.559620, 32.152081>,  <40.439827, 36.796009, 32.316536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426884, 37.559620, 32.152081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065517, 37.663170, 32.015366>,  <39.848698, 37.725300, 31.933336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065517, 37.663170, 32.015366>,  <40.426884, 37.559620, 32.152081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065517, 37.663170, 32.015366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305203, 0.171614, 0.936696,
		0.301141, 0.950544, -0.076030,
		-0.903419, 0.258873, -0.341788,
		39.794491, 37.740833, 31.912828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162769, 38.103485, 32.628418>,  <40.426884, 37.559620, 32.152081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162769, 38.103485, 32.628418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.830399, 37.974369, 32.447147>,  <39.630978, 37.896900, 32.338383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.830399, 37.974369, 32.447147>,  <40.162769, 38.103485, 32.628418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830399, 37.974369, 32.447147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527688, 0.199004, 0.825798,
		-0.176374, 0.925314, -0.335689,
		-0.830925, -0.322789, -0.453178,
		39.581120, 37.877533, 32.311195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610210, 38.635799, 32.826355>,  <40.162769, 38.103485, 32.628418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610210, 38.635799, 32.826355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456383, 38.290684, 32.695084>,  <39.364086, 38.083614, 32.616322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456383, 38.290684, 32.695084>,  <39.610210, 38.635799, 32.826355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456383, 38.290684, 32.695084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491779, -0.109370, 0.863824,
		-0.781190, 0.493594, -0.382241,
		-0.384573, -0.862788, -0.328178,
		39.341011, 38.031849, 32.596630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952614, 38.637489, 33.022434>,  <39.610210, 38.635799, 32.826355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952614, 38.637489, 33.022434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974186, 38.244141, 32.953072>,  <38.987129, 38.008133, 32.911453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974186, 38.244141, 32.953072>,  <38.952614, 38.637489, 33.022434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974186, 38.244141, 32.953072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595394, -0.171078, 0.785008,
		-0.801622, 0.060912, -0.594720,
		0.053927, -0.983373, -0.173406,
		38.990364, 37.949127, 32.901051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195450, 38.408932, 32.938328>,  <38.952614, 38.637489, 33.022434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195450, 38.408932, 32.938328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437836, 38.107491, 33.040215>,  <38.583267, 37.926624, 33.101345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437836, 38.107491, 33.040215>,  <38.195450, 38.408932, 32.938328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437836, 38.107491, 33.040215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469890, -0.080731, 0.879026,
		-0.641877, -0.652348, -0.403033,
		0.605968, -0.753608, 0.254712,
		38.619625, 37.881409, 33.116627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752586, 37.986851, 33.225822>,  <38.195450, 38.408932, 32.938328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752586, 37.986851, 33.225822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.088791, 37.813366, 33.355709>,  <38.290512, 37.709274, 33.433643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.088791, 37.813366, 33.355709>,  <37.752586, 37.986851, 33.225822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088791, 37.813366, 33.355709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386251, -0.059365, 0.920481,
		-0.379946, -0.899094, -0.217418,
		0.840506, -0.433712, 0.324720,
		38.340942, 37.683254, 33.453125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483673, 37.394814, 33.631847>,  <37.752586, 37.986851, 33.225822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483673, 37.394814, 33.631847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859287, 37.474026, 33.744267>,  <38.084656, 37.521553, 33.811718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859287, 37.474026, 33.744267>,  <37.483673, 37.394814, 33.631847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859287, 37.474026, 33.744267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248717, -0.173097, 0.952983,
		0.237368, -0.964791, -0.113291,
		0.939040, 0.198030, 0.281048,
		38.140999, 37.533436, 33.828583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771717, 36.794060, 33.884109>,  <37.483673, 37.394814, 33.631847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771717, 36.794060, 33.884109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977516, 37.093140, 34.052036>,  <38.100994, 37.272587, 34.152794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977516, 37.093140, 34.052036>,  <37.771717, 36.794060, 33.884109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977516, 37.093140, 34.052036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349217, -0.264447, 0.898952,
		0.783162, -0.609114, 0.125051,
		0.514495, 0.747695, 0.419818,
		38.131866, 37.317448, 34.177982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881775, 36.549839, 34.531719>,  <37.771717, 36.794060, 33.884109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881775, 36.549839, 34.531719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.936394, 36.943981, 34.572567>,  <37.969166, 37.180466, 34.597076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.936394, 36.943981, 34.572567>,  <37.881775, 36.549839, 34.531719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936394, 36.943981, 34.572567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288932, -0.058988, 0.955530,
		0.947562, -0.159980, 0.276647,
		0.136546, 0.985356, 0.102118,
		37.977356, 37.239590, 34.603203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115456, 36.658833, 35.211720>,  <37.881775, 36.549839, 34.531719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115456, 36.658833, 35.211720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986813, 37.023785, 35.110420>,  <37.909626, 37.242756, 35.049641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986813, 37.023785, 35.110420>,  <38.115456, 36.658833, 35.211720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986813, 37.023785, 35.110420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557542, 0.033702, 0.829464,
		0.765320, 0.407958, 0.497851,
		-0.321608, 0.912378, -0.253247,
		37.890331, 37.297497, 35.034447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197636, 37.108009, 35.776634>,  <38.115456, 36.658833, 35.211720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197636, 37.108009, 35.776634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921707, 37.310986, 35.570084>,  <37.756149, 37.432774, 35.446152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921707, 37.310986, 35.570084>,  <38.197636, 37.108009, 35.776634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921707, 37.310986, 35.570084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640722, -0.095817, 0.761770,
		0.337079, 0.856340, 0.391228,
		-0.689821, 0.507445, -0.516379,
		37.714760, 37.463219, 35.415169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895935, 37.668182, 36.231228>,  <38.197636, 37.108009, 35.776634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895935, 37.668182, 36.231228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631290, 37.591038, 35.941380>,  <37.472504, 37.544750, 35.767471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631290, 37.591038, 35.941380>,  <37.895935, 37.668182, 36.231228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631290, 37.591038, 35.941380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602317, -0.438918, 0.666758,
		-0.446643, 0.877585, 0.174226,
		-0.661607, -0.192864, -0.724624,
		37.432808, 37.533180, 35.723991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.639126, 38.090977, 28.642445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296154, 37.949741, 28.492704>,  <41.090370, 37.864998, 28.402861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296154, 37.949741, 28.492704>,  <41.639126, 38.090977, 28.642445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296154, 37.949741, 28.492704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501809, 0.412512, 0.760278,
		-0.114024, 0.839738, -0.530885,
		-0.857430, -0.353092, -0.374352,
		41.038925, 37.843815, 28.380400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116318, 38.628044, 28.604225>,  <41.639126, 38.090977, 28.642445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116318, 38.628044, 28.604225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897987, 38.293621, 28.626425>,  <40.766991, 38.092968, 28.639744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897987, 38.293621, 28.626425>,  <41.116318, 38.628044, 28.604225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897987, 38.293621, 28.626425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483424, 0.368317, 0.794131,
		-0.684382, 0.406626, -0.605207,
		-0.545823, -0.836061, 0.055497,
		40.734241, 38.042805, 28.643074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431438, 38.818909, 28.704948>,  <41.116318, 38.628044, 28.604225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431438, 38.818909, 28.704948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447548, 38.446655, 28.850443>,  <40.457214, 38.223305, 28.937740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447548, 38.446655, 28.850443>,  <40.431438, 38.818909, 28.704948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447548, 38.446655, 28.850443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564317, 0.279229, 0.776902,
		-0.824575, -0.236552, -0.513925,
		0.040275, -0.930631, 0.363736,
		40.459629, 38.167465, 28.959564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851620, 38.658726, 29.201593>,  <40.431438, 38.818909, 28.704948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851620, 38.658726, 29.201593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101147, 38.365971, 29.311279>,  <40.250862, 38.190319, 29.377090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101147, 38.365971, 29.311279>,  <39.851620, 38.658726, 29.201593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101147, 38.365971, 29.311279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355515, 0.046732, 0.933502,
		-0.696030, -0.679825, -0.231044,
		0.623820, -0.731884, 0.274215,
		40.288292, 38.146404, 29.393543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421112, 38.241375, 29.594517>,  <39.851620, 38.658726, 29.201593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421112, 38.241375, 29.594517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786362, 38.111244, 29.692791>,  <40.005512, 38.033165, 29.751755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786362, 38.111244, 29.692791>,  <39.421112, 38.241375, 29.594517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786362, 38.111244, 29.692791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330647, -0.238473, 0.913128,
		-0.238473, -0.915038, -0.325324,
		-0.913128, 0.325324, -0.245686,
		40.060299, 38.013645, 29.766497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231457, 37.575806, 29.923960>,  <39.421112, 38.241375, 29.594517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231457, 37.575806, 29.923960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583397, 37.724438, 30.042480>,  <39.794559, 37.813618, 30.113594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583397, 37.724438, 30.042480>,  <39.231457, 37.575806, 29.923960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583397, 37.724438, 30.042480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280188, -0.098029, 0.954927,
		0.383881, -0.923210, 0.017863,
		0.879846, 0.371583, 0.296304,
		39.847351, 37.835911, 30.131372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437462, 37.084908, 30.448338>,  <39.231457, 37.575806, 29.923960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437462, 37.084908, 30.448338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663788, 37.406921, 30.519634>,  <39.799583, 37.600132, 30.562412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663788, 37.406921, 30.519634>,  <39.437462, 37.084908, 30.448338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663788, 37.406921, 30.519634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126923, -0.128561, 0.983546,
		0.814707, -0.579125, 0.029437,
		0.565812, 0.805038, 0.178244,
		39.833530, 37.648434, 30.573107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002979, 36.905457, 30.960159>,  <39.437462, 37.084908, 30.448338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002979, 36.905457, 30.960159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940742, 37.299683, 30.986830>,  <39.903400, 37.536221, 31.002832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940742, 37.299683, 30.986830>,  <40.002979, 36.905457, 30.960159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940742, 37.299683, 30.986830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261490, -0.106181, 0.959348,
		0.952583, 0.131828, 0.274238,
		-0.155587, 0.985569, 0.066675,
		39.894066, 37.595352, 31.006832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339466, 37.102219, 31.601830>,  <40.002979, 36.905457, 30.960159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339466, 37.102219, 31.601830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073711, 37.392155, 31.528948>,  <39.914257, 37.566116, 31.485218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073711, 37.392155, 31.528948>,  <40.339466, 37.102219, 31.601830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073711, 37.392155, 31.528948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272190, -0.007613, 0.962214,
		0.696063, 0.688876, 0.202352,
		-0.664386, 0.724839, -0.182206,
		39.874397, 37.609608, 31.474285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000957, 37.014542, 31.770716>,  <40.339466, 37.102219, 31.601830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000957, 37.014542, 31.770716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205154, 36.714970, 31.939714>,  <41.327671, 36.535225, 32.041115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205154, 36.714970, 31.939714>,  <41.000957, 37.014542, 31.770716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205154, 36.714970, 31.939714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239423, -0.348112, -0.906363,
		0.825880, 0.563844, 0.001604,
		0.510489, -0.748931, 0.422496,
		41.358303, 36.490292, 32.066463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745121, 36.920223, 31.440130>,  <41.000957, 37.014542, 31.770716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745121, 36.920223, 31.440130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633720, 36.563759, 31.583387>,  <41.566879, 36.349880, 31.669342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633720, 36.563759, 31.583387>,  <41.745121, 36.920223, 31.440130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633720, 36.563759, 31.583387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346072, -0.440964, -0.828121,
		0.895918, -0.106692, 0.431216,
		-0.278505, -0.891161, 0.358145,
		41.550167, 36.296410, 31.690830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158524, 36.477547, 31.116093>,  <41.745121, 36.920223, 31.440130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158524, 36.477547, 31.116093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871807, 36.232944, 31.250116>,  <41.699776, 36.086182, 31.330530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871807, 36.232944, 31.250116>,  <42.158524, 36.477547, 31.116093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871807, 36.232944, 31.250116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286654, -0.696463, -0.657852,
		0.635638, -0.375498, 0.674511,
		-0.716794, -0.611507, 0.335060,
		41.656769, 36.049492, 31.350634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446476, 35.786530, 31.274055>,  <42.158524, 36.477547, 31.116093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446476, 35.786530, 31.274055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056576, 35.731731, 31.203520>,  <41.822636, 35.698853, 31.161198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056576, 35.731731, 31.203520>,  <42.446476, 35.786530, 31.274055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056576, 35.731731, 31.203520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218488, -0.748221, -0.626441,
		-0.046118, -0.649151, 0.759261,
		-0.974749, -0.136999, -0.176338,
		41.764153, 35.690632, 31.150618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254601, 35.010933, 31.335110>,  <42.446476, 35.786530, 31.274055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254601, 35.010933, 31.335110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997040, 35.207909, 31.100882>,  <41.842503, 35.326092, 30.960344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997040, 35.207909, 31.100882>,  <42.254601, 35.010933, 31.335110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997040, 35.207909, 31.100882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181030, -0.645559, -0.741944,
		-0.743382, -0.583747, 0.326533,
		-0.643904, 0.492436, -0.585572,
		41.803867, 35.355640, 30.925209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969894, 34.505272, 30.895597>,  <42.254601, 35.010933, 31.335110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969894, 34.505272, 30.895597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856186, 34.840553, 30.709435>,  <41.787960, 35.041721, 30.597736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856186, 34.840553, 30.709435>,  <41.969894, 34.505272, 30.895597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856186, 34.840553, 30.709435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297547, -0.384335, -0.873929,
		-0.911404, -0.386910, -0.140152,
		-0.284267, 0.838205, -0.465408,
		41.770905, 35.092014, 30.569813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653263, 34.295723, 30.312691>,  <41.969894, 34.505272, 30.895597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653263, 34.295723, 30.312691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745007, 34.678288, 30.240387>,  <41.800053, 34.907825, 30.197004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745007, 34.678288, 30.240387>,  <41.653263, 34.295723, 30.312691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745007, 34.678288, 30.240387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248061, -0.237017, -0.939302,
		-0.941201, 0.170598, -0.291611,
		0.229360, 0.956409, -0.180762,
		41.813816, 34.965210, 30.186159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323364, 34.467480, 29.634878>,  <41.653263, 34.295723, 30.312691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323364, 34.467480, 29.634878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625126, 34.726063, 29.680428>,  <41.806183, 34.881214, 29.707756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625126, 34.726063, 29.680428>,  <41.323364, 34.467480, 29.634878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625126, 34.726063, 29.680428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270699, -0.148355, -0.951164,
		-0.597994, 0.748387, -0.286915,
		0.754404, 0.646458, 0.113872,
		41.851448, 34.919998, 29.714590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315380, 34.945332, 29.030127>,  <41.323364, 34.467480, 29.634878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315380, 34.945332, 29.030127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681149, 34.930668, 29.191370>,  <41.900608, 34.921871, 29.288116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681149, 34.930668, 29.191370>,  <41.315380, 34.945332, 29.030127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681149, 34.930668, 29.191370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398584, -0.091937, -0.912512,
		0.070512, 0.995090, -0.069457,
		0.914417, -0.036659, 0.403109,
		41.955475, 34.919670, 29.312304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660759, 35.298370, 28.513212>,  <41.315380, 34.945332, 29.030127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660759, 35.298370, 28.513212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923374, 35.087936, 28.729431>,  <42.080944, 34.961678, 28.859163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923374, 35.087936, 28.729431>,  <41.660759, 35.298370, 28.513212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923374, 35.087936, 28.729431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500314, -0.232573, -0.834024,
		0.564481, 0.818015, 0.110512,
		0.656542, -0.526082, 0.540547,
		42.120338, 34.930111, 28.891596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314152, 35.529842, 28.271746>,  <41.660759, 35.298370, 28.513212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314152, 35.529842, 28.271746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374729, 35.170578, 28.436846>,  <42.411076, 34.955017, 28.535906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374729, 35.170578, 28.436846>,  <42.314152, 35.529842, 28.271746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374729, 35.170578, 28.436846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675406, -0.210862, -0.706657,
		0.721728, 0.385794, 0.574692,
		0.151444, -0.898165, 0.412753,
		42.420162, 34.901127, 28.560671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995827, 35.353405, 28.101736>,  <42.314152, 35.529842, 28.271746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995827, 35.353405, 28.101736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863590, 34.986504, 28.190605>,  <42.784248, 34.766365, 28.243927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863590, 34.986504, 28.190605>,  <42.995827, 35.353405, 28.101736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863590, 34.986504, 28.190605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682677, -0.394958, -0.614785,
		0.651662, -0.051568, 0.756755,
		-0.330590, -0.917251, 0.222175,
		42.764412, 34.711327, 28.257257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595261, 34.943752, 28.185312>,  <42.995827, 35.353405, 28.101736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595261, 34.943752, 28.185312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312065, 34.665829, 28.134737>,  <43.142147, 34.499073, 28.104391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312065, 34.665829, 28.134737>,  <43.595261, 34.943752, 28.185312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312065, 34.665829, 28.134737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622950, -0.530080, -0.575282,
		0.332689, -0.486059, 0.808124,
		-0.707991, -0.694810, -0.126439,
		43.099667, 34.457386, 28.096806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897572, 34.433441, 28.048750>,  <43.595261, 34.943752, 28.185312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897572, 34.433441, 28.048750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557209, 34.264351, 27.924002>,  <43.352993, 34.162899, 27.849154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557209, 34.264351, 27.924002>,  <43.897572, 34.433441, 28.048750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557209, 34.264351, 27.924002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482298, -0.393365, -0.782721,
		0.208195, -0.816437, 0.538595,
		-0.850907, -0.422722, -0.311869,
		43.301937, 34.137535, 27.830441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.194191, 32.495327, 26.033991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488350, 32.733974, 26.162512>,  <38.664845, 32.877163, 26.239624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488350, 32.733974, 26.162512>,  <38.194191, 32.495327, 26.033991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488350, 32.733974, 26.162512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447499, 0.071522, 0.891420,
		0.508861, -0.799328, 0.319585,
		0.735394, 0.596623, 0.321304,
		38.708969, 32.912960, 26.258904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215294, 32.325993, 26.718328>,  <38.194191, 32.495327, 26.033991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215294, 32.325993, 26.718328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441933, 32.655022, 26.737700>,  <38.577915, 32.852440, 26.749323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441933, 32.655022, 26.737700>,  <38.215294, 32.325993, 26.718328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441933, 32.655022, 26.737700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389515, 0.215584, 0.895434,
		0.726117, -0.526215, 0.442552,
		0.566598, 0.822570, 0.048430,
		38.611912, 32.901794, 26.752228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671402, 32.274342, 27.319628>,  <38.215294, 32.325993, 26.718328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671402, 32.274342, 27.319628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605179, 32.660183, 27.237518>,  <38.565445, 32.891685, 27.188253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605179, 32.660183, 27.237518>,  <38.671402, 32.274342, 27.319628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605179, 32.660183, 27.237518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294087, 0.150387, 0.943873,
		0.941331, 0.216633, 0.258778,
		-0.165558, 0.964601, -0.205272,
		38.555511, 32.949562, 27.175936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937641, 32.663040, 27.931864>,  <38.671402, 32.274342, 27.319628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937641, 32.663040, 27.931864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711197, 32.925129, 27.731779>,  <38.575333, 33.082382, 27.611729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711197, 32.925129, 27.731779>,  <38.937641, 32.663040, 27.931864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711197, 32.925129, 27.731779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351483, 0.357023, 0.865445,
		0.745643, 0.665749, 0.028186,
		-0.566106, 0.655220, -0.500211,
		38.541367, 33.121696, 27.581717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079758, 33.407959, 28.232254>,  <38.937641, 32.663040, 27.931864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079758, 33.407959, 28.232254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720165, 33.406437, 28.057068>,  <38.504410, 33.405525, 27.951956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720165, 33.406437, 28.057068>,  <39.079758, 33.407959, 28.232254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720165, 33.406437, 28.057068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406834, 0.377628, 0.831795,
		0.162223, 0.925950, -0.341030,
		-0.898983, -0.003806, -0.437967,
		38.450470, 33.405296, 27.925678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822727, 33.967316, 28.554951>,  <39.079758, 33.407959, 28.232254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822727, 33.967316, 28.554951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490974, 33.820744, 28.386259>,  <38.291924, 33.732800, 28.285044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490974, 33.820744, 28.386259>,  <38.822727, 33.967316, 28.554951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490974, 33.820744, 28.386259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543389, 0.353663, 0.761348,
		-0.129835, 0.860609, -0.492437,
		-0.829380, -0.366434, -0.421728,
		38.242161, 33.710812, 28.259741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319019, 34.472313, 28.585913>,  <38.822727, 33.967316, 28.554951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319019, 34.472313, 28.585913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135731, 34.117718, 28.560099>,  <38.025757, 33.904961, 28.544609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135731, 34.117718, 28.560099>,  <38.319019, 34.472313, 28.585913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135731, 34.117718, 28.560099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589696, 0.248879, 0.768322,
		-0.665047, 0.390122, -0.636802,
		-0.458226, -0.886490, -0.064537,
		37.998264, 33.851772, 28.540737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617687, 34.633610, 28.679159>,  <38.319019, 34.472313, 28.585913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617687, 34.633610, 28.679159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699059, 34.250175, 28.758896>,  <37.747883, 34.020115, 28.806738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699059, 34.250175, 28.758896>,  <37.617687, 34.633610, 28.679159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699059, 34.250175, 28.758896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451606, 0.088783, 0.887789,
		-0.868717, -0.270625, -0.414841,
		0.203427, -0.958582, 0.199343,
		37.760086, 33.962601, 28.818699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013962, 34.355728, 29.065914>,  <37.617687, 34.633610, 28.679159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013962, 34.355728, 29.065914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301174, 34.096355, 29.167078>,  <37.473503, 33.940731, 29.227776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301174, 34.096355, 29.167078>,  <37.013962, 34.355728, 29.065914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301174, 34.096355, 29.167078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394957, -0.080402, 0.915174,
		-0.573095, -0.757014, -0.313834,
		0.718033, -0.648433, 0.252910,
		37.516582, 33.901825, 29.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611858, 33.845619, 29.466835>,  <37.013962, 34.355728, 29.065914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611858, 33.845619, 29.466835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.998955, 33.779083, 29.542534>,  <37.231213, 33.739162, 29.587954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.998955, 33.779083, 29.542534>,  <36.611858, 33.845619, 29.466835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998955, 33.779083, 29.542534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229334, -0.270430, 0.935026,
		-0.104355, -0.948261, -0.299853,
		0.967737, -0.166341, 0.189248,
		37.289276, 33.729179, 29.599308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672775, 33.103374, 29.662188>,  <36.611858, 33.845619, 29.466835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672775, 33.103374, 29.662188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.980896, 33.293427, 29.832314>,  <37.165768, 33.407455, 29.934389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.980896, 33.293427, 29.832314>,  <36.672775, 33.103374, 29.662188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980896, 33.293427, 29.832314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139273, -0.525516, 0.839306,
		0.622287, -0.705753, -0.338633,
		0.770300, 0.475127, 0.425314,
		37.211987, 33.435963, 29.959908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922283, 32.580437, 30.048946>,  <36.672775, 33.103374, 29.662188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922283, 32.580437, 30.048946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117928, 32.893703, 30.202526>,  <37.235313, 33.081665, 30.294674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117928, 32.893703, 30.202526>,  <36.922283, 32.580437, 30.048946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117928, 32.893703, 30.202526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064066, -0.406747, 0.911292,
		0.869867, -0.470318, -0.148769,
		0.489108, 0.783172, 0.383947,
		37.264660, 33.128654, 30.317711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389236, 32.343052, 30.555378>,  <36.922283, 32.580437, 30.048946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389236, 32.343052, 30.555378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312408, 32.727352, 30.635437>,  <37.266312, 32.957932, 30.683474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312408, 32.727352, 30.635437>,  <37.389236, 32.343052, 30.555378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312408, 32.727352, 30.635437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113998, -0.224409, 0.967804,
		0.974737, 0.163072, 0.152627,
		-0.192073, 0.960754, 0.200150,
		37.254787, 33.015579, 30.695482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740250, 32.481052, 31.165413>,  <37.389236, 32.343052, 30.555378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740250, 32.481052, 31.165413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455048, 32.761471, 31.160381>,  <37.283928, 32.929722, 31.157362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455048, 32.761471, 31.160381>,  <37.740250, 32.481052, 31.165413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455048, 32.761471, 31.160381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208802, -0.195165, 0.958286,
		0.669352, 0.685885, 0.285534,
		-0.713001, 0.701051, -0.012580,
		37.241146, 32.971786, 31.156607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475700, 32.557838, 31.476660>,  <37.740250, 32.481052, 31.165413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475700, 32.557838, 31.476660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738926, 32.260292, 31.523323>,  <38.896862, 32.081764, 31.551321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738926, 32.260292, 31.523323>,  <38.475700, 32.557838, 31.476660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738926, 32.260292, 31.523323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115353, -0.053505, -0.991883,
		0.744070, 0.666183, 0.050597,
		0.658068, -0.743867, 0.116658,
		38.936348, 32.037132, 31.558321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941570, 32.667839, 30.881227>,  <38.475700, 32.557838, 31.476660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941570, 32.667839, 30.881227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065582, 32.312191, 31.015900>,  <39.139992, 32.098804, 31.096703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065582, 32.312191, 31.015900>,  <38.941570, 32.667839, 30.881227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065582, 32.312191, 31.015900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306008, -0.241962, -0.920768,
		0.900133, 0.388495, 0.197060,
		0.310032, -0.889115, 0.336681,
		39.158592, 32.045456, 31.116903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597622, 32.542725, 30.591333>,  <38.941570, 32.667839, 30.881227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597622, 32.542725, 30.591333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461407, 32.179436, 30.688639>,  <39.379677, 31.961464, 30.747023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461407, 32.179436, 30.688639>,  <39.597622, 32.542725, 30.591333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461407, 32.179436, 30.688639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336343, -0.359276, -0.870514,
		0.878015, -0.214619, 0.427818,
		-0.340534, -0.908218, 0.243264,
		39.359245, 31.906971, 30.761618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051365, 32.115166, 30.316589>,  <39.597622, 32.542725, 30.591333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051365, 32.115166, 30.316589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.743324, 31.865732, 30.370392>,  <39.558502, 31.716072, 30.402674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.743324, 31.865732, 30.370392>,  <40.051365, 32.115166, 30.316589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743324, 31.865732, 30.370392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061178, -0.282071, -0.957441,
		0.634987, -0.729094, 0.255371,
		-0.770097, -0.623585, 0.134506,
		39.512295, 31.678658, 30.410744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259457, 31.543562, 30.124947>,  <40.051365, 32.115166, 30.316589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259457, 31.543562, 30.124947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862183, 31.531141, 30.080002>,  <39.623817, 31.523689, 30.053036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862183, 31.531141, 30.080002>,  <40.259457, 31.543562, 30.124947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862183, 31.531141, 30.080002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116527, -0.291802, -0.949354,
		-0.003307, -0.955974, 0.293431,
		-0.993182, -0.031053, -0.112361,
		39.564228, 31.521826, 30.046293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106499, 30.841105, 29.967613>,  <40.259457, 31.543562, 30.124947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106499, 30.841105, 29.967613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801262, 31.068060, 29.843832>,  <39.618118, 31.204233, 29.769564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801262, 31.068060, 29.843832>,  <40.106499, 30.841105, 29.967613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801262, 31.068060, 29.843832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195767, -0.253389, -0.947349,
		-0.615927, -0.783495, 0.082283,
		-0.763092, 0.567389, -0.309451,
		39.572334, 31.238277, 29.750998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926418, 30.495424, 29.449286>,  <40.106499, 30.841105, 29.967613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926418, 30.495424, 29.449286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768860, 30.859652, 29.399153>,  <39.674324, 31.078188, 29.369072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768860, 30.859652, 29.399153>,  <39.926418, 30.495424, 29.449286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768860, 30.859652, 29.399153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132431, -0.078713, -0.988062,
		-0.909565, -0.405790, -0.089583,
		-0.393894, 0.910571, -0.125334,
		39.650692, 31.132822, 29.361553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590649, 30.499704, 28.732901>,  <39.926418, 30.495424, 29.449286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590649, 30.499704, 28.732901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700645, 30.871307, 28.831955>,  <39.766644, 31.094269, 28.891388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700645, 30.871307, 28.831955>,  <39.590649, 30.499704, 28.732901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700645, 30.871307, 28.831955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507193, 0.078643, -0.858237,
		-0.816785, 0.361604, -0.449561,
		0.274987, 0.929009, 0.247638,
		39.783142, 31.150009, 28.906246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471542, 30.819380, 28.104231>,  <39.590649, 30.499704, 28.732901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471542, 30.819380, 28.104231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677597, 31.092760, 28.311125>,  <39.801231, 31.256788, 28.435261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677597, 31.092760, 28.311125>,  <39.471542, 30.819380, 28.104231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677597, 31.092760, 28.311125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407056, 0.335985, -0.849364,
		-0.754280, 0.648082, -0.105125,
		0.515137, 0.683450, 0.517233,
		39.832138, 31.297794, 28.466295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319294, 31.394625, 27.621429>,  <39.471542, 30.819380, 28.104231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319294, 31.394625, 27.621429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.646614, 31.432608, 27.848185>,  <39.843006, 31.455399, 27.984238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.646614, 31.432608, 27.848185>,  <39.319294, 31.394625, 27.621429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646614, 31.432608, 27.848185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518049, 0.305424, -0.798963,
		-0.249010, 0.947470, 0.200736,
		0.818302, 0.094959, 0.566890,
		39.892105, 31.461096, 28.018251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542213, 32.018711, 27.431721>,  <39.319294, 31.394625, 27.621429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542213, 32.018711, 27.431721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.833595, 31.786068, 27.576542>,  <40.008423, 31.646482, 27.663435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.833595, 31.786068, 27.576542>,  <39.542213, 32.018711, 27.431721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833595, 31.786068, 27.576542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506595, 0.101520, -0.856186,
		0.461210, 0.807108, 0.368594,
		0.728454, -0.581610, 0.362055,
		40.052132, 31.611586, 27.685158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142117, 32.199379, 27.019953>,  <39.542213, 32.018711, 27.431721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142117, 32.199379, 27.019953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.284565, 31.882326, 27.217907>,  <40.370033, 31.692095, 27.336679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.284565, 31.882326, 27.217907>,  <40.142117, 32.199379, 27.019953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284565, 31.882326, 27.217907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554537, -0.247004, -0.794656,
		0.752109, 0.557425, 0.351582,
		0.356119, -0.792633, 0.494887,
		40.391399, 31.644537, 27.366373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805134, 32.278503, 27.070129>,  <40.142117, 32.199379, 27.019953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805134, 32.278503, 27.070129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.729427, 31.885765, 27.075024>,  <40.684006, 31.650122, 27.077959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.729427, 31.885765, 27.075024>,  <40.805134, 32.278503, 27.070129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729427, 31.885765, 27.075024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540896, -0.114647, -0.833239,
		0.819519, -0.151084, 0.552777,
		-0.189264, -0.981850, 0.012235,
		40.672649, 31.591209, 27.078693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399467, 31.959345, 27.028568>,  <40.805134, 32.278503, 27.070129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399467, 31.959345, 27.028568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146511, 31.673286, 26.909472>,  <40.994740, 31.501652, 26.838013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146511, 31.673286, 26.909472>,  <41.399467, 31.959345, 27.028568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146511, 31.673286, 26.909472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500831, -0.084223, -0.861438,
		0.590977, -0.693883, 0.411429,
		-0.632389, -0.715146, -0.297744,
		40.956795, 31.458742, 26.820148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934402, 31.520044, 27.407074>,  <41.399467, 31.959345, 27.028568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934402, 31.520044, 27.407074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.325073, 31.485582, 27.485735>,  <42.559475, 31.464905, 27.532932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.325073, 31.485582, 27.485735>,  <41.934402, 31.520044, 27.407074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325073, 31.485582, 27.485735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200847, -0.042958, 0.978680,
		-0.075881, -0.995354, -0.059262,
		0.976679, -0.086166, 0.196654,
		42.618076, 31.459736, 27.544731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982464, 31.060110, 27.924143>,  <41.934402, 31.520044, 27.407074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982464, 31.060110, 27.924143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.354309, 31.207466, 27.928320>,  <42.577415, 31.295879, 27.930826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.354309, 31.207466, 27.928320>,  <41.982464, 31.060110, 27.924143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354309, 31.207466, 27.928320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032588, 0.053949, 0.998012,
		0.367092, -0.928106, 0.062157,
		0.929613, 0.368388, 0.010441,
		42.633194, 31.317982, 27.931452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515900, 30.605001, 28.344313>,  <41.982464, 31.060110, 27.924143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515900, 30.605001, 28.344313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.617859, 30.991608, 28.332510>,  <42.679035, 31.223572, 28.325428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.617859, 30.991608, 28.332510>,  <42.515900, 30.605001, 28.344313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617859, 30.991608, 28.332510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105239, 0.002603, 0.994443,
		0.961223, -0.256590, -0.101052,
		0.254902, 0.966517, -0.029505,
		42.694328, 31.281563, 28.323658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940739, 30.635628, 28.896372>,  <42.515900, 30.605001, 28.344313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940739, 30.635628, 28.896372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.866539, 31.020857, 28.818314>,  <42.822018, 31.251995, 28.771479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.866539, 31.020857, 28.818314>,  <42.940739, 30.635628, 28.896372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866539, 31.020857, 28.818314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049386, 0.207477, 0.976993,
		0.981402, 0.171598, -0.086050,
		-0.185503, 0.963072, -0.195144,
		42.810886, 31.309778, 28.759771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402290, 30.965780, 29.346951>,  <42.940739, 30.635628, 28.896372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402290, 30.965780, 29.346951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131721, 31.245781, 29.255342>,  <42.969379, 31.413782, 29.200377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131721, 31.245781, 29.255342>,  <43.402290, 30.965780, 29.346951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131721, 31.245781, 29.255342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029064, 0.285342, 0.957985,
		0.735942, 0.654657, -0.172666,
		-0.676420, 0.700003, -0.229022,
		42.928795, 31.455782, 29.186636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622078, 31.724930, 29.537094>,  <43.402290, 30.965780, 29.346951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622078, 31.724930, 29.537094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.222610, 31.741341, 29.524637>,  <42.982929, 31.751186, 29.517162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.222610, 31.741341, 29.524637>,  <43.622078, 31.724930, 29.537094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222610, 31.741341, 29.524637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020104, 0.246223, 0.969005,
		0.047421, 0.968344, -0.245071,
		-0.998673, 0.041025, -0.031144,
		42.923008, 31.753649, 29.515293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395161, 32.445835, 29.821009>,  <43.622078, 31.724930, 29.537094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395161, 32.445835, 29.821009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.101879, 32.175369, 29.849899>,  <42.925911, 32.013092, 29.867233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.101879, 32.175369, 29.849899>,  <43.395161, 32.445835, 29.821009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101879, 32.175369, 29.849899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035774, 0.144422, 0.988869,
		-0.679066, 0.722460, -0.130080,
		-0.733205, -0.676161, 0.072227,
		42.881916, 31.972521, 29.871567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891449, 32.820354, 30.195562>,  <43.395161, 32.445835, 29.821009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891449, 32.820354, 30.195562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.834602, 32.427052, 30.241192>,  <42.800495, 32.191071, 30.268570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.834602, 32.427052, 30.241192>,  <42.891449, 32.820354, 30.195562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834602, 32.427052, 30.241192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121691, 0.131723, 0.983789,
		-0.982341, 0.125932, -0.138374,
		-0.142117, -0.983255, 0.114072,
		42.791965, 32.132076, 30.275414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341507, 32.606239, 30.775759>,  <42.891449, 32.820354, 30.195562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341507, 32.606239, 30.775759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.600876, 32.308910, 30.710011>,  <42.756496, 32.130512, 30.670561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.600876, 32.308910, 30.710011>,  <42.341507, 32.606239, 30.775759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600876, 32.308910, 30.710011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020605, -0.232970, 0.972266,
		-0.761004, -0.627050, -0.166378,
		0.648420, -0.743327, -0.164371,
		42.795403, 32.085911, 30.660700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196922, 32.106911, 31.249119>,  <42.341507, 32.606239, 30.775759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196922, 32.106911, 31.249119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.579784, 32.036686, 31.157009>,  <42.809502, 31.994553, 31.101744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.579784, 32.036686, 31.157009>,  <42.196922, 32.106911, 31.249119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579784, 32.036686, 31.157009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199688, -0.175711, 0.963977,
		-0.209703, -0.968660, -0.133124,
		0.957157, -0.175566, -0.230277,
		42.866932, 31.984018, 31.087927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478184, 31.366003, 31.495129>,  <42.196922, 32.106911, 31.249119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478184, 31.366003, 31.495129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.776974, 31.629583, 31.459763>,  <42.956245, 31.787731, 31.438543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.776974, 31.629583, 31.459763>,  <42.478184, 31.366003, 31.495129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776974, 31.629583, 31.459763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286141, -0.198588, 0.937383,
		0.600130, -0.725498, -0.336892,
		0.746972, 0.658950, -0.088416,
		43.001064, 31.827269, 31.433237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942814, 31.005301, 31.843771>,  <42.478184, 31.366003, 31.495129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942814, 31.005301, 31.843771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.029442, 31.395651, 31.854834>,  <43.081417, 31.629862, 31.861471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.029442, 31.395651, 31.854834>,  <42.942814, 31.005301, 31.843771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029442, 31.395651, 31.854834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154031, -0.062131, 0.986111,
		0.964040, -0.209297, -0.163770,
		0.216566, 0.975876, 0.027659,
		43.094410, 31.688414, 31.863131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534813, 31.055737, 32.320221>,  <42.942814, 31.005301, 31.843771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534813, 31.055737, 32.320221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.367878, 31.419037, 32.308170>,  <43.267719, 31.637018, 32.300938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.367878, 31.419037, 32.308170>,  <43.534813, 31.055737, 32.320221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367878, 31.419037, 32.308170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073855, -0.000854, 0.997269,
		0.905746, 0.418421, 0.067435,
		-0.417336, 0.908253, -0.030129,
		43.242676, 31.691513, 32.299133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521461, 31.353542, 33.028545>,  <43.534813, 31.055737, 32.320221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521461, 31.353542, 33.028545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.266712, 31.626059, 32.884193>,  <43.113861, 31.789568, 32.797581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.266712, 31.626059, 32.884193>,  <43.521461, 31.353542, 33.028545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266712, 31.626059, 32.884193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359761, 0.151379, 0.920683,
		0.681884, 0.716188, 0.148693,
		-0.636873, 0.681292, -0.360879,
		43.075649, 31.830446, 32.775928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.114441, 33.676643, 27.753407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.754368, 33.796341, 27.626835>,  <43.538322, 33.868160, 27.550892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.754368, 33.796341, 27.626835>,  <44.114441, 33.676643, 27.753407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754368, 33.796341, 27.626835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218143, -0.319051, -0.922291,
		-0.376947, -0.899255, 0.221926,
		-0.900180, 0.299243, -0.316431,
		43.484314, 33.886112, 27.531906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882477, 32.990276, 27.426903>,  <44.114441, 33.676643, 27.753407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882477, 32.990276, 27.426903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.688854, 33.308483, 27.281111>,  <43.572681, 33.499409, 27.193636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.688854, 33.308483, 27.281111>,  <43.882477, 32.990276, 27.426903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688854, 33.308483, 27.281111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239720, -0.280037, -0.929577,
		-0.841561, -0.537340, -0.055148,
		-0.484055, 0.795515, -0.364480,
		43.543636, 33.547138, 27.171766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453785, 32.763077, 26.842075>,  <43.882477, 32.990276, 27.426903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453785, 32.763077, 26.842075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.450191, 33.155235, 26.763351>,  <43.448036, 33.390530, 26.716118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.450191, 33.155235, 26.763351>,  <43.453785, 32.763077, 26.842075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450191, 33.155235, 26.763351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221159, -0.189995, -0.956552,
		-0.975196, -0.052117, -0.215118,
		-0.008981, 0.980401, -0.196808,
		43.447498, 33.449356, 26.704309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209850, 32.790981, 26.162214>,  <43.453785, 32.763077, 26.842075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209850, 32.790981, 26.162214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408100, 33.133224, 26.221933>,  <43.527050, 33.338570, 26.257765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408100, 33.133224, 26.221933>,  <43.209850, 32.790981, 26.162214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408100, 33.133224, 26.221933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439991, -0.099133, -0.892514,
		-0.748842, 0.508043, -0.425593,
		0.495625, 0.855608, 0.149299,
		43.556789, 33.389908, 26.266724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322735, 33.240070, 25.454515>,  <43.209850, 32.790981, 26.162214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322735, 33.240070, 25.454515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.566116, 33.476254, 25.666611>,  <43.712143, 33.617962, 25.793867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.566116, 33.476254, 25.666611>,  <43.322735, 33.240070, 25.454515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566116, 33.476254, 25.666611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659413, -0.004408, -0.751768,
		-0.441548, 0.807059, -0.392036,
		0.608449, 0.590455, 0.530239,
		43.748650, 33.653389, 25.825682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407909, 33.899597, 25.085030>,  <43.322735, 33.240070, 25.454515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407909, 33.899597, 25.085030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.720409, 33.821514, 25.322193>,  <43.907909, 33.774666, 25.464491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.720409, 33.821514, 25.322193>,  <43.407909, 33.899597, 25.085030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720409, 33.821514, 25.322193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588686, -0.085487, -0.803829,
		0.207599, 0.977029, 0.048129,
		0.781250, -0.195207, 0.592911,
		43.954784, 33.762951, 25.500067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914803, 34.392960, 24.926823>,  <43.407909, 33.899597, 25.085030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914803, 34.392960, 24.926823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.090866, 34.069080, 25.082081>,  <44.196503, 33.874752, 25.175236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.090866, 34.069080, 25.082081>,  <43.914803, 34.392960, 24.926823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090866, 34.069080, 25.082081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643634, -0.016903, -0.765146,
		0.626096, 0.586607, 0.513708,
		0.440157, -0.809695, 0.388143,
		44.222912, 33.826172, 25.198524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642570, 34.456520, 24.756447>,  <43.914803, 34.392960, 24.926823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642570, 34.456520, 24.756447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.600189, 34.066788, 24.835905>,  <44.574760, 33.832951, 24.883579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.600189, 34.066788, 24.835905>,  <44.642570, 34.456520, 24.756447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600189, 34.066788, 24.835905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564404, -0.223396, -0.794696,
		0.818671, 0.027919, 0.573584,
		-0.105949, -0.974328, 0.198646,
		44.568405, 33.774490, 24.895498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249424, 34.232265, 24.484301>,  <44.642570, 34.456520, 24.756447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249424, 34.232265, 24.484301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.023151, 33.903614, 24.512392>,  <44.887386, 33.706425, 24.529247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.023151, 33.903614, 24.512392>,  <45.249424, 34.232265, 24.484301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023151, 33.903614, 24.512392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399047, -0.347274, -0.848624,
		0.721642, -0.452026, 0.524314,
		-0.565681, -0.821629, 0.070228,
		44.853447, 33.657127, 24.533461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788452, 33.685234, 24.489765>,  <45.249424, 34.232265, 24.484301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788452, 33.685234, 24.489765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.430603, 33.544083, 24.380135>,  <45.215893, 33.459393, 24.314356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.430603, 33.544083, 24.380135>,  <45.788452, 33.685234, 24.489765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430603, 33.544083, 24.380135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413991, -0.423891, -0.805560,
		0.168088, -0.834141, 0.525314,
		-0.894627, -0.352880, -0.274076,
		45.162216, 33.438217, 24.297913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795345, 32.902042, 24.330496>,  <45.788452, 33.685234, 24.489765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795345, 32.902042, 24.330496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.470154, 33.044533, 24.146244>,  <45.275040, 33.130028, 24.035694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.470154, 33.044533, 24.146244>,  <45.795345, 32.902042, 24.330496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470154, 33.044533, 24.146244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259151, -0.487051, -0.834040,
		-0.521459, -0.797422, 0.303641,
		-0.812971, 0.356229, -0.460630,
		45.226261, 33.151398, 24.008057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456268, 32.226685, 24.005713>,  <45.795345, 32.902042, 24.330496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456268, 32.226685, 24.005713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.325142, 32.567631, 23.842735>,  <45.246468, 32.772198, 23.744949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.325142, 32.567631, 23.842735>,  <45.456268, 32.226685, 24.005713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325142, 32.567631, 23.842735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098916, -0.397936, -0.912065,
		-0.939550, -0.339288, 0.046135,
		-0.327812, 0.852367, -0.407442,
		45.226799, 32.823341, 23.720503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863544, 32.037094, 23.500481>,  <45.456268, 32.226685, 24.005713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863544, 32.037094, 23.500481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.072144, 32.363426, 23.400520>,  <45.197304, 32.559227, 23.340544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.072144, 32.363426, 23.400520>,  <44.863544, 32.037094, 23.500481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072144, 32.363426, 23.400520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331362, -0.463538, -0.821786,
		-0.786280, 0.345754, -0.512072,
		0.521500, 0.815835, -0.249901,
		45.228592, 32.608177, 23.325550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637249, 32.283154, 22.850029>,  <44.863544, 32.037094, 23.500481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637249, 32.283154, 22.850029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.019024, 32.376591, 22.924299>,  <45.248089, 32.432652, 22.968863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.019024, 32.376591, 22.924299>,  <44.637249, 32.283154, 22.850029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019024, 32.376591, 22.924299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283909, -0.519321, -0.806040,
		-0.091860, 0.822034, -0.561981,
		0.954441, 0.233594, 0.185678,
		45.305355, 32.446671, 22.980003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886246, 31.503366, 22.778597>,  <44.637249, 32.283154, 22.850029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886246, 31.503366, 22.778597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658840, 31.194305, 22.665602>,  <44.522396, 31.008869, 22.597805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658840, 31.194305, 22.665602>,  <44.886246, 31.503366, 22.778597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658840, 31.194305, 22.665602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151388, -0.239255, 0.959082,
		-0.808624, 0.588017, 0.019049,
		-0.568514, -0.772653, -0.282486,
		44.488285, 30.962509, 22.580856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234283, 31.651255, 22.997883>,  <44.886246, 31.503366, 22.778597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234283, 31.651255, 22.997883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.244503, 31.254665, 22.946770>,  <44.250633, 31.016712, 22.916101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.244503, 31.254665, 22.946770>,  <44.234283, 31.651255, 22.997883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244503, 31.254665, 22.946770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263057, -0.129988, 0.955983,
		-0.964442, 0.009194, -0.264135,
		0.025545, -0.991473, -0.127784,
		44.252167, 30.957224, 22.908434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557693, 31.416574, 23.191505>,  <44.234283, 31.651255, 22.997883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557693, 31.416574, 23.191505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817356, 31.113224, 23.215021>,  <43.973152, 30.931213, 23.229130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817356, 31.113224, 23.215021>,  <43.557693, 31.416574, 23.191505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817356, 31.113224, 23.215021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330456, -0.211562, 0.919804,
		-0.685123, -0.616525, -0.387948,
		0.649158, -0.758379, 0.058788,
		44.012104, 30.885710, 23.232658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159412, 30.845154, 23.383118>,  <43.557693, 31.416574, 23.191505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159412, 30.845154, 23.383118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.533134, 30.742241, 23.481819>,  <43.757366, 30.680494, 23.541040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.533134, 30.742241, 23.481819>,  <43.159412, 30.845154, 23.383118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533134, 30.742241, 23.481819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307056, -0.229166, 0.923688,
		-0.181104, -0.938769, -0.293111,
		0.934301, -0.257285, 0.246751,
		43.813423, 30.665056, 23.555845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054287, 30.173407, 23.691637>,  <43.159412, 30.845154, 23.383118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054287, 30.173407, 23.691637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408764, 30.329672, 23.791275>,  <43.621449, 30.423431, 23.851057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408764, 30.329672, 23.791275>,  <43.054287, 30.173407, 23.691637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408764, 30.329672, 23.791275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139345, -0.288008, 0.947436,
		0.441868, -0.874320, -0.200794,
		0.886192, 0.390662, 0.249094,
		43.674622, 30.446871, 23.866003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240330, 29.763008, 24.234928>,  <43.054287, 30.173407, 23.691637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240330, 29.763008, 24.234928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.472248, 30.088272, 24.255360>,  <43.611401, 30.283430, 24.267618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.472248, 30.088272, 24.255360>,  <43.240330, 29.763008, 24.234928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472248, 30.088272, 24.255360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053164, -0.024801, 0.998278,
		0.813026, -0.581512, 0.028852,
		0.579795, 0.813160, 0.051080,
		43.646187, 30.332220, 24.270683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556465, 29.599041, 24.825243>,  <43.240330, 29.763008, 24.234928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556465, 29.599041, 24.825243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.663387, 29.980742, 24.771652>,  <43.727543, 30.209763, 24.739498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.663387, 29.980742, 24.771652>,  <43.556465, 29.599041, 24.825243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663387, 29.980742, 24.771652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029415, 0.147054, 0.988691,
		0.963163, -0.260343, 0.067378,
		0.267307, 0.954252, -0.133979,
		43.743580, 30.267017, 24.731459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048054, 29.808064, 25.385025>,  <43.556465, 29.599041, 24.825243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048054, 29.808064, 25.385025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.886448, 30.137875, 25.226570>,  <43.789486, 30.335762, 25.131496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.886448, 30.137875, 25.226570>,  <44.048054, 29.808064, 25.385025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886448, 30.137875, 25.226570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197612, 0.344161, 0.917880,
		0.893154, 0.449116, 0.023892,
		-0.404012, 0.824529, -0.396139,
		43.765244, 30.385233, 25.107729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379726, 30.204933, 25.712873>,  <44.048054, 29.808064, 25.385025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379726, 30.204933, 25.712873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.061981, 30.409065, 25.581087>,  <43.871334, 30.531544, 25.502016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.061981, 30.409065, 25.581087>,  <44.379726, 30.204933, 25.712873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061981, 30.409065, 25.581087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085885, 0.442575, 0.892609,
		0.601338, 0.737354, -0.307737,
		-0.794366, 0.510330, -0.329465,
		43.823673, 30.562164, 25.482248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563240, 30.855879, 25.924494>,  <44.379726, 30.204933, 25.712873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563240, 30.855879, 25.924494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.165768, 30.844856, 25.880983>,  <43.927284, 30.838243, 25.854877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.165768, 30.844856, 25.880983>,  <44.563240, 30.855879, 25.924494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165768, 30.844856, 25.880983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110853, 0.391598, 0.913434,
		0.017426, 0.919723, -0.392180,
		-0.993684, -0.027557, -0.108778,
		43.867661, 30.836590, 25.848351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256493, 31.464712, 26.282101>,  <44.563240, 30.855879, 25.924494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256493, 31.464712, 26.282101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.968864, 31.188745, 26.248749>,  <43.796288, 31.023165, 26.228737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.968864, 31.188745, 26.248749>,  <44.256493, 31.464712, 26.282101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968864, 31.188745, 26.248749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350440, 0.256380, 0.900811,
		-0.600109, 0.676966, -0.426130,
		-0.719070, -0.689918, -0.083380,
		43.753143, 30.981770, 26.223734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696320, 31.920135, 26.290773>,  <44.256493, 31.464712, 26.282101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696320, 31.920135, 26.290773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.570206, 31.551405, 26.380955>,  <43.494537, 31.330166, 26.435064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.570206, 31.551405, 26.380955>,  <43.696320, 31.920135, 26.290773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570206, 31.551405, 26.380955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491921, 0.361916, 0.791853,
		-0.811546, 0.138756, -0.567574,
		-0.315288, -0.921826, 0.225454,
		43.475620, 31.274857, 26.448591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991837, 32.004486, 26.428442>,  <43.696320, 31.920135, 26.290773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991837, 32.004486, 26.428442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.085217, 31.659575, 26.608210>,  <43.141243, 31.452627, 26.716070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.085217, 31.659575, 26.608210>,  <42.991837, 32.004486, 26.428442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085217, 31.659575, 26.608210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227994, 0.400766, 0.887359,
		-0.945263, -0.309616, -0.103037,
		0.233446, -0.862279, 0.449419,
		43.155251, 31.400890, 26.743036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433872, 31.846312, 26.771847>,  <42.991837, 32.004486, 26.428442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433872, 31.846312, 26.771847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.706505, 31.615726, 26.952131>,  <42.870083, 31.477375, 27.060303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.706505, 31.615726, 26.952131>,  <42.433872, 31.846312, 26.771847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706505, 31.615726, 26.952131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372450, 0.256887, 0.891790,
		-0.629867, -0.775692, -0.039616,
		0.681578, -0.576464, 0.450711,
		42.910976, 31.442787, 27.087345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802402, 31.545395, 26.518463>,  <42.433872, 31.846312, 26.771847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802402, 31.545395, 26.518463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.421276, 31.445789, 26.449034>,  <41.192600, 31.386026, 26.407375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.421276, 31.445789, 26.449034>,  <41.802402, 31.545395, 26.518463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421276, 31.445789, 26.449034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216996, -0.158945, -0.963145,
		0.212248, -0.955368, 0.205481,
		-0.952819, -0.249014, -0.173575,
		41.135429, 31.371086, 26.396961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746624, 30.925697, 26.287231>,  <41.802402, 31.545395, 26.518463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746624, 30.925697, 26.287231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.417160, 31.106506, 26.150259>,  <41.219482, 31.214991, 26.068075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.417160, 31.106506, 26.150259>,  <41.746624, 30.925697, 26.287231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417160, 31.106506, 26.150259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305025, -0.155913, -0.939495,
		-0.478062, -0.878276, -0.009459,
		-0.823661, 0.452022, -0.342432,
		41.170063, 31.242113, 26.047529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602573, 30.600649, 25.657640>,  <41.746624, 30.925697, 26.287231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602573, 30.600649, 25.657640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392990, 30.940159, 25.629202>,  <41.267242, 31.143866, 25.612139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392990, 30.940159, 25.629202>,  <41.602573, 30.600649, 25.657640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392990, 30.940159, 25.629202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224892, 0.057350, -0.972694,
		-0.821520, -0.525636, -0.220932,
		-0.523953, 0.848774, -0.071097,
		41.235806, 31.194792, 25.607872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149006, 30.445852, 25.103868>,  <41.602573, 30.600649, 25.657640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149006, 30.445852, 25.103868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.152569, 30.843866, 25.143522>,  <41.154705, 31.082674, 25.167315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.152569, 30.843866, 25.143522>,  <41.149006, 30.445852, 25.103868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152569, 30.843866, 25.143522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091380, 0.097915, -0.990991,
		-0.995776, 0.017883, -0.090054,
		0.008904, 0.995034, 0.099135,
		41.155239, 31.142376, 25.173264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716206, 30.705931, 24.545424>,  <41.149006, 30.445852, 25.103868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716206, 30.705931, 24.545424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.924877, 31.025465, 24.665236>,  <41.050079, 31.217186, 24.737123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.924877, 31.025465, 24.665236>,  <40.716206, 30.705931, 24.545424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924877, 31.025465, 24.665236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174123, 0.244008, -0.954014,
		-0.835186, 0.549840, -0.011802,
		0.521675, 0.798834, 0.299531,
		41.081379, 31.265116, 24.755095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481804, 31.331139, 24.177395>,  <40.716206, 30.705931, 24.545424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481804, 31.331139, 24.177395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849941, 31.415842, 24.308926>,  <41.070824, 31.466663, 24.387844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849941, 31.415842, 24.308926>,  <40.481804, 31.331139, 24.177395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849941, 31.415842, 24.308926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283335, 0.218589, -0.933777,
		-0.269613, 0.952564, 0.141178,
		0.920342, 0.211758, 0.328829,
		41.126045, 31.479370, 24.407574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628662, 31.913778, 23.866507>,  <40.481804, 31.331139, 24.177395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628662, 31.913778, 23.866507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.989834, 31.761929, 23.947102>,  <41.206539, 31.670818, 23.995459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.989834, 31.761929, 23.947102>,  <40.628662, 31.913778, 23.866507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989834, 31.761929, 23.947102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293960, 0.203510, -0.933901,
		0.313526, 0.902480, 0.295350,
		0.902933, -0.379623, 0.201487,
		41.260715, 31.648041, 24.007547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653179, 32.632317, 23.886471>,  <40.628662, 31.913778, 23.866507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653179, 32.632317, 23.886471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.401295, 32.929119, 23.794487>,  <40.250164, 33.107201, 23.739296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.401295, 32.929119, 23.794487>,  <40.653179, 32.632317, 23.886471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401295, 32.929119, 23.794487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280371, 0.058982, 0.958078,
		0.724465, 0.667791, 0.170896,
		-0.629716, 0.742008, -0.229959,
		40.212379, 33.151722, 23.725500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810017, 33.183739, 24.304567>,  <40.653179, 32.632317, 23.886471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810017, 33.183739, 24.304567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.427868, 33.220016, 24.192114>,  <40.198578, 33.241783, 24.124641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.427868, 33.220016, 24.192114>,  <40.810017, 33.183739, 24.304567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427868, 33.220016, 24.192114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259429, 0.197556, 0.945340,
		0.141277, 0.976087, -0.165211,
		-0.955373, 0.090694, -0.281136,
		40.141254, 33.247227, 24.107773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556675, 33.855114, 24.516960>,  <40.810017, 33.183739, 24.304567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556675, 33.855114, 24.516960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.236153, 33.618301, 24.482517>,  <40.043839, 33.476215, 24.461851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.236153, 33.618301, 24.482517>,  <40.556675, 33.855114, 24.516960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236153, 33.618301, 24.482517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330042, 0.317405, 0.889003,
		-0.498984, 0.740781, -0.449732,
		-0.801304, -0.592029, -0.086109,
		39.995762, 33.440693, 24.456684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026695, 34.199928, 24.954674>,  <40.556675, 33.855114, 24.516960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026695, 34.199928, 24.954674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.897976, 33.828903, 24.878710>,  <39.820744, 33.606289, 24.833132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.897976, 33.828903, 24.878710>,  <40.026695, 34.199928, 24.954674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897976, 33.828903, 24.878710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464702, -0.020027, 0.885240,
		-0.824923, 0.373121, -0.424597,
		-0.321798, -0.927566, -0.189911,
		39.801437, 33.550632, 24.821737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401386, 34.331753, 25.321033>,  <40.026695, 34.199928, 24.954674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401386, 34.331753, 25.321033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415924, 33.940426, 25.239481>,  <39.424644, 33.705627, 25.190550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415924, 33.940426, 25.239481>,  <39.401386, 34.331753, 25.321033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415924, 33.940426, 25.239481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607353, -0.183634, 0.772917,
		-0.793600, 0.095739, -0.600860,
		0.036340, -0.978321, -0.203879,
		39.426826, 33.646931, 25.178318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690182, 34.108128, 25.316164>,  <39.401386, 34.331753, 25.321033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690182, 34.108128, 25.316164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909599, 33.781403, 25.387630>,  <39.041248, 33.585369, 25.430511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909599, 33.781403, 25.387630>,  <38.690182, 34.108128, 25.316164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909599, 33.781403, 25.387630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634549, -0.267537, 0.725101,
		-0.544469, -0.511124, -0.665061,
		0.548545, -0.816809, 0.178668,
		39.074162, 33.536362, 25.441231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158398, 33.554077, 25.326002>,  <38.690182, 34.108128, 25.316164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158398, 33.554077, 25.326002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490250, 33.463413, 25.530098>,  <38.689362, 33.409016, 25.652555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490250, 33.463413, 25.530098>,  <38.158398, 33.554077, 25.326002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490250, 33.463413, 25.530098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544257, -0.124510, 0.829628,
		-0.124510, -0.965984, -0.226655,
		-0.829628, 0.226655, -0.510240,
		38.739140, 33.395416, 25.683170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.726372, 35.197113, 22.050972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.029041, 35.055210, 22.270641>,  <43.210644, 34.970070, 22.402443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.029041, 35.055210, 22.270641>,  <42.726372, 35.197113, 22.050972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029041, 35.055210, 22.270641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574117, 0.041311, 0.817730,
		-0.312782, -0.934046, -0.172412,
		0.756675, -0.354756, 0.549173,
		43.256042, 34.948784, 22.435392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482830, 34.668739, 22.419769>,  <42.726372, 35.197113, 22.050972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482830, 34.668739, 22.419769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.799744, 34.812687, 22.616863>,  <42.989891, 34.899055, 22.735119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.799744, 34.812687, 22.616863>,  <42.482830, 34.668739, 22.419769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799744, 34.812687, 22.616863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598157, 0.298729, 0.743619,
		0.120409, -0.883888, 0.451934,
		0.792282, 0.359866, 0.492734,
		43.037430, 34.920647, 22.764683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265480, 34.533047, 23.187057>,  <42.482830, 34.668739, 22.419769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265480, 34.533047, 23.187057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.563244, 34.799587, 23.204161>,  <42.741901, 34.959511, 23.214422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.563244, 34.799587, 23.204161>,  <42.265480, 34.533047, 23.187057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563244, 34.799587, 23.204161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423539, 0.421711, 0.801732,
		0.516208, -0.614924, 0.596153,
		0.744409, 0.666355, 0.042754,
		42.786568, 34.999493, 23.216988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537029, 34.632637, 23.908327>,  <42.265480, 34.533047, 23.187057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537029, 34.632637, 23.908327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.695469, 34.975822, 23.777485>,  <42.790531, 35.181736, 23.698978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.695469, 34.975822, 23.777485>,  <42.537029, 34.632637, 23.908327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695469, 34.975822, 23.777485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238405, 0.440125, 0.865710,
		0.886718, -0.264922, 0.378876,
		0.396098, 0.857966, -0.327108,
		42.814297, 35.233212, 23.679352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018223, 34.971294, 24.445829>,  <42.537029, 34.632637, 23.908327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018223, 34.971294, 24.445829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.933968, 35.275570, 24.200232>,  <42.883415, 35.458134, 24.052874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.933968, 35.275570, 24.200232>,  <43.018223, 34.971294, 24.445829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933968, 35.275570, 24.200232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156466, 0.593754, 0.789287,
		0.964960, 0.262327, -0.006049,
		-0.210643, 0.760684, -0.613994,
		42.870773, 35.503777, 24.016033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498749, 35.608437, 24.662937>,  <43.018223, 34.971294, 24.445829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498749, 35.608437, 24.662937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.169350, 35.727703, 24.469883>,  <42.971710, 35.799263, 24.354050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.169350, 35.727703, 24.469883>,  <43.498749, 35.608437, 24.662937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169350, 35.727703, 24.469883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260989, 0.556254, 0.788965,
		0.503715, 0.775678, -0.380257,
		-0.823502, 0.298170, -0.482637,
		42.922298, 35.817154, 24.325092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420437, 36.225117, 24.981537>,  <43.498749, 35.608437, 24.662937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420437, 36.225117, 24.981537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.076088, 36.195145, 24.780224>,  <42.869480, 36.177162, 24.659437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.076088, 36.195145, 24.780224>,  <43.420437, 36.225117, 24.981537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076088, 36.195145, 24.780224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412531, 0.681790, 0.604136,
		0.297866, 0.727701, -0.617841,
		-0.860868, -0.074927, -0.503281,
		42.817829, 36.172668, 24.629240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118740, 36.904617, 24.835806>,  <43.420437, 36.225117, 24.981537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118740, 36.904617, 24.835806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.813568, 36.646854, 24.815147>,  <42.630463, 36.492195, 24.802753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.813568, 36.646854, 24.815147>,  <43.118740, 36.904617, 24.835806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813568, 36.646854, 24.815147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518873, 0.562735, 0.643506,
		-0.385620, 0.517750, -0.763697,
		-0.762934, -0.644410, -0.051645,
		42.584686, 36.453533, 24.799654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465263, 37.315964, 25.029652>,  <43.118740, 36.904617, 24.835806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465263, 37.315964, 25.029652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.335327, 36.941422, 25.082899>,  <42.257366, 36.716698, 25.114847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.335327, 36.941422, 25.082899>,  <42.465263, 37.315964, 25.029652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335327, 36.941422, 25.082899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504678, 0.290650, 0.812910,
		-0.799863, 0.196883, -0.566971,
		-0.324838, -0.936355, 0.133118,
		42.237877, 36.660515, 25.122835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782078, 37.525959, 25.123032>,  <42.465263, 37.315964, 25.029652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782078, 37.525959, 25.123032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.821636, 37.152275, 25.260130>,  <41.845371, 36.928066, 25.342388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.821636, 37.152275, 25.260130>,  <41.782078, 37.525959, 25.123032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821636, 37.152275, 25.260130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723095, 0.169158, 0.669716,
		-0.683632, -0.314072, -0.658791,
		0.098900, -0.934208, 0.342746,
		41.851307, 36.872013, 25.362953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152184, 37.276073, 25.049814>,  <41.782078, 37.525959, 25.123032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152184, 37.276073, 25.049814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350941, 37.079372, 25.335831>,  <41.470196, 36.961353, 25.507441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350941, 37.079372, 25.335831>,  <41.152184, 37.276073, 25.049814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350941, 37.079372, 25.335831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753692, 0.163898, 0.636464,
		-0.430174, -0.855173, -0.289188,
		0.496889, -0.491748, 0.715042,
		41.500008, 36.931847, 25.550343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624111, 36.913284, 25.535126>,  <41.152184, 37.276073, 25.049814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624111, 36.913284, 25.535126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.954014, 36.929569, 25.760733>,  <41.151955, 36.939342, 25.896097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.954014, 36.929569, 25.760733>,  <40.624111, 36.913284, 25.535126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954014, 36.929569, 25.760733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544979, 0.323383, 0.773577,
		-0.150897, -0.945392, 0.288901,
		0.824760, 0.040714, 0.564016,
		41.201443, 36.941784, 25.929937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134571, 36.253178, 25.368706>,  <40.624111, 36.913284, 25.535126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134571, 36.253178, 25.368706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.760891, 36.244068, 25.226301>,  <39.536682, 36.238602, 25.140858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.760891, 36.244068, 25.226301>,  <40.134571, 36.253178, 25.368706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760891, 36.244068, 25.226301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350954, -0.237681, -0.905726,
		-0.063990, -0.971076, 0.230035,
		-0.934204, -0.022775, -0.356012,
		39.480629, 36.237236, 25.119497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070484, 35.616058, 25.041752>,  <40.134571, 36.253178, 25.368706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070484, 35.616058, 25.041752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803680, 35.873165, 24.891047>,  <39.643597, 36.027428, 24.800623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803680, 35.873165, 24.891047>,  <40.070484, 35.616058, 25.041752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803680, 35.873165, 24.891047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437054, -0.071983, -0.896550,
		-0.603390, -0.762675, -0.232909,
		-0.667011, 0.642764, -0.376764,
		39.603577, 36.065994, 24.778017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932159, 35.274040, 24.423788>,  <40.070484, 35.616058, 25.041752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932159, 35.274040, 24.423788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805149, 35.650452, 24.377064>,  <39.728943, 35.876297, 24.349030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805149, 35.650452, 24.377064>,  <39.932159, 35.274040, 24.423788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805149, 35.650452, 24.377064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305088, -0.015252, -0.952202,
		-0.897829, -0.337989, -0.282253,
		-0.317529, 0.941027, -0.116810,
		39.709888, 35.932758, 24.342020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504726, 35.294678, 23.917919>,  <39.932159, 35.274040, 24.423788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504726, 35.294678, 23.917919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605080, 35.681759, 23.908092>,  <39.665291, 35.914009, 23.902197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605080, 35.681759, 23.908092>,  <39.504726, 35.294678, 23.917919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605080, 35.681759, 23.908092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306661, -0.103522, -0.946172,
		-0.918160, 0.229843, -0.322730,
		0.250880, 0.967706, -0.024565,
		39.680344, 35.972073, 23.900723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205547, 35.659622, 23.311802>,  <39.504726, 35.294678, 23.917919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205547, 35.659622, 23.311802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.513813, 35.895309, 23.408875>,  <39.698772, 36.036720, 23.467119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.513813, 35.895309, 23.408875>,  <39.205547, 35.659622, 23.311802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513813, 35.895309, 23.408875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327514, -0.039555, -0.944018,
		-0.546633, 0.807005, -0.223461,
		0.770666, 0.589218, 0.242684,
		39.745014, 36.072075, 23.481680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193954, 36.110966, 22.739500>,  <39.205547, 35.659622, 23.311802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193954, 36.110966, 22.739500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.554943, 36.129669, 22.910780>,  <39.771538, 36.140892, 23.013548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.554943, 36.129669, 22.910780>,  <39.193954, 36.110966, 22.739500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554943, 36.129669, 22.910780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424273, 0.075186, -0.902408,
		-0.074386, 0.996073, 0.048016,
		0.902474, 0.046755, 0.428199,
		39.825684, 36.143696, 23.039240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521351, 36.776657, 22.438354>,  <39.193954, 36.110966, 22.739500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521351, 36.776657, 22.438354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.813652, 36.548050, 22.587683>,  <39.989033, 36.410885, 22.677280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.813652, 36.548050, 22.587683>,  <39.521351, 36.776657, 22.438354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813652, 36.548050, 22.587683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431088, -0.037688, -0.901522,
		0.529307, 0.819723, 0.218834,
		0.730751, -0.571519, 0.373322,
		40.032879, 36.376595, 22.699678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116692, 37.073669, 22.196114>,  <39.521351, 36.776657, 22.438354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116692, 37.073669, 22.196114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208366, 36.689541, 22.259691>,  <40.263371, 36.459064, 22.297838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208366, 36.689541, 22.259691>,  <40.116692, 37.073669, 22.196114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208366, 36.689541, 22.259691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437859, -0.044125, -0.897960,
		0.869340, 0.275397, 0.410370,
		0.229188, -0.960317, 0.158945,
		40.277122, 36.401447, 22.307375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602360, 37.032005, 21.787222>,  <40.116692, 37.073669, 22.196114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602360, 37.032005, 21.787222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.560776, 36.640701, 21.858992>,  <40.535824, 36.405918, 21.902054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.560776, 36.640701, 21.858992>,  <40.602360, 37.032005, 21.787222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560776, 36.640701, 21.858992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421809, -0.206740, -0.882800,
		0.900705, -0.016093, 0.434133,
		-0.103960, -0.978264, 0.179423,
		40.529587, 36.347221, 21.912819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176453, 36.830276, 21.508499>,  <40.602360, 37.032005, 21.787222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176453, 36.830276, 21.508499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966743, 36.491474, 21.543646>,  <40.840916, 36.288193, 21.564734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966743, 36.491474, 21.543646>,  <41.176453, 36.830276, 21.508499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966743, 36.491474, 21.543646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426448, -0.350466, -0.833856,
		0.737072, -0.399701, 0.544944,
		-0.524277, -0.847002, 0.087867,
		40.809460, 36.237373, 21.570005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660980, 36.321735, 21.499195>,  <41.176453, 36.830276, 21.508499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660980, 36.321735, 21.499195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.303749, 36.156120, 21.428791>,  <41.089409, 36.056751, 21.386549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.303749, 36.156120, 21.428791>,  <41.660980, 36.321735, 21.499195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303749, 36.156120, 21.428791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321574, -0.313858, -0.893355,
		0.314645, -0.854436, 0.413445,
		-0.893078, -0.414042, -0.176010,
		41.035824, 36.031906, 21.375988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739552, 35.529175, 21.425718>,  <41.660980, 36.321735, 21.499195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739552, 35.529175, 21.425718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.423695, 35.655495, 21.215294>,  <41.234180, 35.731285, 21.089039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.423695, 35.655495, 21.215294>,  <41.739552, 35.529175, 21.425718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423695, 35.655495, 21.215294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333639, -0.498544, -0.800087,
		-0.514928, -0.807297, 0.288309,
		-0.789642, 0.315796, -0.526060,
		41.186802, 35.750233, 21.057476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468063, 34.980419, 20.992670>,  <41.739552, 35.529175, 21.425718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468063, 34.980419, 20.992670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.302769, 35.293812, 20.807030>,  <41.203590, 35.481846, 20.695644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.302769, 35.293812, 20.807030>,  <41.468063, 34.980419, 20.992670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302769, 35.293812, 20.807030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147767, -0.445205, -0.883152,
		-0.898555, -0.433529, 0.068202,
		-0.413235, 0.783483, -0.464103,
		41.178799, 35.528858, 20.667799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039165, 34.794998, 21.405575>,  <41.468063, 34.980419, 20.992670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039165, 34.794998, 21.405575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823910, 34.516541, 21.215506>,  <41.694756, 34.349468, 21.101463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823910, 34.516541, 21.215506>,  <42.039165, 34.794998, 21.405575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823910, 34.516541, 21.215506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553330, -0.133475, 0.822199,
		-0.635791, 0.705387, -0.313368,
		-0.538141, -0.696142, -0.475174,
		41.662468, 34.307697, 21.072954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470158, 34.793892, 21.768396>,  <42.039165, 34.794998, 21.405575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470158, 34.793892, 21.768396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.379272, 34.465542, 21.558809>,  <41.324741, 34.268532, 21.433058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.379272, 34.465542, 21.558809>,  <41.470158, 34.793892, 21.768396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379272, 34.465542, 21.558809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676958, -0.253649, 0.690934,
		-0.700074, 0.511690, -0.498066,
		-0.227210, -0.820875, -0.523966,
		41.311108, 34.219280, 21.401619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732674, 34.734932, 21.749763>,  <41.470158, 34.793892, 21.768396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732674, 34.734932, 21.749763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.849701, 34.355782, 21.699263>,  <40.919918, 34.128292, 21.668962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.849701, 34.355782, 21.699263>,  <40.732674, 34.734932, 21.749763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849701, 34.355782, 21.699263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571922, -0.279262, 0.771309,
		-0.766361, -0.153452, -0.623813,
		0.292566, -0.947874, -0.126253,
		40.937469, 34.071419, 21.661386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141708, 34.296612, 21.812502>,  <40.732674, 34.734932, 21.749763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141708, 34.296612, 21.812502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.446545, 34.046665, 21.880350>,  <40.629444, 33.896698, 21.921059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.446545, 34.046665, 21.880350>,  <40.141708, 34.296612, 21.812502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446545, 34.046665, 21.880350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442736, -0.311747, 0.840713,
		-0.472451, -0.715794, -0.514227,
		0.762086, -0.624862, 0.169623,
		40.675171, 33.859207, 21.931236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854107, 33.751392, 22.039583>,  <40.141708, 34.296612, 21.812502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854107, 33.751392, 22.039583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.233799, 33.701477, 22.155096>,  <40.461613, 33.671528, 22.224403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.233799, 33.701477, 22.155096>,  <39.854107, 33.751392, 22.039583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233799, 33.701477, 22.155096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314542, -0.392791, 0.864163,
		0.005590, -0.911121, -0.412100,
		0.949227, -0.124792, 0.288782,
		40.518566, 33.664040, 22.241730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887997, 32.988739, 22.224913>,  <39.854107, 33.751392, 22.039583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887997, 32.988739, 22.224913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.171047, 33.208195, 22.403017>,  <40.340878, 33.339870, 22.509880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.171047, 33.208195, 22.403017>,  <39.887997, 32.988739, 22.224913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171047, 33.208195, 22.403017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302118, -0.334721, 0.892573,
		0.638743, -0.766128, -0.071102,
		0.707625, 0.548643, 0.445261,
		40.383335, 33.372787, 22.536596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097897, 32.589535, 22.673241>,  <39.887997, 32.988739, 22.224913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097897, 32.589535, 22.673241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247658, 32.937233, 22.802385>,  <40.337513, 33.145851, 22.879873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247658, 32.937233, 22.802385>,  <40.097897, 32.589535, 22.673241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247658, 32.937233, 22.802385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374522, -0.176767, 0.910213,
		0.848267, -0.461705, 0.259368,
		0.374402, 0.869242, 0.322864,
		40.359978, 33.198006, 22.899244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451481, 32.435772, 23.224983>,  <40.097897, 32.589535, 22.673241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451481, 32.435772, 23.224983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364540, 32.824520, 23.261253>,  <40.312374, 33.057770, 23.283014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364540, 32.824520, 23.261253>,  <40.451481, 32.435772, 23.224983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364540, 32.824520, 23.261253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266173, -0.148387, 0.952436,
		0.939101, 0.182880, 0.290938,
		-0.217352, 0.971873, 0.090673,
		40.299335, 33.116081, 23.288456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289532, 32.439209, 23.424217>,  <40.451481, 32.435772, 23.224983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289532, 32.439209, 23.424217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445610, 32.085396, 23.526466>,  <41.539257, 31.873108, 23.587816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445610, 32.085396, 23.526466>,  <41.289532, 32.439209, 23.424217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445610, 32.085396, 23.526466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337351, -0.120979, -0.933573,
		0.856703, 0.450513, 0.251193,
		0.390197, -0.884535, 0.255624,
		41.562668, 31.820036, 23.603153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954296, 32.407040, 23.037243>,  <41.289532, 32.439209, 23.424217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954296, 32.407040, 23.037243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.864525, 32.033230, 23.147732>,  <41.810661, 31.808945, 23.214025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.864525, 32.033230, 23.147732>,  <41.954296, 32.407040, 23.037243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864525, 32.033230, 23.147732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281278, -0.333509, -0.899808,
		0.933015, -0.124244, 0.337708,
		-0.224425, -0.934524, 0.276222,
		41.797199, 31.752872, 23.230598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447189, 31.987919, 22.761505>,  <41.954296, 32.407040, 23.037243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447189, 31.987919, 22.761505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.145306, 31.732119, 22.820093>,  <41.964176, 31.578638, 22.855246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.145306, 31.732119, 22.820093>,  <42.447189, 31.987919, 22.761505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145306, 31.732119, 22.820093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153075, -0.388742, -0.908542,
		0.637954, -0.663262, 0.391278,
		-0.754707, -0.639502, 0.146471,
		41.918892, 31.540268, 22.864035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787827, 31.392855, 22.738684>,  <42.447189, 31.987919, 22.761505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787827, 31.392855, 22.738684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.403843, 31.310745, 22.662428>,  <42.173454, 31.261480, 22.616674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.403843, 31.310745, 22.662428>,  <42.787827, 31.392855, 22.738684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403843, 31.310745, 22.662428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276589, -0.586395, -0.761341,
		0.044491, -0.783584, 0.619690,
		-0.959958, -0.205272, -0.190641,
		42.115856, 31.249163, 22.605236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710415, 30.582548, 22.709923>,  <42.787827, 31.392855, 22.738684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710415, 30.582548, 22.709923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.425133, 30.777384, 22.508297>,  <42.253963, 30.894285, 22.387321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.425133, 30.777384, 22.508297>,  <42.710415, 30.582548, 22.709923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425133, 30.777384, 22.508297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200814, -0.546987, -0.812698,
		-0.671576, -0.680843, 0.292299,
		-0.713204, 0.487091, -0.504066,
		42.211170, 30.923512, 22.357077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321442, 30.106710, 22.555239>,  <42.710415, 30.582548, 22.709923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321442, 30.106710, 22.555239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257153, 30.400200, 22.291172>,  <42.218578, 30.576294, 22.132732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257153, 30.400200, 22.291172>,  <42.321442, 30.106710, 22.555239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257153, 30.400200, 22.291172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141630, -0.644794, -0.751120,
		-0.976785, -0.214220, -0.000286,
		-0.160720, 0.733723, -0.660166,
		42.208935, 30.620317, 22.093122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155964, 29.704185, 22.013565>,  <42.321442, 30.106710, 22.555239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155964, 29.704185, 22.013565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.207073, 30.072208, 21.865419>,  <42.237740, 30.293022, 21.776533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.207073, 30.072208, 21.865419>,  <42.155964, 29.704185, 22.013565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207073, 30.072208, 21.865419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169278, -0.388174, -0.905906,
		-0.977250, 0.053059, -0.205344,
		0.127776, 0.920057, -0.370362,
		42.245407, 30.348227, 21.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763626, 29.693216, 21.457993>,  <42.155964, 29.704185, 22.013565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763626, 29.693216, 21.457993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005138, 30.006573, 21.399010>,  <42.150047, 30.194586, 21.363621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005138, 30.006573, 21.399010>,  <41.763626, 29.693216, 21.457993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005138, 30.006573, 21.399010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250822, -0.362287, -0.897684,
		-0.756658, 0.505023, -0.415235,
		0.603785, 0.783390, -0.147457,
		42.186275, 30.241590, 21.354773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550808, 29.996990, 20.852802>,  <41.763626, 29.693216, 21.457993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550808, 29.996990, 20.852802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.938934, 30.087017, 20.888184>,  <42.171810, 30.141033, 20.909412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.938934, 30.087017, 20.888184>,  <41.550808, 29.996990, 20.852802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938934, 30.087017, 20.888184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167068, -0.359464, -0.918082,
		-0.174833, 0.905611, -0.386397,
		0.970320, 0.225066, 0.088452,
		42.230030, 30.154537, 20.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.637230, 32.777554, 36.426968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036182, 32.783031, 36.455357>,  <39.275555, 32.786320, 36.472389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036182, 32.783031, 36.455357>,  <38.637230, 32.777554, 36.426968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036182, 32.783031, 36.455357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071996, -0.274791, -0.958805,
		0.006370, 0.961406, -0.275058,
		0.997384, 0.013695, 0.070968,
		39.335400, 32.787140, 36.476646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904259, 33.327568, 35.934292>,  <38.637230, 32.777554, 36.426968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904259, 33.327568, 35.934292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191071, 33.050278, 35.963417>,  <39.363159, 32.883904, 35.980892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191071, 33.050278, 35.963417>,  <38.904259, 33.327568, 35.934292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191071, 33.050278, 35.963417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042571, -0.147815, -0.988099,
		0.695737, 0.705401, -0.135499,
		0.717034, -0.693225, 0.072811,
		39.406181, 32.842312, 35.985260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372925, 33.512775, 35.435989>,  <38.904259, 33.327568, 35.934292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372925, 33.512775, 35.435989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424114, 33.124744, 35.518520>,  <39.454826, 32.891926, 35.568039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424114, 33.124744, 35.518520>,  <39.372925, 33.512775, 35.435989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424114, 33.124744, 35.518520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224155, -0.174367, -0.958828,
		0.966114, 0.168955, 0.195133,
		0.127974, -0.970078, 0.206331,
		39.462505, 32.833721, 35.580421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781429, 33.346512, 34.902733>,  <39.372925, 33.512775, 35.435989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781429, 33.346512, 34.902733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.684956, 32.975845, 35.018051>,  <39.627071, 32.753445, 35.087242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.684956, 32.975845, 35.018051>,  <39.781429, 33.346512, 34.902733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684956, 32.975845, 35.018051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014913, -0.293490, -0.955846,
		0.970364, -0.234838, 0.056967,
		-0.241189, -0.926669, 0.288294,
		39.612598, 32.697845, 35.104538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322708, 32.968506, 34.618988>,  <39.781429, 33.346512, 34.902733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322708, 32.968506, 34.618988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015442, 32.716599, 34.665146>,  <39.831081, 32.565453, 34.692841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015442, 32.716599, 34.665146>,  <40.322708, 32.968506, 34.618988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015442, 32.716599, 34.665146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122547, -0.321526, -0.938937,
		0.628415, -0.707117, 0.324161,
		-0.768165, -0.629767, 0.115397,
		39.784992, 32.527668, 34.699764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530392, 32.288239, 34.436222>,  <40.322708, 32.968506, 34.618988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530392, 32.288239, 34.436222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.132179, 32.305733, 34.402740>,  <39.893253, 32.316227, 34.382652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.132179, 32.305733, 34.402740>,  <40.530392, 32.288239, 34.436222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132179, 32.305733, 34.402740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054609, -0.456568, -0.888011,
		-0.077053, -0.888613, 0.452139,
		-0.995530, 0.043733, -0.083706,
		39.833519, 32.318851, 34.377628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446018, 31.689451, 34.004963>,  <40.530392, 32.288239, 34.436222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446018, 31.689451, 34.004963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126373, 31.929602, 33.992504>,  <39.934586, 32.073692, 33.985031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126373, 31.929602, 33.992504>,  <40.446018, 31.689451, 34.004963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126373, 31.929602, 33.992504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146893, -0.245228, -0.958272,
		-0.582960, -0.761192, 0.284155,
		-0.799112, 0.600375, -0.031144,
		39.886639, 32.109715, 33.983162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026272, 31.379066, 33.364967>,  <40.446018, 31.689451, 34.004963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026272, 31.379066, 33.364967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.811176, 31.709393, 33.432926>,  <39.682117, 31.907589, 33.473701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.811176, 31.709393, 33.432926>,  <40.026272, 31.379066, 33.364967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811176, 31.709393, 33.432926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407120, -0.077870, -0.910049,
		-0.738303, -0.558538, 0.378080,
		-0.537738, 0.825816, 0.169900,
		39.649857, 31.957138, 33.483894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387863, 31.113478, 33.290779>,  <40.026272, 31.379066, 33.364967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387863, 31.113478, 33.290779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357944, 31.507446, 33.228374>,  <39.339993, 31.743828, 33.190933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357944, 31.507446, 33.228374>,  <39.387863, 31.113478, 33.290779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357944, 31.507446, 33.228374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485232, -0.172623, -0.857177,
		-0.871181, 0.011591, 0.490825,
		-0.074792, 0.984920, -0.156010,
		39.335506, 31.802921, 33.181572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650303, 31.238503, 33.024803>,  <39.387863, 31.113478, 33.290779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650303, 31.238503, 33.024803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876026, 31.551592, 32.919807>,  <39.011459, 31.739445, 32.856812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876026, 31.551592, 32.919807>,  <38.650303, 31.238503, 33.024803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876026, 31.551592, 32.919807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251539, -0.139818, -0.957695,
		-0.786310, 0.606462, 0.117984,
		0.564309, 0.782722, -0.262489,
		39.045319, 31.786409, 32.841061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266499, 31.594347, 32.527599>,  <38.650303, 31.238503, 33.024803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266499, 31.594347, 32.527599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621075, 31.766844, 32.460354>,  <38.833820, 31.870342, 32.420006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621075, 31.766844, 32.460354>,  <38.266499, 31.594347, 32.527599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621075, 31.766844, 32.460354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151222, -0.073449, -0.985767,
		-0.437451, 0.899242, 0.000105,
		0.886436, 0.431241, -0.168116,
		38.887005, 31.896215, 32.409920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206532, 32.071655, 32.025047>,  <38.266499, 31.594347, 32.527599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206532, 32.071655, 32.025047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.596783, 31.984770, 32.012608>,  <38.830933, 31.932638, 32.005142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.596783, 31.984770, 32.012608>,  <38.206532, 32.071655, 32.025047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596783, 31.984770, 32.012608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050755, -0.085508, -0.995044,
		0.213477, 0.972372, -0.094448,
		0.975629, -0.217213, -0.031099,
		38.889473, 31.919605, 32.003277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849308, 32.720028, 31.824343>,  <38.206532, 32.071655, 32.025047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849308, 32.720028, 31.824343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.492111, 32.843147, 31.692991>,  <37.277794, 32.917019, 31.614182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.492111, 32.843147, 31.692991>,  <37.849308, 32.720028, 31.824343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492111, 32.843147, 31.692991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388754, -0.159820, 0.907374,
		0.226804, 0.937934, 0.262374,
		-0.892989, 0.307795, -0.328378,
		37.224213, 32.935486, 31.594479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604610, 33.214901, 32.333183>,  <37.849308, 32.720028, 31.824343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604610, 33.214901, 32.333183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273613, 33.105682, 32.136936>,  <37.075016, 33.040150, 32.019188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273613, 33.105682, 32.136936>,  <37.604610, 33.214901, 32.333183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273613, 33.105682, 32.136936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529557, 0.089107, 0.843581,
		-0.186618, 0.957866, -0.218328,
		-0.827492, -0.273045, -0.490616,
		37.025364, 33.023769, 31.989752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161976, 33.679489, 32.653210>,  <37.604610, 33.214901, 32.333183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161976, 33.679489, 32.653210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961391, 33.381409, 32.477386>,  <36.841042, 33.202560, 32.371891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961391, 33.381409, 32.477386>,  <37.161976, 33.679489, 32.653210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961391, 33.381409, 32.477386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595818, -0.070930, 0.799981,
		-0.627326, 0.663055, -0.408436,
		-0.501461, -0.745202, -0.439557,
		36.810951, 33.157848, 32.345520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493282, 33.883949, 32.595924>,  <37.161976, 33.679489, 32.653210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493282, 33.883949, 32.595924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487480, 33.484501, 32.575764>,  <36.484001, 33.244831, 32.563667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487480, 33.484501, 32.575764>,  <36.493282, 33.883949, 32.595924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487480, 33.484501, 32.575764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591751, -0.032058, 0.805483,
		-0.805990, 0.041504, -0.590472,
		-0.014502, -0.998624, -0.050399,
		36.483131, 33.184914, 32.560642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737320, 33.678551, 32.512329>,  <36.493282, 33.883949, 32.595924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737320, 33.678551, 32.512329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942959, 33.367210, 32.656475>,  <36.066341, 33.180405, 32.742962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942959, 33.367210, 32.656475>,  <35.737320, 33.678551, 32.512329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942959, 33.367210, 32.656475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581937, -0.007866, 0.813196,
		-0.630120, -0.627776, -0.456997,
		0.514099, -0.778355, 0.360369,
		36.097187, 33.133705, 32.764587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284279, 33.225716, 32.700214>,  <35.737320, 33.678551, 32.512329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284279, 33.225716, 32.700214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584381, 33.060982, 32.907101>,  <35.764442, 32.962143, 33.031235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584381, 33.060982, 32.907101>,  <35.284279, 33.225716, 32.700214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584381, 33.060982, 32.907101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579852, -0.034023, 0.814012,
		-0.317638, -0.910625, -0.264327,
		0.750252, -0.411832, 0.517220,
		35.809456, 32.937431, 33.062267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069668, 32.603207, 33.019634>,  <35.284279, 33.225716, 32.700214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069668, 32.603207, 33.019634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382580, 32.723465, 33.237865>,  <35.570328, 32.795620, 33.368805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382580, 32.723465, 33.237865>,  <35.069668, 32.603207, 33.019634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382580, 32.723465, 33.237865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541820, -0.103762, 0.834065,
		0.307372, -0.948074, 0.081727,
		0.782275, 0.300649, 0.545579,
		35.617264, 32.813660, 33.401539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083107, 32.163338, 33.509861>,  <35.069668, 32.603207, 33.019634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083107, 32.163338, 33.509861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299889, 32.473278, 33.640022>,  <35.429958, 32.659241, 33.718121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299889, 32.473278, 33.640022>,  <35.083107, 32.163338, 33.509861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299889, 32.473278, 33.640022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604365, 0.090289, 0.791575,
		0.583973, -0.625662, 0.517226,
		0.541958, 0.774852, 0.325402,
		35.462475, 32.705734, 33.737644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818459, 32.228096, 34.130920>,  <35.083107, 32.163338, 33.509861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818459, 32.228096, 34.130920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046928, 32.556206, 34.118900>,  <35.184010, 32.753071, 34.111691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046928, 32.556206, 34.118900>,  <34.818459, 32.228096, 34.130920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046928, 32.556206, 34.118900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523041, 0.391930, 0.756848,
		0.632600, -0.416579, 0.652900,
		0.571178, 0.820276, -0.030047,
		35.218281, 32.802288, 34.109886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239609, 32.256119, 34.761581>,  <34.818459, 32.228096, 34.130920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239609, 32.256119, 34.761581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160713, 32.613182, 34.599464>,  <35.113377, 32.827419, 34.502193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160713, 32.613182, 34.599464>,  <35.239609, 32.256119, 34.761581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160713, 32.613182, 34.599464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365067, 0.316803, 0.875421,
		0.909849, 0.320622, 0.263395,
		-0.197235, 0.892657, -0.405291,
		35.101543, 32.880978, 34.477879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456280, 32.679314, 35.326103>,  <35.239609, 32.256119, 34.761581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456280, 32.679314, 35.326103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238056, 32.908936, 35.081863>,  <35.107124, 33.046707, 34.935318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238056, 32.908936, 35.081863>,  <35.456280, 32.679314, 35.326103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238056, 32.908936, 35.081863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337190, 0.516656, 0.787000,
		0.767249, 0.635242, -0.088301,
		-0.545556, 0.574051, -0.610601,
		35.074390, 33.081150, 34.898682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360920, 33.321953, 35.659710>,  <35.456280, 32.679314, 35.326103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360920, 33.321953, 35.659710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063126, 33.333881, 35.392918>,  <34.884449, 33.341038, 35.232841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063126, 33.333881, 35.392918>,  <35.360920, 33.321953, 35.659710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063126, 33.333881, 35.392918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494553, 0.646487, 0.580924,
		0.448514, 0.762342, -0.466551,
		-0.744482, 0.029819, -0.666977,
		34.839783, 33.342827, 35.192825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248707, 33.937355, 35.571621>,  <35.360920, 33.321953, 35.659710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248707, 33.937355, 35.571621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905167, 33.773582, 35.448494>,  <34.699043, 33.675320, 35.374619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905167, 33.773582, 35.448494>,  <35.248707, 33.937355, 35.571621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905167, 33.773582, 35.448494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510451, 0.634021, 0.580910,
		-0.042679, 0.656039, -0.753520,
		-0.858847, -0.409428, -0.307817,
		34.647514, 33.650753, 35.356148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805813, 34.542542, 35.404484>,  <35.248707, 33.937355, 35.571621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805813, 34.542542, 35.404484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582954, 34.219761, 35.482883>,  <34.449242, 34.026093, 35.529922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582954, 34.219761, 35.482883>,  <34.805813, 34.542542, 35.404484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582954, 34.219761, 35.482883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503979, 0.516164, 0.692518,
		-0.659998, 0.287052, -0.694265,
		-0.557143, -0.806955, 0.195999,
		34.415810, 33.977673, 35.541683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110664, 34.850052, 34.818214>,  <34.805813, 34.542542, 35.404484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110664, 34.850052, 34.818214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833595, 34.975353, 34.558346>,  <34.667355, 35.050533, 34.402424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833595, 34.975353, 34.558346>,  <35.110664, 34.850052, 34.818214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833595, 34.975353, 34.558346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397667, -0.917347, -0.018323,
		-0.601715, 0.245662, 0.759993,
		-0.692676, 0.313249, -0.649673,
		34.625793, 35.069328, 34.363445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524754, 35.434738, 34.679398>,  <35.110664, 34.850052, 34.818214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524754, 35.434738, 34.679398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434601, 35.790504, 34.838463>,  <35.380508, 36.003963, 34.933903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434601, 35.790504, 34.838463>,  <35.524754, 35.434738, 34.679398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434601, 35.790504, 34.838463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129190, 0.431848, -0.892646,
		-0.965667, -0.149813, -0.212235,
		-0.225384, 0.889417, 0.397667,
		35.366985, 36.057331, 34.957764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864655, 35.825653, 34.264675>,  <35.524754, 35.434738, 34.679398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864655, 35.825653, 34.264675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157040, 36.043335, 34.429375>,  <35.332470, 36.173943, 34.528194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157040, 36.043335, 34.429375>,  <34.864655, 35.825653, 34.264675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157040, 36.043335, 34.429375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268532, 0.325306, -0.906679,
		-0.627361, 0.773316, 0.091651,
		0.730964, 0.544204, 0.411745,
		35.376328, 36.206596, 34.552898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032253, 36.406338, 33.804745>,  <34.864655, 35.825653, 34.264675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032253, 36.406338, 33.804745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352051, 36.337700, 34.035000>,  <35.543930, 36.296516, 34.173153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352051, 36.337700, 34.035000>,  <35.032253, 36.406338, 33.804745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352051, 36.337700, 34.035000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598489, 0.145965, -0.787722,
		0.051143, 0.974295, 0.219393,
		0.799497, -0.171591, 0.575640,
		35.591900, 36.286224, 34.207691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503643, 36.980461, 33.782166>,  <35.032253, 36.406338, 33.804745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503643, 36.980461, 33.782166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700645, 36.646946, 33.881962>,  <35.818848, 36.446838, 33.941837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700645, 36.646946, 33.881962>,  <35.503643, 36.980461, 33.782166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700645, 36.646946, 33.881962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627821, 0.141842, -0.765324,
		0.602729, 0.533557, 0.593325,
		0.492502, -0.833785, 0.249486,
		35.848396, 36.396809, 33.956806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261894, 37.137520, 33.719769>,  <35.503643, 36.980461, 33.782166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261894, 37.137520, 33.719769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241066, 36.738064, 33.720993>,  <36.228569, 36.498390, 33.721729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241066, 36.738064, 33.720993>,  <36.261894, 37.137520, 33.719769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241066, 36.738064, 33.720993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540888, -0.030780, -0.840531,
		0.839481, -0.042111, 0.541755,
		-0.052070, -0.998639, 0.003062,
		36.225445, 36.438473, 33.721912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924622, 36.970543, 33.503975>,  <36.261894, 37.137520, 33.719769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924622, 36.970543, 33.503975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716022, 36.634827, 33.442474>,  <36.590862, 36.433399, 33.405575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716022, 36.634827, 33.442474>,  <36.924622, 36.970543, 33.503975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716022, 36.634827, 33.442474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592389, -0.226444, -0.773174,
		0.614099, -0.494288, 0.615274,
		-0.521496, -0.839287, -0.153752,
		36.559574, 36.383041, 33.396347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378841, 36.339497, 33.419975>,  <36.924622, 36.970543, 33.503975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378841, 36.339497, 33.419975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047005, 36.221802, 33.230156>,  <36.847904, 36.151184, 33.116264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047005, 36.221802, 33.230156>,  <37.378841, 36.339497, 33.419975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047005, 36.221802, 33.230156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551097, -0.294743, -0.780653,
		0.089830, -0.909147, 0.406672,
		-0.829592, -0.294242, -0.474552,
		36.798126, 36.133530, 33.087791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570374, 35.764717, 33.004375>,  <37.378841, 36.339497, 33.419975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570374, 35.764717, 33.004375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233715, 35.893101, 32.830658>,  <37.031719, 35.970131, 32.726425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233715, 35.893101, 32.830658>,  <37.570374, 35.764717, 33.004375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233715, 35.893101, 32.830658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409280, -0.145545, -0.900726,
		-0.352310, -0.935841, -0.008867,
		-0.841646, 0.320963, -0.434298,
		36.981220, 35.989391, 32.700367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552120, 35.388477, 32.364017>,  <37.570374, 35.764717, 33.004375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552120, 35.388477, 32.364017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264744, 35.652000, 32.274750>,  <37.092316, 35.810116, 32.221188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264744, 35.652000, 32.274750>,  <37.552120, 35.388477, 32.364017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264744, 35.652000, 32.274750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182575, -0.130982, -0.974428,
		-0.671196, -0.740818, -0.026179,
		-0.718445, 0.658811, -0.223170,
		37.049210, 35.849644, 32.207798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969753, 35.043549, 31.937733>,  <37.552120, 35.388477, 32.364017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969753, 35.043549, 31.937733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991920, 35.438423, 31.877884>,  <37.005222, 35.675350, 31.841974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991920, 35.438423, 31.877884>,  <36.969753, 35.043549, 31.937733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991920, 35.438423, 31.877884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252560, -0.158837, -0.954455,
		-0.965993, 0.015105, -0.258127,
		0.055417, 0.987189, -0.149621,
		37.008545, 35.734581, 31.832998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801117, 35.147705, 31.248095>,  <36.969753, 35.043549, 31.937733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801117, 35.147705, 31.248095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937096, 35.516079, 31.324326>,  <37.018684, 35.737103, 31.370064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937096, 35.516079, 31.324326>,  <36.801117, 35.147705, 31.248095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937096, 35.516079, 31.324326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261117, 0.102249, -0.959877,
		-0.903467, 0.376073, -0.205711,
		0.339950, 0.920931, 0.190577,
		37.039082, 35.792358, 31.381498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666340, 35.548794, 30.697214>,  <36.801117, 35.147705, 31.248095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666340, 35.548794, 30.697214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963581, 35.765507, 30.854322>,  <37.141926, 35.895535, 30.948587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963581, 35.765507, 30.854322>,  <36.666340, 35.548794, 30.697214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963581, 35.765507, 30.854322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333642, 0.208824, -0.919280,
		-0.580070, 0.814165, -0.025583,
		0.743103, 0.541782, 0.392772,
		37.186512, 35.928040, 30.972155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572754, 36.199718, 30.353895>,  <36.666340, 35.548794, 30.697214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572754, 36.199718, 30.353895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946072, 36.179726, 30.496140>,  <37.170063, 36.167732, 30.581486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946072, 36.179726, 30.496140>,  <36.572754, 36.199718, 30.353895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946072, 36.179726, 30.496140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350311, 0.344504, -0.870976,
		-0.078979, 0.937454, 0.339032,
		0.933298, -0.049977, 0.355609,
		37.226063, 36.164734, 30.602821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924854, 36.871838, 30.288673>,  <36.572754, 36.199718, 30.353895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924854, 36.871838, 30.288673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199017, 36.580585, 30.291500>,  <37.363514, 36.405834, 30.293196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199017, 36.580585, 30.291500>,  <36.924854, 36.871838, 30.288673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199017, 36.580585, 30.291500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364748, 0.334915, -0.868787,
		0.630222, 0.598048, 0.495136,
		0.685404, -0.728129, 0.007066,
		37.404636, 36.362148, 30.293619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453419, 37.202221, 30.111706>,  <36.924854, 36.871838, 30.288673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453419, 37.202221, 30.111706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568409, 36.823563, 30.053436>,  <37.637402, 36.596367, 30.018475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568409, 36.823563, 30.053436>,  <37.453419, 37.202221, 30.111706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568409, 36.823563, 30.053436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388239, 0.254212, -0.885803,
		0.875573, 0.198092, 0.440604,
		0.287477, -0.946645, -0.145674,
		37.654652, 36.539570, 30.009733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064613, 37.317951, 29.849535>,  <37.453419, 37.202221, 30.111706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064613, 37.317951, 29.849535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952984, 36.952961, 29.729860>,  <37.886005, 36.733967, 29.658056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952984, 36.952961, 29.729860>,  <38.064613, 37.317951, 29.849535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952984, 36.952961, 29.729860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441156, 0.154914, -0.883959,
		0.852936, -0.378677, 0.359310,
		-0.279073, -0.912472, -0.299187,
		37.869263, 36.679218, 29.640104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668797, 37.187801, 29.456692>,  <38.064613, 37.317951, 29.849535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668797, 37.187801, 29.456692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411125, 36.905743, 29.338160>,  <38.256523, 36.736507, 29.267040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411125, 36.905743, 29.338160>,  <38.668797, 37.187801, 29.456692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411125, 36.905743, 29.338160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424889, -0.007746, -0.905212,
		0.636010, -0.709022, 0.304598,
		-0.644175, -0.705144, -0.296329,
		38.217873, 36.694199, 29.249262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098259, 36.556492, 29.060488>,  <38.668797, 37.187801, 29.456692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098259, 36.556492, 29.060488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.714680, 36.524269, 28.951725>,  <38.484531, 36.504936, 28.886467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.714680, 36.524269, 28.951725>,  <39.098259, 36.556492, 29.060488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714680, 36.524269, 28.951725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283577, -0.281677, -0.916647,
		-0.002744, -0.956122, 0.292958,
		-0.958946, -0.080561, -0.271907,
		38.426994, 36.500099, 28.870153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143299, 36.031822, 28.493366>,  <39.098259, 36.556492, 29.060488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143299, 36.031822, 28.493366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800617, 36.233894, 28.451694>,  <38.595009, 36.355137, 28.426691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800617, 36.233894, 28.451694>,  <39.143299, 36.031822, 28.493366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800617, 36.233894, 28.451694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007650, -0.214392, -0.976718,
		-0.515751, -0.835961, 0.187535,
		-0.856704, 0.505178, -0.104178,
		38.543606, 36.385448, 28.420441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711842, 35.702965, 28.029556>,  <39.143299, 36.031822, 28.493366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711842, 35.702965, 28.029556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.537170, 36.062347, 28.011276>,  <38.432369, 36.277977, 28.000307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.537170, 36.062347, 28.011276>,  <38.711842, 35.702965, 28.029556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537170, 36.062347, 28.011276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204323, -0.148525, -0.967570,
		-0.876108, -0.413179, 0.248433,
		-0.436678, 0.898456, -0.045702,
		38.406166, 36.331882, 27.997566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070347, 35.625107, 27.551630>,  <38.711842, 35.702965, 28.029556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070347, 35.625107, 27.551630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184639, 36.008068, 27.568314>,  <38.253216, 36.237846, 27.578323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184639, 36.008068, 27.568314>,  <38.070347, 35.625107, 27.551630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184639, 36.008068, 27.568314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012992, 0.039649, -0.999129,
		-0.958222, 0.286024, -0.001110,
		0.285731, 0.957402, 0.041708,
		38.270359, 36.295288, 27.580826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632889, 35.993282, 27.094263>,  <38.070347, 35.625107, 27.551630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632889, 35.993282, 27.094263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953568, 36.229279, 27.132631>,  <38.145973, 36.370876, 27.155653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953568, 36.229279, 27.132631>,  <37.632889, 35.993282, 27.094263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953568, 36.229279, 27.132631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091745, 0.037119, -0.995090,
		-0.590654, 0.806557, -0.024370,
		0.801693, 0.589990, 0.095922,
		38.194077, 36.406277, 27.161407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654812, 36.461426, 26.585371>,  <37.632889, 35.993282, 27.094263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654812, 36.461426, 26.585371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039360, 36.532265, 26.669653>,  <38.270088, 36.574768, 26.720222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039360, 36.532265, 26.669653>,  <37.654812, 36.461426, 26.585371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039360, 36.532265, 26.669653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213690, 0.002279, -0.976899,
		-0.173490, 0.984190, -0.035654,
		0.961373, 0.177101, 0.210707,
		38.327770, 36.585396, 26.732864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878262, 36.965050, 26.062897>,  <37.654812, 36.461426, 26.585371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878262, 36.965050, 26.062897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186672, 36.749897, 26.199247>,  <38.371719, 36.620804, 26.281057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186672, 36.749897, 26.199247>,  <37.878262, 36.965050, 26.062897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186672, 36.749897, 26.199247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388229, -0.027268, -0.921159,
		0.504771, 0.842578, 0.187797,
		0.771028, -0.537883, 0.340878,
		38.417980, 36.588531, 26.301510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537567, 37.333389, 25.976835>,  <37.878262, 36.965050, 26.062897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537567, 37.333389, 25.976835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649242, 36.949841, 25.997288>,  <38.716248, 36.719711, 26.009560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649242, 36.949841, 25.997288>,  <38.537567, 37.333389, 25.976835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649242, 36.949841, 25.997288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507898, 0.102269, -0.855325,
		0.814920, 0.264766, 0.515563,
		0.279187, -0.958874, 0.051133,
		38.732998, 36.662178, 26.012629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238659, 37.354286, 25.744963>,  <38.537567, 37.333389, 25.976835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238659, 37.354286, 25.744963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130596, 36.971329, 25.704138>,  <39.065758, 36.741554, 25.679644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130596, 36.971329, 25.704138>,  <39.238659, 37.354286, 25.744963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130596, 36.971329, 25.704138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481655, -0.042601, -0.875325,
		0.833680, -0.285634, 0.472641,
		-0.270158, -0.957391, -0.102061,
		39.049549, 36.684113, 25.673519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853352, 36.926624, 25.630976>,  <39.238659, 37.354286, 25.744963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853352, 36.926624, 25.630976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551216, 36.694538, 25.509111>,  <39.369934, 36.555286, 25.435993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551216, 36.694538, 25.509111>,  <39.853352, 36.926624, 25.630976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551216, 36.694538, 25.509111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485508, -0.183195, -0.854823,
		0.440170, -0.793593, 0.420073,
		-0.755336, -0.580216, -0.304658,
		39.324615, 36.520473, 25.417713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334675, 36.861130, 26.206060>,  <39.853352, 36.926624, 25.630976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334675, 36.861130, 26.206060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.720470, 36.947746, 26.266548>,  <40.951950, 36.999718, 26.302841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.720470, 36.947746, 26.266548>,  <40.334675, 36.861130, 26.206060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720470, 36.947746, 26.266548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218158, 0.330419, 0.918276,
		0.148876, -0.918659, 0.365926,
		0.964491, 0.216539, 0.151221,
		41.009819, 37.012707, 26.311914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587124, 36.401543, 26.805126>,  <40.334675, 36.861130, 26.206060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587124, 36.401543, 26.805126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809277, 36.732269, 26.769495>,  <40.942566, 36.930706, 26.748116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809277, 36.732269, 26.769495>,  <40.587124, 36.401543, 26.805126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809277, 36.732269, 26.769495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211314, 0.243915, 0.946495,
		0.804302, -0.506839, 0.310182,
		0.555378, 0.826813, -0.089079,
		40.975891, 36.980312, 26.742771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283714, 36.298645, 27.258894>,  <40.587124, 36.401543, 26.805126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283714, 36.298645, 27.258894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.185089, 36.683628, 27.213491>,  <41.125916, 36.914619, 27.186251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.185089, 36.683628, 27.213491>,  <41.283714, 36.298645, 27.258894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185089, 36.683628, 27.213491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103293, 0.090355, 0.990539,
		0.963607, 0.255952, 0.077137,
		-0.246560, 0.962458, -0.113504,
		41.111122, 36.972366, 27.179440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538101, 36.619633, 27.885303>,  <41.283714, 36.298645, 27.258894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538101, 36.619633, 27.885303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.278126, 36.890221, 27.746759>,  <41.122139, 37.052574, 27.663633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.278126, 36.890221, 27.746759>,  <41.538101, 36.619633, 27.885303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278126, 36.890221, 27.746759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243268, 0.246585, 0.938092,
		0.719997, 0.693964, 0.004297,
		-0.649943, 0.676469, -0.346359,
		41.083141, 37.093163, 27.642851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707954, 37.245068, 28.279350>,  <41.538101, 36.619633, 27.885303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707954, 37.245068, 28.279350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.336426, 37.254677, 28.131447>,  <41.113510, 37.260441, 28.042706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.336426, 37.254677, 28.131447>,  <41.707954, 37.245068, 28.279350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336426, 37.254677, 28.131447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364842, 0.114976, 0.923943,
		0.064708, 0.993078, -0.098028,
		-0.928818, 0.024021, -0.369757,
		41.057781, 37.261883, 28.020519>
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
