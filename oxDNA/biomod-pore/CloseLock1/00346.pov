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
	<24.281658, 34.708851, 35.217823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287025, 35.062294, 35.030609>,  <24.290245, 35.274361, 34.918282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287025, 35.062294, 35.030609>,  <24.281658, 34.708851, 35.217823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287025, 35.062294, 35.030609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922495, 0.169650, 0.346730,
		0.385776, -0.436414, -0.812847,
		0.013418, 0.883607, -0.468037,
		24.291052, 35.327377, 34.890198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068138, 34.798786, 35.107044>,  <24.281658, 34.708851, 35.217823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068138, 34.798786, 35.107044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906569, 35.158646, 35.040745>,  <24.809626, 35.374561, 35.000965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906569, 35.158646, 35.040745>,  <25.068138, 34.798786, 35.107044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906569, 35.158646, 35.040745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815749, 0.436230, 0.379811,
		0.414001, 0.018208, -0.910094,
		-0.403926, 0.899651, -0.165746,
		24.785391, 35.428539, 34.991020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496771, 35.256599, 34.724667>,  <25.068138, 34.798786, 35.107044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496771, 35.256599, 34.724667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302174, 35.498039, 34.977329>,  <25.185415, 35.642902, 35.128929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302174, 35.498039, 34.977329>,  <25.496771, 35.256599, 34.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302174, 35.498039, 34.977329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866940, 0.243844, 0.434690,
		0.108352, 0.759083, -0.641913,
		-0.486492, 0.603600, 0.631658,
		25.156225, 35.679119, 35.166828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513012, 35.745728, 34.226105>,  <25.496771, 35.256599, 34.724667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513012, 35.745728, 34.226105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884167, 35.817959, 34.356590>,  <26.106859, 35.861298, 34.434883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884167, 35.817959, 34.356590>,  <25.513012, 35.745728, 34.226105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884167, 35.817959, 34.356590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014546, 0.891765, -0.452264,
		-0.372576, 0.414905, 0.830085,
		0.927888, 0.180577, 0.326215,
		26.162533, 35.872131, 34.454456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562244, 36.410187, 34.616756>,  <25.513012, 35.745728, 34.226105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562244, 36.410187, 34.616756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925249, 36.320293, 34.474815>,  <26.143051, 36.266357, 34.389652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925249, 36.320293, 34.474815>,  <25.562244, 36.410187, 34.616756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925249, 36.320293, 34.474815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009932, 0.856067, -0.516770,
		0.419912, 0.465449, 0.779122,
		0.907511, -0.224736, -0.354850,
		26.197502, 36.252872, 34.368359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973133, 37.017475, 34.560345>,  <25.562244, 36.410187, 34.616756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973133, 37.017475, 34.560345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111298, 36.773556, 34.275013>,  <26.194197, 36.627205, 34.103813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111298, 36.773556, 34.275013>,  <25.973133, 37.017475, 34.560345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111298, 36.773556, 34.275013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148993, 0.786107, -0.599863,
		0.926548, 0.100918, 0.362386,
		0.345411, -0.609795, -0.713331,
		26.214922, 36.590618, 34.061012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649796, 37.250282, 34.373619>,  <25.973133, 37.017475, 34.560345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649796, 37.250282, 34.373619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466112, 37.058987, 34.074177>,  <26.355902, 36.944210, 33.894512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466112, 37.058987, 34.074177>,  <26.649796, 37.250282, 34.373619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466112, 37.058987, 34.074177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119821, 0.801669, -0.585636,
		0.880212, -0.358627, -0.310829,
		-0.459207, -0.478240, -0.748609,
		26.328350, 36.915516, 33.849594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087103, 37.397991, 33.856590>,  <26.649796, 37.250282, 34.373619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087103, 37.397991, 33.856590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722198, 37.326721, 33.709057>,  <26.503256, 37.283958, 33.620537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722198, 37.326721, 33.709057>,  <27.087103, 37.397991, 33.856590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722198, 37.326721, 33.709057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101046, 0.774723, -0.624174,
		0.396951, -0.606679, -0.688746,
		-0.912261, -0.178171, -0.368830,
		26.448521, 37.273270, 33.598408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233356, 37.417965, 33.052063>,  <27.087103, 37.397991, 33.856590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233356, 37.417965, 33.052063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837063, 37.441387, 33.101082>,  <26.599287, 37.455441, 33.130493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837063, 37.441387, 33.101082>,  <27.233356, 37.417965, 33.052063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837063, 37.441387, 33.101082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035236, 0.760573, -0.648296,
		-0.131169, -0.646607, -0.751462,
		-0.990734, 0.058558, 0.122547,
		26.539843, 37.458954, 33.137848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024611, 37.515450, 32.410927>,  <27.233356, 37.417965, 33.052063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024611, 37.515450, 32.410927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711708, 37.618492, 32.637806>,  <26.523966, 37.680317, 32.773933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711708, 37.618492, 32.637806>,  <27.024611, 37.515450, 32.410927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711708, 37.618492, 32.637806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186301, 0.772085, -0.607600,
		-0.594446, -0.580968, -0.555976,
		-0.782257, 0.257606, 0.567198,
		26.477032, 37.695774, 32.807964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327099, 37.582527, 31.900568>,  <27.024611, 37.515450, 32.410927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327099, 37.582527, 31.900568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288378, 37.797985, 32.235348>,  <26.265144, 37.927261, 32.436214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288378, 37.797985, 32.235348>,  <26.327099, 37.582527, 31.900568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288378, 37.797985, 32.235348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267418, 0.795905, -0.543160,
		-0.958706, -0.276396, 0.066997,
		-0.096804, 0.538647, 0.836952,
		26.259336, 37.959579, 32.486435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717203, 37.914055, 31.806993>,  <26.327099, 37.582527, 31.900568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717203, 37.914055, 31.806993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908054, 38.121834, 32.090549>,  <26.022564, 38.246502, 32.260685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908054, 38.121834, 32.090549>,  <25.717203, 37.914055, 31.806993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908054, 38.121834, 32.090549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234682, 0.852641, -0.466827,
		-0.846921, 0.056372, 0.528722,
		0.477126, 0.519447, 0.708890,
		26.051191, 38.277668, 32.303215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353569, 38.545807, 31.960165>,  <25.717203, 37.914055, 31.806993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353569, 38.545807, 31.960165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719633, 38.634048, 32.095108>,  <25.939272, 38.686993, 32.176075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719633, 38.634048, 32.095108>,  <25.353569, 38.545807, 31.960165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719633, 38.634048, 32.095108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066542, 0.908139, -0.413348,
		-0.397555, 0.355832, 0.845774,
		0.915162, 0.220608, 0.337357,
		25.994183, 38.700230, 32.196316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290020, 39.167320, 32.199814>,  <25.353569, 38.545807, 31.960165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290020, 39.167320, 32.199814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683491, 39.138966, 32.133652>,  <25.919573, 39.121952, 32.093956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683491, 39.138966, 32.133652>,  <25.290020, 39.167320, 32.199814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683491, 39.138966, 32.133652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038619, 0.814587, -0.578754,
		0.175762, 0.575694, 0.798552,
		0.983675, -0.070883, -0.165406,
		25.978594, 39.117699, 32.084030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605505, 39.882175, 32.222359>,  <25.290020, 39.167320, 32.199814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605505, 39.882175, 32.222359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893013, 39.671040, 32.041359>,  <26.065517, 39.544357, 31.932760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893013, 39.671040, 32.041359>,  <25.605505, 39.882175, 32.222359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893013, 39.671040, 32.041359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124527, 0.738056, -0.663149,
		0.684006, 0.420303, 0.596222,
		0.718769, -0.527844, -0.452495,
		26.108644, 39.512688, 31.905611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163427, 40.263054, 32.249535>,  <25.605505, 39.882175, 32.222359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163427, 40.263054, 32.249535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214775, 40.026756, 31.930902>,  <26.245583, 39.884979, 31.739723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214775, 40.026756, 31.930902>,  <26.163427, 40.263054, 32.249535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214775, 40.026756, 31.930902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247791, 0.796857, -0.551015,
		0.960271, -0.126654, 0.248672,
		0.128368, -0.590743, -0.796583,
		26.253286, 39.849533, 31.691927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599508, 40.597290, 31.876842>,  <26.163427, 40.263054, 32.249535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599508, 40.597290, 31.876842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473013, 40.323483, 31.614109>,  <26.397116, 40.159199, 31.456469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473013, 40.323483, 31.614109>,  <26.599508, 40.597290, 31.876842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473013, 40.323483, 31.614109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338219, 0.565523, -0.752192,
		0.886342, -0.460025, 0.052676,
		-0.316237, -0.684515, -0.656836,
		26.378141, 40.118130, 31.417059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131763, 40.577183, 31.385010>,  <26.599508, 40.597290, 31.876842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131763, 40.577183, 31.385010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796734, 40.434612, 31.219395>,  <26.595716, 40.349072, 31.120026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796734, 40.434612, 31.219395>,  <27.131763, 40.577183, 31.385010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796734, 40.434612, 31.219395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164855, 0.557641, -0.813547,
		0.520854, -0.749664, -0.408308,
		-0.837576, -0.356427, -0.414035,
		26.545462, 40.327682, 31.095184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346518, 40.445045, 30.701031>,  <27.131763, 40.577183, 31.385010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346518, 40.445045, 30.701031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948915, 40.488342, 30.707153>,  <26.710354, 40.514320, 30.710827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948915, 40.488342, 30.707153>,  <27.346518, 40.445045, 30.701031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948915, 40.488342, 30.707153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071798, 0.751999, -0.655243,
		-0.082434, -0.650217, -0.755263,
		-0.994007, 0.108240, 0.015306,
		26.650713, 40.520813, 30.711744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029795, 40.288441, 30.016132>,  <27.346518, 40.445045, 30.701031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029795, 40.288441, 30.016132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768541, 40.529079, 30.200089>,  <26.611790, 40.673462, 30.310461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768541, 40.529079, 30.200089>,  <27.029795, 40.288441, 30.016132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768541, 40.529079, 30.200089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084609, 0.661495, -0.745162,
		-0.752500, -0.447781, -0.482946,
		-0.653135, 0.601596, 0.459888,
		26.572601, 40.709557, 30.338055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619991, 40.400017, 29.512482>,  <27.029795, 40.288441, 30.016132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619991, 40.400017, 29.512482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483269, 40.682144, 29.760899>,  <26.401236, 40.851421, 29.909948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483269, 40.682144, 29.760899>,  <26.619991, 40.400017, 29.512482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483269, 40.682144, 29.760899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065139, 0.677039, -0.733059,
		-0.937510, -0.210110, -0.277360,
		-0.341807, 0.705317, 0.621044,
		26.380726, 40.893738, 29.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099974, 40.737862, 29.180483>,  <26.619991, 40.400017, 29.512482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099974, 40.737862, 29.180483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201883, 41.006115, 29.459150>,  <26.263029, 41.167065, 29.626350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201883, 41.006115, 29.459150>,  <26.099974, 40.737862, 29.180483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201883, 41.006115, 29.459150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052961, 0.709682, -0.702528,
		-0.965550, 0.215881, 0.145290,
		0.254772, 0.670631, 0.696667,
		26.278315, 41.207306, 29.668150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733578, 41.463211, 29.008551>,  <26.099974, 40.737862, 29.180483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733578, 41.463211, 29.008551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041775, 41.551342, 29.247816>,  <26.226692, 41.604221, 29.391376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041775, 41.551342, 29.247816>,  <25.733578, 41.463211, 29.008551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041775, 41.551342, 29.247816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275163, 0.731490, -0.623865,
		-0.575004, 0.645275, 0.502982,
		0.770491, 0.220323, 0.598165,
		26.272923, 41.617439, 29.427265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711363, 42.158703, 29.158197>,  <25.733578, 41.463211, 29.008551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711363, 42.158703, 29.158197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093975, 42.045345, 29.185743>,  <26.323542, 41.977333, 29.202271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093975, 42.045345, 29.185743>,  <25.711363, 42.158703, 29.158197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093975, 42.045345, 29.185743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262114, 0.731859, -0.629030,
		0.127860, 0.619736, 0.774325,
		0.956529, -0.283390, 0.068866,
		26.380934, 41.960327, 29.206404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988358, 42.808010, 29.226805>,  <25.711363, 42.158703, 29.158197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988358, 42.808010, 29.226805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271729, 42.549427, 29.113510>,  <26.441751, 42.394276, 29.045532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271729, 42.549427, 29.113510>,  <25.988358, 42.808010, 29.226805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271729, 42.549427, 29.113510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294560, 0.635499, -0.713705,
		0.641376, 0.422178, 0.640626,
		0.708428, -0.646456, -0.283238,
		26.484257, 42.355492, 29.028540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818935, 42.946175, 29.386633>,  <25.988358, 42.808010, 29.226805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818935, 42.946175, 29.386633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717333, 42.769394, 29.042503>,  <26.656372, 42.663326, 28.836025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717333, 42.769394, 29.042503>,  <26.818935, 42.946175, 29.386633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717333, 42.769394, 29.042503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285033, 0.815791, -0.503231,
		0.924249, -0.373045, -0.081244,
		-0.254006, -0.441953, -0.860324,
		26.641130, 42.636806, 28.784407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797508, 43.440590, 28.781517>,  <26.818935, 42.946175, 29.386633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797508, 43.440590, 28.781517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703770, 43.369125, 28.399279>,  <26.647526, 43.326248, 28.169935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703770, 43.369125, 28.399279>,  <26.797508, 43.440590, 28.781517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703770, 43.369125, 28.399279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972118, -0.051442, -0.228782,
		-0.008284, -0.982566, 0.185731,
		-0.234348, -0.178657, -0.955595,
		26.633465, 43.315529, 28.112600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427362, 43.351925, 28.598362>,  <26.797508, 43.440590, 28.781517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427362, 43.351925, 28.598362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225151, 43.337555, 28.253538>,  <27.103825, 43.328934, 28.046644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225151, 43.337555, 28.253538>,  <27.427362, 43.351925, 28.598362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225151, 43.337555, 28.253538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860213, -0.098429, -0.500345,
		-0.066877, -0.994496, 0.080661,
		-0.505530, -0.035923, -0.862061,
		27.073492, 43.326778, 27.994921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578247, 42.629036, 28.347399>,  <27.427362, 43.351925, 28.598362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578247, 42.629036, 28.347399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520945, 42.889660, 28.049421>,  <27.486563, 43.046036, 27.870634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520945, 42.889660, 28.049421>,  <27.578247, 42.629036, 28.347399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520945, 42.889660, 28.049421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913450, -0.202646, -0.352907,
		-0.380901, -0.731026, -0.566141,
		-0.143258, 0.651564, -0.744944,
		27.477966, 43.085129, 27.825937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784899, 42.423977, 27.737041>,  <27.578247, 42.629036, 28.347399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784899, 42.423977, 27.737041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826590, 42.817959, 27.681910>,  <27.851604, 43.054348, 27.648830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826590, 42.817959, 27.681910>,  <27.784899, 42.423977, 27.737041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826590, 42.817959, 27.681910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851041, -0.160038, -0.500117,
		-0.514652, -0.065172, -0.854919,
		0.104226, 0.984957, -0.137828,
		27.857857, 43.113445, 27.640562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872952, 42.595505, 27.046181>,  <27.784899, 42.423977, 27.737041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872952, 42.595505, 27.046181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061426, 42.885933, 27.246502>,  <28.174511, 43.060188, 27.366695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061426, 42.885933, 27.246502>,  <27.872952, 42.595505, 27.046181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061426, 42.885933, 27.246502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822550, -0.156736, -0.546668,
		-0.318424, 0.669520, -0.671081,
		0.471187, 0.726070, 0.500804,
		28.202782, 43.103752, 27.396744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929615, 42.509338, 26.355137>,  <27.872952, 42.595505, 27.046181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929615, 42.509338, 26.355137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054939, 42.337475, 26.016380>,  <28.130133, 42.234356, 25.813126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054939, 42.337475, 26.016380>,  <27.929615, 42.509338, 26.355137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054939, 42.337475, 26.016380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022963, -0.888106, 0.459065,
		-0.949373, -0.163277, -0.268386,
		0.313309, -0.429661, -0.846894,
		28.148932, 42.208576, 25.762312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536013, 41.982208, 26.298931>,  <27.929615, 42.509338, 26.355137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536013, 41.982208, 26.298931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885971, 41.909981, 26.119177>,  <28.095947, 41.866642, 26.011324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885971, 41.909981, 26.119177>,  <27.536013, 41.982208, 26.298931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885971, 41.909981, 26.119177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213201, -0.689549, 0.692147,
		-0.434856, -0.701367, -0.564787,
		0.874898, -0.180571, -0.449387,
		28.148441, 41.855808, 25.984362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527912, 41.218563, 26.126682>,  <27.536013, 41.982208, 26.298931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527912, 41.218563, 26.126682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891354, 41.380077, 26.169376>,  <28.109419, 41.476986, 26.194992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891354, 41.380077, 26.169376>,  <27.527912, 41.218563, 26.126682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891354, 41.380077, 26.169376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234618, -0.704882, 0.669399,
		0.345533, -0.583177, -0.735195,
		0.908604, 0.403790, 0.106736,
		28.163935, 41.501213, 26.201397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034752, 40.806778, 26.204226>,  <27.527912, 41.218563, 26.126682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034752, 40.806778, 26.204226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199570, 41.119720, 26.391048>,  <28.298460, 41.307484, 26.503141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199570, 41.119720, 26.391048>,  <28.034752, 40.806778, 26.204226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199570, 41.119720, 26.391048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324913, -0.605056, 0.726869,
		0.851265, -0.147749, -0.503507,
		0.412044, 0.782354, 0.467057,
		28.323183, 41.354427, 26.531166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711382, 40.663017, 26.283957>,  <28.034752, 40.806778, 26.204226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711382, 40.663017, 26.283957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580982, 40.903847, 26.575499>,  <28.502743, 41.048344, 26.750423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580982, 40.903847, 26.575499>,  <28.711382, 40.663017, 26.283957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580982, 40.903847, 26.575499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344658, -0.642216, 0.684668,
		0.880303, 0.474408, 0.001853,
		-0.326002, 0.602077, 0.728853,
		28.483181, 41.084469, 26.794155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220718, 40.876274, 26.720837>,  <28.711382, 40.663017, 26.283957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220718, 40.876274, 26.720837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882431, 40.895313, 26.933439>,  <28.679459, 40.906738, 27.061001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882431, 40.895313, 26.933439>,  <29.220718, 40.876274, 26.720837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882431, 40.895313, 26.933439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432270, -0.522916, 0.734644,
		0.312901, 0.851054, 0.421663,
		-0.845716, 0.047598, 0.531506,
		28.628716, 40.909592, 27.092892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400620, 41.135159, 27.338907>,  <29.220718, 40.876274, 26.720837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400620, 41.135159, 27.338907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058100, 40.939816, 27.406147>,  <28.852589, 40.822609, 27.446491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058100, 40.939816, 27.406147>,  <29.400620, 41.135159, 27.338907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058100, 40.939816, 27.406147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448864, -0.542673, 0.709949,
		-0.255485, 0.683383, 0.683897,
		-0.856299, -0.488358, 0.168101,
		28.801210, 40.793308, 27.456577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558636, 40.918915, 28.089558>,  <29.400620, 41.135159, 27.338907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558636, 40.918915, 28.089558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219206, 40.729191, 27.995790>,  <29.015549, 40.615356, 27.939529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219206, 40.729191, 27.995790>,  <29.558636, 40.918915, 28.089558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219206, 40.729191, 27.995790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121971, -0.606512, 0.785663,
		-0.514827, 0.638100, 0.572522,
		-0.848573, -0.474311, -0.234419,
		28.964634, 40.586899, 27.925465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047318, 40.850166, 28.684931>,  <29.558636, 40.918915, 28.089558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047318, 40.850166, 28.684931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001907, 40.545036, 28.430309>,  <28.974661, 40.361958, 28.277536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001907, 40.545036, 28.430309>,  <29.047318, 40.850166, 28.684931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001907, 40.545036, 28.430309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041169, -0.636536, 0.770147,
		-0.992682, 0.113638, 0.040859,
		-0.113526, -0.762829, -0.636556,
		28.967850, 40.316189, 28.239342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775396, 40.388889, 29.106697>,  <29.047318, 40.850166, 28.684931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775396, 40.388889, 29.106697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885185, 40.155289, 28.801119>,  <28.951059, 40.015129, 28.617773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885185, 40.155289, 28.801119>,  <28.775396, 40.388889, 29.106697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885185, 40.155289, 28.801119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088230, -0.775808, 0.624769,
		-0.957539, -0.238885, -0.161412,
		0.274472, -0.583999, -0.763943,
		28.967527, 39.980087, 28.571936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349997, 39.766087, 29.070345>,  <28.775396, 40.388889, 29.106697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349997, 39.766087, 29.070345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670834, 39.631786, 28.872793>,  <28.863337, 39.551205, 28.754263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670834, 39.631786, 28.872793>,  <28.349997, 39.766087, 29.070345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670834, 39.631786, 28.872793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051714, -0.862935, 0.502661,
		-0.594954, -0.377641, -0.709519,
		0.802095, -0.335752, -0.493878,
		28.911463, 39.531059, 28.724630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116287, 39.112423, 28.751976>,  <28.349997, 39.766087, 29.070345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116287, 39.112423, 28.751976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515732, 39.110619, 28.772957>,  <28.755400, 39.109535, 28.785545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515732, 39.110619, 28.772957>,  <28.116287, 39.112423, 28.751976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515732, 39.110619, 28.772957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029086, -0.877704, 0.478319,
		0.043880, -0.479182, -0.876618,
		0.998613, -0.004509, 0.052451,
		28.815315, 39.109264, 28.788692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319874, 38.528500, 28.506361>,  <28.116287, 39.112423, 28.751976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319874, 38.528500, 28.506361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629011, 38.639324, 28.734730>,  <28.814493, 38.705818, 28.871750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629011, 38.639324, 28.734730>,  <28.319874, 38.528500, 28.506361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629011, 38.639324, 28.734730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165824, -0.956571, 0.239737,
		0.612548, -0.090607, -0.785223,
		0.772844, 0.277060, 0.570921,
		28.860865, 38.722443, 28.906006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840502, 37.994919, 28.399334>,  <28.319874, 38.528500, 28.506361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840502, 37.994919, 28.399334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934185, 38.184586, 28.738819>,  <28.990395, 38.298386, 28.942511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934185, 38.184586, 28.738819>,  <28.840502, 37.994919, 28.399334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934185, 38.184586, 28.738819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156979, -0.879983, 0.448316,
		0.959429, 0.028231, -0.280533,
		0.234208, 0.474165, 0.848713,
		29.004448, 38.326836, 28.993433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178301, 37.501400, 28.811871>,  <28.840502, 37.994919, 28.399334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178301, 37.501400, 28.811871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152748, 37.776962, 29.100685>,  <29.137417, 37.942299, 29.273973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152748, 37.776962, 29.100685>,  <29.178301, 37.501400, 28.811871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152748, 37.776962, 29.100685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148366, -0.722028, 0.675768,
		0.986867, -0.063957, 0.148332,
		-0.063880, 0.688901, 0.722035,
		29.133585, 37.983631, 29.317295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618788, 37.299271, 29.361462>,  <29.178301, 37.501400, 28.811871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618788, 37.299271, 29.361462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354706, 37.541714, 29.538893>,  <29.196257, 37.687180, 29.645351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354706, 37.541714, 29.538893>,  <29.618788, 37.299271, 29.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354706, 37.541714, 29.538893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220850, -0.721133, 0.656652,
		0.717880, 0.335562, 0.609956,
		-0.660207, 0.606107, 0.443579,
		29.156643, 37.723545, 29.671967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753660, 37.269543, 30.078947>,  <29.618788, 37.299271, 29.361462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753660, 37.269543, 30.078947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386517, 37.428291, 30.081179>,  <29.166231, 37.523540, 30.082518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386517, 37.428291, 30.081179>,  <29.753660, 37.269543, 30.078947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386517, 37.428291, 30.081179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262550, -0.617634, 0.741347,
		0.297662, 0.678988, 0.671098,
		-0.917859, 0.396868, 0.005578,
		29.111158, 37.547352, 30.082851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617195, 37.498074, 30.800699>,  <29.753660, 37.269543, 30.078947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617195, 37.498074, 30.800699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274755, 37.448036, 30.600121>,  <29.069292, 37.418015, 30.479774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274755, 37.448036, 30.600121>,  <29.617195, 37.498074, 30.800699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274755, 37.448036, 30.600121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326375, -0.621448, 0.712237,
		-0.400716, 0.773404, 0.491195,
		-0.856099, -0.125091, -0.501445,
		29.017925, 37.410507, 30.449688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038893, 37.647652, 31.343227>,  <29.617195, 37.498074, 30.800699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038893, 37.647652, 31.343227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877745, 37.435001, 31.045216>,  <28.781055, 37.307411, 30.866409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877745, 37.435001, 31.045216>,  <29.038893, 37.647652, 31.343227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877745, 37.435001, 31.045216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426233, -0.611376, 0.666742,
		-0.809952, 0.586165, 0.019707,
		-0.402869, -0.531629, -0.745028,
		28.756884, 37.275513, 30.821707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279043, 37.474316, 31.555269>,  <29.038893, 37.647652, 31.343227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279043, 37.474316, 31.555269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353056, 37.204754, 31.269161>,  <28.397465, 37.043015, 31.097496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353056, 37.204754, 31.269161>,  <28.279043, 37.474316, 31.555269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353056, 37.204754, 31.269161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509925, -0.688028, 0.516328,
		-0.840083, 0.269196, -0.470949,
		0.185032, -0.673908, -0.715270,
		28.408566, 37.002583, 31.054581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620115, 37.128929, 31.349382>,  <28.279043, 37.474316, 31.555269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620115, 37.128929, 31.349382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927521, 36.882275, 31.281099>,  <28.111963, 36.734280, 31.240129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927521, 36.882275, 31.281099>,  <27.620115, 37.128929, 31.349382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927521, 36.882275, 31.281099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385211, -0.658939, 0.646074,
		-0.510881, -0.430759, -0.743940,
		0.768514, -0.616641, -0.170707,
		28.158075, 36.697281, 31.229887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221632, 36.574696, 31.146511>,  <27.620115, 37.128929, 31.349382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221632, 36.574696, 31.146511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590046, 36.443474, 31.230494>,  <27.811094, 36.364742, 31.280884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590046, 36.443474, 31.230494>,  <27.221632, 36.574696, 31.146511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590046, 36.443474, 31.230494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388206, -0.816861, 0.426655,
		0.031541, -0.474470, -0.879706,
		0.921033, -0.328050, 0.209957,
		27.866356, 36.345058, 31.293480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179697, 35.796547, 31.080896>,  <27.221632, 36.574696, 31.146511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179697, 35.796547, 31.080896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511375, 35.862053, 31.294666>,  <27.710382, 35.901356, 31.422928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511375, 35.862053, 31.294666>,  <27.179697, 35.796547, 31.080896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511375, 35.862053, 31.294666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172439, -0.834532, 0.523279,
		0.531691, -0.526058, -0.663752,
		0.829198, 0.163766, 0.534426,
		27.760136, 35.911182, 31.454994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495811, 35.170807, 31.151981>,  <27.179697, 35.796547, 31.080896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495811, 35.170807, 31.151981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652227, 35.383228, 31.452667>,  <27.746077, 35.510681, 31.633078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652227, 35.383228, 31.452667>,  <27.495811, 35.170807, 31.151981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652227, 35.383228, 31.452667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128220, -0.777350, 0.615863,
		0.911398, -0.337212, -0.235885,
		0.391041, 0.531051, 0.751712,
		27.769541, 35.542545, 31.678181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043837, 34.815693, 31.437275>,  <27.495811, 35.170807, 31.151981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043837, 34.815693, 31.437275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895676, 35.058495, 31.718515>,  <27.806780, 35.204174, 31.887259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895676, 35.058495, 31.718515>,  <28.043837, 34.815693, 31.437275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895676, 35.058495, 31.718515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073267, -0.773673, 0.629335,
		0.925977, 0.181592, 0.331044,
		-0.370402, 0.607004, 0.703099,
		27.784555, 35.240597, 31.929445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233751, 34.545906, 32.117096>,  <28.043837, 34.815693, 31.437275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233751, 34.545906, 32.117096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908943, 34.769421, 32.184490>,  <27.714058, 34.903530, 32.224926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908943, 34.769421, 32.184490>,  <28.233751, 34.545906, 32.117096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908943, 34.769421, 32.184490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344286, -0.691720, 0.634815,
		0.471265, 0.457476, 0.754072,
		-0.812019, 0.558783, 0.168481,
		27.665337, 34.937054, 32.235035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544140, 34.680775, 32.746376>,  <28.233751, 34.545906, 32.117096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544140, 34.680775, 32.746376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792244, 34.635147, 33.056801>,  <28.941107, 34.607769, 33.243053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792244, 34.635147, 33.056801>,  <28.544140, 34.680775, 32.746376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792244, 34.635147, 33.056801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650818, 0.477425, 0.590339,
		-0.437851, -0.871236, 0.221887,
		0.620260, -0.114072, 0.776058,
		28.978321, 34.600925, 33.289619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327871, 34.828228, 32.637691>,  <28.544140, 34.680775, 32.746376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327871, 34.828228, 32.637691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652037, 35.017044, 32.498890>,  <29.846535, 35.130333, 32.415607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652037, 35.017044, 32.498890>,  <29.327871, 34.828228, 32.637691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652037, 35.017044, 32.498890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528530, -0.333532, 0.780649,
		0.252760, -0.816049, -0.519786,
		0.810412, 0.472039, -0.347003,
		29.895161, 35.158657, 32.394791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909561, 34.306244, 32.554264>,  <29.327871, 34.828228, 32.637691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909561, 34.306244, 32.554264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036621, 34.676991, 32.634281>,  <30.112856, 34.899437, 32.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036621, 34.676991, 32.634281>,  <29.909561, 34.306244, 32.554264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036621, 34.676991, 32.634281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635288, -0.364648, 0.680764,
		0.703924, -0.089158, -0.704657,
		0.317648, 0.926867, 0.200044,
		30.131916, 34.955051, 32.694294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630760, 34.212036, 32.576580>,  <29.909561, 34.306244, 32.554264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630760, 34.212036, 32.576580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464521, 34.495670, 32.804432>,  <30.364779, 34.665852, 32.941143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464521, 34.495670, 32.804432>,  <30.630760, 34.212036, 32.576580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464521, 34.495670, 32.804432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611940, -0.245352, 0.751886,
		0.672911, 0.661060, -0.331950,
		-0.415597, 0.709085, 0.569629,
		30.339842, 34.708397, 32.975319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109358, 34.753803, 32.805550>,  <30.630760, 34.212036, 32.576580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109358, 34.753803, 32.805550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818325, 34.695751, 33.073746>,  <30.643705, 34.660919, 33.234665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818325, 34.695751, 33.073746>,  <31.109358, 34.753803, 32.805550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818325, 34.695751, 33.073746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650150, -0.457784, 0.606415,
		0.218931, 0.877138, 0.427433,
		-0.727581, -0.145133, 0.670494,
		30.600050, 34.652210, 33.274895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472095, 34.778416, 33.462234>,  <31.109358, 34.753803, 32.805550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472095, 34.778416, 33.462234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137163, 34.582790, 33.559959>,  <30.936203, 34.465416, 33.618595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137163, 34.582790, 33.559959>,  <31.472095, 34.778416, 33.462234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137163, 34.582790, 33.559959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484087, -0.455617, 0.747042,
		-0.254038, 0.743793, 0.618253,
		-0.837332, -0.489065, 0.244316,
		30.885963, 34.436069, 33.633255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512266, 34.443485, 34.207256>,  <31.472095, 34.778416, 33.462234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512266, 34.443485, 34.207256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222124, 34.225437, 34.039112>,  <31.048038, 34.094608, 33.938225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222124, 34.225437, 34.039112>,  <31.512266, 34.443485, 34.207256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222124, 34.225437, 34.039112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141773, -0.715873, 0.683687,
		-0.673616, 0.436321, 0.596545,
		-0.725357, -0.545116, -0.420364,
		31.004517, 34.061901, 33.913002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020592, 34.223076, 34.771469>,  <31.512266, 34.443485, 34.207256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020592, 34.223076, 34.771469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071758, 33.972672, 34.463768>,  <31.102459, 33.822430, 34.279148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071758, 33.972672, 34.463768>,  <31.020592, 34.223076, 34.771469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071758, 33.972672, 34.463768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037850, -0.771980, 0.634519,
		-0.991062, -0.110283, -0.075056,
		0.127918, -0.626007, -0.769254,
		31.110134, 33.784870, 34.232990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732618, 34.484760, 35.300179>,  <31.020592, 34.223076, 34.771469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732618, 34.484760, 35.300179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090506, 34.306225, 35.293686>,  <31.305239, 34.199104, 35.289791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090506, 34.306225, 35.293686>,  <30.732618, 34.484760, 35.300179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090506, 34.306225, 35.293686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153453, -0.341341, 0.927329,
		-0.419443, -0.827206, -0.373895,
		0.894718, -0.446337, -0.016236,
		31.358921, 34.172325, 35.288815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607592, 33.820133, 35.664505>,  <30.732618, 34.484760, 35.300179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607592, 33.820133, 35.664505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002644, 33.875851, 35.635700>,  <31.239676, 33.909283, 35.618420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002644, 33.875851, 35.635700>,  <30.607592, 33.820133, 35.664505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002644, 33.875851, 35.635700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110548, -0.292829, 0.949753,
		0.111211, -0.945964, -0.304605,
		0.987629, 0.139297, -0.072008,
		31.298933, 33.917641, 35.614098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986338, 33.275791, 35.926575>,  <30.607592, 33.820133, 35.664505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986338, 33.275791, 35.926575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261644, 33.565292, 35.946442>,  <31.426828, 33.738995, 35.958363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261644, 33.565292, 35.946442>,  <30.986338, 33.275791, 35.926575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261644, 33.565292, 35.946442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205759, -0.260403, 0.943321,
		0.695668, -0.639035, -0.328146,
		0.688265, 0.723757, 0.049667,
		31.468124, 33.782421, 35.961342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402237, 33.017910, 36.336384>,  <30.986338, 33.275791, 35.926575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402237, 33.017910, 36.336384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503092, 33.401367, 36.389191>,  <31.563604, 33.631443, 36.420876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503092, 33.401367, 36.389191>,  <31.402237, 33.017910, 36.336384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503092, 33.401367, 36.389191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428650, -0.232957, 0.872920,
		0.867574, -0.163507, -0.469660,
		0.252139, 0.958643, 0.132020,
		31.578733, 33.688961, 36.428795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113441, 33.003662, 36.427635>,  <31.402237, 33.017910, 36.336384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113441, 33.003662, 36.427635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947618, 33.332184, 36.584404>,  <31.848125, 33.529297, 36.678467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947618, 33.332184, 36.584404>,  <32.113441, 33.003662, 36.427635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947618, 33.332184, 36.584404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458695, -0.183381, 0.869465,
		0.785967, 0.540215, -0.300707,
		-0.414554, 0.821304, 0.391925,
		31.823252, 33.578575, 36.701981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656998, 33.417145, 36.764118>,  <32.113441, 33.003662, 36.427635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656998, 33.417145, 36.764118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362957, 33.632042, 36.929520>,  <32.186531, 33.760979, 37.028763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362957, 33.632042, 36.929520>,  <32.656998, 33.417145, 36.764118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362957, 33.632042, 36.929520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479393, -0.019360, 0.877387,
		0.479376, 0.843205, -0.243319,
		-0.735106, 0.537243, 0.413507,
		32.142426, 33.793217, 37.053574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987331, 33.786736, 37.256966>,  <32.656998, 33.417145, 36.764118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987331, 33.786736, 37.256966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606712, 33.770466, 37.378887>,  <32.378342, 33.760704, 37.452042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606712, 33.770466, 37.378887>,  <32.987331, 33.786736, 37.256966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606712, 33.770466, 37.378887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307504, -0.130099, 0.942611,
		0.001315, 0.990666, 0.136303,
		-0.951546, -0.040674, 0.304805,
		32.321247, 33.758263, 37.470329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014236, 33.957249, 37.922993>,  <32.987331, 33.786736, 37.256966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014236, 33.957249, 37.922993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661156, 33.769627, 37.911499>,  <32.449306, 33.657055, 37.904602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661156, 33.769627, 37.911499>,  <33.014236, 33.957249, 37.922993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661156, 33.769627, 37.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089282, -0.227427, 0.969694,
		-0.461372, 0.853386, 0.242628,
		-0.882703, -0.469052, -0.028736,
		32.396343, 33.628910, 37.902878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747547, 34.221828, 38.550346>,  <33.014236, 33.957249, 37.922993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747547, 34.221828, 38.550346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520851, 33.909958, 38.443832>,  <32.384834, 33.722836, 38.379925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520851, 33.909958, 38.443832>,  <32.747547, 34.221828, 38.550346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520851, 33.909958, 38.443832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121651, -0.240465, 0.963004,
		-0.814868, 0.578164, 0.041432,
		-0.566738, -0.779681, -0.266281,
		32.350830, 33.676052, 38.363949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176086, 34.150127, 39.045616>,  <32.747547, 34.221828, 38.550346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176086, 34.150127, 39.045616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185387, 33.791115, 38.869480>,  <32.190968, 33.575706, 38.763798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185387, 33.791115, 38.869480>,  <32.176086, 34.150127, 39.045616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185387, 33.791115, 38.869480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215200, -0.434625, 0.874523,
		-0.976293, 0.074430, -0.203253,
		0.023248, -0.897531, -0.440339,
		32.192360, 33.521854, 38.737377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651634, 33.711090, 39.421051>,  <32.176086, 34.150127, 39.045616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651634, 33.711090, 39.421051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900043, 33.454575, 39.240795>,  <32.049088, 33.300667, 39.132641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900043, 33.454575, 39.240795>,  <31.651634, 33.711090, 39.421051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900043, 33.454575, 39.240795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004827, -0.571813, 0.820370,
		-0.783777, -0.511644, -0.352014,
		0.621023, -0.641288, -0.450644,
		32.086349, 33.262188, 39.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419035, 33.096935, 39.585354>,  <31.651634, 33.711090, 39.421051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419035, 33.096935, 39.585354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788082, 32.996750, 39.468021>,  <32.009510, 32.936638, 39.397621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788082, 32.996750, 39.468021>,  <31.419035, 33.096935, 39.585354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788082, 32.996750, 39.468021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086087, -0.607594, 0.789568,
		-0.375988, -0.753721, -0.539015,
		0.922617, -0.250466, -0.293334,
		32.064869, 32.921612, 39.380020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406326, 32.371807, 39.465351>,  <31.419035, 33.096935, 39.585354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406326, 32.371807, 39.465351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785727, 32.484940, 39.522411>,  <32.013367, 32.552818, 39.556648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785727, 32.484940, 39.522411>,  <31.406326, 32.371807, 39.465351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785727, 32.484940, 39.522411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048176, -0.573894, 0.817511,
		0.313088, -0.768538, -0.557965,
		0.948501, 0.282834, 0.142655,
		32.070278, 32.569790, 39.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836332, 31.795486, 39.554676>,  <31.406326, 32.371807, 39.465351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836332, 31.795486, 39.554676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033401, 32.094906, 39.732193>,  <32.151642, 32.274555, 39.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033401, 32.094906, 39.732193>,  <31.836332, 31.795486, 39.554676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033401, 32.094906, 39.732193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047822, -0.532501, 0.845078,
		0.868901, -0.395122, -0.298144,
		0.492671, 0.748546, 0.443795,
		32.181202, 32.319469, 39.865330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236996, 31.539970, 40.028152>,  <31.836332, 31.795486, 39.554676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236996, 31.539970, 40.028152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254745, 31.913818, 40.169300>,  <32.265396, 32.138126, 40.253986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254745, 31.913818, 40.169300>,  <32.236996, 31.539970, 40.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254745, 31.913818, 40.169300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070842, -0.355269, 0.932076,
		0.996500, -0.016360, -0.081974,
		0.044371, 0.934621, 0.352866,
		32.268059, 32.194206, 40.275162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879593, 31.502169, 40.543209>,  <32.236996, 31.539970, 40.028152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879593, 31.502169, 40.543209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626789, 31.800180, 40.628525>,  <32.475105, 31.978987, 40.679714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626789, 31.800180, 40.628525>,  <32.879593, 31.502169, 40.543209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626789, 31.800180, 40.628525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067057, -0.221618, 0.972825,
		0.772050, 0.629141, 0.090106,
		-0.632014, 0.745028, 0.213288,
		32.437183, 32.023689, 40.692513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192444, 31.979311, 41.025715>,  <32.879593, 31.502169, 40.543209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192444, 31.979311, 41.025715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799877, 32.043087, 41.068413>,  <32.564335, 32.081352, 41.094032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799877, 32.043087, 41.068413>,  <33.192444, 31.979311, 41.025715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799877, 32.043087, 41.068413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063732, -0.253874, 0.965135,
		0.180984, 0.954005, 0.238995,
		-0.981419, 0.159442, 0.106748,
		32.505451, 32.090919, 41.100437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054413, 32.346188, 41.688896>,  <33.192444, 31.979311, 41.025715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054413, 32.346188, 41.688896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709682, 32.158390, 41.612137>,  <32.502842, 32.045712, 41.566082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709682, 32.158390, 41.612137>,  <33.054413, 32.346188, 41.688896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709682, 32.158390, 41.612137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064774, -0.273371, 0.959725,
		-0.503047, 0.839549, 0.205188,
		-0.861828, -0.469496, -0.191899,
		32.451134, 32.017540, 41.554565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506592, 32.615391, 42.184799>,  <33.054413, 32.346188, 41.688896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506592, 32.615391, 42.184799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348232, 32.277557, 42.040611>,  <32.253216, 32.074856, 41.954098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348232, 32.277557, 42.040611>,  <32.506592, 32.615391, 42.184799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348232, 32.277557, 42.040611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217824, -0.294970, 0.930347,
		-0.892085, 0.446843, -0.067192,
		-0.395899, -0.844585, -0.360472,
		32.229462, 32.024181, 41.932468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841833, 32.707520, 42.414169>,  <32.506592, 32.615391, 42.184799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841833, 32.707520, 42.414169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893391, 32.321484, 42.322971>,  <31.924324, 32.089863, 42.268253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893391, 32.321484, 42.322971>,  <31.841833, 32.707520, 42.414169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893391, 32.321484, 42.322971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247493, -0.253941, 0.935019,
		-0.960278, -0.064090, -0.271585,
		0.128892, -0.965094, -0.227992,
		31.932058, 32.031956, 42.254574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241034, 32.261143, 42.605793>,  <31.841833, 32.707520, 42.414169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241034, 32.261143, 42.605793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545923, 32.002834, 42.587963>,  <31.728857, 31.847849, 42.577267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545923, 32.002834, 42.587963>,  <31.241034, 32.261143, 42.605793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545923, 32.002834, 42.587963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316299, -0.431645, 0.844770,
		-0.564772, -0.629806, -0.533269,
		0.762225, -0.645775, -0.044574,
		31.774591, 31.809103, 42.574593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953848, 31.730883, 43.029312>,  <31.241034, 32.261143, 42.605793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953848, 31.730883, 43.029312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331749, 31.606127, 42.988979>,  <31.558491, 31.531273, 42.964779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331749, 31.606127, 42.988979>,  <30.953848, 31.730883, 43.029312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331749, 31.606127, 42.988979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135086, -0.650746, 0.747182,
		-0.298651, -0.692282, -0.656926,
		0.944754, -0.311889, -0.100828,
		31.615175, 31.512560, 42.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942957, 30.984867, 42.930416>,  <30.953848, 31.730883, 43.029312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942957, 30.984867, 42.930416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305468, 31.082659, 43.068340>,  <31.522974, 31.141335, 43.151096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305468, 31.082659, 43.068340>,  <30.942957, 30.984867, 42.930416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305468, 31.082659, 43.068340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201091, -0.468149, 0.860465,
		0.371788, -0.849156, -0.375109,
		0.906276, 0.244479, 0.344810,
		31.577351, 31.156002, 43.171783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251854, 30.347683, 43.195396>,  <30.942957, 30.984867, 42.930416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251854, 30.347683, 43.195396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480633, 30.639803, 43.344814>,  <31.617901, 30.815075, 43.434467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480633, 30.639803, 43.344814>,  <31.251854, 30.347683, 43.195396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480633, 30.639803, 43.344814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006154, -0.451553, 0.892223,
		0.820266, -0.512605, -0.253771,
		0.571949, 0.730299, 0.373549,
		31.652218, 30.858892, 43.456879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927536, 30.166437, 43.285275>,  <31.251854, 30.347683, 43.195396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927536, 30.166437, 43.285275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841166, 30.441133, 43.562912>,  <31.789343, 30.605951, 43.729492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841166, 30.441133, 43.562912>,  <31.927536, 30.166437, 43.285275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841166, 30.441133, 43.562912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149332, -0.679270, 0.718535,
		0.964922, 0.258801, 0.044120,
		-0.215927, 0.686742, 0.694090,
		31.776388, 30.647156, 43.771137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312214, 29.904797, 43.806221>,  <31.927536, 30.166437, 43.285275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312214, 29.904797, 43.806221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108349, 30.195295, 43.990742>,  <31.986029, 30.369595, 44.101456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108349, 30.195295, 43.990742>,  <32.312214, 29.904797, 43.806221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108349, 30.195295, 43.990742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235764, -0.397757, 0.886682,
		0.827440, 0.560671, 0.031500,
		-0.509666, 0.726249, 0.461306,
		31.955450, 30.413170, 44.129135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727814, 30.249170, 44.145603>,  <32.312214, 29.904797, 43.806221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727814, 30.249170, 44.145603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381496, 30.294519, 44.340561>,  <32.173706, 30.321730, 44.457535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381496, 30.294519, 44.340561>,  <32.727814, 30.249170, 44.145603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381496, 30.294519, 44.340561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436191, -0.306360, 0.846098,
		0.245244, 0.945140, 0.215791,
		-0.865790, 0.113375, 0.487394,
		32.121758, 30.328531, 44.486778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903336, 30.496374, 44.860813>,  <32.727814, 30.249170, 44.145603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903336, 30.496374, 44.860813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548306, 30.312387, 44.870945>,  <32.335289, 30.201996, 44.877022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548306, 30.312387, 44.870945>,  <32.903336, 30.496374, 44.860813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548306, 30.312387, 44.870945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249709, -0.434193, 0.865518,
		-0.387113, 0.774537, 0.500236,
		-0.887575, -0.459967, 0.025327,
		32.282032, 30.174397, 44.878544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784431, 30.493156, 45.498108>,  <32.903336, 30.496374, 44.860813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784431, 30.493156, 45.498108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507435, 30.235746, 45.367676>,  <32.341236, 30.081301, 45.289417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507435, 30.235746, 45.367676>,  <32.784431, 30.493156, 45.498108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507435, 30.235746, 45.367676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012396, -0.462544, 0.886509,
		-0.721316, 0.609862, 0.328286,
		-0.692495, -0.643523, -0.326081,
		32.299686, 30.042690, 45.269852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299240, 30.461653, 45.966362>,  <32.784431, 30.493156, 45.498108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299240, 30.461653, 45.966362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241501, 30.109520, 45.785618>,  <32.206856, 29.898239, 45.677174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241501, 30.109520, 45.785618>,  <32.299240, 30.461653, 45.966362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241501, 30.109520, 45.785618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077906, -0.445112, 0.892079,
		-0.986455, 0.163974, -0.004331,
		-0.144350, -0.880334, -0.451858,
		32.198196, 29.845419, 45.650059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663319, 30.122410, 46.210827>,  <32.299240, 30.461653, 45.966362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663319, 30.122410, 46.210827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923349, 29.843878, 46.089153>,  <32.079369, 29.676758, 46.016151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923349, 29.843878, 46.089153>,  <31.663319, 30.122410, 46.210827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923349, 29.843878, 46.089153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065507, -0.450171, 0.890536,
		-0.757040, -0.558991, -0.338260,
		0.650077, -0.696330, -0.304180,
		32.118374, 29.634979, 45.997898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366377, 29.572197, 46.493797>,  <31.663319, 30.122410, 46.210827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366377, 29.572197, 46.493797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730576, 29.425255, 46.417850>,  <31.949095, 29.337090, 46.372284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730576, 29.425255, 46.417850>,  <31.366377, 29.572197, 46.493797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730576, 29.425255, 46.417850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028502, -0.513800, 0.857437,
		-0.412539, -0.775279, -0.478282,
		0.910494, -0.367358, -0.189865,
		32.003723, 29.315048, 46.360889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350626, 28.874693, 46.635773>,  <31.366377, 29.572197, 46.493797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350626, 28.874693, 46.635773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744062, 28.946157, 46.645802>,  <31.980124, 28.989037, 46.651817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744062, 28.946157, 46.645802>,  <31.350626, 28.874693, 46.635773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744062, 28.946157, 46.645802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097171, -0.641709, 0.760767,
		0.152009, -0.745847, -0.648540,
		0.983591, 0.178663, 0.025071,
		32.039139, 28.999756, 46.653324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540785, 28.226603, 46.894901>,  <31.350626, 28.874693, 46.635773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540785, 28.226603, 46.894901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869045, 28.450386, 46.941444>,  <32.066002, 28.584656, 46.969372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869045, 28.450386, 46.941444>,  <31.540785, 28.226603, 46.894901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869045, 28.450386, 46.941444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277054, -0.567644, 0.775255,
		0.499772, -0.603977, -0.620838,
		0.820652, 0.559457, 0.116359,
		32.115242, 28.618223, 46.976353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221001, 27.789330, 46.721367>,  <31.540785, 28.226603, 46.894901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221001, 27.789330, 46.721367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290871, 28.106384, 46.955021>,  <32.332794, 28.296618, 47.095215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290871, 28.106384, 46.955021>,  <32.221001, 27.789330, 46.721367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290871, 28.106384, 46.955021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381193, -0.601432, 0.702119,
		0.907844, 0.100025, -0.407203,
		0.174676, 0.792638, 0.584135,
		32.343273, 28.344175, 47.130260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910339, 27.690910, 47.023251>,  <32.221001, 27.789330, 46.721367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910339, 27.690910, 47.023251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755489, 27.973518, 47.260220>,  <32.662579, 28.143084, 47.402401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755489, 27.973518, 47.260220>,  <32.910339, 27.690910, 47.023251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755489, 27.973518, 47.260220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341904, -0.486718, 0.803870,
		0.856294, 0.513748, -0.053142,
		-0.387122, 0.706518, 0.592426,
		32.639355, 28.185474, 47.437946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323822, 27.666136, 47.624165>,  <32.910339, 27.690910, 47.023251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323822, 27.666136, 47.624165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991890, 27.859091, 47.736370>,  <32.792732, 27.974863, 47.803696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991890, 27.859091, 47.736370>,  <33.323822, 27.666136, 47.624165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991890, 27.859091, 47.736370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050453, -0.435783, 0.898637,
		0.555734, 0.759866, 0.337287,
		-0.829828, 0.482386, 0.280517,
		32.742943, 28.003807, 47.820526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521343, 27.791271, 48.284168>,  <33.323822, 27.666136, 47.624165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521343, 27.791271, 48.284168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126522, 27.854195, 48.296734>,  <32.889629, 27.891949, 48.304272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126522, 27.854195, 48.296734>,  <33.521343, 27.791271, 48.284168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126522, 27.854195, 48.296734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018983, -0.308975, 0.950881,
		0.159286, 0.937970, 0.307960,
		-0.987050, 0.157308, 0.031410,
		32.830406, 27.901386, 48.306156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458157, 28.219021, 48.859241>,  <33.521343, 27.791271, 48.284168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458157, 28.219021, 48.859241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098423, 28.059671, 48.787128>,  <32.882584, 27.964062, 48.743858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098423, 28.059671, 48.787128>,  <33.458157, 28.219021, 48.859241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098423, 28.059671, 48.787128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077989, -0.259553, 0.962574,
		-0.430257, 0.879734, 0.202356,
		-0.899331, -0.398373, -0.180284,
		32.828625, 27.940159, 48.733044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924988, 28.468834, 49.282097>,  <33.458157, 28.219021, 48.859241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924988, 28.468834, 49.282097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799870, 28.097948, 49.199703>,  <32.724796, 27.875416, 49.150265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799870, 28.097948, 49.199703>,  <32.924988, 28.468834, 49.282097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799870, 28.097948, 49.199703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150686, -0.165681, 0.974599,
		-0.937790, 0.335893, -0.087893,
		-0.312799, -0.927214, -0.205988,
		32.706032, 27.819784, 49.137905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315109, 28.391914, 49.662403>,  <32.924988, 28.468834, 49.282097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315109, 28.391914, 49.662403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473183, 28.036854, 49.567829>,  <32.568027, 27.823818, 49.511086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473183, 28.036854, 49.567829>,  <32.315109, 28.391914, 49.662403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473183, 28.036854, 49.567829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037888, -0.272920, 0.961290,
		-0.917820, -0.370930, -0.141485,
		0.395185, -0.887652, -0.236438,
		32.591740, 27.770557, 49.496899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931841, 27.831745, 49.841835>,  <32.315109, 28.391914, 49.662403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931841, 27.831745, 49.841835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309727, 27.700594, 49.842987>,  <32.536457, 27.621902, 49.843678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309727, 27.700594, 49.842987>,  <31.931841, 27.831745, 49.841835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309727, 27.700594, 49.842987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133476, -0.376520, 0.916742,
		-0.299491, -0.866447, -0.399468,
		0.944717, -0.327876, 0.002886,
		32.593140, 27.602230, 49.843853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980021, 27.093151, 49.873425>,  <31.931841, 27.831745, 49.841835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980021, 27.093151, 49.873425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279621, 27.282047, 50.059322>,  <32.459381, 27.395384, 50.170860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279621, 27.282047, 50.059322>,  <31.980021, 27.093151, 49.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279621, 27.282047, 50.059322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266210, -0.427830, 0.863767,
		0.606736, -0.770682, -0.194730,
		0.749001, 0.472240, 0.464743,
		32.504322, 27.423719, 50.198746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406166, 26.629959, 50.193287>,  <31.980021, 27.093151, 49.873425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406166, 26.629959, 50.193287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429550, 26.978456, 50.388229>,  <32.443581, 27.187555, 50.505196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429550, 26.978456, 50.388229>,  <32.406166, 26.629959, 50.193287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429550, 26.978456, 50.388229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361210, -0.436656, 0.823929,
		0.930650, -0.224206, 0.289174,
		0.058460, 0.871242, 0.487360,
		32.447086, 27.239830, 50.534439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877934, 26.589781, 50.745220>,  <32.406166, 26.629959, 50.193287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877934, 26.589781, 50.745220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570557, 26.834612, 50.819897>,  <32.386131, 26.981510, 50.864704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570557, 26.834612, 50.819897>,  <32.877934, 26.589781, 50.745220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570557, 26.834612, 50.819897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211779, -0.518554, 0.828403,
		0.603855, 0.597046, 0.528105,
		-0.768445, 0.612077, 0.186690,
		32.340023, 27.018234, 50.875904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450741, 25.991068, 50.850082>,  <32.877934, 26.589781, 50.745220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450741, 25.991068, 50.850082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590408, 25.622122, 50.783966>,  <33.674210, 25.400755, 50.744297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590408, 25.622122, 50.783966>,  <33.450741, 25.991068, 50.850082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590408, 25.622122, 50.783966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301920, 0.056249, -0.951673,
		0.887087, 0.382203, -0.258840,
		0.349172, -0.922365, -0.165292,
		33.695160, 25.345413, 50.734379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092102, 25.715288, 50.213078>,  <33.450741, 25.991068, 50.850082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092102, 25.715288, 50.213078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406281, 25.472509, 50.164608>,  <33.594788, 25.326841, 50.135529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406281, 25.472509, 50.164608>,  <33.092102, 25.715288, 50.213078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406281, 25.472509, 50.164608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224151, -0.096470, -0.969768,
		0.576910, 0.788864, -0.211821,
		0.785450, -0.606948, -0.121170,
		33.641914, 25.290424, 50.128258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464863, 26.001772, 49.687641>,  <33.092102, 25.715288, 50.213078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464863, 26.001772, 49.687641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545803, 25.611641, 49.722942>,  <33.594368, 25.377562, 49.744125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545803, 25.611641, 49.722942>,  <33.464863, 26.001772, 49.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545803, 25.611641, 49.722942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222148, -0.133487, -0.965832,
		0.953784, 0.175831, -0.243678,
		0.202351, -0.975328, 0.088257,
		33.606506, 25.319042, 49.749420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048195, 25.779236, 49.326134>,  <33.464863, 26.001772, 49.687641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048195, 25.779236, 49.326134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789227, 25.474411, 49.330254>,  <33.633846, 25.291517, 49.332726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789227, 25.474411, 49.330254>,  <34.048195, 25.779236, 49.326134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789227, 25.474411, 49.330254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043263, 0.023257, -0.998793,
		0.760901, -0.647089, -0.048027,
		-0.647425, -0.762060, 0.010299,
		33.594997, 25.245792, 49.333344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265106, 25.239716, 48.876019>,  <34.048195, 25.779236, 49.326134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265106, 25.239716, 48.876019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865749, 25.232542, 48.897537>,  <33.626137, 25.228237, 48.910446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865749, 25.232542, 48.897537>,  <34.265106, 25.239716, 48.876019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865749, 25.232542, 48.897537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055982, 0.160741, -0.985408,
		0.009026, -0.986834, -0.161486,
		-0.998391, -0.017935, 0.053794,
		33.566231, 25.227161, 48.913677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088417, 24.757351, 48.365036>,  <34.265106, 25.239716, 48.876019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088417, 24.757351, 48.365036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793755, 25.025187, 48.402962>,  <33.616959, 25.185888, 48.425716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793755, 25.025187, 48.402962>,  <34.088417, 24.757351, 48.365036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793755, 25.025187, 48.402962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035275, 0.178058, -0.983388,
		-0.675350, -0.721071, -0.154787,
		-0.736654, 0.669591, 0.094815,
		33.572758, 25.226065, 48.431408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486614, 24.546923, 47.905895>,  <34.088417, 24.757351, 48.365036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486614, 24.546923, 47.905895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474186, 24.941490, 47.970409>,  <33.466728, 25.178230, 48.009117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474186, 24.941490, 47.970409>,  <33.486614, 24.546923, 47.905895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474186, 24.941490, 47.970409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198789, 0.152044, -0.968176,
		-0.979550, -0.062145, 0.191364,
		-0.031071, 0.986418, 0.161288,
		33.464863, 25.237415, 48.018795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916107, 24.754099, 47.507298>,  <33.486614, 24.546923, 47.905895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916107, 24.754099, 47.507298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123898, 25.086647, 47.586258>,  <33.248573, 25.286175, 47.633633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123898, 25.086647, 47.586258>,  <32.916107, 24.754099, 47.507298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123898, 25.086647, 47.586258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003647, 0.233172, -0.972429,
		-0.854475, 0.504437, 0.124160,
		0.519480, 0.831369, 0.197399,
		33.279743, 25.336058, 47.645477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606388, 25.388464, 47.176056>,  <32.916107, 24.754099, 47.507298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606388, 25.388464, 47.176056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995213, 25.477182, 47.206814>,  <33.228508, 25.530413, 47.225269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995213, 25.477182, 47.206814>,  <32.606388, 25.388464, 47.176056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995213, 25.477182, 47.206814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002724, 0.316896, -0.948457,
		-0.234731, 0.922163, 0.307437,
		0.972057, 0.221795, 0.076897,
		33.286831, 25.543720, 47.229881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621166, 26.011675, 46.785885>,  <32.606388, 25.388464, 47.176056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621166, 26.011675, 46.785885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998440, 25.882891, 46.818737>,  <33.224804, 25.805620, 46.838448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998440, 25.882891, 46.818737>,  <32.621166, 26.011675, 46.785885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998440, 25.882891, 46.818737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167013, 0.245688, -0.954853,
		0.287247, 0.914319, 0.285501,
		0.943184, -0.321961, 0.082130,
		33.281395, 25.786303, 46.843376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110981, 26.562433, 46.419514>,  <32.621166, 26.011675, 46.785885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110981, 26.562433, 46.419514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313934, 26.217775, 46.424152>,  <33.435707, 26.010981, 46.426937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313934, 26.217775, 46.424152>,  <33.110981, 26.562433, 46.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313934, 26.217775, 46.424152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496767, 0.281473, -0.820972,
		0.704122, 0.422307, 0.570850,
		0.507381, -0.861644, 0.011597,
		33.466148, 25.959282, 46.427631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714870, 26.802605, 46.047363>,  <33.110981, 26.562433, 46.419514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714870, 26.802605, 46.047363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714718, 26.402613, 46.049995>,  <33.714626, 26.162619, 46.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714718, 26.402613, 46.049995>,  <33.714870, 26.802605, 46.047363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714718, 26.402613, 46.049995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453899, -0.006040, -0.891033,
		0.891053, 0.002648, 0.453892,
		-0.000382, -0.999978, 0.006584,
		33.714603, 26.102619, 46.051971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385468, 26.638468, 46.059624>,  <33.714870, 26.802605, 46.047363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385468, 26.638468, 46.059624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190792, 26.324980, 45.905262>,  <34.073986, 26.136887, 45.812645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190792, 26.324980, 45.905262>,  <34.385468, 26.638468, 46.059624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190792, 26.324980, 45.905262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543081, 0.074572, -0.836362,
		0.684250, -0.616623, 0.389330,
		-0.486687, -0.783719, -0.385902,
		34.044785, 26.089865, 45.789490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910976, 26.162739, 45.869488>,  <34.385468, 26.638468, 46.059624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910976, 26.162739, 45.869488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590111, 26.064308, 45.651871>,  <34.397591, 26.005249, 45.521301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590111, 26.064308, 45.651871>,  <34.910976, 26.162739, 45.869488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590111, 26.064308, 45.651871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529740, 0.127137, -0.838577,
		0.275523, -0.960876, 0.028372,
		-0.802161, -0.246077, -0.544044,
		34.349461, 25.990484, 45.488659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119987, 25.707951, 45.285961>,  <34.910976, 26.162739, 45.869488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119987, 25.707951, 45.285961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759483, 25.835472, 45.168594>,  <34.543182, 25.911985, 45.098175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759483, 25.835472, 45.168594>,  <35.119987, 25.707951, 45.285961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759483, 25.835472, 45.168594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357937, 0.166216, -0.918833,
		-0.244155, -0.933133, -0.263915,
		-0.901260, 0.318802, -0.293420,
		34.489105, 25.931112, 45.080566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003918, 25.413755, 44.663513>,  <35.119987, 25.707951, 45.285961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003918, 25.413755, 44.663513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724838, 25.698038, 44.627480>,  <34.557392, 25.868607, 44.605862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724838, 25.698038, 44.627480>,  <35.003918, 25.413755, 44.663513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724838, 25.698038, 44.627480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158076, 0.030085, -0.986969,
		-0.698734, -0.702846, -0.133336,
		-0.697698, 0.710706, -0.090082,
		34.515530, 25.911249, 44.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701073, 25.388445, 43.898296>,  <35.003918, 25.413755, 44.663513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701073, 25.388445, 43.898296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610687, 25.756115, 44.027328>,  <34.556458, 25.976717, 44.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610687, 25.756115, 44.027328>,  <34.701073, 25.388445, 43.898296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610687, 25.756115, 44.027328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081947, 0.347907, -0.933941,
		-0.970684, -0.184599, -0.153937,
		-0.225960, 0.919176, 0.322580,
		34.542900, 26.031868, 44.124104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271400, 25.626150, 43.430099>,  <34.701073, 25.388445, 43.898296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271400, 25.626150, 43.430099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387943, 25.947052, 43.638519>,  <34.457870, 26.139593, 43.763573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387943, 25.947052, 43.638519>,  <34.271400, 25.626150, 43.430099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387943, 25.947052, 43.638519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009234, 0.547018, -0.837070,
		-0.956570, 0.239075, 0.166785,
		0.291357, 0.802256, 0.521054,
		34.475349, 26.187729, 43.794834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737885, 26.133175, 43.180622>,  <34.271400, 25.626150, 43.430099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737885, 26.133175, 43.180622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071522, 26.309469, 43.313313>,  <34.271706, 26.415245, 43.392925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071522, 26.309469, 43.313313>,  <33.737885, 26.133175, 43.180622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071522, 26.309469, 43.313313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000145, 0.601183, -0.799112,
		-0.551621, 0.666583, 0.501379,
		0.834095, 0.440734, 0.331722,
		34.321751, 26.441689, 43.412830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643051, 26.909342, 43.443748>,  <33.737885, 26.133175, 43.180622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643051, 26.909342, 43.443748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999294, 26.800671, 43.297871>,  <34.213039, 26.735468, 43.210342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999294, 26.800671, 43.297871>,  <33.643051, 26.909342, 43.443748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999294, 26.800671, 43.297871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172138, 0.540887, -0.823292,
		0.420930, 0.796011, 0.434954,
		0.890610, -0.271676, -0.364699,
		34.266476, 26.719168, 43.188461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799957, 27.502346, 43.011650>,  <33.643051, 26.909342, 43.443748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799957, 27.502346, 43.011650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110756, 27.262787, 42.934082>,  <34.297234, 27.119051, 42.887543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110756, 27.262787, 42.934082>,  <33.799957, 27.502346, 43.011650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110756, 27.262787, 42.934082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031097, 0.344186, -0.938386,
		0.628740, 0.723090, 0.286054,
		0.776994, -0.598896, -0.193918,
		34.343853, 27.083118, 42.875908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396877, 27.868162, 42.787811>,  <33.799957, 27.502346, 43.011650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396877, 27.868162, 42.787811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367481, 27.495058, 42.646641>,  <34.349842, 27.271194, 42.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367481, 27.495058, 42.646641>,  <34.396877, 27.868162, 42.787811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367481, 27.495058, 42.646641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201968, 0.360467, -0.910644,
		0.976631, 0.004356, -0.214879,
		-0.073490, -0.932762, -0.352923,
		34.345432, 27.215229, 42.540764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757347, 27.910505, 42.169388>,  <34.396877, 27.868162, 42.787811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757347, 27.910505, 42.169388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528385, 27.585634, 42.124271>,  <34.391010, 27.390711, 42.097202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528385, 27.585634, 42.124271>,  <34.757347, 27.910505, 42.169388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528385, 27.585634, 42.124271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284993, 0.326037, -0.901376,
		0.768854, -0.483803, -0.418089,
		-0.572401, -0.812179, -0.112794,
		34.356663, 27.341980, 42.090435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923389, 27.677130, 41.493359>,  <34.757347, 27.910505, 42.169388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923389, 27.677130, 41.493359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572014, 27.509876, 41.585892>,  <34.361191, 27.409525, 41.641411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572014, 27.509876, 41.585892>,  <34.923389, 27.677130, 41.493359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572014, 27.509876, 41.585892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322020, 0.160294, -0.933064,
		0.353066, -0.894130, -0.275456,
		-0.878435, -0.418135, 0.231333,
		34.308483, 27.384436, 41.655293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866997, 27.262997, 40.974430>,  <34.923389, 27.677130, 41.493359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866997, 27.262997, 40.974430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499268, 27.310028, 41.124641>,  <34.278629, 27.338247, 41.214767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499268, 27.310028, 41.124641>,  <34.866997, 27.262997, 40.974430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499268, 27.310028, 41.124641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355437, 0.161381, -0.920663,
		-0.168856, -0.979863, -0.106568,
		-0.919321, 0.117581, 0.375530,
		34.223473, 27.345303, 41.237301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510090, 27.016834, 40.497982>,  <34.866997, 27.262997, 40.974430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510090, 27.016834, 40.497982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241520, 27.208395, 40.724197>,  <34.080379, 27.323332, 40.859928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241520, 27.208395, 40.724197>,  <34.510090, 27.016834, 40.497982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241520, 27.208395, 40.724197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452774, 0.339043, -0.824649,
		-0.586671, -0.809753, -0.010807,
		-0.671426, 0.478904, 0.565542,
		34.040092, 27.352066, 40.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738731, 26.783957, 40.312695>,  <34.510090, 27.016834, 40.497982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738731, 26.783957, 40.312695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747955, 27.143332, 40.488094>,  <33.753490, 27.358957, 40.593334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747955, 27.143332, 40.488094>,  <33.738731, 26.783957, 40.312695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747955, 27.143332, 40.488094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422669, 0.406247, -0.810133,
		-0.905991, -0.166655, 0.389111,
		0.023062, 0.898437, 0.438495,
		33.754875, 27.412863, 40.619644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055359, 27.128609, 40.163311>,  <33.738731, 26.783957, 40.312695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055359, 27.128609, 40.163311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274082, 27.433357, 40.302193>,  <33.405315, 27.616207, 40.385521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274082, 27.433357, 40.302193>,  <33.055359, 27.128609, 40.163311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274082, 27.433357, 40.302193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324348, 0.575071, -0.751060,
		-0.771880, 0.298071, 0.561565,
		0.546809, 0.761871, 0.347207,
		33.438126, 27.661919, 40.406353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484524, 27.780256, 40.208099>,  <33.055359, 27.128609, 40.163311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484524, 27.780256, 40.208099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868595, 27.884096, 40.166798>,  <33.099037, 27.946400, 40.142017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868595, 27.884096, 40.166798>,  <32.484524, 27.780256, 40.208099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868595, 27.884096, 40.166798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255733, 0.667881, -0.698953,
		-0.112489, 0.697526, 0.707675,
		0.960181, 0.259600, -0.103251,
		33.156651, 27.961977, 40.135822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464943, 28.568178, 40.145451>,  <32.484524, 27.780256, 40.208099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464943, 28.568178, 40.145451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826576, 28.450781, 40.021198>,  <33.043556, 28.380342, 39.946648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826576, 28.450781, 40.021198>,  <32.464943, 28.568178, 40.145451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826576, 28.450781, 40.021198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013821, 0.706415, -0.707663,
		0.427132, 0.644080, 0.634602,
		0.904084, -0.293494, -0.310634,
		33.097801, 28.362732, 39.928009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895588, 29.133177, 40.151363>,  <32.464943, 28.568178, 40.145451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895588, 29.133177, 40.151363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056435, 28.888607, 39.878757>,  <33.152943, 28.741865, 39.715195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056435, 28.888607, 39.878757>,  <32.895588, 29.133177, 40.151363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056435, 28.888607, 39.878757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067520, 0.762124, -0.643901,
		0.913096, 0.212907, 0.347745,
		0.402116, -0.611423, -0.681517,
		33.177071, 28.705181, 39.674301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503189, 29.521017, 39.889271>,  <32.895588, 29.133177, 40.151363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503189, 29.521017, 39.889271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436958, 29.227583, 39.625626>,  <33.397221, 29.051523, 39.467438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436958, 29.227583, 39.625626>,  <33.503189, 29.521017, 39.889271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436958, 29.227583, 39.625626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310627, 0.595530, -0.740848,
		0.935999, -0.327408, 0.129265,
		-0.165578, -0.733586, -0.659117,
		33.387283, 29.007507, 39.427891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999844, 29.556475, 39.468449>,  <33.503189, 29.521017, 39.889271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999844, 29.556475, 39.468449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734432, 29.358540, 39.243996>,  <33.575184, 29.239779, 39.109325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734432, 29.358540, 39.243996>,  <33.999844, 29.556475, 39.468449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734432, 29.358540, 39.243996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216857, 0.590613, -0.777270,
		0.716032, -0.637426, -0.284580,
		-0.663529, -0.494837, -0.561128,
		33.535374, 29.210089, 39.075657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360317, 29.429688, 38.813286>,  <33.999844, 29.556475, 39.468449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360317, 29.429688, 38.813286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969494, 29.393387, 38.736225>,  <33.735001, 29.371607, 38.689991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969494, 29.393387, 38.736225>,  <34.360317, 29.429688, 38.813286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969494, 29.393387, 38.736225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120456, 0.510507, -0.851395,
		0.175613, -0.855071, -0.487866,
		-0.977062, -0.090750, -0.192650,
		33.676376, 29.366161, 38.678429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285915, 29.287931, 38.036373>,  <34.360317, 29.429688, 38.813286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285915, 29.287931, 38.036373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917591, 29.416658, 38.124500>,  <33.696598, 29.493895, 38.177376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917591, 29.416658, 38.124500>,  <34.285915, 29.287931, 38.036373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917591, 29.416658, 38.124500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050334, 0.658233, -0.751130,
		-0.386746, -0.680560, -0.622307,
		-0.920812, 0.321819, 0.220314,
		33.641346, 29.513205, 38.190594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008503, 29.206715, 37.349121>,  <34.285915, 29.287931, 38.036373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008503, 29.206715, 37.349121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784729, 29.476128, 37.542362>,  <33.650467, 29.637775, 37.658306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784729, 29.476128, 37.542362>,  <34.008503, 29.206715, 37.349121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784729, 29.476128, 37.542362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016494, 0.591772, -0.805937,
		-0.828713, -0.442898, -0.342165,
		-0.559431, 0.673534, 0.483104,
		33.616901, 29.678188, 37.687294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495499, 29.224625, 36.946331>,  <34.008503, 29.206715, 37.349121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495499, 29.224625, 36.946331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485207, 29.553255, 37.174137>,  <33.479031, 29.750435, 37.310822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485207, 29.553255, 37.174137>,  <33.495499, 29.224625, 36.946331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485207, 29.553255, 37.174137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036524, 0.570095, -0.820766,
		-0.999001, -0.000321, -0.044678,
		-0.025734, 0.821579, 0.569515,
		33.477486, 29.799728, 37.344990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938900, 29.499559, 36.650303>,  <33.495499, 29.224625, 36.946331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938900, 29.499559, 36.650303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115337, 29.793829, 36.855915>,  <33.221199, 29.970390, 36.979282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115337, 29.793829, 36.855915>,  <32.938900, 29.499559, 36.650303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115337, 29.793829, 36.855915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091424, 0.606610, -0.789725,
		-0.892794, 0.301345, 0.334827,
		0.441089, 0.735673, 0.514028,
		33.247665, 30.014530, 37.010124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619026, 30.076508, 36.450748>,  <32.938900, 29.499559, 36.650303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619026, 30.076508, 36.450748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963772, 30.203117, 36.609245>,  <33.170620, 30.279083, 36.704346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963772, 30.203117, 36.609245>,  <32.619026, 30.076508, 36.450748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963772, 30.203117, 36.609245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170406, 0.555154, -0.814104,
		-0.477661, 0.769166, 0.424527,
		0.861860, 0.316524, 0.396245,
		33.222328, 30.298075, 36.728119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589066, 30.828993, 36.405418>,  <32.619026, 30.076508, 36.450748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589066, 30.828993, 36.405418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966026, 30.698259, 36.433880>,  <33.192204, 30.619820, 36.450958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966026, 30.698259, 36.433880>,  <32.589066, 30.828993, 36.405418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966026, 30.698259, 36.433880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235076, 0.495818, -0.836005,
		0.237955, 0.804577, 0.544089,
		0.942399, -0.326834, 0.071155,
		33.248745, 30.600208, 36.455227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935104, 31.328892, 36.139816>,  <32.589066, 30.828993, 36.405418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935104, 31.328892, 36.139816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233646, 31.063732, 36.116108>,  <33.412773, 30.904636, 36.101883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233646, 31.063732, 36.116108>,  <32.935104, 31.328892, 36.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233646, 31.063732, 36.116108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224372, 0.334459, -0.915311,
		0.626584, 0.669851, 0.398363,
		0.746358, -0.662900, -0.059271,
		33.457554, 30.864862, 36.098328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447449, 31.648636, 35.742386>,  <32.935104, 31.328892, 36.139816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447449, 31.648636, 35.742386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538998, 31.260916, 35.706448>,  <33.593929, 31.028284, 35.684883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538998, 31.260916, 35.706448>,  <33.447449, 31.648636, 35.742386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538998, 31.260916, 35.706448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140537, 0.124232, -0.982251,
		0.963258, 0.212185, 0.164656,
		0.228875, -0.969301, -0.089847,
		33.607658, 30.970125, 35.679493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973572, 31.691793, 35.276752>,  <33.447449, 31.648636, 35.742386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973572, 31.691793, 35.276752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864948, 31.307056, 35.263397>,  <33.799774, 31.076214, 35.255386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864948, 31.307056, 35.263397>,  <33.973572, 31.691793, 35.276752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864948, 31.307056, 35.263397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246333, -0.035933, -0.968519,
		0.930362, -0.271237, 0.246691,
		-0.271563, -0.961841, -0.033384,
		33.783478, 31.018503, 35.253384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490982, 31.246626, 34.934612>,  <33.973572, 31.691793, 35.276752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490982, 31.246626, 34.934612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137074, 31.063242, 34.901176>,  <33.924728, 30.953211, 34.881115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137074, 31.063242, 34.901176>,  <34.490982, 31.246626, 34.934612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137074, 31.063242, 34.901176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126244, -0.063132, -0.989988,
		0.448595, -0.886469, 0.113736,
		-0.884774, -0.458462, -0.083591,
		33.871643, 30.925703, 34.876099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586502, 30.608521, 34.635220>,  <34.490982, 31.246626, 34.934612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586502, 30.608521, 34.635220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203232, 30.681688, 34.547180>,  <33.973270, 30.725590, 34.494358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203232, 30.681688, 34.547180>,  <34.586502, 30.608521, 34.635220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203232, 30.681688, 34.547180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194943, -0.145871, -0.969907,
		-0.209523, -0.972245, 0.104110,
		-0.958174, 0.182922, -0.220096,
		33.915779, 30.736565, 34.481152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018494, 30.191532, 34.953159>,  <34.586502, 30.608521, 34.635220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018494, 30.191532, 34.953159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290329, 30.050743, 34.695702>,  <35.453430, 29.966270, 34.541229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290329, 30.050743, 34.695702>,  <35.018494, 30.191532, 34.953159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290329, 30.050743, 34.695702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147356, -0.794005, 0.589781,
		-0.718639, -0.495654, -0.487734,
		0.679591, -0.351969, -0.643641,
		35.494205, 29.945152, 34.502609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934208, 29.425461, 34.827587>,  <35.018494, 30.191532, 34.953159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934208, 29.425461, 34.827587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310127, 29.539516, 34.752247>,  <35.535679, 29.607950, 34.707043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310127, 29.539516, 34.752247>,  <34.934208, 29.425461, 34.827587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310127, 29.539516, 34.752247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341631, -0.797348, 0.497518,
		-0.008322, -0.531913, -0.846758,
		0.939797, 0.285138, -0.188353,
		35.592068, 29.625057, 34.695740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244080, 28.820379, 34.798573>,  <34.934208, 29.425461, 34.827587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244080, 28.820379, 34.798573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554771, 29.068010, 34.844925>,  <35.741188, 29.216589, 34.872734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554771, 29.068010, 34.844925>,  <35.244080, 28.820379, 34.798573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554771, 29.068010, 34.844925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474468, -0.696140, 0.538766,
		0.414207, -0.363496, -0.834448,
		0.776732, 0.619080, 0.115879,
		35.787792, 29.253735, 34.879688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836018, 28.353973, 34.865784>,  <35.244080, 28.820379, 34.798573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836018, 28.353973, 34.865784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994125, 28.694435, 35.003937>,  <36.088989, 28.898712, 35.086830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994125, 28.694435, 35.003937>,  <35.836018, 28.353973, 34.865784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994125, 28.694435, 35.003937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525683, -0.517956, 0.674817,
		0.753270, -0.085174, -0.652173,
		0.395274, 0.851156, 0.345386,
		36.112709, 28.949781, 35.107552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567127, 28.322220, 34.958340>,  <35.836018, 28.353973, 34.865784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567127, 28.322220, 34.958340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458496, 28.614639, 35.208721>,  <36.393318, 28.790091, 35.358948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458496, 28.614639, 35.208721>,  <36.567127, 28.322220, 34.958340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458496, 28.614639, 35.208721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463014, -0.470935, 0.750892,
		0.843721, 0.493746, -0.210593,
		-0.271574, 0.731051, 0.625949,
		36.377026, 28.833954, 35.396507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266087, 28.609129, 35.341888>,  <36.567127, 28.322220, 34.958340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266087, 28.609129, 35.341888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945370, 28.689140, 35.567139>,  <36.752937, 28.737146, 35.702290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945370, 28.689140, 35.567139>,  <37.266087, 28.609129, 35.341888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945370, 28.689140, 35.567139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462714, -0.388532, 0.796830,
		0.378182, 0.899462, 0.218967,
		-0.801794, 0.200028, 0.563129,
		36.704830, 28.749149, 35.736076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524872, 28.610746, 36.092556>,  <37.266087, 28.609129, 35.341888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524872, 28.610746, 36.092556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133301, 28.637823, 36.169613>,  <36.898357, 28.654068, 36.215847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133301, 28.637823, 36.169613>,  <37.524872, 28.610746, 36.092556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133301, 28.637823, 36.169613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157958, -0.346821, 0.924535,
		0.129396, 0.935485, 0.328822,
		-0.978931, 0.067691, 0.192645,
		36.839622, 28.658131, 36.227406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424603, 29.000475, 36.779327>,  <37.524872, 28.610746, 36.092556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424603, 29.000475, 36.779327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080040, 28.806572, 36.718685>,  <36.873302, 28.690229, 36.682301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080040, 28.806572, 36.718685>,  <37.424603, 29.000475, 36.779327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080040, 28.806572, 36.718685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071964, -0.411957, 0.908357,
		-0.502786, 0.771558, 0.389749,
		-0.861410, -0.484758, -0.151602,
		36.821617, 28.661144, 36.673206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853363, 29.081602, 37.418457>,  <37.424603, 29.000475, 36.779327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853363, 29.081602, 37.418457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736984, 28.755592, 37.218025>,  <36.667156, 28.559986, 37.097767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736984, 28.755592, 37.218025>,  <36.853363, 29.081602, 37.418457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736984, 28.755592, 37.218025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083250, -0.500185, 0.861907,
		-0.953111, 0.292483, 0.077676,
		-0.290946, -0.815026, -0.501081,
		36.649700, 28.511084, 37.067699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402607, 28.847198, 37.846657>,  <36.853363, 29.081602, 37.418457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402607, 28.847198, 37.846657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498932, 28.532473, 37.619350>,  <36.556728, 28.343637, 37.482967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498932, 28.532473, 37.619350>,  <36.402607, 28.847198, 37.846657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498932, 28.532473, 37.619350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193899, -0.534696, 0.822498,
		-0.951005, -0.308258, 0.023799,
		0.240816, -0.786815, -0.568270,
		36.571178, 28.296429, 37.448868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031139, 28.258335, 38.106739>,  <36.402607, 28.847198, 37.846657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031139, 28.258335, 38.106739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301460, 28.050867, 37.897255>,  <36.463654, 27.926386, 37.771564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301460, 28.050867, 37.897255>,  <36.031139, 28.258335, 38.106739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301460, 28.050867, 37.897255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037985, -0.685070, 0.727486,
		-0.736106, -0.511528, -0.443268,
		0.675800, -0.518670, -0.523714,
		36.504200, 27.895267, 37.740143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800583, 27.603947, 37.940987>,  <36.031139, 28.258335, 38.106739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800583, 27.603947, 37.940987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199238, 27.573332, 37.929279>,  <36.438431, 27.554962, 37.922253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199238, 27.573332, 37.929279>,  <35.800583, 27.603947, 37.940987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199238, 27.573332, 37.929279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029636, -0.669677, 0.742061,
		-0.076398, -0.738698, -0.669693,
		0.996637, -0.076539, -0.029270,
		36.498230, 27.550369, 37.920498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965946, 26.817791, 38.001427>,  <35.800583, 27.603947, 37.940987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965946, 26.817791, 38.001427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302502, 27.004961, 38.109581>,  <36.504436, 27.117264, 38.174473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302502, 27.004961, 38.109581>,  <35.965946, 26.817791, 38.001427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302502, 27.004961, 38.109581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064904, -0.584184, 0.809022,
		0.536515, -0.663155, -0.521897,
		0.841391, 0.467926, 0.270382,
		36.554920, 27.145338, 38.190697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381630, 26.314232, 38.167171>,  <35.965946, 26.817791, 38.001427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381630, 26.314232, 38.167171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551483, 26.623516, 38.355568>,  <36.653397, 26.809086, 38.468605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551483, 26.623516, 38.355568>,  <36.381630, 26.314232, 38.167171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551483, 26.623516, 38.355568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016162, -0.526611, 0.849953,
		0.905221, -0.353307, -0.236113,
		0.424634, 0.773211, 0.470989,
		36.678875, 26.855480, 38.496864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760838, 25.923384, 38.616684>,  <36.381630, 26.314232, 38.167171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760838, 25.923384, 38.616684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739460, 26.298931, 38.752724>,  <36.726635, 26.524260, 38.834347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739460, 26.298931, 38.752724>,  <36.760838, 25.923384, 38.616684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739460, 26.298931, 38.752724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036349, -0.338528, 0.940254,
		0.997909, 0.062614, -0.016034,
		-0.053445, 0.938871, 0.340096,
		36.723427, 26.580593, 38.854752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167439, 25.890894, 39.188496>,  <36.760838, 25.923384, 38.616684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167439, 25.890894, 39.188496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973537, 26.233212, 39.260746>,  <36.857197, 26.438602, 39.304096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973537, 26.233212, 39.260746>,  <37.167439, 25.890894, 39.188496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973537, 26.233212, 39.260746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001718, -0.207440, 0.978246,
		0.874647, 0.473901, 0.102028,
		-0.484757, 0.855796, 0.180622,
		36.828110, 26.489950, 39.314934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599350, 26.181553, 39.757122>,  <37.167439, 25.890894, 39.188496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599350, 26.181553, 39.757122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235710, 26.348125, 39.752747>,  <37.017525, 26.448069, 39.750122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235710, 26.348125, 39.752747>,  <37.599350, 26.181553, 39.757122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235710, 26.348125, 39.752747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000997, 0.028429, 0.999595,
		0.416574, 0.908723, -0.026260,
		-0.909102, 0.416431, -0.010937,
		36.962978, 26.473055, 39.749466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638203, 26.842943, 40.085812>,  <37.599350, 26.181553, 39.757122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638203, 26.842943, 40.085812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246704, 26.761086, 40.091084>,  <37.011806, 26.711971, 40.094246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246704, 26.761086, 40.091084>,  <37.638203, 26.842943, 40.085812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246704, 26.761086, 40.091084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015617, 0.138452, 0.990246,
		-0.204474, 0.968995, -0.138706,
		-0.978747, -0.204646, 0.013177,
		36.953079, 26.699692, 40.095036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296848, 27.267191, 40.647587>,  <37.638203, 26.842943, 40.085812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296848, 27.267191, 40.647587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046764, 26.959784, 40.593197>,  <36.896713, 26.775339, 40.560562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046764, 26.959784, 40.593197>,  <37.296848, 27.267191, 40.647587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046764, 26.959784, 40.593197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154650, -0.048774, 0.986765,
		-0.764979, 0.637966, -0.088357,
		-0.625212, -0.768519, -0.135973,
		36.859200, 26.729227, 40.552406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706177, 27.345457, 41.165852>,  <37.296848, 27.267191, 40.647587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706177, 27.345457, 41.165852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721642, 26.960655, 41.057739>,  <36.730919, 26.729774, 40.992870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721642, 26.960655, 41.057739>,  <36.706177, 27.345457, 41.165852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721642, 26.960655, 41.057739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236241, -0.271615, 0.932961,
		-0.970925, 0.027780, -0.237767,
		0.038663, -0.962005, -0.270281,
		36.733242, 26.672054, 40.976654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231945, 27.040934, 41.563591>,  <36.706177, 27.345457, 41.165852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231945, 27.040934, 41.563591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421780, 26.706095, 41.454750>,  <36.535679, 26.505192, 41.389446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421780, 26.706095, 41.454750>,  <36.231945, 27.040934, 41.563591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421780, 26.706095, 41.454750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157709, -0.384998, 0.909343,
		-0.865966, -0.388648, -0.314732,
		0.474585, -0.837096, -0.272102,
		36.564156, 26.454966, 41.373119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753059, 26.521740, 41.678188>,  <36.231945, 27.040934, 41.563591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753059, 26.521740, 41.678188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123848, 26.371780, 41.683517>,  <36.346321, 26.281805, 41.686714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123848, 26.371780, 41.683517>,  <35.753059, 26.521740, 41.678188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123848, 26.371780, 41.683517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185029, -0.426023, 0.885590,
		-0.326331, -0.823380, -0.464278,
		0.926970, -0.374900, 0.013325,
		36.401939, 26.259310, 41.687515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640793, 25.789225, 41.873890>,  <35.753059, 26.521740, 41.678188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640793, 25.789225, 41.873890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028412, 25.870216, 41.930389>,  <36.260983, 25.918812, 41.964291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028412, 25.870216, 41.930389>,  <35.640793, 25.789225, 41.873890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028412, 25.870216, 41.930389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023949, -0.492345, 0.870071,
		0.245714, -0.846521, -0.472256,
		0.969047, 0.202479, 0.141249,
		36.319126, 25.930960, 41.972763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855175, 25.211933, 42.141407>,  <35.640793, 25.789225, 41.873890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855175, 25.211933, 42.141407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149288, 25.453316, 42.264824>,  <36.325756, 25.598145, 42.338875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149288, 25.453316, 42.264824>,  <35.855175, 25.211933, 42.141407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149288, 25.453316, 42.264824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160880, -0.286829, 0.944376,
		0.658389, -0.744022, -0.113816,
		0.735283, 0.603456, 0.308544,
		36.369873, 25.634354, 42.357388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238503, 24.858562, 42.660454>,  <35.855175, 25.211933, 42.141407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238503, 24.858562, 42.660454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390079, 25.226219, 42.703503>,  <36.481026, 25.446814, 42.729332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390079, 25.226219, 42.703503>,  <36.238503, 24.858562, 42.660454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390079, 25.226219, 42.703503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105110, -0.158293, 0.981782,
		0.919430, -0.360730, -0.156596,
		0.378946, 0.919139, 0.107623,
		36.503765, 25.501961, 42.735790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892143, 24.862324, 43.109367>,  <36.238503, 24.858562, 42.660454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892143, 24.862324, 43.109367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701939, 25.212856, 43.140175>,  <36.587814, 25.423176, 43.158657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701939, 25.212856, 43.140175>,  <36.892143, 24.862324, 43.109367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701939, 25.212856, 43.140175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042123, -0.064765, 0.997011,
		0.878701, 0.477334, -0.006117,
		-0.475511, 0.876332, 0.077016,
		36.559284, 25.475756, 43.163280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243866, 25.265974, 43.561077>,  <36.892143, 24.862324, 43.109367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243866, 25.265974, 43.561077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900333, 25.470278, 43.576702>,  <36.694214, 25.592859, 43.586075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900333, 25.470278, 43.576702>,  <37.243866, 25.265974, 43.561077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900333, 25.470278, 43.576702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147838, 0.174136, 0.973561,
		0.490454, 0.841903, -0.225064,
		-0.858836, 0.510760, 0.039059,
		36.642681, 25.623507, 43.588421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398575, 25.926048, 43.846188>,  <37.243866, 25.265974, 43.561077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398575, 25.926048, 43.846188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007820, 25.863642, 43.904640>,  <36.773369, 25.826199, 43.939713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007820, 25.863642, 43.904640>,  <37.398575, 25.926048, 43.846188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007820, 25.863642, 43.904640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120274, 0.163966, 0.979106,
		-0.176716, 0.974051, -0.141411,
		-0.976886, -0.156015, 0.146129,
		36.714756, 25.816837, 43.948479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193089, 26.520386, 44.319855>,  <37.398575, 25.926048, 43.846188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193089, 26.520386, 44.319855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910271, 26.238688, 44.345535>,  <36.740582, 26.069668, 44.360943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910271, 26.238688, 44.345535>,  <37.193089, 26.520386, 44.319855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910271, 26.238688, 44.345535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045714, 0.136118, 0.989637,
		-0.705689, 0.696783, -0.128436,
		-0.707045, -0.704248, 0.064205,
		36.698158, 26.027412, 44.364796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855495, 26.689892, 44.884876>,  <37.193089, 26.520386, 44.319855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855495, 26.689892, 44.884876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693653, 26.327000, 44.838863>,  <36.596550, 26.109264, 44.811256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693653, 26.327000, 44.838863>,  <36.855495, 26.689892, 44.884876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693653, 26.327000, 44.838863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063245, -0.153249, 0.986162,
		-0.912303, 0.391728, 0.119383,
		-0.404602, -0.907229, -0.115035,
		36.572273, 26.054831, 44.804352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236061, 26.576759, 45.309605>,  <36.855495, 26.689892, 44.884876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236061, 26.576759, 45.309605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380600, 26.211720, 45.233093>,  <36.467323, 25.992695, 45.187187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380600, 26.211720, 45.233093>,  <36.236061, 26.576759, 45.309605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380600, 26.211720, 45.233093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105859, -0.163660, 0.980821,
		-0.926402, -0.374668, 0.037469,
		0.361350, -0.912600, -0.191277,
		36.489006, 25.937939, 45.175709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927837, 26.166304, 45.761673>,  <36.236061, 26.576759, 45.309605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927837, 26.166304, 45.761673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252357, 25.957392, 45.656593>,  <36.447071, 25.832045, 45.593544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252357, 25.957392, 45.656593>,  <35.927837, 26.166304, 45.761673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252357, 25.957392, 45.656593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118504, -0.293102, 0.948709,
		-0.572488, -0.800822, -0.175902,
		0.811303, -0.522280, -0.262698,
		36.495750, 25.800709, 45.577785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764076, 25.505226, 45.934639>,  <35.927837, 26.166304, 45.761673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764076, 25.505226, 45.934639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162525, 25.529816, 45.909492>,  <36.401596, 25.544569, 45.894405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162525, 25.529816, 45.909492>,  <35.764076, 25.505226, 45.934639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162525, 25.529816, 45.909492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084262, -0.463150, 0.882265,
		0.025122, -0.884145, -0.466536,
		0.996127, 0.061476, -0.062865,
		36.461365, 25.548258, 45.890633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118618, 25.025852, 46.459358>,  <35.764076, 25.505226, 45.934639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118618, 25.025852, 46.459358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460926, 25.223234, 46.397186>,  <36.666309, 25.341663, 46.359882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460926, 25.223234, 46.397186>,  <36.118618, 25.025852, 46.459358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460926, 25.223234, 46.397186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289685, -0.208121, 0.934221,
		0.428648, -0.844504, -0.321051,
		0.855771, 0.493455, -0.155429,
		36.717659, 25.371271, 46.350559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597713, 24.694403, 46.998360>,  <36.118618, 25.025852, 46.459358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597713, 24.694403, 46.998360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754501, 25.038130, 46.866943>,  <36.848576, 25.244366, 46.788094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754501, 25.038130, 46.866943>,  <36.597713, 24.694403, 46.998360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754501, 25.038130, 46.866943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376215, 0.176166, 0.909631,
		0.839537, -0.480148, -0.254236,
		0.391970, 0.859316, -0.328536,
		36.872093, 25.295925, 46.768383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314186, 24.701967, 47.112133>,  <36.597713, 24.694403, 46.998360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314186, 24.701967, 47.112133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179634, 25.078583, 47.104668>,  <37.098904, 25.304552, 47.100189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179634, 25.078583, 47.104668>,  <37.314186, 24.701967, 47.112133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179634, 25.078583, 47.104668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501658, 0.195926, 0.842587,
		0.796984, 0.274073, -0.538237,
		-0.336385, 0.941540, -0.018659,
		37.078720, 25.361044, 47.099072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955650, 25.107500, 47.260513>,  <37.314186, 24.701967, 47.112133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955650, 25.107500, 47.260513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637329, 25.339338, 47.330681>,  <37.446339, 25.478441, 47.372780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637329, 25.339338, 47.330681>,  <37.955650, 25.107500, 47.260513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637329, 25.339338, 47.330681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346656, 0.198509, 0.916746,
		0.496518, 0.790357, -0.358893,
		-0.795801, 0.579594, 0.175419,
		37.398590, 25.513216, 47.383305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226860, 25.707867, 47.558010>,  <37.955650, 25.107500, 47.260513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226860, 25.707867, 47.558010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836617, 25.743204, 47.638397>,  <37.602470, 25.764406, 47.686630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836617, 25.743204, 47.638397>,  <38.226860, 25.707867, 47.558010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836617, 25.743204, 47.638397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219530, 0.392786, 0.893043,
		-0.000042, 0.915377, -0.402599,
		-0.975606, 0.088345, 0.200970,
		37.543934, 25.769709, 47.698689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189075, 26.290430, 48.027191>,  <38.226860, 25.707867, 47.558010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189075, 26.290430, 48.027191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881420, 26.039524, 48.076111>,  <37.696827, 25.888981, 48.105465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881420, 26.039524, 48.076111>,  <38.189075, 26.290430, 48.027191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881420, 26.039524, 48.076111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096972, 0.074605, 0.992487,
		-0.631677, 0.775224, 0.003445,
		-0.769143, -0.627265, 0.122301,
		37.650677, 25.851345, 48.112801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302826, 26.824121, 47.685154>,  <38.189075, 26.290430, 48.027191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302826, 26.824121, 47.685154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469250, 27.187851, 47.687267>,  <38.569103, 27.406088, 47.688534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469250, 27.187851, 47.687267>,  <38.302826, 26.824121, 47.685154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469250, 27.187851, 47.687267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181458, -0.077328, -0.980354,
		-0.891050, 0.408841, -0.197177,
		0.416056, 0.909324, 0.005284,
		38.594067, 27.460648, 47.688854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992359, 27.212881, 47.107410>,  <38.302826, 26.824121, 47.685154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992359, 27.212881, 47.107410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356270, 27.358868, 47.186501>,  <38.574615, 27.446461, 47.233955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356270, 27.358868, 47.186501>,  <37.992359, 27.212881, 47.107410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356270, 27.358868, 47.186501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168538, 0.110529, -0.979479,
		-0.379333, 0.924436, 0.039047,
		0.909781, 0.364968, 0.197730,
		38.629204, 27.468357, 47.245819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088894, 27.682587, 46.623207>,  <37.992359, 27.212881, 47.107410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088894, 27.682587, 46.623207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450771, 27.648468, 46.790184>,  <38.667896, 27.627996, 46.890369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450771, 27.648468, 46.790184>,  <38.088894, 27.682587, 46.623207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450771, 27.648468, 46.790184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421344, 0.324553, -0.846838,
		-0.063250, 0.942014, 0.329560,
		0.904692, -0.085295, 0.417440,
		38.722179, 27.622879, 46.915417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491970, 28.318125, 46.482670>,  <38.088894, 27.682587, 46.623207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491970, 28.318125, 46.482670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722832, 27.992832, 46.512474>,  <38.861347, 27.797657, 46.530357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722832, 27.992832, 46.512474>,  <38.491970, 28.318125, 46.482670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722832, 27.992832, 46.512474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373848, 0.181996, -0.909459,
		0.726040, 0.552749, 0.409065,
		0.577151, -0.813231, 0.074508,
		38.895977, 27.748863, 46.534828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002876, 28.509529, 46.291862>,  <38.491970, 28.318125, 46.482670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002876, 28.509529, 46.291862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070541, 28.119148, 46.236862>,  <39.111141, 27.884920, 46.203861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070541, 28.119148, 46.236862>,  <39.002876, 28.509529, 46.291862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070541, 28.119148, 46.236862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334528, 0.188084, -0.923426,
		0.927079, 0.110211, 0.358299,
		0.169162, -0.975950, -0.137499,
		39.121288, 27.826363, 46.195614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692944, 28.446514, 46.130684>,  <39.002876, 28.509529, 46.291862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692944, 28.446514, 46.130684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558990, 28.088976, 46.011425>,  <39.478619, 27.874453, 45.939869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558990, 28.088976, 46.011425>,  <39.692944, 28.446514, 46.130684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558990, 28.088976, 46.011425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510044, 0.094100, -0.854985,
		0.792282, -0.438388, 0.424389,
		-0.334880, -0.893847, -0.298151,
		39.458527, 27.820822, 45.921978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188625, 28.223455, 45.752174>,  <39.692944, 28.446514, 46.130684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188625, 28.223455, 45.752174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882893, 27.988693, 45.645336>,  <39.699451, 27.847836, 45.581234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882893, 27.988693, 45.645336>,  <40.188625, 28.223455, 45.752174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882893, 27.988693, 45.645336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405984, -0.116194, -0.906463,
		0.500975, -0.801273, 0.327086,
		-0.764330, -0.586907, -0.267094,
		39.653595, 27.812622, 45.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481216, 27.720015, 45.204956>,  <40.188625, 28.223455, 45.752174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481216, 27.720015, 45.204956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083588, 27.696968, 45.168076>,  <39.845009, 27.683140, 45.145947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083588, 27.696968, 45.168076>,  <40.481216, 27.720015, 45.204956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083588, 27.696968, 45.168076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098828, -0.125352, -0.987178,
		0.045323, -0.990438, 0.130303,
		-0.994072, -0.057620, -0.092201,
		39.785366, 27.679682, 45.140415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339436, 27.070698, 44.878948>,  <40.481216, 27.720015, 45.204956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339436, 27.070698, 44.878948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037102, 27.320322, 44.799683>,  <39.855701, 27.470097, 44.752121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037102, 27.320322, 44.799683>,  <40.339436, 27.070698, 44.878948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037102, 27.320322, 44.799683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087539, -0.203624, -0.975128,
		-0.648889, -0.754379, 0.099276,
		-0.755831, 0.624059, -0.198167,
		39.810352, 27.507540, 44.740234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062458, 26.739859, 44.339542>,  <40.339436, 27.070698, 44.878948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062458, 26.739859, 44.339542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924168, 27.114834, 44.323124>,  <39.841194, 27.339819, 44.313271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924168, 27.114834, 44.323124>,  <40.062458, 26.739859, 44.339542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924168, 27.114834, 44.323124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058504, -0.022128, -0.998042,
		-0.936510, -0.347450, -0.047194,
		-0.345725, 0.937437, -0.041050,
		39.820450, 27.396065, 44.310810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537594, 26.729774, 43.848419>,  <40.062458, 26.739859, 44.339542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537594, 26.729774, 43.848419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609833, 27.122335, 43.874439>,  <39.653175, 27.357872, 43.890053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609833, 27.122335, 43.874439>,  <39.537594, 26.729774, 43.848419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609833, 27.122335, 43.874439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147312, 0.092386, -0.984766,
		-0.972463, 0.168262, 0.161257,
		0.180597, 0.981403, 0.065055,
		39.664013, 27.416756, 43.893955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972122, 27.073353, 43.518703>,  <39.537594, 26.729774, 43.848419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972122, 27.073353, 43.518703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321606, 27.267767, 43.526825>,  <39.531296, 27.384415, 43.531696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321606, 27.267767, 43.526825>,  <38.972122, 27.073353, 43.518703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321606, 27.267767, 43.526825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028363, -0.009230, -0.999555,
		-0.485630, 0.873891, -0.021850,
		0.873704, 0.486034, 0.020303,
		39.583717, 27.413576, 43.532917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859528, 27.881168, 43.228325>,  <38.972122, 27.073353, 43.518703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859528, 27.881168, 43.228325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218666, 27.712070, 43.179070>,  <39.434147, 27.610611, 43.149517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218666, 27.712070, 43.179070>,  <38.859528, 27.881168, 43.228325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218666, 27.712070, 43.179070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113549, 0.047906, -0.992377,
		0.425423, 0.904981, -0.004990,
		0.897843, -0.422747, -0.123140,
		39.488018, 27.585247, 43.142128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177315, 28.307547, 42.796646>,  <38.859528, 27.881168, 43.228325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177315, 28.307547, 42.796646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396454, 27.975439, 42.755623>,  <39.527939, 27.776175, 42.731010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396454, 27.975439, 42.755623>,  <39.177315, 28.307547, 42.796646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396454, 27.975439, 42.755623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085579, 0.066331, -0.994121,
		0.832188, 0.553406, -0.034714,
		0.547849, -0.830266, -0.102560,
		39.560810, 27.726358, 42.724854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638912, 28.443132, 42.217842>,  <39.177315, 28.307547, 42.796646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638912, 28.443132, 42.217842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652142, 28.044857, 42.252518>,  <39.660080, 27.805893, 42.273323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652142, 28.044857, 42.252518>,  <39.638912, 28.443132, 42.217842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652142, 28.044857, 42.252518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131371, -0.090311, -0.987211,
		0.990782, 0.021259, -0.133791,
		0.033070, -0.995687, 0.086686,
		39.662064, 27.746151, 42.278522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082314, 28.286455, 41.718189>,  <39.638912, 28.443132, 42.217842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082314, 28.286455, 41.718189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871906, 27.957361, 41.804363>,  <39.745663, 27.759905, 41.856068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871906, 27.957361, 41.804363>,  <40.082314, 28.286455, 41.718189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871906, 27.957361, 41.804363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198380, -0.127623, -0.971781,
		0.827012, -0.553913, -0.096082,
		-0.526020, -0.822735, 0.215431,
		39.714100, 27.710541, 41.868992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308067, 27.795366, 41.250687>,  <40.082314, 28.286455, 41.718189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308067, 27.795366, 41.250687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959389, 27.643723, 41.374889>,  <39.750179, 27.552736, 41.449409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959389, 27.643723, 41.374889>,  <40.308067, 27.795366, 41.250687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959389, 27.643723, 41.374889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275247, -0.145454, -0.950306,
		0.405436, -0.913848, 0.022443,
		-0.871700, -0.379111, 0.310506,
		39.697880, 27.529989, 41.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179916, 27.194427, 40.790192>,  <40.308067, 27.795366, 41.250687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179916, 27.194427, 40.790192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814571, 27.283546, 40.926502>,  <39.595364, 27.337019, 41.008289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814571, 27.283546, 40.926502>,  <40.179916, 27.194427, 40.790192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814571, 27.283546, 40.926502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346691, 0.013276, -0.937886,
		-0.213485, -0.974774, 0.065117,
		-0.913362, 0.222800, 0.340779,
		39.540562, 27.350386, 41.028736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775703, 26.749695, 40.406155>,  <40.179916, 27.194427, 40.790192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775703, 26.749695, 40.406155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537544, 27.038807, 40.546490>,  <39.394650, 27.212275, 40.630692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537544, 27.038807, 40.546490>,  <39.775703, 26.749695, 40.406155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537544, 27.038807, 40.546490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407887, 0.104281, -0.907058,
		-0.692189, -0.683164, 0.232724,
		-0.595400, 0.722781, 0.350836,
		39.358925, 27.255642, 40.651741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134106, 26.609127, 40.066154>,  <39.775703, 26.749695, 40.406155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134106, 26.609127, 40.066154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132977, 26.991386, 40.183949>,  <39.132298, 27.220743, 40.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132977, 26.991386, 40.183949>,  <39.134106, 26.609127, 40.066154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132977, 26.991386, 40.183949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536485, 0.247076, -0.806931,
		-0.843906, -0.160266, 0.511995,
		-0.002822, 0.955651, 0.294489,
		39.132130, 27.278082, 40.272297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406010, 26.867279, 39.857887>,  <39.134106, 26.609127, 40.066154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406010, 26.867279, 39.857887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616627, 27.205704, 39.891201>,  <38.742996, 27.408758, 39.911190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616627, 27.205704, 39.891201>,  <38.406010, 26.867279, 39.857887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616627, 27.205704, 39.891201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172065, 0.201995, -0.964153,
		-0.832556, 0.493334, 0.251936,
		0.526540, 0.846061, 0.083287,
		38.774590, 27.459522, 39.916187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993217, 27.476358, 39.574192>,  <38.406010, 26.867279, 39.857887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993217, 27.476358, 39.574192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379841, 27.578932, 39.573261>,  <38.611816, 27.640476, 39.572704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379841, 27.578932, 39.573261>,  <37.993217, 27.476358, 39.574192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379841, 27.578932, 39.573261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159345, 0.593464, -0.788929,
		-0.200928, 0.762917, 0.614479,
		0.966560, 0.256432, -0.002323,
		38.669807, 27.655861, 39.572563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997890, 28.199312, 39.741413>,  <37.993217, 27.476358, 39.574192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997890, 28.199312, 39.741413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315838, 28.074497, 39.533253>,  <38.506607, 27.999609, 39.408356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315838, 28.074497, 39.533253>,  <37.997890, 28.199312, 39.741413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315838, 28.074497, 39.533253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188178, 0.688592, -0.700307,
		0.576867, 0.654579, 0.488621,
		0.794867, -0.312036, -0.520403,
		38.554298, 27.980886, 39.377132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226471, 28.792751, 39.452690>,  <37.997890, 28.199312, 39.741413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226471, 28.792751, 39.452690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455128, 28.541155, 39.241943>,  <38.592323, 28.390198, 39.115494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455128, 28.541155, 39.241943>,  <38.226471, 28.792751, 39.452690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455128, 28.541155, 39.241943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143615, 0.708923, -0.690509,
		0.807834, 0.319060, 0.495585,
		0.571646, -0.628990, -0.526870,
		38.626621, 28.352457, 39.083881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856239, 29.123711, 39.338478>,  <38.226471, 28.792751, 39.452690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856239, 29.123711, 39.338478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860909, 28.850700, 39.046169>,  <38.863708, 28.686893, 38.870785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860909, 28.850700, 39.046169>,  <38.856239, 29.123711, 39.338478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860909, 28.850700, 39.046169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129674, 0.725679, -0.675703,
		0.991488, -0.086874, 0.096976,
		0.011672, -0.682526, -0.730768,
		38.864410, 28.645943, 38.826939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415642, 29.265869, 38.848923>,  <38.856239, 29.123711, 39.338478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415642, 29.265869, 38.848923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159561, 29.043184, 38.637184>,  <39.005913, 28.909575, 38.510139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159561, 29.043184, 38.637184>,  <39.415642, 29.265869, 38.848923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159561, 29.043184, 38.637184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182250, 0.559331, -0.808662,
		0.746272, -0.614184, -0.256626,
		-0.640206, -0.556711, -0.529348,
		38.967499, 28.876171, 38.478378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687088, 29.204086, 38.159801>,  <39.415642, 29.265869, 38.848923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687088, 29.204086, 38.159801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313686, 29.078651, 38.090256>,  <39.089645, 29.003391, 38.048531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313686, 29.078651, 38.090256>,  <39.687088, 29.204086, 38.159801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313686, 29.078651, 38.090256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054830, 0.354343, -0.933507,
		0.354343, -0.880967, -0.313588,
		0.933507, 0.313588, 0.173863,
		39.033634, 28.984575, 38.038097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763004, 28.923599, 37.579235>,  <39.687088, 29.204086, 38.159801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763004, 28.923599, 37.579235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367577, 28.982336, 37.592957>,  <39.130322, 29.017578, 37.601189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367577, 28.982336, 37.592957>,  <39.763004, 28.923599, 37.579235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367577, 28.982336, 37.592957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027944, 0.401930, -0.915244,
		-0.148184, -0.903820, -0.401437,
		-0.988565, 0.146842, 0.034304,
		39.071007, 29.026388, 37.603249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486904, 28.689104, 36.913895>,  <39.763004, 28.923599, 37.579235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486904, 28.689104, 36.913895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224312, 28.950802, 37.064095>,  <39.066757, 29.107821, 37.154213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224312, 28.950802, 37.064095>,  <39.486904, 28.689104, 36.913895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224312, 28.950802, 37.064095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064991, 0.446878, -0.892231,
		-0.751540, -0.610134, -0.250846,
		-0.656478, 0.654245, 0.375500,
		39.027367, 29.147076, 37.176746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008080, 28.768686, 36.374428>,  <39.486904, 28.689104, 36.913895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008080, 28.768686, 36.374428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942810, 29.096594, 36.594009>,  <38.903648, 29.293339, 36.725758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942810, 29.096594, 36.594009>,  <39.008080, 28.768686, 36.374428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942810, 29.096594, 36.594009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061159, 0.546940, -0.834935,
		-0.984700, -0.169811, -0.039109,
		-0.163172, 0.819768, 0.548957,
		38.893860, 29.342524, 36.758698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410839, 29.279882, 36.043816>,  <39.008080, 28.768686, 36.374428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410839, 29.279882, 36.043816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646107, 29.503416, 36.277657>,  <38.787270, 29.637537, 36.417961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646107, 29.503416, 36.277657>,  <38.410839, 29.279882, 36.043816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646107, 29.503416, 36.277657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014112, 0.715653, -0.698314,
		-0.808612, 0.418980, 0.413041,
		0.588173, 0.558836, 0.584598,
		38.822559, 29.671066, 36.453037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256290, 29.908552, 35.779587>,  <38.410839, 29.279882, 36.043816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256290, 29.908552, 35.779587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585331, 29.994284, 35.990257>,  <38.782757, 30.045723, 36.116661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585331, 29.994284, 35.990257>,  <38.256290, 29.908552, 35.779587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585331, 29.994284, 35.990257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240072, 0.708729, -0.663376,
		-0.515451, 0.672136, 0.531549,
		0.822603, 0.214328, 0.526676,
		38.832111, 30.058582, 36.148258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278610, 30.702501, 35.804626>,  <38.256290, 29.908552, 35.779587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278610, 30.702501, 35.804626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645248, 30.552866, 35.861073>,  <38.865231, 30.463085, 35.894939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645248, 30.552866, 35.861073>,  <38.278610, 30.702501, 35.804626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645248, 30.552866, 35.861073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374635, 0.680319, -0.629933,
		0.139649, 0.630258, 0.763723,
		0.916595, -0.374086, 0.141111,
		38.920227, 30.440639, 35.903404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617805, 31.295643, 36.015141>,  <38.278610, 30.702501, 35.804626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617805, 31.295643, 36.015141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859219, 31.017641, 35.858826>,  <39.004066, 30.850840, 35.765038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859219, 31.017641, 35.858826>,  <38.617805, 31.295643, 36.015141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859219, 31.017641, 35.858826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364002, 0.676225, -0.640486,
		0.709401, 0.244308, 0.661108,
		0.603533, -0.695006, -0.390786,
		39.040279, 30.809139, 35.741589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308331, 31.619343, 35.931160>,  <38.617805, 31.295643, 36.015141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308331, 31.619343, 35.931160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320480, 31.286978, 35.708931>,  <39.327770, 31.087559, 35.575592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320480, 31.286978, 35.708931>,  <39.308331, 31.619343, 35.931160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320480, 31.286978, 35.708931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368517, 0.525986, -0.766508,
		0.929125, -0.181458, 0.322180,
		0.030373, -0.830911, -0.555577,
		39.329594, 31.037704, 35.542259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958351, 31.688951, 35.585796>,  <39.308331, 31.619343, 35.931160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958351, 31.688951, 35.585796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757530, 31.411549, 35.379108>,  <39.637039, 31.245108, 35.255096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757530, 31.411549, 35.379108>,  <39.958351, 31.688951, 35.585796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757530, 31.411549, 35.379108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423985, 0.323378, -0.845968,
		0.753780, -0.643797, 0.131686,
		-0.502047, -0.693507, -0.516716,
		39.606915, 31.203497, 35.224094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445911, 31.420565, 35.083614>,  <39.958351, 31.688951, 35.585796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445911, 31.420565, 35.083614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098450, 31.280125, 34.943810>,  <39.889973, 31.195860, 34.859924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098450, 31.280125, 34.943810>,  <40.445911, 31.420565, 35.083614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098450, 31.280125, 34.943810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231338, 0.336393, -0.912865,
		0.438083, -0.873824, -0.210987,
		-0.868657, -0.351102, -0.349517,
		39.837852, 31.174795, 34.838955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589069, 31.023907, 34.421028>,  <40.445911, 31.420565, 35.083614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589069, 31.023907, 34.421028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211491, 31.155254, 34.407566>,  <39.984943, 31.234062, 34.399487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211491, 31.155254, 34.407566>,  <40.589069, 31.023907, 34.421028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211491, 31.155254, 34.407566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208724, 0.514777, -0.831528,
		-0.255722, -0.791946, -0.554462,
		-0.943949, 0.328370, -0.033658,
		39.928307, 31.253765, 34.397469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439606, 31.076168, 33.791996>,  <40.589069, 31.023907, 34.421028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439606, 31.076168, 33.791996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152924, 31.302290, 33.955341>,  <39.980915, 31.437963, 34.053349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152924, 31.302290, 33.955341>,  <40.439606, 31.076168, 33.791996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152924, 31.302290, 33.955341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029977, 0.610009, -0.791827,
		-0.696729, -0.555267, -0.454144,
		-0.716708, 0.565303, 0.408365,
		39.937912, 31.471880, 34.077850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044621, 31.206339, 33.285225>,  <40.439606, 31.076168, 33.791996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044621, 31.206339, 33.285225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028355, 31.512861, 33.541698>,  <40.018593, 31.696775, 33.695583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028355, 31.512861, 33.541698>,  <40.044621, 31.206339, 33.285225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028355, 31.512861, 33.541698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370882, 0.607449, -0.702462,
		-0.927789, 0.209237, -0.308912,
		-0.040667, 0.766306, 0.641187,
		40.016155, 31.742754, 33.734055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474850, 31.648405, 32.915951>,  <40.044621, 31.206339, 33.285225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474850, 31.648405, 32.915951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772549, 31.835672, 33.106495>,  <39.951168, 31.948032, 33.220821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772549, 31.835672, 33.106495>,  <39.474850, 31.648405, 32.915951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772549, 31.835672, 33.106495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205991, 0.517557, -0.830483,
		-0.635348, 0.716209, 0.288751,
		0.744245, 0.468166, 0.476362,
		39.995823, 31.976122, 33.249405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312046, 32.319790, 32.745392>,  <39.474850, 31.648405, 32.915951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312046, 32.319790, 32.745392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694798, 32.260044, 32.845051>,  <39.924450, 32.224197, 32.904846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694798, 32.260044, 32.845051>,  <39.312046, 32.319790, 32.745392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694798, 32.260044, 32.845051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290468, 0.502340, -0.814421,
		-0.003508, 0.851671, 0.524065,
		0.956878, -0.149367, 0.249146,
		39.981861, 32.215233, 32.919796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570175, 32.797779, 32.454655>,  <39.312046, 32.319790, 32.745392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570175, 32.797779, 32.454655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917500, 32.624733, 32.551720>,  <40.125893, 32.520905, 32.609959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917500, 32.624733, 32.551720>,  <39.570175, 32.797779, 32.454655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917500, 32.624733, 32.551720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470233, 0.562237, -0.680273,
		0.157866, 0.704792, 0.691626,
		0.868308, -0.432617, 0.242658,
		40.177994, 32.494949, 32.624516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066250, 33.328976, 32.521656>,  <39.570175, 32.797779, 32.454655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066250, 33.328976, 32.521656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249592, 32.982269, 32.443047>,  <40.359596, 32.774246, 32.395882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249592, 32.982269, 32.443047>,  <40.066250, 33.328976, 32.521656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249592, 32.982269, 32.443047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634279, 0.473901, -0.610826,
		0.622577, 0.155326, 0.766989,
		0.458355, -0.866771, -0.196520,
		40.387096, 32.722237, 32.384090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827473, 33.463482, 32.502903>,  <40.066250, 33.328976, 32.521656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827473, 33.463482, 32.502903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767128, 33.126472, 32.296066>,  <40.730919, 32.924267, 32.171963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767128, 33.126472, 32.296066>,  <40.827473, 33.463482, 32.502903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767128, 33.126472, 32.296066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706370, 0.274064, -0.652634,
		0.691579, -0.463720, 0.553789,
		-0.150866, -0.842527, -0.517095,
		40.721867, 32.873714, 32.140938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501793, 33.299782, 32.233833>,  <40.827473, 33.463482, 32.502903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501793, 33.299782, 32.233833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213364, 33.161720, 31.993528>,  <41.040306, 33.078884, 31.849344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213364, 33.161720, 31.993528>,  <41.501793, 33.299782, 32.233833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213364, 33.161720, 31.993528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605920, 0.106384, -0.788380,
		0.336027, -0.932496, 0.132427,
		-0.721073, -0.345157, -0.600766,
		40.997040, 33.058174, 31.813299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013908, 33.420441, 32.880043>,  <41.501793, 33.299782, 32.233833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013908, 33.420441, 32.880043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356491, 33.499310, 33.070873>,  <42.562042, 33.546631, 33.185371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356491, 33.499310, 33.070873>,  <42.013908, 33.420441, 32.880043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356491, 33.499310, 33.070873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336333, 0.487960, -0.805466,
		-0.391610, 0.850305, 0.351601,
		0.856459, 0.197174, 0.477075,
		42.613430, 33.558460, 33.213997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123150, 34.171444, 32.859722>,  <42.013908, 33.420441, 32.880043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123150, 34.171444, 32.859722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459476, 33.956802, 32.888222>,  <42.661274, 33.828018, 32.905323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459476, 33.956802, 32.888222>,  <42.123150, 34.171444, 32.859722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459476, 33.956802, 32.888222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351471, 0.441075, -0.825785,
		0.411694, 0.719379, 0.559465,
		0.840819, -0.536607, 0.071253,
		42.711723, 33.795822, 32.909599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633739, 34.679558, 32.693233>,  <42.123150, 34.171444, 32.859722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633739, 34.679558, 32.693233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817822, 34.326447, 32.655476>,  <42.928272, 34.114578, 32.632820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817822, 34.326447, 32.655476>,  <42.633739, 34.679558, 32.693233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817822, 34.326447, 32.655476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659005, 0.410912, -0.629971,
		0.594914, 0.227709, 0.770860,
		0.460206, -0.882780, -0.094395,
		42.955883, 34.061611, 32.627155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387604, 34.827953, 32.592842>,  <42.633739, 34.679558, 32.693233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387604, 34.827953, 32.592842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373890, 34.447632, 32.469688>,  <43.365662, 34.219437, 32.395798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373890, 34.447632, 32.469688>,  <43.387604, 34.827953, 32.592842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373890, 34.447632, 32.469688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730771, 0.186298, -0.656710,
		0.681762, -0.247507, 0.688434,
		-0.034286, -0.950807, -0.307882,
		43.363605, 34.162392, 32.377323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030704, 34.503868, 32.521198>,  <43.387604, 34.827953, 32.592842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030704, 34.503868, 32.521198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800236, 34.320251, 32.250702>,  <43.661953, 34.210079, 32.088406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800236, 34.320251, 32.250702>,  <44.030704, 34.503868, 32.521198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800236, 34.320251, 32.250702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723700, 0.097988, -0.683123,
		0.379848, -0.882992, 0.275753,
		-0.576172, -0.459045, -0.676243,
		43.627384, 34.182537, 32.047829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517277, 34.241699, 32.119537>,  <44.030704, 34.503868, 32.521198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517277, 34.241699, 32.119537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181400, 34.201561, 31.906054>,  <43.979874, 34.177479, 31.777962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181400, 34.201561, 31.906054>,  <44.517277, 34.241699, 32.119537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181400, 34.201561, 31.906054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513654, 0.172290, -0.840521,
		0.176298, -0.979922, -0.093126,
		-0.839690, -0.100348, -0.533715,
		43.929493, 34.171455, 31.745939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724747, 33.878899, 31.544647>,  <44.517277, 34.241699, 32.119537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724747, 33.878899, 31.544647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370411, 34.042622, 31.457239>,  <44.157810, 34.140854, 31.404795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370411, 34.042622, 31.457239>,  <44.724747, 33.878899, 31.544647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370411, 34.042622, 31.457239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320364, 0.198881, -0.926182,
		-0.335634, -0.890457, -0.307305,
		-0.885842, 0.409307, -0.218519,
		44.104656, 34.165413, 31.391684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591526, 33.565212, 30.842896>,  <44.724747, 33.878899, 31.544647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591526, 33.565212, 30.842896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384056, 33.901009, 30.907690>,  <44.259575, 34.102486, 30.946566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384056, 33.901009, 30.907690>,  <44.591526, 33.565212, 30.842896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384056, 33.901009, 30.907690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234440, 0.321849, -0.917306,
		-0.822201, -0.437807, -0.363744,
		-0.518674, 0.839487, 0.161985,
		44.228455, 34.152855, 30.956285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247364, 33.769058, 30.203857>,  <44.591526, 33.565212, 30.842896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247364, 33.769058, 30.203857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219749, 34.116283, 30.400511>,  <44.203182, 34.324619, 30.518503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219749, 34.116283, 30.400511>,  <44.247364, 33.769058, 30.203857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219749, 34.116283, 30.400511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012850, 0.493541, -0.869627,
		-0.997531, -0.053718, -0.045226,
		-0.069035, 0.868062, 0.491633,
		44.199039, 34.376701, 30.548000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893673, 34.126808, 29.800228>,  <44.247364, 33.769058, 30.203857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893673, 34.126808, 29.800228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069862, 34.412144, 30.018267>,  <44.175575, 34.583347, 30.149090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069862, 34.412144, 30.018267>,  <43.893673, 34.126808, 29.800228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069862, 34.412144, 30.018267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001873, 0.607895, -0.794015,
		-0.897765, 0.348719, 0.269095,
		0.440470, 0.713343, 0.545094,
		44.202003, 34.626148, 30.181795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484623, 34.691566, 29.715031>,  <43.893673, 34.126808, 29.800228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484623, 34.691566, 29.715031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849270, 34.814507, 29.824200>,  <44.068058, 34.888271, 29.889702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849270, 34.814507, 29.824200>,  <43.484623, 34.691566, 29.715031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849270, 34.814507, 29.824200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050590, 0.575041, -0.816559,
		-0.407912, 0.758197, 0.508669,
		0.911618, 0.307351, 0.272923,
		44.122757, 34.906712, 29.906076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532661, 35.444542, 29.548042>,  <43.484623, 34.691566, 29.715031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532661, 35.444542, 29.548042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906979, 35.309425, 29.588428>,  <44.131569, 35.228355, 29.612661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906979, 35.309425, 29.588428>,  <43.532661, 35.444542, 29.548042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906979, 35.309425, 29.588428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264270, 0.482512, -0.835071,
		0.233359, 0.808134, 0.540798,
		0.935791, -0.337788, 0.100967,
		44.187717, 35.208088, 29.618719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910881, 36.058727, 29.216726>,  <43.532661, 35.444542, 29.548042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910881, 36.058727, 29.216726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198597, 35.785824, 29.269104>,  <44.371227, 35.622082, 29.300529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198597, 35.785824, 29.269104>,  <43.910881, 36.058727, 29.216726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198597, 35.785824, 29.269104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493502, 0.369147, -0.787519,
		0.488952, 0.631077, 0.602219,
		0.719292, -0.682256, 0.130943,
		44.414383, 35.581146, 29.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582134, 36.458748, 29.390423>,  <43.910881, 36.058727, 29.216726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582134, 36.458748, 29.390423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641052, 36.089668, 29.247908>,  <44.676403, 35.868221, 29.162399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641052, 36.089668, 29.247908>,  <44.582134, 36.458748, 29.390423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641052, 36.089668, 29.247908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482497, 0.381476, -0.788462,
		0.863425, -0.055774, 0.501385,
		0.147291, -0.922695, -0.356287,
		44.685238, 35.812859, 29.141022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337334, 36.506432, 29.155531>,  <44.582134, 36.458748, 29.390423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337334, 36.506432, 29.155531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172684, 36.194183, 28.967403>,  <45.073895, 36.006836, 28.854527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172684, 36.194183, 28.967403>,  <45.337334, 36.506432, 29.155531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172684, 36.194183, 28.967403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299591, 0.371482, -0.878775,
		0.860705, -0.502625, 0.080958,
		-0.411620, -0.780621, -0.470318,
		45.049198, 35.959995, 28.826307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837452, 36.126919, 28.741005>,  <45.337334, 36.506432, 29.155531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837452, 36.126919, 28.741005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468594, 36.070324, 28.596989>,  <45.247280, 36.036366, 28.510578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468594, 36.070324, 28.596989>,  <45.837452, 36.126919, 28.741005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468594, 36.070324, 28.596989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261972, 0.456413, -0.850328,
		0.284636, -0.878447, -0.383814,
		-0.922146, -0.141486, -0.360040,
		45.191952, 36.027878, 28.488976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033665, 36.034256, 28.092396>,  <45.837452, 36.126919, 28.741005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033665, 36.034256, 28.092396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638855, 36.090351, 28.061132>,  <45.401970, 36.124008, 28.042374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638855, 36.090351, 28.061132>,  <46.033665, 36.034256, 28.092396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638855, 36.090351, 28.061132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138964, 0.502435, -0.853374,
		-0.080409, -0.853165, -0.515406,
		-0.987028, 0.140242, -0.078159,
		45.342747, 36.132423, 28.037685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695362, 35.800179, 27.268393>,  <46.033665, 36.034256, 28.092396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695362, 35.800179, 27.268393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443222, 36.031704, 27.475327>,  <45.291939, 36.170620, 27.599487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443222, 36.031704, 27.475327>,  <45.695362, 35.800179, 27.268393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443222, 36.031704, 27.475327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069125, 0.621903, -0.780038,
		-0.773231, -0.527454, -0.352003,
		-0.630346, 0.578817, 0.517335,
		45.254120, 36.205349, 27.630527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254082, 36.020844, 26.744179>,  <45.695362, 35.800179, 27.268393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254082, 36.020844, 26.744179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219925, 36.284275, 27.043238>,  <45.199432, 36.442333, 27.222673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219925, 36.284275, 27.043238>,  <45.254082, 36.020844, 26.744179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219925, 36.284275, 27.043238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167463, 0.749200, -0.640824,
		-0.982173, 0.070483, -0.174263,
		-0.085390, 0.658583, 0.747648,
		45.194309, 36.481850, 27.267532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881474, 36.578991, 26.433472>,  <45.254082, 36.020844, 26.744179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881474, 36.578991, 26.433472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050766, 36.729557, 26.763124>,  <45.152340, 36.819897, 26.960917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050766, 36.729557, 26.763124>,  <44.881474, 36.578991, 26.433472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050766, 36.729557, 26.763124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310372, 0.794342, -0.522198,
		-0.851204, 0.476795, 0.219358,
		0.423227, 0.376414, 0.824131,
		45.177734, 36.842480, 27.010365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683228, 37.245193, 26.404474>,  <44.881474, 36.578991, 26.433472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683228, 37.245193, 26.404474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001812, 37.250740, 26.646288>,  <45.192963, 37.254070, 26.791376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001812, 37.250740, 26.646288>,  <44.683228, 37.245193, 26.404474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001812, 37.250740, 26.646288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326863, 0.831220, -0.449704,
		-0.508739, 0.555771, 0.657498,
		0.796458, 0.013870, 0.604535,
		45.240749, 37.254902, 26.827648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813126, 37.935837, 26.551302>,  <44.683228, 37.245193, 26.404474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813126, 37.935837, 26.551302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148811, 37.732548, 26.628687>,  <45.350224, 37.610573, 26.675117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148811, 37.732548, 26.628687>,  <44.813126, 37.935837, 26.551302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148811, 37.732548, 26.628687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537579, 0.828996, -0.154193,
		-0.082014, 0.233402, 0.968915,
		0.839216, -0.508222, 0.193461,
		45.400578, 37.580082, 26.686726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488956, 38.515579, 26.115479>,  <44.813126, 37.935837, 26.551302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488956, 38.515579, 26.115479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742161, 38.360977, 25.847176>,  <44.894081, 38.268215, 25.686193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742161, 38.360977, 25.847176>,  <44.488956, 38.515579, 26.115479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742161, 38.360977, 25.847176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729288, -0.588384, -0.349205,
		-0.259692, 0.710223, -0.654327,
		0.633008, -0.386507, -0.670756,
		44.932064, 38.245026, 25.645948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125549, 38.144077, 26.679050>,  <44.488956, 38.515579, 26.115479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125549, 38.144077, 26.679050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383778, 38.078285, 26.977362>,  <44.538715, 38.038811, 27.156349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383778, 38.078285, 26.977362>,  <44.125549, 38.144077, 26.679050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383778, 38.078285, 26.977362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302787, 0.841376, 0.447667,
		-0.701113, -0.514812, 0.493365,
		0.645570, -0.164481, 0.745778,
		44.577450, 38.028942, 27.201096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812767, 38.290508, 27.405073>,  <44.125549, 38.144077, 26.679050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812767, 38.290508, 27.405073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208179, 38.344902, 27.378773>,  <44.445427, 38.377537, 27.362993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208179, 38.344902, 27.378773>,  <43.812767, 38.290508, 27.405073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208179, 38.344902, 27.378773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115138, 0.960144, 0.254692,
		0.097763, -0.244199, 0.964785,
		0.988527, 0.135983, -0.065750,
		44.504738, 38.385696, 27.359047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060688, 38.595245, 28.019058>,  <43.812767, 38.290508, 27.405073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060688, 38.595245, 28.019058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225712, 38.685947, 27.666155>,  <44.324726, 38.740368, 27.454412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225712, 38.685947, 27.666155>,  <44.060688, 38.595245, 28.019058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225712, 38.685947, 27.666155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141661, 0.972710, 0.183756,
		0.899850, 0.049172, 0.433419,
		0.412555, 0.226752, -0.882259,
		44.349480, 38.753971, 27.401478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667229, 39.170734, 27.951725>,  <44.060688, 38.595245, 28.019058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667229, 39.170734, 27.951725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453079, 39.149620, 27.614540>,  <44.324589, 39.136951, 27.412230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453079, 39.149620, 27.614540>,  <44.667229, 39.170734, 27.951725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453079, 39.149620, 27.614540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280941, 0.952345, 0.118793,
		0.796522, 0.300422, -0.524690,
		-0.535373, -0.052785, -0.842964,
		44.292469, 39.133785, 27.361650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722843, 39.813484, 27.656576>,  <44.667229, 39.170734, 27.951725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722843, 39.813484, 27.656576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419098, 39.637897, 27.464460>,  <44.236851, 39.532547, 27.349192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419098, 39.637897, 27.464460>,  <44.722843, 39.813484, 27.656576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419098, 39.637897, 27.464460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461198, 0.883811, -0.078583,
		0.458979, 0.161835, -0.873583,
		-0.759365, -0.438962, -0.480288,
		44.191288, 39.506210, 27.320374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151932, 40.197487, 27.871143>,  <44.722843, 39.813484, 27.656576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151932, 40.197487, 27.871143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152542, 40.517895, 28.110598>,  <44.152908, 40.710140, 28.254271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152542, 40.517895, 28.110598>,  <44.151932, 40.197487, 27.871143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152542, 40.517895, 28.110598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046643, -0.598041, 0.800107,
		0.998910, 0.026698, -0.038277,
		0.001530, 0.801021, 0.598635,
		44.153000, 40.758202, 28.290188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716976, 40.303936, 28.387917>,  <44.151932, 40.197487, 27.871143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716976, 40.303936, 28.387917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398605, 40.488049, 28.545212>,  <44.207581, 40.598515, 28.639589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398605, 40.488049, 28.545212>,  <44.716976, 40.303936, 28.387917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398605, 40.488049, 28.545212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123858, -0.512014, 0.850001,
		0.592584, 0.725246, 0.350518,
		-0.795929, 0.460282, 0.393238,
		44.159828, 40.626133, 28.663183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881493, 40.575680, 28.982134>,  <44.716976, 40.303936, 28.387917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881493, 40.575680, 28.982134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491962, 40.493774, 29.021614>,  <44.258244, 40.444630, 29.045301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491962, 40.493774, 29.021614>,  <44.881493, 40.575680, 28.982134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491962, 40.493774, 29.021614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167006, -0.349959, 0.921758,
		-0.154201, 0.914112, 0.374994,
		-0.973823, -0.204762, 0.098699,
		44.199814, 40.432346, 29.051224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714939, 40.647717, 29.693375>,  <44.881493, 40.575680, 28.982134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714939, 40.647717, 29.693375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400307, 40.426453, 29.583609>,  <44.211529, 40.293694, 29.517748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400307, 40.426453, 29.583609>,  <44.714939, 40.647717, 29.693375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400307, 40.426453, 29.583609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061063, -0.511914, 0.856864,
		-0.614459, 0.657237, 0.436440,
		-0.786582, -0.553158, -0.274417,
		44.164333, 40.260506, 29.501284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421452, 40.580921, 30.300089>,  <44.714939, 40.647717, 29.693375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421452, 40.580921, 30.300089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284828, 40.290482, 30.061388>,  <44.202854, 40.116219, 29.918167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284828, 40.290482, 30.061388>,  <44.421452, 40.580921, 30.300089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284828, 40.290482, 30.061388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239756, -0.546615, 0.802328,
		-0.908765, 0.417118, 0.012614,
		-0.341560, -0.726102, -0.596751,
		44.182362, 40.072651, 29.882362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727749, 40.439129, 30.491461>,  <44.421452, 40.580921, 30.300089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727749, 40.439129, 30.491461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845776, 40.109882, 30.297380>,  <43.916592, 39.912334, 30.180931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845776, 40.109882, 30.297380>,  <43.727749, 40.439129, 30.491461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845776, 40.109882, 30.297380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215352, -0.552035, 0.805532,
		-0.930893, -0.133192, -0.340144,
		0.295062, -0.823114, -0.485202,
		43.934296, 39.862949, 30.151819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143581, 39.997715, 30.503838>,  <43.727749, 40.439129, 30.491461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143581, 39.997715, 30.503838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462620, 39.759922, 30.463007>,  <43.654045, 39.617245, 30.438509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462620, 39.759922, 30.463007>,  <43.143581, 39.997715, 30.503838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462620, 39.759922, 30.463007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291514, -0.528065, 0.797600,
		-0.528065, -0.606410, -0.594486,
		-0.797600, 0.594486, 0.102076,
		43.701900, 39.581577, 30.432384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907703, 39.387184, 30.544777>,  <43.143581, 39.997715, 30.503838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907703, 39.387184, 30.544777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297707, 39.321667, 30.604822>,  <43.531708, 39.282356, 30.640850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297707, 39.321667, 30.604822>,  <42.907703, 39.387184, 30.544777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297707, 39.321667, 30.604822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220768, -0.638287, 0.737462,
		-0.024973, -0.752171, -0.658494,
		0.975006, -0.163791, 0.150115,
		43.590210, 39.272530, 30.649857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915611, 38.684097, 30.643848>,  <42.907703, 39.387184, 30.544777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915611, 38.684097, 30.643848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250965, 38.846432, 30.789396>,  <43.452179, 38.943832, 30.876724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250965, 38.846432, 30.789396>,  <42.915611, 38.684097, 30.643848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250965, 38.846432, 30.789396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042004, -0.617467, 0.785474,
		0.543455, -0.673815, -0.500629,
		0.838387, 0.405841, 0.363868,
		43.502480, 38.968185, 30.898558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434212, 38.183083, 30.677361>,  <42.915611, 38.684097, 30.643848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434212, 38.183083, 30.677361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512333, 38.473949, 30.940596>,  <43.559204, 38.648472, 31.098537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512333, 38.473949, 30.940596>,  <43.434212, 38.183083, 30.677361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512333, 38.473949, 30.940596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139545, -0.684787, 0.715258,
		0.970765, -0.047858, -0.235213,
		0.195302, 0.727170, 0.658089,
		43.570923, 38.692101, 31.138021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067127, 38.015007, 30.875278>,  <43.434212, 38.183083, 30.677361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067127, 38.015007, 30.875278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904335, 38.232426, 31.168924>,  <43.806660, 38.362877, 31.345112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904335, 38.232426, 31.168924>,  <44.067127, 38.015007, 30.875278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904335, 38.232426, 31.168924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453564, -0.577356, 0.678925,
		0.792875, 0.609275, -0.011564,
		-0.406976, 0.543548, 0.734116,
		43.782242, 38.395489, 31.389158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646088, 38.108009, 31.324310>,  <44.067127, 38.015007, 30.875278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646088, 38.108009, 31.324310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329086, 38.200939, 31.549864>,  <44.138885, 38.256699, 31.685196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329086, 38.200939, 31.549864>,  <44.646088, 38.108009, 31.324310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329086, 38.200939, 31.549864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383476, -0.529118, 0.756955,
		0.474223, 0.816124, 0.330234,
		-0.792502, 0.232329, 0.563883,
		44.091335, 38.270638, 31.719028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918568, 38.129269, 31.988777>,  <44.646088, 38.108009, 31.324310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918568, 38.129269, 31.988777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525150, 38.090965, 32.050068>,  <44.289101, 38.067986, 32.086842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525150, 38.090965, 32.050068>,  <44.918568, 38.129269, 31.988777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525150, 38.090965, 32.050068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180648, -0.503814, 0.844712,
		-0.003688, 0.858488, 0.512820,
		-0.983541, -0.095755, 0.153226,
		44.230087, 38.062241, 32.096035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767048, 38.175835, 32.737675>,  <44.918568, 38.129269, 31.988777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767048, 38.175835, 32.737675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424549, 38.024864, 32.596600>,  <44.219051, 37.934280, 32.511955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424549, 38.024864, 32.596600>,  <44.767048, 38.175835, 32.737675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424549, 38.024864, 32.596600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054920, -0.612369, 0.788662,
		-0.513641, 0.694658, 0.503610,
		-0.856246, -0.377430, -0.352689,
		44.167675, 37.911636, 32.490791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149052, 38.124706, 33.282749>,  <44.767048, 38.175835, 32.737675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149052, 38.124706, 33.282749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072166, 37.838024, 33.014603>,  <44.026035, 37.666016, 32.853714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072166, 37.838024, 33.014603>,  <44.149052, 38.124706, 33.282749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072166, 37.838024, 33.014603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041841, -0.676493, 0.735259,
		-0.980461, 0.169374, 0.100042,
		-0.192211, -0.716707, -0.670362,
		44.014503, 37.623013, 32.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888000, 37.573311, 33.733879>,  <44.149052, 38.124706, 33.282749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888000, 37.573311, 33.733879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966179, 37.404930, 33.379570>,  <44.013084, 37.303902, 33.166985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966179, 37.404930, 33.379570>,  <43.888000, 37.573311, 33.733879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966179, 37.404930, 33.379570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104768, -0.906988, 0.407916,
		-0.975103, 0.013077, -0.221366,
		0.195442, -0.420952, -0.885777,
		44.024811, 37.278645, 33.113838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426708, 37.078266, 33.685574>,  <43.888000, 37.573311, 33.733879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426708, 37.078266, 33.685574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746407, 36.987057, 33.463150>,  <43.938225, 36.932331, 33.329697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746407, 36.987057, 33.463150>,  <43.426708, 37.078266, 33.685574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746407, 36.987057, 33.463150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050904, -0.947587, 0.315416,
		-0.598839, -0.223791, -0.768966,
		0.799250, -0.228027, -0.556060,
		43.986183, 36.918648, 33.296333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328732, 36.440117, 33.480324>,  <43.426708, 37.078266, 33.685574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328732, 36.440117, 33.480324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712582, 36.467869, 33.371284>,  <43.942890, 36.484520, 33.305862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712582, 36.467869, 33.371284>,  <43.328732, 36.440117, 33.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712582, 36.467869, 33.371284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143006, -0.954853, 0.260394,
		-0.242224, -0.288863, -0.926221,
		0.959623, 0.069381, -0.272597,
		44.000469, 36.488682, 33.289505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435863, 35.805092, 33.170444>,  <43.328732, 36.440117, 33.480324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435863, 35.805092, 33.170444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783493, 35.981281, 33.260502>,  <43.992073, 36.086994, 33.314537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783493, 35.981281, 33.260502>,  <43.435863, 35.805092, 33.170444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783493, 35.981281, 33.260502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389110, -0.889736, 0.238669,
		0.305445, -0.119816, -0.944642,
		0.869078, 0.440470, 0.225144,
		44.044216, 36.113422, 33.328045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922256, 35.370052, 32.938488>,  <43.435863, 35.805092, 33.170444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922256, 35.370052, 32.938488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129547, 35.614166, 33.178154>,  <44.253922, 35.760635, 33.321953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129547, 35.614166, 33.178154>,  <43.922256, 35.370052, 32.938488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129547, 35.614166, 33.178154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514631, -0.782061, 0.351476,
		0.683082, 0.126204, -0.719355,
		0.518222, 0.610289, 0.599161,
		44.285015, 35.797253, 33.357903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753334, 35.211487, 32.845940>,  <43.922256, 35.370052, 32.938488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753334, 35.211487, 32.845940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707203, 35.379501, 33.205997>,  <44.679523, 35.480312, 33.422031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707203, 35.379501, 33.205997>,  <44.753334, 35.211487, 32.845940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707203, 35.379501, 33.205997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397111, -0.811133, 0.429379,
		0.910496, 0.406978, -0.073257,
		-0.115327, 0.420039, 0.900149,
		44.672604, 35.505512, 33.476044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458443, 35.234791, 33.042454>,  <44.753334, 35.211487, 32.845940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458443, 35.234791, 33.042454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235264, 35.272785, 33.372223>,  <45.101357, 35.295582, 33.570084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235264, 35.272785, 33.372223>,  <45.458443, 35.234791, 33.042454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235264, 35.272785, 33.372223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595102, -0.646595, 0.477251,
		0.578398, 0.756897, 0.304241,
		-0.557950, 0.094986, 0.824420,
		45.067879, 35.301281, 33.619549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887333, 35.179710, 33.580223>,  <45.458443, 35.234791, 33.042454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887333, 35.179710, 33.580223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544815, 35.115875, 33.776707>,  <45.339302, 35.077576, 33.894596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544815, 35.115875, 33.776707>,  <45.887333, 35.179710, 33.580223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544815, 35.115875, 33.776707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443878, -0.713635, 0.541938,
		0.264060, 0.682098, 0.681920,
		-0.856297, -0.159585, 0.491211,
		45.287926, 35.068001, 33.924068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101795, 34.984352, 34.335903>,  <45.887333, 35.179710, 33.580223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101795, 34.984352, 34.335903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723412, 34.867611, 34.279362>,  <45.496380, 34.797565, 34.245438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723412, 34.867611, 34.279362>,  <46.101795, 34.984352, 34.335903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723412, 34.867611, 34.279362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153784, -0.787502, 0.596818,
		-0.285494, 0.542830, 0.789828,
		-0.945962, -0.291851, -0.141349,
		45.439625, 34.780056, 34.236958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423740, 35.240414, 34.972713>,  <46.101795, 34.984352, 34.335903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423740, 35.240414, 34.972713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219398, 35.540699, 35.140266>,  <46.096794, 35.720871, 35.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219398, 35.540699, 35.140266>,  <46.423740, 35.240414, 34.972713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219398, 35.540699, 35.140266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849264, 0.365130, 0.381353,
		0.133342, 0.550554, -0.824081,
		-0.510852, 0.750713, 0.418879,
		46.066143, 35.765911, 35.265930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031422, 35.633213, 34.576984>,  <46.423740, 35.240414, 34.972713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031422, 35.633213, 34.576984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275856, 35.456345, 34.314365>,  <47.422516, 35.350224, 34.156796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275856, 35.456345, 34.314365>,  <47.031422, 35.633213, 34.576984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275856, 35.456345, 34.314365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373756, -0.569971, 0.731737,
		-0.697765, -0.692546, -0.183041,
		0.611090, -0.442168, -0.656549,
		47.459183, 35.323692, 34.117401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986229, 34.914566, 34.680256>,  <47.031422, 35.633213, 34.576984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986229, 34.914566, 34.680256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336472, 35.040390, 34.533634>,  <47.546616, 35.115887, 34.445660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336472, 35.040390, 34.533634>,  <46.986229, 34.914566, 34.680256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336472, 35.040390, 34.533634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482897, -0.552537, 0.679348,
		0.011161, -0.771850, -0.635706,
		0.875606, 0.314563, -0.366557,
		47.599152, 35.134758, 34.423668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.513508, 34.430576, 34.716122>,  <46.986229, 34.914566, 34.680256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.513508, 34.430576, 34.716122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727959, 34.768230, 34.717033>,  <47.856628, 34.970821, 34.717583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727959, 34.768230, 34.717033>,  <47.513508, 34.430576, 34.716122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.727959, 34.768230, 34.717033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500311, -0.319935, 0.804569,
		0.679892, -0.430213, -0.593855,
		0.536131, 0.844132, 0.002281,
		47.888798, 35.021469, 34.717716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.940540, 32.261314, 42.987366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551144, 32.298500, 43.070957>,  <35.317505, 32.320812, 43.121113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551144, 32.298500, 43.070957>,  <35.940540, 32.261314, 42.987366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551144, 32.298500, 43.070957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197177, 0.121944, -0.972754,
		-0.115913, -0.988174, -0.100381,
		-0.973491, 0.092962, 0.208980,
		35.259098, 32.326389, 43.133652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652763, 31.683506, 42.682827>,  <35.940540, 32.261314, 42.987366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652763, 31.683506, 42.682827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378372, 31.970661, 42.730270>,  <35.213737, 32.142956, 42.758736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378372, 31.970661, 42.730270>,  <35.652763, 31.683506, 42.682827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378372, 31.970661, 42.730270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143899, 0.025935, -0.989252,
		-0.713248, -0.695676, 0.085512,
		-0.685982, 0.717887, 0.118606,
		35.172577, 32.186028, 42.765854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207829, 31.638676, 42.112091>,  <35.652763, 31.683506, 42.682827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207829, 31.638676, 42.112091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065830, 31.989202, 42.242352>,  <34.980629, 32.199516, 42.320507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065830, 31.989202, 42.242352>,  <35.207829, 31.638676, 42.112091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065830, 31.989202, 42.242352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311249, 0.217675, -0.925063,
		-0.881533, -0.429754, 0.195478,
		-0.354999, 0.876315, 0.325649,
		34.959332, 32.252098, 42.340046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424232, 31.771936, 41.871159>,  <35.207829, 31.638676, 42.112091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424232, 31.771936, 41.871159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588833, 32.126404, 41.956364>,  <34.687592, 32.339085, 42.007484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588833, 32.126404, 41.956364>,  <34.424232, 31.771936, 41.871159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588833, 32.126404, 41.956364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220386, 0.323527, -0.920196,
		-0.884363, 0.331716, 0.328430,
		0.411499, 0.886169, 0.213010,
		34.712284, 32.392254, 42.020267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884369, 32.264660, 41.746124>,  <34.424232, 31.771936, 41.871159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884369, 32.264660, 41.746124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.237091, 32.451950, 41.723583>,  <34.448727, 32.564323, 41.710060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.237091, 32.451950, 41.723583>,  <33.884369, 32.264660, 41.746124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237091, 32.451950, 41.723583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270088, 0.403448, -0.874232,
		-0.386605, 0.786126, 0.482227,
		0.881810, 0.468226, -0.056348,
		34.501633, 32.592419, 41.706680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706005, 32.835163, 41.438801>,  <33.884369, 32.264660, 41.746124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706005, 32.835163, 41.438801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104729, 32.840244, 41.407257>,  <34.343964, 32.843292, 41.388329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104729, 32.840244, 41.407257>,  <33.706005, 32.835163, 41.438801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104729, 32.840244, 41.407257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076574, 0.432926, -0.898171,
		0.022735, 0.901340, 0.432515,
		0.996805, 0.012699, -0.078862,
		34.403770, 32.844055, 41.383598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914742, 33.567913, 41.297859>,  <33.706005, 32.835163, 41.438801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914742, 33.567913, 41.297859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205593, 33.317139, 41.185974>,  <34.380104, 33.166676, 41.118843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205593, 33.317139, 41.185974>,  <33.914742, 33.567913, 41.297859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205593, 33.317139, 41.185974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057800, 0.350086, -0.934933,
		0.684065, 0.695982, 0.218320,
		0.727128, -0.626936, -0.279709,
		34.423733, 33.129059, 41.102062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270027, 33.894859, 40.862602>,  <33.914742, 33.567913, 41.297859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270027, 33.894859, 40.862602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393322, 33.525543, 40.770924>,  <34.467297, 33.303955, 40.715916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393322, 33.525543, 40.770924>,  <34.270027, 33.894859, 40.862602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393322, 33.525543, 40.770924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042345, 0.254006, -0.966275,
		0.950368, 0.288132, 0.117390,
		0.308233, -0.923288, -0.229198,
		34.485790, 33.248558, 40.702164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920738, 33.995289, 40.398613>,  <34.270027, 33.894859, 40.862602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920738, 33.995289, 40.398613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.761223, 33.634922, 40.330132>,  <34.665512, 33.418701, 40.289043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.761223, 33.634922, 40.330132>,  <34.920738, 33.995289, 40.398613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761223, 33.634922, 40.330132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182000, 0.105226, -0.977652,
		0.898800, -0.421039, 0.122004,
		-0.398792, -0.900918, -0.171206,
		34.641586, 33.364647, 40.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436390, 33.685577, 39.999958>,  <34.920738, 33.995289, 40.398613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436390, 33.685577, 39.999958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.090282, 33.490593, 39.953148>,  <34.882618, 33.373600, 39.925060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.090282, 33.490593, 39.953148>,  <35.436390, 33.685577, 39.999958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090282, 33.490593, 39.953148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075998, 0.103190, -0.991754,
		0.495520, -0.867024, -0.052241,
		-0.865265, -0.487464, -0.117025,
		34.830704, 33.344353, 39.918041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561882, 33.105495, 39.446632>,  <35.436390, 33.685577, 39.999958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561882, 33.105495, 39.446632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169392, 33.182510, 39.442242>,  <34.933895, 33.228718, 39.439606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169392, 33.182510, 39.442242>,  <35.561882, 33.105495, 39.446632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169392, 33.182510, 39.442242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056707, 0.233650, -0.970666,
		-0.184321, -0.953068, -0.240182,
		-0.981229, 0.192534, -0.010979,
		34.875023, 33.240269, 39.438950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392155, 32.858486, 38.842503>,  <35.561882, 33.105495, 39.446632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392155, 32.858486, 38.842503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082069, 33.090363, 38.942898>,  <34.896019, 33.229488, 39.003136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082069, 33.090363, 38.942898>,  <35.392155, 32.858486, 38.842503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082069, 33.090363, 38.942898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120265, 0.254617, -0.959535,
		-0.620143, -0.774031, -0.127667,
		-0.775216, 0.579695, 0.250988,
		34.849506, 33.264271, 39.018192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676983, 32.677006, 38.471985>,  <35.392155, 32.858486, 38.842503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676983, 32.677006, 38.471985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660389, 33.061024, 38.582684>,  <34.650433, 33.291435, 38.649101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660389, 33.061024, 38.582684>,  <34.676983, 32.677006, 38.471985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660389, 33.061024, 38.582684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089202, 0.272316, -0.958064,
		-0.995149, -0.064435, 0.074340,
		-0.041489, 0.960048, 0.276742,
		34.647942, 33.349037, 38.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148071, 32.992199, 38.044300>,  <34.676983, 32.677006, 38.471985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148071, 32.992199, 38.044300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395172, 33.281139, 38.168613>,  <34.543434, 33.454502, 38.243202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395172, 33.281139, 38.168613>,  <34.148071, 32.992199, 38.044300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395172, 33.281139, 38.168613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129435, 0.296415, -0.946248,
		-0.775644, 0.624776, 0.089614,
		0.617756, 0.722352, 0.310781,
		34.580498, 33.497845, 38.261848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911865, 33.656281, 37.798580>,  <34.148071, 32.992199, 38.044300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911865, 33.656281, 37.798580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303474, 33.704258, 37.864460>,  <34.538441, 33.733044, 37.903988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303474, 33.704258, 37.864460>,  <33.911865, 33.656281, 37.798580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303474, 33.704258, 37.864460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081622, 0.509763, -0.856434,
		-0.186681, 0.851913, 0.489280,
		0.979024, 0.119944, 0.164697,
		34.597183, 33.740242, 37.913868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101620, 34.395947, 37.705200>,  <33.911865, 33.656281, 37.798580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101620, 34.395947, 37.705200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419949, 34.163292, 37.637829>,  <34.610947, 34.023701, 37.597408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419949, 34.163292, 37.637829>,  <34.101620, 34.395947, 37.705200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419949, 34.163292, 37.637829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166884, 0.478045, -0.862336,
		0.582080, 0.658159, 0.477505,
		0.795822, -0.581636, -0.168424,
		34.658695, 33.988800, 37.587303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524075, 34.847679, 37.306446>,  <34.101620, 34.395947, 37.705200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524075, 34.847679, 37.306446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750904, 34.521290, 37.261524>,  <34.887001, 34.325455, 37.234570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750904, 34.521290, 37.261524>,  <34.524075, 34.847679, 37.306446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750904, 34.521290, 37.261524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305635, 0.335077, -0.891241,
		0.764859, 0.471077, 0.439404,
		0.567077, -0.815972, -0.112309,
		34.921028, 34.276497, 37.227833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166573, 35.069305, 37.125935>,  <34.524075, 34.847679, 37.306446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166573, 35.069305, 37.125935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179203, 34.686630, 37.010178>,  <35.186783, 34.457024, 36.940723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179203, 34.686630, 37.010178>,  <35.166573, 35.069305, 37.125935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179203, 34.686630, 37.010178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298620, 0.285338, -0.910719,
		0.953850, -0.057661, 0.294697,
		0.031575, -0.956691, -0.289389,
		35.188675, 34.399624, 36.923363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804283, 34.924103, 36.913795>,  <35.166573, 35.069305, 37.125935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804283, 34.924103, 36.913795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603020, 34.624134, 36.742008>,  <35.482262, 34.444153, 36.638935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603020, 34.624134, 36.742008>,  <35.804283, 34.924103, 36.913795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603020, 34.624134, 36.742008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496468, 0.155929, -0.853935,
		0.707352, -0.642886, 0.293855,
		-0.503162, -0.749923, -0.429469,
		35.452072, 34.399158, 36.613167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272182, 34.685459, 36.443012>,  <35.804283, 34.924103, 36.913795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272182, 34.685459, 36.443012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931580, 34.528160, 36.304276>,  <35.727219, 34.433781, 36.221035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931580, 34.528160, 36.304276>,  <36.272182, 34.685459, 36.443012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931580, 34.528160, 36.304276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354882, 0.054745, -0.933307,
		0.386007, -0.917802, 0.092941,
		-0.851503, -0.393246, -0.346843,
		35.676128, 34.410187, 36.200222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522186, 34.319374, 35.893833>,  <36.272182, 34.685459, 36.443012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522186, 34.319374, 35.893833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131454, 34.348736, 35.813427>,  <35.897015, 34.366352, 35.765182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131454, 34.348736, 35.813427>,  <36.522186, 34.319374, 35.893833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131454, 34.348736, 35.813427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208884, 0.122833, -0.970196,
		-0.046521, -0.989709, -0.135320,
		-0.976833, 0.073401, -0.201020,
		35.838406, 34.370754, 35.753120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274506, 33.732502, 35.367928>,  <36.522186, 34.319374, 35.893833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274506, 33.732502, 35.367928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053345, 34.063389, 35.327923>,  <35.920647, 34.261921, 35.303921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053345, 34.063389, 35.327923>,  <36.274506, 33.732502, 35.367928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053345, 34.063389, 35.327923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363376, 0.131363, -0.922335,
		-0.749835, -0.546307, -0.373223,
		-0.552906, 0.827220, -0.100014,
		35.887474, 34.311554, 35.297920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837379, 33.529392, 35.043034>,  <36.274506, 33.732502, 35.367928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837379, 33.529392, 35.043034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224091, 33.603981, 34.973095>,  <37.456116, 33.648735, 34.931133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224091, 33.603981, 34.973095>,  <36.837379, 33.529392, 35.043034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224091, 33.603981, 34.973095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247224, -0.508179, 0.825005,
		0.064991, -0.840822, -0.537397,
		0.966776, 0.186475, -0.174845,
		37.514122, 33.659924, 34.920643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185982, 32.826015, 35.065002>,  <36.837379, 33.529392, 35.043034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185982, 32.826015, 35.065002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450401, 33.113022, 35.152809>,  <37.609055, 33.285225, 35.205494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450401, 33.113022, 35.152809>,  <37.185982, 32.826015, 35.065002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450401, 33.113022, 35.152809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187510, -0.441244, 0.877578,
		0.726534, -0.538962, -0.426225,
		0.661051, 0.717512, 0.219518,
		37.648716, 33.328274, 35.218666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737450, 32.494247, 35.285973>,  <37.185982, 32.826015, 35.065002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737450, 32.494247, 35.285973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812340, 32.862053, 35.424217>,  <37.857273, 33.082737, 35.507164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812340, 32.862053, 35.424217>,  <37.737450, 32.494247, 35.285973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812340, 32.862053, 35.424217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267439, -0.386256, 0.882770,
		0.945210, -0.072851, -0.318231,
		0.187230, 0.919510, 0.345610,
		37.868507, 33.137905, 35.527901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469593, 32.533989, 35.516247>,  <37.737450, 32.494247, 35.285973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469593, 32.533989, 35.516247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.260391, 32.807384, 35.719936>,  <38.134872, 32.971424, 35.842152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.260391, 32.807384, 35.719936>,  <38.469593, 32.533989, 35.516247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260391, 32.807384, 35.719936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324433, -0.392834, 0.860479,
		0.788171, 0.615240, -0.016295,
		-0.523000, 0.683492, 0.509225,
		38.103493, 33.012432, 35.872704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897789, 32.695324, 36.079586>,  <38.469593, 32.533989, 35.516247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897789, 32.695324, 36.079586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545101, 32.840565, 36.200073>,  <38.333488, 32.927708, 36.272366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545101, 32.840565, 36.200073>,  <38.897789, 32.695324, 36.079586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545101, 32.840565, 36.200073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136142, -0.415481, 0.899356,
		0.451705, 0.833987, 0.316904,
		-0.881719, 0.363100, 0.301216,
		38.280586, 32.949493, 36.290440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935814, 33.097462, 36.654629>,  <38.897789, 32.695324, 36.079586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935814, 33.097462, 36.654629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543289, 33.026817, 36.685177>,  <38.307774, 32.984428, 36.703506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543289, 33.026817, 36.685177>,  <38.935814, 33.097462, 36.654629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543289, 33.026817, 36.685177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138733, -0.374406, 0.916828,
		-0.133333, 0.910290, 0.391912,
		-0.981313, -0.176615, 0.076366,
		38.248894, 32.973831, 36.708088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718773, 33.287663, 37.346985>,  <38.935814, 33.097462, 36.654629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718773, 33.287663, 37.346985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433113, 33.041348, 37.213844>,  <38.261719, 32.893559, 37.133961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433113, 33.041348, 37.213844>,  <38.718773, 33.287663, 37.346985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433113, 33.041348, 37.213844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304159, -0.155295, 0.939878,
		-0.630460, 0.772453, -0.076396,
		-0.714148, -0.615792, -0.332856,
		38.218868, 32.856609, 37.113987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147503, 33.432453, 37.734489>,  <38.718773, 33.287663, 37.346985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147503, 33.432453, 37.734489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066345, 33.068878, 37.588799>,  <38.017651, 32.850731, 37.501385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066345, 33.068878, 37.588799>,  <38.147503, 33.432453, 37.734489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066345, 33.068878, 37.588799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330446, -0.286585, 0.899263,
		-0.921759, 0.302813, -0.242209,
		-0.202895, -0.908941, -0.364226,
		38.005478, 32.796196, 37.479530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501350, 33.196293, 38.146503>,  <38.147503, 33.432453, 37.734489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501350, 33.196293, 38.146503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678940, 32.866524, 38.006092>,  <37.785492, 32.668663, 37.921844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678940, 32.866524, 38.006092>,  <37.501350, 33.196293, 38.146503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678940, 32.866524, 38.006092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223894, -0.481394, 0.847426,
		-0.867618, -0.297639, -0.398308,
		0.443970, -0.824421, -0.351026,
		37.812130, 32.619198, 37.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125340, 32.626484, 38.375381>,  <37.501350, 33.196293, 38.146503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125340, 32.626484, 38.375381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471779, 32.452026, 38.277683>,  <37.679642, 32.347351, 38.219063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471779, 32.452026, 38.277683>,  <37.125340, 32.626484, 38.375381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471779, 32.452026, 38.277683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086281, -0.611711, 0.786362,
		-0.492372, -0.659993, -0.567432,
		0.866098, -0.436142, -0.244245,
		37.731609, 32.321182, 38.204411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932449, 31.905548, 38.483963>,  <37.125340, 32.626484, 38.375381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932449, 31.905548, 38.483963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327816, 31.958431, 38.513786>,  <37.565037, 31.990162, 38.531681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327816, 31.958431, 38.513786>,  <36.932449, 31.905548, 38.483963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327816, 31.958431, 38.513786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015355, -0.401605, 0.915684,
		0.151004, -0.906220, -0.394921,
		0.988414, 0.132208, 0.074559,
		37.624340, 31.998093, 38.536156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107185, 31.349060, 38.846565>,  <36.932449, 31.905548, 38.483963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107185, 31.349060, 38.846565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414162, 31.601187, 38.893459>,  <37.598347, 31.752462, 38.921597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414162, 31.601187, 38.893459>,  <37.107185, 31.349060, 38.846565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414162, 31.601187, 38.893459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148939, -0.353131, 0.923643,
		0.623585, -0.691377, -0.364884,
		0.767437, 0.630315, 0.117234,
		37.644394, 31.790281, 38.928631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504009, 31.012922, 39.419804>,  <37.107185, 31.349060, 38.846565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504009, 31.012922, 39.419804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653172, 31.384058, 39.416767>,  <37.742668, 31.606739, 39.414948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653172, 31.384058, 39.416767>,  <37.504009, 31.012922, 39.419804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653172, 31.384058, 39.416767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257561, -0.095652, 0.961516,
		0.891406, -0.360508, -0.274644,
		0.372904, 0.927839, -0.007588,
		37.765041, 31.662409, 39.414490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185986, 30.996620, 39.548164>,  <37.504009, 31.012922, 39.419804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185986, 30.996620, 39.548164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091881, 31.364340, 39.674362>,  <38.035416, 31.584972, 39.750080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091881, 31.364340, 39.674362>,  <38.185986, 30.996620, 39.548164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091881, 31.364340, 39.674362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357585, -0.219973, 0.907604,
		0.903761, 0.326344, -0.276976,
		-0.235264, 0.919299, 0.315499,
		38.021301, 31.640129, 39.769012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753090, 31.312218, 39.914326>,  <38.185986, 30.996620, 39.548164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753090, 31.312218, 39.914326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420475, 31.494886, 40.040813>,  <38.220905, 31.604486, 40.116707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420475, 31.494886, 40.040813>,  <38.753090, 31.312218, 39.914326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420475, 31.494886, 40.040813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286817, -0.134528, 0.948493,
		0.475690, 0.879405, -0.019115,
		-0.831538, 0.456671, 0.316222,
		38.171013, 31.631887, 40.135681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963032, 31.540583, 40.565723>,  <38.753090, 31.312218, 39.914326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963032, 31.540583, 40.565723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564240, 31.569374, 40.577351>,  <38.324963, 31.586649, 40.584328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564240, 31.569374, 40.577351>,  <38.963032, 31.540583, 40.565723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564240, 31.569374, 40.577351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015979, -0.176117, 0.984239,
		0.075964, 0.981734, 0.174436,
		-0.996983, 0.071979, 0.029066,
		38.265144, 31.590967, 40.586071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840649, 32.058609, 41.131905>,  <38.963032, 31.540583, 40.565723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840649, 32.058609, 41.131905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517330, 31.830721, 41.072472>,  <38.323338, 31.693989, 41.036812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517330, 31.830721, 41.072472>,  <38.840649, 32.058609, 41.131905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517330, 31.830721, 41.072472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023787, -0.220552, 0.975085,
		-0.588293, 0.791694, 0.164720,
		-0.808298, -0.569717, -0.148582,
		38.274841, 31.659805, 41.027897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341698, 32.294380, 41.587997>,  <38.840649, 32.058609, 41.131905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341698, 32.294380, 41.587997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218628, 31.916483, 41.542759>,  <38.144787, 31.689745, 41.515614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218628, 31.916483, 41.542759>,  <38.341698, 32.294380, 41.587997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218628, 31.916483, 41.542759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000075, -0.118888, 0.992908,
		-0.951491, 0.305487, 0.036650,
		-0.307678, -0.944745, -0.113098,
		38.126324, 31.633059, 41.508831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.808773, 32.187847, 42.067646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862381, 31.802004, 41.976814>,  <37.894547, 31.570498, 41.922314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862381, 31.802004, 41.976814>,  <37.808773, 32.187847, 42.067646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862381, 31.802004, 41.976814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161654, -0.247360, 0.955343,
		-0.977705, -0.091324, -0.189084,
		0.134017, -0.964610, -0.227082,
		37.902588, 31.512621, 41.908691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327435, 31.884569, 42.394493>,  <37.808773, 32.187847, 42.067646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327435, 31.884569, 42.394493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593018, 31.592396, 42.330452>,  <37.752365, 31.417091, 42.292027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593018, 31.592396, 42.330452>,  <37.327435, 31.884569, 42.394493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593018, 31.592396, 42.330452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167914, -0.354275, 0.919942,
		-0.728677, -0.583915, -0.357873,
		0.663954, -0.730433, -0.160104,
		37.792202, 31.373266, 42.282421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990562, 31.226812, 42.444534>,  <37.327435, 31.884569, 42.394493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990562, 31.226812, 42.444534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371365, 31.129112, 42.518314>,  <37.599846, 31.070492, 42.562580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371365, 31.129112, 42.518314>,  <36.990562, 31.226812, 42.444534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371365, 31.129112, 42.518314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300509, -0.631573, 0.714709,
		-0.058074, -0.735838, -0.674663,
		0.952009, -0.244249, 0.184448,
		37.656967, 31.055838, 42.573650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995987, 30.528889, 42.608665>,  <36.990562, 31.226812, 42.444534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995987, 30.528889, 42.608665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335712, 30.656269, 42.777069>,  <37.539547, 30.732697, 42.878113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335712, 30.656269, 42.777069>,  <36.995987, 30.528889, 42.608665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335712, 30.656269, 42.777069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256782, -0.447601, 0.856573,
		0.461222, -0.835609, -0.298382,
		0.849316, 0.318451, 0.421013,
		37.590508, 30.751804, 42.903374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263580, 29.982538, 43.010311>,  <36.995987, 30.528889, 42.608665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263580, 29.982538, 43.010311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460918, 30.289322, 43.174450>,  <37.579323, 30.473392, 43.272934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460918, 30.289322, 43.174450>,  <37.263580, 29.982538, 43.010311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460918, 30.289322, 43.174450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214653, -0.349815, 0.911895,
		0.842930, -0.537964, -0.007950,
		0.493348, 0.766958, 0.410345,
		37.608921, 30.519409, 43.297554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753582, 29.706173, 43.525032>,  <37.263580, 29.982538, 43.010311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753582, 29.706173, 43.525032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705292, 30.089828, 43.627388>,  <37.676315, 30.320023, 43.688801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705292, 30.089828, 43.627388>,  <37.753582, 29.706173, 43.525032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705292, 30.089828, 43.627388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203878, -0.276233, 0.939217,
		0.971524, 0.061221, 0.228896,
		-0.120729, 0.959139, 0.255886,
		37.669075, 30.377569, 43.704155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149483, 29.798338, 44.174152>,  <37.753582, 29.706173, 43.525032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149483, 29.798338, 44.174152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929359, 30.131706, 44.153851>,  <37.797287, 30.331726, 44.141670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929359, 30.131706, 44.153851>,  <38.149483, 29.798338, 44.174152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929359, 30.131706, 44.153851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182880, -0.060994, 0.981241,
		0.814689, 0.549265, 0.185981,
		-0.550306, 0.833419, -0.050758,
		37.764267, 30.381731, 44.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394501, 30.448435, 44.559998>,  <38.149483, 29.798338, 44.174152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394501, 30.448435, 44.559998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001404, 30.511497, 44.521305>,  <37.765545, 30.549335, 44.498089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001404, 30.511497, 44.521305>,  <38.394501, 30.448435, 44.559998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001404, 30.511497, 44.521305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082194, 0.096249, 0.991958,
		0.165701, 0.982792, -0.081629,
		-0.982745, 0.157659, -0.096728,
		37.706581, 30.558796, 44.492287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266708, 30.910736, 44.966335>,  <38.394501, 30.448435, 44.559998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266708, 30.910736, 44.966335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902653, 30.745655, 44.951801>,  <37.684219, 30.646606, 44.943081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902653, 30.745655, 44.951801>,  <38.266708, 30.910736, 44.966335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902653, 30.745655, 44.951801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119657, 0.177896, 0.976747,
		-0.396644, 0.893325, -0.211293,
		-0.910141, -0.412703, -0.036331,
		37.629612, 30.621843, 44.940903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886795, 31.346708, 45.380253>,  <38.266708, 30.910736, 44.966335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886795, 31.346708, 45.380253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664619, 31.016638, 45.339127>,  <37.531315, 30.818596, 45.314449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664619, 31.016638, 45.339127>,  <37.886795, 31.346708, 45.380253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664619, 31.016638, 45.339127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037107, -0.098924, 0.994403,
		-0.830731, 0.556142, 0.024326,
		-0.555436, -0.825178, -0.102816,
		37.497990, 30.769085, 45.308281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413818, 31.331446, 45.945229>,  <37.886795, 31.346708, 45.380253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413818, 31.331446, 45.945229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376427, 30.954088, 45.817940>,  <37.353992, 30.727673, 45.741566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376427, 30.954088, 45.817940>,  <37.413818, 31.331446, 45.945229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376427, 30.954088, 45.817940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030151, -0.322160, 0.946205,
		-0.995165, 0.078855, 0.058559,
		-0.093478, -0.943395, -0.318225,
		37.348385, 30.671070, 45.722473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797363, 31.041445, 46.204952>,  <37.413818, 31.331446, 45.945229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797363, 31.041445, 46.204952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005581, 30.712219, 46.114086>,  <37.130512, 30.514685, 46.059566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005581, 30.712219, 46.114086>,  <36.797363, 31.041445, 46.204952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005581, 30.712219, 46.114086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133103, -0.341024, 0.930584,
		-0.843399, -0.454169, -0.287068,
		0.520539, -0.823063, -0.227168,
		37.161743, 30.465300, 46.045937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395138, 30.534899, 46.480244>,  <36.797363, 31.041445, 46.204952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395138, 30.534899, 46.480244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766876, 30.393045, 46.439148>,  <36.989918, 30.307934, 46.414490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766876, 30.393045, 46.439148>,  <36.395138, 30.534899, 46.480244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766876, 30.393045, 46.439148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081592, -0.468651, 0.879607,
		-0.360084, -0.809076, -0.464474,
		0.929345, -0.354629, -0.102740,
		37.045681, 30.286655, 46.408325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281387, 29.872683, 46.569649>,  <36.395138, 30.534899, 46.480244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281387, 29.872683, 46.569649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676540, 29.913971, 46.616001>,  <36.913631, 29.938744, 46.643810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676540, 29.913971, 46.616001>,  <36.281387, 29.872683, 46.569649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676540, 29.913971, 46.616001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033049, -0.589643, 0.806988,
		0.151627, -0.801041, -0.579088,
		0.987885, 0.103223, 0.115879,
		36.972904, 29.944937, 46.650764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475216, 29.189089, 46.679714>,  <36.281387, 29.872683, 46.569649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475216, 29.189089, 46.679714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762344, 29.425428, 46.827030>,  <36.934620, 29.567232, 46.915421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762344, 29.425428, 46.827030>,  <36.475216, 29.189089, 46.679714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762344, 29.425428, 46.827030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149867, -0.647697, 0.747013,
		0.679911, -0.481025, -0.553476,
		0.717817, 0.590850, 0.368286,
		36.977688, 29.602684, 46.937515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957222, 28.647520, 46.801144>,  <36.475216, 29.189089, 46.679714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957222, 28.647520, 46.801144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048134, 28.984917, 46.995819>,  <37.102680, 29.187355, 47.112625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048134, 28.984917, 46.995819>,  <36.957222, 28.647520, 46.801144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048134, 28.984917, 46.995819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290013, -0.535721, 0.793029,
		0.929644, -0.039091, -0.366381,
		0.227278, 0.843490, 0.486692,
		37.116318, 29.237963, 47.141827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541832, 28.560503, 47.035744>,  <36.957222, 28.647520, 46.801144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541832, 28.560503, 47.035744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370472, 28.830734, 47.275768>,  <37.267658, 28.992872, 47.419785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370472, 28.830734, 47.275768>,  <37.541832, 28.560503, 47.035744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370472, 28.830734, 47.275768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326279, -0.503623, 0.799941,
		0.842625, 0.538480, -0.004675,
		-0.428398, 0.675576, 0.600060,
		37.241951, 29.033407, 47.455788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815701, 28.353760, 47.697865>,  <37.541832, 28.560503, 47.035744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815701, 28.353760, 47.697865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550766, 28.630167, 47.813663>,  <37.391808, 28.796011, 47.883141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550766, 28.630167, 47.813663>,  <37.815701, 28.353760, 47.697865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550766, 28.630167, 47.813663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018834, -0.370922, 0.928473,
		0.748972, 0.620411, 0.232660,
		-0.662334, 0.691019, 0.289495,
		37.352066, 28.837473, 47.900513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078167, 28.805056, 48.244110>,  <37.815701, 28.353760, 47.697865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078167, 28.805056, 48.244110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683468, 28.836727, 48.300751>,  <37.446648, 28.855730, 48.334736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683468, 28.836727, 48.300751>,  <38.078167, 28.805056, 48.244110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683468, 28.836727, 48.300751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088789, -0.466941, 0.879820,
		0.135781, 0.880737, 0.453725,
		-0.986752, 0.079177, 0.141602,
		37.387444, 28.860479, 48.343231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933666, 29.013599, 48.941990>,  <38.078167, 28.805056, 48.244110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933666, 29.013599, 48.941990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600819, 28.842899, 48.800312>,  <37.401108, 28.740479, 48.715305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600819, 28.842899, 48.800312>,  <37.933666, 29.013599, 48.941990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600819, 28.842899, 48.800312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035828, -0.595963, 0.802212,
		-0.553435, 0.680228, 0.480624,
		-0.832122, -0.426752, -0.354198,
		37.351181, 28.714874, 48.694054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545654, 28.877550, 49.509750>,  <37.933666, 29.013599, 48.941990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545654, 28.877550, 49.509750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405529, 28.639013, 49.220848>,  <37.321453, 28.495892, 49.047504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405529, 28.639013, 49.220848>,  <37.545654, 28.877550, 49.509750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405529, 28.639013, 49.220848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033044, -0.762774, 0.645821,
		-0.936048, 0.250108, 0.247507,
		-0.350317, -0.596341, -0.722258,
		37.300434, 28.460112, 49.004169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110252, 28.515676, 49.892456>,  <37.545654, 28.877550, 49.509750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110252, 28.515676, 49.892456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151859, 28.295351, 49.561207>,  <37.176823, 28.163157, 49.362457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151859, 28.295351, 49.561207>,  <37.110252, 28.515676, 49.892456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151859, 28.295351, 49.561207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048968, -0.834464, 0.548882,
		-0.993369, -0.016541, -0.113769,
		0.104015, -0.550814, -0.828121,
		37.183064, 28.130106, 49.312771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569603, 28.029158, 49.772850>,  <37.110252, 28.515676, 49.892456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569603, 28.029158, 49.772850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896496, 27.860546, 49.615654>,  <37.092632, 27.759380, 49.521336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896496, 27.860546, 49.615654>,  <36.569603, 28.029158, 49.772850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896496, 27.860546, 49.615654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155709, -0.818057, 0.553659,
		-0.554868, -0.391279, -0.734182,
		0.817237, -0.421526, -0.392988,
		37.141666, 27.734089, 49.497757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930660, 28.317444, 50.060112>,  <36.569603, 28.029158, 49.772850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930660, 28.317444, 50.060112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611446, 28.078558, 50.027924>,  <35.419918, 27.935226, 50.008610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611446, 28.078558, 50.027924>,  <35.930660, 28.317444, 50.060112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611446, 28.078558, 50.027924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247151, 0.446159, -0.860150,
		0.549599, -0.666540, -0.503653,
		-0.798033, -0.597216, -0.080473,
		35.372036, 27.899393, 50.003780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880939, 28.055344, 49.344948>,  <35.930660, 28.317444, 50.060112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880939, 28.055344, 49.344948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516476, 28.041979, 49.509228>,  <35.297798, 28.033960, 49.607796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516476, 28.041979, 49.509228>,  <35.880939, 28.055344, 49.344948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516476, 28.041979, 49.509228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372982, 0.490498, -0.787589,
		-0.175132, -0.870802, -0.459384,
		-0.911160, -0.033410, 0.410696,
		35.243126, 28.031956, 49.632435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299347, 27.870811, 48.817562>,  <35.880939, 28.055344, 49.344948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299347, 27.870811, 48.817562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145386, 28.077457, 49.123493>,  <35.053009, 28.201445, 49.307053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145386, 28.077457, 49.123493>,  <35.299347, 27.870811, 48.817562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145386, 28.077457, 49.123493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439109, 0.626374, -0.644080,
		-0.811808, -0.583750, -0.014243,
		-0.384904, 0.516615, 0.764825,
		35.029915, 28.232443, 49.352940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615303, 27.962038, 48.566185>,  <35.299347, 27.870811, 48.817562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615303, 27.962038, 48.566185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667942, 28.233467, 48.855244>,  <34.699524, 28.396324, 49.028679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667942, 28.233467, 48.855244>,  <34.615303, 27.962038, 48.566185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667942, 28.233467, 48.855244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329689, 0.717451, -0.613652,
		-0.934873, -0.157493, 0.318133,
		0.131599, 0.678572, 0.722649,
		34.707420, 28.437038, 49.072037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071823, 28.381893, 48.536114>,  <34.615303, 27.962038, 48.566185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071823, 28.381893, 48.536114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341671, 28.613525, 48.719223>,  <34.503578, 28.752504, 48.829090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341671, 28.613525, 48.719223>,  <34.071823, 28.381893, 48.536114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341671, 28.613525, 48.719223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374596, 0.802929, -0.463662,
		-0.636059, 0.141312, 0.758590,
		0.674615, 0.579081, 0.457776,
		34.544056, 28.787251, 48.856556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715195, 28.989241, 48.957779>,  <34.071823, 28.381893, 48.536114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715195, 28.989241, 48.957779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083912, 29.074329, 48.828133>,  <34.305141, 29.125381, 48.750347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083912, 29.074329, 48.828133>,  <33.715195, 28.989241, 48.957779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083912, 29.074329, 48.828133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357450, 0.790012, -0.498108,
		0.150094, 0.575006, 0.804264,
		0.921793, 0.212721, -0.324112,
		34.360451, 29.138145, 48.730900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790825, 29.673048, 48.818272>,  <33.715195, 28.989241, 48.957779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790825, 29.673048, 48.818272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108028, 29.552055, 48.606747>,  <34.298351, 29.479460, 48.479832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108028, 29.552055, 48.606747>,  <33.790825, 29.673048, 48.818272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108028, 29.552055, 48.606747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206511, 0.683168, -0.700454,
		0.573142, 0.664671, 0.479292,
		0.793008, -0.302480, -0.528813,
		34.345932, 29.461311, 48.448101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896358, 30.235420, 48.488445>,  <33.790825, 29.673048, 48.818272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896358, 30.235420, 48.488445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154835, 30.000851, 48.293083>,  <34.309921, 29.860109, 48.175865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154835, 30.000851, 48.293083>,  <33.896358, 30.235420, 48.488445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154835, 30.000851, 48.293083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012254, 0.631912, -0.774944,
		0.763075, 0.506749, 0.401152,
		0.646194, -0.586424, -0.488405,
		34.348694, 29.824923, 48.146561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436756, 30.675413, 48.270321>,  <33.896358, 30.235420, 48.488445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436756, 30.675413, 48.270321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409580, 30.360844, 48.024746>,  <34.393272, 30.172102, 47.877399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409580, 30.360844, 48.024746>,  <34.436756, 30.675413, 48.270321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409580, 30.360844, 48.024746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042715, 0.612502, -0.789314,
		0.996774, -0.079852, -0.008023,
		-0.067942, -0.786425, -0.613938,
		34.389198, 30.124916, 47.840565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962578, 30.886576, 47.764336>,  <34.436756, 30.675413, 48.270321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962578, 30.886576, 47.764336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748379, 30.587111, 47.608002>,  <34.619858, 30.407433, 47.514202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748379, 30.587111, 47.608002>,  <34.962578, 30.886576, 47.764336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748379, 30.587111, 47.608002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006920, 0.466651, -0.884414,
		0.844509, -0.470897, -0.255071,
		-0.535497, -0.748661, -0.390832,
		34.587730, 30.362513, 47.490753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429352, 30.498119, 47.169209>,  <34.962578, 30.886576, 47.764336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429352, 30.498119, 47.169209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073238, 30.353615, 47.058296>,  <34.859570, 30.266912, 46.991749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073238, 30.353615, 47.058296>,  <35.429352, 30.498119, 47.169209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073238, 30.353615, 47.058296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111871, 0.416722, -0.902124,
		0.441454, -0.834165, -0.330585,
		-0.890283, -0.361264, -0.277282,
		34.806152, 30.245237, 46.975113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577320, 30.242807, 46.603767>,  <35.429352, 30.498119, 47.169209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577320, 30.242807, 46.603767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181873, 30.302588, 46.596859>,  <34.944603, 30.338455, 46.592712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181873, 30.302588, 46.596859>,  <35.577320, 30.242807, 46.603767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181873, 30.302588, 46.596859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071104, 0.362963, -0.929087,
		-0.132580, -0.919741, -0.369458,
		-0.988619, 0.149448, -0.017275,
		34.885288, 30.347422, 46.591675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259117, 29.859816, 46.085922>,  <35.577320, 30.242807, 46.603767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259117, 29.859816, 46.085922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040974, 30.187622, 46.156326>,  <34.910088, 30.384306, 46.198570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040974, 30.187622, 46.156326>,  <35.259117, 29.859816, 46.085922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040974, 30.187622, 46.156326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249736, 0.359313, -0.899181,
		-0.800137, -0.446416, -0.400616,
		-0.545356, 0.819516, 0.176013,
		34.877365, 30.433477, 46.209129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817020, 29.877636, 45.484737>,  <35.259117, 29.859816, 46.085922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817020, 29.877636, 45.484737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833508, 30.230957, 45.671532>,  <34.843399, 30.442949, 45.783607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833508, 30.230957, 45.671532>,  <34.817020, 29.877636, 45.484737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833508, 30.230957, 45.671532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150262, 0.456590, -0.876896,
		-0.987787, 0.106314, -0.113907,
		0.041218, 0.883302, 0.466988,
		34.845875, 30.495947, 45.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259811, 30.137100, 45.036942>,  <34.817020, 29.877636, 45.484737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259811, 30.137100, 45.036942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475018, 30.420744, 45.219238>,  <34.604141, 30.590929, 45.328617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475018, 30.420744, 45.219238>,  <34.259811, 30.137100, 45.036942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475018, 30.420744, 45.219238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046638, 0.514793, -0.856045,
		-0.841641, 0.481824, 0.243897,
		0.538020, 0.709108, 0.455742,
		34.636425, 30.633476, 45.355961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954205, 30.869007, 44.802448>,  <34.259811, 30.137100, 45.036942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954205, 30.869007, 44.802448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323051, 30.930317, 44.944546>,  <34.544361, 30.967102, 45.029804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323051, 30.930317, 44.944546>,  <33.954205, 30.869007, 44.802448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323051, 30.930317, 44.944546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256437, 0.445409, -0.857817,
		-0.289710, 0.882110, 0.371417,
		0.922122, 0.153273, 0.355245,
		34.599689, 30.976299, 45.051121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020153, 31.532185, 44.780350>,  <33.954205, 30.869007, 44.802448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020153, 31.532185, 44.780350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395317, 31.393873, 44.791393>,  <34.620415, 31.310886, 44.798019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395317, 31.393873, 44.791393>,  <34.020153, 31.532185, 44.780350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395317, 31.393873, 44.791393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248466, 0.614145, -0.749060,
		0.242055, 0.709410, 0.661927,
		0.937909, -0.345780, 0.027607,
		34.676689, 31.290138, 44.799675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415600, 32.102875, 44.941181>,  <34.020153, 31.532185, 44.780350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415600, 32.102875, 44.941181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644440, 31.837246, 44.748634>,  <34.781742, 31.677870, 44.633106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644440, 31.837246, 44.748634>,  <34.415600, 32.102875, 44.941181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644440, 31.837246, 44.748634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148126, 0.660907, -0.735704,
		0.806698, 0.349592, 0.476470,
		0.572099, -0.664069, -0.481369,
		34.816071, 31.638025, 44.604225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925030, 32.484642, 44.769554>,  <34.415600, 32.102875, 44.941181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925030, 32.484642, 44.769554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983730, 32.170483, 44.529018>,  <35.018951, 31.981987, 44.384697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983730, 32.170483, 44.529018>,  <34.925030, 32.484642, 44.769554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983730, 32.170483, 44.529018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196611, 0.618952, -0.760422,
		0.969437, -0.006639, 0.245249,
		0.146749, -0.785400, -0.601341,
		35.027756, 31.934862, 44.348618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457546, 32.877121, 44.335903>,  <34.925030, 32.484642, 44.769554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457546, 32.877121, 44.335903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332085, 32.552238, 44.139153>,  <35.256809, 32.357307, 44.021103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332085, 32.552238, 44.139153>,  <35.457546, 32.877121, 44.335903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332085, 32.552238, 44.139153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020622, 0.512066, -0.858698,
		0.949315, -0.279474, -0.143860,
		-0.313650, -0.812208, -0.491876,
		35.237991, 32.308575, 43.991589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843540, 32.776108, 43.660439>,  <35.457546, 32.877121, 44.335903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843540, 32.776108, 43.660439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510582, 32.556400, 43.630974>,  <35.310806, 32.424576, 43.613297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510582, 32.556400, 43.630974>,  <35.843540, 32.776108, 43.660439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510582, 32.556400, 43.630974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128425, 0.320477, -0.938510,
		0.539103, -0.771748, -0.337302,
		-0.832391, -0.549271, -0.073659,
		35.260864, 32.391621, 43.608875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.258877, 37.348171, 27.615507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.927910, 37.311836, 27.393829>,  <45.729332, 37.290035, 27.260822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.927910, 37.311836, 27.393829>,  <46.258877, 37.348171, 27.615507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927910, 37.311836, 27.393829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329702, -0.720292, 0.610308,
		-0.454622, 0.687698, 0.566031,
		-0.827415, -0.090838, -0.554196,
		45.679684, 37.284584, 27.227570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736450, 37.238056, 28.117655>,  <46.258877, 37.348171, 27.615507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736450, 37.238056, 28.117655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560226, 37.122379, 27.777708>,  <45.454494, 37.052971, 27.573740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560226, 37.122379, 27.777708>,  <45.736450, 37.238056, 28.117655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560226, 37.122379, 27.777708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471317, -0.731213, 0.493141,
		-0.764048, 0.617814, 0.185839,
		-0.440557, -0.289194, -0.849868,
		45.428059, 37.035622, 27.522747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019825, 37.317760, 28.234867>,  <45.736450, 37.238056, 28.117655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019825, 37.317760, 28.234867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074894, 37.061188, 27.932978>,  <45.107937, 36.907242, 27.751844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074894, 37.061188, 27.932978>,  <45.019825, 37.317760, 28.234867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074894, 37.061188, 27.932978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511229, -0.698656, 0.500524,
		-0.848345, 0.316926, -0.424108,
		0.137677, -0.641434, -0.754724,
		45.116196, 36.868759, 27.706560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373856, 36.987774, 28.165794>,  <45.019825, 37.317760, 28.234867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373856, 36.987774, 28.165794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663994, 36.757572, 28.014708>,  <44.838078, 36.619453, 27.924055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663994, 36.757572, 28.014708>,  <44.373856, 36.987774, 28.165794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663994, 36.757572, 28.014708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373385, -0.789890, 0.486475,
		-0.578323, -0.211828, -0.787827,
		0.725346, -0.575502, -0.377718,
		44.881599, 36.584923, 27.901392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004467, 36.415958, 28.007179>,  <44.373856, 36.987774, 28.165794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004467, 36.415958, 28.007179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393658, 36.327518, 28.033838>,  <44.627171, 36.274456, 28.049833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393658, 36.327518, 28.033838>,  <44.004467, 36.415958, 28.007179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393658, 36.327518, 28.033838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212471, -0.744081, 0.633403,
		-0.090451, -0.630445, -0.770946,
		0.972972, -0.221096, 0.066648,
		44.685551, 36.261189, 28.053833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034515, 35.655380, 28.107838>,  <44.004467, 36.415958, 28.007179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034515, 35.655380, 28.107838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402000, 35.781868, 28.202475>,  <44.622490, 35.857761, 28.259256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402000, 35.781868, 28.202475>,  <44.034515, 35.655380, 28.107838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402000, 35.781868, 28.202475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045787, -0.680315, 0.731488,
		0.392266, -0.661194, -0.639492,
		0.918711, 0.316218, 0.236590,
		44.677612, 35.876732, 28.273451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538021, 34.984760, 28.190191>,  <44.034515, 35.655380, 28.107838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538021, 34.984760, 28.190191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667664, 35.290554, 28.413088>,  <44.745449, 35.474030, 28.546825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667664, 35.290554, 28.413088>,  <44.538021, 34.984760, 28.190191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667664, 35.290554, 28.413088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172217, -0.626877, 0.759846,
		0.930212, -0.150306, -0.334834,
		0.324109, 0.764482, 0.557244,
		44.764896, 35.519897, 28.580261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137573, 34.734886, 28.612875>,  <44.538021, 34.984760, 28.190191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137573, 34.734886, 28.612875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965973, 35.059818, 28.770897>,  <44.863014, 35.254780, 28.865711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965973, 35.059818, 28.770897>,  <45.137573, 34.734886, 28.612875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965973, 35.059818, 28.770897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092728, -0.474640, 0.875282,
		0.898531, 0.338865, 0.278948,
		-0.429002, 0.812334, 0.395057,
		44.837273, 35.303520, 28.889414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453922, 34.821259, 29.215569>,  <45.137573, 34.734886, 28.612875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453922, 34.821259, 29.215569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097301, 34.996136, 29.262875>,  <44.883327, 35.101063, 29.291258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097301, 34.996136, 29.262875>,  <45.453922, 34.821259, 29.215569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097301, 34.996136, 29.262875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070550, -0.391990, 0.917260,
		0.447382, 0.809445, 0.380326,
		-0.891556, 0.437198, 0.118264,
		44.829834, 35.127296, 29.298353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419724, 35.009014, 29.937061>,  <45.453922, 34.821259, 29.215569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419724, 35.009014, 29.937061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035496, 35.040989, 29.830534>,  <44.804958, 35.060173, 29.766617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035496, 35.040989, 29.830534>,  <45.419724, 35.009014, 29.937061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035496, 35.040989, 29.830534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276439, -0.171416, 0.945621,
		0.029938, 0.981951, 0.186754,
		-0.960565, 0.079936, -0.266318,
		44.747326, 35.064968, 29.750639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211636, 35.365147, 30.495491>,  <45.419724, 35.009014, 29.937061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211636, 35.365147, 30.495491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889072, 35.213245, 30.314161>,  <44.695534, 35.122105, 30.205362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889072, 35.213245, 30.314161>,  <45.211636, 35.365147, 30.495491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889072, 35.213245, 30.314161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406469, -0.200860, 0.891313,
		-0.429530, 0.903021, 0.007619,
		-0.806404, -0.379749, -0.453325,
		44.647152, 35.099319, 30.178164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649967, 35.601917, 30.898785>,  <45.211636, 35.365147, 30.495491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649967, 35.601917, 30.898785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532211, 35.282337, 30.689018>,  <44.461555, 35.090588, 30.563158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532211, 35.282337, 30.689018>,  <44.649967, 35.601917, 30.898785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532211, 35.282337, 30.689018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387782, -0.401665, 0.829632,
		-0.873475, 0.447596, -0.191572,
		-0.294393, -0.798951, -0.524414,
		44.443893, 35.042652, 30.531694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070606, 35.509914, 31.218176>,  <44.649967, 35.601917, 30.898785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070606, 35.509914, 31.218176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124584, 35.176636, 31.003672>,  <44.156971, 34.976669, 30.874969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124584, 35.176636, 31.003672>,  <44.070606, 35.509914, 31.218176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124584, 35.176636, 31.003672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409897, -0.539673, 0.735348,
		-0.902095, 0.120583, -0.414349,
		0.134942, -0.833194, -0.536263,
		44.165066, 34.926678, 30.842793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480099, 35.258530, 31.005091>,  <44.070606, 35.509914, 31.218176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480099, 35.258530, 31.005091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703995, 34.927895, 31.028530>,  <43.838333, 34.729511, 31.042595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703995, 34.927895, 31.028530>,  <43.480099, 35.258530, 31.005091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703995, 34.927895, 31.028530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733665, -0.461455, 0.498793,
		-0.385255, -0.322191, -0.864738,
		0.559744, -0.826591, 0.058602,
		43.871918, 34.679916, 31.046110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977940, 34.861374, 31.135658>,  <43.480099, 35.258530, 31.005091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977940, 34.861374, 31.135658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302963, 34.632961, 31.182423>,  <43.497978, 34.495914, 31.210482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302963, 34.632961, 31.182423>,  <42.977940, 34.861374, 31.135658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302963, 34.632961, 31.182423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484650, -0.550463, 0.679783,
		-0.323823, -0.609025, -0.724035,
		0.812559, -0.571033, 0.116911,
		43.546730, 34.461651, 31.217497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788933, 34.144279, 31.180285>,  <42.977940, 34.861374, 31.135658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788933, 34.144279, 31.180285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152985, 34.139267, 31.345934>,  <43.371418, 34.136261, 31.445324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152985, 34.139267, 31.345934>,  <42.788933, 34.144279, 31.180285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152985, 34.139267, 31.345934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334729, -0.611275, 0.717147,
		0.244157, -0.791319, -0.560537,
		0.910134, -0.012531, 0.414124,
		43.426025, 34.135506, 31.470171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816978, 33.427460, 31.343708>,  <42.788933, 34.144279, 31.180285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816978, 33.427460, 31.343708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082958, 33.634323, 31.559256>,  <43.242546, 33.758442, 31.688585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082958, 33.634323, 31.559256>,  <42.816978, 33.427460, 31.343708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082958, 33.634323, 31.559256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186273, -0.583860, 0.790196,
		0.723286, -0.625819, -0.291905,
		0.664951, 0.517163, 0.538871,
		43.282444, 33.789471, 31.720917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087456, 33.017944, 31.881382>,  <42.816978, 33.427460, 31.343708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087456, 33.017944, 31.881382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217876, 33.364639, 32.032360>,  <43.296127, 33.572655, 32.122948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217876, 33.364639, 32.032360>,  <43.087456, 33.017944, 31.881382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217876, 33.364639, 32.032360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188417, -0.331673, 0.924387,
		0.926385, -0.372515, 0.055165,
		0.326051, 0.866733, 0.377445,
		43.315693, 33.624660, 32.145592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600327, 32.993931, 32.359547>,  <43.087456, 33.017944, 31.881382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600327, 32.993931, 32.359547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416859, 33.331055, 32.472187>,  <43.306778, 33.533329, 32.539772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416859, 33.331055, 32.472187>,  <43.600327, 32.993931, 32.359547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416859, 33.331055, 32.472187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062520, -0.346720, 0.935883,
		0.886404, 0.411657, 0.211723,
		-0.458671, 0.842807, 0.281597,
		43.279259, 33.583897, 32.556667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889923, 33.221855, 32.971138>,  <43.600327, 32.993931, 32.359547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889923, 33.221855, 32.971138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532307, 33.400093, 32.952652>,  <43.317738, 33.507034, 32.941559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532307, 33.400093, 32.952652>,  <43.889923, 33.221855, 32.971138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532307, 33.400093, 32.952652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175047, -0.252510, 0.951629,
		0.412368, 0.858886, 0.303754,
		-0.894042, 0.445593, -0.046219,
		43.264095, 33.533772, 32.938786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888836, 33.699436, 33.585377>,  <43.889923, 33.221855, 32.971138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888836, 33.699436, 33.585377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511272, 33.629620, 33.473255>,  <43.284733, 33.587730, 33.405983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511272, 33.629620, 33.473255>,  <43.888836, 33.699436, 33.585377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511272, 33.629620, 33.473255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239013, -0.224550, 0.944696,
		-0.227828, 0.958704, 0.170238,
		-0.943911, -0.174539, -0.280301,
		43.228100, 33.577259, 33.389164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312725, 34.213665, 33.898399>,  <43.888836, 33.699436, 33.585377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312725, 34.213665, 33.898399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.654064, 34.384018, 34.018677>,  <44.858868, 34.486229, 34.090843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.654064, 34.384018, 34.018677>,  <44.312725, 34.213665, 33.898399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654064, 34.384018, 34.018677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386261, 0.903857, -0.183971,
		-0.350136, 0.040844, 0.935808,
		0.853351, 0.425881, 0.300696,
		44.910069, 34.511784, 34.108887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093075, 34.755985, 34.364189>,  <44.312725, 34.213665, 33.898399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093075, 34.755985, 34.364189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451504, 34.859352, 34.219814>,  <44.666561, 34.921371, 34.133190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451504, 34.859352, 34.219814>,  <44.093075, 34.755985, 34.364189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451504, 34.859352, 34.219814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340853, 0.921431, -0.186502,
		0.284381, 0.290146, 0.913752,
		0.896073, 0.258418, -0.360935,
		44.720325, 34.936878, 34.111534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304150, 35.361629, 34.703960>,  <44.093075, 34.755985, 34.364189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304150, 35.361629, 34.703960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524532, 35.347958, 34.370426>,  <44.656761, 35.339752, 34.170307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524532, 35.347958, 34.370426>,  <44.304150, 35.361629, 34.703960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524532, 35.347958, 34.370426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255913, 0.944101, -0.207801,
		0.794325, 0.327879, 0.511413,
		0.550959, -0.034184, -0.833832,
		44.689819, 35.337704, 34.120277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424007, 36.077831, 34.569946>,  <44.304150, 35.361629, 34.703960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424007, 36.077831, 34.569946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502979, 35.882809, 34.229755>,  <44.550362, 35.765797, 34.025642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502979, 35.882809, 34.229755>,  <44.424007, 36.077831, 34.569946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502979, 35.882809, 34.229755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222589, 0.822598, -0.523246,
		0.954712, 0.292611, 0.053881,
		0.197431, -0.487556, -0.850477,
		44.562210, 35.736542, 33.974613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870235, 36.466198, 34.322895>,  <44.424007, 36.077831, 34.569946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870235, 36.466198, 34.322895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.696796, 36.258881, 34.028042>,  <44.592731, 36.134491, 33.851131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.696796, 36.258881, 34.028042>,  <44.870235, 36.466198, 34.322895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696796, 36.258881, 34.028042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295387, 0.854584, -0.427122,
		0.851320, 0.032545, -0.523636,
		-0.433590, -0.518293, -0.737138,
		44.566715, 36.103394, 33.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279190, 36.601227, 33.686901>,  <44.870235, 36.466198, 34.322895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279190, 36.601227, 33.686901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920139, 36.459335, 33.582260>,  <44.704708, 36.374199, 33.519478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920139, 36.459335, 33.582260>,  <45.279190, 36.601227, 33.686901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920139, 36.459335, 33.582260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157016, 0.811941, -0.562226,
		0.411843, -0.463593, -0.784517,
		-0.897626, -0.354730, -0.261600,
		44.650852, 36.352917, 33.503780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230762, 36.766174, 32.997543>,  <45.279190, 36.601227, 33.686901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230762, 36.766174, 32.997543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.854610, 36.653622, 33.073975>,  <44.628922, 36.586090, 33.119835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.854610, 36.653622, 33.073975>,  <45.230762, 36.766174, 32.997543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854610, 36.653622, 33.073975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326213, 0.587051, -0.740916,
		0.096307, -0.759074, -0.643841,
		-0.940377, -0.281385, 0.191083,
		44.572498, 36.569206, 33.131298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819290, 36.616554, 32.329350>,  <45.230762, 36.766174, 32.997543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819290, 36.616554, 32.329350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.548840, 36.704117, 32.610756>,  <44.386570, 36.756653, 32.779598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.548840, 36.704117, 32.610756>,  <44.819290, 36.616554, 32.329350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548840, 36.704117, 32.610756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497461, 0.568711, -0.655057,
		-0.543493, -0.792873, -0.275624,
		-0.676127, 0.218907, 0.703514,
		44.346001, 36.769791, 32.821812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289848, 36.695976, 31.966190>,  <44.819290, 36.616554, 32.329350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289848, 36.695976, 31.966190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.203930, 36.869549, 32.316177>,  <44.152378, 36.973690, 32.526169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.203930, 36.869549, 32.316177>,  <44.289848, 36.695976, 31.966190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203930, 36.869549, 32.316177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380742, 0.787794, -0.484165,
		-0.899387, -0.437135, -0.004003,
		-0.214799, 0.433927, 0.874968,
		44.139492, 36.999725, 32.578667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497784, 36.798248, 32.007767>,  <44.289848, 36.695976, 31.966190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497784, 36.798248, 32.007767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663830, 37.051544, 32.269054>,  <43.763458, 37.203522, 32.425827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663830, 37.051544, 32.269054>,  <43.497784, 36.798248, 32.007767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663830, 37.051544, 32.269054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491919, 0.760221, -0.424359,
		-0.765309, -0.145174, 0.627078,
		0.415112, 0.633237, 0.653217,
		43.788364, 37.241516, 32.465019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055748, 37.361649, 32.101475>,  <43.497784, 36.798248, 32.007767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055748, 37.361649, 32.101475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387985, 37.541363, 32.233082>,  <43.587330, 37.649189, 32.312046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387985, 37.541363, 32.233082>,  <43.055748, 37.361649, 32.101475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387985, 37.541363, 32.233082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188762, 0.783004, -0.592683,
		-0.523908, 0.430173, 0.735168,
		0.830596, 0.449283, 0.329022,
		43.637165, 37.676147, 32.331787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905811, 38.035629, 32.221554>,  <43.055748, 37.361649, 32.101475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905811, 38.035629, 32.221554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303787, 38.039211, 32.181534>,  <43.542572, 38.041359, 32.157520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303787, 38.039211, 32.181534>,  <42.905811, 38.035629, 32.221554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303787, 38.039211, 32.181534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068244, 0.791119, -0.607844,
		0.073711, 0.611597, 0.787728,
		0.994942, 0.008953, -0.100052,
		43.602268, 38.041897, 32.151520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043930, 38.685188, 32.428299>,  <42.905811, 38.035629, 32.221554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043930, 38.685188, 32.428299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353027, 38.544205, 32.217152>,  <43.538486, 38.459614, 32.090462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353027, 38.544205, 32.217152>,  <43.043930, 38.685188, 32.428299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353027, 38.544205, 32.217152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042866, 0.800775, -0.597429,
		0.633272, 0.484286, 0.603684,
		0.772742, -0.352457, -0.527868,
		43.584850, 38.438469, 32.058792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383018, 39.290138, 32.208763>,  <43.043930, 38.685188, 32.428299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383018, 39.290138, 32.208763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530380, 38.996544, 31.980536>,  <43.618797, 38.820389, 31.843599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530380, 38.996544, 31.980536>,  <43.383018, 39.290138, 32.208763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530380, 38.996544, 31.980536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105363, 0.642745, -0.758800,
		0.923676, 0.219428, 0.314124,
		0.368403, -0.733983, -0.570569,
		43.640900, 38.776348, 31.809364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954060, 39.589138, 31.984562>,  <43.383018, 39.290138, 32.208763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954060, 39.589138, 31.984562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883507, 39.288509, 31.730307>,  <43.841175, 39.108131, 31.577753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883507, 39.288509, 31.730307>,  <43.954060, 39.589138, 31.984562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883507, 39.288509, 31.730307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391303, 0.539003, -0.745894,
		0.903200, -0.380291, 0.199019,
		-0.176385, -0.751568, -0.635637,
		43.830593, 39.063038, 31.539616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572784, 39.473755, 31.497665>,  <43.954060, 39.589138, 31.984562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572784, 39.473755, 31.497665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251240, 39.317589, 31.318163>,  <44.058315, 39.223888, 31.210461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251240, 39.317589, 31.318163>,  <44.572784, 39.473755, 31.497665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251240, 39.317589, 31.318163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218138, 0.508383, -0.833044,
		0.553383, -0.767538, -0.323500,
		-0.803855, -0.390424, -0.448760,
		44.010082, 39.200462, 31.183537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856705, 39.133839, 30.902983>,  <44.572784, 39.473755, 31.497665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856705, 39.133839, 30.902983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468224, 39.159912, 30.811314>,  <44.235134, 39.175556, 30.756311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468224, 39.159912, 30.811314>,  <44.856705, 39.133839, 30.902983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468224, 39.159912, 30.811314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238265, 0.263970, -0.934639,
		-0.000431, -0.962326, -0.271899,
		-0.971200, 0.065187, -0.229174,
		44.176865, 39.179466, 30.742561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749462, 38.740597, 30.257545>,  <44.856705, 39.133839, 30.902983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749462, 38.740597, 30.257545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.449879, 39.003292, 30.292780>,  <44.270130, 39.160912, 30.313921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.449879, 39.003292, 30.292780>,  <44.749462, 38.740597, 30.257545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449879, 39.003292, 30.292780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089374, 0.231843, -0.968639,
		-0.656567, -0.717594, -0.232335,
		-0.748955, 0.656740, 0.088087,
		44.225193, 39.200314, 30.319206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453060, 38.836555, 29.578558>,  <44.749462, 38.740597, 30.257545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453060, 38.836555, 29.578558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.259880, 39.132694, 29.765598>,  <44.143970, 39.310375, 29.877823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.259880, 39.132694, 29.765598>,  <44.453060, 38.836555, 29.578558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259880, 39.132694, 29.765598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033674, 0.517908, -0.854773,
		-0.875001, -0.428558, -0.225193,
		-0.482949, 0.740344, 0.467601,
		44.114994, 39.354797, 29.905878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874924, 39.070782, 29.112316>,  <44.453060, 38.836555, 29.578558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874924, 39.070782, 29.112316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.968025, 39.363171, 29.368910>,  <44.023888, 39.538605, 29.522867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.968025, 39.363171, 29.368910>,  <43.874924, 39.070782, 29.112316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968025, 39.363171, 29.368910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252857, 0.682401, -0.685851,
		-0.939089, -0.002570, 0.343664,
		0.232754, 0.730973, 0.641485,
		44.037853, 39.582462, 29.561356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220230, 39.389065, 29.241119>,  <43.874924, 39.070782, 29.112316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220230, 39.389065, 29.241119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.506580, 39.664742, 29.285889>,  <43.678391, 39.830147, 29.312750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.506580, 39.664742, 29.285889>,  <43.220230, 39.389065, 29.241119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506580, 39.664742, 29.285889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556701, 0.660148, -0.504271,
		-0.421428, 0.298688, 0.856262,
		0.715879, 0.689195, 0.111925,
		43.721344, 39.871502, 29.319466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.661171, 32.627796, 38.938980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355656, 32.369976, 38.952744>,  <38.172348, 32.215282, 38.961002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355656, 32.369976, 38.952744>,  <38.661171, 32.627796, 38.938980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355656, 32.369976, 38.952744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039523, -0.006510, -0.999198,
		0.644258, -0.764533, -0.020502,
		-0.763786, -0.644552, 0.034411,
		38.126518, 32.176609, 38.963066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976475, 32.131996, 38.543739>,  <38.661171, 32.627796, 38.938980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976475, 32.131996, 38.543739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578838, 32.090549, 38.530807>,  <38.340256, 32.065681, 38.523048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578838, 32.090549, 38.530807>,  <38.976475, 32.131996, 38.543739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578838, 32.090549, 38.530807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039684, -0.069766, -0.996774,
		0.101024, -0.992168, 0.073466,
		-0.994093, -0.103614, -0.032326,
		38.280609, 32.059467, 38.521111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796310, 31.694864, 37.925880>,  <38.976475, 32.131996, 38.543739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796310, 31.694864, 37.925880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458214, 31.895611, 37.999313>,  <38.255356, 32.016060, 38.043373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458214, 31.895611, 37.999313>,  <38.796310, 31.694864, 37.925880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458214, 31.895611, 37.999313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102580, 0.184778, -0.977412,
		-0.524452, -0.844978, -0.104701,
		-0.845238, 0.501866, 0.183585,
		38.204643, 32.046169, 38.054390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457825, 31.597492, 37.297794>,  <38.796310, 31.694864, 37.925880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457825, 31.597492, 37.297794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255905, 31.899263, 37.465614>,  <38.134754, 32.080326, 37.566307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255905, 31.899263, 37.465614>,  <38.457825, 31.597492, 37.297794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255905, 31.899263, 37.465614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192164, 0.375616, -0.906634,
		-0.841578, -0.538288, -0.044637,
		-0.504797, 0.754426, 0.419550,
		38.104465, 32.125591, 37.591480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760506, 31.654848, 36.992458>,  <38.457825, 31.597492, 37.297794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760506, 31.654848, 36.992458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827324, 32.009529, 37.164902>,  <37.867413, 32.222336, 37.268368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827324, 32.009529, 37.164902>,  <37.760506, 31.654848, 36.992458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827324, 32.009529, 37.164902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167889, 0.456450, -0.873765,
		-0.971550, 0.073577, 0.225114,
		0.167042, 0.886701, 0.431112,
		37.877438, 32.275539, 37.294235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302406, 32.037109, 36.688385>,  <37.760506, 31.654848, 36.992458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302406, 32.037109, 36.688385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575211, 32.299507, 36.817715>,  <37.738892, 32.456947, 36.895313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575211, 32.299507, 36.817715>,  <37.302406, 32.037109, 36.688385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575211, 32.299507, 36.817715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176139, 0.576410, -0.797951,
		-0.709818, 0.487259, 0.508662,
		0.682007, 0.655995, 0.323321,
		37.779812, 32.496307, 36.914711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981243, 32.624538, 36.581554>,  <37.302406, 32.037109, 36.688385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981243, 32.624538, 36.581554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367142, 32.722218, 36.620792>,  <37.598682, 32.780827, 36.644333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367142, 32.722218, 36.620792>,  <36.981243, 32.624538, 36.581554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367142, 32.722218, 36.620792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100783, 0.687161, -0.719481,
		-0.243104, 0.684233, 0.687550,
		0.964751, 0.244202, 0.098092,
		37.656567, 32.795479, 36.650219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043381, 33.426754, 36.570232>,  <36.981243, 32.624538, 36.581554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043381, 33.426754, 36.570232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403828, 33.266823, 36.503155>,  <37.620094, 33.170864, 36.462910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403828, 33.266823, 36.503155>,  <37.043381, 33.426754, 36.570232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403828, 33.266823, 36.503155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120128, 0.601862, -0.789514,
		0.416599, 0.691301, 0.590380,
		0.901119, -0.399832, -0.167690,
		37.674164, 33.146873, 36.452847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470306, 33.918365, 36.532597>,  <37.043381, 33.426754, 36.570232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470306, 33.918365, 36.532597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695477, 33.656769, 36.330444>,  <37.830578, 33.499809, 36.209152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695477, 33.656769, 36.330444>,  <37.470306, 33.918365, 36.532597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695477, 33.656769, 36.330444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019084, 0.621588, -0.783112,
		0.826290, 0.431186, 0.362386,
		0.562922, -0.653993, -0.505383,
		37.864353, 33.460571, 36.178829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907291, 34.318085, 35.979053>,  <37.470306, 33.918365, 36.532597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907291, 34.318085, 35.979053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916241, 33.946346, 35.831638>,  <37.921612, 33.723305, 35.743187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916241, 33.946346, 35.831638>,  <37.907291, 34.318085, 35.979053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916241, 33.946346, 35.831638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077451, 0.369137, -0.926142,
		0.996745, -0.007822, 0.080238,
		0.022375, -0.929342, -0.368542,
		37.922955, 33.667545, 35.721077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567951, 34.228580, 35.451519>,  <37.907291, 34.318085, 35.979053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567951, 34.228580, 35.451519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266273, 33.975636, 35.380745>,  <38.085266, 33.823868, 35.338280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266273, 33.975636, 35.380745>,  <38.567951, 34.228580, 35.451519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266273, 33.975636, 35.380745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030323, 0.235627, -0.971370,
		0.655953, -0.737965, -0.158533,
		-0.754192, -0.632366, -0.176938,
		38.040016, 33.785927, 35.327663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782352, 33.901237, 34.812149>,  <38.567951, 34.228580, 35.451519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782352, 33.901237, 34.812149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385326, 33.857628, 34.833824>,  <38.147110, 33.831463, 34.846828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385326, 33.857628, 34.833824>,  <38.782352, 33.901237, 34.812149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385326, 33.857628, 34.833824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078803, 0.235998, -0.968553,
		0.092803, -0.965619, -0.242833,
		-0.992561, -0.109021, 0.054192,
		38.087559, 33.824921, 34.850082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598930, 33.540543, 34.237160>,  <38.782352, 33.901237, 34.812149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598930, 33.540543, 34.237160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254349, 33.714188, 34.342564>,  <38.047600, 33.818375, 34.405807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254349, 33.714188, 34.342564>,  <38.598930, 33.540543, 34.237160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254349, 33.714188, 34.342564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193751, 0.198688, -0.960720,
		-0.469418, -0.878674, -0.087051,
		-0.861457, 0.434113, 0.263512,
		37.995911, 33.844421, 34.421616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880306, 32.963848, 34.678089>,  <38.598930, 33.540543, 34.237160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880306, 32.963848, 34.678089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639801, 33.012863, 34.993931>,  <38.495499, 33.042274, 35.183434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639801, 33.012863, 34.993931>,  <38.880306, 32.963848, 34.678089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639801, 33.012863, 34.993931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089173, 0.971708, -0.218704,
		-0.794063, -0.201909, -0.573321,
		-0.601259, 0.122539, 0.789602,
		38.459423, 33.049625, 35.230812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052090, 32.273586, 34.522110>,  <38.880306, 32.963848, 34.678089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052090, 32.273586, 34.522110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318405, 32.019867, 34.364941>,  <39.478195, 31.867636, 34.270641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318405, 32.019867, 34.364941>,  <39.052090, 32.273586, 34.522110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318405, 32.019867, 34.364941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341709, -0.727345, 0.595151,
		-0.663290, -0.261984, -0.701007,
		0.665793, -0.634298, -0.392918,
		39.518143, 31.829576, 34.247063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695522, 31.646425, 34.277229>,  <39.052090, 32.273586, 34.522110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695522, 31.646425, 34.277229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076916, 31.545820, 34.343697>,  <39.305752, 31.485456, 34.383575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076916, 31.545820, 34.343697>,  <38.695522, 31.646425, 34.277229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076916, 31.545820, 34.343697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301217, -0.773433, 0.557736,
		-0.011762, -0.581843, -0.813216,
		0.953483, -0.251514, 0.166164,
		39.362961, 31.470366, 34.393547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675652, 30.846333, 34.344837>,  <38.695522, 31.646425, 34.277229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675652, 30.846333, 34.344837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024109, 30.953325, 34.509548>,  <39.233185, 31.017521, 34.608376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024109, 30.953325, 34.509548>,  <38.675652, 30.846333, 34.344837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024109, 30.953325, 34.509548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136889, -0.673064, 0.726806,
		0.471559, -0.689521, -0.549721,
		0.871145, 0.267481, 0.411777,
		39.285454, 31.033569, 34.633080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063000, 30.253235, 34.516438>,  <38.675652, 30.846333, 34.344837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063000, 30.253235, 34.516438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212357, 30.554064, 34.733681>,  <39.301971, 30.734562, 34.864029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212357, 30.554064, 34.733681>,  <39.063000, 30.253235, 34.516438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212357, 30.554064, 34.733681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215844, -0.498954, 0.839319,
		0.902215, -0.430619, -0.023973,
		0.373388, 0.752072, 0.543110,
		39.324371, 30.779686, 34.896614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533062, 29.907248, 34.949135>,  <39.063000, 30.253235, 34.516438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533062, 29.907248, 34.949135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457626, 30.259394, 35.123211>,  <39.412365, 30.470682, 35.227657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457626, 30.259394, 35.123211>,  <39.533062, 29.907248, 34.949135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457626, 30.259394, 35.123211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205411, -0.468700, 0.859143,
		0.960333, 0.072636, 0.269230,
		-0.188593, 0.880366, 0.435187,
		39.401047, 30.523504, 35.253769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937748, 29.808172, 35.577301>,  <39.533062, 29.907248, 34.949135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937748, 29.808172, 35.577301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686661, 30.116405, 35.621437>,  <39.536007, 30.301346, 35.647919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686661, 30.116405, 35.621437>,  <39.937748, 29.808172, 35.577301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686661, 30.116405, 35.621437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205066, -0.300425, 0.931501,
		0.750944, 0.562094, 0.346602,
		-0.627719, 0.770581, 0.110336,
		39.498344, 30.347580, 35.654537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105057, 30.072624, 36.184807>,  <39.937748, 29.808172, 35.577301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105057, 30.072624, 36.184807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736519, 30.214661, 36.121521>,  <39.515396, 30.299883, 36.083549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736519, 30.214661, 36.121521>,  <40.105057, 30.072624, 36.184807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736519, 30.214661, 36.121521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230896, -0.172453, 0.957574,
		0.312741, 0.918788, 0.240878,
		-0.921347, 0.355090, -0.158212,
		39.460114, 30.321188, 36.074059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925327, 30.380659, 36.820290>,  <40.105057, 30.072624, 36.184807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925327, 30.380659, 36.820290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583046, 30.301136, 36.629192>,  <39.377678, 30.253422, 36.514534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583046, 30.301136, 36.629192>,  <39.925327, 30.380659, 36.820290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583046, 30.301136, 36.629192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403812, -0.320768, 0.856764,
		-0.323579, 0.926058, 0.194201,
		-0.855706, -0.198810, -0.477747,
		39.326336, 30.241493, 36.485867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398861, 30.430994, 37.299694>,  <39.925327, 30.380659, 36.820290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398861, 30.430994, 37.299694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237133, 30.191658, 37.022995>,  <39.140099, 30.048056, 36.856976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237133, 30.191658, 37.022995>,  <39.398861, 30.430994, 37.299694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237133, 30.191658, 37.022995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477686, -0.506830, 0.717593,
		-0.779964, 0.620574, -0.080900,
		-0.404317, -0.598341, -0.691748,
		39.115837, 30.012156, 36.815472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719852, 30.506561, 37.350441>,  <39.398861, 30.430994, 37.299694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719852, 30.506561, 37.350441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804409, 30.152271, 37.185127>,  <38.855145, 29.939697, 37.085938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804409, 30.152271, 37.185127>,  <38.719852, 30.506561, 37.350441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804409, 30.152271, 37.185127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342466, -0.463160, 0.817435,
		-0.915439, -0.031265, -0.401240,
		0.211396, -0.885723, -0.413288,
		38.867828, 29.886555, 37.061142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282677, 30.084091, 37.687038>,  <38.719852, 30.506561, 37.350441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282677, 30.084091, 37.687038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517971, 29.792303, 37.547409>,  <38.659149, 29.617229, 37.463631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517971, 29.792303, 37.547409>,  <38.282677, 30.084091, 37.687038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517971, 29.792303, 37.547409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167836, -0.532374, 0.829704,
		-0.791083, -0.429474, -0.435593,
		0.588234, -0.729472, -0.349071,
		38.694443, 29.573462, 37.442688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891384, 29.460857, 37.810776>,  <38.282677, 30.084091, 37.687038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891384, 29.460857, 37.810776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258808, 29.315691, 37.748123>,  <38.479263, 29.228592, 37.710533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258808, 29.315691, 37.748123>,  <37.891384, 29.460857, 37.810776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258808, 29.315691, 37.748123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100906, -0.598423, 0.794800,
		-0.382176, -0.714270, -0.586310,
		0.918563, -0.362916, -0.156629,
		38.534378, 29.206816, 37.701134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789085, 28.769056, 37.962654>,  <37.891384, 29.460857, 37.810776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789085, 28.769056, 37.962654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183987, 28.832682, 37.965099>,  <38.420925, 28.870857, 37.966564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183987, 28.832682, 37.965099>,  <37.789085, 28.769056, 37.962654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183987, 28.832682, 37.965099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119024, -0.763142, 0.635176,
		0.105696, -0.626350, -0.772344,
		0.987250, 0.159063, 0.006111,
		38.480160, 28.880400, 37.966934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101139, 28.173893, 37.796257>,  <37.789085, 28.769056, 37.962654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101139, 28.173893, 37.796257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379166, 28.365278, 38.010902>,  <38.545982, 28.480108, 38.139690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379166, 28.365278, 38.010902>,  <38.101139, 28.173893, 37.796257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379166, 28.365278, 38.010902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037855, -0.769712, 0.637268,
		0.717944, -0.422633, -0.553116,
		0.695071, 0.478461, 0.536611,
		38.587688, 28.508816, 38.171886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808746, 27.498747, 37.774723>,  <38.101139, 28.173893, 37.796257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808746, 27.498747, 37.774723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411522, 27.510019, 37.820389>,  <37.173187, 27.516783, 37.847790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411522, 27.510019, 37.820389>,  <37.808746, 27.498747, 37.774723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411522, 27.510019, 37.820389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091725, 0.421871, -0.902004,
		-0.073584, -0.906217, -0.416359,
		-0.993061, 0.028182, 0.114166,
		37.113602, 27.518475, 37.854637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456055, 27.281044, 37.101959>,  <37.808746, 27.498747, 37.774723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456055, 27.281044, 37.101959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165031, 27.469725, 37.301220>,  <36.990417, 27.582933, 37.420776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165031, 27.469725, 37.301220>,  <37.456055, 27.281044, 37.101959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165031, 27.469725, 37.301220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398590, 0.300348, -0.866554,
		-0.558374, -0.829028, -0.030505,
		-0.727561, 0.471702, 0.498149,
		36.946762, 27.611235, 37.450665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805721, 27.240198, 36.699699>,  <37.456055, 27.281044, 37.101959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805721, 27.240198, 36.699699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755363, 27.557337, 36.938210>,  <36.725151, 27.747620, 37.081318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755363, 27.557337, 36.938210>,  <36.805721, 27.240198, 36.699699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755363, 27.557337, 36.938210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292377, 0.544711, -0.786006,
		-0.947981, -0.273289, 0.163235,
		-0.125891, 0.792845, 0.596279,
		36.717598, 27.795191, 37.117092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252037, 27.510447, 36.345642>,  <36.805721, 27.240198, 36.699699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252037, 27.510447, 36.345642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387180, 27.801918, 36.583931>,  <36.468266, 27.976801, 36.726902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387180, 27.801918, 36.583931>,  <36.252037, 27.510447, 36.345642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387180, 27.801918, 36.583931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175359, 0.670590, -0.720804,
		-0.924716, 0.139066, 0.354345,
		0.337859, 0.728677, 0.595719,
		36.488537, 28.020521, 36.762646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725731, 28.031185, 36.343353>,  <36.252037, 27.510447, 36.345642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725731, 28.031185, 36.343353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065243, 28.212990, 36.451424>,  <36.268948, 28.322073, 36.516266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065243, 28.212990, 36.451424>,  <35.725731, 28.031185, 36.343353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065243, 28.212990, 36.451424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112986, 0.655077, -0.747067,
		-0.516537, 0.603567, 0.607368,
		0.848778, 0.454512, 0.270177,
		36.319878, 28.349342, 36.532478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581757, 28.739729, 36.425632>,  <35.725731, 28.031185, 36.343353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581757, 28.739729, 36.425632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975571, 28.708883, 36.362701>,  <36.211857, 28.690376, 36.324944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975571, 28.708883, 36.362701>,  <35.581757, 28.739729, 36.425632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975571, 28.708883, 36.362701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057010, 0.708091, -0.703816,
		0.165677, 0.701898, 0.692741,
		0.984531, -0.077113, -0.157329,
		36.270931, 28.685749, 36.315502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716026, 29.409857, 36.412212>,  <35.581757, 28.739729, 36.425632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716026, 29.409857, 36.412212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007610, 29.201025, 36.235104>,  <36.182560, 29.075726, 36.128838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007610, 29.201025, 36.235104>,  <35.716026, 29.409857, 36.412212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007610, 29.201025, 36.235104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016695, 0.660172, -0.750929,
		0.684349, 0.540008, 0.489958,
		0.728964, -0.522077, -0.442772,
		36.226299, 29.044401, 36.102272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041611, 29.845545, 36.082485>,  <35.716026, 29.409857, 36.412212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041611, 29.845545, 36.082485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184631, 29.536682, 35.872372>,  <36.270443, 29.351364, 35.746304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184631, 29.536682, 35.872372>,  <36.041611, 29.845545, 36.082485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184631, 29.536682, 35.872372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123941, 0.518259, -0.846195,
		0.925631, 0.367666, 0.089604,
		0.357556, -0.772159, -0.525285,
		36.291897, 29.305035, 35.714787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603638, 30.052559, 35.630917>,  <36.041611, 29.845545, 36.082485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603638, 30.052559, 35.630917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462013, 29.727293, 35.446136>,  <36.377037, 29.532133, 35.335266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462013, 29.727293, 35.446136>,  <36.603638, 30.052559, 35.630917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462013, 29.727293, 35.446136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237350, 0.555910, -0.796636,
		0.904602, -0.172415, -0.389832,
		-0.354063, -0.813165, -0.461954,
		36.355793, 29.483343, 35.307549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790279, 30.069283, 35.008526>,  <36.603638, 30.052559, 35.630917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790279, 30.069283, 35.008526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502499, 29.798788, 34.945168>,  <36.329830, 29.636490, 34.907154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502499, 29.798788, 34.945168>,  <36.790279, 30.069283, 35.008526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502499, 29.798788, 34.945168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360150, 0.558238, -0.747437,
		0.593872, -0.480696, -0.645172,
		-0.719450, -0.676241, -0.158399,
		36.286663, 29.595917, 34.897648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820221, 29.834734, 34.325134>,  <36.790279, 30.069283, 35.008526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820221, 29.834734, 34.325134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438389, 29.792978, 34.436768>,  <36.209290, 29.767925, 34.503746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438389, 29.792978, 34.436768>,  <36.820221, 29.834734, 34.325134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438389, 29.792978, 34.436768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297853, 0.360146, -0.884069,
		-0.008223, -0.927037, -0.374879,
		-0.954576, -0.104389, 0.279083,
		36.152016, 29.761662, 34.520493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447086, 29.462629, 33.748951>,  <36.820221, 29.834734, 34.325134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447086, 29.462629, 33.748951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175945, 29.645645, 33.979145>,  <36.013260, 29.755455, 34.117260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175945, 29.645645, 33.979145>,  <36.447086, 29.462629, 33.748951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175945, 29.645645, 33.979145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416627, 0.405887, -0.813436,
		-0.605759, -0.791148, -0.084507,
		-0.677848, 0.457538, 0.575483,
		35.972591, 29.782907, 34.151791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.212151, 25.438477, 40.973782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004745, 25.758383, 41.094788>,  <36.880302, 25.950327, 41.167393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004745, 25.758383, 41.094788>,  <37.212151, 25.438477, 40.973782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004745, 25.758383, 41.094788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068663, 0.313707, -0.947034,
		-0.852307, -0.511823, -0.107747,
		-0.518515, 0.799765, 0.302518,
		36.849190, 25.998312, 41.185543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619167, 25.434504, 40.636398>,  <37.212151, 25.438477, 40.973782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619167, 25.434504, 40.636398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647362, 25.820122, 40.738884>,  <36.664276, 26.051493, 40.800377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647362, 25.820122, 40.738884>,  <36.619167, 25.434504, 40.636398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647362, 25.820122, 40.738884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198808, 0.265281, -0.943452,
		-0.977501, 0.015559, 0.210358,
		0.070483, 0.964046, 0.256219,
		36.668507, 26.109335, 40.815750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032356, 25.746576, 40.363407>,  <36.619167, 25.434504, 40.636398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032356, 25.746576, 40.363407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305252, 26.037315, 40.395027>,  <36.468990, 26.211760, 40.413998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305252, 26.037315, 40.395027>,  <36.032356, 25.746576, 40.363407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305252, 26.037315, 40.395027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264902, 0.346508, -0.899866,
		-0.681456, 0.592981, 0.428943,
		0.682235, 0.726847, 0.079048,
		36.509922, 26.255369, 40.418743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680004, 26.358562, 40.077080>,  <36.032356, 25.746576, 40.363407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680004, 26.358562, 40.077080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068615, 26.452230, 40.091507>,  <36.301781, 26.508432, 40.100163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068615, 26.452230, 40.091507>,  <35.680004, 26.358562, 40.077080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068615, 26.452230, 40.091507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059613, 0.388922, -0.919340,
		-0.229311, 0.891013, 0.391807,
		0.971526, 0.234171, 0.036068,
		36.360073, 26.522482, 40.102325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699726, 26.991846, 39.730385>,  <35.680004, 26.358562, 40.077080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699726, 26.991846, 39.730385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074768, 26.853296, 39.718243>,  <36.299793, 26.770166, 39.710957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074768, 26.853296, 39.718243>,  <35.699726, 26.991846, 39.730385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074768, 26.853296, 39.718243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091213, 0.329262, -0.939823,
		0.335526, 0.878414, 0.340312,
		0.937605, -0.346375, -0.030353,
		36.356049, 26.749384, 39.709137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007843, 27.521477, 39.449368>,  <35.699726, 26.991846, 39.730385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007843, 27.521477, 39.449368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248260, 27.203497, 39.416370>,  <36.392509, 27.012709, 39.396572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248260, 27.203497, 39.416370>,  <36.007843, 27.521477, 39.449368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248260, 27.203497, 39.416370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347943, 0.353186, -0.868444,
		0.719504, 0.493269, 0.488877,
		0.601041, -0.794950, -0.082489,
		36.428574, 26.965012, 39.391624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634106, 27.902180, 39.262444>,  <36.007843, 27.521477, 39.449368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634106, 27.902180, 39.262444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676464, 27.517574, 39.161030>,  <36.701881, 27.286812, 39.100182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676464, 27.517574, 39.161030>,  <36.634106, 27.902180, 39.262444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676464, 27.517574, 39.161030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268796, 0.273159, -0.923652,
		0.957358, 0.029664, 0.287378,
		0.105900, -0.961511, -0.253537,
		36.708233, 27.229120, 39.084969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290188, 27.773178, 39.128056>,  <36.634106, 27.902180, 39.262444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290188, 27.773178, 39.128056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071224, 27.509706, 38.921566>,  <36.939846, 27.351624, 38.797672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071224, 27.509706, 38.921566>,  <37.290188, 27.773178, 39.128056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071224, 27.509706, 38.921566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369832, 0.362944, -0.855275,
		0.750711, -0.659101, 0.044921,
		-0.547409, -0.658678, -0.516223,
		36.907001, 27.312103, 38.766701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755299, 27.555866, 38.524555>,  <37.290188, 27.773178, 39.128056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755299, 27.555866, 38.524555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.380707, 27.452221, 38.430004>,  <37.155952, 27.390034, 38.373272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.380707, 27.452221, 38.430004>,  <37.755299, 27.555866, 38.524555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380707, 27.452221, 38.430004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159801, 0.284726, -0.945196,
		0.312218, -0.922925, -0.225231,
		-0.936474, -0.259115, -0.236380,
		37.099766, 27.374487, 38.359089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486736, 27.633102, 38.138523>,  <37.755299, 27.555866, 38.524555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486736, 27.633102, 38.138523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624168, 27.954742, 38.332584>,  <38.706627, 28.147726, 38.449020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624168, 27.954742, 38.332584>,  <38.486736, 27.633102, 38.138523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624168, 27.954742, 38.332584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159999, -0.559170, 0.813468,
		0.925393, -0.201870, -0.320776,
		0.343583, 0.804100, 0.485153,
		38.727242, 28.195972, 38.478130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143265, 27.456076, 38.365658>,  <38.486736, 27.633102, 38.138523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143265, 27.456076, 38.365658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009048, 27.757072, 38.592346>,  <38.928520, 27.937672, 38.728359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009048, 27.757072, 38.592346>,  <39.143265, 27.456076, 38.365658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009048, 27.757072, 38.592346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421199, -0.418269, 0.804763,
		0.842619, 0.508727, -0.176605,
		-0.335536, 0.752494, 0.566717,
		38.908386, 27.982821, 38.762360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627251, 27.854006, 38.752563>,  <39.143265, 27.456076, 38.365658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627251, 27.854006, 38.752563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299152, 27.920330, 38.971542>,  <39.102291, 27.960125, 39.102928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299152, 27.920330, 38.971542>,  <39.627251, 27.854006, 38.752563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299152, 27.920330, 38.971542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445656, -0.414722, 0.793345,
		0.358585, 0.894713, 0.266280,
		-0.820248, 0.165813, 0.547448,
		39.053078, 27.970074, 39.135777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814232, 28.272268, 39.370090>,  <39.627251, 27.854006, 38.752563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814232, 28.272268, 39.370090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.477589, 28.069578, 39.444847>,  <39.275604, 27.947964, 39.489700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.477589, 28.069578, 39.444847>,  <39.814232, 28.272268, 39.370090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477589, 28.069578, 39.444847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351005, -0.250168, 0.902337,
		-0.410484, 0.825011, 0.388406,
		-0.841605, -0.506727, 0.186893,
		39.225109, 27.917561, 39.500916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650673, 28.435429, 40.005135>,  <39.814232, 28.272268, 39.370090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650673, 28.435429, 40.005135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412262, 28.118322, 39.954105>,  <39.269215, 27.928059, 39.923489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412262, 28.118322, 39.954105>,  <39.650673, 28.435429, 40.005135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412262, 28.118322, 39.954105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141807, -0.260306, 0.955056,
		-0.790345, 0.551146, 0.267569,
		-0.596025, -0.792767, -0.127575,
		39.233456, 27.880493, 39.915833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188908, 28.551081, 40.586163>,  <39.650673, 28.435429, 40.005135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188908, 28.551081, 40.586163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154625, 28.165207, 40.486530>,  <39.134056, 27.933683, 40.426750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154625, 28.165207, 40.486530>,  <39.188908, 28.551081, 40.586163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154625, 28.165207, 40.486530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197200, -0.261475, 0.944851,
		-0.976610, 0.031859, 0.212646,
		-0.085703, -0.964684, -0.249076,
		39.128914, 27.875801, 40.411808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711620, 28.318336, 41.022556>,  <39.188908, 28.551081, 40.586163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711620, 28.318336, 41.022556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915852, 27.995159, 40.904892>,  <39.038391, 27.801252, 40.834293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915852, 27.995159, 40.904892>,  <38.711620, 28.318336, 41.022556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915852, 27.995159, 40.904892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220252, -0.207808, 0.953050,
		-0.831141, -0.551400, 0.071848,
		0.510582, -0.807944, -0.294164,
		39.069027, 27.752775, 40.816643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375324, 27.721983, 41.484238>,  <38.711620, 28.318336, 41.022556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375324, 27.721983, 41.484238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737682, 27.607140, 41.359703>,  <38.955097, 27.538235, 41.284985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737682, 27.607140, 41.359703>,  <38.375324, 27.721983, 41.484238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737682, 27.607140, 41.359703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258347, -0.207878, 0.943421,
		-0.335583, -0.935070, -0.114141,
		0.905892, -0.287108, -0.311333,
		39.009449, 27.521008, 41.266304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568707, 27.189814, 42.006916>,  <38.375324, 27.721983, 41.484238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568707, 27.189814, 42.006916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913082, 27.274164, 41.821739>,  <39.119709, 27.324776, 41.710632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913082, 27.274164, 41.821739>,  <38.568707, 27.189814, 42.006916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913082, 27.274164, 41.821739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485996, -0.072085, 0.870983,
		0.150299, -0.974851, -0.164546,
		0.860940, 0.210877, -0.462940,
		39.171364, 27.337427, 41.682858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030659, 26.615688, 42.092625>,  <38.568707, 27.189814, 42.006916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030659, 26.615688, 42.092625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254044, 26.942554, 42.035557>,  <39.388077, 27.138674, 42.001316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254044, 26.942554, 42.035557>,  <39.030659, 26.615688, 42.092625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254044, 26.942554, 42.035557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363032, -0.086115, 0.927789,
		0.745871, -0.569933, -0.344749,
		0.558466, 0.817166, -0.142673,
		39.421585, 27.187704, 41.992756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639107, 26.469425, 42.420021>,  <39.030659, 26.615688, 42.092625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639107, 26.469425, 42.420021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682434, 26.864508, 42.374939>,  <39.708431, 27.101557, 42.347889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682434, 26.864508, 42.374939>,  <39.639107, 26.469425, 42.420021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682434, 26.864508, 42.374939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418725, 0.057493, 0.906291,
		0.901629, -0.145363, -0.407350,
		0.108322, 0.987707, -0.112704,
		39.714931, 27.160820, 42.341129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321606, 26.639099, 42.579071>,  <39.639107, 26.469425, 42.420021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321606, 26.639099, 42.579071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.105762, 26.970619, 42.638294>,  <39.976257, 27.169531, 42.673828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.105762, 26.970619, 42.638294>,  <40.321606, 26.639099, 42.579071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105762, 26.970619, 42.638294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304446, 0.028129, 0.952114,
		0.784946, 0.558839, -0.267503,
		-0.539604, 0.828799, 0.148056,
		39.943882, 27.219259, 42.682713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703751, 27.192108, 42.963154>,  <40.321606, 26.639099, 42.579071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703751, 27.192108, 42.963154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.326519, 27.310076, 43.024635>,  <40.100182, 27.380856, 43.061523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.326519, 27.310076, 43.024635>,  <40.703751, 27.192108, 42.963154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326519, 27.310076, 43.024635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222657, 0.216604, 0.950530,
		0.247034, 0.930648, -0.269940,
		-0.943079, 0.294918, 0.153706,
		40.043594, 27.398552, 43.070747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756817, 27.860512, 43.329777>,  <40.703751, 27.192108, 42.963154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756817, 27.860512, 43.329777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407768, 27.683306, 43.412014>,  <40.198338, 27.576982, 43.461357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407768, 27.683306, 43.412014>,  <40.756817, 27.860512, 43.329777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407768, 27.683306, 43.412014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128549, 0.197767, 0.971784,
		-0.471174, 0.874429, -0.115626,
		-0.872623, -0.443016, 0.205590,
		40.145981, 27.550402, 43.473690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.235321, 31.310249, 44.704647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.501234, 31.058420, 44.543797>,  <31.660782, 30.907322, 44.447285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.501234, 31.058420, 44.543797>,  <31.235321, 31.310249, 44.704647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501234, 31.058420, 44.543797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134416, 0.630314, -0.764615,
		0.734845, 0.454250, 0.503646,
		0.664782, -0.629572, -0.402125,
		31.700668, 30.869549, 44.423161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939980, 31.645107, 44.582497>,  <31.235321, 31.310249, 44.704647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939980, 31.645107, 44.582497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874027, 31.342630, 44.329201>,  <31.834455, 31.161144, 44.177223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874027, 31.342630, 44.329201>,  <31.939980, 31.645107, 44.582497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874027, 31.342630, 44.329201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290447, 0.576330, -0.763861,
		0.942579, -0.309869, 0.124606,
		-0.164882, -0.756191, -0.633237,
		31.824562, 31.115772, 44.139229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162800, 31.907009, 44.010254>,  <31.939980, 31.645107, 44.582497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162800, 31.907009, 44.010254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035397, 31.566292, 43.843876>,  <31.958956, 31.361862, 43.744049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035397, 31.566292, 43.843876>,  <32.162800, 31.907009, 44.010254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035397, 31.566292, 43.843876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350488, 0.301874, -0.886583,
		0.880745, -0.428163, 0.202394,
		-0.318505, -0.851791, -0.415940,
		31.939844, 31.310755, 43.719093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765488, 31.643038, 43.606670>,  <32.162800, 31.907009, 44.010254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765488, 31.643038, 43.606670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419556, 31.489143, 43.477650>,  <32.211994, 31.396807, 43.400238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419556, 31.489143, 43.477650>,  <32.765488, 31.643038, 43.606670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419556, 31.489143, 43.477650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253254, 0.220425, -0.941953,
		0.433502, -0.896320, -0.093195,
		-0.864834, -0.384736, -0.322551,
		32.160107, 31.373722, 43.380886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884640, 31.218803, 42.964722>,  <32.765488, 31.643038, 43.606670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884640, 31.218803, 42.964722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.495609, 31.311762, 42.961166>,  <32.262192, 31.367537, 42.959034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.495609, 31.311762, 42.961166>,  <32.884640, 31.218803, 42.964722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495609, 31.311762, 42.961166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043947, 0.146114, -0.988291,
		-0.228379, -0.961583, -0.152321,
		-0.972580, 0.232399, -0.008889,
		32.203835, 31.381481, 42.958500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649750, 30.878403, 42.405151>,  <32.884640, 31.218803, 42.964722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649750, 30.878403, 42.405151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389339, 31.174166, 42.473793>,  <32.233093, 31.351624, 42.514977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389339, 31.174166, 42.473793>,  <32.649750, 30.878403, 42.405151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389339, 31.174166, 42.473793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006008, 0.231088, -0.972914,
		-0.759035, -0.632358, -0.154886,
		-0.651022, 0.739407, 0.171604,
		32.194035, 31.395988, 42.525276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092686, 30.736820, 42.052036>,  <32.649750, 30.878403, 42.405151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092686, 30.736820, 42.052036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.049694, 31.130981, 42.104839>,  <32.023899, 31.367479, 42.136520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.049694, 31.130981, 42.104839>,  <32.092686, 30.736820, 42.052036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049694, 31.130981, 42.104839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009262, 0.131780, -0.991236,
		-0.994164, -0.107758, -0.005036,
		-0.107477, 0.985405, 0.132009,
		32.017452, 31.426603, 42.144444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624996, 30.990627, 41.519569>,  <32.092686, 30.736820, 42.052036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624996, 30.990627, 41.519569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811735, 31.321222, 41.645409>,  <31.923779, 31.519579, 41.720913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811735, 31.321222, 41.645409>,  <31.624996, 30.990627, 41.519569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811735, 31.321222, 41.645409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079674, 0.393602, -0.915821,
		-0.880740, 0.402486, 0.249602,
		0.466849, 0.826488, 0.314594,
		31.951790, 31.569168, 41.739788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299879, 31.519236, 41.224758>,  <31.624996, 30.990627, 41.519569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299879, 31.519236, 41.224758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645977, 31.683960, 41.339138>,  <31.853636, 31.782795, 41.407764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645977, 31.683960, 41.339138>,  <31.299879, 31.519236, 41.224758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645977, 31.683960, 41.339138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006092, 0.578948, -0.815342,
		-0.501315, 0.703727, 0.503439,
		0.865243, 0.411810, 0.285949,
		31.905550, 31.807503, 41.424923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231115, 32.305954, 41.248714>,  <31.299879, 31.519236, 41.224758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231115, 32.305954, 41.248714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626314, 32.248550, 41.225842>,  <31.863434, 32.214108, 41.212120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626314, 32.248550, 41.225842>,  <31.231115, 32.305954, 41.248714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626314, 32.248550, 41.225842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062238, 0.708555, -0.702905,
		0.141385, 0.690909, 0.708982,
		0.987996, -0.143505, -0.057178,
		31.922712, 32.205498, 41.208687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532770, 32.974716, 41.040390>,  <31.231115, 32.305954, 41.248714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532770, 32.974716, 41.040390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.809975, 32.697708, 40.960236>,  <31.976297, 32.531502, 40.912144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.809975, 32.697708, 40.960236>,  <31.532770, 32.974716, 41.040390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809975, 32.697708, 40.960236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211053, 0.460662, -0.862118,
		0.689343, 0.555164, 0.465401,
		0.693010, -0.692520, -0.200385,
		32.017876, 32.489952, 40.900120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101818, 33.347481, 40.753777>,  <31.532770, 32.974716, 41.040390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101818, 33.347481, 40.753777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.184052, 32.976547, 40.628693>,  <32.233391, 32.753986, 40.553642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.184052, 32.976547, 40.628693>,  <32.101818, 33.347481, 40.753777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184052, 32.976547, 40.628693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197220, 0.352239, -0.914894,
		0.958561, 0.126413, 0.255303,
		0.205582, -0.927333, -0.312712,
		32.245728, 32.698349, 40.534878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676533, 33.433559, 40.383915>,  <32.101818, 33.347481, 40.753777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676533, 33.433559, 40.383915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524883, 33.096741, 40.230434>,  <32.433895, 32.894650, 40.138348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524883, 33.096741, 40.230434>,  <32.676533, 33.433559, 40.383915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524883, 33.096741, 40.230434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175850, 0.341535, -0.923272,
		0.908485, -0.417504, 0.018591,
		-0.379120, -0.842048, -0.383698,
		32.411148, 32.844128, 40.115326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156284, 33.178101, 39.825989>,  <32.676533, 33.433559, 40.383915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156284, 33.178101, 39.825989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796265, 33.013329, 39.769093>,  <32.580254, 32.914467, 39.734955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796265, 33.013329, 39.769093>,  <33.156284, 33.178101, 39.825989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796265, 33.013329, 39.769093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009057, 0.308641, -0.951135,
		0.435705, -0.857352, -0.274060,
		-0.900044, -0.411932, -0.142241,
		32.526253, 32.889751, 39.726421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666340, 32.720448, 39.640869>,  <33.156284, 33.178101, 39.825989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666340, 32.720448, 39.640869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021236, 32.895046, 39.700577>,  <34.234173, 32.999805, 39.736401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021236, 32.895046, 39.700577>,  <33.666340, 32.720448, 39.640869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021236, 32.895046, 39.700577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010369, -0.304615, 0.952419,
		0.461197, -0.846569, -0.265740,
		0.887237, 0.436498, 0.149266,
		34.287407, 33.025997, 39.745358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160847, 32.199944, 40.041958>,  <33.666340, 32.720448, 39.640869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160847, 32.199944, 40.041958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293407, 32.569782, 40.117096>,  <34.372944, 32.791687, 40.162178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293407, 32.569782, 40.117096>,  <34.160847, 32.199944, 40.041958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293407, 32.569782, 40.117096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157018, -0.250365, 0.955334,
		0.930331, -0.287108, -0.228152,
		0.331405, 0.924601, 0.187841,
		34.392830, 32.847164, 40.173447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781330, 32.043621, 40.403141>,  <34.160847, 32.199944, 40.041958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781330, 32.043621, 40.403141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711823, 32.426613, 40.495262>,  <34.670116, 32.656406, 40.550533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711823, 32.426613, 40.495262>,  <34.781330, 32.043621, 40.403141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711823, 32.426613, 40.495262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283370, -0.175354, 0.942843,
		0.943136, 0.229102, -0.240848,
		-0.173773, 0.957478, 0.230303,
		34.659691, 32.713856, 40.564354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457249, 32.486221, 40.646778>,  <34.781330, 32.043621, 40.403141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457249, 32.486221, 40.646778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132381, 32.661339, 40.801037>,  <34.937462, 32.766407, 40.893593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132381, 32.661339, 40.801037>,  <35.457249, 32.486221, 40.646778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132381, 32.661339, 40.801037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322147, -0.214591, 0.922048,
		0.486421, 0.873091, 0.033251,
		-0.812167, 0.437792, 0.385645,
		34.888733, 32.792675, 40.916729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650509, 32.842983, 41.146534>,  <35.457249, 32.486221, 40.646778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650509, 32.842983, 41.146534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260864, 32.875450, 41.230923>,  <35.027077, 32.894928, 41.281555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260864, 32.875450, 41.230923>,  <35.650509, 32.842983, 41.146534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260864, 32.875450, 41.230923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188504, -0.223421, 0.956321,
		0.124756, 0.971337, 0.202338,
		-0.974116, 0.081165, 0.210974,
		34.968628, 32.899799, 41.294216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616421, 33.247467, 41.695400>,  <35.650509, 32.842983, 41.146534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616421, 33.247467, 41.695400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268478, 33.050381, 41.704983>,  <35.059711, 32.932129, 41.710732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268478, 33.050381, 41.704983>,  <35.616421, 33.247467, 41.695400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268478, 33.050381, 41.704983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135590, -0.192118, 0.971960,
		-0.474299, 0.848717, 0.233923,
		-0.869860, -0.492717, 0.023956,
		35.007519, 32.902565, 41.712170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394051, 33.485088, 42.285946>,  <35.616421, 33.247467, 41.695400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394051, 33.485088, 42.285946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159630, 33.171288, 42.204857>,  <35.018978, 32.983006, 42.156204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159630, 33.171288, 42.204857>,  <35.394051, 33.485088, 42.285946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159630, 33.171288, 42.204857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066708, -0.202624, 0.976982,
		-0.807520, 0.586088, 0.066417,
		-0.586055, -0.784502, -0.202719,
		34.983814, 32.935936, 42.144039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715790, 33.519371, 42.632385>,  <35.394051, 33.485088, 42.285946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715790, 33.519371, 42.632385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795204, 33.135773, 42.551483>,  <34.842854, 32.905613, 42.502941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795204, 33.135773, 42.551483>,  <34.715790, 33.519371, 42.632385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795204, 33.135773, 42.551483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093040, -0.223873, 0.970167,
		-0.975668, -0.173793, -0.133672,
		0.198534, -0.958998, -0.202256,
		34.854763, 32.848072, 42.490807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187859, 33.143543, 42.994320>,  <34.715790, 33.519371, 42.632385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187859, 33.143543, 42.994320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503437, 32.909203, 42.920200>,  <34.692783, 32.768597, 42.875729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503437, 32.909203, 42.920200>,  <34.187859, 33.143543, 42.994320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503437, 32.909203, 42.920200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120368, -0.443071, 0.888369,
		-0.602553, -0.678575, -0.420079,
		0.788949, -0.585854, -0.185295,
		34.740124, 32.733448, 42.864613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010372, 32.416145, 43.305878>,  <34.187859, 33.143543, 42.994320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010372, 32.416145, 43.305878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409019, 32.424217, 43.273994>,  <34.648209, 32.429062, 43.254864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409019, 32.424217, 43.273994>,  <34.010372, 32.416145, 43.305878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409019, 32.424217, 43.273994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079977, -0.462941, 0.882774,
		-0.019082, -0.886159, -0.462988,
		0.996614, 0.020183, -0.079706,
		34.708004, 32.430271, 43.250084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129173, 31.756601, 43.446117>,  <34.010372, 32.416145, 43.305878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129173, 31.756601, 43.446117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482414, 31.941422, 43.478729>,  <34.694359, 32.052315, 43.498299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482414, 31.941422, 43.478729>,  <34.129173, 31.756601, 43.446117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482414, 31.941422, 43.478729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232699, -0.582213, 0.779025,
		0.407418, -0.668983, -0.621669,
		0.883098, 0.462050, 0.081533,
		34.747345, 32.080036, 43.503189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641426, 31.261705, 43.344818>,  <34.129173, 31.756601, 43.446117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641426, 31.261705, 43.344818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814854, 31.569355, 43.532635>,  <34.918911, 31.753944, 43.645325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814854, 31.569355, 43.532635>,  <34.641426, 31.261705, 43.344818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814854, 31.569355, 43.532635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290584, -0.612559, 0.735073,
		0.852983, -0.182263, -0.489081,
		0.433567, 0.769124, 0.469540,
		34.944923, 31.800093, 43.673496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330654, 31.041124, 43.493019>,  <34.641426, 31.261705, 43.344818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330654, 31.041124, 43.493019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216667, 31.310110, 43.766247>,  <35.148273, 31.471502, 43.930183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216667, 31.310110, 43.766247>,  <35.330654, 31.041124, 43.493019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216667, 31.310110, 43.766247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008630, -0.710788, 0.703354,
		0.958498, 0.206330, 0.196750,
		-0.284970, 0.672465, 0.683069,
		35.131176, 31.511850, 43.971169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717121, 30.804264, 44.165226>,  <35.330654, 31.041124, 43.493019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717121, 30.804264, 44.165226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431435, 31.052441, 44.294807>,  <35.260021, 31.201345, 44.372555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431435, 31.052441, 44.294807>,  <35.717121, 30.804264, 44.165226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431435, 31.052441, 44.294807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106219, -0.553560, 0.826008,
		0.691815, 0.555541, 0.461266,
		-0.714220, 0.620440, 0.323952,
		35.217167, 31.238573, 44.391994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493591, 30.882486, 44.191486>,  <35.717121, 30.804264, 44.165226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493591, 30.882486, 44.191486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.865181, 30.777250, 44.295628>,  <37.088135, 30.714109, 44.358112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.865181, 30.777250, 44.295628>,  <36.493591, 30.882486, 44.191486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865181, 30.777250, 44.295628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293218, 0.093840, -0.951429,
		0.225880, 0.960197, 0.164318,
		0.928979, -0.263090, 0.260350,
		37.143875, 30.698324, 44.373734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896114, 31.379820, 43.940193>,  <36.493591, 30.882486, 44.191486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896114, 31.379820, 43.940193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158527, 31.092129, 44.031693>,  <37.315975, 30.919514, 44.086594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158527, 31.092129, 44.031693>,  <36.896114, 31.379820, 43.940193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158527, 31.092129, 44.031693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514022, 0.203857, -0.833201,
		0.552630, 0.664193, 0.503437,
		0.656035, -0.719229, 0.228752,
		37.355339, 30.876360, 44.100319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561893, 31.668943, 43.840488>,  <36.896114, 31.379820, 43.940193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561893, 31.668943, 43.840488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607754, 31.272135, 43.819534>,  <37.635269, 31.034050, 43.806961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607754, 31.272135, 43.819534>,  <37.561893, 31.668943, 43.840488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607754, 31.272135, 43.819534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408577, 0.095155, -0.907750,
		0.905494, 0.082675, 0.416228,
		0.114655, -0.992023, -0.052383,
		37.642151, 30.974527, 43.803818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293633, 31.556532, 43.685368>,  <37.561893, 31.668943, 43.840488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293633, 31.556532, 43.685368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062752, 31.259607, 43.549240>,  <37.924225, 31.081453, 43.467564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062752, 31.259607, 43.549240>,  <38.293633, 31.556532, 43.685368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062752, 31.259607, 43.549240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352959, 0.149025, -0.923695,
		0.736383, -0.653275, 0.175988,
		-0.577200, -0.742310, -0.340319,
		37.889591, 31.036915, 43.447144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719860, 31.160769, 43.293808>,  <38.293633, 31.556532, 43.685368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719860, 31.160769, 43.293808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342087, 31.079746, 43.190258>,  <38.115421, 31.031134, 43.128128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342087, 31.079746, 43.190258>,  <38.719860, 31.160769, 43.293808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342087, 31.079746, 43.190258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262959, 0.006979, -0.964782,
		0.197229, -0.979246, 0.046672,
		-0.944432, -0.202556, -0.258878,
		38.058758, 31.018980, 43.112595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853859, 30.632328, 42.805527>,  <38.719860, 31.160769, 43.293808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853859, 30.632328, 42.805527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486813, 30.773506, 42.732410>,  <38.266586, 30.858213, 42.688541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486813, 30.773506, 42.732410>,  <38.853859, 30.632328, 42.805527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486813, 30.773506, 42.732410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229602, 0.095293, -0.968608,
		-0.324448, -0.930778, -0.168480,
		-0.917614, 0.352946, -0.182791,
		38.211529, 30.879391, 42.677574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665257, 30.410938, 42.084351>,  <38.853859, 30.632328, 42.805527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665257, 30.410938, 42.084351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416393, 30.718386, 42.143879>,  <38.267075, 30.902855, 42.179596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416393, 30.718386, 42.143879>,  <38.665257, 30.410938, 42.084351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416393, 30.718386, 42.143879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029186, 0.167184, -0.985494,
		-0.782350, -0.617473, -0.081581,
		-0.622155, 0.768620, 0.148818,
		38.229748, 30.948971, 42.188526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313492, 30.291622, 41.523750>,  <38.665257, 30.410938, 42.084351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313492, 30.291622, 41.523750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197376, 30.654102, 41.646732>,  <38.127705, 30.871592, 41.720520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197376, 30.654102, 41.646732>,  <38.313492, 30.291622, 41.523750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197376, 30.654102, 41.646732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237041, 0.243181, -0.940571,
		-0.927115, -0.345918, 0.144214,
		-0.290291, 0.906202, 0.307454,
		38.110291, 30.925962, 41.738968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660175, 30.410267, 41.277618>,  <38.313492, 30.291622, 41.523750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660175, 30.410267, 41.277618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802498, 30.778004, 41.344807>,  <37.887894, 30.998646, 41.385120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802498, 30.778004, 41.344807>,  <37.660175, 30.410267, 41.277618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802498, 30.778004, 41.344807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308673, 0.285253, -0.907387,
		-0.882112, 0.271007, 0.385271,
		0.355808, 0.919340, 0.167973,
		37.909241, 31.053806, 41.395199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160213, 30.903126, 40.974277>,  <37.660175, 30.410267, 41.277618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160213, 30.903126, 40.974277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.496063, 31.119247, 40.996552>,  <37.697575, 31.248920, 41.009914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.496063, 31.119247, 40.996552>,  <37.160213, 30.903126, 40.974277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496063, 31.119247, 40.996552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227033, 0.442226, -0.867693,
		-0.493443, 0.715895, 0.493971,
		0.839625, 0.540305, 0.055682,
		37.747952, 31.281340, 41.013256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995960, 31.667362, 40.743862>,  <37.160213, 30.903126, 40.974277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995960, 31.667362, 40.743862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391705, 31.627216, 40.701752>,  <37.629150, 31.603128, 40.676487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391705, 31.627216, 40.701752>,  <36.995960, 31.667362, 40.743862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391705, 31.627216, 40.701752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058699, 0.386701, -0.920335,
		0.133080, 0.916727, 0.376697,
		0.989365, -0.100367, -0.105274,
		37.688515, 31.597107, 40.670170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234020, 32.372116, 40.548649>,  <36.995960, 31.667362, 40.743862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234020, 32.372116, 40.548649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.513744, 32.114639, 40.424305>,  <37.681580, 31.960154, 40.349697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.513744, 32.114639, 40.424305>,  <37.234020, 32.372116, 40.548649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513744, 32.114639, 40.424305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064533, 0.376255, -0.924266,
		0.711903, 0.666406, 0.221579,
		0.699307, -0.643689, -0.310862,
		37.723537, 31.921534, 40.331047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668133, 32.837021, 39.936939>,  <37.234020, 32.372116, 40.548649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668133, 32.837021, 39.936939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.810791, 32.467525, 39.881077>,  <37.896385, 32.245827, 39.847561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.810791, 32.467525, 39.881077>,  <37.668133, 32.837021, 39.936939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810791, 32.467525, 39.881077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082581, 0.117731, -0.989606,
		0.930583, 0.364472, -0.034295,
		0.356646, -0.923742, -0.139657,
		37.917786, 32.190403, 39.839180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245571, 32.869987, 39.520901>,  <37.668133, 32.837021, 39.936939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245571, 32.869987, 39.520901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090286, 32.505257, 39.467445>,  <37.997116, 32.286419, 39.435371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090286, 32.505257, 39.467445>,  <38.245571, 32.869987, 39.520901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090286, 32.505257, 39.467445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113622, 0.096552, -0.988821,
		0.914537, -0.399062, 0.066121,
		-0.388217, -0.911826, -0.133643,
		37.973820, 32.231709, 39.427353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.510565, 41.494370, 28.849779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193445, 41.735924, 28.882746>,  <27.003174, 41.880856, 28.902525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193445, 41.735924, 28.882746>,  <27.510565, 41.494370, 28.849779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193445, 41.735924, 28.882746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186129, -0.368649, 0.910744,
		0.580366, 0.706698, 0.404665,
		-0.792800, 0.603884, 0.082414,
		26.955605, 41.917088, 28.907471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629314, 41.784870, 29.412306>,  <27.510565, 41.494370, 28.849779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629314, 41.784870, 29.412306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238029, 41.815365, 29.335060>,  <27.003260, 41.833664, 29.288713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238029, 41.815365, 29.335060>,  <27.629314, 41.784870, 29.412306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238029, 41.815365, 29.335060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206284, -0.462133, 0.862485,
		-0.023489, 0.883528, 0.467790,
		-0.978210, 0.076238, -0.193113,
		26.944567, 41.838238, 29.277126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269148, 41.934921, 30.127348>,  <27.629314, 41.784870, 29.412306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269148, 41.934921, 30.127348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930199, 41.834698, 29.940083>,  <26.726830, 41.774563, 29.827724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930199, 41.834698, 29.940083>,  <27.269148, 41.934921, 30.127348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930199, 41.834698, 29.940083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224587, -0.629805, 0.743577,
		-0.481161, 0.735231, 0.477408,
		-0.847375, -0.250561, -0.468161,
		26.675985, 41.759529, 29.799635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667877, 41.992813, 30.609982>,  <27.269148, 41.934921, 30.127348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667877, 41.992813, 30.609982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543507, 41.742634, 30.323727>,  <26.468884, 41.592525, 30.151974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543507, 41.742634, 30.323727>,  <26.667877, 41.992813, 30.609982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543507, 41.742634, 30.323727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274308, -0.661861, 0.697635,
		-0.909988, 0.413219, 0.034225,
		-0.310928, -0.625452, -0.715635,
		26.450228, 41.554996, 30.109035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097172, 41.684578, 30.905899>,  <26.667877, 41.992813, 30.609982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097172, 41.684578, 30.905899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196833, 41.455360, 30.593607>,  <26.256630, 41.317829, 30.406231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196833, 41.455360, 30.593607>,  <26.097172, 41.684578, 30.905899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196833, 41.455360, 30.593607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174873, -0.819521, 0.545714,
		-0.952545, 0.000563, -0.304396,
		0.249152, -0.573049, -0.780729,
		26.271578, 41.283447, 30.359388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557199, 41.295345, 30.781652>,  <26.097172, 41.684578, 30.905899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557199, 41.295345, 30.781652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883421, 41.106045, 30.648441>,  <26.079153, 40.992466, 30.568514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883421, 41.106045, 30.648441>,  <25.557199, 41.295345, 30.781652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883421, 41.106045, 30.648441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253261, -0.809350, 0.529916,
		-0.520320, -0.347831, -0.779924,
		0.815552, -0.473250, -0.333030,
		26.128086, 40.964069, 30.548532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342003, 40.619595, 30.642378>,  <25.557199, 41.295345, 30.781652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342003, 40.619595, 30.642378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740498, 40.590660, 30.661474>,  <25.979595, 40.573299, 30.672932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740498, 40.590660, 30.661474>,  <25.342003, 40.619595, 30.642378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740498, 40.590660, 30.661474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086025, -0.892458, 0.442852,
		0.010571, -0.445292, -0.895323,
		0.996237, -0.072339, 0.047740,
		26.039370, 40.568958, 30.675797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469591, 39.962517, 30.481256>,  <25.342003, 40.619595, 30.642378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469591, 39.962517, 30.481256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786749, 40.090038, 30.688982>,  <25.977043, 40.166550, 30.813618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786749, 40.090038, 30.688982>,  <25.469591, 39.962517, 30.481256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786749, 40.090038, 30.688982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021697, -0.836915, 0.546904,
		0.608975, -0.444903, -0.656666,
		0.792893, 0.318803, 0.519313,
		26.024616, 40.185680, 30.844776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784752, 39.397861, 30.513208>,  <25.469591, 39.962517, 30.481256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784752, 39.397861, 30.513208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.962397, 39.617123, 30.796700>,  <26.068983, 39.748680, 30.966795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.962397, 39.617123, 30.796700>,  <25.784752, 39.397861, 30.513208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962397, 39.617123, 30.796700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128035, -0.821726, 0.555314,
		0.886777, -0.155878, -0.435120,
		0.444111, 0.548150, 0.708730,
		26.095631, 39.781567, 31.009319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189959, 38.910389, 30.814507>,  <25.784752, 39.397861, 30.513208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189959, 38.910389, 30.814507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236597, 39.218529, 31.065256>,  <26.264580, 39.403412, 31.215706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236597, 39.218529, 31.065256>,  <26.189959, 38.910389, 30.814507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236597, 39.218529, 31.065256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361870, -0.620743, 0.695506,
		0.924909, 0.145756, -0.351140,
		0.116594, 0.770346, 0.626875,
		26.271576, 39.449635, 31.253319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887394, 38.807339, 31.184362>,  <26.189959, 38.910389, 30.814507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887394, 38.807339, 31.184362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.642712, 39.029209, 31.409985>,  <26.495903, 39.162331, 31.545357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.642712, 39.029209, 31.409985>,  <26.887394, 38.807339, 31.184362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642712, 39.029209, 31.409985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249805, -0.541095, 0.803003,
		0.750610, 0.632104, 0.192430,
		-0.611704, 0.554672, 0.564054,
		26.459200, 39.195610, 31.579201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277925, 38.918568, 31.891357>,  <26.887394, 38.807339, 31.184362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277925, 38.918568, 31.891357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889868, 38.992798, 31.953810>,  <26.657032, 39.037338, 31.991282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889868, 38.992798, 31.953810>,  <27.277925, 38.918568, 31.891357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889868, 38.992798, 31.953810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029879, -0.547415, 0.836328,
		0.240673, 0.816025, 0.525527,
		-0.970146, 0.185580, 0.156130,
		26.598824, 39.048473, 32.000648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163342, 38.924881, 32.593281>,  <27.277925, 38.918568, 31.891357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163342, 38.924881, 32.593281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788429, 38.848537, 32.476608>,  <26.563482, 38.802731, 32.406605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788429, 38.848537, 32.476608>,  <27.163342, 38.924881, 32.593281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788429, 38.848537, 32.476608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051654, -0.751494, 0.657715,
		-0.344728, 0.631530, 0.694502,
		-0.937280, -0.190859, -0.291682,
		26.507246, 38.791279, 32.389103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781311, 38.732388, 33.250809>,  <27.163342, 38.924881, 32.593281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781311, 38.732388, 33.250809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538511, 38.601677, 32.961044>,  <26.392832, 38.523251, 32.787186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538511, 38.601677, 32.961044>,  <26.781311, 38.732388, 33.250809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538511, 38.601677, 32.961044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163037, -0.840952, 0.515964,
		-0.777799, 0.431295, 0.457180,
		-0.606999, -0.326779, -0.724408,
		26.356411, 38.503643, 32.743721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124243, 38.516525, 33.691475>,  <26.781311, 38.732388, 33.250809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124243, 38.516525, 33.691475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136566, 38.369400, 33.319721>,  <26.143961, 38.281124, 33.096668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136566, 38.369400, 33.319721>,  <26.124243, 38.516525, 33.691475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136566, 38.369400, 33.319721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059098, -0.928874, 0.365651,
		-0.997777, 0.043659, -0.050356,
		0.030810, -0.367814, -0.929389,
		26.145809, 38.259056, 33.040905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610561, 38.006817, 33.713272>,  <26.124243, 38.516525, 33.691475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610561, 38.006817, 33.713272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.857752, 37.925697, 33.409435>,  <26.006067, 37.877026, 33.227135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.857752, 37.925697, 33.409435>,  <25.610561, 38.006817, 33.713272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857752, 37.925697, 33.409435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045740, -0.973795, 0.222782,
		-0.784864, -0.102931, -0.611060,
		0.617978, -0.202803, -0.759588,
		26.043144, 37.864857, 33.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267017, 37.513851, 33.308285>,  <25.610561, 38.006817, 33.713272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267017, 37.513851, 33.308285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.660872, 37.493996, 33.241310>,  <25.897184, 37.482082, 33.201126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.660872, 37.493996, 33.241310>,  <25.267017, 37.513851, 33.308285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660872, 37.493996, 33.241310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004782, -0.950730, 0.309982,
		-0.174571, -0.306019, -0.935883,
		0.984633, -0.049639, -0.167433,
		25.956261, 37.479103, 33.191082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305294, 36.904800, 32.972939>,  <25.267017, 37.513851, 33.308285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305294, 36.904800, 32.972939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.641760, 37.006958, 33.163609>,  <25.843639, 37.068253, 33.278011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.641760, 37.006958, 33.163609>,  <25.305294, 36.904800, 32.972939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641760, 37.006958, 33.163609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076850, -0.928963, 0.362108,
		0.535289, -0.267960, -0.801039,
		0.841166, 0.255392, 0.476671,
		25.894110, 37.083576, 33.306610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756142, 36.283016, 32.967579>,  <25.305294, 36.904800, 32.972939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756142, 36.283016, 32.967579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956846, 36.503910, 33.233891>,  <26.077269, 36.636448, 33.393677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956846, 36.503910, 33.233891>,  <25.756142, 36.283016, 32.967579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956846, 36.503910, 33.233891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351577, -0.833442, 0.426342,
		0.790334, 0.020151, -0.612345,
		0.501763, 0.552239, 0.665782,
		26.107374, 36.669582, 33.433624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455168, 35.907410, 33.034340>,  <25.756142, 36.283016, 32.967579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455168, 35.907410, 33.034340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.360849, 36.120209, 33.359642>,  <26.304258, 36.247887, 33.554821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.360849, 36.120209, 33.359642>,  <26.455168, 35.907410, 33.034340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360849, 36.120209, 33.359642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396763, -0.711224, 0.580293,
		0.887118, 0.459500, -0.043372,
		-0.235797, 0.531997, 0.813252,
		26.290110, 36.279808, 33.603619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048439, 35.970856, 33.463295>,  <26.455168, 35.907410, 33.034340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048439, 35.970856, 33.463295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.699390, 35.968925, 33.658646>,  <26.489962, 35.967770, 33.775856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.699390, 35.968925, 33.658646>,  <27.048439, 35.970856, 33.463295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699390, 35.968925, 33.658646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302218, -0.790848, 0.532188,
		0.383665, 0.611994, 0.691566,
		-0.872620, -0.004821, 0.488376,
		26.437605, 35.967480, 33.805157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493681, 35.948223, 32.873013>,  <27.048439, 35.970856, 33.463295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493681, 35.948223, 32.873013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644506, 35.712761, 32.586990>,  <27.735003, 35.571484, 32.415375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644506, 35.712761, 32.586990>,  <27.493681, 35.948223, 32.873013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644506, 35.712761, 32.586990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260294, 0.808281, -0.528137,
		0.888859, 0.013016, 0.457996,
		0.377063, -0.588653, -0.715060,
		27.757626, 35.536163, 32.372471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186960, 36.166027, 32.744015>,  <27.493681, 35.948223, 32.873013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186960, 36.166027, 32.744015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079470, 35.958408, 32.419453>,  <28.014975, 35.833839, 32.224716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079470, 35.958408, 32.419453>,  <28.186960, 36.166027, 32.744015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079470, 35.958408, 32.419453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370363, 0.721950, -0.584482,
		0.889167, -0.457580, -0.001773,
		-0.268727, -0.519045, -0.811405,
		27.998852, 35.802696, 32.176033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814499, 36.242977, 32.255314>,  <28.186960, 36.166027, 32.744015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814499, 36.242977, 32.255314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526302, 36.114017, 32.009727>,  <28.353384, 36.036640, 31.862375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526302, 36.114017, 32.009727>,  <28.814499, 36.242977, 32.255314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526302, 36.114017, 32.009727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465412, 0.431536, -0.772767,
		0.514089, -0.842517, -0.160867,
		-0.720489, -0.322401, -0.613965,
		28.310156, 36.017296, 31.825539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087660, 36.002319, 31.652836>,  <28.814499, 36.242977, 32.255314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087660, 36.002319, 31.652836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713324, 36.106907, 31.558315>,  <28.488722, 36.169659, 31.501604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713324, 36.106907, 31.558315>,  <29.087660, 36.002319, 31.652836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713324, 36.106907, 31.558315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346730, 0.563015, -0.750195,
		-0.063115, -0.783994, -0.617552,
		-0.935839, 0.261472, -0.236300,
		28.432571, 36.185349, 31.487425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080528, 35.849144, 30.966192>,  <29.087660, 36.002319, 31.652836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080528, 35.849144, 30.966192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786087, 36.110954, 31.035194>,  <28.609423, 36.268040, 31.076595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786087, 36.110954, 31.035194>,  <29.080528, 35.849144, 30.966192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786087, 36.110954, 31.035194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281070, 0.527414, -0.801769,
		-0.615755, -0.541697, -0.572196,
		-0.736101, 0.654521, 0.172503,
		28.565256, 36.307312, 31.086945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837343, 36.149319, 30.264704>,  <29.080528, 35.849144, 30.966192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837343, 36.149319, 30.264704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698681, 36.416054, 30.528568>,  <28.615482, 36.576096, 30.686888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698681, 36.416054, 30.528568>,  <28.837343, 36.149319, 30.264704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698681, 36.416054, 30.528568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112968, 0.727834, -0.676385,
		-0.931164, -0.159953, -0.327641,
		-0.346658, 0.666838, 0.659663,
		28.594683, 36.616104, 30.726467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270338, 36.590008, 29.843418>,  <28.837343, 36.149319, 30.264704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270338, 36.590008, 29.843418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.448488, 36.796124, 30.136299>,  <28.555378, 36.919792, 30.312029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.448488, 36.796124, 30.136299>,  <28.270338, 36.590008, 29.843418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448488, 36.796124, 30.136299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081315, 0.791131, -0.606217,
		-0.891644, 0.329533, 0.310449,
		0.445374, 0.515286, 0.732204,
		28.582100, 36.950710, 30.355961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881418, 37.194931, 29.925884>,  <28.270338, 36.590008, 29.843418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881418, 37.194931, 29.925884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239429, 37.276894, 30.084345>,  <28.454237, 37.326073, 30.179422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239429, 37.276894, 30.084345>,  <27.881418, 37.194931, 29.925884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239429, 37.276894, 30.084345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126828, 0.734620, -0.666520,
		-0.427597, 0.646797, 0.631517,
		0.895028, 0.204908, 0.396154,
		28.507938, 37.338367, 30.203192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882156, 37.969521, 30.058352>,  <27.881418, 37.194931, 29.925884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882156, 37.969521, 30.058352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258083, 37.832939, 30.053331>,  <28.483639, 37.750992, 30.050320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258083, 37.832939, 30.053331>,  <27.882156, 37.969521, 30.058352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258083, 37.832939, 30.053331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286213, 0.806777, -0.516908,
		0.186623, 0.482207, 0.855949,
		0.939816, -0.341451, -0.012550,
		28.540028, 37.730503, 30.049566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247217, 38.536102, 30.132851>,  <27.882156, 37.969521, 30.058352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247217, 38.536102, 30.132851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530088, 38.285248, 30.002254>,  <28.699812, 38.134735, 29.923897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530088, 38.285248, 30.002254>,  <28.247217, 38.536102, 30.132851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530088, 38.285248, 30.002254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422142, 0.744950, -0.516571,
		0.567179, 0.227484, 0.791555,
		0.707180, -0.627137, -0.326490,
		28.742243, 38.097107, 29.904308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836840, 38.888012, 30.205935>,  <28.247217, 38.536102, 30.132851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836840, 38.888012, 30.205935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.929153, 38.610558, 29.932995>,  <28.984541, 38.444084, 29.769230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.929153, 38.610558, 29.932995>,  <28.836840, 38.888012, 30.205935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929153, 38.610558, 29.932995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348930, 0.713637, -0.607430,
		0.908288, -0.097908, 0.406726,
		0.230783, -0.693640, -0.682351,
		28.998388, 38.402466, 29.728289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532255, 38.897255, 30.038620>,  <28.836840, 38.888012, 30.205935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532255, 38.897255, 30.038620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350149, 38.737778, 29.720179>,  <29.240885, 38.642094, 29.529114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350149, 38.737778, 29.720179>,  <29.532255, 38.897255, 30.038620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350149, 38.737778, 29.720179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351738, 0.740873, -0.572178,
		0.817932, -0.540513, -0.197060,
		-0.455266, -0.398690, -0.796102,
		29.213570, 38.618172, 29.481348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991459, 39.071049, 29.474676>,  <29.532255, 38.897255, 30.038620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991459, 39.071049, 29.474676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649269, 38.961868, 29.298649>,  <29.443954, 38.896358, 29.193033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649269, 38.961868, 29.298649>,  <29.991459, 39.071049, 29.474676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649269, 38.961868, 29.298649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192237, 0.621689, -0.759307,
		0.480840, -0.734166, -0.479369,
		-0.855476, -0.272953, -0.440066,
		29.392626, 38.879982, 29.166628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089169, 39.231148, 28.800697>,  <29.991459, 39.071049, 29.474676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089169, 39.231148, 28.800697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692303, 39.181580, 28.794312>,  <29.454184, 39.151840, 28.790480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692303, 39.181580, 28.794312>,  <30.089169, 39.231148, 28.800697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692303, 39.181580, 28.794312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075852, 0.698924, -0.711162,
		0.099282, -0.704379, -0.702847,
		-0.992164, -0.123918, -0.015962,
		29.394653, 39.144405, 28.789522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927217, 39.147358, 28.031830>,  <30.089169, 39.231148, 28.800697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927217, 39.147358, 28.031830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613544, 39.252247, 28.256790>,  <29.425341, 39.315182, 28.391766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613544, 39.252247, 28.256790>,  <29.927217, 39.147358, 28.031830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613544, 39.252247, 28.256790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284927, 0.652974, -0.701742,
		-0.551245, -0.710538, -0.437338,
		-0.784185, 0.262222, 0.562400,
		29.378288, 39.330914, 28.425510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323627, 39.158569, 27.633059>,  <29.927217, 39.147358, 28.031830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323627, 39.158569, 27.633059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222750, 39.408382, 27.928722>,  <29.162222, 39.558270, 28.106121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222750, 39.408382, 27.928722>,  <29.323627, 39.158569, 27.633059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222750, 39.408382, 27.928722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316460, 0.668618, -0.672907,
		-0.914467, -0.403619, 0.029017,
		-0.252196, 0.624534, 0.739158,
		29.147091, 39.595741, 28.150471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612082, 39.351044, 27.483995>,  <29.323627, 39.158569, 27.633059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612082, 39.351044, 27.483995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742298, 39.645203, 27.721722>,  <28.820429, 39.821697, 27.864357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742298, 39.645203, 27.721722>,  <28.612082, 39.351044, 27.483995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742298, 39.645203, 27.721722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474185, 0.670776, -0.570270,
		-0.818029, -0.096170, 0.567080,
		0.325541, 0.735399, 0.594316,
		28.839960, 39.865822, 27.900017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018980, 39.802773, 27.524641>,  <28.612082, 39.351044, 27.483995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018980, 39.802773, 27.524641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292503, 40.062229, 27.658304>,  <28.456617, 40.217903, 27.738503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292503, 40.062229, 27.658304>,  <28.018980, 39.802773, 27.524641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292503, 40.062229, 27.658304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378587, 0.706901, -0.597463,
		-0.623759, 0.282044, 0.728955,
		0.683810, 0.648646, 0.334158,
		28.497646, 40.256824, 27.758553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596077, 40.337826, 27.771811>,  <28.018980, 39.802773, 27.524641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596077, 40.337826, 27.771811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961143, 40.478607, 27.688700>,  <28.180183, 40.563076, 27.638834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961143, 40.478607, 27.688700>,  <27.596077, 40.337826, 27.771811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961143, 40.478607, 27.688700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408463, 0.768003, -0.493285,
		-0.014039, 0.535074, 0.844689,
		0.912667, 0.351949, -0.207776,
		28.234943, 40.584190, 27.626368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502722, 41.060375, 27.742834>,  <27.596077, 40.337826, 27.771811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502722, 41.060375, 27.742834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846569, 41.007465, 27.545425>,  <28.052877, 40.975719, 27.426981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846569, 41.007465, 27.545425>,  <27.502722, 41.060375, 27.742834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846569, 41.007465, 27.545425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243253, 0.743462, -0.622970,
		0.449318, 0.655566, 0.606916,
		0.859617, -0.132277, -0.493519,
		28.104454, 40.967781, 27.397369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826267, 41.697968, 27.715288>,  <27.502722, 41.060375, 27.742834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826267, 41.697968, 27.715288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024302, 41.509342, 27.423393>,  <28.143122, 41.396168, 27.248257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024302, 41.509342, 27.423393>,  <27.826267, 41.697968, 27.715288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024302, 41.509342, 27.423393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078650, 0.812123, -0.578161,
		0.865276, 0.343634, 0.364983,
		0.495087, -0.471563, -0.729738,
		28.172827, 41.367874, 27.204472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.982712, 28.687641, 43.959473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873802, 28.302979, 43.946308>,  <39.808456, 28.072182, 43.938408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873802, 28.302979, 43.946308>,  <39.982712, 28.687641, 43.959473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873802, 28.302979, 43.946308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191548, 0.020652, 0.981266,
		-0.942960, 0.273480, -0.189827,
		-0.272277, -0.961656, -0.032911,
		39.792118, 28.014482, 43.936436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385899, 28.624931, 44.260445>,  <39.982712, 28.687641, 43.959473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385899, 28.624931, 44.260445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517414, 28.248526, 44.292427>,  <39.596325, 28.022682, 44.311615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517414, 28.248526, 44.292427>,  <39.385899, 28.624931, 44.260445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517414, 28.248526, 44.292427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305294, -0.025792, 0.951909,
		-0.893696, -0.337387, -0.295765,
		0.328790, -0.941013, 0.079952,
		39.616051, 27.966223, 44.316414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763657, 28.248648, 44.461914>,  <39.385899, 28.624931, 44.260445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763657, 28.248648, 44.461914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.084961, 28.028690, 44.553467>,  <39.277744, 27.896717, 44.608398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.084961, 28.028690, 44.553467>,  <38.763657, 28.248648, 44.461914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084961, 28.028690, 44.553467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281315, -0.011548, 0.959546,
		-0.525004, -0.835156, -0.163969,
		0.803264, -0.549892, 0.228879,
		39.325939, 27.863722, 44.622131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478802, 27.845192, 44.932438>,  <38.763657, 28.248648, 44.461914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478802, 27.845192, 44.932438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872448, 27.819309, 44.998558>,  <39.108635, 27.803780, 45.038231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872448, 27.819309, 44.998558>,  <38.478802, 27.845192, 44.932438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872448, 27.819309, 44.998558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175051, -0.199322, 0.964172,
		-0.029438, -0.977796, -0.207483,
		0.984119, -0.064703, 0.165296,
		39.167683, 27.799898, 45.048145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559814, 27.212664, 45.219986>,  <38.478802, 27.845192, 44.932438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559814, 27.212664, 45.219986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902992, 27.393347, 45.317879>,  <39.108898, 27.501757, 45.376614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902992, 27.393347, 45.317879>,  <38.559814, 27.212664, 45.219986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902992, 27.393347, 45.317879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089317, -0.337972, 0.936908,
		0.505922, -0.825673, -0.249616,
		0.857943, 0.451708, 0.244734,
		39.160374, 27.528858, 45.391300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058338, 26.680998, 45.449783>,  <38.559814, 27.212664, 45.219986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058338, 26.680998, 45.449783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161827, 27.037092, 45.599739>,  <39.223919, 27.250750, 45.689713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161827, 27.037092, 45.599739>,  <39.058338, 26.680998, 45.449783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161827, 27.037092, 45.599739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114276, -0.357173, 0.927021,
		0.959169, -0.282679, 0.009325,
		0.258718, 0.890236, 0.374893,
		39.239441, 27.304163, 45.712208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402676, 26.498978, 46.085930>,  <39.058338, 26.680998, 45.449783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402676, 26.498978, 46.085930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322472, 26.888332, 46.130322>,  <39.274349, 27.121944, 46.156956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322472, 26.888332, 46.130322>,  <39.402676, 26.498978, 46.085930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322472, 26.888332, 46.130322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083230, -0.129792, 0.988042,
		0.976149, 0.188878, 0.107039,
		-0.200512, 0.973385, 0.110976,
		39.262318, 27.180347, 46.163612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627335, 26.623940, 46.748413>,  <39.402676, 26.498978, 46.085930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627335, 26.623940, 46.748413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.421844, 26.953297, 46.651993>,  <39.298550, 27.150911, 46.594139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.421844, 26.953297, 46.651993>,  <39.627335, 26.623940, 46.748413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421844, 26.953297, 46.651993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262961, 0.116325, 0.957768,
		0.816660, 0.555421, 0.156761,
		-0.513730, 0.823393, -0.241052,
		39.267727, 27.200315, 46.579678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977680, 27.271564, 47.135098>,  <39.627335, 26.623940, 46.748413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977680, 27.271564, 47.135098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.586124, 27.303846, 47.059982>,  <39.351192, 27.323215, 47.014912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.586124, 27.303846, 47.059982>,  <39.977680, 27.271564, 47.135098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586124, 27.303846, 47.059982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152401, 0.324043, 0.933686,
		0.136204, 0.942594, -0.304902,
		-0.978888, 0.080704, -0.187788,
		39.292458, 27.328058, 47.003647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825283, 27.800028, 47.543037>,  <39.977680, 27.271564, 47.135098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825283, 27.800028, 47.543037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467896, 27.639545, 47.462299>,  <39.253464, 27.543257, 47.413857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467896, 27.639545, 47.462299>,  <39.825283, 27.800028, 47.543037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467896, 27.639545, 47.462299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299881, 0.198365, 0.933125,
		-0.334336, 0.894251, -0.297548,
		-0.893471, -0.401206, -0.201848,
		39.199856, 27.519184, 47.401745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383232, 28.244074, 47.816872>,  <39.825283, 27.800028, 47.543037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383232, 28.244074, 47.816872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.183479, 27.898514, 47.790653>,  <39.063629, 27.691177, 47.774921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.183479, 27.898514, 47.790653>,  <39.383232, 28.244074, 47.816872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183479, 27.898514, 47.790653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275354, 0.086531, 0.957441,
		-0.821460, 0.496178, -0.281090,
		-0.499384, -0.863898, -0.065543,
		39.033665, 27.639345, 47.770992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700314, 28.401649, 48.172668>,  <39.383232, 28.244074, 47.816872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700314, 28.401649, 48.172668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795959, 28.013634, 48.155457>,  <38.853348, 27.780825, 48.145130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795959, 28.013634, 48.155457>,  <38.700314, 28.401649, 48.172668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795959, 28.013634, 48.155457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377232, -0.133643, 0.916425,
		-0.894719, -0.202894, -0.397885,
		0.239112, -0.970038, -0.043034,
		38.867695, 27.722622, 48.142548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263771, 28.002306, 48.569805>,  <38.700314, 28.401649, 48.172668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263771, 28.002306, 48.569805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545601, 27.723188, 48.518181>,  <38.714699, 27.555717, 48.487206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545601, 27.723188, 48.518181>,  <38.263771, 28.002306, 48.569805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545601, 27.723188, 48.518181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093958, -0.271998, 0.957700,
		-0.703379, -0.662648, -0.257207,
		0.704577, -0.697793, -0.129057,
		38.756973, 27.513851, 48.479465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052788, 27.344355, 48.861183>,  <38.263771, 28.002306, 48.569805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052788, 27.344355, 48.861183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669811, 27.406355, 48.958569>,  <37.440025, 27.443556, 49.017002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669811, 27.406355, 48.958569>,  <38.052788, 27.344355, 48.861183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669811, 27.406355, 48.958569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002455, 0.847899, -0.530152,
		-0.288611, -0.506993, -0.812196,
		-0.957443, 0.155002, 0.243468,
		37.382580, 27.452856, 49.031609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512699, 27.390213, 48.277287>,  <38.052788, 27.344355, 48.861183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512699, 27.390213, 48.277287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365036, 27.596054, 48.586842>,  <37.276436, 27.719559, 48.772575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365036, 27.596054, 48.586842>,  <37.512699, 27.390213, 48.277287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365036, 27.596054, 48.586842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155379, 0.786812, -0.597315,
		-0.916284, -0.340752, -0.210503,
		-0.369162, 0.514602, 0.773889,
		37.254288, 27.750435, 48.819008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840248, 27.570074, 48.185993>,  <37.512699, 27.390213, 48.277287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840248, 27.570074, 48.185993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953201, 27.857191, 48.440559>,  <37.020973, 28.029461, 48.593300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953201, 27.857191, 48.440559>,  <36.840248, 27.570074, 48.185993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953201, 27.857191, 48.440559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165156, 0.689891, -0.704822,
		-0.944977, 0.093923, 0.313363,
		0.282385, 0.717795, 0.636419,
		37.037918, 28.072529, 48.631485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298512, 28.106432, 48.222954>,  <36.840248, 27.570074, 48.185993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298512, 28.106432, 48.222954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632023, 28.272421, 48.368618>,  <36.832130, 28.372013, 48.456017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632023, 28.272421, 48.368618>,  <36.298512, 28.106432, 48.222954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632023, 28.272421, 48.368618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058175, 0.721953, -0.689492,
		-0.549024, 0.553700, 0.626090,
		0.833779, 0.414971, 0.364159,
		36.882156, 28.396912, 48.477867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111092, 28.854485, 48.290783>,  <36.298512, 28.106432, 48.222954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111092, 28.854485, 48.290783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510315, 28.860069, 48.315056>,  <36.749847, 28.863420, 48.329620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510315, 28.860069, 48.315056>,  <36.111092, 28.854485, 48.290783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510315, 28.860069, 48.315056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027027, 0.780839, -0.624148,
		-0.056098, 0.624577, 0.778946,
		0.998059, 0.013961, 0.060684,
		36.809734, 28.864258, 48.333260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364971, 29.453444, 48.448421>,  <36.111092, 28.854485, 48.290783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364971, 29.453444, 48.448421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664291, 29.283323, 48.244785>,  <36.843884, 29.181252, 48.122604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664291, 29.283323, 48.244785>,  <36.364971, 29.453444, 48.448421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664291, 29.283323, 48.244785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048783, 0.800638, -0.597159,
		0.661569, 0.422017, 0.619862,
		0.748296, -0.425300, -0.509090,
		36.888779, 29.155733, 48.092060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797665, 29.968195, 48.153690>,  <36.364971, 29.453444, 48.448421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797665, 29.968195, 48.153690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972145, 29.673979, 47.946342>,  <37.076832, 29.497448, 47.821934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972145, 29.673979, 47.946342>,  <36.797665, 29.968195, 48.153690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972145, 29.673979, 47.946342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161500, 0.630702, -0.759034,
		0.885240, 0.247372, 0.393901,
		0.436198, -0.735542, -0.518372,
		37.103004, 29.453316, 47.790833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313179, 30.291521, 47.808510>,  <36.797665, 29.968195, 48.153690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313179, 30.291521, 47.808510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267452, 29.955727, 47.596020>,  <37.240017, 29.754250, 47.468525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267452, 29.955727, 47.596020>,  <37.313179, 30.291521, 47.808510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267452, 29.955727, 47.596020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252537, 0.492605, -0.832805,
		0.960810, -0.229356, 0.155689,
		-0.114316, -0.839485, -0.531221,
		37.233158, 29.703880, 47.436653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880703, 30.307228, 47.415321>,  <37.313179, 30.291521, 47.808510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880703, 30.307228, 47.415321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.618439, 30.060013, 47.241821>,  <37.461079, 29.911684, 47.137722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.618439, 30.060013, 47.241821>,  <37.880703, 30.307228, 47.415321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618439, 30.060013, 47.241821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118044, 0.483490, -0.867354,
		0.745770, -0.619893, -0.244051,
		-0.655662, -0.618038, -0.433748,
		37.421741, 29.874601, 47.111698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224442, 30.007647, 46.835171>,  <37.880703, 30.307228, 47.415321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224442, 30.007647, 46.835171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830009, 29.972113, 46.778950>,  <37.593349, 29.950792, 46.745216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830009, 29.972113, 46.778950>,  <38.224442, 30.007647, 46.835171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830009, 29.972113, 46.778950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112466, 0.266256, -0.957319,
		0.122466, -0.959800, -0.252559,
		-0.986080, -0.088834, -0.140552,
		37.534187, 29.945463, 46.736786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220371, 29.640211, 46.262432>,  <38.224442, 30.007647, 46.835171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220371, 29.640211, 46.262432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867432, 29.824053, 46.302883>,  <37.655670, 29.934359, 46.327156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867432, 29.824053, 46.302883>,  <38.220371, 29.640211, 46.262432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867432, 29.824053, 46.302883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033540, 0.275769, -0.960638,
		-0.469402, -0.844225, -0.258739,
		-0.882347, 0.459604, 0.101132,
		37.602726, 29.961933, 46.333221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784740, 29.371841, 45.738930>,  <38.220371, 29.640211, 46.262432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784740, 29.371841, 45.738930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608673, 29.715343, 45.843842>,  <37.503033, 29.921446, 45.906788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608673, 29.715343, 45.843842>,  <37.784740, 29.371841, 45.738930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608673, 29.715343, 45.843842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068342, 0.259206, -0.963401,
		-0.895311, -0.441983, -0.055405,
		-0.440168, 0.858757, 0.262276,
		37.476624, 29.972971, 45.922523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242069, 29.462608, 45.357044>,  <37.784740, 29.371841, 45.738930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242069, 29.462608, 45.357044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289623, 29.841480, 45.476185>,  <37.318157, 30.068804, 45.547668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289623, 29.841480, 45.476185>,  <37.242069, 29.462608, 45.357044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289623, 29.841480, 45.476185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133493, 0.312500, -0.940491,
		-0.983893, 0.072050, 0.163593,
		0.118885, 0.947181, 0.297849,
		37.325287, 30.125635, 45.565540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711803, 29.728495, 45.057987>,  <37.242069, 29.462608, 45.357044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711803, 29.728495, 45.057987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943127, 30.041983, 45.148624>,  <37.081921, 30.230076, 45.203007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943127, 30.041983, 45.148624>,  <36.711803, 29.728495, 45.057987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943127, 30.041983, 45.148624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083201, 0.332958, -0.939264,
		-0.811568, 0.524327, 0.257758,
		0.578304, 0.783722, 0.226594,
		37.116619, 30.277100, 45.216602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371162, 30.361710, 44.807728>,  <36.711803, 29.728495, 45.057987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371162, 30.361710, 44.807728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753448, 30.479050, 44.817204>,  <36.982819, 30.549454, 44.822891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753448, 30.479050, 44.817204>,  <36.371162, 30.361710, 44.807728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753448, 30.479050, 44.817204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023221, 0.155414, -0.987576,
		-0.293386, 0.943288, 0.155342,
		0.955712, 0.293349, 0.023693,
		37.040161, 30.567055, 44.824310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883862, 30.898897, 44.921059>,  <36.371162, 30.361710, 44.807728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883862, 30.898897, 44.921059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505215, 31.014650, 44.864243>,  <35.278027, 31.084103, 44.830154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505215, 31.014650, 44.864243>,  <35.883862, 30.898897, 44.921059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505215, 31.014650, 44.864243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227791, -0.288709, 0.929924,
		0.228095, 0.912637, 0.339215,
		-0.946617, 0.289381, -0.142037,
		35.221230, 31.101465, 44.821632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720898, 31.216949, 45.595718>,  <35.883862, 30.898897, 44.921059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720898, 31.216949, 45.595718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365299, 31.144596, 45.427452>,  <35.151939, 31.101185, 45.326492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365299, 31.144596, 45.427452>,  <35.720898, 31.216949, 45.595718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365299, 31.144596, 45.427452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368662, -0.262164, 0.891829,
		-0.271601, 0.947919, 0.166379,
		-0.889000, -0.180884, -0.420666,
		35.098598, 31.090330, 45.301254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168159, 31.639763, 45.889996>,  <35.720898, 31.216949, 45.595718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168159, 31.639763, 45.889996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027679, 31.297915, 45.737011>,  <34.943390, 31.092806, 45.645218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027679, 31.297915, 45.737011>,  <35.168159, 31.639763, 45.889996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027679, 31.297915, 45.737011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474972, -0.189405, 0.859376,
		-0.806883, 0.483473, -0.339402,
		-0.351201, -0.854622, -0.382464,
		34.922318, 31.041529, 45.622272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638573, 31.654108, 46.337757>,  <35.168159, 31.639763, 45.889996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638573, 31.654108, 46.337757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694752, 31.295809, 46.169041>,  <34.728458, 31.080830, 46.067810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694752, 31.295809, 46.169041>,  <34.638573, 31.654108, 46.337757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694752, 31.295809, 46.169041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501363, -0.431699, 0.749847,
		-0.853762, 0.106153, -0.509728,
		0.140451, -0.895750, -0.421789,
		34.736889, 31.027084, 46.042503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931969, 31.258455, 46.342426>,  <34.638573, 31.654108, 46.337757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931969, 31.258455, 46.342426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245392, 31.011381, 46.315590>,  <34.433445, 30.863136, 46.299488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245392, 31.011381, 46.315590>,  <33.931969, 31.258455, 46.342426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245392, 31.011381, 46.315590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379776, -0.561599, 0.735103,
		-0.491737, -0.550520, -0.674628,
		0.783559, -0.617684, -0.067085,
		34.480461, 30.826075, 46.295464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607941, 30.763742, 46.632957>,  <33.931969, 31.258455, 46.342426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607941, 30.763742, 46.632957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985905, 30.633263, 46.622154>,  <34.212685, 30.554974, 46.615673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985905, 30.633263, 46.622154>,  <33.607941, 30.763742, 46.632957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985905, 30.633263, 46.622154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208459, -0.663358, 0.718680,
		-0.252352, -0.673461, -0.694816,
		0.944915, -0.326201, -0.027011,
		34.269379, 30.535402, 46.614052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581268, 29.969709, 46.684818>,  <33.607941, 30.763742, 46.632957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581268, 29.969709, 46.684818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937557, 30.116930, 46.791519>,  <34.151329, 30.205261, 46.855541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937557, 30.116930, 46.791519>,  <33.581268, 29.969709, 46.684818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937557, 30.116930, 46.791519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018678, -0.556722, 0.830489,
		0.454171, -0.744715, -0.489008,
		0.890719, 0.368050, 0.266757,
		34.204773, 30.227345, 46.871548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296429, 29.222668, 46.556072>,  <33.581268, 29.969709, 46.684818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296429, 29.222668, 46.556072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906635, 29.135891, 46.579105>,  <32.672760, 29.083824, 46.592926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906635, 29.135891, 46.579105>,  <33.296429, 29.222668, 46.556072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906635, 29.135891, 46.579105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148553, 0.431034, -0.890023,
		0.168264, -0.875868, -0.452263,
		-0.974484, -0.216944, 0.057586,
		32.614288, 29.070808, 46.596382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161572, 28.830952, 45.953835>,  <33.296429, 29.222668, 46.556072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161572, 28.830952, 45.953835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810585, 28.972998, 46.082794>,  <32.599991, 29.058226, 46.160172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810585, 28.972998, 46.082794>,  <33.161572, 28.830952, 45.953835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810585, 28.972998, 46.082794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156854, 0.422762, -0.892563,
		-0.453262, -0.833766, -0.315259,
		-0.877468, 0.355116, 0.322402,
		32.547344, 29.079533, 46.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691727, 28.643797, 45.429714>,  <33.161572, 28.830952, 45.953835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691727, 28.643797, 45.429714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535564, 28.955994, 45.625027>,  <32.441868, 29.143311, 45.742214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535564, 28.955994, 45.625027>,  <32.691727, 28.643797, 45.429714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535564, 28.955994, 45.625027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300445, 0.393325, -0.868923,
		-0.870241, -0.485932, 0.080940,
		-0.390402, 0.780490, 0.488284,
		32.418446, 29.190142, 45.771511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208038, 28.781811, 44.978531>,  <32.691727, 28.643797, 45.429714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208038, 28.781811, 44.978531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197666, 29.120323, 45.191372>,  <32.191444, 29.323431, 45.319077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197666, 29.120323, 45.191372>,  <32.208038, 28.781811, 44.978531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197666, 29.120323, 45.191372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369642, 0.486440, -0.791670,
		-0.928812, -0.217216, 0.300209,
		-0.025930, 0.846282, 0.532103,
		32.189888, 29.374208, 45.351002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528238, 29.043468, 44.904228>,  <32.208038, 28.781811, 44.978531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528238, 29.043468, 44.904228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759548, 29.352594, 45.008804>,  <31.898335, 29.538071, 45.071548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759548, 29.352594, 45.008804>,  <31.528238, 29.043468, 44.904228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759548, 29.352594, 45.008804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418100, 0.555899, -0.718449,
		-0.700563, 0.306154, 0.644578,
		0.578276, 0.772817, 0.261439,
		31.933031, 29.584440, 45.087234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076147, 29.703285, 45.054131>,  <31.528238, 29.043468, 44.904228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076147, 29.703285, 45.054131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437279, 29.855545, 44.974125>,  <31.653957, 29.946901, 44.926121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437279, 29.855545, 44.974125>,  <31.076147, 29.703285, 45.054131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437279, 29.855545, 44.974125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411500, 0.629868, -0.658737,
		-0.124767, 0.677032, 0.725301,
		0.902829, 0.380650, -0.200012,
		31.708128, 29.969740, 44.914120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045227, 30.430405, 45.132572>,  <31.076147, 29.703285, 45.054131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045227, 30.430405, 45.132572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344666, 30.334499, 44.885311>,  <31.524328, 30.276957, 44.736954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344666, 30.334499, 44.885311>,  <31.045227, 30.430405, 45.132572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344666, 30.334499, 44.885311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373587, 0.617702, -0.692009,
		0.547755, 0.748971, 0.372837,
		0.748597, -0.239765, -0.618155,
		31.569244, 30.262569, 44.699863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.283230, 25.762684, 47.999744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669979, 25.789633, 47.901257>,  <36.902027, 25.805803, 47.842163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669979, 25.789633, 47.901257>,  <36.283230, 25.762684, 47.999744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669979, 25.789633, 47.901257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253924, 0.154903, -0.954740,
		-0.026184, 0.985630, 0.166878,
		0.966870, 0.067373, -0.246219,
		36.960041, 25.809845, 47.827393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307949, 26.265997, 47.480824>,  <36.283230, 25.762684, 47.999744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307949, 26.265997, 47.480824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647331, 26.055008, 47.463394>,  <36.850960, 25.928415, 47.452938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647331, 26.055008, 47.463394>,  <36.307949, 26.265997, 47.480824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647331, 26.055008, 47.463394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020819, 0.115523, -0.993087,
		0.528860, 0.841681, 0.108998,
		0.848454, -0.527473, -0.043573,
		36.901867, 25.896767, 47.450321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746643, 26.580580, 47.002964>,  <36.307949, 26.265997, 47.480824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746643, 26.580580, 47.002964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.866638, 26.200232, 47.033566>,  <36.938637, 25.972023, 47.051926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.866638, 26.200232, 47.033566>,  <36.746643, 26.580580, 47.002964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866638, 26.200232, 47.033566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080610, -0.105177, -0.991181,
		0.950531, 0.291177, -0.108201,
		0.299989, -0.950870, 0.076502,
		36.956635, 25.914970, 47.056515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129795, 26.565166, 46.524265>,  <36.746643, 26.580580, 47.002964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129795, 26.565166, 46.524265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.075615, 26.175140, 46.594585>,  <37.043106, 25.941126, 46.636776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.075615, 26.175140, 46.594585>,  <37.129795, 26.565166, 46.524265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075615, 26.175140, 46.594585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046029, -0.171051, -0.984186,
		0.989715, -0.141400, -0.021713,
		-0.135450, -0.975063, 0.175800,
		37.034981, 25.882622, 46.647324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661106, 26.230089, 46.247543>,  <37.129795, 26.565166, 46.524265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661106, 26.230089, 46.247543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.358364, 25.969294, 46.265793>,  <37.176720, 25.812817, 46.276745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.358364, 25.969294, 46.265793>,  <37.661106, 26.230089, 46.247543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358364, 25.969294, 46.265793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002196, -0.072348, -0.997377,
		0.653581, -0.754768, 0.056188,
		-0.756853, -0.651990, 0.045628,
		37.131310, 25.773697, 46.279480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736851, 25.748636, 45.765545>,  <37.661106, 26.230089, 46.247543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736851, 25.748636, 45.765545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354286, 25.661793, 45.843655>,  <37.124748, 25.609688, 45.890522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354286, 25.661793, 45.843655>,  <37.736851, 25.748636, 45.765545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354286, 25.661793, 45.843655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137578, -0.254844, -0.957145,
		0.257569, -0.942294, 0.213867,
		-0.956415, -0.217108, 0.195279,
		37.067360, 25.596661, 45.902237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507351, 25.068459, 45.543320>,  <37.736851, 25.748636, 45.765545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507351, 25.068459, 45.543320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214428, 25.339806, 45.519493>,  <37.038673, 25.502613, 45.505196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214428, 25.339806, 45.519493>,  <37.507351, 25.068459, 45.543320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214428, 25.339806, 45.519493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036837, -0.126806, -0.991243,
		-0.679980, -0.723698, 0.117849,
		-0.732304, 0.678367, -0.059567,
		36.994736, 25.543316, 45.501621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120220, 24.852980, 44.944092>,  <37.507351, 25.068459, 45.543320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120220, 24.852980, 44.944092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936684, 25.199839, 45.021572>,  <36.826561, 25.407953, 45.068058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936684, 25.199839, 45.021572>,  <37.120220, 24.852980, 44.944092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936684, 25.199839, 45.021572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338749, 0.030810, -0.940372,
		-0.821409, -0.497099, 0.279608,
		-0.458843, 0.867147, 0.193699,
		36.799030, 25.459982, 45.079681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324116, 24.751329, 44.751003>,  <37.120220, 24.852980, 44.944092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324116, 24.751329, 44.751003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380016, 25.147245, 44.762196>,  <36.413555, 25.384796, 44.768909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380016, 25.147245, 44.762196>,  <36.324116, 24.751329, 44.751003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380016, 25.147245, 44.762196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396184, 0.081791, -0.914521,
		-0.907474, 0.116719, 0.403570,
		0.139750, 0.989792, 0.027981,
		36.421940, 25.444183, 44.770592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743145, 25.107595, 44.488663>,  <36.324116, 24.751329, 44.751003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743145, 25.107595, 44.488663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035103, 25.379110, 44.456413>,  <36.210278, 25.542019, 44.437065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035103, 25.379110, 44.456413>,  <35.743145, 25.107595, 44.488663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035103, 25.379110, 44.456413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255206, 0.161189, -0.953356,
		-0.634129, 0.716427, 0.290882,
		0.729897, 0.678786, -0.080622,
		36.254070, 25.582747, 44.432228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464714, 25.679131, 44.132683>,  <35.743145, 25.107595, 44.488663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464714, 25.679131, 44.132683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.856377, 25.732292, 44.071247>,  <36.091373, 25.764189, 44.034386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.856377, 25.732292, 44.071247>,  <35.464714, 25.679131, 44.132683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856377, 25.732292, 44.071247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165663, 0.085062, -0.982507,
		-0.117515, 0.987472, 0.105306,
		0.979156, 0.132905, -0.153591,
		36.150124, 25.772163, 44.025169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590282, 26.294180, 43.700245>,  <35.464714, 25.679131, 44.132683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590282, 26.294180, 43.700245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.907375, 26.053993, 43.658260>,  <36.097630, 25.909882, 43.633068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.907375, 26.053993, 43.658260>,  <35.590282, 26.294180, 43.700245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907375, 26.053993, 43.658260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045563, 0.230076, -0.972105,
		0.607865, 0.765837, 0.209748,
		0.792732, -0.600466, -0.104961,
		36.145195, 25.873854, 43.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474380, 27.087234, 43.760601>,  <35.590282, 26.294180, 43.700245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474380, 27.087234, 43.760601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137108, 26.896982, 43.660343>,  <34.934746, 26.782831, 43.600189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137108, 26.896982, 43.660343>,  <35.474380, 27.087234, 43.760601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137108, 26.896982, 43.660343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119076, -0.289410, 0.949770,
		-0.524276, 0.830674, 0.187389,
		-0.843182, -0.475628, -0.250644,
		34.884151, 26.754293, 43.585152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936546, 27.295307, 44.328281>,  <35.474380, 27.087234, 43.760601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936546, 27.295307, 44.328281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.800117, 26.951813, 44.175312>,  <34.718262, 26.745716, 44.083530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.800117, 26.951813, 44.175312>,  <34.936546, 27.295307, 44.328281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800117, 26.951813, 44.175312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247891, -0.310254, 0.917765,
		-0.906764, 0.407821, -0.107054,
		-0.341070, -0.858734, -0.382423,
		34.697796, 26.694193, 44.060585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288021, 27.250982, 44.525234>,  <34.936546, 27.295307, 44.328281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288021, 27.250982, 44.525234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.351170, 26.875114, 44.403843>,  <34.389061, 26.649593, 44.331009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.351170, 26.875114, 44.403843>,  <34.288021, 27.250982, 44.525234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351170, 26.875114, 44.403843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375142, -0.341368, 0.861821,
		-0.913424, -0.022212, -0.406402,
		0.157875, -0.939667, -0.303481,
		34.398533, 26.593214, 44.312798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648746, 26.869831, 44.746368>,  <34.288021, 27.250982, 44.525234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648746, 26.869831, 44.746368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.905834, 26.573946, 44.666634>,  <34.060089, 26.396416, 44.618793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.905834, 26.573946, 44.666634>,  <33.648746, 26.869831, 44.746368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905834, 26.573946, 44.666634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276589, -0.466697, 0.840055,
		-0.714428, -0.484788, -0.504552,
		0.642721, -0.739713, -0.199334,
		34.098652, 26.352032, 44.606834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304695, 26.267189, 44.594807>,  <33.648746, 26.869831, 44.746368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304695, 26.267189, 44.594807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659313, 26.146399, 44.735001>,  <33.872086, 26.073925, 44.819118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659313, 26.146399, 44.735001>,  <33.304695, 26.267189, 44.594807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659313, 26.146399, 44.735001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461269, -0.518811, 0.719768,
		-0.035515, -0.799779, -0.599243,
		0.886549, -0.301974, 0.350487,
		33.925278, 26.055805, 44.840145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261032, 25.619278, 44.859100>,  <33.304695, 26.267189, 44.594807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261032, 25.619278, 44.859100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605057, 25.701969, 45.045670>,  <33.811474, 25.751585, 45.157612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605057, 25.701969, 45.045670>,  <33.261032, 25.619278, 44.859100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605057, 25.701969, 45.045670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385163, -0.336435, 0.859337,
		0.334573, -0.918735, -0.209731,
		0.860064, 0.206730, 0.466425,
		33.863075, 25.763988, 45.185596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446247, 25.045107, 45.364632>,  <33.261032, 25.619278, 44.859100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446247, 25.045107, 45.364632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.651070, 25.362055, 45.497265>,  <33.773964, 25.552223, 45.576843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.651070, 25.362055, 45.497265>,  <33.446247, 25.045107, 45.364632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651070, 25.362055, 45.497265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387640, -0.131305, 0.912411,
		0.766506, -0.595741, 0.239919,
		0.512059, 0.792370, 0.331580,
		33.804688, 25.599766, 45.596737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828445, 24.834663, 45.966343>,  <33.446247, 25.045107, 45.364632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828445, 24.834663, 45.966343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776260, 25.230989, 45.980583>,  <33.744949, 25.468784, 45.989128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776260, 25.230989, 45.980583>,  <33.828445, 24.834663, 45.966343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776260, 25.230989, 45.980583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282256, -0.071543, 0.956668,
		0.950427, 0.114763, 0.288997,
		-0.130465, 0.990813, 0.035604,
		33.737122, 25.528233, 45.991264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221024, 24.945887, 46.508915>,  <33.828445, 24.834663, 45.966343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221024, 24.945887, 46.508915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990444, 25.271904, 46.485550>,  <33.852097, 25.467514, 46.471531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990444, 25.271904, 46.485550>,  <34.221024, 24.945887, 46.508915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990444, 25.271904, 46.485550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039683, 0.099326, 0.994263,
		0.816171, 0.570822, -0.089599,
		-0.576447, 0.815044, -0.058415,
		33.817509, 25.516417, 46.468025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496735, 25.346296, 47.021553>,  <34.221024, 24.945887, 46.508915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496735, 25.346296, 47.021553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122581, 25.478292, 46.970703>,  <33.898090, 25.557489, 46.940193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122581, 25.478292, 46.970703>,  <34.496735, 25.346296, 47.021553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122581, 25.478292, 46.970703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096239, 0.108384, 0.989440,
		0.340284, 0.937742, -0.069623,
		-0.935385, 0.329990, -0.127128,
		33.841965, 25.577290, 46.932564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443241, 26.019009, 47.369129>,  <34.496735, 25.346296, 47.021553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443241, 26.019009, 47.369129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.090611, 25.833958, 47.331600>,  <33.879032, 25.722927, 47.309082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.090611, 25.833958, 47.331600>,  <34.443241, 26.019009, 47.369129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090611, 25.833958, 47.331600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127200, 0.041411, 0.991012,
		-0.454586, 0.885584, -0.095353,
		-0.881573, -0.462629, -0.093821,
		33.826138, 25.695169, 47.303455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947132, 26.374321, 47.900364>,  <34.443241, 26.019009, 47.369129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947132, 26.374321, 47.900364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.716778, 26.057354, 47.819931>,  <33.578568, 25.867174, 47.771671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.716778, 26.057354, 47.819931>,  <33.947132, 26.374321, 47.900364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716778, 26.057354, 47.819931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297037, -0.026342, 0.954503,
		-0.761663, 0.609408, -0.220207,
		-0.575881, -0.792419, -0.201080,
		33.544014, 25.819628, 47.759605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326900, 26.455799, 48.311821>,  <33.947132, 26.374321, 47.900364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326900, 26.455799, 48.311821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325401, 26.066078, 48.221737>,  <33.324501, 25.832245, 48.167686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325401, 26.066078, 48.221737>,  <33.326900, 26.455799, 48.311821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325401, 26.066078, 48.221737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265477, -0.216161, 0.939572,
		-0.964110, 0.063312, -0.257845,
		-0.003750, -0.974303, -0.225210,
		33.324276, 25.773787, 48.154175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704544, 26.162357, 48.479637>,  <33.326900, 26.455799, 48.311821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704544, 26.162357, 48.479637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959671, 25.854311, 48.483879>,  <33.112747, 25.669483, 48.486423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959671, 25.854311, 48.483879>,  <32.704544, 26.162357, 48.479637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959671, 25.854311, 48.483879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302401, -0.237745, 0.923055,
		-0.708338, -0.591946, -0.384521,
		0.637817, -0.770115, 0.010601,
		33.151016, 25.623276, 48.487061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298237, 26.776606, 48.581635>,  <32.704544, 26.162357, 48.479637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298237, 26.776606, 48.581635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.420727, 27.088783, 48.799675>,  <32.494221, 27.276091, 48.930500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.420727, 27.088783, 48.799675>,  <32.298237, 26.776606, 48.581635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420727, 27.088783, 48.799675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170996, 0.608388, -0.774999,
		-0.936476, 0.144112, 0.319755,
		0.306222, 0.780446, 0.545099,
		32.512592, 27.322916, 48.963203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732218, 27.198776, 48.558289>,  <32.298237, 26.776606, 48.581635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732218, 27.198776, 48.558289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068352, 27.411272, 48.601410>,  <32.270031, 27.538771, 48.627281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068352, 27.411272, 48.601410>,  <31.732218, 27.198776, 48.558289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068352, 27.411272, 48.601410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222047, 0.518768, -0.825575,
		-0.494503, 0.669823, 0.553899,
		0.840334, 0.531241, 0.107801,
		32.320454, 27.570644, 48.633751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606224, 27.981340, 48.459091>,  <31.732218, 27.198776, 48.558289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606224, 27.981340, 48.459091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997807, 27.940798, 48.388248>,  <32.232758, 27.916473, 48.345741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997807, 27.940798, 48.388248>,  <31.606224, 27.981340, 48.459091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997807, 27.940798, 48.388248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062717, 0.676477, -0.733788,
		0.194185, 0.729456, 0.655886,
		0.978958, -0.101356, -0.177111,
		32.291492, 27.910391, 48.335114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675230, 28.604891, 48.192322>,  <31.606224, 27.981340, 48.459091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675230, 28.604891, 48.192322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.015457, 28.431112, 48.073803>,  <32.219593, 28.326845, 48.002689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.015457, 28.431112, 48.073803>,  <31.675230, 28.604891, 48.192322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015457, 28.431112, 48.073803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102416, 0.689517, -0.716992,
		0.515798, 0.579503, 0.630974,
		0.850566, -0.434445, -0.296301,
		32.270626, 28.300779, 47.984913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156284, 29.115681, 48.223595>,  <31.675230, 28.604891, 48.192322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156284, 29.115681, 48.223595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301483, 28.833801, 47.979748>,  <32.388603, 28.664675, 47.833439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301483, 28.833801, 47.979748>,  <32.156284, 29.115681, 48.223595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301483, 28.833801, 47.979748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255581, 0.704454, -0.662135,
		0.896054, 0.084545, 0.435820,
		0.362995, -0.704696, -0.609621,
		32.410381, 28.622393, 47.796860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688946, 29.460762, 47.862556>,  <32.156284, 29.115681, 48.223595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688946, 29.460762, 47.862556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606892, 29.141382, 47.636143>,  <32.557659, 28.949755, 47.500294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606892, 29.141382, 47.636143>,  <32.688946, 29.460762, 47.862556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606892, 29.141382, 47.636143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093773, 0.559642, -0.823412,
		0.974232, -0.221986, -0.039927,
		-0.205131, -0.798450, -0.566038,
		32.545353, 28.901848, 47.466331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087818, 29.473976, 47.237064>,  <32.688946, 29.460762, 47.862556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087818, 29.473976, 47.237064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797512, 29.216438, 47.140137>,  <32.623329, 29.061914, 47.081978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797512, 29.216438, 47.140137>,  <33.087818, 29.473976, 47.237064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797512, 29.216438, 47.140137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131378, 0.475481, -0.869861,
		0.675277, -0.599482, -0.429677,
		-0.725769, -0.643847, -0.242323,
		32.579781, 29.023285, 47.067440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885601, 29.405060, 47.015377>,  <33.087818, 29.473976, 47.237064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885601, 29.405060, 47.015377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.118267, 29.699198, 47.154480>,  <34.257866, 29.875681, 47.237942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.118267, 29.699198, 47.154480>,  <33.885601, 29.405060, 47.015377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118267, 29.699198, 47.154480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189797, -0.538411, 0.821030,
		0.790977, -0.411561, -0.452740,
		0.581664, 0.735344, 0.347757,
		34.292767, 29.919802, 47.258808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480347, 29.065332, 47.061493>,  <33.885601, 29.405060, 47.015377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480347, 29.065332, 47.061493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454525, 29.381960, 47.304558>,  <34.439034, 29.571936, 47.450397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454525, 29.381960, 47.304558>,  <34.480347, 29.065332, 47.061493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454525, 29.381960, 47.304558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298265, -0.565793, 0.768711,
		0.952298, 0.230866, -0.199574,
		-0.064552, 0.791568, 0.607662,
		34.435158, 29.619431, 47.486858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955021, 28.867420, 47.499649>,  <34.480347, 29.065332, 47.061493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955021, 28.867420, 47.499649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.783360, 29.161320, 47.709782>,  <34.680363, 29.337660, 47.835861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.783360, 29.161320, 47.709782>,  <34.955021, 28.867420, 47.499649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783360, 29.161320, 47.709782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340684, -0.406976, 0.847529,
		0.836516, 0.542694, -0.075661,
		-0.429157, 0.734748, 0.525329,
		34.654613, 29.381744, 47.867382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435028, 28.944855, 48.033924>,  <34.955021, 28.867420, 47.499649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435028, 28.944855, 48.033924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092598, 29.121561, 48.141243>,  <34.887138, 29.227585, 48.205635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092598, 29.121561, 48.141243>,  <35.435028, 28.944855, 48.033924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092598, 29.121561, 48.141243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170738, -0.248238, 0.953534,
		0.487837, 0.862104, 0.137084,
		-0.856074, 0.441764, 0.268294,
		34.835777, 29.254089, 48.221729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639874, 29.432327, 48.614491>,  <35.435028, 28.944855, 48.033924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639874, 29.432327, 48.614491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.255478, 29.323570, 48.634796>,  <35.024841, 29.258316, 48.646980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.255478, 29.323570, 48.634796>,  <35.639874, 29.432327, 48.614491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255478, 29.323570, 48.634796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190467, -0.517432, 0.834258,
		-0.200561, 0.811380, 0.549032,
		-0.960988, -0.271893, 0.050765,
		34.967182, 29.242002, 48.650024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418247, 29.548540, 49.403648>,  <35.639874, 29.432327, 48.614491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418247, 29.548540, 49.403648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.144207, 29.304586, 49.244312>,  <34.979782, 29.158215, 49.148708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.144207, 29.304586, 49.244312>,  <35.418247, 29.548540, 49.403648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144207, 29.304586, 49.244312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127831, -0.639010, 0.758502,
		-0.717143, 0.468731, 0.515750,
		-0.685102, -0.609883, -0.398343,
		34.938675, 29.121622, 49.124809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024796, 29.340218, 49.971214>,  <35.418247, 29.548540, 49.403648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024796, 29.340218, 49.971214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.936874, 29.075371, 49.684639>,  <34.884121, 28.916462, 49.512691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.936874, 29.075371, 49.684639>,  <35.024796, 29.340218, 49.971214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936874, 29.075371, 49.684639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033653, -0.739111, 0.672743,
		-0.974963, 0.123762, 0.184743,
		-0.219806, -0.662116, -0.716441,
		34.870934, 28.876736, 49.469707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515835, 28.962341, 50.266468>,  <35.024796, 29.340218, 49.971214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515835, 28.962341, 50.266468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659557, 28.729254, 49.974895>,  <34.745792, 28.589401, 49.799953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659557, 28.729254, 49.974895>,  <34.515835, 28.962341, 50.266468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659557, 28.729254, 49.974895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055615, -0.766332, 0.640033,
		-0.931560, -0.270510, -0.242943,
		0.359310, -0.582717, -0.728928,
		34.767349, 28.554440, 49.756218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150192, 28.323849, 50.353409>,  <34.515835, 28.962341, 50.266468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150192, 28.323849, 50.353409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480217, 28.229033, 50.148239>,  <34.678230, 28.172142, 50.025139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480217, 28.229033, 50.148239>,  <34.150192, 28.323849, 50.353409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480217, 28.229033, 50.148239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099632, -0.832500, 0.544993,
		-0.556193, -0.500755, -0.663245,
		0.825060, -0.237041, -0.512922,
		34.727734, 28.157921, 49.994362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.025833, 35.304440, 35.406132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273422, 34.994312, 35.355915>,  <35.421974, 34.808235, 35.325787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273422, 34.994312, 35.355915>,  <35.025833, 35.304440, 35.406132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273422, 34.994312, 35.355915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351934, -0.416681, 0.838164,
		-0.702155, -0.474614, -0.530773,
		0.618968, -0.775318, -0.125542,
		35.459114, 34.761719, 35.318253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633327, 34.693405, 35.442829>,  <35.025833, 35.304440, 35.406132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633327, 34.693405, 35.442829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007317, 34.598980, 35.548740>,  <35.231709, 34.542324, 35.612286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007317, 34.598980, 35.548740>,  <34.633327, 34.693405, 35.442829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007317, 34.598980, 35.548740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340203, -0.385340, 0.857773,
		-0.100459, -0.892070, -0.440590,
		0.934971, -0.236061, 0.264774,
		35.287807, 34.528160, 35.628174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578587, 34.081516, 35.646034>,  <34.633327, 34.693405, 35.442829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578587, 34.081516, 35.646034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921116, 34.185528, 35.824512>,  <35.126633, 34.247936, 35.931599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921116, 34.185528, 35.824512>,  <34.578587, 34.081516, 35.646034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921116, 34.185528, 35.824512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252590, -0.542711, 0.801039,
		0.450452, -0.798654, -0.399055,
		0.856324, 0.260032, 0.446197,
		35.178013, 34.263538, 35.958370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850216, 33.509037, 35.943581>,  <34.578587, 34.081516, 35.646034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850216, 33.509037, 35.943581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019382, 33.795139, 36.166130>,  <35.120884, 33.966801, 36.299660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019382, 33.795139, 36.166130>,  <34.850216, 33.509037, 35.943581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019382, 33.795139, 36.166130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278679, -0.481571, 0.830920,
		0.862251, -0.506463, -0.004340,
		0.422920, 0.715251, 0.556375,
		35.146259, 34.009716, 36.333042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192310, 33.134327, 36.500164>,  <34.850216, 33.509037, 35.943581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192310, 33.134327, 36.500164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158890, 33.508877, 36.636524>,  <35.138840, 33.733608, 36.718342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158890, 33.508877, 36.636524>,  <35.192310, 33.134327, 36.500164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158890, 33.508877, 36.636524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119694, -0.349052, 0.929428,
		0.989289, 0.036849, 0.141242,
		-0.083549, 0.936379, 0.340902,
		35.133823, 33.789791, 36.738796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525738, 33.136314, 37.143993>,  <35.192310, 33.134327, 36.500164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525738, 33.136314, 37.143993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347900, 33.493851, 37.167263>,  <35.241199, 33.708374, 37.181225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347900, 33.493851, 37.167263>,  <35.525738, 33.136314, 37.143993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347900, 33.493851, 37.167263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166716, -0.146387, 0.975078,
		0.880080, 0.423816, 0.214101,
		-0.444595, 0.893841, 0.058175,
		35.214523, 33.762001, 37.184715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837948, 33.461967, 37.728127>,  <35.525738, 33.136314, 37.143993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837948, 33.461967, 37.728127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479618, 33.624939, 37.657139>,  <35.264618, 33.722721, 37.614548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479618, 33.624939, 37.657139>,  <35.837948, 33.461967, 37.728127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479618, 33.624939, 37.657139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214826, -0.047434, 0.975500,
		0.389027, 0.912005, 0.130019,
		-0.895828, 0.407428, -0.177470,
		35.210869, 33.747166, 37.603897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754169, 34.229160, 38.106339>,  <35.837948, 33.461967, 37.728127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754169, 34.229160, 38.106339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419960, 34.017269, 38.047974>,  <35.219437, 33.890133, 38.012955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419960, 34.017269, 38.047974>,  <35.754169, 34.229160, 38.106339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419960, 34.017269, 38.047974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157610, -0.023340, 0.987226,
		-0.526371, 0.847844, -0.063990,
		-0.835519, -0.529732, -0.145914,
		35.169304, 33.858349, 38.004200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327602, 34.450855, 38.762356>,  <35.754169, 34.229160, 38.106339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327602, 34.450855, 38.762356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098110, 34.163479, 38.605042>,  <34.960415, 33.991055, 38.510654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098110, 34.163479, 38.605042>,  <35.327602, 34.450855, 38.762356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098110, 34.163479, 38.605042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188526, -0.351439, 0.917032,
		-0.797049, 0.600277, 0.066188,
		-0.573735, -0.718441, -0.393282,
		34.925991, 33.947945, 38.487057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658398, 34.566383, 39.045322>,  <35.327602, 34.450855, 38.762356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658398, 34.566383, 39.045322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684170, 34.187290, 38.920330>,  <34.699635, 33.959835, 38.845333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684170, 34.187290, 38.920330>,  <34.658398, 34.566383, 39.045322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684170, 34.187290, 38.920330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245179, -0.318569, 0.915643,
		-0.967335, 0.017620, -0.252890,
		0.064429, -0.947736, -0.312483,
		34.703499, 33.902969, 38.826584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003227, 34.225151, 39.213425>,  <34.658398, 34.566383, 39.045322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003227, 34.225151, 39.213425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275650, 33.935825, 39.167854>,  <34.439102, 33.762230, 39.140511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275650, 33.935825, 39.167854>,  <34.003227, 34.225151, 39.213425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275650, 33.935825, 39.167854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243070, -0.370090, 0.896633,
		-0.690713, -0.582963, -0.427867,
		0.681053, -0.723318, -0.113925,
		34.479965, 33.718830, 39.133678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617451, 33.517742, 39.342159>,  <34.003227, 34.225151, 39.213425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617451, 33.517742, 39.342159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007740, 33.443977, 39.389412>,  <34.241913, 33.399719, 39.417763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007740, 33.443977, 39.389412>,  <33.617451, 33.517742, 39.342159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007740, 33.443977, 39.389412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193224, -0.470976, 0.860725,
		-0.103089, -0.862656, -0.495175,
		0.975724, -0.184411, 0.118133,
		34.300457, 33.388653, 39.424850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271461, 32.934166, 39.029606>,  <33.617451, 33.517742, 39.342159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271461, 32.934166, 39.029606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896454, 32.950596, 39.167801>,  <32.671448, 32.960453, 39.250717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896454, 32.950596, 39.167801>,  <33.271461, 32.934166, 39.029606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896454, 32.950596, 39.167801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328537, 0.222340, -0.917948,
		-0.114518, -0.974104, -0.194955,
		-0.937523, 0.041071, 0.345491,
		32.615196, 32.962917, 39.271450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025005, 32.588757, 38.586475>,  <33.271461, 32.934166, 39.029606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025005, 32.588757, 38.586475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714024, 32.783958, 38.745174>,  <32.527435, 32.901081, 38.840393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714024, 32.783958, 38.745174>,  <33.025005, 32.588757, 38.586475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714024, 32.783958, 38.745174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324260, 0.229511, -0.917704,
		-0.538905, -0.842125, -0.020194,
		-0.777455, 0.488007, 0.396752,
		32.480785, 32.930359, 38.864201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416313, 32.373249, 38.176708>,  <33.025005, 32.588757, 38.586475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416313, 32.373249, 38.176708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351524, 32.732635, 38.339939>,  <32.312649, 32.948265, 38.437878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351524, 32.732635, 38.339939>,  <32.416313, 32.373249, 38.176708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351524, 32.732635, 38.339939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342102, 0.336766, -0.877243,
		-0.925597, -0.281695, 0.252819,
		-0.161974, 0.898464, 0.408078,
		32.302933, 33.002174, 38.462364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736975, 32.638630, 37.920300>,  <32.416313, 32.373249, 38.176708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736975, 32.638630, 37.920300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915455, 32.969109, 38.057880>,  <32.022541, 33.167397, 38.140430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915455, 32.969109, 38.057880>,  <31.736975, 32.638630, 37.920300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915455, 32.969109, 38.057880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257336, 0.486551, -0.834893,
		-0.857137, 0.284018, 0.429709,
		0.446200, 0.826198, 0.343953,
		32.049316, 33.216969, 38.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240219, 33.088642, 37.761353>,  <31.736975, 32.638630, 37.920300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240219, 33.088642, 37.761353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589861, 33.275726, 37.813797>,  <31.799646, 33.387978, 37.845264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589861, 33.275726, 37.813797>,  <31.240219, 33.088642, 37.761353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589861, 33.275726, 37.813797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153139, 0.521509, -0.839391,
		-0.460970, 0.713635, 0.527477,
		0.874103, 0.467711, 0.131115,
		31.852091, 33.416039, 37.853130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117361, 33.855350, 37.940956>,  <31.240219, 33.088642, 37.761353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117361, 33.855350, 37.940956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485546, 33.813786, 37.790249>,  <31.706457, 33.788845, 37.699825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485546, 33.813786, 37.790249>,  <31.117361, 33.855350, 37.940956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485546, 33.813786, 37.790249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248378, 0.588780, -0.769185,
		0.301760, 0.801586, 0.516140,
		0.920462, -0.103911, -0.376767,
		31.761684, 33.782612, 37.677219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127283, 34.451694, 37.562309>,  <31.117361, 33.855350, 37.940956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127283, 34.451694, 37.562309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432873, 34.238617, 37.416664>,  <31.616226, 34.110771, 37.329277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432873, 34.238617, 37.416664>,  <31.127283, 34.451694, 37.562309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432873, 34.238617, 37.416664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245359, 0.282077, -0.927487,
		0.596775, 0.797915, 0.084798,
		0.763975, -0.532695, -0.364112,
		31.662066, 34.078808, 37.307430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391018, 34.795799, 36.946148>,  <31.127283, 34.451694, 37.562309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391018, 34.795799, 36.946148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560759, 34.435085, 36.913368>,  <31.662603, 34.218658, 36.893700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560759, 34.435085, 36.913368>,  <31.391018, 34.795799, 36.946148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560759, 34.435085, 36.913368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135530, 0.152735, -0.978930,
		0.895298, 0.404303, 0.187032,
		0.424350, -0.901782, -0.081949,
		31.688065, 34.164551, 36.888783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078594, 34.877453, 36.560104>,  <31.391018, 34.795799, 36.946148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078594, 34.877453, 36.560104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949823, 34.503124, 36.502701>,  <31.872561, 34.278526, 36.468258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949823, 34.503124, 36.502701>,  <32.078594, 34.877453, 36.560104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949823, 34.503124, 36.502701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054067, 0.133164, -0.989618,
		0.945218, -0.326348, 0.007728,
		-0.321930, -0.935823, -0.143514,
		31.853245, 34.222378, 36.459648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205132, 34.727158, 35.942318>,  <32.078594, 34.877453, 36.560104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205132, 34.727158, 35.942318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014679, 34.376469, 35.969639>,  <31.900408, 34.166058, 35.986031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014679, 34.376469, 35.969639>,  <32.205132, 34.727158, 35.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014679, 34.376469, 35.969639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018470, -0.087627, -0.995982,
		0.879181, -0.472956, 0.057915,
		-0.476130, -0.876718, 0.068304,
		31.871840, 34.113453, 35.990131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569740, 34.231606, 35.620491>,  <32.205132, 34.727158, 35.942318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569740, 34.231606, 35.620491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192215, 34.099499, 35.615864>,  <31.965700, 34.020233, 35.613087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192215, 34.099499, 35.615864>,  <32.569740, 34.231606, 35.620491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192215, 34.099499, 35.615864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035526, -0.066586, -0.997148,
		0.328559, -0.941534, 0.074578,
		-0.943815, -0.330272, -0.011571,
		31.909071, 34.000416, 35.612392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502155, 33.558529, 35.188553>,  <32.569740, 34.231606, 35.620491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502155, 33.558529, 35.188553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158314, 33.759930, 35.223362>,  <31.952009, 33.880772, 35.244247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158314, 33.759930, 35.223362>,  <32.502155, 33.558529, 35.188553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158314, 33.759930, 35.223362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048592, 0.088977, -0.994848,
		-0.508651, -0.859400, -0.052018,
		-0.859600, 0.503503, 0.087018,
		31.900434, 33.910980, 35.249466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873920, 33.184235, 34.855114>,  <32.502155, 33.558529, 35.188553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873920, 33.184235, 34.855114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842405, 33.582649, 34.871586>,  <31.823496, 33.821697, 34.881470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842405, 33.582649, 34.871586>,  <31.873920, 33.184235, 34.855114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842405, 33.582649, 34.871586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074162, 0.035335, -0.996620,
		-0.994129, -0.081576, 0.071084,
		-0.078788, 0.996041, 0.041178,
		31.818769, 33.881462, 34.883938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465393, 32.774914, 34.737202>,  <31.873920, 33.184235, 34.855114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465393, 32.774914, 34.737202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564819, 32.445587, 34.941307>,  <32.624474, 32.247993, 35.063770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564819, 32.445587, 34.941307>,  <32.465393, 32.774914, 34.737202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564819, 32.445587, 34.941307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672258, -0.525897, -0.521058,
		0.697342, -0.213516, -0.684197,
		0.248562, -0.823313, 0.510267,
		32.639389, 32.198593, 35.094387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641987, 32.214611, 34.313362>,  <32.465393, 32.774914, 34.737202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641987, 32.214611, 34.313362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496735, 32.074074, 34.658546>,  <32.409584, 31.989752, 34.865658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496735, 32.074074, 34.658546>,  <32.641987, 32.214611, 34.313362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496735, 32.074074, 34.658546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695903, -0.513594, -0.501936,
		0.619562, -0.782802, -0.058001,
		-0.363128, -0.351343, 0.862958,
		32.387794, 31.968670, 34.917435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740314, 31.409912, 34.440861>,  <32.641987, 32.214611, 34.313362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740314, 31.409912, 34.440861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386917, 31.537664, 34.577938>,  <32.174877, 31.614317, 34.660183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386917, 31.537664, 34.577938>,  <32.740314, 31.409912, 34.440861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386917, 31.537664, 34.577938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465989, -0.674011, -0.573205,
		0.047905, -0.666112, 0.744312,
		-0.883493, 0.319382, 0.342690,
		32.121868, 31.633478, 34.680744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615101, 30.719265, 34.267597>,  <32.740314, 31.409912, 34.440861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615101, 30.719265, 34.267597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006016, 30.741041, 34.349514>,  <33.240566, 30.754107, 34.398666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006016, 30.741041, 34.349514>,  <32.615101, 30.719265, 34.267597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006016, 30.741041, 34.349514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154365, -0.479202, 0.864024,
		0.145179, -0.876015, -0.459915,
		0.977289, 0.054443, 0.204796,
		33.299202, 30.757374, 34.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805687, 30.268871, 34.801525>,  <32.615101, 30.719265, 34.267597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805687, 30.268871, 34.801525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154491, 30.464079, 34.816643>,  <33.363773, 30.581203, 34.825714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154491, 30.464079, 34.816643>,  <32.805687, 30.268871, 34.801525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154491, 30.464079, 34.816643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097335, -0.248565, 0.963712,
		0.479705, -0.836692, -0.264253,
		0.872014, 0.488019, 0.037798,
		33.416096, 30.610485, 34.827984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230103, 29.835012, 35.181461>,  <32.805687, 30.268871, 34.801525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230103, 29.835012, 35.181461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419907, 30.186174, 35.207142>,  <33.533787, 30.396872, 35.222549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419907, 30.186174, 35.207142>,  <33.230103, 29.835012, 35.181461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419907, 30.186174, 35.207142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070883, -0.110809, 0.991311,
		0.877393, -0.465834, -0.114809,
		0.474508, 0.877907, 0.064203,
		33.562260, 30.449547, 35.226402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803249, 29.692322, 35.491814>,  <33.230103, 29.835012, 35.181461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803249, 29.692322, 35.491814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719906, 30.080864, 35.537514>,  <33.669899, 30.313990, 35.564934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719906, 30.080864, 35.537514>,  <33.803249, 29.692322, 35.491814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719906, 30.080864, 35.537514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157869, -0.081884, 0.984059,
		0.965228, 0.223072, -0.136286,
		-0.208356, 0.971357, 0.114253,
		33.657398, 30.372271, 35.571789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362915, 29.922340, 36.020710>,  <33.803249, 29.692322, 35.491814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362915, 29.922340, 36.020710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073647, 30.197926, 36.040119>,  <33.900085, 30.363277, 36.051765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073647, 30.197926, 36.040119>,  <34.362915, 29.922340, 36.020710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073647, 30.197926, 36.040119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009750, -0.060066, 0.998147,
		0.690602, 0.722302, 0.036720,
		-0.723169, 0.688964, 0.048524,
		33.856697, 30.404615, 36.054676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538391, 30.424706, 36.513851>,  <34.362915, 29.922340, 36.020710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538391, 30.424706, 36.513851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140633, 30.466068, 36.505070>,  <33.901978, 30.490887, 36.499802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140633, 30.466068, 36.505070>,  <34.538391, 30.424706, 36.513851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140633, 30.466068, 36.505070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045700, -0.233286, 0.971334,
		0.095322, 0.966894, 0.236705,
		-0.994397, 0.103407, -0.021949,
		33.842312, 30.497091, 36.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377544, 30.552843, 37.271637>,  <34.538391, 30.424706, 36.513851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377544, 30.552843, 37.271637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017559, 30.509830, 37.102634>,  <33.801567, 30.484022, 37.001232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017559, 30.509830, 37.102634>,  <34.377544, 30.552843, 37.271637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017559, 30.509830, 37.102634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347961, -0.406722, 0.844689,
		-0.262674, 0.907201, 0.328616,
		-0.899959, -0.107532, -0.422506,
		33.747570, 30.477571, 36.975883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934196, 30.848610, 37.742966>,  <34.377544, 30.552843, 37.271637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934196, 30.848610, 37.742966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745781, 30.596888, 37.495708>,  <33.632732, 30.445854, 37.347355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745781, 30.596888, 37.495708>,  <33.934196, 30.848610, 37.742966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745781, 30.596888, 37.495708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569690, -0.317991, 0.757849,
		-0.673483, 0.709122, -0.208725,
		-0.471035, -0.629307, -0.618141,
		33.604469, 30.408096, 37.310265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283436, 30.973675, 37.854145>,  <33.934196, 30.848610, 37.742966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283436, 30.973675, 37.854145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330856, 30.605097, 37.706150>,  <33.359306, 30.383951, 37.617355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330856, 30.605097, 37.706150>,  <33.283436, 30.973675, 37.854145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330856, 30.605097, 37.706150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202458, -0.387217, 0.899486,
		-0.972089, -0.031725, -0.232457,
		0.118547, -0.921443, -0.369986,
		33.366421, 30.328665, 37.595154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860207, 30.531544, 38.358784>,  <33.283436, 30.973675, 37.854145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860207, 30.531544, 38.358784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065231, 30.264181, 38.143188>,  <33.188248, 30.103764, 38.013832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065231, 30.264181, 38.143188>,  <32.860207, 30.531544, 38.358784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065231, 30.264181, 38.143188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077009, -0.660975, 0.746446,
		-0.855189, -0.341094, -0.390265,
		0.512564, -0.668406, -0.538991,
		33.219002, 30.063660, 37.981491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494564, 29.949057, 38.428238>,  <32.860207, 30.531544, 38.358784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494564, 29.949057, 38.428238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865398, 29.825447, 38.343361>,  <33.087898, 29.751282, 38.292435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865398, 29.825447, 38.343361>,  <32.494564, 29.949057, 38.428238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865398, 29.825447, 38.343361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099882, -0.749223, 0.654743,
		-0.361308, -0.585806, -0.725457,
		0.927082, -0.309024, -0.212189,
		33.143524, 29.732740, 38.279705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427521, 29.236683, 38.327332>,  <32.494564, 29.949057, 38.428238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427521, 29.236683, 38.327332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810833, 29.272415, 38.435932>,  <33.040821, 29.293854, 38.501095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810833, 29.272415, 38.435932>,  <32.427521, 29.236683, 38.327332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810833, 29.272415, 38.435932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142366, -0.674511, 0.724407,
		0.247844, -0.732840, -0.633655,
		0.958282, 0.089329, 0.271505,
		33.098316, 29.299213, 38.517384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675148, 28.517557, 38.450649>,  <32.427521, 29.236683, 38.327332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675148, 28.517557, 38.450649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963055, 28.737900, 38.619648>,  <33.135799, 28.870106, 38.721046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963055, 28.737900, 38.619648>,  <32.675148, 28.517557, 38.450649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963055, 28.737900, 38.619648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153520, -0.719818, 0.676974,
		0.677032, -0.422400, -0.602665,
		0.719763, 0.550854, 0.422492,
		33.178986, 28.903156, 38.746395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200737, 28.072676, 38.516354>,  <32.675148, 28.517557, 38.450649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200737, 28.072676, 38.516354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263832, 28.364830, 38.782181>,  <33.301689, 28.540123, 38.941677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263832, 28.364830, 38.782181>,  <33.200737, 28.072676, 38.516354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263832, 28.364830, 38.782181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249331, -0.680649, 0.688877,
		0.955486, 0.057036, -0.289472,
		0.157737, 0.730386, 0.664571,
		33.311153, 28.583946, 38.981552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731537, 27.882511, 38.882267>,  <33.200737, 28.072676, 38.516354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731537, 27.882511, 38.882267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585369, 28.158884, 39.131775>,  <33.497669, 28.324707, 39.281479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585369, 28.158884, 39.131775>,  <33.731537, 27.882511, 38.882267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585369, 28.158884, 39.131775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273545, -0.560812, 0.781449,
		0.889743, 0.456184, 0.015930,
		-0.365418, 0.690932, 0.623765,
		33.475742, 28.366163, 39.318905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278027, 28.004076, 39.488976>,  <33.731537, 27.882511, 38.882267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278027, 28.004076, 39.488976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931110, 28.137535, 39.636757>,  <33.722961, 28.217609, 39.725426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931110, 28.137535, 39.636757>,  <34.278027, 28.004076, 39.488976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931110, 28.137535, 39.636757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168859, -0.500984, 0.848824,
		0.468296, 0.798559, 0.378157,
		-0.867286, 0.333646, 0.369453,
		33.670925, 28.237629, 39.747593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451458, 28.446699, 40.097279>,  <34.278027, 28.004076, 39.488976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451458, 28.446699, 40.097279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082989, 28.292000, 40.114529>,  <33.861908, 28.199181, 40.124878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082989, 28.292000, 40.114529>,  <34.451458, 28.446699, 40.097279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082989, 28.292000, 40.114529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262199, -0.534955, 0.803166,
		-0.287550, 0.751166, 0.594192,
		-0.921177, -0.386747, 0.043129,
		33.806637, 28.175976, 40.127468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227283, 28.613394, 40.752087>,  <34.451458, 28.446699, 40.097279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227283, 28.613394, 40.752087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982033, 28.314840, 40.648560>,  <33.834881, 28.135708, 40.586445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982033, 28.314840, 40.648560>,  <34.227283, 28.613394, 40.752087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982033, 28.314840, 40.648560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082644, -0.386424, 0.918611,
		-0.785649, 0.541837, 0.298611,
		-0.613128, -0.746384, -0.258814,
		33.798096, 28.090925, 40.570915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685528, 28.602402, 41.305386>,  <34.227283, 28.613394, 40.752087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685528, 28.602402, 41.305386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724415, 28.261633, 41.099560>,  <33.747749, 28.057171, 40.976063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724415, 28.261633, 41.099560>,  <33.685528, 28.602402, 41.305386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724415, 28.261633, 41.099560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091076, -0.507229, 0.856986,
		-0.991087, -0.130181, 0.028276,
		0.097221, -0.851922, -0.514564,
		33.753582, 28.006056, 40.945190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364376, 28.144745, 41.719692>,  <33.685528, 28.602402, 41.305386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364376, 28.144745, 41.719692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554260, 27.914049, 41.453754>,  <33.668190, 27.775633, 41.294189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554260, 27.914049, 41.453754>,  <33.364376, 28.144745, 41.719692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554260, 27.914049, 41.453754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236355, -0.644105, 0.727505,
		-0.847812, -0.502495, -0.169449,
		0.474711, -0.576738, -0.664848,
		33.696674, 27.741028, 41.254299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113766, 27.535334, 41.902710>,  <33.364376, 28.144745, 41.719692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113766, 27.535334, 41.902710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456295, 27.476442, 41.704704>,  <33.661812, 27.441109, 41.585903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456295, 27.476442, 41.704704>,  <33.113766, 27.535334, 41.902710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456295, 27.476442, 41.704704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343535, -0.553295, 0.758847,
		-0.385608, -0.819872, -0.423222,
		0.856323, -0.147225, -0.495010,
		33.713192, 27.432274, 41.556202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187103, 26.768322, 41.838455>,  <33.113766, 27.535334, 41.902710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187103, 26.768322, 41.838455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533894, 26.964241, 41.801689>,  <33.741966, 27.081793, 41.779629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533894, 26.964241, 41.801689>,  <33.187103, 26.768322, 41.838455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533894, 26.964241, 41.801689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396665, -0.566586, 0.722244,
		0.301676, -0.662629, -0.685503,
		0.866977, 0.489798, -0.091916,
		33.793987, 27.111181, 41.774113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693249, 26.280994, 41.764442>,  <33.187103, 26.768322, 41.838455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693249, 26.280994, 41.764442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868687, 26.614330, 41.899010>,  <33.973949, 26.814331, 41.979748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868687, 26.614330, 41.899010>,  <33.693249, 26.280994, 41.764442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868687, 26.614330, 41.899010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407731, -0.518120, 0.751869,
		0.800867, -0.192601, -0.567025,
		0.438598, 0.833341, 0.336416,
		34.000267, 26.864332, 41.999935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293411, 25.971088, 41.974552>,  <33.693249, 26.280994, 41.764442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293411, 25.971088, 41.974552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266914, 26.336018, 42.136181>,  <34.251015, 26.554976, 42.233158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266914, 26.336018, 42.136181>,  <34.293411, 25.971088, 41.974552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266914, 26.336018, 42.136181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391593, -0.348703, 0.851505,
		0.917751, 0.214640, -0.334161,
		-0.066244, 0.912325, 0.404074,
		34.247040, 26.609715, 42.257404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870285, 25.940395, 42.292706>,  <34.293411, 25.971088, 41.974552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870285, 25.940395, 42.292706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713776, 26.271669, 42.453213>,  <34.619869, 26.470434, 42.549519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713776, 26.271669, 42.453213>,  <34.870285, 25.940395, 42.292706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713776, 26.271669, 42.453213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460291, -0.201457, 0.864608,
		0.796893, 0.522999, -0.302380,
		-0.391273, 0.828183, 0.401272,
		34.596394, 26.520124, 42.573593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386620, 26.311621, 42.727432>,  <34.870285, 25.940395, 42.292706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386620, 26.311621, 42.727432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040638, 26.446232, 42.876354>,  <34.833050, 26.526999, 42.965706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040638, 26.446232, 42.876354>,  <35.386620, 26.311621, 42.727432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040638, 26.446232, 42.876354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257590, -0.338967, 0.904847,
		0.430706, 0.878549, 0.206503,
		-0.864951, 0.336530, 0.372300,
		34.781151, 26.547192, 42.988045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983349, 26.646963, 43.091034>,  <35.386620, 26.311621, 42.727432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983349, 26.646963, 43.091034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144295, 26.281843, 43.119015>,  <36.240864, 26.062771, 43.135803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144295, 26.281843, 43.119015>,  <35.983349, 26.646963, 43.091034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144295, 26.281843, 43.119015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245122, 0.033795, -0.968903,
		0.882051, 0.407005, 0.237346,
		0.402369, -0.912801, 0.069957,
		36.265007, 26.008003, 43.140003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641685, 26.750118, 43.049553>,  <35.983349, 26.646963, 43.091034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641685, 26.750118, 43.049553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587460, 26.374460, 42.923298>,  <36.554924, 26.149065, 42.847546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587460, 26.374460, 42.923298>,  <36.641685, 26.750118, 43.049553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587460, 26.374460, 42.923298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417269, 0.234832, -0.877918,
		0.898615, -0.250719, 0.360042,
		-0.135561, -0.939145, -0.315641,
		36.546791, 26.092716, 42.828606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270622, 26.490005, 42.699009>,  <36.641685, 26.750118, 43.049553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270622, 26.490005, 42.699009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985699, 26.238649, 42.573959>,  <36.814743, 26.087835, 42.498928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985699, 26.238649, 42.573959>,  <37.270622, 26.490005, 42.699009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985699, 26.238649, 42.573959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273132, 0.162131, -0.948215,
		0.646536, -0.760814, 0.056145,
		-0.712313, -0.628391, -0.312626,
		36.772003, 26.050133, 42.480171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608067, 25.996769, 42.215836>,  <37.270622, 26.490005, 42.699009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608067, 25.996769, 42.215836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215691, 25.984207, 42.139133>,  <36.980267, 25.976669, 42.093113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215691, 25.984207, 42.139133>,  <37.608067, 25.996769, 42.215836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215691, 25.984207, 42.139133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182724, 0.186581, -0.965298,
		0.066091, -0.981937, -0.177287,
		-0.980940, -0.031403, -0.191754,
		36.921410, 25.974787, 42.081608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593880, 25.679916, 41.609875>,  <37.608067, 25.996769, 42.215836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593880, 25.679916, 41.609875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227585, 25.836065, 41.647888>,  <37.007809, 25.929754, 41.670696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227585, 25.836065, 41.647888>,  <37.593880, 25.679916, 41.609875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227585, 25.836065, 41.647888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039675, 0.147509, -0.988265,
		-0.399810, -0.908763, -0.119591,
		-0.915739, 0.390374, 0.095030,
		36.952862, 25.953176, 41.676395>
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
