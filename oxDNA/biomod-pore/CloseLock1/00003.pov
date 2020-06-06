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
	<24.298714, 34.541267, 35.123363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258663, 34.936623, 35.169098>,  <24.234632, 35.173836, 35.196537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258663, 34.936623, 35.169098>,  <24.298714, 34.541267, 35.123363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258663, 34.936623, 35.169098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379272, -0.068320, 0.922760,
		0.919852, 0.135754, -0.368026,
		-0.100125, 0.988384, 0.114332,
		24.228626, 35.233139, 35.203396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846991, 34.682411, 35.548100>,  <24.298714, 34.541267, 35.123363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846991, 34.682411, 35.548100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565315, 34.965820, 35.566463>,  <24.396311, 35.135868, 35.577480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565315, 34.965820, 35.566463>,  <24.846991, 34.682411, 35.548100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565315, 34.965820, 35.566463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144753, 0.079962, 0.986231,
		0.695101, 0.701139, -0.158870,
		-0.704189, 0.708527, 0.045910,
		24.354059, 35.178379, 35.580238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091402, 35.372005, 35.760242>,  <24.846991, 34.682411, 35.548100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091402, 35.372005, 35.760242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714869, 35.306896, 35.878494>,  <24.488949, 35.267830, 35.949444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714869, 35.306896, 35.878494>,  <25.091402, 35.372005, 35.760242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714869, 35.306896, 35.878494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286418, 0.077949, 0.954929,
		-0.178480, 0.983580, -0.026755,
		-0.941334, -0.162772, 0.295627,
		24.432468, 35.258064, 35.967182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815861, 35.465218, 35.975330>,  <25.091402, 35.372005, 35.760242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815861, 35.465218, 35.975330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164244, 35.378918, 35.798744>,  <26.373274, 35.327137, 35.692795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164244, 35.378918, 35.798744>,  <25.815861, 35.465218, 35.975330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164244, 35.378918, 35.798744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081301, -0.949335, 0.303567,
		-0.484590, -0.228502, -0.844369,
		0.870955, -0.215753, -0.441461,
		26.425529, 35.314190, 35.666306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726925, 34.891830, 35.500298>,  <25.815861, 35.465218, 35.975330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726925, 34.891830, 35.500298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080162, 34.916851, 35.686302>,  <26.292105, 34.931862, 35.797905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080162, 34.916851, 35.686302>,  <25.726925, 34.891830, 35.500298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080162, 34.916851, 35.686302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154998, -0.896546, 0.414946,
		0.442860, -0.438512, -0.782038,
		0.883092, 0.062549, 0.465012,
		26.345089, 34.935616, 35.825806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036919, 34.248569, 35.411461>,  <25.726925, 34.891830, 35.500298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036919, 34.248569, 35.411461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219423, 34.406296, 35.730545>,  <26.328926, 34.500931, 35.921997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219423, 34.406296, 35.730545>,  <26.036919, 34.248569, 35.411461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219423, 34.406296, 35.730545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038662, -0.886830, 0.460477,
		0.889006, -0.240939, -0.389380,
		0.456261, 0.394312, 0.797712,
		26.356302, 34.524590, 35.969860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435709, 33.770817, 35.538486>,  <26.036919, 34.248569, 35.411461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435709, 33.770817, 35.538486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442739, 33.974354, 35.882759>,  <26.446959, 34.096474, 36.089321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442739, 33.974354, 35.882759>,  <26.435709, 33.770817, 35.538486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442739, 33.974354, 35.882759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064696, -0.859590, 0.506872,
		0.997750, 0.046773, -0.048030,
		0.017578, 0.508839, 0.860683,
		26.448013, 34.127007, 36.140965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995321, 33.551582, 35.922600>,  <26.435709, 33.770817, 35.538486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995321, 33.551582, 35.922600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742142, 33.705322, 36.191418>,  <26.590235, 33.797565, 36.352711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742142, 33.705322, 36.191418>,  <26.995321, 33.551582, 35.922600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742142, 33.705322, 36.191418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084058, -0.897047, 0.433867,
		0.769617, 0.218124, 0.600093,
		-0.632948, 0.384354, 0.672048,
		26.552258, 33.820629, 36.393032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145763, 33.267090, 36.628605>,  <26.995321, 33.551582, 35.922600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145763, 33.267090, 36.628605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770882, 33.403992, 36.655457>,  <26.545952, 33.486134, 36.671570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770882, 33.403992, 36.655457>,  <27.145763, 33.267090, 36.628605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770882, 33.403992, 36.655457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302110, -0.892807, 0.334103,
		0.174286, 0.292841, 0.940143,
		-0.937206, 0.342256, 0.067133,
		26.489719, 33.506668, 36.675598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962448, 33.016647, 37.258366>,  <27.145763, 33.267090, 36.628605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962448, 33.016647, 37.258366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631741, 33.077797, 37.041817>,  <26.433315, 33.114487, 36.911888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631741, 33.077797, 37.041817>,  <26.962448, 33.016647, 37.258366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631741, 33.077797, 37.041817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437298, -0.780041, 0.447557,
		-0.353870, 0.606766, 0.711766,
		-0.826769, 0.152877, -0.541371,
		26.383711, 33.123661, 36.879406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345507, 33.249187, 37.713268>,  <26.962448, 33.016647, 37.258366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345507, 33.249187, 37.713268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046991, 33.177551, 37.456837>,  <25.867882, 33.134571, 37.302979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046991, 33.177551, 37.456837>,  <26.345507, 33.249187, 37.713268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046991, 33.177551, 37.456837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244448, -0.822085, 0.514219,
		-0.619111, 0.540466, 0.569734,
		-0.746288, -0.179088, -0.641078,
		25.823105, 33.123825, 37.264515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706402, 33.245293, 38.113865>,  <26.345507, 33.249187, 37.713268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706402, 33.245293, 38.113865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700880, 33.012249, 37.788811>,  <25.697567, 32.872425, 37.593777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700880, 33.012249, 37.788811>,  <25.706402, 33.245293, 38.113865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700880, 33.012249, 37.788811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286445, -0.776349, 0.561454,
		-0.957997, 0.240526, -0.156168,
		-0.013803, -0.582605, -0.812638,
		25.696739, 32.837467, 37.545021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054209, 32.815010, 38.182190>,  <25.706402, 33.245293, 38.113865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054209, 32.815010, 38.182190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260843, 32.628948, 37.894642>,  <25.384825, 32.517311, 37.722115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260843, 32.628948, 37.894642>,  <25.054209, 32.815010, 38.182190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260843, 32.628948, 37.894642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238501, -0.884511, 0.400947,
		-0.822348, -0.035673, -0.567865,
		0.516586, -0.465154, -0.718868,
		25.415819, 32.489403, 37.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594259, 32.354279, 37.819397>,  <25.054209, 32.815010, 38.182190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594259, 32.354279, 37.819397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968754, 32.219841, 37.778404>,  <25.193451, 32.139179, 37.753811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968754, 32.219841, 37.778404>,  <24.594259, 32.354279, 37.819397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968754, 32.219841, 37.778404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276556, -0.884757, 0.375129,
		-0.216749, -0.322868, -0.921291,
		0.936235, -0.336097, -0.102480,
		25.249624, 32.119011, 37.747662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620420, 31.711502, 37.535992>,  <24.594259, 32.354279, 37.819397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620420, 31.711502, 37.535992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981203, 31.726364, 37.708080>,  <25.197674, 31.735281, 37.811333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981203, 31.726364, 37.708080>,  <24.620420, 31.711502, 37.535992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981203, 31.726364, 37.708080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110313, -0.943410, 0.312744,
		0.417496, -0.329541, -0.846817,
		0.901958, 0.037154, 0.430223,
		25.251791, 31.737511, 37.837147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796278, 31.018457, 37.503883>,  <24.620420, 31.711502, 37.535992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796278, 31.018457, 37.503883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057417, 31.162134, 37.770649>,  <25.214100, 31.248341, 37.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057417, 31.162134, 37.770649>,  <24.796278, 31.018457, 37.503883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057417, 31.162134, 37.770649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161051, -0.926114, 0.341138,
		0.740171, -0.115303, -0.662458,
		0.652847, 0.359190, 0.666914,
		25.253271, 31.269892, 37.970722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288975, 30.496078, 37.355453>,  <24.796278, 31.018457, 37.503883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288975, 30.496078, 37.355453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401287, 30.657976, 37.703556>,  <25.468676, 30.755114, 37.912418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401287, 30.657976, 37.703556>,  <25.288975, 30.496078, 37.355453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401287, 30.657976, 37.703556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196749, -0.911749, 0.360561,
		0.939389, 0.069983, -0.335635,
		0.280782, 0.404743, 0.870256,
		25.485521, 30.779400, 37.964634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859877, 30.016907, 37.624092>,  <25.288975, 30.496078, 37.355453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859877, 30.016907, 37.624092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718710, 30.218357, 37.939510>,  <25.634010, 30.339228, 38.128761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718710, 30.218357, 37.939510>,  <25.859877, 30.016907, 37.624092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718710, 30.218357, 37.939510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199865, -0.782747, 0.589373,
		0.914059, 0.365602, 0.175586,
		-0.352916, 0.503628, 0.788549,
		25.612835, 30.369446, 38.176075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342623, 29.871061, 38.087715>,  <25.859877, 30.016907, 37.624092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342623, 29.871061, 38.087715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039886, 30.005960, 38.311665>,  <25.858246, 30.086899, 38.446033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039886, 30.005960, 38.311665>,  <26.342623, 29.871061, 38.087715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039886, 30.005960, 38.311665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301028, -0.580481, 0.756587,
		0.580152, 0.741153, 0.337810,
		-0.756839, 0.337246, 0.559875,
		25.812836, 30.107134, 38.479626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673357, 29.942080, 38.791100>,  <26.342623, 29.871061, 38.087715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673357, 29.942080, 38.791100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283239, 29.906178, 38.871841>,  <26.049168, 29.884636, 38.920284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283239, 29.906178, 38.871841>,  <26.673357, 29.942080, 38.791100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283239, 29.906178, 38.871841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194929, -0.779575, 0.595202,
		0.103935, 0.619844, 0.777812,
		-0.975295, -0.089756, 0.201851,
		25.990650, 29.879251, 38.932396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610950, 30.050743, 39.522964>,  <26.673357, 29.942080, 38.791100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610950, 30.050743, 39.522964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300179, 29.840523, 39.384296>,  <26.113716, 29.714390, 39.301098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300179, 29.840523, 39.384296>,  <26.610950, 30.050743, 39.522964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300179, 29.840523, 39.384296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216682, -0.740192, 0.636526,
		-0.591127, 0.419419, 0.688953,
		-0.776929, -0.525551, -0.346667,
		26.067101, 29.682858, 39.280296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629948, 29.642925, 40.020271>,  <26.610950, 30.050743, 39.522964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629948, 29.642925, 40.020271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345690, 29.477129, 39.792877>,  <26.175135, 29.377651, 39.656441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345690, 29.477129, 39.792877>,  <26.629948, 29.642925, 40.020271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345690, 29.477129, 39.792877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118237, -0.866899, 0.484259,
		-0.693543, 0.276921, 0.665066,
		-0.710647, -0.414489, -0.568489,
		26.132496, 29.352781, 39.622330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155260, 29.457207, 40.446621>,  <26.629948, 29.642925, 40.020271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155260, 29.457207, 40.446621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150953, 29.221996, 40.123112>,  <26.148369, 29.080870, 39.929008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150953, 29.221996, 40.123112>,  <26.155260, 29.457207, 40.446621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150953, 29.221996, 40.123112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143952, -0.801304, 0.580680,
		-0.989526, -0.110172, 0.093275,
		-0.010767, -0.588026, -0.808771,
		26.147724, 29.045589, 39.880482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735476, 29.036690, 40.682781>,  <26.155260, 29.457207, 40.446621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735476, 29.036690, 40.682781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910627, 28.848995, 40.376038>,  <26.015718, 28.736378, 40.191990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910627, 28.848995, 40.376038>,  <25.735476, 29.036690, 40.682781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910627, 28.848995, 40.376038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104605, -0.820601, 0.561847,
		-0.892928, -0.326239, -0.310239,
		0.437878, -0.469236, -0.766864,
		26.041990, 28.708225, 40.145977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390997, 28.428196, 40.695259>,  <25.735476, 29.036690, 40.682781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390997, 28.428196, 40.695259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744900, 28.389727, 40.512848>,  <25.957241, 28.366646, 40.403400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744900, 28.389727, 40.512848>,  <25.390997, 28.428196, 40.695259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744900, 28.389727, 40.512848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207303, -0.795142, 0.569890,
		-0.417412, -0.598749, -0.683569,
		0.884756, -0.096173, -0.456024,
		26.010326, 28.360874, 40.376041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540504, 28.262875, 41.419693>,  <25.390997, 28.428196, 40.695259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540504, 28.262875, 41.419693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786779, 28.177513, 41.116276>,  <25.934546, 28.126295, 40.934227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786779, 28.177513, 41.116276>,  <25.540504, 28.262875, 41.419693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786779, 28.177513, 41.116276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414170, -0.731296, 0.541912,
		-0.670364, -0.647815, -0.361867,
		0.615691, -0.213404, -0.758540,
		25.971487, 28.113491, 40.888714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580500, 27.458200, 41.237213>,  <25.540504, 28.262875, 41.419693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580500, 27.458200, 41.237213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890980, 27.692238, 41.143253>,  <26.077267, 27.832661, 41.086876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890980, 27.692238, 41.143253>,  <25.580500, 27.458200, 41.237213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890980, 27.692238, 41.143253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533106, -0.410137, 0.739990,
		0.336622, -0.699607, -0.630266,
		0.776198, 0.585095, -0.234904,
		26.123838, 27.867767, 41.072781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155813, 27.106575, 40.941471>,  <25.580500, 27.458200, 41.237213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155813, 27.106575, 40.941471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288239, 27.422878, 41.147423>,  <26.367695, 27.612659, 41.270992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288239, 27.422878, 41.147423>,  <26.155813, 27.106575, 40.941471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288239, 27.422878, 41.147423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513522, -0.608756, 0.604741,
		0.791638, 0.064193, -0.607609,
		0.331065, 0.790756, 0.514879,
		26.387558, 27.660105, 41.301888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922544, 27.029514, 41.032486>,  <26.155813, 27.106575, 40.941471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922544, 27.029514, 41.032486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763609, 27.261362, 41.317066>,  <26.668247, 27.400471, 41.487816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763609, 27.261362, 41.317066>,  <26.922544, 27.029514, 41.032486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763609, 27.261362, 41.317066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532552, -0.485726, 0.693151,
		0.747334, 0.654301, -0.115679,
		-0.397341, 0.579621, 0.711449,
		26.644407, 27.435249, 41.530502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147282, 27.782785, 40.933331>,  <26.922544, 27.029514, 41.032486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147282, 27.782785, 40.933331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275799, 28.160898, 40.956009>,  <27.352909, 28.387766, 40.969616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275799, 28.160898, 40.956009>,  <27.147282, 27.782785, 40.933331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275799, 28.160898, 40.956009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261268, -0.146031, 0.954156,
		0.910225, -0.291751, -0.293890,
		0.321294, 0.945281, 0.056696,
		27.372187, 28.444483, 40.973019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907095, 27.939653, 41.138748>,  <27.147282, 27.782785, 40.933331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907095, 27.939653, 41.138748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636076, 28.199760, 41.276199>,  <27.473465, 28.355825, 41.358669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636076, 28.199760, 41.276199>,  <27.907095, 27.939653, 41.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636076, 28.199760, 41.276199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234195, -0.252145, 0.938923,
		0.697195, 0.716642, 0.018551,
		-0.677549, 0.650268, 0.343628,
		27.432812, 28.394840, 41.379288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110559, 28.310114, 41.761425>,  <27.907095, 27.939653, 41.138748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110559, 28.310114, 41.761425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489077, 28.201157, 41.831089>,  <28.716187, 28.135782, 41.872887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489077, 28.201157, 41.831089>,  <28.110559, 28.310114, 41.761425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489077, 28.201157, 41.831089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221795, -0.154989, 0.962697,
		-0.235239, -0.949621, -0.207080,
		0.946293, -0.272393, 0.174162,
		28.772964, 28.119438, 41.883339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797077, 28.716179, 41.676632>,  <28.110559, 28.310114, 41.761425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797077, 28.716179, 41.676632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601469, 28.465023, 41.434437>,  <28.484104, 28.314329, 41.289120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601469, 28.465023, 41.434437>,  <28.797077, 28.716179, 41.676632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601469, 28.465023, 41.434437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679159, -0.161511, 0.716001,
		-0.547361, 0.761361, -0.347454,
		-0.489018, -0.627888, -0.605490,
		28.454763, 28.276657, 41.252789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103045, 28.145866, 41.253967>,  <28.797077, 28.716179, 41.676632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103045, 28.145866, 41.253967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133495, 27.952618, 40.905071>,  <29.151766, 27.836668, 40.695736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133495, 27.952618, 40.905071>,  <29.103045, 28.145866, 41.253967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133495, 27.952618, 40.905071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209757, 0.862959, -0.459677,
		0.974785, -0.147963, 0.167035,
		0.076129, -0.483124, -0.872236,
		29.156334, 27.807680, 40.643402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681374, 28.367140, 40.938995>,  <29.103045, 28.145866, 41.253967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681374, 28.367140, 40.938995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463326, 28.226681, 40.634487>,  <29.332497, 28.142405, 40.451782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463326, 28.226681, 40.634487>,  <29.681374, 28.367140, 40.938995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463326, 28.226681, 40.634487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201624, 0.826490, -0.525607,
		0.813748, -0.440013, -0.379740,
		-0.545125, -0.351147, -0.761272,
		29.299789, 28.121336, 40.406105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100618, 28.454582, 40.305851>,  <29.681374, 28.367140, 40.938995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100618, 28.454582, 40.305851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707550, 28.455612, 40.231712>,  <29.471710, 28.456230, 40.187229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707550, 28.455612, 40.231712>,  <30.100618, 28.454582, 40.305851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707550, 28.455612, 40.231712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147886, 0.613771, -0.775510,
		0.111765, -0.789480, -0.603515,
		-0.982669, 0.002577, -0.185351,
		29.412750, 28.456385, 40.176105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968792, 28.345602, 39.526310>,  <30.100618, 28.454582, 40.305851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968792, 28.345602, 39.526310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634670, 28.529844, 39.646385>,  <29.434196, 28.640388, 39.718430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634670, 28.529844, 39.646385>,  <29.968792, 28.345602, 39.526310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634670, 28.529844, 39.646385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008328, 0.556542, -0.830778,
		-0.549726, -0.691451, -0.468717,
		-0.835303, 0.460604, 0.300187,
		29.384079, 28.668026, 39.736443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428375, 28.280710, 39.017502>,  <29.968792, 28.345602, 39.526310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428375, 28.280710, 39.017502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339108, 28.614319, 39.219334>,  <29.285547, 28.814484, 39.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339108, 28.614319, 39.219334>,  <29.428375, 28.280710, 39.017502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339108, 28.614319, 39.219334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135673, 0.486021, -0.863352,
		-0.965292, -0.261130, 0.004690,
		-0.223168, 0.834023, 0.504581,
		29.272158, 28.864525, 39.370708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120628, 28.687016, 38.590488>,  <29.428375, 28.280710, 39.017502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120628, 28.687016, 38.590488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117355, 28.985346, 38.856922>,  <29.115393, 29.164345, 39.016785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117355, 28.985346, 38.856922>,  <29.120628, 28.687016, 38.590488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117355, 28.985346, 38.856922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238636, 0.645409, -0.725604,
		-0.971075, -0.164888, 0.172701,
		-0.008181, 0.745828, 0.666088,
		29.114901, 29.209095, 39.056747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530993, 29.111576, 38.375965>,  <29.120628, 28.687016, 38.590488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530993, 29.111576, 38.375965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773592, 29.327522, 38.609444>,  <28.919151, 29.457090, 38.749531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773592, 29.327522, 38.609444>,  <28.530993, 29.111576, 38.375965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773592, 29.327522, 38.609444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177087, 0.807417, -0.562777,
		-0.775112, 0.237958, 0.585301,
		0.606499, 0.539864, 0.583700,
		28.955542, 29.489481, 38.784554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243666, 29.775276, 38.392918>,  <28.530993, 29.111576, 38.375965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243666, 29.775276, 38.392918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608696, 29.883415, 38.515633>,  <28.827713, 29.948299, 38.589260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608696, 29.883415, 38.515633>,  <28.243666, 29.775276, 38.392918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608696, 29.883415, 38.515633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108943, 0.883885, -0.454840,
		-0.394132, 0.381653, 0.836063,
		0.912574, 0.270350, 0.306789,
		28.882469, 29.964520, 38.607670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217060, 30.508430, 38.466282>,  <28.243666, 29.775276, 38.392918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217060, 30.508430, 38.466282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606808, 30.418465, 38.468124>,  <28.840656, 30.364485, 38.469231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606808, 30.418465, 38.468124>,  <28.217060, 30.508430, 38.466282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606808, 30.418465, 38.468124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198310, 0.849085, -0.489621,
		0.106213, 0.477984, 0.871924,
		0.974367, -0.224916, 0.004605,
		28.899118, 30.350990, 38.469505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605272, 31.143871, 38.751167>,  <28.217060, 30.508430, 38.466282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605272, 31.143871, 38.751167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867582, 30.906183, 38.564892>,  <29.024969, 30.763571, 38.453129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867582, 30.906183, 38.564892>,  <28.605272, 31.143871, 38.751167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867582, 30.906183, 38.564892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392120, 0.795198, -0.462496,
		0.645135, 0.120690, 0.754477,
		0.655777, -0.594218, -0.465685,
		29.064316, 30.727919, 38.425186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297083, 31.357332, 38.841888>,  <28.605272, 31.143871, 38.751167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297083, 31.357332, 38.841888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277555, 31.163660, 38.492447>,  <29.265839, 31.047457, 38.282784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277555, 31.163660, 38.492447>,  <29.297083, 31.357332, 38.841888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277555, 31.163660, 38.492447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215360, 0.848971, -0.482564,
		0.975313, -0.211699, 0.062827,
		-0.048820, -0.484182, -0.873604,
		29.262909, 31.018406, 38.230366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729095, 31.636179, 38.524860>,  <29.297083, 31.357332, 38.841888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729095, 31.636179, 38.524860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508261, 31.463612, 38.239464>,  <29.375759, 31.360071, 38.068226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508261, 31.463612, 38.239464>,  <29.729095, 31.636179, 38.524860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508261, 31.463612, 38.239464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085932, 0.821732, -0.563358,
		0.829346, -0.372335, -0.416595,
		-0.552087, -0.431421, -0.713496,
		29.342634, 31.334185, 38.025414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849976, 31.911173, 37.960056>,  <29.729095, 31.636179, 38.524860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849976, 31.911173, 37.960056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517317, 31.752480, 37.804638>,  <29.317722, 31.657263, 37.711388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517317, 31.752480, 37.804638>,  <29.849976, 31.911173, 37.960056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517317, 31.752480, 37.804638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216003, 0.875709, -0.431830,
		0.511574, -0.275203, -0.813975,
		-0.831646, -0.396734, -0.388546,
		29.267822, 31.633459, 37.688076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840498, 32.205006, 37.364639>,  <29.849976, 31.911173, 37.960056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840498, 32.205006, 37.364639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459648, 32.082829, 37.359505>,  <29.231138, 32.009521, 37.356422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459648, 32.082829, 37.359505>,  <29.840498, 32.205006, 37.364639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459648, 32.082829, 37.359505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271113, 0.863009, -0.426279,
		0.141283, -0.402390, -0.904501,
		-0.952122, -0.305447, -0.012835,
		29.174011, 31.991194, 37.355656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566969, 32.209038, 36.596344>,  <29.840498, 32.205006, 37.364639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566969, 32.209038, 36.596344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265543, 32.234612, 36.858047>,  <29.084688, 32.249958, 37.015068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265543, 32.234612, 36.858047>,  <29.566969, 32.209038, 36.596344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265543, 32.234612, 36.858047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261605, 0.883888, -0.387690,
		-0.603079, -0.463307, -0.649340,
		-0.753564, 0.063937, 0.654258,
		29.039474, 32.253792, 37.054325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143454, 32.646221, 36.273964>,  <29.566969, 32.209038, 36.596344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143454, 32.646221, 36.273964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995602, 32.650970, 36.645607>,  <28.906891, 32.653820, 36.868591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995602, 32.650970, 36.645607>,  <29.143454, 32.646221, 36.273964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995602, 32.650970, 36.645607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191947, 0.977375, -0.088854,
		-0.909138, -0.211181, -0.358986,
		-0.369628, 0.011875, 0.929104,
		28.884714, 32.654533, 36.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489231, 32.964458, 36.271912>,  <29.143454, 32.646221, 36.273964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489231, 32.964458, 36.271912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604847, 32.998508, 36.653320>,  <28.674217, 33.018940, 36.882168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604847, 32.998508, 36.653320>,  <28.489231, 32.964458, 36.271912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604847, 32.998508, 36.653320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217928, 0.975738, -0.021049,
		-0.932182, -0.201716, 0.300578,
		0.289039, 0.085126, 0.953525,
		28.691559, 33.024048, 36.939377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009872, 33.386375, 36.532906>,  <28.489231, 32.964458, 36.271912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009872, 33.386375, 36.532906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290941, 33.410145, 36.816517>,  <28.459581, 33.424408, 36.986683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290941, 33.410145, 36.816517>,  <28.009872, 33.386375, 36.532906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290941, 33.410145, 36.816517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053389, 0.998100, -0.030745,
		-0.709510, -0.016251, 0.704508,
		0.702670, 0.059426, 0.709030,
		28.501741, 33.427971, 37.029224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712149, 33.810089, 36.969173>,  <28.009872, 33.386375, 36.532906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712149, 33.810089, 36.969173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109411, 33.829720, 37.011570>,  <28.347769, 33.841496, 37.037010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109411, 33.829720, 37.011570>,  <27.712149, 33.810089, 36.969173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109411, 33.829720, 37.011570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058363, 0.994550, 0.086390,
		-0.101179, -0.091985, 0.990607,
		0.993155, 0.049073, 0.105996,
		28.407358, 33.844440, 37.043369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826073, 34.166000, 37.554359>,  <27.712149, 33.810089, 36.969173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826073, 34.166000, 37.554359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170504, 34.206104, 37.354965>,  <28.377163, 34.230167, 37.235329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170504, 34.206104, 37.354965>,  <27.826073, 34.166000, 37.554359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170504, 34.206104, 37.354965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039381, 0.990572, 0.131213,
		0.506945, -0.093354, 0.856909,
		0.861079, 0.100263, -0.498489,
		28.428827, 34.236183, 37.205418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243715, 34.476219, 37.959129>,  <27.826073, 34.166000, 37.554359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243715, 34.476219, 37.959129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377476, 34.563789, 37.592468>,  <28.457733, 34.616329, 37.372471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377476, 34.563789, 37.592468>,  <28.243715, 34.476219, 37.959129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377476, 34.563789, 37.592468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238994, 0.921151, 0.307186,
		0.911623, -0.321797, 0.255714,
		0.334403, 0.218923, -0.916650,
		28.477797, 34.629467, 37.317474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783052, 34.915924, 38.169594>,  <28.243715, 34.476219, 37.959129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783052, 34.915924, 38.169594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720747, 34.958717, 37.776802>,  <28.683363, 34.984394, 37.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720747, 34.958717, 37.776802>,  <28.783052, 34.915924, 38.169594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720747, 34.958717, 37.776802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222599, 0.972349, 0.070626,
		0.962386, -0.207587, -0.175273,
		-0.155766, 0.106985, -0.981983,
		28.674017, 34.990814, 37.482208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311337, 35.278122, 37.984524>,  <28.783052, 34.915924, 38.169594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311337, 35.278122, 37.984524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024954, 35.335152, 37.711151>,  <28.853125, 35.369370, 37.547127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024954, 35.335152, 37.711151>,  <29.311337, 35.278122, 37.984524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024954, 35.335152, 37.711151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178849, 0.983714, 0.017860,
		0.674847, -0.109444, -0.729797,
		-0.715957, 0.142576, -0.683431,
		28.810167, 35.377926, 37.506123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580200, 35.640003, 37.364765>,  <29.311337, 35.278122, 37.984524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580200, 35.640003, 37.364765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190563, 35.716461, 37.413105>,  <28.956781, 35.762337, 37.442108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190563, 35.716461, 37.413105>,  <29.580200, 35.640003, 37.364765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190563, 35.716461, 37.413105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207600, 0.967758, 0.142639,
		-0.089692, 0.164032, -0.982369,
		-0.974093, 0.191147, 0.120853,
		28.898335, 35.773804, 37.449360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340912, 35.545265, 37.499622>,  <29.580200, 35.640003, 37.364765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340912, 35.545265, 37.499622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489733, 35.701435, 37.162777>,  <30.579025, 35.795135, 36.960670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489733, 35.701435, 37.162777>,  <30.340912, 35.545265, 37.499622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489733, 35.701435, 37.162777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707096, 0.468525, 0.529622,
		0.601326, -0.792498, -0.101752,
		0.372051, 0.390424, -0.842109,
		30.601349, 35.818562, 36.910145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149559, 35.506176, 37.611866>,  <30.340912, 35.545265, 37.499622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149559, 35.506176, 37.611866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311911, 35.636120, 37.270168>,  <31.409323, 35.714085, 37.065151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311911, 35.636120, 37.270168>,  <31.149559, 35.506176, 37.611866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311911, 35.636120, 37.270168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890543, 0.069502, 0.449559,
		0.205414, -0.943206, -0.261089,
		0.405881, 0.324856, -0.854242,
		31.433674, 35.733578, 37.013897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757742, 35.118557, 37.398724>,  <31.149559, 35.506176, 37.611866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757742, 35.118557, 37.398724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746544, 35.504723, 37.295036>,  <31.739826, 35.736423, 37.232826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746544, 35.504723, 37.295036>,  <31.757742, 35.118557, 37.398724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746544, 35.504723, 37.295036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902204, 0.136056, 0.409289,
		0.430401, -0.222407, -0.874808,
		-0.027994, 0.965414, -0.259215,
		31.738146, 35.794346, 37.217270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254021, 35.393101, 36.905106>,  <31.757742, 35.118557, 37.398724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254021, 35.393101, 36.905106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150635, 35.705696, 37.132252>,  <32.088604, 35.893253, 37.268539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150635, 35.705696, 37.132252>,  <32.254021, 35.393101, 36.905106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150635, 35.705696, 37.132252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958811, 0.135851, 0.249453,
		0.117799, 0.608953, -0.784411,
		-0.258468, 0.781487, 0.567867,
		32.073093, 35.940144, 37.302612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620377, 35.995655, 36.738899>,  <32.254021, 35.393101, 36.905106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620377, 35.995655, 36.738899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520622, 36.000755, 37.126228>,  <32.460770, 36.003815, 37.358624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520622, 36.000755, 37.126228>,  <32.620377, 35.995655, 36.738899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520622, 36.000755, 37.126228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957548, 0.152551, 0.244603,
		-0.144600, 0.988213, -0.050251,
		-0.249386, 0.012749, 0.968320,
		32.445808, 36.004581, 37.416725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915897, 36.670868, 37.179966>,  <32.620377, 35.995655, 36.738899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915897, 36.670868, 37.179966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888126, 36.310650, 37.351639>,  <32.871464, 36.094517, 37.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888126, 36.310650, 37.351639>,  <32.915897, 36.670868, 37.179966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888126, 36.310650, 37.351639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933684, 0.092845, 0.345853,
		-0.351304, 0.424727, 0.834381,
		-0.069425, -0.900548, 0.429178,
		32.867298, 36.040485, 37.480392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488354, 36.710346, 37.622780>,  <32.915897, 36.670868, 37.179966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488354, 36.710346, 37.622780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415874, 36.317036, 37.615452>,  <33.372387, 36.081051, 37.611053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415874, 36.317036, 37.615452>,  <33.488354, 36.710346, 37.622780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415874, 36.317036, 37.615452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826944, -0.162417, 0.538317,
		-0.532290, 0.082392, 0.842543,
		-0.181196, -0.983276, -0.018319,
		33.361515, 36.022053, 37.609955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247654, 36.372925, 38.343399>,  <33.488354, 36.710346, 37.622780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247654, 36.372925, 38.343399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435406, 36.111435, 38.105972>,  <33.548058, 35.954540, 37.963516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435406, 36.111435, 38.105972>,  <33.247654, 36.372925, 38.343399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435406, 36.111435, 38.105972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776626, -0.014230, 0.629801,
		-0.420165, -0.756597, 0.501022,
		0.469376, -0.653727, -0.593571,
		33.576218, 35.915318, 37.927902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504684, 36.048409, 38.927784>,  <33.247654, 36.372925, 38.343399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504684, 36.048409, 38.927784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699635, 35.910637, 38.606827>,  <33.816605, 35.827972, 38.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699635, 35.910637, 38.606827>,  <33.504684, 36.048409, 38.927784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699635, 35.910637, 38.606827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734979, -0.334334, 0.589938,
		-0.471460, -0.877262, 0.090203,
		0.487372, -0.344430, -0.802394,
		33.845844, 35.807308, 38.366108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867146, 35.464634, 39.254883>,  <33.504684, 36.048409, 38.927784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867146, 35.464634, 39.254883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057159, 35.556038, 38.914970>,  <34.171169, 35.610878, 38.711025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057159, 35.556038, 38.914970>,  <33.867146, 35.464634, 39.254883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057159, 35.556038, 38.914970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878790, -0.173095, 0.444710,
		-0.045474, -0.958031, -0.283036,
		0.475038, 0.228506, -0.849779,
		34.199669, 35.624588, 38.660038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361584, 34.902412, 39.240799>,  <33.867146, 35.464634, 39.254883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361584, 34.902412, 39.240799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494179, 35.185860, 38.991646>,  <34.573734, 35.355927, 38.842155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494179, 35.185860, 38.991646>,  <34.361584, 34.902412, 39.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494179, 35.185860, 38.991646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848260, 0.065161, 0.525555,
		0.413004, -0.702581, -0.579490,
		0.331485, 0.708614, -0.622883,
		34.593624, 35.398445, 38.804779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019634, 34.730183, 39.012173>,  <34.361584, 34.902412, 39.240799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019634, 34.730183, 39.012173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978344, 35.125435, 38.966671>,  <34.953571, 35.362587, 38.939369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978344, 35.125435, 38.966671>,  <35.019634, 34.730183, 39.012173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978344, 35.125435, 38.966671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729122, 0.152956, 0.667072,
		0.676554, -0.014083, -0.736258,
		-0.103221, 0.988133, -0.113752,
		34.947376, 35.421875, 38.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653141, 34.928535, 38.913326>,  <35.019634, 34.730183, 39.012173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653141, 34.928535, 38.913326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465252, 35.265697, 39.018299>,  <35.352516, 35.467995, 39.081284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465252, 35.265697, 39.018299>,  <35.653141, 34.928535, 38.913326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465252, 35.265697, 39.018299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701180, 0.175600, 0.691022,
		0.536381, 0.508605, -0.673511,
		-0.469725, 0.842903, 0.262436,
		35.324333, 35.518570, 39.097031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232063, 35.473614, 38.979599>,  <35.653141, 34.928535, 38.913326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232063, 35.473614, 38.979599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908558, 35.577400, 39.190720>,  <35.714455, 35.639671, 39.317390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908558, 35.577400, 39.190720>,  <36.232063, 35.473614, 38.979599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908558, 35.577400, 39.190720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567780, 0.110438, 0.815739,
		0.153366, 0.959417, -0.236638,
		-0.808768, 0.259465, 0.527800,
		35.665928, 35.655239, 39.349060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460861, 36.009491, 39.520733>,  <36.232063, 35.473614, 38.979599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460861, 36.009491, 39.520733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120621, 35.874783, 39.682255>,  <35.916477, 35.793957, 39.779167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120621, 35.874783, 39.682255>,  <36.460861, 36.009491, 39.520733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120621, 35.874783, 39.682255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398200, 0.088948, 0.912976,
		-0.343380, 0.937377, 0.058442,
		-0.850604, -0.336769, 0.403806,
		35.865440, 35.773750, 39.803398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524857, 36.256348, 40.155293>,  <36.460861, 36.009491, 39.520733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524857, 36.256348, 40.155293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198833, 36.029346, 40.201984>,  <36.003220, 35.893147, 40.230000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198833, 36.029346, 40.201984>,  <36.524857, 36.256348, 40.155293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198833, 36.029346, 40.201984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119355, 0.032688, 0.992313,
		-0.566954, 0.822724, 0.041091,
		-0.815057, -0.567501, 0.116729,
		35.954315, 35.859097, 40.237003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152508, 36.570854, 40.772953>,  <36.524857, 36.256348, 40.155293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152508, 36.570854, 40.772953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048874, 36.192020, 40.697166>,  <35.986694, 35.964718, 40.651695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048874, 36.192020, 40.697166>,  <36.152508, 36.570854, 40.772953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048874, 36.192020, 40.697166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142786, -0.231566, 0.962283,
		-0.955242, 0.222261, 0.195226,
		-0.259086, -0.947089, -0.189465,
		35.971149, 35.907894, 40.640327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685490, 36.485790, 41.319580>,  <36.152508, 36.570854, 40.772953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685490, 36.485790, 41.319580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808117, 36.130512, 41.182690>,  <35.881695, 35.917343, 41.100555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808117, 36.130512, 41.182690>,  <35.685490, 36.485790, 41.319580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808117, 36.130512, 41.182690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116619, -0.321783, 0.939604,
		-0.944676, -0.327967, 0.004931,
		0.306572, -0.888197, -0.342228,
		35.900089, 35.864052, 41.080021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315468, 35.887108, 41.748726>,  <35.685490, 36.485790, 41.319580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315468, 35.887108, 41.748726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620922, 35.686153, 41.586506>,  <35.804195, 35.565578, 41.489174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620922, 35.686153, 41.586506>,  <35.315468, 35.887108, 41.748726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620922, 35.686153, 41.586506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134824, -0.490198, 0.861120,
		-0.631419, -0.712256, -0.306596,
		0.763631, -0.502391, -0.405550,
		35.850010, 35.535435, 41.464840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206089, 35.103737, 41.805046>,  <35.315468, 35.887108, 41.748726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206089, 35.103737, 41.805046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598122, 35.182655, 41.795998>,  <35.833340, 35.230007, 41.790569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598122, 35.182655, 41.795998>,  <35.206089, 35.103737, 41.805046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598122, 35.182655, 41.795998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163832, -0.738911, 0.653583,
		0.112235, -0.644271, -0.756517,
		0.980083, 0.197296, -0.022621,
		35.892147, 35.241844, 41.789211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507088, 34.396484, 41.831120>,  <35.206089, 35.103737, 41.805046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507088, 34.396484, 41.831120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806458, 34.634518, 41.948242>,  <35.986080, 34.777336, 42.018517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806458, 34.634518, 41.948242>,  <35.507088, 34.396484, 41.831120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806458, 34.634518, 41.948242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322115, -0.712085, 0.623841,
		0.579739, -0.372582, -0.724628,
		0.748428, 0.595079, 0.292809,
		36.030987, 34.813042, 42.036083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134739, 33.967403, 41.774273>,  <35.507088, 34.396484, 41.831120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134739, 33.967403, 41.774273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186726, 34.285831, 42.010708>,  <36.217918, 34.476887, 42.152569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186726, 34.285831, 42.010708>,  <36.134739, 33.967403, 41.774273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186726, 34.285831, 42.010708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317252, -0.598194, 0.735877,
		0.939393, 0.091885, -0.330299,
		0.129966, 0.796066, 0.591090,
		36.225716, 34.524651, 42.188034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850510, 33.997822, 41.968742>,  <36.134739, 33.967403, 41.774273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850510, 33.997822, 41.968742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610794, 34.177959, 42.233482>,  <36.466965, 34.286041, 42.392326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610794, 34.177959, 42.233482>,  <36.850510, 33.997822, 41.968742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610794, 34.177959, 42.233482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262121, -0.670801, 0.693772,
		0.756403, 0.589255, 0.283960,
		-0.599289, 0.450339, 0.661851,
		36.431007, 34.313061, 42.432037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106815, 33.742165, 42.629112>,  <36.850510, 33.997822, 41.968742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106815, 33.742165, 42.629112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779942, 33.918709, 42.777386>,  <36.583817, 34.024635, 42.866352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779942, 33.918709, 42.777386>,  <37.106815, 33.742165, 42.629112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779942, 33.918709, 42.777386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069472, -0.563020, 0.823518,
		0.572174, 0.698718, 0.429430,
		-0.817185, 0.441362, 0.370687,
		36.534786, 34.051117, 42.888592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248619, 33.962811, 43.258953>,  <37.106815, 33.742165, 42.629112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248619, 33.962811, 43.258953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849499, 33.940735, 43.273670>,  <36.610027, 33.927490, 43.282501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849499, 33.940735, 43.273670>,  <37.248619, 33.962811, 43.258953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849499, 33.940735, 43.273670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055934, -0.401852, 0.913995,
		-0.035656, 0.914040, 0.404053,
		-0.997797, -0.055190, 0.036797,
		36.550159, 33.924179, 43.284710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102299, 34.078354, 43.962753>,  <37.248619, 33.962811, 43.258953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102299, 34.078354, 43.962753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764809, 33.914627, 43.823845>,  <36.562317, 33.816391, 43.740501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764809, 33.914627, 43.823845>,  <37.102299, 34.078354, 43.962753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764809, 33.914627, 43.823845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078909, -0.545341, 0.834492,
		-0.530950, 0.731481, 0.427817,
		-0.843721, -0.409315, -0.347269,
		36.511692, 33.791832, 43.719666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649559, 34.013706, 44.547840>,  <37.102299, 34.078354, 43.962753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649559, 34.013706, 44.547840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527241, 33.738525, 44.284565>,  <36.453850, 33.573418, 44.126598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527241, 33.738525, 44.284565>,  <36.649559, 34.013706, 44.547840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527241, 33.738525, 44.284565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098592, -0.664704, 0.740572,
		-0.946979, 0.291356, 0.135437,
		-0.305796, -0.687953, -0.658186,
		36.435501, 33.532139, 44.087109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999111, 33.844997, 44.847942>,  <36.649559, 34.013706, 44.547840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999111, 33.844997, 44.847942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128479, 33.567997, 44.589996>,  <36.206100, 33.401798, 44.435230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128479, 33.567997, 44.589996>,  <35.999111, 33.844997, 44.847942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128479, 33.567997, 44.589996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103886, -0.703353, 0.703208,
		-0.940535, -0.160440, -0.299420,
		0.323421, -0.692498, -0.644861,
		36.225506, 33.360249, 44.396538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340973, 33.434013, 45.000496>,  <35.999111, 33.844997, 44.847942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340973, 33.434013, 45.000496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615719, 33.186790, 44.847538>,  <35.780567, 33.038456, 44.755764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615719, 33.186790, 44.847538>,  <35.340973, 33.434013, 45.000496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615719, 33.186790, 44.847538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145102, -0.632170, 0.761122,
		-0.712158, -0.467297, -0.523893,
		0.686860, -0.618057, -0.382399,
		35.821777, 33.001373, 44.732819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070423, 32.757927, 45.193089>,  <35.340973, 33.434013, 45.000496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070423, 32.757927, 45.193089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459351, 32.711266, 45.112103>,  <35.692707, 32.683270, 45.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459351, 32.711266, 45.112103>,  <35.070423, 32.757927, 45.193089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459351, 32.711266, 45.112103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106064, -0.551725, 0.827254,
		-0.208209, -0.825827, -0.524079,
		0.972317, -0.116656, -0.202464,
		35.751045, 32.676270, 45.051365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095142, 32.051044, 45.149448>,  <35.070423, 32.757927, 45.193089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095142, 32.051044, 45.149448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454041, 32.205612, 45.234882>,  <35.669380, 32.298355, 45.286144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454041, 32.205612, 45.234882>,  <35.095142, 32.051044, 45.149448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454041, 32.205612, 45.234882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163806, -0.740567, 0.651711,
		0.410013, -0.549761, -0.727772,
		0.897250, 0.386424, 0.213588,
		35.723217, 32.321541, 45.298958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454033, 31.432795, 45.231499>,  <35.095142, 32.051044, 45.149448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454033, 31.432795, 45.231499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706661, 31.708342, 45.373806>,  <35.858238, 31.873671, 45.459190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706661, 31.708342, 45.373806>,  <35.454033, 31.432795, 45.231499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706661, 31.708342, 45.373806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243984, -0.612150, 0.752159,
		0.735924, -0.388243, -0.554692,
		0.631575, 0.688868, 0.355771,
		35.896133, 31.915003, 45.480537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127739, 31.179398, 45.226177>,  <35.454033, 31.432795, 45.231499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127739, 31.179398, 45.226177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122292, 31.475712, 45.494820>,  <36.119022, 31.653500, 45.656006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122292, 31.475712, 45.494820>,  <36.127739, 31.179398, 45.226177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122292, 31.475712, 45.494820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350021, -0.625639, 0.697181,
		0.936643, 0.244569, -0.250772,
		-0.013616, 0.740785, 0.671604,
		36.118206, 31.697947, 45.696301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740387, 31.003754, 45.571556>,  <36.127739, 31.179398, 45.226177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740387, 31.003754, 45.571556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511726, 31.239120, 45.800285>,  <36.374531, 31.380341, 45.937523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511726, 31.239120, 45.800285>,  <36.740387, 31.003754, 45.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511726, 31.239120, 45.800285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331390, -0.471971, 0.816960,
		0.750599, 0.656510, 0.074805,
		-0.571649, 0.588419, 0.571822,
		36.340233, 31.415646, 45.971832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136768, 31.036507, 46.128986>,  <36.740387, 31.003754, 45.571556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136768, 31.036507, 46.128986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792210, 31.180330, 46.272488>,  <36.585472, 31.266624, 46.358589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792210, 31.180330, 46.272488>,  <37.136768, 31.036507, 46.128986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792210, 31.180330, 46.272488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063140, -0.625032, 0.778042,
		0.503986, 0.692858, 0.515700,
		-0.861401, 0.359561, 0.358755,
		36.533791, 31.288198, 46.380116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264839, 31.246527, 46.927898>,  <37.136768, 31.036507, 46.128986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264839, 31.246527, 46.927898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878902, 31.190353, 46.839027>,  <36.647339, 31.156651, 46.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878902, 31.190353, 46.839027>,  <37.264839, 31.246527, 46.927898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878902, 31.190353, 46.839027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064056, -0.694182, 0.716944,
		-0.254912, 0.705968, 0.660779,
		-0.964840, -0.140431, -0.222176,
		36.589451, 31.148224, 46.772373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948936, 31.364853, 47.581364>,  <37.264839, 31.246527, 46.927898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948936, 31.364853, 47.581364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675213, 31.147112, 47.387291>,  <36.510979, 31.016468, 47.270847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675213, 31.147112, 47.387291>,  <36.948936, 31.364853, 47.581364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675213, 31.147112, 47.387291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013453, -0.674681, 0.737987,
		-0.729066, 0.498486, 0.469015,
		-0.684312, -0.544350, -0.485181,
		36.469921, 30.983807, 47.241737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525127, 31.066711, 48.080959>,  <36.948936, 31.364853, 47.581364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525127, 31.066711, 48.080959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507668, 30.847286, 47.746971>,  <36.497192, 30.715631, 47.546577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507668, 30.847286, 47.746971>,  <36.525127, 31.066711, 48.080959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507668, 30.847286, 47.746971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020153, -0.836078, 0.548240,
		-0.998844, 0.007101, 0.047546,
		-0.043646, -0.548564, -0.834969,
		36.494576, 30.682716, 47.496479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016850, 30.562513, 48.242523>,  <36.525127, 31.066711, 48.080959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016850, 30.562513, 48.242523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261894, 30.439713, 47.951195>,  <36.408920, 30.366032, 47.776398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261894, 30.439713, 47.951195>,  <36.016850, 30.562513, 48.242523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261894, 30.439713, 47.951195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120104, -0.874622, 0.469692,
		-0.781205, -0.375213, -0.498932,
		0.612612, -0.307003, -0.728324,
		36.445679, 30.347612, 47.732697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809498, 29.910275, 48.087597>,  <36.016850, 30.562513, 48.242523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809498, 29.910275, 48.087597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162979, 29.931164, 47.901550>,  <36.375069, 29.943697, 47.789921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162979, 29.931164, 47.901550>,  <35.809498, 29.910275, 48.087597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162979, 29.931164, 47.901550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238203, -0.905612, 0.350894,
		-0.402890, -0.420880, -0.812736,
		0.883707, 0.052224, -0.465116,
		36.428093, 29.946831, 47.762016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908493, 29.276192, 47.780476>,  <35.809498, 29.910275, 48.087597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908493, 29.276192, 47.780476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283970, 29.414085, 47.778965>,  <36.509254, 29.496822, 47.778057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283970, 29.414085, 47.778965>,  <35.908493, 29.276192, 47.780476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283970, 29.414085, 47.778965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334521, -0.908124, 0.251808,
		0.083376, -0.237634, -0.967770,
		0.938693, 0.344734, -0.003778,
		36.565578, 29.517506, 47.777832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309528, 28.849575, 47.354721>,  <35.908493, 29.276192, 47.780476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309528, 28.849575, 47.354721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586136, 29.027515, 47.582375>,  <36.752102, 29.134279, 47.718967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586136, 29.027515, 47.582375>,  <36.309528, 28.849575, 47.354721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586136, 29.027515, 47.582375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313379, -0.894625, 0.318497,
		0.650843, -0.041893, -0.758056,
		0.691518, 0.444850, 0.569132,
		36.793591, 29.160971, 47.753113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895817, 28.333469, 47.416924>,  <36.309528, 28.849575, 47.354721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895817, 28.333469, 47.416924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961052, 28.588039, 47.718483>,  <37.000195, 28.740782, 47.899418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961052, 28.588039, 47.718483>,  <36.895817, 28.333469, 47.416924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961052, 28.588039, 47.718483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469691, -0.722069, 0.507944,
		0.867636, 0.271260, -0.416684,
		0.163089, 0.636423, 0.753901,
		37.009979, 28.778967, 47.944653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582596, 28.154682, 47.535824>,  <36.895817, 28.333469, 47.416924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582596, 28.154682, 47.535824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405762, 28.339363, 47.843430>,  <37.299660, 28.450172, 48.027992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405762, 28.339363, 47.843430>,  <37.582596, 28.154682, 47.535824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405762, 28.339363, 47.843430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333438, -0.711317, 0.618747,
		0.832692, 0.529961, 0.160516,
		-0.442089, 0.461703, 0.769017,
		37.273136, 28.477875, 48.074135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050396, 28.098940, 48.065044>,  <37.582596, 28.154682, 47.535824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050396, 28.098940, 48.065044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686611, 28.153404, 48.222191>,  <37.468342, 28.186083, 48.316479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686611, 28.153404, 48.222191>,  <38.050396, 28.098940, 48.065044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686611, 28.153404, 48.222191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223248, -0.637200, 0.737656,
		0.350775, 0.758574, 0.549110,
		-0.909460, 0.136163, 0.392864,
		37.413773, 28.194254, 48.340050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185738, 28.321831, 48.673241>,  <38.050396, 28.098940, 48.065044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185738, 28.321831, 48.673241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815697, 28.177128, 48.719395>,  <37.593670, 28.090305, 48.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815697, 28.177128, 48.719395>,  <38.185738, 28.321831, 48.673241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815697, 28.177128, 48.719395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297602, -0.502048, 0.812023,
		-0.235830, 0.785543, 0.572107,
		-0.925104, -0.361759, 0.115381,
		37.538166, 28.068600, 48.754009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030994, 28.338074, 49.340530>,  <38.185738, 28.321831, 48.673241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030994, 28.338074, 49.340530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750717, 28.081448, 49.215675>,  <37.582550, 27.927473, 49.140762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750717, 28.081448, 49.215675>,  <38.030994, 28.338074, 49.340530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750717, 28.081448, 49.215675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059965, -0.488905, 0.870274,
		-0.710943, 0.591074, 0.381041,
		-0.700689, -0.641564, -0.312140,
		37.540512, 27.888979, 49.122032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585678, 28.277710, 49.889793>,  <38.030994, 28.338074, 49.340530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585678, 28.277710, 49.889793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519115, 27.946144, 49.676170>,  <37.479179, 27.747206, 49.547997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519115, 27.946144, 49.676170>,  <37.585678, 28.277710, 49.889793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519115, 27.946144, 49.676170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034575, -0.546176, 0.836956,
		-0.985452, 0.120806, 0.119545,
		-0.166402, -0.828913, -0.534053,
		37.469196, 27.697470, 49.515953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954987, 27.921072, 50.037575>,  <37.585678, 28.277710, 49.889793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954987, 27.921072, 50.037575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234062, 27.659992, 49.919445>,  <37.401508, 27.503344, 49.848568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234062, 27.659992, 49.919445>,  <36.954987, 27.921072, 50.037575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234062, 27.659992, 49.919445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070323, -0.472638, 0.878446,
		-0.712945, -0.592110, -0.375652,
		0.697684, -0.652701, -0.295326,
		37.443367, 27.464182, 49.830849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712307, 27.178370, 50.036804>,  <36.954987, 27.921072, 50.037575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712307, 27.178370, 50.036804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108704, 27.163866, 50.088367>,  <37.346542, 27.155165, 50.119305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108704, 27.163866, 50.088367>,  <36.712307, 27.178370, 50.036804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108704, 27.163866, 50.088367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126110, -0.576480, 0.807321,
		0.045043, -0.816307, -0.575860,
		0.990994, -0.036257, 0.128911,
		37.406002, 27.152988, 50.127041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113533, 26.545019, 49.931900>,  <36.712307, 27.178370, 50.036804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113533, 26.545019, 49.931900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253441, 26.748894, 50.246323>,  <37.337387, 26.871218, 50.434975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253441, 26.748894, 50.246323>,  <37.113533, 26.545019, 49.931900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253441, 26.748894, 50.246323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305893, -0.730931, 0.610056,
		0.885489, -0.453828, -0.099748,
		0.349770, 0.509686, 0.786054,
		37.358372, 26.901800, 50.482140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324566, 26.019428, 50.460144>,  <37.113533, 26.545019, 49.931900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324566, 26.019428, 50.460144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262482, 26.366827, 50.648449>,  <37.225231, 26.575266, 50.761433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262482, 26.366827, 50.648449>,  <37.324566, 26.019428, 50.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262482, 26.366827, 50.648449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361208, -0.493435, 0.791234,
		0.919478, -0.047238, 0.390294,
		-0.155208, 0.868499, 0.470765,
		37.215919, 26.627377, 50.789677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651970, 26.061663, 51.200020>,  <37.324566, 26.019428, 50.460144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651970, 26.061663, 51.200020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319408, 26.277840, 51.148342>,  <37.119873, 26.407547, 51.117336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319408, 26.277840, 51.148342>,  <37.651970, 26.061663, 51.200020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319408, 26.277840, 51.148342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428046, -0.474642, 0.769085,
		0.354327, 0.694720, 0.625953,
		-0.831402, 0.540444, -0.129194,
		37.069988, 26.439972, 51.109585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113216, 26.597555, 50.966362>,  <37.651970, 26.061663, 51.200020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113216, 26.597555, 50.966362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349018, 26.276146, 50.999435>,  <38.490498, 26.083300, 51.019279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349018, 26.276146, 50.999435>,  <38.113216, 26.597555, 50.966362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349018, 26.276146, 50.999435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374900, -0.362832, -0.853113,
		0.715500, 0.471911, -0.515131,
		0.589500, -0.803525, 0.082687,
		38.525867, 26.035088, 51.024242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284782, 26.500015, 50.268909>,  <38.113216, 26.597555, 50.966362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284782, 26.500015, 50.268909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394318, 26.169956, 50.466553>,  <38.460037, 25.971922, 50.585140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394318, 26.169956, 50.466553>,  <38.284782, 26.500015, 50.268909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394318, 26.169956, 50.466553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087985, -0.533089, -0.841472,
		0.957743, 0.186951, -0.218580,
		0.273837, -0.825146, 0.494113,
		38.476467, 25.922413, 50.614788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907585, 26.156437, 50.001770>,  <38.284782, 26.500015, 50.268909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907585, 26.156437, 50.001770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630001, 25.915901, 50.160168>,  <38.463451, 25.771580, 50.255207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630001, 25.915901, 50.160168>,  <38.907585, 26.156437, 50.001770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630001, 25.915901, 50.160168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071363, -0.489834, -0.868890,
		0.716471, -0.631232, 0.297010,
		-0.693957, -0.601339, 0.395999,
		38.421814, 25.735500, 50.278969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962044, 25.377293, 49.944092>,  <38.907585, 26.156437, 50.001770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962044, 25.377293, 49.944092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577816, 25.488419, 49.939617>,  <38.347279, 25.555094, 49.936932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577816, 25.488419, 49.939617>,  <38.962044, 25.377293, 49.944092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577816, 25.488419, 49.939617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110262, -0.417553, -0.901938,
		-0.255242, -0.865141, 0.431721,
		-0.960569, 0.277815, -0.011185,
		38.289646, 25.571764, 49.936260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559109, 24.943113, 49.605534>,  <38.962044, 25.377293, 49.944092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559109, 24.943113, 49.605534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353100, 25.279543, 49.539383>,  <38.229496, 25.481401, 49.499691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353100, 25.279543, 49.539383>,  <38.559109, 24.943113, 49.605534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353100, 25.279543, 49.539383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151019, -0.278946, -0.948358,
		-0.843770, -0.463448, 0.270681,
		-0.515019, 0.841074, -0.165377,
		38.198593, 25.531864, 49.489769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227551, 24.816681, 48.982899>,  <38.559109, 24.943113, 49.605534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227551, 24.816681, 48.982899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136349, 25.202583, 49.035442>,  <38.081627, 25.434126, 49.066971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136349, 25.202583, 49.035442>,  <38.227551, 24.816681, 48.982899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136349, 25.202583, 49.035442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119026, 0.106288, -0.987186,
		-0.966357, -0.240721, 0.090597,
		-0.228007, 0.964757, 0.131364,
		38.067947, 25.492010, 49.074852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647800, 24.906981, 48.568394>,  <38.227551, 24.816681, 48.982899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647800, 24.906981, 48.568394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807785, 25.266731, 48.638988>,  <37.903774, 25.482582, 48.681347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807785, 25.266731, 48.638988>,  <37.647800, 24.906981, 48.568394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807785, 25.266731, 48.638988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151251, 0.254691, -0.955121,
		-0.903966, 0.355317, 0.237899,
		0.399961, 0.899379, 0.176490,
		37.927773, 25.536545, 48.691936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184246, 25.366816, 48.279449>,  <37.647800, 24.906981, 48.568394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184246, 25.366816, 48.279449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543049, 25.542322, 48.300861>,  <37.758331, 25.647627, 48.313709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543049, 25.542322, 48.300861>,  <37.184246, 25.366816, 48.279449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543049, 25.542322, 48.300861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112084, 0.342919, -0.932654,
		-0.427573, 0.830596, 0.356779,
		0.897005, 0.438767, 0.053527,
		37.812149, 25.673952, 48.316921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080219, 26.062794, 48.107849>,  <37.184246, 25.366816, 48.279449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080219, 26.062794, 48.107849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466629, 25.996405, 48.028610>,  <37.698475, 25.956572, 47.981068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466629, 25.996405, 48.028610>,  <37.080219, 26.062794, 48.107849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466629, 25.996405, 48.028610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070533, 0.568106, -0.819927,
		0.248626, 0.806045, 0.537099,
		0.966028, -0.165972, -0.198099,
		37.756439, 25.946613, 47.969181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384029, 26.800589, 47.955933>,  <37.080219, 26.062794, 48.107849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384029, 26.800589, 47.955933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624657, 26.513273, 47.816116>,  <37.769032, 26.340885, 47.732227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624657, 26.513273, 47.816116>,  <37.384029, 26.800589, 47.955933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624657, 26.513273, 47.816116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151302, 0.532107, -0.833048,
		0.784362, 0.448248, 0.428777,
		0.601567, -0.718287, -0.349544,
		37.805126, 26.297787, 47.711254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045074, 27.117472, 47.745434>,  <37.384029, 26.800589, 47.955933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045074, 27.117472, 47.745434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038200, 26.781433, 47.528568>,  <38.034077, 26.579809, 47.398449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038200, 26.781433, 47.528568>,  <38.045074, 27.117472, 47.745434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038200, 26.781433, 47.528568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169848, 0.531910, -0.829593,
		0.985320, -0.106344, 0.133547,
		-0.017187, -0.840097, -0.542164,
		38.033043, 26.529404, 47.365921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660000, 27.071743, 47.378242>,  <38.045074, 27.117472, 47.745434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660000, 27.071743, 47.378242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400608, 26.836468, 47.184948>,  <38.244972, 26.695303, 47.068974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400608, 26.836468, 47.184948>,  <38.660000, 27.071743, 47.378242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400608, 26.836468, 47.184948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127147, 0.542193, -0.830578,
		0.750541, -0.600052, -0.276813,
		-0.648477, -0.588187, -0.483233,
		38.206066, 26.660011, 47.039978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923046, 26.995031, 46.737015>,  <38.660000, 27.071743, 47.378242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923046, 26.995031, 46.737015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547455, 26.873419, 46.672665>,  <38.322102, 26.800451, 46.634052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547455, 26.873419, 46.672665>,  <38.923046, 26.995031, 46.737015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547455, 26.873419, 46.672665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004019, 0.477368, -0.878694,
		0.343949, -0.824430, -0.449461,
		-0.938980, -0.304032, -0.160877,
		38.265762, 26.782209, 46.624401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891369, 26.876482, 46.048172>,  <38.923046, 26.995031, 46.737015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891369, 26.876482, 46.048172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498707, 26.908897, 46.117207>,  <38.263111, 26.928347, 46.158627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498707, 26.908897, 46.117207>,  <38.891369, 26.876482, 46.048172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498707, 26.908897, 46.117207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103345, 0.534540, -0.838801,
		-0.160228, -0.841249, -0.516359,
		-0.981655, 0.081036, 0.172587,
		38.204208, 26.933208, 46.168983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516846, 26.731472, 45.401691>,  <38.891369, 26.876482, 46.048172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516846, 26.731472, 45.401691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267342, 26.922682, 45.649052>,  <38.117641, 27.037409, 45.797466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267342, 26.922682, 45.649052>,  <38.516846, 26.731472, 45.401691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267342, 26.922682, 45.649052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226578, 0.646623, -0.728382,
		-0.748058, -0.594449, -0.295025,
		-0.623756, 0.478026, 0.618401,
		38.080215, 27.066090, 45.834572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897251, 26.743433, 45.054596>,  <38.516846, 26.731472, 45.401691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897251, 26.743433, 45.054596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870228, 27.032427, 45.329826>,  <37.854015, 27.205822, 45.494965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870228, 27.032427, 45.329826>,  <37.897251, 26.743433, 45.054596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870228, 27.032427, 45.329826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343488, 0.630655, -0.695909,
		-0.936724, -0.283360, 0.205561,
		-0.067555, 0.722483, 0.688080,
		37.849960, 27.249172, 45.536251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230282, 26.979580, 45.016273>,  <37.897251, 26.743433, 45.054596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230282, 26.979580, 45.016273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454685, 27.273449, 45.168865>,  <37.589329, 27.449770, 45.260418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454685, 27.273449, 45.168865>,  <37.230282, 26.979580, 45.016273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454685, 27.273449, 45.168865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352104, 0.628836, -0.693245,
		-0.749195, 0.254596, 0.611463,
		0.561007, 0.734674, 0.381477,
		37.622986, 27.493851, 45.283310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913826, 27.469143, 44.746986>,  <37.230282, 26.979580, 45.016273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913826, 27.469143, 44.746986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224674, 27.679878, 44.884697>,  <37.411182, 27.806320, 44.967323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224674, 27.679878, 44.884697>,  <36.913826, 27.469143, 44.746986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224674, 27.679878, 44.884697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229041, 0.746268, -0.624999,
		-0.586194, 0.406847, 0.700608,
		0.777121, 0.526838, 0.344273,
		37.457809, 27.837931, 44.987980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658638, 28.063498, 44.717594>,  <36.913826, 27.469143, 44.746986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658638, 28.063498, 44.717594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052521, 28.132177, 44.729416>,  <37.288849, 28.173386, 44.736511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052521, 28.132177, 44.729416>,  <36.658638, 28.063498, 44.717594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052521, 28.132177, 44.729416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121793, 0.799708, -0.587906,
		-0.124581, 0.575315, 0.808389,
		0.984706, 0.171699, 0.029559,
		37.347931, 28.183687, 44.738285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781399, 28.660883, 44.976303>,  <36.658638, 28.063498, 44.717594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781399, 28.660883, 44.976303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137554, 28.641548, 44.795254>,  <37.351246, 28.629948, 44.686623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137554, 28.641548, 44.795254>,  <36.781399, 28.660883, 44.976303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137554, 28.641548, 44.795254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193737, 0.859551, -0.472903,
		0.411913, 0.508758, 0.755971,
		0.890389, -0.048335, -0.452626,
		37.404671, 28.627048, 44.659466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143147, 29.336494, 44.937424>,  <36.781399, 28.660883, 44.976303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143147, 29.336494, 44.937424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303360, 29.135080, 44.631214>,  <37.399487, 29.014233, 44.447487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303360, 29.135080, 44.631214>,  <37.143147, 29.336494, 44.937424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303360, 29.135080, 44.631214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249358, 0.744035, -0.619865,
		0.881701, 0.439165, 0.172449,
		0.400531, -0.503534, -0.765525,
		37.423519, 28.984020, 44.401558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547821, 29.811596, 44.630978>,  <37.143147, 29.336494, 44.937424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547821, 29.811596, 44.630978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492676, 29.515919, 44.367287>,  <37.459587, 29.338512, 44.209072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492676, 29.515919, 44.367287>,  <37.547821, 29.811596, 44.630978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492676, 29.515919, 44.367287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073584, 0.671391, -0.737441,
		0.987714, -0.053159, -0.146955,
		-0.137866, -0.739195, -0.659230,
		37.451317, 29.294161, 44.169518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009953, 30.021236, 44.054077>,  <37.547821, 29.811596, 44.630978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009953, 30.021236, 44.054077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776169, 29.755405, 43.867851>,  <37.635899, 29.595907, 43.756115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776169, 29.755405, 43.867851>,  <38.009953, 30.021236, 44.054077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776169, 29.755405, 43.867851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248413, 0.692756, -0.677037,
		0.772464, -0.280048, -0.569976,
		-0.584458, -0.664576, -0.465561,
		37.600830, 29.556032, 43.728184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067207, 30.071518, 43.363228>,  <38.009953, 30.021236, 44.054077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067207, 30.071518, 43.363228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738132, 29.845917, 43.334698>,  <37.540688, 29.710556, 43.317581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738132, 29.845917, 43.334698>,  <38.067207, 30.071518, 43.363228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738132, 29.845917, 43.334698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143802, 0.327842, -0.933724,
		0.550006, -0.757906, -0.350816,
		-0.822687, -0.564002, -0.071326,
		37.491325, 29.676716, 43.313301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117085, 29.825390, 42.669811>,  <38.067207, 30.071518, 43.363228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117085, 29.825390, 42.669811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743763, 29.840065, 42.812691>,  <37.519768, 29.848871, 42.898418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743763, 29.840065, 42.812691>,  <38.117085, 29.825390, 42.669811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743763, 29.840065, 42.812691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304676, 0.445532, -0.841828,
		-0.190032, -0.894514, -0.404639,
		-0.933306, 0.036690, 0.357202,
		37.463772, 29.851072, 42.919853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646423, 29.519646, 42.193821>,  <38.117085, 29.825390, 42.669811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646423, 29.519646, 42.193821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423500, 29.773819, 42.407600>,  <37.289745, 29.926323, 42.535870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423500, 29.773819, 42.407600>,  <37.646423, 29.519646, 42.193821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423500, 29.773819, 42.407600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281755, 0.460757, -0.841615,
		-0.781042, -0.619620, -0.077746,
		-0.557304, 0.635432, 0.534452,
		37.256310, 29.964449, 42.567936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067875, 29.586876, 41.739532>,  <37.646423, 29.519646, 42.193821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067875, 29.586876, 41.739532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033176, 29.888107, 42.000408>,  <37.012356, 30.068846, 42.156933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033176, 29.888107, 42.000408>,  <37.067875, 29.586876, 41.739532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033176, 29.888107, 42.000408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288837, 0.607522, -0.739925,
		-0.953440, -0.252562, 0.164816,
		-0.086747, 0.753080, 0.652186,
		37.007153, 30.114031, 42.196064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403160, 29.815262, 41.761623>,  <37.067875, 29.586876, 41.739532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403160, 29.815262, 41.761623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619392, 30.122940, 41.897923>,  <36.749134, 30.307547, 41.979702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619392, 30.122940, 41.897923>,  <36.403160, 29.815262, 41.761623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619392, 30.122940, 41.897923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343647, 0.571593, -0.745109,
		-0.767904, 0.285696, 0.573325,
		0.540584, 0.769194, 0.340750,
		36.781567, 30.353699, 42.000149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984428, 30.337070, 41.838020>,  <36.403160, 29.815262, 41.761623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984428, 30.337070, 41.838020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348415, 30.500637, 41.810482>,  <36.566807, 30.598778, 41.793961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348415, 30.500637, 41.810482>,  <35.984428, 30.337070, 41.838020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348415, 30.500637, 41.810482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308457, 0.556538, -0.771440,
		-0.277142, 0.723223, 0.632566,
		0.909971, 0.408918, -0.068843,
		36.621407, 30.623312, 41.789829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911266, 31.095665, 41.896717>,  <35.984428, 30.337070, 41.838020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911266, 31.095665, 41.896717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260677, 31.034634, 41.711823>,  <36.470325, 30.998014, 41.600883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260677, 31.034634, 41.711823>,  <35.911266, 31.095665, 41.896717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260677, 31.034634, 41.711823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328723, 0.515459, -0.791355,
		0.359008, 0.843221, 0.400113,
		0.873530, -0.152577, -0.462241,
		36.522736, 30.988861, 41.573151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013054, 31.808105, 41.646038>,  <35.911266, 31.095665, 41.896717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013054, 31.808105, 41.646038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269039, 31.558514, 41.466663>,  <36.422630, 31.408758, 41.359039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269039, 31.558514, 41.466663>,  <36.013054, 31.808105, 41.646038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269039, 31.558514, 41.466663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122437, 0.493330, -0.861182,
		0.758588, 0.606030, 0.239314,
		0.639963, -0.623981, -0.448435,
		36.461029, 31.371319, 41.332134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481174, 32.276245, 41.280437>,  <36.013054, 31.808105, 41.646038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481174, 32.276245, 41.280437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453400, 31.905672, 41.132439>,  <36.436737, 31.683329, 41.043640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453400, 31.905672, 41.132439>,  <36.481174, 32.276245, 41.280437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453400, 31.905672, 41.132439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099640, 0.375478, -0.921460,
		0.992598, -0.027114, -0.118381,
		-0.069434, -0.926435, -0.369997,
		36.432568, 31.627741, 41.021439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770363, 32.421165, 40.605305>,  <36.481174, 32.276245, 41.280437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770363, 32.421165, 40.605305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578690, 32.070099, 40.608734>,  <36.463684, 31.859457, 40.610790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578690, 32.070099, 40.608734>,  <36.770363, 32.421165, 40.605305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578690, 32.070099, 40.608734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155986, 0.075545, -0.984866,
		0.863741, -0.473273, -0.173104,
		-0.479187, -0.877671, 0.008572,
		36.434933, 31.806797, 40.611305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045040, 32.119968, 40.017326>,  <36.770363, 32.421165, 40.605305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045040, 32.119968, 40.017326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680836, 31.982611, 40.109455>,  <36.462315, 31.900196, 40.164734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680836, 31.982611, 40.109455>,  <37.045040, 32.119968, 40.017326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680836, 31.982611, 40.109455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294862, 0.148741, -0.943892,
		0.289874, -0.927336, -0.236686,
		-0.910510, -0.343400, 0.230320,
		36.407684, 31.879591, 40.178551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875175, 31.832354, 39.472260>,  <37.045040, 32.119968, 40.017326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875175, 31.832354, 39.472260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519199, 31.830137, 39.654678>,  <36.305614, 31.828808, 39.764130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519199, 31.830137, 39.654678>,  <36.875175, 31.832354, 39.472260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519199, 31.830137, 39.654678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452420, 0.137097, -0.881204,
		-0.057639, -0.990542, -0.124515,
		-0.889940, -0.005541, 0.456044,
		36.252216, 31.828476, 39.791492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335678, 31.320669, 39.123333>,  <36.875175, 31.832354, 39.472260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335678, 31.320669, 39.123333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167057, 31.644636, 39.286465>,  <36.065884, 31.839016, 39.384346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167057, 31.644636, 39.286465>,  <36.335678, 31.320669, 39.123333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167057, 31.644636, 39.286465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597573, 0.090161, -0.796729,
		-0.682056, -0.579572, 0.445977,
		-0.421553, 0.809918, 0.407831,
		36.040592, 31.887611, 39.408813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821808, 31.237358, 38.723480>,  <36.335678, 31.320669, 39.123333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821808, 31.237358, 38.723480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741287, 31.581137, 38.911449>,  <35.692974, 31.787403, 39.024231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741287, 31.581137, 38.911449>,  <35.821808, 31.237358, 38.723480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741287, 31.581137, 38.911449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573996, 0.285246, -0.767570,
		-0.793729, -0.424251, 0.435896,
		-0.201304, 0.859445, 0.469927,
		35.680897, 31.838970, 39.052429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202538, 31.404926, 38.493835>,  <35.821808, 31.237358, 38.723480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202538, 31.404926, 38.493835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372559, 31.742458, 38.624851>,  <35.474571, 31.944979, 38.703461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372559, 31.742458, 38.624851>,  <35.202538, 31.404926, 38.493835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372559, 31.742458, 38.624851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458416, 0.512692, -0.725949,
		-0.780504, 0.158417, 0.604746,
		0.425051, 0.843831, 0.327537,
		35.500072, 31.995607, 38.723114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641090, 31.924147, 38.343651>,  <35.202538, 31.404926, 38.493835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641090, 31.924147, 38.343651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985302, 32.120541, 38.397945>,  <35.191830, 32.238377, 38.430523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985302, 32.120541, 38.397945>,  <34.641090, 31.924147, 38.343651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985302, 32.120541, 38.397945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198967, 0.569255, -0.797722,
		-0.468937, 0.659456, 0.587550,
		0.860529, 0.490985, 0.135735,
		35.243462, 32.267838, 38.438667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496490, 32.565155, 38.331451>,  <34.641090, 31.924147, 38.343651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496490, 32.565155, 38.331451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885899, 32.532913, 38.245888>,  <35.119545, 32.513569, 38.194550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885899, 32.532913, 38.245888>,  <34.496490, 32.565155, 38.331451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885899, 32.532913, 38.245888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127305, 0.586049, -0.800212,
		0.189866, 0.806256, 0.560270,
		0.973522, -0.080608, -0.213911,
		35.177956, 32.508732, 38.181713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626816, 33.225906, 38.021072>,  <34.496490, 32.565155, 38.331451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626816, 33.225906, 38.021072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977009, 33.048592, 37.944092>,  <35.187122, 32.942204, 37.897903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977009, 33.048592, 37.944092>,  <34.626816, 33.225906, 38.021072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977009, 33.048592, 37.944092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116806, 0.580528, -0.805819,
		0.468927, 0.682999, 0.560018,
		0.875479, -0.443284, -0.192447,
		35.239651, 32.915607, 37.886356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097591, 33.728710, 38.043716>,  <34.626816, 33.225906, 38.021072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097591, 33.728710, 38.043716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239407, 33.443977, 37.801197>,  <35.324493, 33.273136, 37.655685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239407, 33.443977, 37.801197>,  <35.097591, 33.728710, 38.043716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239407, 33.443977, 37.801197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125805, 0.606207, -0.785293,
		0.926541, 0.354689, 0.125369,
		0.354535, -0.711834, -0.606298,
		35.345768, 33.230427, 37.619308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792984, 33.915821, 37.638000>,  <35.097591, 33.728710, 38.043716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792984, 33.915821, 37.638000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603844, 33.637112, 37.422253>,  <35.490360, 33.469887, 37.292805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603844, 33.637112, 37.422253>,  <35.792984, 33.915821, 37.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603844, 33.637112, 37.422253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000656, 0.611850, -0.790974,
		0.881141, -0.374369, -0.288859,
		-0.472854, -0.696769, -0.539371,
		35.461987, 33.428082, 37.260441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967476, 34.138191, 37.044201>,  <35.792984, 33.915821, 37.638000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967476, 34.138191, 37.044201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680050, 33.871597, 36.964741>,  <35.507595, 33.711639, 36.917065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680050, 33.871597, 36.964741>,  <35.967476, 34.138191, 37.044201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680050, 33.871597, 36.964741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154594, 0.431561, -0.888738,
		0.678063, -0.607904, -0.413138,
		-0.718562, -0.666490, -0.198647,
		35.464481, 33.671650, 36.905148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093502, 33.785839, 36.393856>,  <35.967476, 34.138191, 37.044201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093502, 33.785839, 36.393856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696247, 33.781784, 36.440468>,  <35.457893, 33.779350, 36.468433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696247, 33.781784, 36.440468>,  <36.093502, 33.785839, 36.393856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696247, 33.781784, 36.440468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106466, 0.490914, -0.864678,
		-0.048435, -0.871149, -0.488624,
		-0.993136, -0.010141, 0.116525,
		35.398308, 33.778744, 36.475426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743801, 34.213757, 36.434719>,  <36.093502, 33.785839, 36.393856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743801, 34.213757, 36.434719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047230, 34.472855, 36.462990>,  <37.229286, 34.628315, 36.479954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047230, 34.472855, 36.462990>,  <36.743801, 34.213757, 36.434719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047230, 34.472855, 36.462990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304454, -0.448254, 0.840462,
		0.576090, -0.616030, -0.537241,
		0.758570, 0.647747, 0.070682,
		37.274799, 34.667179, 36.484196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298420, 33.910236, 36.445164>,  <36.743801, 34.213757, 36.434719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298420, 33.910236, 36.445164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414886, 34.254105, 36.613060>,  <37.484768, 34.460426, 36.713799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414886, 34.254105, 36.613060>,  <37.298420, 33.910236, 36.445164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414886, 34.254105, 36.613060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379881, -0.506574, 0.773998,
		0.878015, -0.065913, -0.474073,
		0.291170, 0.859673, 0.419740,
		37.502239, 34.512005, 36.738983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041878, 33.860645, 36.595360>,  <37.298420, 33.910236, 36.445164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041878, 33.860645, 36.595360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904942, 34.151344, 36.833569>,  <37.822781, 34.325764, 36.976494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904942, 34.151344, 36.833569>,  <38.041878, 33.860645, 36.595360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904942, 34.151344, 36.833569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545118, -0.362610, 0.755884,
		0.765275, 0.583401, -0.272024,
		-0.342344, 0.726744, 0.595519,
		37.802238, 34.369370, 37.012226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636833, 34.102962, 36.850170>,  <38.041878, 33.860645, 36.595360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636833, 34.102962, 36.850170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350334, 34.231133, 37.098141>,  <38.178432, 34.308033, 37.246925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350334, 34.231133, 37.098141>,  <38.636833, 34.102962, 36.850170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350334, 34.231133, 37.098141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557407, -0.271786, 0.784494,
		0.419859, 0.907447, 0.016060,
		-0.716251, 0.320425, 0.619929,
		38.135460, 34.327259, 37.284119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022125, 34.328278, 37.341808>,  <38.636833, 34.102962, 36.850170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022125, 34.328278, 37.341808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671211, 34.314228, 37.533283>,  <38.460663, 34.305798, 37.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671211, 34.314228, 37.533283>,  <39.022125, 34.328278, 37.341808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671211, 34.314228, 37.533283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474746, -0.210296, 0.854629,
		0.070644, 0.977006, 0.201166,
		-0.877283, -0.035129, 0.478687,
		38.408028, 34.303688, 37.676888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158840, 34.536911, 37.974365>,  <39.022125, 34.328278, 37.341808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158840, 34.536911, 37.974365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823212, 34.330292, 38.042648>,  <38.621834, 34.206318, 38.083618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823212, 34.330292, 38.042648>,  <39.158840, 34.536911, 37.974365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823212, 34.330292, 38.042648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334399, -0.242194, 0.910780,
		-0.429120, 0.821290, 0.375951,
		-0.839067, -0.516551, 0.170708,
		38.571491, 34.175327, 38.093861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857643, 34.648563, 38.723370>,  <39.158840, 34.536911, 37.974365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857643, 34.648563, 38.723370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712502, 34.306843, 38.574501>,  <38.625416, 34.101810, 38.485180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712502, 34.306843, 38.574501>,  <38.857643, 34.648563, 38.723370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712502, 34.306843, 38.574501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290025, -0.483088, 0.826142,
		-0.885562, 0.191833, 0.423060,
		-0.362857, -0.854299, -0.372168,
		38.603645, 34.050552, 38.462852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401428, 34.370892, 39.286522>,  <38.857643, 34.648563, 38.723370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401428, 34.370892, 39.286522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496597, 34.070469, 39.040169>,  <38.553699, 33.890213, 38.892357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496597, 34.070469, 39.040169>,  <38.401428, 34.370892, 39.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496597, 34.070469, 39.040169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294656, -0.548392, 0.782588,
		-0.925512, -0.367665, 0.090831,
		0.237919, -0.751058, -0.615878,
		38.567974, 33.845150, 38.855404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065998, 33.858234, 39.577534>,  <38.401428, 34.370892, 39.286522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065998, 33.858234, 39.577534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355240, 33.689419, 39.358807>,  <38.528786, 33.588131, 39.227570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355240, 33.689419, 39.358807>,  <38.065998, 33.858234, 39.577534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355240, 33.689419, 39.358807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219724, -0.609981, 0.761344,
		-0.654863, -0.670678, -0.348346,
		0.723101, -0.422036, -0.546819,
		38.572170, 33.562809, 39.194759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108253, 33.215046, 39.880661>,  <38.065998, 33.858234, 39.577534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108253, 33.215046, 39.880661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450474, 33.194649, 39.674580>,  <38.655807, 33.182411, 39.550930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450474, 33.194649, 39.674580>,  <38.108253, 33.215046, 39.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450474, 33.194649, 39.674580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362674, -0.651123, 0.666713,
		-0.369458, -0.757257, -0.538574,
		0.855551, -0.050996, -0.515200,
		38.707138, 33.179348, 39.520020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254879, 32.476948, 39.553108>,  <38.108253, 33.215046, 39.880661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254879, 32.476948, 39.553108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593845, 32.684772, 39.596821>,  <38.797226, 32.809467, 39.623051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593845, 32.684772, 39.596821>,  <38.254879, 32.476948, 39.553108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593845, 32.684772, 39.596821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399456, -0.759514, 0.513394,
		0.349741, -0.391405, -0.851166,
		0.847418, 0.519558, 0.109284,
		38.848072, 32.840641, 39.629604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815479, 32.037605, 39.442295>,  <38.254879, 32.476948, 39.553108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815479, 32.037605, 39.442295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027184, 32.325058, 39.622719>,  <39.154205, 32.497528, 39.730972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027184, 32.325058, 39.622719>,  <38.815479, 32.037605, 39.442295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027184, 32.325058, 39.622719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491670, -0.693029, 0.527229,
		0.691483, -0.057265, -0.720119,
		0.529256, 0.718631, 0.451063,
		39.185959, 32.540646, 39.758038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516129, 31.827337, 39.410683>,  <38.815479, 32.037605, 39.442295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516129, 31.827337, 39.410683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489784, 32.096893, 39.705036>,  <39.473976, 32.258629, 39.881649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489784, 32.096893, 39.705036>,  <39.516129, 31.827337, 39.410683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489784, 32.096893, 39.705036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426730, -0.647624, 0.631256,
		0.901978, 0.355601, -0.244915,
		-0.065862, 0.673892, 0.735888,
		39.470024, 32.299061, 39.925804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085449, 31.681137, 39.763557>,  <39.516129, 31.827337, 39.410683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085449, 31.681137, 39.763557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863350, 31.902884, 40.011551>,  <39.730091, 32.035931, 40.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863350, 31.902884, 40.011551>,  <40.085449, 31.681137, 39.763557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863350, 31.902884, 40.011551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407500, -0.468503, 0.783868,
		0.725014, 0.687883, 0.034230,
		-0.555246, 0.554367, 0.619983,
		39.696777, 32.069195, 40.197544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508259, 31.893002, 40.336212>,  <40.085449, 31.681137, 39.763557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508259, 31.893002, 40.336212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141567, 31.890570, 40.495998>,  <39.921551, 31.889111, 40.591869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141567, 31.890570, 40.495998>,  <40.508259, 31.893002, 40.336212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141567, 31.890570, 40.495998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378124, -0.335971, 0.862639,
		0.128963, 0.941853, 0.310294,
		-0.916728, -0.006081, 0.399465,
		39.866550, 31.888744, 40.615837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643646, 31.956051, 40.962734>,  <40.508259, 31.893002, 40.336212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643646, 31.956051, 40.962734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262890, 31.836102, 40.987968>,  <40.034435, 31.764132, 41.003109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262890, 31.836102, 40.987968>,  <40.643646, 31.956051, 40.962734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262890, 31.836102, 40.987968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217551, -0.516323, 0.828300,
		-0.215811, 0.802176, 0.556721,
		-0.951891, -0.299872, 0.063086,
		39.977322, 31.746140, 41.006893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380379, 32.085293, 41.625790>,  <40.643646, 31.956051, 40.962734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380379, 32.085293, 41.625790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161057, 31.785162, 41.478081>,  <40.029461, 31.605083, 41.389458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161057, 31.785162, 41.478081>,  <40.380379, 32.085293, 41.625790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161057, 31.785162, 41.478081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129830, -0.512586, 0.848763,
		-0.826135, 0.417443, 0.378472,
		-0.548310, -0.750331, -0.369269,
		39.996563, 31.560062, 41.367298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938683, 31.887861, 42.100479>,  <40.380379, 32.085293, 41.625790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938683, 31.887861, 42.100479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908314, 31.560600, 41.872494>,  <39.890095, 31.364244, 41.735703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908314, 31.560600, 41.872494>,  <39.938683, 31.887861, 42.100479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908314, 31.560600, 41.872494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064148, -0.574440, 0.816029,
		-0.995048, 0.025391, 0.096095,
		-0.075920, -0.818153, -0.569966,
		39.885536, 31.315155, 41.701504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377823, 31.570225, 42.308422>,  <39.938683, 31.887861, 42.100479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377823, 31.570225, 42.308422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590096, 31.283260, 42.127892>,  <39.717461, 31.111082, 42.019573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590096, 31.283260, 42.127892>,  <39.377823, 31.570225, 42.308422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590096, 31.283260, 42.127892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219375, -0.630613, 0.744447,
		-0.818690, -0.296053, -0.492036,
		0.530681, -0.717412, -0.451330,
		39.749298, 31.068037, 41.992493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144356, 31.036352, 42.565159>,  <39.377823, 31.570225, 42.308422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144356, 31.036352, 42.565159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473495, 30.872482, 42.407631>,  <39.670979, 30.774160, 42.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473495, 30.872482, 42.407631>,  <39.144356, 31.036352, 42.565159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473495, 30.872482, 42.407631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086388, -0.775140, 0.625856,
		-0.561661, -0.480962, -0.673211,
		0.822845, -0.409676, -0.393816,
		39.720348, 30.749580, 42.289486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931011, 30.362259, 42.431011>,  <39.144356, 31.036352, 42.565159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931011, 30.362259, 42.431011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330135, 30.388710, 42.431149>,  <39.569611, 30.404581, 42.431232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330135, 30.388710, 42.431149>,  <38.931011, 30.362259, 42.431011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330135, 30.388710, 42.431149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052271, -0.791867, 0.608453,
		0.040508, -0.607103, -0.793590,
		0.997811, 0.066129, 0.000343,
		39.629478, 30.408548, 42.431252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098812, 29.620914, 42.265762>,  <38.931011, 30.362259, 42.431011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098812, 29.620914, 42.265762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416420, 29.792210, 42.438339>,  <39.606987, 29.894987, 42.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416420, 29.792210, 42.438339>,  <39.098812, 29.620914, 42.265762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416420, 29.792210, 42.438339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028957, -0.682287, 0.730511,
		0.607199, -0.592535, -0.529350,
		0.794022, 0.428237, 0.431442,
		39.654625, 29.920681, 42.567772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517845, 29.051466, 42.366364>,  <39.098812, 29.620914, 42.265762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517845, 29.051466, 42.366364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631050, 29.319643, 42.640709>,  <39.698975, 29.480549, 42.805317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631050, 29.319643, 42.640709>,  <39.517845, 29.051466, 42.366364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631050, 29.319643, 42.640709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021189, -0.719295, 0.694382,
		0.958881, -0.181989, -0.217778,
		0.283017, 0.670444, 0.685862,
		39.715954, 29.520777, 42.846466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730831, 28.653337, 42.833164>,  <39.517845, 29.051466, 42.366364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730831, 28.653337, 42.833164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749752, 29.002066, 43.028179>,  <39.761105, 29.211304, 43.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749752, 29.002066, 43.028179>,  <39.730831, 28.653337, 42.833164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749752, 29.002066, 43.028179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169880, -0.487991, 0.856157,
		0.984329, 0.042326, -0.171187,
		0.047300, 0.871822, 0.487534,
		39.763943, 29.263613, 43.174438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415314, 28.661133, 43.240879>,  <39.730831, 28.653337, 42.833164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415314, 28.661133, 43.240879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194107, 28.942902, 43.418850>,  <40.061382, 29.111963, 43.525631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194107, 28.942902, 43.418850>,  <40.415314, 28.661133, 43.240879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194107, 28.942902, 43.418850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339002, -0.297567, 0.892486,
		0.761081, 0.644394, -0.074240,
		-0.553021, 0.704422, 0.444924,
		40.028202, 29.154228, 43.552326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864738, 29.126894, 43.608414>,  <40.415314, 28.661133, 43.240879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864738, 29.126894, 43.608414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502769, 29.129692, 43.778622>,  <40.285587, 29.131371, 43.880745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502769, 29.129692, 43.778622>,  <40.864738, 29.126894, 43.608414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502769, 29.129692, 43.778622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394917, -0.358831, 0.845743,
		0.158603, 0.933376, 0.321952,
		-0.904923, 0.006994, 0.425518,
		40.231293, 29.131790, 43.906277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046368, 29.044748, 44.278622>,  <40.864738, 29.126894, 43.608414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046368, 29.044748, 44.278622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650642, 29.002909, 44.319241>,  <40.413208, 28.977804, 44.343613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650642, 29.002909, 44.319241>,  <41.046368, 29.044748, 44.278622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650642, 29.002909, 44.319241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138929, -0.465365, 0.874148,
		-0.044178, 0.878916, 0.474925,
		-0.989316, -0.104599, 0.101548,
		40.353848, 28.971529, 44.349705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866573, 29.252876, 44.923588>,  <41.046368, 29.044748, 44.278622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866573, 29.252876, 44.923588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592754, 28.978125, 44.825947>,  <40.428463, 28.813274, 44.767361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592754, 28.978125, 44.825947>,  <40.866573, 29.252876, 44.923588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592754, 28.978125, 44.825947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153347, -0.463063, 0.872959,
		-0.712652, 0.560153, 0.422321,
		-0.684552, -0.686878, -0.244105,
		40.387390, 28.772060, 44.752716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463154, 29.255877, 45.511803>,  <40.866573, 29.252876, 44.923588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463154, 29.255877, 45.511803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350597, 28.919376, 45.327145>,  <40.283062, 28.717476, 45.216351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350597, 28.919376, 45.327145>,  <40.463154, 29.255877, 45.511803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350597, 28.919376, 45.327145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070565, -0.461638, 0.884257,
		-0.956995, 0.281399, 0.070538,
		-0.281392, -0.841252, -0.461642,
		40.266178, 28.667000, 45.188652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902218, 29.062233, 45.863712>,  <40.463154, 29.255877, 45.511803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902218, 29.062233, 45.863712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031708, 28.735142, 45.673332>,  <40.109402, 28.538887, 45.559105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031708, 28.735142, 45.673332>,  <39.902218, 29.062233, 45.863712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031708, 28.735142, 45.673332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007120, -0.505127, 0.863016,
		-0.946125, -0.275989, -0.169343,
		0.323723, -0.817726, -0.475948,
		40.128826, 28.489824, 45.530548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483479, 28.449759, 46.106392>,  <39.902218, 29.062233, 45.863712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483479, 28.449759, 46.106392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814434, 28.275015, 45.965206>,  <40.013008, 28.170168, 45.880497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814434, 28.275015, 45.965206>,  <39.483479, 28.449759, 46.106392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814434, 28.275015, 45.965206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077967, -0.533031, 0.842496,
		-0.556195, -0.724589, -0.406961,
		0.827387, -0.436862, -0.352963,
		40.062649, 28.143957, 45.859318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289551, 27.733477, 46.213699>,  <39.483479, 28.449759, 46.106392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289551, 27.733477, 46.213699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681271, 27.814207, 46.207577>,  <39.916302, 27.862646, 46.203903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681271, 27.814207, 46.207577>,  <39.289551, 27.733477, 46.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681271, 27.814207, 46.207577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103342, -0.433545, 0.895187,
		0.174039, -0.878239, -0.445428,
		0.979302, 0.201828, -0.015305,
		39.975060, 27.874756, 46.202984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642746, 27.197937, 46.460197>,  <39.289551, 27.733477, 46.213699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642746, 27.197937, 46.460197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943279, 27.457672, 46.507278>,  <40.123600, 27.613512, 46.535526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943279, 27.457672, 46.507278>,  <39.642746, 27.197937, 46.460197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943279, 27.457672, 46.507278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097663, -0.285804, 0.953299,
		0.652651, -0.704754, -0.278151,
		0.751338, 0.649336, 0.117701,
		40.168682, 27.652473, 46.542587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118637, 26.832968, 46.900883>,  <39.642746, 27.197937, 46.460197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118637, 26.832968, 46.900883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227280, 27.216774, 46.930706>,  <40.292465, 27.447058, 46.948601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227280, 27.216774, 46.930706>,  <40.118637, 26.832968, 46.900883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227280, 27.216774, 46.930706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185551, -0.128225, 0.974232,
		0.944352, -0.250773, -0.212866,
		0.271606, 0.959516, 0.074558,
		40.308762, 27.504629, 46.953072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840977, 26.853043, 47.212597>,  <40.118637, 26.832968, 46.900883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840977, 26.853043, 47.212597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655262, 27.202831, 47.268791>,  <40.543835, 27.412704, 47.302509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655262, 27.202831, 47.268791>,  <40.840977, 26.853043, 47.212597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655262, 27.202831, 47.268791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152123, -0.077529, 0.985316,
		0.872523, 0.478841, -0.097031,
		-0.464288, 0.874471, 0.140488,
		40.515976, 27.465172, 47.310936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334084, 27.279987, 47.629162>,  <40.840977, 26.853043, 47.212597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334084, 27.279987, 47.629162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966022, 27.433784, 47.658791>,  <40.745186, 27.526062, 47.676567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966022, 27.433784, 47.658791>,  <41.334084, 27.279987, 47.629162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966022, 27.433784, 47.658791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098212, 0.043493, 0.994215,
		0.379047, 0.922102, -0.077782,
		-0.920151, 0.384493, 0.074075,
		40.689976, 27.549133, 47.681015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331306, 27.864017, 48.221878>,  <41.334084, 27.279987, 47.629162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331306, 27.864017, 48.221878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947235, 27.768160, 48.164421>,  <40.716793, 27.710646, 48.129948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947235, 27.768160, 48.164421>,  <41.331306, 27.864017, 48.221878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947235, 27.768160, 48.164421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146473, -0.006041, 0.989196,
		-0.237925, 0.970842, -0.029301,
		-0.960176, -0.239646, -0.143640,
		40.659184, 27.696266, 48.121330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982807, 28.398972, 48.554306>,  <41.331306, 27.864017, 48.221878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982807, 28.398972, 48.554306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722801, 28.095160, 48.544514>,  <40.566799, 27.912872, 48.538639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722801, 28.095160, 48.544514>,  <40.982807, 28.398972, 48.554306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722801, 28.095160, 48.544514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204651, 0.143932, 0.968195,
		-0.731849, 0.634349, -0.248996,
		-0.650012, -0.759530, -0.024483,
		40.527798, 27.867300, 48.537170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400940, 28.515930, 49.237286>,  <40.982807, 28.398972, 48.554306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400940, 28.515930, 49.237286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565727, 28.861088, 49.354382>,  <41.664600, 29.068182, 49.424641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565727, 28.861088, 49.354382>,  <41.400940, 28.515930, 49.237286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565727, 28.861088, 49.354382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554456, 0.492339, -0.670955,
		-0.723091, 0.114099, 0.681264,
		0.411968, 0.862892, 0.292743,
		41.689316, 29.119955, 49.442204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935562, 28.966124, 49.239922>,  <41.400940, 28.515930, 49.237286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935562, 28.966124, 49.239922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262646, 29.189360, 49.183517>,  <41.458897, 29.323301, 49.149673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262646, 29.189360, 49.183517>,  <40.935562, 28.966124, 49.239922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262646, 29.189360, 49.183517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449556, 0.466157, -0.761969,
		-0.359514, 0.686463, 0.632075,
		0.817710, 0.558092, -0.141013,
		41.507957, 29.356787, 49.141212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669048, 29.646332, 49.196377>,  <40.935562, 28.966124, 49.239922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669048, 29.646332, 49.196377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041740, 29.651787, 49.051216>,  <41.265354, 29.655060, 48.964119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041740, 29.651787, 49.051216>,  <40.669048, 29.646332, 49.196377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041740, 29.651787, 49.051216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280912, 0.660376, -0.696413,
		0.230152, 0.750811, 0.619123,
		0.931729, 0.013638, -0.362898,
		41.321259, 29.655878, 48.942348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934219, 30.330940, 49.281040>,  <40.669048, 29.646332, 49.196377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934219, 30.330940, 49.281040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073540, 30.128254, 48.965591>,  <41.157131, 30.006641, 48.776321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073540, 30.128254, 48.965591>,  <40.934219, 30.330940, 49.281040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073540, 30.128254, 48.965591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462097, 0.639160, -0.614769,
		0.815570, 0.578543, -0.011534,
		0.348298, -0.506717, -0.788623,
		41.178028, 29.976238, 48.729004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072815, 30.787018, 48.811745>,  <40.934219, 30.330940, 49.281040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072815, 30.787018, 48.811745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071163, 30.480249, 48.555054>,  <41.070171, 30.296188, 48.401039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071163, 30.480249, 48.555054>,  <41.072815, 30.787018, 48.811745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071163, 30.480249, 48.555054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365162, 0.598575, -0.712997,
		0.930935, 0.231392, -0.282521,
		-0.004128, -0.766919, -0.641730,
		41.069923, 30.250174, 48.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332626, 31.076174, 48.285152>,  <41.072815, 30.787018, 48.811745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332626, 31.076174, 48.285152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185139, 30.745001, 48.116119>,  <41.096645, 30.546297, 48.014702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185139, 30.745001, 48.116119>,  <41.332626, 31.076174, 48.285152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185139, 30.745001, 48.116119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266999, 0.529784, -0.805010,
		0.890371, -0.183992, -0.416397,
		-0.368716, -0.827935, -0.422579,
		41.074524, 30.496620, 47.989346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702274, 30.957483, 47.708992>,  <41.332626, 31.076174, 48.285152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702274, 30.957483, 47.708992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352242, 30.772072, 47.653328>,  <41.142220, 30.660826, 47.619930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352242, 30.772072, 47.653328>,  <41.702274, 30.957483, 47.708992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352242, 30.772072, 47.653328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189260, 0.592408, -0.783092,
		0.445424, -0.658936, -0.606136,
		-0.875087, -0.463526, -0.139163,
		41.089714, 30.633015, 47.611580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648186, 30.704765, 46.955395>,  <41.702274, 30.957483, 47.708992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648186, 30.704765, 46.955395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273285, 30.740704, 47.090149>,  <41.048344, 30.762266, 47.171001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273285, 30.740704, 47.090149>,  <41.648186, 30.704765, 46.955395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273285, 30.740704, 47.090149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198879, 0.655849, -0.728224,
		-0.286373, -0.749526, -0.596825,
		-0.937250, 0.089848, 0.336883,
		40.992111, 30.767658, 47.191216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177036, 30.567696, 46.340904>,  <41.648186, 30.704765, 46.955395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177036, 30.567696, 46.340904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983398, 30.785812, 46.614635>,  <40.867214, 30.916683, 46.778873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983398, 30.785812, 46.614635>,  <41.177036, 30.567696, 46.340904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983398, 30.785812, 46.614635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181460, 0.702514, -0.688147,
		-0.855991, -0.457309, -0.241137,
		-0.484098, 0.545291, 0.684329,
		40.838169, 30.949400, 46.819935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396389, 30.595772, 46.051838>,  <41.177036, 30.567696, 46.340904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396389, 30.595772, 46.051838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458717, 30.879681, 46.326630>,  <40.496117, 31.050026, 46.491505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458717, 30.879681, 46.326630>,  <40.396389, 30.595772, 46.051838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458717, 30.879681, 46.326630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458449, 0.667998, -0.586176,
		-0.874954, -0.223605, 0.429485,
		0.155823, 0.709774, 0.686979,
		40.505463, 31.092613, 46.532722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871346, 30.998640, 46.076897>,  <40.396389, 30.595772, 46.051838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871346, 30.998640, 46.076897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104729, 31.265108, 46.262711>,  <40.244759, 31.424990, 46.374199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104729, 31.265108, 46.262711>,  <39.871346, 30.998640, 46.076897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104729, 31.265108, 46.262711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374652, 0.728268, -0.573813,
		-0.720563, 0.160758, 0.674497,
		0.583459, 0.666170, 0.464534,
		40.279766, 31.464960, 46.402069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432316, 31.552736, 46.139908>,  <39.871346, 30.998640, 46.076897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432316, 31.552736, 46.139908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800003, 31.703283, 46.186172>,  <40.020615, 31.793612, 46.213932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800003, 31.703283, 46.186172>,  <39.432316, 31.552736, 46.139908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800003, 31.703283, 46.186172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216390, 0.728306, -0.650189,
		-0.328949, 0.572640, 0.750917,
		0.919221, 0.376370, 0.115662,
		40.075771, 31.816195, 46.220871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391743, 32.278660, 46.318089>,  <39.432316, 31.552736, 46.139908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391743, 32.278660, 46.318089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750557, 32.236698, 46.146358>,  <39.965847, 32.211521, 46.043320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750557, 32.236698, 46.146358>,  <39.391743, 32.278660, 46.318089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750557, 32.236698, 46.146358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184717, 0.793517, -0.579836,
		0.401501, 0.599439, 0.692438,
		0.897038, -0.104899, -0.429325,
		40.019669, 32.205227, 46.017563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520844, 32.974007, 46.192184>,  <39.391743, 32.278660, 46.318089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520844, 32.974007, 46.192184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785763, 32.776707, 45.966599>,  <39.944714, 32.658325, 45.831245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785763, 32.776707, 45.966599>,  <39.520844, 32.974007, 46.192184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785763, 32.776707, 45.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266195, 0.548698, -0.792509,
		0.700356, 0.675004, 0.232101,
		0.662300, -0.493254, -0.563967,
		39.984451, 32.628731, 45.797409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852306, 33.478889, 45.863934>,  <39.520844, 32.974007, 46.192184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852306, 33.478889, 45.863934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910419, 33.146057, 45.649822>,  <39.945290, 32.946358, 45.521355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910419, 33.146057, 45.649822>,  <39.852306, 33.478889, 45.863934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910419, 33.146057, 45.649822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314084, 0.474250, -0.822459,
		0.938213, 0.287614, -0.192444,
		0.145284, -0.832085, -0.535282,
		39.954006, 32.896431, 45.489239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356915, 33.582970, 45.185921>,  <39.852306, 33.478889, 45.863934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356915, 33.582970, 45.185921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148441, 33.251526, 45.104164>,  <40.023357, 33.052658, 45.055111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148441, 33.251526, 45.104164>,  <40.356915, 33.582970, 45.185921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148441, 33.251526, 45.104164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096032, 0.294907, -0.950688,
		0.848027, -0.475850, -0.233273,
		-0.521179, -0.828611, -0.204392,
		39.992088, 33.002941, 45.042847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644703, 33.265102, 44.623268>,  <40.356915, 33.582970, 45.185921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644703, 33.265102, 44.623268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278732, 33.103840, 44.631042>,  <40.059151, 33.007084, 44.635708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278732, 33.103840, 44.631042>,  <40.644703, 33.265102, 44.623268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278732, 33.103840, 44.631042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069455, 0.109824, -0.991521,
		0.397602, -0.908518, -0.128482,
		-0.914925, -0.403155, 0.019434,
		40.004253, 32.982895, 44.636871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647976, 32.708599, 44.190952>,  <40.644703, 33.265102, 44.623268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647976, 32.708599, 44.190952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252850, 32.764400, 44.218533>,  <40.015774, 32.797882, 44.235081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252850, 32.764400, 44.218533>,  <40.647976, 32.708599, 44.190952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252850, 32.764400, 44.218533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042333, 0.185497, -0.981732,
		-0.149745, -0.972692, -0.177332,
		-0.987818, 0.139502, 0.068954,
		39.956505, 32.806252, 44.239220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385162, 32.369255, 43.635944>,  <40.647976, 32.708599, 44.190952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385162, 32.369255, 43.635944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095577, 32.618515, 43.754307>,  <39.921825, 32.768070, 43.825325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095577, 32.618515, 43.754307>,  <40.385162, 32.369255, 43.635944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095577, 32.618515, 43.754307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145342, 0.281541, -0.948478,
		-0.674355, -0.729670, -0.113255,
		-0.723962, 0.623150, 0.295910,
		39.878387, 32.805458, 43.843079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844490, 32.248123, 43.161022>,  <40.385162, 32.369255, 43.635944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844490, 32.248123, 43.161022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767021, 32.606289, 43.321384>,  <39.720539, 32.821190, 43.417603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767021, 32.606289, 43.321384>,  <39.844490, 32.248123, 43.161022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767021, 32.606289, 43.321384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101367, 0.388193, -0.915986,
		-0.975816, -0.218038, 0.015585,
		-0.193670, 0.895414, 0.400906,
		39.708920, 32.874912, 43.441658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380043, 32.616558, 42.685894>,  <39.844490, 32.248123, 43.161022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380043, 32.616558, 42.685894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525688, 32.908833, 42.916901>,  <39.613075, 33.084198, 43.055504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525688, 32.908833, 42.916901>,  <39.380043, 32.616558, 42.685894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525688, 32.908833, 42.916901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331483, 0.477806, -0.813524,
		-0.870369, 0.487650, -0.068234,
		0.364112, 0.730684, 0.577515,
		39.634922, 33.128036, 43.090157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131374, 33.285393, 42.295444>,  <39.380043, 32.616558, 42.685894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131374, 33.285393, 42.295444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421398, 33.408863, 42.541698>,  <39.595413, 33.482944, 42.689449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421398, 33.408863, 42.541698>,  <39.131374, 33.285393, 42.295444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421398, 33.408863, 42.541698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359327, 0.593042, -0.720545,
		-0.587511, 0.743653, 0.319077,
		0.725062, 0.308675, 0.615634,
		39.638916, 33.501465, 42.726387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106209, 34.061665, 42.450649>,  <39.131374, 33.285393, 42.295444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106209, 34.061665, 42.450649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485775, 33.939510, 42.482376>,  <39.713516, 33.866219, 42.501411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485775, 33.939510, 42.482376>,  <39.106209, 34.061665, 42.450649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485775, 33.939510, 42.482376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270007, 0.655898, -0.704907,
		0.163249, 0.690315, 0.704851,
		0.948918, -0.305390, 0.079315,
		39.770451, 33.847893, 42.506172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480499, 34.591805, 42.291939>,  <39.106209, 34.061665, 42.450649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480499, 34.591805, 42.291939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745041, 34.292377, 42.272968>,  <39.903767, 34.112720, 42.261585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745041, 34.292377, 42.272968>,  <39.480499, 34.591805, 42.291939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745041, 34.292377, 42.272968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452428, 0.448547, -0.770788,
		0.598261, 0.488310, 0.635324,
		0.661357, -0.748571, -0.047423,
		39.943447, 34.067806, 42.258739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130337, 34.925354, 42.249081>,  <39.480499, 34.591805, 42.291939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130337, 34.925354, 42.249081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212952, 34.556992, 42.116852>,  <40.262520, 34.335976, 42.037514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212952, 34.556992, 42.116852>,  <40.130337, 34.925354, 42.249081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212952, 34.556992, 42.116852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472981, 0.389731, -0.790188,
		0.856523, 0.006846, 0.516063,
		0.206535, -0.920903, -0.330576,
		40.274914, 34.280720, 42.017677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769505, 34.933113, 42.039925>,  <40.130337, 34.925354, 42.249081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769505, 34.933113, 42.039925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636761, 34.612297, 41.841286>,  <40.557114, 34.419807, 41.722103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636761, 34.612297, 41.841286>,  <40.769505, 34.933113, 42.039925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636761, 34.612297, 41.841286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460079, 0.321962, -0.827446,
		0.823528, -0.503067, 0.262155,
		-0.331858, -0.802037, -0.496595,
		40.537205, 34.371685, 41.692307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377132, 34.519005, 41.755291>,  <40.769505, 34.933113, 42.039925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377132, 34.519005, 41.755291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079128, 34.386833, 41.523506>,  <40.900326, 34.307529, 41.384434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079128, 34.386833, 41.523506>,  <41.377132, 34.519005, 41.755291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079128, 34.386833, 41.523506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468996, 0.358262, -0.807274,
		0.474344, -0.873194, -0.111941,
		-0.745010, -0.330426, -0.579464,
		40.855625, 34.287704, 41.349667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696426, 34.177734, 41.192345>,  <41.377132, 34.519005, 41.755291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696426, 34.177734, 41.192345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326630, 34.283340, 41.082355>,  <41.104752, 34.346703, 41.016361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326630, 34.283340, 41.082355>,  <41.696426, 34.177734, 41.192345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326630, 34.283340, 41.082355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334298, 0.214893, -0.917641,
		-0.183181, -0.940275, -0.286927,
		-0.924494, 0.264014, -0.274968,
		41.049282, 34.362545, 40.999866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617657, 33.775688, 40.605404>,  <41.696426, 34.177734, 41.192345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617657, 33.775688, 40.605404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355099, 34.077145, 40.591763>,  <41.197563, 34.258018, 40.583576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355099, 34.077145, 40.591763>,  <41.617657, 33.775688, 40.605404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355099, 34.077145, 40.591763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276777, 0.198514, -0.940206,
		-0.701811, -0.626587, -0.338896,
		-0.656396, 0.753645, -0.034106,
		41.158180, 34.303238, 40.581532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245232, 33.764313, 39.996117>,  <41.617657, 33.775688, 40.605404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245232, 33.764313, 39.996117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179543, 34.148136, 40.087574>,  <41.140129, 34.378429, 40.142448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179543, 34.148136, 40.087574>,  <41.245232, 33.764313, 39.996117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179543, 34.148136, 40.087574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336852, 0.272413, -0.901289,
		-0.927125, -0.070996, -0.367966,
		-0.164227, 0.959558, 0.228645,
		41.130276, 34.436005, 40.156166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075249, 34.097538, 39.361614>,  <41.245232, 33.764313, 39.996117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075249, 34.097538, 39.361614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177231, 34.407284, 39.593258>,  <41.238419, 34.593132, 39.732243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177231, 34.407284, 39.593258>,  <41.075249, 34.097538, 39.361614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177231, 34.407284, 39.593258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396382, 0.462568, -0.793040,
		-0.881976, 0.431733, -0.189011,
		0.254951, 0.774362, 0.579105,
		41.253716, 34.639591, 39.766991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827251, 34.711975, 38.942944>,  <41.075249, 34.097538, 39.361614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827251, 34.711975, 38.942944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093307, 34.810905, 39.224773>,  <41.252941, 34.870262, 39.393871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093307, 34.810905, 39.224773>,  <40.827251, 34.711975, 38.942944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093307, 34.810905, 39.224773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400062, 0.678682, -0.615906,
		-0.630510, 0.691535, 0.352472,
		0.665137, 0.247324, 0.704573,
		41.292847, 34.885101, 39.436146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711201, 35.380840, 39.163322>,  <40.827251, 34.711975, 38.942944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711201, 35.380840, 39.163322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098572, 35.312786, 39.236202>,  <41.330994, 35.271954, 39.279930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098572, 35.312786, 39.236202>,  <40.711201, 35.380840, 39.163322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098572, 35.312786, 39.236202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249243, 0.646774, -0.720806,
		0.004793, 0.743463, 0.668760,
		0.968429, -0.170138, 0.182203,
		41.389099, 35.261745, 39.290863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964577, 35.952793, 39.022293>,  <40.711201, 35.380840, 39.163322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964577, 35.952793, 39.022293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288841, 35.718697, 39.015171>,  <41.483398, 35.578239, 39.010899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288841, 35.718697, 39.015171>,  <40.964577, 35.952793, 39.022293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288841, 35.718697, 39.015171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345715, 0.502976, -0.792147,
		0.472557, 0.636006, 0.610071,
		0.810661, -0.585245, -0.017808,
		41.532040, 35.543121, 39.009830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515987, 36.408775, 39.113560>,  <40.964577, 35.952793, 39.022293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515987, 36.408775, 39.113560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650181, 36.077187, 38.934563>,  <41.730698, 35.878231, 38.827164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650181, 36.077187, 38.934563>,  <41.515987, 36.408775, 39.113560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650181, 36.077187, 38.934563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387853, 0.554438, -0.736321,
		0.858500, 0.073461, 0.507525,
		0.335482, -0.828976, -0.447493,
		41.750824, 35.828495, 38.800316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142338, 36.579144, 38.792717>,  <41.515987, 36.408775, 39.113560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142338, 36.579144, 38.792717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102970, 36.221687, 38.617577>,  <42.079350, 36.007214, 38.512493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102970, 36.221687, 38.617577>,  <42.142338, 36.579144, 38.792717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102970, 36.221687, 38.617577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351033, 0.380529, -0.855554,
		0.931177, -0.237901, 0.276248,
		-0.098417, -0.893644, -0.437851,
		42.073444, 35.953594, 38.486221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827839, 36.278770, 38.537907>,  <42.142338, 36.579144, 38.792717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827839, 36.278770, 38.537907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535965, 36.102634, 38.328659>,  <42.360840, 35.996952, 38.203110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535965, 36.102634, 38.328659>,  <42.827839, 36.278770, 38.537907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535965, 36.102634, 38.328659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392628, 0.356532, -0.847778,
		0.559821, -0.824005, -0.087267,
		-0.729687, -0.440340, -0.523122,
		42.317059, 35.970531, 38.171722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245766, 35.960751, 37.925472>,  <42.827839, 36.278770, 38.537907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245766, 35.960751, 37.925472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865829, 35.960697, 37.800377>,  <42.637867, 35.960667, 37.725319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865829, 35.960697, 37.800377>,  <43.245766, 35.960751, 37.925472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865829, 35.960697, 37.800377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290757, 0.367898, -0.883240,
		0.115172, -0.929866, -0.349405,
		-0.949840, -0.000133, -0.312737,
		42.580879, 35.960655, 37.706554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206436, 35.678921, 37.235497>,  <43.245766, 35.960751, 37.925472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206436, 35.678921, 37.235497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870186, 35.894764, 37.254143>,  <42.668434, 36.024269, 37.265331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870186, 35.894764, 37.254143>,  <43.206436, 35.678921, 37.235497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870186, 35.894764, 37.254143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265257, 0.485212, -0.833191,
		-0.472211, -0.688039, -0.551017,
		-0.840628, 0.539604, 0.046616,
		42.617996, 36.056644, 37.268127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973736, 35.707531, 36.537941>,  <43.206436, 35.678921, 37.235497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973736, 35.707531, 36.537941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831985, 36.013165, 36.753567>,  <42.746933, 36.196545, 36.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831985, 36.013165, 36.753567>,  <42.973736, 35.707531, 36.537941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831985, 36.013165, 36.753567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304483, 0.639350, -0.706061,
		-0.884141, -0.086077, -0.459223,
		-0.354380, 0.764083, 0.539066,
		42.725670, 36.242390, 36.915287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520805, 36.143932, 36.089020>,  <42.973736, 35.707531, 36.537941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520805, 36.143932, 36.089020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640816, 36.372147, 36.394825>,  <42.712822, 36.509075, 36.578308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640816, 36.372147, 36.394825>,  <42.520805, 36.143932, 36.089020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640816, 36.372147, 36.394825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328368, 0.690683, -0.644307,
		-0.895634, 0.444347, 0.019874,
		0.300022, 0.570537, 0.764509,
		42.730824, 36.543308, 36.624176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203911, 36.535278, 36.018234>,  <42.520805, 36.143932, 36.089020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203911, 36.535278, 36.018234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332920, 36.671303, 35.664886>,  <43.410324, 36.752918, 35.452877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332920, 36.671303, 35.664886>,  <43.203911, 36.535278, 36.018234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332920, 36.671303, 35.664886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707833, 0.532962, 0.463600,
		0.628452, -0.774799, -0.068812,
		0.322523, 0.340058, -0.883368,
		43.429676, 36.773319, 35.399876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982536, 36.531506, 35.980606>,  <43.203911, 36.535278, 36.018234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982536, 36.531506, 35.980606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860813, 36.820557, 35.732349>,  <43.787781, 36.993988, 35.583393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860813, 36.820557, 35.732349>,  <43.982536, 36.531506, 35.980606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860813, 36.820557, 35.732349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739112, 0.590142, 0.324725,
		0.600926, -0.359911, -0.713689,
		-0.304306, 0.722631, -0.620646,
		43.769520, 37.037346, 35.546154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475647, 36.629868, 35.371365>,  <43.982536, 36.531506, 35.980606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475647, 36.629868, 35.371365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275665, 36.958279, 35.481609>,  <44.155678, 37.155327, 35.547756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275665, 36.958279, 35.481609>,  <44.475647, 36.629868, 35.371365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275665, 36.958279, 35.481609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859116, 0.429960, 0.277586,
		0.109406, 0.375559, -0.920318,
		-0.499950, 0.821030, 0.275609,
		44.125679, 37.204586, 35.564293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770340, 37.162361, 34.858643>,  <44.475647, 36.629868, 35.371365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770340, 37.162361, 34.858643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613525, 37.285618, 35.205364>,  <44.519436, 37.359573, 35.413399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613525, 37.285618, 35.205364>,  <44.770340, 37.162361, 34.858643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613525, 37.285618, 35.205364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865953, 0.441666, 0.234642,
		-0.310535, 0.842602, -0.439989,
		-0.392038, 0.308145, 0.866806,
		44.495914, 37.378063, 35.465405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043655, 37.793312, 34.927505>,  <44.770340, 37.162361, 34.858643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043655, 37.793312, 34.927505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939270, 37.678917, 35.296310>,  <44.876637, 37.610279, 35.517593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939270, 37.678917, 35.296310>,  <45.043655, 37.793312, 34.927505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939270, 37.678917, 35.296310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818770, 0.440385, 0.368343,
		-0.511382, 0.851042, 0.119231,
		-0.260968, -0.285987, 0.922013,
		44.860981, 37.593121, 35.572914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364468, 37.357651, 35.535389>,  <45.043655, 37.793312, 34.927505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364468, 37.357651, 35.535389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667500, 37.106075, 35.465530>,  <45.849319, 36.955128, 35.423615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667500, 37.106075, 35.465530>,  <45.364468, 37.357651, 35.535389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667500, 37.106075, 35.465530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270701, 0.546193, -0.792713,
		0.593961, 0.553268, 0.584042,
		0.757582, -0.628941, -0.174648,
		45.894775, 36.917393, 35.413136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.969398, 37.719250, 35.450745>,  <45.364468, 37.357651, 35.535389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.969398, 37.719250, 35.450745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974873, 37.378910, 35.240654>,  <45.978157, 37.174706, 35.114601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974873, 37.378910, 35.240654>,  <45.969398, 37.719250, 35.450745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974873, 37.378910, 35.240654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014480, 0.525052, -0.850947,
		0.999802, 0.019254, -0.005133,
		0.013689, -0.850852, -0.525227,
		45.978981, 37.123653, 35.083088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587917, 37.730560, 34.985306>,  <45.969398, 37.719250, 35.450745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587917, 37.730560, 34.985306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336399, 37.459908, 34.832058>,  <46.185486, 37.297516, 34.740108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336399, 37.459908, 34.832058>,  <46.587917, 37.730560, 34.985306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336399, 37.459908, 34.832058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182354, 0.350652, -0.918581,
		0.755884, -0.647465, -0.097102,
		-0.628798, -0.676633, -0.383120,
		46.147758, 37.256916, 34.717121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970634, 37.542286, 34.390888>,  <46.587917, 37.730560, 34.985306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970634, 37.542286, 34.390888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589432, 37.446110, 34.317169>,  <46.360710, 37.388405, 34.272938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589432, 37.446110, 34.317169>,  <46.970634, 37.542286, 34.390888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589432, 37.446110, 34.317169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157119, 0.127849, -0.979269,
		0.259015, -0.962208, -0.084064,
		-0.953008, -0.240437, -0.184296,
		46.303528, 37.373978, 34.261879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918552, 37.005989, 33.930241>,  <46.970634, 37.542286, 34.390888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918552, 37.005989, 33.930241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537434, 37.125336, 33.907768>,  <46.308762, 37.196945, 33.894283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537434, 37.125336, 33.907768>,  <46.918552, 37.005989, 33.930241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537434, 37.125336, 33.907768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093793, 0.113252, -0.989129,
		-0.288764, -0.947707, -0.135891,
		-0.952795, 0.298370, -0.056185,
		46.251595, 37.214848, 33.890911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582237, 36.575336, 33.514137>,  <46.918552, 37.005989, 33.930241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582237, 36.575336, 33.514137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381344, 36.920975, 33.500885>,  <46.260807, 37.128357, 33.492935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381344, 36.920975, 33.500885>,  <46.582237, 36.575336, 33.514137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381344, 36.920975, 33.500885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093017, 0.015894, -0.995538,
		-0.859713, -0.503077, -0.088358,
		-0.502237, 0.864096, -0.033130,
		46.230671, 37.180202, 33.490948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323490, 36.534748, 32.938255>,  <46.582237, 36.575336, 33.514137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323490, 36.534748, 32.938255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277424, 36.926746, 33.003185>,  <46.249783, 37.161945, 33.042145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277424, 36.926746, 33.003185>,  <46.323490, 36.534748, 32.938255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277424, 36.926746, 33.003185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176465, 0.180998, -0.967522,
		-0.977546, -0.082780, -0.193780,
		-0.115166, 0.979993, 0.162326,
		46.242874, 37.220745, 33.051884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837372, 36.902882, 32.380680>,  <46.323490, 36.534748, 32.938255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837372, 36.902882, 32.380680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051105, 37.207722, 32.526936>,  <46.179344, 37.390625, 32.614689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051105, 37.207722, 32.526936>,  <45.837372, 36.902882, 32.380680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051105, 37.207722, 32.526936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145812, 0.342983, -0.927955,
		-0.832601, 0.549155, 0.072145,
		0.534336, 0.762097, 0.365642,
		46.211407, 37.436352, 32.636627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524529, 37.395329, 32.049732>,  <45.837372, 36.902882, 32.380680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524529, 37.395329, 32.049732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882652, 37.542187, 32.150631>,  <46.097527, 37.630302, 32.211170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882652, 37.542187, 32.150631>,  <45.524529, 37.395329, 32.049732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882652, 37.542187, 32.150631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163589, 0.255701, -0.952815,
		-0.414321, 0.894327, 0.168870,
		0.895308, 0.367146, 0.252244,
		46.151245, 37.652332, 32.226303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511024, 38.082218, 31.790930>,  <45.524529, 37.395329, 32.049732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511024, 38.082218, 31.790930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901726, 38.007023, 31.832138>,  <46.136147, 37.961906, 31.856863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901726, 38.007023, 31.832138>,  <45.511024, 38.082218, 31.790930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901726, 38.007023, 31.832138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161008, 0.326058, -0.931538,
		0.141526, 0.926470, 0.348745,
		0.976753, -0.187988, 0.103023,
		46.194752, 37.950626, 31.863045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857014, 38.737690, 31.681870>,  <45.511024, 38.082218, 31.790930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857014, 38.737690, 31.681870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128136, 38.454346, 31.603064>,  <46.290810, 38.284340, 31.555780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128136, 38.454346, 31.603064>,  <45.857014, 38.737690, 31.681870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128136, 38.454346, 31.603064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138257, 0.385974, -0.912091,
		0.722129, 0.590978, 0.359549,
		0.677802, -0.708357, -0.197016,
		46.331474, 38.241840, 31.543959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466209, 39.013565, 31.342918>,  <45.857014, 38.737690, 31.681870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466209, 39.013565, 31.342918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528885, 38.630310, 31.247070>,  <46.566490, 38.400356, 31.189562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528885, 38.630310, 31.247070>,  <46.466209, 39.013565, 31.342918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528885, 38.630310, 31.247070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025649, 0.246483, -0.968808,
		0.987315, 0.145655, 0.063196,
		0.156689, -0.958139, -0.239620,
		46.575890, 38.342869, 31.175184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889217, 39.085312, 30.736403>,  <46.466209, 39.013565, 31.342918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889217, 39.085312, 30.736403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719780, 38.722980, 30.739271>,  <46.618118, 38.505581, 30.740993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719780, 38.722980, 30.739271>,  <46.889217, 39.085312, 30.736403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719780, 38.722980, 30.739271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098383, 0.038132, -0.994418,
		0.900495, -0.421934, -0.105270,
		-0.423592, -0.905825, 0.007173,
		46.592701, 38.451233, 30.741423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.207142, 38.812424, 30.156029>,  <46.889217, 39.085312, 30.736403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.207142, 38.812424, 30.156029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883427, 38.589188, 30.229336>,  <46.689198, 38.455246, 30.273319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883427, 38.589188, 30.229336>,  <47.207142, 38.812424, 30.156029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883427, 38.589188, 30.229336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230140, 0.014194, -0.973054,
		0.540452, -0.829658, -0.139926,
		-0.809288, -0.558092, 0.183267,
		46.640640, 38.421761, 30.284315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116920, 38.551632, 29.543482>,  <47.207142, 38.812424, 30.156029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116920, 38.551632, 29.543482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.766323, 38.486897, 29.724842>,  <46.555965, 38.448055, 29.833658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.766323, 38.486897, 29.724842>,  <47.116920, 38.551632, 29.543482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.766323, 38.486897, 29.724842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446572, -0.078472, -0.891300,
		0.179828, -0.983692, -0.003493,
		-0.876490, -0.161840, 0.453401,
		46.503376, 38.438343, 29.860863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802029, 38.059155, 29.074373>,  <47.116920, 38.551632, 29.543482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802029, 38.059155, 29.074373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521271, 38.261646, 29.274805>,  <46.352818, 38.383141, 29.395063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521271, 38.261646, 29.274805>,  <46.802029, 38.059155, 29.074373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521271, 38.261646, 29.274805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630159, -0.113395, -0.768142,
		-0.332037, -0.854911, 0.398596,
		-0.701891, 0.506230, 0.501078,
		46.310703, 38.413513, 29.425129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257992, 37.812668, 28.824915>,  <46.802029, 38.059155, 29.074373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257992, 37.812668, 28.824915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103683, 38.130924, 29.011736>,  <46.011101, 38.321877, 29.123829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103683, 38.130924, 29.011736>,  <46.257992, 37.812668, 28.824915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103683, 38.130924, 29.011736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721413, 0.055428, -0.690284,
		-0.575106, -0.603227, 0.552603,
		-0.385768, 0.795641, 0.467053,
		45.987953, 38.369617, 29.151852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553463, 37.663151, 28.935946>,  <46.257992, 37.812668, 28.824915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553463, 37.663151, 28.935946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605106, 38.059101, 28.912336>,  <45.636093, 38.296669, 28.898170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605106, 38.059101, 28.912336>,  <45.553463, 37.663151, 28.935946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605106, 38.059101, 28.912336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619629, 0.034060, -0.784155,
		-0.774204, 0.137809, 0.617752,
		0.129104, 0.989873, -0.059022,
		45.643837, 38.356064, 28.894630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919899, 37.990662, 28.898849>,  <45.553463, 37.663151, 28.935946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919899, 37.990662, 28.898849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141438, 38.301018, 28.778021>,  <45.274361, 38.487232, 28.705523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141438, 38.301018, 28.778021>,  <44.919899, 37.990662, 28.898849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141438, 38.301018, 28.778021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678314, 0.210074, -0.704101,
		-0.482845, 0.594867, 0.642645,
		0.553850, 0.775888, -0.302074,
		45.307594, 38.533783, 28.687399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499130, 38.447449, 28.854137>,  <44.919899, 37.990662, 28.898849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499130, 38.447449, 28.854137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794018, 38.546303, 28.602602>,  <44.970951, 38.605614, 28.451681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794018, 38.546303, 28.602602>,  <44.499130, 38.447449, 28.854137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794018, 38.546303, 28.602602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643505, -0.026862, -0.764970,
		-0.205941, 0.968609, 0.139227,
		0.737217, 0.247132, -0.628837,
		45.015182, 38.620441, 28.413950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115585, 38.766407, 28.393404>,  <44.499130, 38.447449, 28.854137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115585, 38.766407, 28.393404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454746, 38.730438, 28.184416>,  <44.658241, 38.708858, 28.059023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454746, 38.730438, 28.184416>,  <44.115585, 38.766407, 28.393404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454746, 38.730438, 28.184416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518979, 0.060477, -0.852645,
		0.108267, 0.994111, 0.004612,
		0.847903, -0.089919, -0.522471,
		44.709118, 38.703461, 28.027674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900463, 39.086357, 27.882490>,  <44.115585, 38.766407, 28.393404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900463, 39.086357, 27.882490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236195, 38.925686, 27.735964>,  <44.437634, 38.829285, 27.648048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236195, 38.925686, 27.735964>,  <43.900463, 39.086357, 27.882490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236195, 38.925686, 27.735964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391418, 0.021095, -0.919971,
		0.377256, 0.915540, -0.139516,
		0.839327, -0.401673, -0.366317,
		44.487991, 38.805183, 27.626068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268723, 39.388454, 27.278994>,  <43.900463, 39.086357, 27.882490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268723, 39.388454, 27.278994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359001, 39.000935, 27.238031>,  <44.413170, 38.768421, 27.213453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359001, 39.000935, 27.238031>,  <44.268723, 39.388454, 27.278994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359001, 39.000935, 27.238031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530765, -0.034135, -0.846831,
		0.816914, 0.245482, -0.521910,
		0.225697, -0.968800, -0.102408,
		44.426712, 38.710293, 27.207310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313282, 39.376934, 26.591232>,  <44.268723, 39.388454, 27.278994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313282, 39.376934, 26.591232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247181, 39.003815, 26.719343>,  <44.207520, 38.779942, 26.796209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247181, 39.003815, 26.719343>,  <44.313282, 39.376934, 26.591232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247181, 39.003815, 26.719343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568433, -0.175295, -0.803838,
		0.805962, -0.314892, -0.501266,
		-0.165252, -0.932800, 0.320276,
		44.197605, 38.723976, 26.815426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383301, 38.990131, 26.016964>,  <44.313282, 39.376934, 26.591232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383301, 38.990131, 26.016964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161156, 38.838699, 26.313139>,  <44.027870, 38.747841, 26.490845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161156, 38.838699, 26.313139>,  <44.383301, 38.990131, 26.016964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161156, 38.838699, 26.313139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763199, -0.121615, -0.634616,
		0.330303, -0.917542, -0.221395,
		-0.555362, -0.378584, 0.740437,
		43.994549, 38.725124, 26.535271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032406, 38.306980, 25.817982>,  <44.383301, 38.990131, 26.016964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032406, 38.306980, 25.817982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833435, 38.536026, 26.078651>,  <43.714054, 38.673454, 26.235054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833435, 38.536026, 26.078651>,  <44.032406, 38.306980, 25.817982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833435, 38.536026, 26.078651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706287, 0.168869, -0.687490,
		-0.503715, -0.802243, 0.320432,
		-0.497423, 0.572616, 0.651676,
		43.684208, 38.707809, 26.274155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291439, 38.174339, 25.819292>,  <44.032406, 38.306980, 25.817982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291439, 38.174339, 25.819292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398830, 38.554554, 25.881765>,  <43.463264, 38.782684, 25.919249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398830, 38.554554, 25.881765>,  <43.291439, 38.174339, 25.819292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398830, 38.554554, 25.881765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720383, 0.305763, -0.622541,
		-0.639505, 0.054628, 0.766844,
		0.268480, 0.950539, 0.156184,
		43.479374, 38.839714, 25.928621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731853, 38.616428, 26.211292>,  <43.291439, 38.174339, 25.819292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731853, 38.616428, 26.211292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680412, 38.558487, 26.603716>,  <42.649548, 38.523724, 26.839170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680412, 38.558487, 26.603716>,  <42.731853, 38.616428, 26.211292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680412, 38.558487, 26.603716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495054, 0.866571, 0.063055,
		-0.859292, -0.477570, -0.183151,
		-0.128601, -0.144852, 0.981061,
		42.641830, 38.515030, 26.898033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051735, 38.705608, 26.432802>,  <42.731853, 38.616428, 26.211292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051735, 38.705608, 26.432802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243385, 38.760098, 26.779646>,  <42.358376, 38.792789, 26.987753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243385, 38.760098, 26.779646>,  <42.051735, 38.705608, 26.432802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243385, 38.760098, 26.779646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526114, 0.835326, 0.159480,
		-0.702595, -0.532610, 0.471897,
		0.479129, 0.136222, 0.867109,
		42.387123, 38.800964, 27.039780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535236, 38.775978, 26.934326>,  <42.051735, 38.705608, 26.432802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535236, 38.775978, 26.934326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855381, 38.984699, 27.052412>,  <42.047466, 39.109932, 27.123264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855381, 38.984699, 27.052412>,  <41.535236, 38.775978, 26.934326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855381, 38.984699, 27.052412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598826, 0.719499, 0.351751,
		-0.028864, -0.458309, 0.888324,
		0.800359, 0.521798, 0.295215,
		42.095490, 39.141239, 27.140976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701878, 38.970890, 27.603516>,  <41.535236, 38.775978, 26.934326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701878, 38.970890, 27.603516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433064, 39.258373, 27.532164>,  <41.271774, 39.430862, 27.489353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433064, 39.258373, 27.532164>,  <41.701878, 38.970890, 27.603516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433064, 39.258373, 27.532164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052702, -0.286695, -0.956571,
		-0.738639, -0.633452, 0.230547,
		-0.672039, 0.718711, -0.178380,
		41.231453, 39.473988, 27.478649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266254, 38.484627, 28.044641>,  <41.701878, 38.970890, 27.603516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266254, 38.484627, 28.044641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372280, 38.752712, 28.321928>,  <41.435894, 38.913563, 28.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372280, 38.752712, 28.321928>,  <41.266254, 38.484627, 28.044641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372280, 38.752712, 28.321928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382584, -0.733022, 0.562413,
		0.885082, 0.116138, -0.450713,
		0.265065, 0.670217, 0.693217,
		41.451801, 38.953777, 28.529894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099602, 38.566296, 28.146685>,  <41.266254, 38.484627, 28.044641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099602, 38.566296, 28.146685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846352, 38.623402, 28.450993>,  <41.694401, 38.657665, 28.633577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846352, 38.623402, 28.450993>,  <42.099602, 38.566296, 28.146685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846352, 38.623402, 28.450993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506764, -0.666476, 0.546808,
		0.585097, 0.731730, 0.349619,
		-0.633128, 0.142761, 0.760768,
		41.656414, 38.666229, 28.679222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554134, 38.562805, 28.663504>,  <42.099602, 38.566296, 28.146685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554134, 38.562805, 28.663504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209297, 38.524849, 28.862616>,  <42.002396, 38.502075, 28.982082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209297, 38.524849, 28.862616>,  <42.554134, 38.562805, 28.663504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209297, 38.524849, 28.862616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462570, -0.548476, 0.696566,
		0.206926, 0.830765, 0.516730,
		-0.862097, -0.094886, 0.497781,
		41.950668, 38.496384, 29.011950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567646, 38.848118, 29.390875>,  <42.554134, 38.562805, 28.663504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567646, 38.848118, 29.390875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283527, 38.566559, 29.390640>,  <42.113056, 38.397621, 29.390499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283527, 38.566559, 29.390640>,  <42.567646, 38.848118, 29.390875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283527, 38.566559, 29.390640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541857, -0.547314, 0.637840,
		-0.449297, 0.452739, 0.770169,
		-0.710299, -0.703900, -0.000587,
		42.070438, 38.355389, 29.390465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527668, 38.709282, 30.060116>,  <42.567646, 38.848118, 29.390875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527668, 38.709282, 30.060116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353451, 38.397923, 29.879274>,  <42.248920, 38.211105, 29.770769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353451, 38.397923, 29.879274>,  <42.527668, 38.709282, 30.060116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353451, 38.397923, 29.879274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271398, -0.592422, 0.758538,
		-0.858281, 0.207675, 0.469281,
		-0.435541, -0.778401, -0.452102,
		42.222790, 38.164402, 29.743643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132076, 38.214512, 30.639297>,  <42.527668, 38.709282, 30.060116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132076, 38.214512, 30.639297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199360, 37.988552, 30.316162>,  <42.239731, 37.852978, 30.122282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199360, 37.988552, 30.316162>,  <42.132076, 38.214512, 30.639297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199360, 37.988552, 30.316162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348888, -0.732351, 0.584755,
		-0.921946, -0.380203, 0.073899,
		0.168206, -0.564895, -0.807837,
		42.249821, 37.819084, 30.073811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951607, 37.500523, 30.878958>,  <42.132076, 38.214512, 30.639297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951607, 37.500523, 30.878958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157829, 37.447861, 30.540287>,  <42.281563, 37.416264, 30.337084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157829, 37.447861, 30.540287>,  <41.951607, 37.500523, 30.878958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157829, 37.447861, 30.540287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560273, -0.695821, 0.449363,
		-0.648299, -0.706045, -0.284973,
		0.515560, -0.131658, -0.846678,
		42.312496, 37.408363, 30.286283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098606, 36.860939, 30.845537>,  <41.951607, 37.500523, 30.878958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098606, 36.860939, 30.845537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367317, 37.001770, 30.584846>,  <42.528545, 37.086269, 30.428432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367317, 37.001770, 30.584846>,  <42.098606, 36.860939, 30.845537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367317, 37.001770, 30.584846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711967, -0.549763, 0.436879,
		-0.204481, -0.757497, -0.619988,
		0.671782, 0.352078, -0.651729,
		42.568851, 37.107395, 30.389328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387913, 36.289307, 30.597288>,  <42.098606, 36.860939, 30.845537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387913, 36.289307, 30.597288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669739, 36.557480, 30.504244>,  <42.838833, 36.718384, 30.448418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669739, 36.557480, 30.504244>,  <42.387913, 36.289307, 30.597288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669739, 36.557480, 30.504244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698548, -0.597490, 0.393746,
		0.124998, -0.439909, -0.889300,
		0.704561, 0.670437, -0.232612,
		42.881107, 36.758610, 30.434460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969685, 35.893833, 30.302868>,  <42.387913, 36.289307, 30.597288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969685, 35.893833, 30.302868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128384, 36.231213, 30.447744>,  <43.223602, 36.433640, 30.534670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128384, 36.231213, 30.447744>,  <42.969685, 35.893833, 30.302868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128384, 36.231213, 30.447744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731069, -0.528953, 0.430985,
		0.555097, 0.093796, -0.826480,
		0.396744, 0.843452, 0.362191,
		43.247406, 36.484249, 30.556402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596325, 35.786015, 30.083450>,  <42.969685, 35.893833, 30.302868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596325, 35.786015, 30.083450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599201, 36.016541, 30.410328>,  <43.600929, 36.154858, 30.606455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599201, 36.016541, 30.410328>,  <43.596325, 35.786015, 30.083450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599201, 36.016541, 30.410328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773217, -0.521418, 0.360914,
		0.634101, 0.629273, -0.449368,
		0.007195, 0.576315, 0.817196,
		43.601360, 36.189434, 30.655487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261478, 35.473885, 30.521271>,  <43.596325, 35.786015, 30.083450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261478, 35.473885, 30.521271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113579, 35.758533, 30.760227>,  <44.024837, 35.929325, 30.903601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113579, 35.758533, 30.760227>,  <44.261478, 35.473885, 30.521271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113579, 35.758533, 30.760227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661819, -0.249556, 0.706907,
		0.652136, 0.656742, -0.378695,
		-0.369749, 0.711626, 0.597389,
		44.002655, 35.972023, 30.939444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855961, 35.898003, 30.828075>,  <44.261478, 35.473885, 30.521271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855961, 35.898003, 30.828075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528957, 35.909069, 31.058178>,  <44.332756, 35.915707, 31.196239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528957, 35.909069, 31.058178>,  <44.855961, 35.898003, 30.828075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528957, 35.909069, 31.058178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557369, -0.213466, 0.802354,
		0.144993, 0.976559, 0.159091,
		-0.817506, 0.027663, 0.575255,
		44.283707, 35.917370, 31.230755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108150, 36.167553, 31.386482>,  <44.855961, 35.898003, 30.828075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108150, 36.167553, 31.386482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761753, 36.000843, 31.497007>,  <44.553913, 35.900818, 31.563322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761753, 36.000843, 31.497007>,  <45.108150, 36.167553, 31.386482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761753, 36.000843, 31.497007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433158, -0.349126, 0.830954,
		-0.249854, 0.839290, 0.482872,
		-0.865995, -0.416777, 0.276314,
		44.501953, 35.875809, 31.579903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944656, 36.457069, 32.135403>,  <45.108150, 36.167553, 31.386482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944656, 36.457069, 32.135403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740692, 36.116596, 32.085644>,  <44.618313, 35.912312, 32.055786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740692, 36.116596, 32.085644>,  <44.944656, 36.457069, 32.135403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740692, 36.116596, 32.085644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507705, -0.414526, 0.755251,
		-0.694426, 0.321952, 0.643522,
		-0.509910, -0.851185, -0.124401,
		44.587719, 35.861240, 32.048325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840588, 36.266376, 32.879932>,  <44.944656, 36.457069, 32.135403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840588, 36.266376, 32.879932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783546, 35.931511, 32.668716>,  <44.749321, 35.730591, 32.541988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783546, 35.931511, 32.668716>,  <44.840588, 36.266376, 32.879932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783546, 35.931511, 32.668716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584509, -0.501759, 0.637642,
		-0.798758, -0.217716, 0.560879,
		-0.142601, -0.837161, -0.528041,
		44.740765, 35.680363, 32.510303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702316, 35.838146, 33.412346>,  <44.840588, 36.266376, 32.879932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702316, 35.838146, 33.412346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772289, 35.594570, 33.102871>,  <44.814274, 35.448425, 32.917187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772289, 35.594570, 33.102871>,  <44.702316, 35.838146, 33.412346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772289, 35.594570, 33.102871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440332, -0.654449, 0.614658,
		-0.880628, -0.448203, 0.153651,
		0.174935, -0.608943, -0.773684,
		44.824768, 35.411888, 32.870766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623211, 35.011711, 33.688339>,  <44.702316, 35.838146, 33.412346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623211, 35.011711, 33.688339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836384, 34.991421, 33.350487>,  <44.964287, 34.979248, 33.147774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836384, 34.991421, 33.350487>,  <44.623211, 35.011711, 33.688339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836384, 34.991421, 33.350487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546145, -0.741814, 0.389149,
		-0.646301, -0.668684, -0.367636,
		0.532935, -0.050724, -0.844634,
		44.996265, 34.976204, 33.097095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816921, 34.300930, 33.655182>,  <44.623211, 35.011711, 33.688339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816921, 34.300930, 33.655182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069054, 34.506630, 33.422554>,  <45.220333, 34.630051, 33.282978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069054, 34.506630, 33.422554>,  <44.816921, 34.300930, 33.655182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069054, 34.506630, 33.422554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771556, -0.332089, 0.542603,
		0.085901, -0.790737, -0.606100,
		0.630335, 0.514250, -0.581571,
		45.258156, 34.660904, 33.248081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311707, 33.786961, 33.406994>,  <44.816921, 34.300930, 33.655182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311707, 33.786961, 33.406994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496696, 34.140739, 33.382145>,  <45.607693, 34.353008, 33.367233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496696, 34.140739, 33.382145>,  <45.311707, 33.786961, 33.406994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496696, 34.140739, 33.382145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750599, -0.353265, 0.558395,
		0.471927, -0.304876, -0.827246,
		0.462479, 0.884451, -0.062124,
		45.635441, 34.406075, 33.363506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987862, 33.649025, 33.422077>,  <45.311707, 33.786961, 33.406994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987862, 33.649025, 33.422077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049660, 34.042633, 33.457470>,  <46.086739, 34.278797, 33.478706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049660, 34.042633, 33.457470>,  <45.987862, 33.649025, 33.422077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049660, 34.042633, 33.457470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784460, -0.176616, 0.594500,
		0.600629, -0.022438, -0.799213,
		0.154493, 0.984024, 0.088479,
		46.096008, 34.337841, 33.484013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714581, 33.738258, 33.249767>,  <45.987862, 33.649025, 33.422077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714581, 33.738258, 33.249767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577782, 34.038498, 33.475914>,  <46.495701, 34.218643, 33.611603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577782, 34.038498, 33.475914>,  <46.714581, 33.738258, 33.249767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577782, 34.038498, 33.475914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725230, -0.171761, 0.666738,
		0.597562, 0.638042, -0.485616,
		-0.341997, 0.750600, 0.565365,
		46.475182, 34.263680, 33.645523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.247948, 34.265903, 33.462101>,  <46.714581, 33.738258, 33.249767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.247948, 34.265903, 33.462101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983479, 34.293072, 33.760963>,  <46.824799, 34.309372, 33.940281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983479, 34.293072, 33.760963>,  <47.247948, 34.265903, 33.462101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983479, 34.293072, 33.760963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749867, 0.091119, 0.655284,
		-0.023571, 0.993521, -0.111179,
		-0.661169, 0.067924, 0.747156,
		46.785130, 34.313450, 33.985111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433811, 34.904057, 33.706970>,  <47.247948, 34.265903, 33.462101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433811, 34.904057, 33.706970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262001, 34.665909, 33.978573>,  <47.158916, 34.523022, 34.141533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262001, 34.665909, 33.978573>,  <47.433811, 34.904057, 33.706970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262001, 34.665909, 33.978573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561713, 0.412598, 0.717106,
		-0.707099, 0.689418, 0.157206,
		-0.429523, -0.595370, 0.679003,
		47.133144, 34.487297, 34.182274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287956, 35.253208, 34.280357>,  <47.433811, 34.904057, 33.706970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287956, 35.253208, 34.280357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306602, 34.878021, 34.417789>,  <47.317791, 34.652908, 34.500248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306602, 34.878021, 34.417789>,  <47.287956, 35.253208, 34.280357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.306602, 34.878021, 34.417789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510355, 0.318040, 0.798992,
		-0.858699, 0.138107, 0.493520,
		0.046613, -0.937964, 0.343584,
		47.320587, 34.596630, 34.520866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330032, 35.282413, 34.910606>,  <47.287956, 35.253208, 34.280357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330032, 35.282413, 34.910606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496307, 34.926449, 34.835491>,  <47.596073, 34.712872, 34.790424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496307, 34.926449, 34.835491>,  <47.330032, 35.282413, 34.910606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.496307, 34.926449, 34.835491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738961, 0.210094, 0.640153,
		-0.530227, -0.404869, 0.744943,
		0.415687, -0.889911, -0.187785,
		47.621014, 34.659477, 34.779156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.640411, 35.164646, 46.104618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.338768, 34.926720, 45.993252>,  <38.157780, 34.783962, 45.926434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.338768, 34.926720, 45.993252>,  <38.640411, 35.164646, 46.104618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338768, 34.926720, 45.993252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037355, 0.462088, -0.886047,
		0.655685, -0.657777, -0.370684,
		-0.754110, -0.594815, -0.278412,
		38.112534, 34.748276, 45.909729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838989, 34.704926, 45.486828>,  <38.640411, 35.164646, 46.104618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838989, 34.704926, 45.486828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445309, 34.775089, 45.496479>,  <38.209103, 34.817188, 45.502270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445309, 34.775089, 45.496479>,  <38.838989, 34.704926, 45.486828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445309, 34.775089, 45.496479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043751, 0.372944, -0.926822,
		-0.171572, -0.911122, -0.374726,
		-0.984199, 0.175411, 0.024124,
		38.150047, 34.827713, 45.503716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604588, 34.689129, 44.788570>,  <38.838989, 34.704926, 45.486828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604588, 34.689129, 44.788570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315109, 34.881729, 44.986324>,  <38.141422, 34.997288, 45.104977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315109, 34.881729, 44.986324>,  <38.604588, 34.689129, 44.788570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315109, 34.881729, 44.986324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163168, 0.576691, -0.800502,
		-0.670548, -0.659992, -0.338787,
		-0.723700, 0.481496, 0.494388,
		38.098000, 35.026176, 45.134640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123852, 34.737534, 44.341221>,  <38.604588, 34.689129, 44.788570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123852, 34.737534, 44.341221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014008, 35.023273, 44.598682>,  <37.948101, 35.194717, 44.753159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014008, 35.023273, 44.598682>,  <38.123852, 34.737534, 44.341221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014008, 35.023273, 44.598682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236989, 0.598459, -0.765299,
		-0.931893, -0.362700, 0.004949,
		-0.274612, 0.714350, 0.643655,
		37.931625, 35.237579, 44.791779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389423, 34.929085, 44.163700>,  <38.123852, 34.737534, 44.341221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389423, 34.929085, 44.163700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580261, 35.225185, 44.353188>,  <37.694763, 35.402843, 44.466881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580261, 35.225185, 44.353188>,  <37.389423, 34.929085, 44.163700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580261, 35.225185, 44.353188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323437, 0.649084, -0.688534,
		-0.817172, 0.175276, 0.549098,
		0.477094, 0.740249, 0.473722,
		37.723389, 35.447262, 44.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940407, 35.463997, 44.054821>,  <37.389423, 34.929085, 44.163700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940407, 35.463997, 44.054821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280460, 35.644714, 44.163013>,  <37.484493, 35.753143, 44.227928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280460, 35.644714, 44.163013>,  <36.940407, 35.463997, 44.054821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280460, 35.644714, 44.163013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158803, 0.709723, -0.686349,
		-0.502051, 0.540535, 0.675105,
		0.850133, 0.451791, 0.270479,
		37.535500, 35.780251, 44.244156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812733, 36.120567, 43.782902>,  <36.940407, 35.463997, 44.054821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812733, 36.120567, 43.782902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206654, 36.086071, 43.843212>,  <37.443005, 36.065372, 43.879398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206654, 36.086071, 43.843212>,  <36.812733, 36.120567, 43.782902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206654, 36.086071, 43.843212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173668, 0.473743, -0.863369,
		0.003032, 0.876430, 0.481520,
		0.984800, -0.086242, 0.150772,
		37.502094, 36.060200, 43.888443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976685, 36.744919, 43.671028>,  <36.812733, 36.120567, 43.782902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976685, 36.744919, 43.671028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310005, 36.527035, 43.633282>,  <37.509998, 36.396305, 43.610634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310005, 36.527035, 43.633282>,  <36.976685, 36.744919, 43.671028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310005, 36.527035, 43.633282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269501, 0.549303, -0.790971,
		0.482685, 0.633683, 0.604533,
		0.833297, -0.544712, -0.094362,
		37.559994, 36.363621, 43.604973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607464, 37.221733, 43.531654>,  <36.976685, 36.744919, 43.671028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607464, 37.221733, 43.531654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696419, 36.863560, 43.377388>,  <37.749794, 36.648655, 43.284828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696419, 36.863560, 43.377388>,  <37.607464, 37.221733, 43.531654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696419, 36.863560, 43.377388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412992, 0.444848, -0.794700,
		0.883165, 0.017458, 0.468738,
		0.222391, -0.895436, -0.385664,
		37.763134, 36.594929, 43.261688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333553, 37.244698, 43.201340>,  <37.607464, 37.221733, 43.531654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333553, 37.244698, 43.201340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165001, 36.929810, 43.021240>,  <38.063869, 36.740875, 42.913181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165001, 36.929810, 43.021240>,  <38.333553, 37.244698, 43.201340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165001, 36.929810, 43.021240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481823, 0.226272, -0.846550,
		0.768299, -0.573661, 0.283954,
		-0.421383, -0.787219, -0.450248,
		38.038586, 36.693645, 42.886166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809845, 37.026230, 42.697937>,  <38.333553, 37.244698, 43.201340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809845, 37.026230, 42.697937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478172, 36.847012, 42.564240>,  <38.279171, 36.739483, 42.484020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478172, 36.847012, 42.564240>,  <38.809845, 37.026230, 42.697937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478172, 36.847012, 42.564240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338243, 0.073903, -0.938153,
		0.445033, -0.890953, 0.090268,
		-0.829179, -0.448041, -0.334248,
		38.229420, 36.712601, 42.463966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127102, 36.614750, 42.139069>,  <38.809845, 37.026230, 42.697937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127102, 36.614750, 42.139069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735531, 36.631107, 42.059044>,  <38.500587, 36.640923, 42.011028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735531, 36.631107, 42.059044>,  <39.127102, 36.614750, 42.139069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735531, 36.631107, 42.059044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192519, -0.141839, -0.970988,
		-0.068079, -0.989045, 0.130978,
		-0.978929, 0.040888, -0.200066,
		38.441853, 36.643375, 41.999023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049713, 36.102962, 41.635612>,  <39.127102, 36.614750, 42.139069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049713, 36.102962, 41.635612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721661, 36.328545, 41.596970>,  <38.524830, 36.463894, 41.573784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721661, 36.328545, 41.596970>,  <39.049713, 36.102962, 41.635612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721661, 36.328545, 41.596970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141463, 0.036250, -0.989279,
		-0.554409, -0.825008, -0.109509,
		-0.820133, 0.563957, -0.096611,
		38.475620, 36.497730, 41.567986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647816, 35.736004, 41.113407>,  <39.049713, 36.102962, 41.635612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647816, 35.736004, 41.113407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523426, 36.115326, 41.138767>,  <38.448792, 36.342918, 41.153984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523426, 36.115326, 41.138767>,  <38.647816, 35.736004, 41.113407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523426, 36.115326, 41.138767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067471, 0.044511, -0.996728,
		-0.948021, -0.314233, 0.050141,
		-0.310973, 0.948302, 0.063399,
		38.430134, 36.399815, 41.157787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066750, 35.833534, 40.596256>,  <38.647816, 35.736004, 41.113407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066750, 35.833534, 40.596256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207344, 36.197033, 40.686268>,  <38.291698, 36.415131, 40.740276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207344, 36.197033, 40.686268>,  <38.066750, 35.833534, 40.596256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207344, 36.197033, 40.686268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027432, 0.230270, -0.972740,
		-0.935792, 0.348075, 0.056008,
		0.351484, 0.908746, 0.225033,
		38.312790, 36.469658, 40.753777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649261, 36.266872, 40.269432>,  <38.066750, 35.833534, 40.596256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649261, 36.266872, 40.269432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982796, 36.483631, 40.311516>,  <38.182915, 36.613686, 40.336765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982796, 36.483631, 40.311516>,  <37.649261, 36.266872, 40.269432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982796, 36.483631, 40.311516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163238, 0.424126, -0.890769,
		-0.527326, 0.725580, 0.442109,
		0.833835, 0.541895, 0.105210,
		38.232944, 36.646198, 40.343079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533752, 36.872303, 39.926449>,  <37.649261, 36.266872, 40.269432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533752, 36.872303, 39.926449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931107, 36.890087, 39.968800>,  <38.169518, 36.900757, 39.994209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931107, 36.890087, 39.968800>,  <37.533752, 36.872303, 39.926449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931107, 36.890087, 39.968800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071971, 0.477423, -0.875721,
		-0.089484, 0.877548, 0.471064,
		0.993385, 0.044460, 0.105880,
		38.229122, 36.903423, 40.000565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635616, 37.505226, 39.821651>,  <37.533752, 36.872303, 39.926449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635616, 37.505226, 39.821651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987133, 37.323299, 39.763863>,  <38.198044, 37.214142, 39.729191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987133, 37.323299, 39.763863>,  <37.635616, 37.505226, 39.821651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987133, 37.323299, 39.763863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087343, 0.450918, -0.888282,
		0.469149, 0.767994, 0.435987,
		0.878789, -0.454817, -0.144469,
		38.250771, 37.186855, 39.720524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147552, 38.034691, 39.544132>,  <37.635616, 37.505226, 39.821651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147552, 38.034691, 39.544132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.297482, 37.677494, 39.444477>,  <38.387440, 37.463177, 39.384686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.297482, 37.677494, 39.444477>,  <38.147552, 38.034691, 39.544132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297482, 37.677494, 39.444477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087902, 0.301750, -0.949326,
		0.922919, 0.333932, 0.191600,
		0.374826, -0.892993, -0.249137,
		38.409927, 37.409595, 39.369736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783306, 38.103809, 39.157520>,  <38.147552, 38.034691, 39.544132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783306, 38.103809, 39.157520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685966, 37.732086, 39.046402>,  <38.627563, 37.509052, 38.979729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685966, 37.732086, 39.046402>,  <38.783306, 38.103809, 39.157520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685966, 37.732086, 39.046402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161288, 0.243650, -0.956358,
		0.956434, -0.277539, 0.090593,
		-0.243353, -0.929305, -0.277798,
		38.612961, 37.453297, 38.963062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417408, 37.922722, 38.729294>,  <38.783306, 38.103809, 39.157520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417408, 37.922722, 38.729294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116188, 37.676746, 38.635689>,  <38.935455, 37.529160, 38.579525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116188, 37.676746, 38.635689>,  <39.417408, 37.922722, 38.729294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116188, 37.676746, 38.635689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164155, 0.168816, -0.971882,
		0.637154, -0.770292, -0.026182,
		-0.753053, -0.614940, -0.234009,
		38.890274, 37.492264, 38.565487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052586, 37.956734, 38.347454>,  <39.417408, 37.922722, 38.729294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052586, 37.956734, 38.347454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378571, 37.790154, 38.186256>,  <40.574162, 37.690205, 38.089539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378571, 37.790154, 38.186256>,  <40.052586, 37.956734, 38.347454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378571, 37.790154, 38.186256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330994, -0.236320, 0.913562,
		-0.475694, -0.877905, -0.054747,
		0.814959, -0.416456, -0.402998,
		40.623058, 37.665218, 38.065357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365566, 37.194836, 38.570560>,  <40.052586, 37.956734, 38.347454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365566, 37.194836, 38.570560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.648655, 37.459873, 38.472496>,  <40.818508, 37.618896, 38.413658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.648655, 37.459873, 38.472496>,  <40.365566, 37.194836, 38.570560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648655, 37.459873, 38.472496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371348, -0.053667, 0.926941,
		0.601024, -0.747058, -0.284032,
		0.707722, 0.662589, -0.245164,
		40.860973, 37.658649, 38.398949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843937, 37.150902, 39.133335>,  <40.365566, 37.194836, 38.570560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843937, 37.150902, 39.133335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.980389, 37.478100, 38.948074>,  <41.062260, 37.674419, 38.836918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.980389, 37.478100, 38.948074>,  <40.843937, 37.150902, 39.133335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980389, 37.478100, 38.948074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480769, 0.271566, 0.833735,
		0.807768, -0.507084, -0.300627,
		0.341133, 0.817997, -0.463152,
		41.082729, 37.723499, 38.809128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579411, 37.156563, 39.198250>,  <40.843937, 37.150902, 39.133335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579411, 37.156563, 39.198250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.435848, 37.527397, 39.154995>,  <41.349712, 37.749897, 39.129040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.435848, 37.527397, 39.154995>,  <41.579411, 37.156563, 39.198250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435848, 37.527397, 39.154995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264191, 0.212025, 0.940877,
		0.895204, 0.309115, -0.321025,
		-0.358905, 0.927088, -0.108140,
		41.328178, 37.805523, 39.122555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073734, 37.795578, 39.187984>,  <41.579411, 37.156563, 39.198250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073734, 37.795578, 39.187984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.732452, 37.920868, 39.354809>,  <41.527683, 37.996040, 39.454903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.732452, 37.920868, 39.354809>,  <42.073734, 37.795578, 39.187984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732452, 37.920868, 39.354809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471268, 0.120305, 0.873747,
		0.223505, 0.942028, -0.250257,
		-0.853201, 0.313225, 0.417059,
		41.476494, 38.014835, 39.479927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210617, 37.854244, 39.816238>,  <42.073734, 37.795578, 39.187984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210617, 37.854244, 39.816238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.855785, 38.038872, 39.818913>,  <41.642887, 38.149647, 39.820515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.855785, 38.038872, 39.818913>,  <42.210617, 37.854244, 39.816238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855785, 38.038872, 39.818913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137405, 0.250201, 0.958394,
		0.440689, 0.851092, -0.285369,
		-0.887082, 0.461564, 0.006684,
		41.589661, 38.177341, 39.820919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310707, 38.645424, 40.153156>,  <42.210617, 37.854244, 39.816238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310707, 38.645424, 40.153156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.929253, 38.526424, 40.171352>,  <41.700378, 38.455025, 40.182270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.929253, 38.526424, 40.171352>,  <42.310707, 38.645424, 40.153156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929253, 38.526424, 40.171352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060921, -0.042782, 0.997225,
		-0.294728, 0.953763, 0.058923,
		-0.953637, -0.297500, 0.045495,
		41.643162, 38.437176, 40.185001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915264, 39.064804, 40.714825>,  <42.310707, 38.645424, 40.153156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915264, 39.064804, 40.714825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.674732, 38.747013, 40.680859>,  <41.530415, 38.556339, 40.660477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.674732, 38.747013, 40.680859>,  <41.915264, 39.064804, 40.714825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674732, 38.747013, 40.680859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252969, 0.088492, 0.963419,
		-0.757900, 0.600812, -0.254191,
		-0.601327, -0.794477, -0.084919,
		41.494335, 38.508671, 40.655384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316383, 39.294338, 41.164227>,  <41.915264, 39.064804, 40.714825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316383, 39.294338, 41.164227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.318104, 38.898174, 41.108986>,  <41.319138, 38.660477, 41.075844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.318104, 38.898174, 41.108986>,  <41.316383, 39.294338, 41.164227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318104, 38.898174, 41.108986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126492, -0.137531, 0.982388,
		-0.991958, 0.013243, -0.125870,
		0.004301, -0.990409, -0.138100,
		41.319393, 38.601051, 41.067554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653278, 38.942036, 41.629139>,  <41.316383, 39.294338, 41.164227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653278, 38.942036, 41.629139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.927246, 38.659050, 41.559418>,  <41.091625, 38.489258, 41.517586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.927246, 38.659050, 41.559418>,  <40.653278, 38.942036, 41.629139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927246, 38.659050, 41.559418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097565, -0.326121, 0.940280,
		-0.722057, -0.627010, -0.292391,
		0.684920, -0.707462, -0.174304,
		41.132721, 38.446812, 41.507126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305840, 38.354641, 41.845295>,  <40.653278, 38.942036, 41.629139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305840, 38.354641, 41.845295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.699352, 38.285686, 41.865139>,  <40.935459, 38.244312, 41.877045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.699352, 38.285686, 41.865139>,  <40.305840, 38.354641, 41.845295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699352, 38.285686, 41.865139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103565, -0.320005, 0.941738,
		-0.146464, -0.931601, -0.332667,
		0.983780, -0.172384, 0.049612,
		40.994488, 38.233971, 41.880024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292854, 37.790535, 42.227058>,  <40.305840, 38.354641, 41.845295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292854, 37.790535, 42.227058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.684971, 37.869423, 42.222355>,  <40.920238, 37.916756, 42.219532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.684971, 37.869423, 42.222355>,  <40.292854, 37.790535, 42.227058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684971, 37.869423, 42.222355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089745, -0.391453, 0.915811,
		0.176014, -0.898815, -0.401436,
		0.980289, 0.197222, -0.011763,
		40.979057, 37.928589, 42.218826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664680, 37.128609, 42.227749>,  <40.292854, 37.790535, 42.227058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664680, 37.128609, 42.227749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.906403, 37.409805, 42.377743>,  <41.051434, 37.578526, 42.467739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.906403, 37.409805, 42.377743>,  <40.664680, 37.128609, 42.227749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906403, 37.409805, 42.377743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010679, -0.477750, 0.878431,
		0.796683, -0.526834, -0.296213,
		0.604303, 0.702994, 0.374989,
		41.087692, 37.620705, 42.490238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254383, 36.782597, 42.514790>,  <40.664680, 37.128609, 42.227749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254383, 36.782597, 42.514790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.213135, 37.139725, 42.690170>,  <41.188385, 37.354000, 42.795399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.213135, 37.139725, 42.690170>,  <41.254383, 36.782597, 42.514790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213135, 37.139725, 42.690170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002155, -0.440603, 0.897699,
		0.994667, 0.093515, 0.043511,
		-0.103120, 0.892818, 0.438455,
		41.182198, 37.407570, 42.821709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753605, 36.716278, 43.088394>,  <41.254383, 36.782597, 42.514790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753605, 36.716278, 43.088394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.486671, 37.004147, 43.165058>,  <41.326511, 37.176868, 43.211056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.486671, 37.004147, 43.165058>,  <41.753605, 36.716278, 43.088394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486671, 37.004147, 43.165058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090170, -0.333521, 0.938420,
		0.739279, 0.608959, 0.287463,
		-0.667334, 0.719675, 0.191656,
		41.286472, 37.220051, 43.222553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925243, 36.893787, 43.792213>,  <41.753605, 36.716278, 43.088394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925243, 36.893787, 43.792213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.548935, 37.017029, 43.735619>,  <41.323151, 37.090973, 43.701660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.548935, 37.017029, 43.735619>,  <41.925243, 36.893787, 43.792213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548935, 37.017029, 43.735619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287688, -0.504626, 0.813995,
		0.179398, 0.806489, 0.563376,
		-0.940772, 0.308105, -0.141488,
		41.266705, 37.109459, 43.693172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696171, 37.394810, 44.383595>,  <41.925243, 36.893787, 43.792213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696171, 37.394810, 44.383595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.388424, 37.194477, 44.224979>,  <41.203773, 37.074276, 44.129810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.388424, 37.194477, 44.224979>,  <41.696171, 37.394810, 44.383595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388424, 37.194477, 44.224979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207911, -0.390625, 0.896764,
		-0.604023, 0.772386, 0.196407,
		-0.769369, -0.500831, -0.396534,
		41.157612, 37.044228, 44.106018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377441, 37.227520, 45.043304>,  <41.696171, 37.394810, 44.383595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377441, 37.227520, 45.043304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.129990, 37.072113, 44.770145>,  <40.981518, 36.978867, 44.606251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.129990, 37.072113, 44.770145>,  <41.377441, 37.227520, 45.043304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129990, 37.072113, 44.770145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514014, -0.457220, 0.725769,
		-0.594209, 0.800002, 0.083146,
		-0.618632, -0.388520, -0.682896,
		40.944401, 36.955559, 44.565277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759941, 37.350258, 45.306183>,  <41.377441, 37.227520, 45.043304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759941, 37.350258, 45.306183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.705536, 37.041294, 45.058025>,  <40.672894, 36.855915, 44.909130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.705536, 37.041294, 45.058025>,  <40.759941, 37.350258, 45.306183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705536, 37.041294, 45.058025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495869, -0.489053, 0.717594,
		-0.857679, 0.405238, -0.316493,
		-0.136015, -0.772405, -0.620396,
		40.664730, 36.809574, 44.871906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.996685, 37.029663, 45.418983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.214085, 36.736259, 45.255730>,  <40.344524, 36.560219, 45.157780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.214085, 36.736259, 45.255730>,  <39.996685, 37.029663, 45.418983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214085, 36.736259, 45.255730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278205, -0.616139, 0.736869,
		-0.791966, -0.286944, -0.538937,
		0.543500, -0.733509, -0.408132,
		40.377136, 36.516205, 45.133289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614971, 36.352451, 45.431946>,  <39.996685, 37.029663, 45.418983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614971, 36.352451, 45.431946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003860, 36.262650, 45.405468>,  <40.237194, 36.208767, 45.389584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003860, 36.262650, 45.405468>,  <39.614971, 36.352451, 45.431946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003860, 36.262650, 45.405468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143249, -0.794368, 0.590304,
		-0.185109, -0.564424, -0.804463,
		0.972221, -0.224509, -0.066191,
		40.295528, 36.195297, 45.385609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549732, 35.641785, 45.267857>,  <39.614971, 36.352451, 45.431946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549732, 35.641785, 45.267857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.920349, 35.697369, 45.407692>,  <40.142719, 35.730717, 45.491592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.920349, 35.697369, 45.407692>,  <39.549732, 35.641785, 45.267857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920349, 35.697369, 45.407692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094770, -0.813088, 0.574375,
		0.364057, -0.565313, -0.740192,
		0.926542, 0.138958, 0.349585,
		40.198311, 35.739056, 45.512566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949509, 35.020069, 45.203896>,  <39.549732, 35.641785, 45.267857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949509, 35.020069, 45.203896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144234, 35.217823, 45.491951>,  <40.261070, 35.336475, 45.664783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144234, 35.217823, 45.491951>,  <39.949509, 35.020069, 45.203896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144234, 35.217823, 45.491951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069737, -0.843785, 0.532131,
		0.870718, -0.208828, -0.445243,
		0.486813, 0.494386, 0.720136,
		40.290279, 35.366138, 45.707993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534061, 34.567169, 45.485291>,  <39.949509, 35.020069, 45.203896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534061, 34.567169, 45.485291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.452961, 34.810940, 45.791882>,  <40.404301, 34.957203, 45.975838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.452961, 34.810940, 45.791882>,  <40.534061, 34.567169, 45.485291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452961, 34.810940, 45.791882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020782, -0.785240, 0.618843,
		0.979009, 0.109544, 0.171876,
		-0.202755, 0.609424, 0.766480,
		40.392136, 34.993767, 46.021824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970837, 34.330711, 45.989235>,  <40.534061, 34.567169, 45.485291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970837, 34.330711, 45.989235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731297, 34.565109, 46.207592>,  <40.587574, 34.705746, 46.338604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731297, 34.565109, 46.207592>,  <40.970837, 34.330711, 45.989235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731297, 34.565109, 46.207592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032879, -0.663062, 0.747842,
		0.800188, 0.465792, 0.377805,
		-0.598847, 0.585993, 0.545889,
		40.551643, 34.740906, 46.371357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322365, 34.470272, 46.648056>,  <40.970837, 34.330711, 45.989235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322365, 34.470272, 46.648056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936218, 34.527512, 46.735317>,  <40.704529, 34.561855, 46.787674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936218, 34.527512, 46.735317>,  <41.322365, 34.470272, 46.648056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936218, 34.527512, 46.735317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092472, -0.594210, 0.798977,
		0.243966, 0.791478, 0.560397,
		-0.965365, 0.143102, 0.218156,
		40.646610, 34.570442, 46.800762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376389, 34.649364, 47.257332>,  <41.322365, 34.470272, 46.648056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376389, 34.649364, 47.257332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.004883, 34.504635, 47.225147>,  <40.781979, 34.417797, 47.205837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.004883, 34.504635, 47.225147>,  <41.376389, 34.649364, 47.257332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004883, 34.504635, 47.225147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141608, -0.546964, 0.825092,
		-0.342546, 0.754925, 0.559240,
		-0.928767, -0.361826, -0.080457,
		40.726254, 34.396088, 47.201012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065811, 34.800175, 47.835354>,  <41.376389, 34.649364, 47.257332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065811, 34.800175, 47.835354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833931, 34.504932, 47.697281>,  <40.694805, 34.327789, 47.614437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833931, 34.504932, 47.697281>,  <41.065811, 34.800175, 47.835354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833931, 34.504932, 47.697281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030351, -0.442893, 0.896061,
		-0.814266, 0.508968, 0.279147,
		-0.579698, -0.738104, -0.345185,
		40.660023, 34.283501, 47.593727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710327, 34.655884, 48.406567>,  <41.065811, 34.800175, 47.835354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710327, 34.655884, 48.406567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.637497, 34.333405, 48.181396>,  <40.593800, 34.139915, 48.046295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.637497, 34.333405, 48.181396>,  <40.710327, 34.655884, 48.406567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637497, 34.333405, 48.181396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173484, -0.537177, 0.825436,
		-0.967860, 0.247949, -0.042057,
		-0.182074, -0.806202, -0.562927,
		40.582874, 34.091545, 48.012520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165726, 34.278725, 48.778103>,  <40.710327, 34.655884, 48.406567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165726, 34.278725, 48.778103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303230, 34.003250, 48.522751>,  <40.385735, 33.837963, 48.369537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303230, 34.003250, 48.522751>,  <40.165726, 34.278725, 48.778103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303230, 34.003250, 48.522751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334157, -0.725029, 0.602223,
		-0.877592, 0.006301, -0.479366,
		0.343760, -0.688690, -0.638385,
		40.406357, 33.796642, 48.331234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651722, 33.836700, 48.632019>,  <40.165726, 34.278725, 48.778103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651722, 33.836700, 48.632019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.995052, 33.639996, 48.573444>,  <40.201050, 33.521973, 48.538300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.995052, 33.639996, 48.573444>,  <39.651722, 33.836700, 48.632019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995052, 33.639996, 48.573444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302300, -0.715273, 0.630079,
		-0.414592, -0.496546, -0.762598,
		0.858329, -0.491758, -0.146441,
		40.252552, 33.492470, 48.529510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419144, 33.217731, 48.830257>,  <39.651722, 33.836700, 48.632019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419144, 33.217731, 48.830257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815811, 33.166759, 48.822815>,  <40.053814, 33.136177, 48.818352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815811, 33.166759, 48.822815>,  <39.419144, 33.217731, 48.830257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815811, 33.166759, 48.822815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088734, -0.780816, 0.618427,
		-0.093330, -0.611627, -0.785622,
		0.991673, -0.127429, -0.018602,
		40.113312, 33.128532, 48.817234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500523, 32.485054, 48.762356>,  <39.419144, 33.217731, 48.830257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500523, 32.485054, 48.762356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819466, 32.650177, 48.938454>,  <40.010830, 32.749252, 49.044113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819466, 32.650177, 48.938454>,  <39.500523, 32.485054, 48.762356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819466, 32.650177, 48.938454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036964, -0.694695, 0.718354,
		0.602380, -0.589055, -0.538658,
		0.797353, 0.412811, 0.440244,
		40.058670, 32.774021, 49.070526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922943, 31.906841, 49.010971>,  <39.500523, 32.485054, 48.762356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922943, 31.906841, 49.010971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129360, 32.194717, 49.196766>,  <40.253208, 32.367443, 49.308243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129360, 32.194717, 49.196766>,  <39.922943, 31.906841, 49.010971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129360, 32.194717, 49.196766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235482, -0.640572, 0.730900,
		0.823561, -0.267794, -0.500035,
		0.516039, 0.719690, 0.464489,
		40.284172, 32.410625, 49.336113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529881, 31.659256, 49.118176>,  <39.922943, 31.906841, 49.010971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529881, 31.659256, 49.118176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528297, 31.945400, 49.397675>,  <40.527348, 32.117088, 49.565372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528297, 31.945400, 49.397675>,  <40.529881, 31.659256, 49.118176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528297, 31.945400, 49.397675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265202, -0.672977, 0.690485,
		0.964185, 0.188042, -0.187050,
		-0.003960, 0.715361, 0.698744,
		40.527111, 32.160007, 49.607296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172192, 31.583450, 49.509567>,  <40.529881, 31.659256, 49.118176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172192, 31.583450, 49.509567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908207, 31.771608, 49.743893>,  <40.749817, 31.884504, 49.884487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908207, 31.771608, 49.743893>,  <41.172192, 31.583450, 49.509567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908207, 31.771608, 49.743893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249017, -0.598696, 0.761284,
		0.708828, 0.648297, 0.277981,
		-0.659965, 0.470397, 0.585810,
		40.710217, 31.912727, 49.919636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500183, 31.464695, 50.191528>,  <41.172192, 31.583450, 49.509567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500183, 31.464695, 50.191528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.116100, 31.570036, 50.228737>,  <40.885651, 31.633240, 50.251060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.116100, 31.570036, 50.228737>,  <41.500183, 31.464695, 50.191528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116100, 31.570036, 50.228737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104795, -0.648427, 0.754030,
		0.258890, 0.714275, 0.650221,
		-0.960205, 0.263351, 0.093019,
		40.828037, 31.649040, 50.256641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370346, 31.652061, 50.946053>,  <41.500183, 31.464695, 50.191528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370346, 31.652061, 50.946053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012043, 31.572571, 50.786991>,  <40.797062, 31.524876, 50.691555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012043, 31.572571, 50.786991>,  <41.370346, 31.652061, 50.946053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012043, 31.572571, 50.786991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172257, -0.669469, 0.722591,
		-0.409816, 0.715764, 0.565449,
		-0.895756, -0.198727, -0.397655,
		40.743317, 31.512953, 50.667694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937302, 31.718611, 51.506313>,  <41.370346, 31.652061, 50.946053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937302, 31.718611, 51.506313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751190, 31.471729, 51.252518>,  <40.639523, 31.323601, 51.100243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751190, 31.471729, 51.252518>,  <40.937302, 31.718611, 51.506313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751190, 31.471729, 51.252518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095439, -0.677641, 0.729174,
		-0.880002, 0.399827, 0.256389,
		-0.465283, -0.617205, -0.634484,
		40.611607, 31.286568, 51.062172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378937, 31.466022, 51.948971>,  <40.937302, 31.718611, 51.506313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378937, 31.466022, 51.948971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.436909, 31.205502, 51.651031>,  <40.471691, 31.049189, 51.472267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.436909, 31.205502, 51.651031>,  <40.378937, 31.466022, 51.948971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436909, 31.205502, 51.651031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440111, -0.716658, 0.541021,
		-0.886171, 0.249408, -0.390509,
		0.144926, -0.651304, -0.744849,
		40.480385, 31.010111, 51.427578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866989, 31.027554, 51.938595>,  <40.378937, 31.466022, 51.948971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866989, 31.027554, 51.938595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.122097, 30.797451, 51.733719>,  <40.275162, 30.659389, 51.610794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.122097, 30.797451, 51.733719>,  <39.866989, 31.027554, 51.938595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122097, 30.797451, 51.733719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361287, -0.810711, 0.460672,
		-0.680239, -0.108755, -0.724877,
		0.637766, -0.575256, -0.512186,
		40.313427, 30.624874, 51.580063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549255, 30.506121, 51.417282>,  <39.866989, 31.027554, 51.938595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549255, 30.506121, 51.417282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886040, 30.388338, 51.598122>,  <40.088112, 30.317669, 51.706627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886040, 30.388338, 51.598122>,  <39.549255, 30.506121, 51.417282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886040, 30.388338, 51.598122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508645, -0.712661, 0.483110,
		0.179937, -0.636718, -0.749808,
		0.841964, -0.294457, 0.452098,
		40.138630, 30.300001, 51.733749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299091, 29.867516, 51.625919>,  <39.549255, 30.506121, 51.417282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299091, 29.867516, 51.625919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637001, 29.924356, 51.832283>,  <39.839745, 29.958460, 51.956100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637001, 29.924356, 51.832283>,  <39.299091, 29.867516, 51.625919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637001, 29.924356, 51.832283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247374, -0.751203, 0.611965,
		0.474516, -0.644594, -0.599443,
		0.844772, 0.142100, 0.515914,
		39.890434, 29.966986, 51.987057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645329, 29.508209, 51.954029>,  <39.299091, 29.867516, 51.625919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645329, 29.508209, 51.954029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280857, 29.391735, 51.837433>,  <38.062176, 29.321850, 51.767475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280857, 29.391735, 51.837433>,  <38.645329, 29.508209, 51.954029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280857, 29.391735, 51.837433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104165, 0.521681, -0.846758,
		0.398626, -0.801911, -0.445013,
		-0.911179, -0.291185, -0.291486,
		38.007504, 29.304379, 51.749989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774033, 29.391304, 51.329578>,  <38.645329, 29.508209, 51.954029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774033, 29.391304, 51.329578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.376354, 29.428238, 51.351658>,  <38.137749, 29.450397, 51.364906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.376354, 29.428238, 51.351658>,  <38.774033, 29.391304, 51.329578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376354, 29.428238, 51.351658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000249, 0.511173, -0.859478,
		-0.107576, -0.854504, -0.508184,
		-0.994197, 0.092333, 0.055203,
		38.078094, 29.455938, 51.368217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569210, 29.060173, 50.649441>,  <38.774033, 29.391304, 51.329578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569210, 29.060173, 50.649441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303249, 29.331392, 50.774761>,  <38.143673, 29.494123, 50.849953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303249, 29.331392, 50.774761>,  <38.569210, 29.060173, 50.649441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303249, 29.331392, 50.774761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138405, 0.300347, -0.943735,
		-0.733995, -0.670854, -0.105857,
		-0.664903, 0.678046, 0.313303,
		38.103779, 29.534805, 50.868752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022812, 29.073275, 50.095364>,  <38.569210, 29.060173, 50.649441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022812, 29.073275, 50.095364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932091, 29.391455, 50.320156>,  <37.877659, 29.582363, 50.455032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932091, 29.391455, 50.320156>,  <38.022812, 29.073275, 50.095364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932091, 29.391455, 50.320156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291608, 0.495081, -0.818449,
		-0.929260, -0.349507, 0.119672,
		-0.226806, 0.795449, 0.561978,
		37.864048, 29.630089, 50.488750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347866, 29.414682, 49.793468>,  <38.022812, 29.073275, 50.095364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347866, 29.414682, 49.793468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543755, 29.676670, 50.023666>,  <37.661285, 29.833862, 50.161785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543755, 29.676670, 50.023666>,  <37.347866, 29.414682, 49.793468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543755, 29.676670, 50.023666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028973, 0.671918, -0.740058,
		-0.871399, 0.345747, 0.348028,
		0.489719, 0.654969, 0.575491,
		37.690670, 29.873161, 50.196312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046524, 30.043545, 49.712128>,  <37.347866, 29.414682, 49.793468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046524, 30.043545, 49.712128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397316, 30.170509, 49.856438>,  <37.607792, 30.246689, 49.943024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397316, 30.170509, 49.856438>,  <37.046524, 30.043545, 49.712128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397316, 30.170509, 49.856438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073885, 0.652786, -0.753931,
		-0.474814, 0.687838, 0.549028,
		0.876979, 0.317412, 0.360773,
		37.660408, 30.265734, 49.964668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073994, 30.784019, 49.615978>,  <37.046524, 30.043545, 49.712128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073994, 30.784019, 49.615978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458569, 30.676886, 49.640957>,  <37.689316, 30.612606, 49.655945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458569, 30.676886, 49.640957>,  <37.073994, 30.784019, 49.615978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458569, 30.676886, 49.640957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246813, 0.740135, -0.625527,
		0.121316, 0.616820, 0.777699,
		0.961439, -0.267833, 0.062449,
		37.747002, 30.596537, 49.659691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453476, 31.420776, 49.702000>,  <37.073994, 30.784019, 49.615978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453476, 31.420776, 49.702000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730606, 31.152462, 49.596138>,  <37.896885, 30.991474, 49.532623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730606, 31.152462, 49.596138>,  <37.453476, 31.420776, 49.702000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730606, 31.152462, 49.596138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287267, 0.593369, -0.751925,
		0.661416, 0.444927, 0.603796,
		0.692825, -0.670785, -0.264651,
		37.938454, 30.951227, 49.516743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110111, 31.803989, 49.684143>,  <37.453476, 31.420776, 49.702000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110111, 31.803989, 49.684143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165081, 31.478693, 49.457954>,  <38.198063, 31.283516, 49.322243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165081, 31.478693, 49.457954>,  <38.110111, 31.803989, 49.684143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165081, 31.478693, 49.457954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378418, 0.570686, -0.728778,
		0.915377, -0.113833, 0.386170,
		0.137423, -0.813240, -0.565469,
		38.206306, 31.234720, 49.288315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745674, 31.883398, 49.396091>,  <38.110111, 31.803989, 49.684143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745674, 31.883398, 49.396091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557251, 31.617239, 49.164455>,  <38.444199, 31.457542, 49.025475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557251, 31.617239, 49.164455>,  <38.745674, 31.883398, 49.396091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557251, 31.617239, 49.164455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197721, 0.560140, -0.804456,
		0.859658, -0.493444, -0.132295,
		-0.471057, -0.665400, -0.579092,
		38.415932, 31.417620, 48.990726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185410, 31.689938, 48.781490>,  <38.745674, 31.883398, 49.396091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185410, 31.689938, 48.781490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.809490, 31.608814, 48.671478>,  <38.583939, 31.560141, 48.605473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.809490, 31.608814, 48.671478>,  <39.185410, 31.689938, 48.781490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809490, 31.608814, 48.671478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112783, 0.575649, -0.809882,
		0.322570, -0.792147, -0.518123,
		-0.939802, -0.202808, -0.275028,
		38.527550, 31.547972, 48.588970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152168, 31.772892, 48.018803>,  <39.185410, 31.689938, 48.781490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152168, 31.772892, 48.018803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752228, 31.772644, 48.025593>,  <38.512264, 31.772495, 48.029667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752228, 31.772644, 48.025593>,  <39.152168, 31.772892, 48.018803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752228, 31.772644, 48.025593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012284, 0.716806, -0.697165,
		-0.011738, -0.697273, -0.716710,
		-0.999856, -0.000621, 0.016979,
		38.452271, 31.772457, 48.030685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886803, 31.687025, 47.269428>,  <39.152168, 31.772892, 48.018803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886803, 31.687025, 47.269428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590778, 31.850288, 47.483238>,  <38.413162, 31.948246, 47.611523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590778, 31.850288, 47.483238>,  <38.886803, 31.687025, 47.269428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590778, 31.850288, 47.483238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053085, 0.756853, -0.651426,
		-0.670439, -0.510472, -0.538451,
		-0.740063, 0.408158, 0.534522,
		38.368759, 31.972736, 47.643593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298126, 31.906258, 46.786442>,  <38.886803, 31.687025, 47.269428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298126, 31.906258, 46.786442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212345, 32.111008, 47.119186>,  <38.160877, 32.233856, 47.318832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212345, 32.111008, 47.119186>,  <38.298126, 31.906258, 46.786442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212345, 32.111008, 47.119186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102618, 0.835155, -0.540357,
		-0.971329, -0.201244, -0.126572,
		-0.214451, 0.511876, 0.831862,
		38.148010, 32.264572, 47.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776375, 32.422783, 46.556179>,  <38.298126, 31.906258, 46.786442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776375, 32.422783, 46.556179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918060, 32.585739, 46.892887>,  <38.003071, 32.683514, 47.094910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918060, 32.585739, 46.892887>,  <37.776375, 32.422783, 46.556179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918060, 32.585739, 46.892887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180692, 0.912977, -0.365819,
		-0.917543, -0.022523, 0.396997,
		0.354210, 0.407388, 0.841766,
		38.024323, 32.707954, 47.145416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269669, 32.978119, 46.611958>,  <37.776375, 32.422783, 46.556179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269669, 32.978119, 46.611958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602913, 33.067657, 46.814274>,  <37.802860, 33.121380, 46.935665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602913, 33.067657, 46.814274>,  <37.269669, 32.978119, 46.611958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602913, 33.067657, 46.814274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040319, 0.936595, -0.348087,
		-0.551640, 0.269601, 0.789309,
		0.833108, 0.223843, 0.505793,
		37.852844, 33.134811, 46.966011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167229, 33.605362, 47.065468>,  <37.269669, 32.978119, 46.611958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167229, 33.605362, 47.065468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558796, 33.583481, 46.986748>,  <37.793736, 33.570354, 46.939514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558796, 33.583481, 46.986748>,  <37.167229, 33.605362, 47.065468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558796, 33.583481, 46.986748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021558, 0.930428, -0.365841,
		0.203118, 0.362371, 0.909632,
		0.978917, -0.054699, -0.196799,
		37.852470, 33.567070, 46.927708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435940, 34.185471, 47.418941>,  <37.167229, 33.605362, 47.065468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435940, 34.185471, 47.418941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674213, 34.060680, 47.122879>,  <37.817177, 33.985806, 46.945240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674213, 34.060680, 47.122879>,  <37.435940, 34.185471, 47.418941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674213, 34.060680, 47.122879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117218, 0.877860, -0.464350,
		0.794622, 0.363365, 0.486355,
		0.595680, -0.311974, -0.740161,
		37.852917, 33.967087, 46.900829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743816, 34.765293, 47.113773>,  <37.435940, 34.185471, 47.418941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743816, 34.765293, 47.113773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817490, 34.488594, 46.834469>,  <37.861694, 34.322575, 46.666885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817490, 34.488594, 46.834469>,  <37.743816, 34.765293, 47.113773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817490, 34.488594, 46.834469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345985, 0.619315, -0.704800,
		0.919985, 0.371397, -0.125268,
		0.184181, -0.691746, -0.698258,
		37.872746, 34.281071, 46.624992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298031, 35.046200, 46.760414>,  <37.743816, 34.765293, 47.113773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298031, 35.046200, 46.760414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133850, 34.781181, 46.509792>,  <38.035343, 34.622169, 46.359421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133850, 34.781181, 46.509792>,  <38.298031, 35.046200, 46.760414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133850, 34.781181, 46.509792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100767, 0.715845, -0.690951,
		0.906299, -0.220464, -0.360580,
		-0.410449, -0.662542, -0.626553,
		38.010715, 34.582420, 46.321827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.387817, 38.061932, 27.152292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121044, 38.317696, 27.305323>,  <44.960979, 38.471153, 27.397141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121044, 38.317696, 27.305323>,  <45.387817, 38.061932, 27.152292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121044, 38.317696, 27.305323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700328, 0.362567, 0.614887,
		0.254452, 0.678016, -0.689600,
		-0.666929, 0.639405, 0.382578,
		44.920967, 38.509518, 27.420095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853321, 38.631893, 27.377558>,  <45.387817, 38.061932, 27.152292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853321, 38.631893, 27.377558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507748, 38.653885, 27.577799>,  <45.300404, 38.667080, 27.697943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507748, 38.653885, 27.577799>,  <45.853321, 38.631893, 27.377558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507748, 38.653885, 27.577799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496821, 0.255732, 0.829319,
		-0.082423, 0.965183, -0.248250,
		-0.863930, 0.054981, 0.500602,
		45.248569, 38.670380, 27.727980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914326, 39.244453, 27.673105>,  <45.853321, 38.631893, 27.377558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914326, 39.244453, 27.673105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644218, 39.042000, 27.887711>,  <45.482155, 38.920528, 28.016474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644218, 39.042000, 27.887711>,  <45.914326, 39.244453, 27.673105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644218, 39.042000, 27.887711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388074, 0.374771, 0.841989,
		-0.627230, 0.776771, -0.056651,
		-0.675264, -0.506136, 0.536512,
		45.441639, 38.890160, 28.048664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164700, 39.495491, 28.227196>,  <45.914326, 39.244453, 27.673105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164700, 39.495491, 28.227196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.894199, 39.232731, 28.360559>,  <45.731899, 39.075073, 28.440578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.894199, 39.232731, 28.360559>,  <46.164700, 39.495491, 28.227196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894199, 39.232731, 28.360559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368979, 0.089683, 0.925101,
		-0.637602, 0.748623, 0.181735,
		-0.676253, -0.656902, 0.333409,
		45.691322, 39.035660, 28.460583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805161, 39.686035, 28.893810>,  <46.164700, 39.495491, 28.227196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805161, 39.686035, 28.893810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770088, 39.287647, 28.886208>,  <45.749046, 39.048615, 28.881645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770088, 39.287647, 28.886208>,  <45.805161, 39.686035, 28.893810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770088, 39.287647, 28.886208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320196, -0.046245, 0.946222,
		-0.943285, 0.076876, 0.322959,
		-0.087677, -0.995968, -0.019006,
		45.743786, 38.988857, 28.880507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457321, 39.476143, 29.533606>,  <45.805161, 39.686035, 28.893810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457321, 39.476143, 29.533606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673180, 39.155540, 29.430555>,  <45.802696, 38.963181, 29.368725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673180, 39.155540, 29.430555>,  <45.457321, 39.476143, 29.533606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673180, 39.155540, 29.430555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155722, -0.205697, 0.966146,
		-0.827363, -0.561497, 0.013808,
		0.539648, -0.801504, -0.257624,
		45.835075, 38.915089, 29.353268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294968, 38.996769, 30.025200>,  <45.457321, 39.476143, 29.533606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294968, 38.996769, 30.025200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621799, 38.842319, 29.853949>,  <45.817898, 38.749649, 29.751198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621799, 38.842319, 29.853949>,  <45.294968, 38.996769, 30.025200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621799, 38.842319, 29.853949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316904, -0.319551, 0.893005,
		-0.481620, -0.865329, -0.138733,
		0.817076, -0.386124, -0.428129,
		45.866920, 38.726482, 29.725510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394093, 38.492691, 30.515629>,  <45.294968, 38.996769, 30.025200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394093, 38.492691, 30.515629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725468, 38.461170, 30.293825>,  <45.924294, 38.442257, 30.160744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725468, 38.461170, 30.293825>,  <45.394093, 38.492691, 30.515629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725468, 38.461170, 30.293825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526406, -0.228561, 0.818936,
		-0.191265, -0.970336, -0.147872,
		0.828441, -0.078793, -0.554506,
		45.973999, 38.437531, 30.127472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589252, 37.762672, 30.524614>,  <45.394093, 38.492691, 30.515629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589252, 37.762672, 30.524614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920063, 37.977421, 30.457928>,  <46.118549, 38.106270, 30.417915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920063, 37.977421, 30.457928>,  <45.589252, 37.762672, 30.524614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920063, 37.977421, 30.457928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332427, -0.227893, 0.915181,
		0.453342, -0.812301, -0.366944,
		0.827027, 0.536872, -0.166718,
		46.168171, 38.138481, 30.407913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192726, 37.219650, 30.540806>,  <45.589252, 37.762672, 30.524614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192726, 37.219650, 30.540806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308353, 37.595188, 30.615652>,  <46.377728, 37.820511, 30.660561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308353, 37.595188, 30.615652>,  <46.192726, 37.219650, 30.540806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308353, 37.595188, 30.615652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266988, -0.266768, 0.926041,
		0.919326, -0.217727, -0.327773,
		0.289063, 0.938845, 0.187117,
		46.395073, 37.876842, 30.671787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807648, 37.090496, 30.854883>,  <46.192726, 37.219650, 30.540806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807648, 37.090496, 30.854883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740028, 37.471725, 30.955343>,  <46.699459, 37.700462, 31.015619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740028, 37.471725, 30.955343>,  <46.807648, 37.090496, 30.854883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740028, 37.471725, 30.955343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100428, -0.236836, 0.966345,
		0.980479, 0.188578, -0.055679,
		-0.169045, 0.953072, 0.251152,
		46.689316, 37.757648, 31.030689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.271397, 37.222439, 31.516056>,  <46.807648, 37.090496, 30.854883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.271397, 37.222439, 31.516056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016380, 37.530479, 31.507252>,  <46.863369, 37.715305, 31.501970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016380, 37.530479, 31.507252>,  <47.271397, 37.222439, 31.516056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016380, 37.530479, 31.507252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012019, 0.018623, 0.999754,
		0.770321, 0.637651, -0.002618,
		-0.637543, 0.770100, -0.022010,
		46.825119, 37.761509, 31.500648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.465782, 37.734844, 31.985111>,  <47.271397, 37.222439, 31.516056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.465782, 37.734844, 31.985111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.074509, 37.813198, 31.957415>,  <46.839745, 37.860210, 31.940796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.074509, 37.813198, 31.957415>,  <47.465782, 37.734844, 31.985111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074509, 37.813198, 31.957415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085128, -0.073861, 0.993629,
		0.189520, 0.977842, 0.088924,
		-0.978180, 0.195882, -0.069243,
		46.781055, 37.871964, 31.936642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352718, 38.049545, 32.575165>,  <47.465782, 37.734844, 31.985111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352718, 38.049545, 32.575165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.977154, 37.952984, 32.477051>,  <46.751816, 37.895046, 32.418182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.977154, 37.952984, 32.477051>,  <47.352718, 38.049545, 32.575165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.977154, 37.952984, 32.477051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219833, -0.127689, 0.967145,
		-0.264797, 0.961986, 0.066819,
		-0.938912, -0.241408, -0.245288,
		46.695480, 37.880562, 32.403465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838306, 38.479389, 33.040508>,  <47.352718, 38.049545, 32.575165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838306, 38.479389, 33.040508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652519, 38.149605, 32.911179>,  <46.541046, 37.951733, 32.833580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652519, 38.149605, 32.911179>,  <46.838306, 38.479389, 33.040508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652519, 38.149605, 32.911179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288402, -0.204372, 0.935444,
		-0.837314, 0.527729, -0.142852,
		-0.464466, -0.824460, -0.323321,
		46.513180, 37.902267, 32.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144493, 38.482445, 33.418484>,  <46.838306, 38.479389, 33.040508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144493, 38.482445, 33.418484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181015, 38.097984, 33.314289>,  <46.202927, 37.867310, 33.251770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181015, 38.097984, 33.314289>,  <46.144493, 38.482445, 33.418484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181015, 38.097984, 33.314289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484600, -0.271403, 0.831567,
		-0.869958, 0.050307, -0.490554,
		0.091304, -0.961150, -0.260488,
		46.208405, 37.809639, 33.236141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528580, 38.256771, 33.618744>,  <46.144493, 38.482445, 33.418484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528580, 38.256771, 33.618744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.745739, 37.923420, 33.577293>,  <45.876034, 37.723408, 33.552425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.745739, 37.923420, 33.577293>,  <45.528580, 38.256771, 33.618744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745739, 37.923420, 33.577293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385408, -0.356880, 0.850939,
		-0.746135, -0.422039, -0.514942,
		0.542902, -0.833378, -0.103624,
		45.908611, 37.673405, 33.546207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047920, 37.632915, 33.705868>,  <45.528580, 38.256771, 33.618744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047920, 37.632915, 33.705868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424381, 37.517563, 33.776375>,  <45.650257, 37.448349, 33.818680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424381, 37.517563, 33.776375>,  <45.047920, 37.632915, 33.705868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424381, 37.517563, 33.776375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294188, -0.442221, 0.847286,
		-0.166394, -0.849280, -0.501036,
		0.941151, -0.288382, 0.176265,
		45.706726, 37.431049, 33.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136028, 36.870380, 34.046432>,  <45.047920, 37.632915, 33.705868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136028, 36.870380, 34.046432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484989, 37.051422, 34.120251>,  <45.694366, 37.160049, 34.164543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484989, 37.051422, 34.120251>,  <45.136028, 36.870380, 34.046432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484989, 37.051422, 34.120251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010716, -0.395180, 0.918541,
		0.488668, -0.799362, -0.349606,
		0.872404, 0.452608, 0.184546,
		45.746712, 37.187206, 34.175613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373753, 36.285450, 34.308231>,  <45.136028, 36.870380, 34.046432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373753, 36.285450, 34.308231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616497, 36.583912, 34.417755>,  <45.762142, 36.762989, 34.483471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616497, 36.583912, 34.417755>,  <45.373753, 36.285450, 34.308231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616497, 36.583912, 34.417755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104815, -0.416621, 0.903018,
		0.787870, -0.519303, -0.331037,
		0.606857, 0.746158, 0.273813,
		45.798553, 36.807758, 34.499897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892727, 35.932980, 34.568428>,  <45.373753, 36.285450, 34.308231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892727, 35.932980, 34.568428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932941, 36.303024, 34.714886>,  <45.957069, 36.525051, 34.802761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932941, 36.303024, 34.714886>,  <45.892727, 35.932980, 34.568428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932941, 36.303024, 34.714886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090102, -0.374960, 0.922652,
		0.990845, -0.059771, -0.121052,
		0.100537, 0.925112, 0.366142,
		45.963104, 36.580559, 34.824730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146748, 35.237114, 34.455215>,  <45.892727, 35.932980, 34.568428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146748, 35.237114, 34.455215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234852, 34.932705, 34.211140>,  <46.287712, 34.750061, 34.064693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234852, 34.932705, 34.211140>,  <46.146748, 35.237114, 34.455215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234852, 34.932705, 34.211140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656255, 0.347198, -0.669912,
		0.721675, 0.547993, -0.422953,
		0.220259, -0.761024, -0.610187,
		46.300930, 34.704399, 34.028084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984104, 35.546410, 33.769867>,  <46.146748, 35.237114, 34.455215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984104, 35.546410, 33.769867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046192, 35.156776, 33.704044>,  <46.083447, 34.922997, 33.664551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046192, 35.156776, 33.704044>,  <45.984104, 35.546410, 33.769867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046192, 35.156776, 33.704044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512141, 0.063094, -0.856581,
		0.844760, 0.217233, -0.489072,
		0.155220, -0.974079, -0.164553,
		46.092758, 34.864552, 33.654678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247551, 35.547405, 33.220631>,  <45.984104, 35.546410, 33.769867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247551, 35.547405, 33.220631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068886, 35.191723, 33.260235>,  <45.961685, 34.978313, 33.283997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068886, 35.191723, 33.260235>,  <46.247551, 35.547405, 33.220631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068886, 35.191723, 33.260235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678932, 0.264793, -0.684790,
		0.582703, -0.373090, -0.721984,
		-0.446665, -0.889207, 0.099007,
		45.934887, 34.924961, 33.289936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061493, 35.362076, 32.490452>,  <46.247551, 35.547405, 33.220631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061493, 35.362076, 32.490452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824505, 35.139362, 32.723335>,  <45.682312, 35.005733, 32.863064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824505, 35.139362, 32.723335>,  <46.061493, 35.362076, 32.490452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824505, 35.139362, 32.723335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784800, 0.235793, -0.573142,
		0.181836, -0.796488, -0.576665,
		-0.592474, -0.556784, 0.582208,
		45.646763, 34.972328, 32.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762856, 34.890450, 32.057793>,  <46.061493, 35.362076, 32.490452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762856, 34.890450, 32.057793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531876, 34.939426, 32.380669>,  <45.393288, 34.968811, 32.574394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531876, 34.939426, 32.380669>,  <45.762856, 34.890450, 32.057793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531876, 34.939426, 32.380669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742687, 0.331829, -0.581640,
		-0.339068, -0.935359, -0.100678,
		-0.577450, 0.122443, 0.807192,
		45.358639, 34.976158, 32.622826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211239, 34.591270, 31.887783>,  <45.762856, 34.890450, 32.057793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211239, 34.591270, 31.887783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114262, 34.852245, 32.174988>,  <45.056076, 35.008831, 32.347313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114262, 34.852245, 32.174988>,  <45.211239, 34.591270, 31.887783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114262, 34.852245, 32.174988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772207, 0.318245, -0.549924,
		-0.587296, -0.687782, 0.426661,
		-0.242445, 0.652439, 0.718014,
		45.041527, 35.047977, 32.390392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470261, 34.620502, 31.821020>,  <45.211239, 34.591270, 31.887783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470261, 34.620502, 31.821020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543327, 34.945133, 32.043003>,  <44.587166, 35.139912, 32.176193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543327, 34.945133, 32.043003>,  <44.470261, 34.620502, 31.821020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543327, 34.945133, 32.043003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735182, 0.487530, -0.470980,
		-0.652794, -0.321962, 0.685712,
		0.182667, 0.811576, 0.554957,
		44.598129, 35.188606, 32.209492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833023, 34.804817, 31.962172>,  <44.470261, 34.620502, 31.821020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833023, 34.804817, 31.962172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.080757, 35.118362, 31.979980>,  <44.229397, 35.306488, 31.990665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.080757, 35.118362, 31.979980>,  <43.833023, 34.804817, 31.962172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080757, 35.118362, 31.979980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550236, 0.473802, -0.687569,
		-0.560054, 0.401340, 0.724752,
		0.619338, 0.783861, 0.044523,
		44.266560, 35.353519, 31.993338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353340, 35.344677, 31.903841>,  <43.833023, 34.804817, 31.962172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353340, 35.344677, 31.903841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708813, 35.508423, 31.821228>,  <43.922096, 35.606670, 31.771660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708813, 35.508423, 31.821228>,  <43.353340, 35.344677, 31.903841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708813, 35.508423, 31.821228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446750, 0.671673, -0.590990,
		-0.103208, 0.617474, 0.779791,
		0.888686, 0.409367, -0.206534,
		43.975418, 35.631233, 31.759268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200859, 36.045452, 31.953131>,  <43.353340, 35.344677, 31.903841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200859, 36.045452, 31.953131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545074, 36.030582, 31.749922>,  <43.751606, 36.021660, 31.627996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545074, 36.030582, 31.749922>,  <43.200859, 36.045452, 31.953131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545074, 36.030582, 31.749922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377861, 0.622237, -0.685596,
		0.341597, 0.781946, 0.521414,
		0.860542, -0.037176, -0.508021,
		43.803238, 36.019428, 31.597515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477306, 36.713516, 31.908657>,  <43.200859, 36.045452, 31.953131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477306, 36.713516, 31.908657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648258, 36.509544, 31.610043>,  <43.750832, 36.387161, 31.430874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648258, 36.509544, 31.610043>,  <43.477306, 36.713516, 31.908657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648258, 36.509544, 31.610043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318657, 0.687792, -0.652227,
		0.846051, 0.516640, 0.131459,
		0.427383, -0.509926, -0.746538,
		43.776474, 36.356567, 31.386082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735218, 37.184444, 31.535139>,  <43.477306, 36.713516, 31.908657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735218, 37.184444, 31.535139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.720577, 36.886967, 31.268131>,  <43.711792, 36.708481, 31.107927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.720577, 36.886967, 31.268131>,  <43.735218, 37.184444, 31.535139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720577, 36.886967, 31.268131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428144, 0.615229, -0.661955,
		0.902969, 0.261564, -0.340928,
		-0.036605, -0.743691, -0.667520,
		43.709595, 36.663860, 31.067875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885612, 37.568565, 30.907566>,  <43.735218, 37.184444, 31.535139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885612, 37.568565, 30.907566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683678, 37.237915, 30.808102>,  <43.562519, 37.039524, 30.748423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683678, 37.237915, 30.808102>,  <43.885612, 37.568565, 30.907566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683678, 37.237915, 30.808102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539407, 0.526985, -0.656754,
		0.673931, -0.197422, -0.711928,
		-0.504833, -0.826626, -0.248661,
		43.532227, 36.989925, 30.733503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844246, 37.570766, 30.217525>,  <43.885612, 37.568565, 30.907566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844246, 37.570766, 30.217525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540298, 37.321125, 30.290298>,  <43.357929, 37.171341, 30.333961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540298, 37.321125, 30.290298>,  <43.844246, 37.570766, 30.217525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540298, 37.321125, 30.290298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591558, 0.547789, -0.591596,
		0.269556, -0.557158, -0.785439,
		-0.759867, -0.624102, 0.181931,
		43.312340, 37.133896, 30.344877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468761, 37.698574, 29.660780>,  <43.844246, 37.570766, 30.217525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468761, 37.698574, 29.660780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190681, 37.498787, 29.867556>,  <43.023834, 37.378914, 29.991621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190681, 37.498787, 29.867556>,  <43.468761, 37.698574, 29.660780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190681, 37.498787, 29.867556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718809, 0.480149, -0.502764,
		0.002904, -0.721104, -0.692820,
		-0.695202, -0.499465, 0.516942,
		42.982121, 37.348946, 30.022638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018948, 37.316116, 29.209465>,  <43.468761, 37.698574, 29.660780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018948, 37.316116, 29.209465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.790699, 37.335762, 29.537361>,  <42.653748, 37.347549, 29.734098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.790699, 37.335762, 29.537361>,  <43.018948, 37.316116, 29.209465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790699, 37.335762, 29.537361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717717, 0.455278, -0.526881,
		-0.399085, -0.888994, -0.224546,
		-0.570625, 0.049110, 0.819741,
		42.619511, 37.350494, 29.783283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392010, 37.128201, 28.966198>,  <43.018948, 37.316116, 29.209465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392010, 37.128201, 28.966198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.325783, 37.326160, 29.307411>,  <42.286045, 37.444935, 29.512138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.325783, 37.326160, 29.307411>,  <42.392010, 37.128201, 28.966198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325783, 37.326160, 29.307411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779128, 0.464644, -0.420791,
		-0.604605, -0.734291, 0.308658,
		-0.165567, 0.494897, 0.853033,
		42.276112, 37.474628, 29.563320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663940, 37.150806, 29.049255>,  <42.392010, 37.128201, 28.966198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663940, 37.150806, 29.049255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.828114, 37.448483, 29.260054>,  <41.926617, 37.627087, 29.386532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.828114, 37.448483, 29.260054>,  <41.663940, 37.150806, 29.049255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828114, 37.448483, 29.260054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594086, 0.656660, -0.464607,
		-0.691812, -0.122389, 0.711630,
		0.410436, 0.744190, 0.526995,
		41.951244, 37.671738, 29.418152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067833, 37.527397, 29.309687>,  <41.663940, 37.150806, 29.049255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067833, 37.527397, 29.309687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369080, 37.788071, 29.345722>,  <41.549828, 37.944477, 29.367344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369080, 37.788071, 29.345722>,  <41.067833, 37.527397, 29.309687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369080, 37.788071, 29.345722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565831, 0.711499, -0.416659,
		-0.335629, 0.262819, 0.904588,
		0.753119, 0.651686, 0.090088,
		41.595016, 37.983578, 29.372749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761364, 38.189159, 29.561558>,  <41.067833, 37.527397, 29.309687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761364, 38.189159, 29.561558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112396, 38.305191, 29.408867>,  <41.323013, 38.374809, 29.317251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112396, 38.305191, 29.408867>,  <40.761364, 38.189159, 29.561558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112396, 38.305191, 29.408867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459933, 0.734153, -0.499481,
		0.135360, 0.613902, 0.777690,
		0.877576, 0.290075, -0.381729,
		41.375668, 38.392212, 29.294348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820869, 38.850899, 29.662605>,  <40.761364, 38.189159, 29.561558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820869, 38.850899, 29.662605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.082825, 38.788887, 29.366745>,  <41.239998, 38.751678, 29.189228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.082825, 38.788887, 29.366745>,  <40.820869, 38.850899, 29.662605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082825, 38.788887, 29.366745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289945, 0.852290, -0.435356,
		0.697891, 0.499568, 0.513205,
		0.654889, -0.155030, -0.739653,
		41.279293, 38.742378, 29.144850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.780529, 38.611172, 42.960190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572941, 38.298340, 42.822197>,  <41.448387, 38.110641, 42.739399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572941, 38.298340, 42.822197>,  <41.780529, 38.611172, 42.960190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572941, 38.298340, 42.822197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182798, 0.292712, -0.938565,
		0.835018, -0.550151, -0.008945,
		-0.518970, -0.782083, -0.344986,
		41.417248, 38.063713, 42.718700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126492, 38.403175, 42.385292>,  <41.780529, 38.611172, 42.960190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126492, 38.403175, 42.385292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763691, 38.244633, 42.328373>,  <41.546009, 38.149509, 42.294220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763691, 38.244633, 42.328373>,  <42.126492, 38.403175, 42.385292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763691, 38.244633, 42.328373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098495, 0.128878, -0.986757,
		0.409443, -0.909008, -0.077854,
		-0.907003, -0.396353, -0.142301,
		41.491589, 38.125729, 42.285683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232048, 37.939232, 41.804691>,  <42.126492, 38.403175, 42.385292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232048, 37.939232, 41.804691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838715, 38.005108, 41.835491>,  <41.602715, 38.044632, 41.853973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838715, 38.005108, 41.835491>,  <42.232048, 37.939232, 41.804691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838715, 38.005108, 41.835491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078494, -0.002564, -0.996911,
		-0.163983, -0.986342, 0.015448,
		-0.983335, 0.164689, 0.077001,
		41.543713, 38.054516, 41.858593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965363, 37.440411, 41.304146>,  <42.232048, 37.939232, 41.804691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965363, 37.440411, 41.304146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714088, 37.746685, 41.359447>,  <41.563324, 37.930450, 41.392628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714088, 37.746685, 41.359447>,  <41.965363, 37.440411, 41.304146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714088, 37.746685, 41.359447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085652, 0.108563, -0.990393,
		-0.773337, -0.633989, -0.002615,
		-0.628182, 0.765684, 0.138258,
		41.525635, 37.976391, 41.400925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313274, 37.270535, 40.860909>,  <41.965363, 37.440411, 41.304146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313274, 37.270535, 40.860909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322414, 37.664146, 40.931519>,  <41.327900, 37.900314, 40.973885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322414, 37.664146, 40.931519>,  <41.313274, 37.270535, 40.860909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322414, 37.664146, 40.931519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168850, 0.177830, -0.969467,
		-0.985377, -0.007649, 0.170218,
		0.022855, 0.984031, 0.176521,
		41.329269, 37.959354, 40.984474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648159, 37.579342, 40.552929>,  <41.313274, 37.270535, 40.860909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648159, 37.579342, 40.552929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897579, 37.891071, 40.577702>,  <41.047230, 38.078110, 40.592564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897579, 37.891071, 40.577702>,  <40.648159, 37.579342, 40.552929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897579, 37.891071, 40.577702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078951, 0.141589, -0.986772,
		-0.777786, 0.610413, 0.149816,
		0.623551, 0.779326, 0.061933,
		41.084644, 38.124870, 40.596283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350925, 38.120197, 40.222263>,  <40.648159, 37.579342, 40.552929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350925, 38.120197, 40.222263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738712, 38.218208, 40.218250>,  <40.971382, 38.277016, 40.215843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738712, 38.218208, 40.218250>,  <40.350925, 38.120197, 40.222263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738712, 38.218208, 40.218250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000434, -0.039187, -0.999232,
		-0.245230, 0.968725, -0.037884,
		0.969465, 0.245025, -0.010031,
		41.029552, 38.291718, 40.215240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411396, 38.762150, 39.874168>,  <40.350925, 38.120197, 40.222263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411396, 38.762150, 39.874168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754284, 38.557087, 39.854744>,  <40.960014, 38.434048, 39.843090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754284, 38.557087, 39.854744>,  <40.411396, 38.762150, 39.874168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754284, 38.557087, 39.854744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067470, -0.018322, -0.997553,
		0.510516, 0.858396, -0.050295,
		0.857217, -0.512660, -0.048562,
		41.011448, 38.403290, 39.840176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041859, 39.181667, 39.548431>,  <40.411396, 38.762150, 39.874168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041859, 39.181667, 39.548431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068130, 38.787937, 39.482956>,  <41.083893, 38.551701, 39.443672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068130, 38.787937, 39.482956>,  <41.041859, 39.181667, 39.548431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068130, 38.787937, 39.482956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173206, 0.172797, -0.969609,
		0.982693, 0.035334, 0.181840,
		0.065682, -0.984323, -0.163686,
		41.087833, 38.492641, 39.433849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909954, 39.054741, 38.881004>,  <41.041859, 39.181667, 39.548431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909954, 39.054741, 38.881004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054039, 38.691204, 38.965149>,  <41.140491, 38.473083, 39.015636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054039, 38.691204, 38.965149>,  <40.909954, 39.054741, 38.881004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054039, 38.691204, 38.965149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043533, -0.208878, -0.976972,
		0.931854, 0.361075, -0.035676,
		0.360213, -0.908842, 0.210362,
		41.162102, 38.418552, 39.028259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299313, 38.879105, 38.334961>,  <40.909954, 39.054741, 38.881004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299313, 38.879105, 38.334961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235489, 38.516518, 38.491348>,  <41.197197, 38.298965, 38.585178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235489, 38.516518, 38.491348>,  <41.299313, 38.879105, 38.334961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235489, 38.516518, 38.491348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046385, -0.388718, -0.920188,
		0.986098, -0.164958, 0.019976,
		-0.159557, -0.906470, 0.390966,
		41.187622, 38.244576, 38.608639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793640, 38.428303, 38.049835>,  <41.299313, 38.879105, 38.334961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793640, 38.428303, 38.049835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479404, 38.210163, 38.166759>,  <41.290863, 38.079277, 38.236916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479404, 38.210163, 38.166759>,  <41.793640, 38.428303, 38.049835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479404, 38.210163, 38.166759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041282, -0.517566, -0.854647,
		0.617375, -0.659330, 0.429105,
		-0.785585, -0.545353, 0.292314,
		41.243729, 38.046558, 38.254452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903549, 37.742680, 37.856609>,  <41.793640, 38.428303, 38.049835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903549, 37.742680, 37.856609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507084, 37.794506, 37.867943>,  <41.269203, 37.825600, 37.874744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507084, 37.794506, 37.867943>,  <41.903549, 37.742680, 37.856609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507084, 37.794506, 37.867943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093220, -0.528642, -0.843710,
		-0.094334, -0.838899, 0.536050,
		-0.991166, 0.129562, 0.028333,
		41.209732, 37.833374, 37.876442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536289, 37.183548, 37.929302>,  <41.903549, 37.742680, 37.856609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536289, 37.183548, 37.929302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269882, 37.418179, 37.744976>,  <41.110039, 37.558956, 37.634380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269882, 37.418179, 37.744976>,  <41.536289, 37.183548, 37.929302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269882, 37.418179, 37.744976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113067, -0.690013, -0.714911,
		-0.737318, -0.424040, 0.525883,
		-0.666017, 0.586577, -0.460813,
		41.070076, 37.594151, 37.606731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140076, 37.089848, 37.367752>,  <41.536289, 37.183548, 37.929302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140076, 37.089848, 37.367752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181221, 36.762108, 37.142155>,  <42.205910, 36.565464, 37.006794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181221, 36.762108, 37.142155>,  <42.140076, 37.089848, 37.367752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181221, 36.762108, 37.142155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250461, -0.570070, 0.782489,
		-0.962646, 0.060769, -0.263854,
		0.102865, -0.819345, -0.563996,
		42.212082, 36.516304, 36.972958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497822, 36.653889, 37.224514>,  <42.140076, 37.089848, 37.367752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497822, 36.653889, 37.224514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843639, 36.453285, 37.237480>,  <42.051128, 36.332924, 37.245258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843639, 36.453285, 37.237480>,  <41.497822, 36.653889, 37.224514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843639, 36.453285, 37.237480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401315, -0.650117, 0.645209,
		-0.302509, -0.570818, -0.763318,
		0.864543, -0.501513, 0.032412,
		42.103001, 36.302830, 37.247204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288448, 36.023190, 37.286411>,  <41.497822, 36.653889, 37.224514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288448, 36.023190, 37.286411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668163, 36.001480, 37.410282>,  <41.895992, 35.988453, 37.484604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668163, 36.001480, 37.410282>,  <41.288448, 36.023190, 37.286411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668163, 36.001480, 37.410282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294856, -0.495546, 0.817003,
		0.109119, -0.866884, -0.486420,
		0.949291, -0.054273, 0.309679,
		41.952950, 35.985199, 37.503185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410564, 35.289391, 37.592205>,  <41.288448, 36.023190, 37.286411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410564, 35.289391, 37.592205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718826, 35.498268, 37.738300>,  <41.903782, 35.623596, 37.825958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718826, 35.498268, 37.738300>,  <41.410564, 35.289391, 37.592205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718826, 35.498268, 37.738300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098193, -0.468998, 0.877724,
		0.629643, -0.712286, -0.310159,
		0.770654, 0.522197, 0.365243,
		41.950024, 35.654926, 37.847874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728802, 34.791763, 37.895836>,  <41.410564, 35.289391, 37.592205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728802, 34.791763, 37.895836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826450, 35.145256, 38.055546>,  <41.885040, 35.357353, 38.151371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826450, 35.145256, 38.055546>,  <41.728802, 34.791763, 37.895836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826450, 35.145256, 38.055546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075186, -0.393248, 0.916353,
		0.966827, -0.253718, -0.029555,
		0.244117, 0.883733, 0.399279,
		41.899685, 35.410378, 38.175331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276230, 34.720203, 38.414387>,  <41.728802, 34.791763, 37.895836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276230, 34.720203, 38.414387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141163, 35.074947, 38.540539>,  <42.060123, 35.287792, 38.616230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141163, 35.074947, 38.540539>,  <42.276230, 34.720203, 38.414387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141163, 35.074947, 38.540539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178085, -0.389202, 0.903774,
		0.924267, 0.249007, 0.289356,
		-0.337664, 0.886858, 0.315382,
		42.039864, 35.341003, 38.635155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514908, 34.723663, 38.991215>,  <42.276230, 34.720203, 38.414387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514908, 34.723663, 38.991215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217815, 34.991474, 38.987766>,  <42.039558, 35.152161, 38.985699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217815, 34.991474, 38.987766>,  <42.514908, 34.723663, 38.991215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217815, 34.991474, 38.987766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291540, -0.311770, 0.904325,
		0.602786, 0.674186, 0.426757,
		-0.742733, 0.669532, -0.008622,
		41.994995, 35.192333, 38.985180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585056, 34.956814, 39.658150>,  <42.514908, 34.723663, 38.991215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585056, 34.956814, 39.658150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219624, 35.053123, 39.527061>,  <42.000366, 35.110909, 39.448410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219624, 35.053123, 39.527061>,  <42.585056, 34.956814, 39.658150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219624, 35.053123, 39.527061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398270, -0.366917, 0.840686,
		0.082172, 0.898553, 0.431102,
		-0.913580, 0.240776, -0.327716,
		41.945549, 35.125355, 39.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262905, 35.257961, 40.188301>,  <42.585056, 34.956814, 39.658150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262905, 35.257961, 40.188301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965191, 35.143379, 39.946980>,  <41.786560, 35.074631, 39.802185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965191, 35.143379, 39.946980>,  <42.262905, 35.257961, 40.188301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965191, 35.143379, 39.946980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481340, -0.396138, 0.781912,
		-0.462975, 0.872364, 0.156959,
		-0.744289, -0.286455, -0.603306,
		41.741905, 35.057442, 39.765987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686573, 35.541409, 40.580013>,  <42.262905, 35.257961, 40.188301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686573, 35.541409, 40.580013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534676, 35.281635, 40.316490>,  <41.443539, 35.125771, 40.158375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534676, 35.281635, 40.316490>,  <41.686573, 35.541409, 40.580013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534676, 35.281635, 40.316490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597569, -0.371438, 0.710594,
		-0.706192, 0.663527, -0.247032,
		-0.379741, -0.649435, -0.658810,
		41.420753, 35.086803, 40.118847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012810, 35.675308, 40.561367>,  <41.686573, 35.541409, 40.580013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012810, 35.675308, 40.561367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049538, 35.295383, 40.441750>,  <41.071575, 35.067429, 40.369980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049538, 35.295383, 40.441750>,  <41.012810, 35.675308, 40.561367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049538, 35.295383, 40.441750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596168, -0.292978, 0.747494,
		-0.797592, 0.109648, -0.593148,
		0.091818, -0.949811, -0.299045,
		41.077084, 35.010441, 40.352036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374115, 35.403797, 40.548008>,  <41.012810, 35.675308, 40.561367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374115, 35.403797, 40.548008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606480, 35.078796, 40.567493>,  <40.745899, 34.883797, 40.579185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606480, 35.078796, 40.567493>,  <40.374115, 35.403797, 40.548008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606480, 35.078796, 40.567493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620204, -0.403077, 0.672961,
		-0.527150, -0.421143, -0.738072,
		0.580913, -0.812507, 0.048713,
		40.780754, 34.835045, 40.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903263, 34.789944, 40.654762>,  <40.374115, 35.403797, 40.548008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903263, 34.789944, 40.654762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263084, 34.641731, 40.747292>,  <40.478977, 34.552803, 40.802811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263084, 34.641731, 40.747292>,  <39.903263, 34.789944, 40.654762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263084, 34.641731, 40.747292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429539, -0.654144, 0.622569,
		-0.079361, -0.659397, -0.747595,
		0.899554, -0.370529, 0.231323,
		40.532951, 34.530571, 40.816689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849697, 34.139084, 40.575420>,  <39.903263, 34.789944, 40.654762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849697, 34.139084, 40.575420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157181, 34.186699, 40.826790>,  <40.341671, 34.215267, 40.977612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157181, 34.186699, 40.826790>,  <39.849697, 34.139084, 40.575420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157181, 34.186699, 40.826790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456088, -0.586807, 0.669060,
		0.448409, -0.800928, -0.396791,
		0.768709, 0.119041, 0.628423,
		40.387794, 34.222412, 41.015316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768410, 33.489914, 40.399628>,  <39.849697, 34.139084, 40.575420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768410, 33.489914, 40.399628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605858, 33.190159, 40.190525>,  <39.508327, 33.010307, 40.065063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605858, 33.190159, 40.190525>,  <39.768410, 33.489914, 40.399628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605858, 33.190159, 40.190525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231642, 0.637935, -0.734425,
		0.883856, -0.177359, -0.432831,
		-0.406375, -0.749388, -0.522759,
		39.483944, 32.965343, 40.033699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964348, 33.479065, 39.649891>,  <39.768410, 33.489914, 40.399628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964348, 33.479065, 39.649891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630806, 33.258797, 39.634674>,  <39.430679, 33.126637, 39.625546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630806, 33.258797, 39.634674>,  <39.964348, 33.479065, 39.649891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630806, 33.258797, 39.634674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277187, 0.477335, -0.833858,
		0.477335, -0.684775, -0.550667,
		0.833858, 0.550667, 0.038038,
		39.380650, 33.093597, 39.623264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880100, 33.333683, 38.890793>,  <39.964348, 33.479065, 39.649891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880100, 33.333683, 38.890793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520779, 33.284615, 39.059551>,  <39.305183, 33.255173, 39.160809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520779, 33.284615, 39.059551>,  <39.880100, 33.333683, 38.890793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520779, 33.284615, 39.059551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435554, 0.374920, -0.818369,
		-0.057792, -0.918906, -0.390220,
		-0.898305, -0.122666, 0.421900,
		39.251286, 33.247814, 39.186123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416050, 33.006817, 38.442116>,  <39.880100, 33.333683, 38.890793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416050, 33.006817, 38.442116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158607, 33.192444, 38.685562>,  <39.004143, 33.303822, 38.831631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158607, 33.192444, 38.685562>,  <39.416050, 33.006817, 38.442116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158607, 33.192444, 38.685562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472155, 0.385112, -0.792943,
		-0.602364, -0.797703, -0.028748,
		-0.643605, 0.464067, 0.608618,
		38.965527, 33.331665, 38.868149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745483, 32.826218, 38.141998>,  <39.416050, 33.006817, 38.442116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745483, 32.826218, 38.141998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695549, 33.135689, 38.390461>,  <38.665588, 33.321373, 38.539539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695549, 33.135689, 38.390461>,  <38.745483, 32.826218, 38.141998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695549, 33.135689, 38.390461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432783, 0.520894, -0.735777,
		-0.892813, -0.360676, 0.269810,
		-0.124835, 0.773681, 0.621156,
		38.658100, 33.367794, 38.576809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027546, 33.005314, 38.029533>,  <38.745483, 32.826218, 38.141998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027546, 33.005314, 38.029533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244823, 33.310276, 38.170208>,  <38.375191, 33.493252, 38.254612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244823, 33.310276, 38.170208>,  <38.027546, 33.005314, 38.029533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244823, 33.310276, 38.170208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571826, 0.642640, -0.509931,
		-0.614780, 0.075887, 0.785039,
		0.543195, 0.762401, 0.351688,
		38.407784, 33.538998, 38.275715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566269, 33.454781, 38.047474>,  <38.027546, 33.005314, 38.029533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566269, 33.454781, 38.047474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884773, 33.692524, 38.092548>,  <38.075878, 33.835171, 38.119591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884773, 33.692524, 38.092548>,  <37.566269, 33.454781, 38.047474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884773, 33.692524, 38.092548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430461, 0.687555, -0.584783,
		-0.425050, 0.417136, 0.803324,
		0.796264, 0.594362, 0.112684,
		38.123653, 33.870834, 38.126354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267841, 34.116642, 38.258263>,  <37.566269, 33.454781, 38.047474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267841, 34.116642, 38.258263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611210, 34.150303, 38.055862>,  <37.817230, 34.170498, 37.934422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611210, 34.150303, 38.055862>,  <37.267841, 34.116642, 38.258263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611210, 34.150303, 38.055862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462991, 0.551738, -0.693703,
		0.220801, 0.829761, 0.512585,
		0.858421, 0.084152, -0.505996,
		37.868736, 34.175549, 37.904064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184536, 34.774891, 38.046726>,  <37.267841, 34.116642, 38.258263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184536, 34.774891, 38.046726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486622, 34.634632, 37.825207>,  <37.667873, 34.550476, 37.692295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486622, 34.634632, 37.825207>,  <37.184536, 34.774891, 38.046726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486622, 34.634632, 37.825207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365704, 0.475756, -0.799948,
		0.543975, 0.806660, 0.231065,
		0.755216, -0.350650, -0.553798,
		37.713188, 34.529438, 37.659069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519264, 35.375259, 37.729176>,  <37.184536, 34.774891, 38.046726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519264, 35.375259, 37.729176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607552, 35.057312, 37.503090>,  <37.660522, 34.866543, 37.367439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607552, 35.057312, 37.503090>,  <37.519264, 35.375259, 37.729176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607552, 35.057312, 37.503090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301031, 0.495696, -0.814657,
		0.927720, 0.349956, -0.129871,
		0.220717, -0.794869, -0.565215,
		37.673767, 34.818851, 37.333527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885460, 35.632614, 37.248173>,  <37.519264, 35.375259, 37.729176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885460, 35.632614, 37.248173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730145, 35.302616, 37.083923>,  <37.636955, 35.104618, 36.985374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730145, 35.302616, 37.083923>,  <37.885460, 35.632614, 37.248173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730145, 35.302616, 37.083923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178130, 0.504376, -0.844911,
		0.904157, -0.254926, -0.342801,
		-0.388290, -0.824996, -0.410625,
		37.613659, 35.055119, 36.960735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009663, 35.724594, 36.555279>,  <37.885460, 35.632614, 37.248173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009663, 35.724594, 36.555279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720390, 35.449543, 36.581116>,  <37.546825, 35.284512, 36.596619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720390, 35.449543, 36.581116>,  <38.009663, 35.724594, 36.555279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720390, 35.449543, 36.581116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373386, 0.310579, -0.874142,
		0.581024, -0.656282, -0.481357,
		-0.723183, -0.687629, 0.064592,
		37.503437, 35.243256, 36.600494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.899490, 30.345798, 42.443974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.499569, 30.344635, 42.436188>,  <40.259617, 30.343937, 42.431515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.499569, 30.344635, 42.436188>,  <40.899490, 30.345798, 42.443974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499569, 30.344635, 42.436188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011251, 0.726995, -0.686551,
		0.016149, -0.686637, -0.726821,
		-0.999806, -0.002910, -0.019466,
		40.199627, 30.343761, 42.430347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701843, 30.092281, 41.761391>,  <40.899490, 30.345798, 42.443974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701843, 30.092281, 41.761391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400196, 30.303169, 41.918026>,  <40.219208, 30.429703, 42.012009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400196, 30.303169, 41.918026>,  <40.701843, 30.092281, 41.761391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400196, 30.303169, 41.918026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000844, 0.595484, -0.803367,
		-0.656735, -0.606166, -0.448622,
		-0.754120, 0.527221, 0.391587,
		40.173962, 30.461336, 42.035503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383068, 30.257280, 41.253056>,  <40.701843, 30.092281, 41.761391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383068, 30.257280, 41.253056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176064, 30.498491, 41.495888>,  <40.051861, 30.643217, 41.641586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176064, 30.498491, 41.495888>,  <40.383068, 30.257280, 41.253056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176064, 30.498491, 41.495888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272423, 0.556439, -0.784959,
		-0.811151, -0.571607, -0.123686,
		-0.517512, 0.603026, 0.607076,
		40.020809, 30.679399, 41.678009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746811, 30.287050, 40.968842>,  <40.383068, 30.257280, 41.253056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746811, 30.287050, 40.968842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.827438, 30.609076, 41.192001>,  <39.875813, 30.802290, 41.325897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.827438, 30.609076, 41.192001>,  <39.746811, 30.287050, 40.968842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827438, 30.609076, 41.192001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272378, 0.593191, -0.757585,
		-0.940841, 0.000745, 0.338849,
		0.201566, 0.805062, 0.557895,
		39.887909, 30.850594, 41.359371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151928, 30.724209, 40.763153>,  <39.746811, 30.287050, 40.968842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151928, 30.724209, 40.763153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399456, 30.969748, 40.959217>,  <39.547974, 31.117071, 41.076855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399456, 30.969748, 40.959217>,  <39.151928, 30.724209, 40.763153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399456, 30.969748, 40.959217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196283, 0.725021, -0.660165,
		-0.760616, 0.312312, 0.569144,
		0.618819, 0.613845, 0.490161,
		39.585102, 31.153900, 41.106266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782104, 31.272608, 41.013393>,  <39.151928, 30.724209, 40.763153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782104, 31.272608, 41.013393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.152916, 31.422138, 41.001568>,  <39.375404, 31.511856, 40.994473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.152916, 31.422138, 41.001568>,  <38.782104, 31.272608, 41.013393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152916, 31.422138, 41.001568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311151, 0.722810, -0.617034,
		-0.209292, 0.581207, 0.786381,
		0.927028, 0.373824, -0.029565,
		39.431023, 31.534285, 40.992699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730358, 31.903856, 41.121624>,  <38.782104, 31.272608, 41.013393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730358, 31.903856, 41.121624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103973, 31.910082, 40.978889>,  <39.328140, 31.913818, 40.893250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103973, 31.910082, 40.978889>,  <38.730358, 31.903856, 41.121624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103973, 31.910082, 40.978889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252824, 0.734518, -0.629732,
		0.252304, 0.678410, 0.690002,
		0.934036, 0.015565, -0.356840,
		39.384186, 31.914751, 40.871838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864498, 32.644573, 41.104481>,  <38.730358, 31.903856, 41.121624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864498, 32.644573, 41.104481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106079, 32.457588, 40.846268>,  <39.251026, 32.345398, 40.691338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106079, 32.457588, 40.846268>,  <38.864498, 32.644573, 41.104481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106079, 32.457588, 40.846268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267245, 0.644276, -0.716582,
		0.750880, 0.605298, 0.264185,
		0.603953, -0.467465, -0.645537,
		39.287266, 32.317348, 40.652607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335239, 33.113514, 40.926754>,  <38.864498, 32.644573, 41.104481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335239, 33.113514, 40.926754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352776, 32.859085, 40.618599>,  <39.363297, 32.706429, 40.433708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352776, 32.859085, 40.618599>,  <39.335239, 33.113514, 40.926754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352776, 32.859085, 40.618599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099888, 0.764470, -0.636874,
		0.994032, 0.104875, -0.030019,
		0.043844, -0.636071, -0.770384,
		39.365929, 32.668262, 40.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076698, 33.324692, 41.119015>,  <39.335239, 33.113514, 40.926754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076698, 33.324692, 41.119015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.224537, 33.655647, 41.288166>,  <40.313240, 33.854221, 41.389656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.224537, 33.655647, 41.288166>,  <40.076698, 33.324692, 41.119015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224537, 33.655647, 41.288166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152114, -0.395088, 0.905962,
		0.916656, -0.399168, -0.020167,
		0.369599, 0.827388, 0.422879,
		40.335415, 33.903862, 41.415031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500027, 33.045387, 41.660160>,  <40.076698, 33.324692, 41.119015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500027, 33.045387, 41.660160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424889, 33.425091, 41.761051>,  <40.379807, 33.652912, 41.821587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424889, 33.425091, 41.761051>,  <40.500027, 33.045387, 41.660160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424889, 33.425091, 41.761051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153750, -0.282050, 0.947000,
		0.970091, 0.139107, 0.198930,
		-0.187843, 0.949261, 0.252226,
		40.368534, 33.709869, 41.836720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811462, 33.127090, 42.204369>,  <40.500027, 33.045387, 41.660160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811462, 33.127090, 42.204369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.536190, 33.416321, 42.228241>,  <40.371025, 33.589859, 42.242565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.536190, 33.416321, 42.228241>,  <40.811462, 33.127090, 42.204369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536190, 33.416321, 42.228241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214695, -0.281522, 0.935228,
		0.693044, 0.630796, 0.348980,
		-0.688183, 0.723078, 0.059678,
		40.329735, 33.633244, 42.246143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968353, 33.342442, 42.902615>,  <40.811462, 33.127090, 42.204369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968353, 33.342442, 42.902615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623085, 33.488754, 42.763393>,  <40.415924, 33.576542, 42.679859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623085, 33.488754, 42.763393>,  <40.968353, 33.342442, 42.902615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623085, 33.488754, 42.763393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449302, -0.241944, 0.859994,
		0.230357, 0.898704, 0.373184,
		-0.863170, 0.365778, -0.348057,
		40.364136, 33.598488, 42.658978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739361, 33.749416, 43.447323>,  <40.968353, 33.342442, 42.902615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739361, 33.749416, 43.447323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407383, 33.677586, 43.236061>,  <40.208199, 33.634487, 43.109303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407383, 33.677586, 43.236061>,  <40.739361, 33.749416, 43.447323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407383, 33.677586, 43.236061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494659, -0.200786, 0.845575,
		-0.257895, 0.963035, 0.077810,
		-0.829942, -0.179580, -0.528155,
		40.158401, 33.623711, 43.077614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166264, 34.106579, 43.708538>,  <40.739361, 33.749416, 43.447323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166264, 34.106579, 43.708538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.990215, 33.791691, 43.535759>,  <39.884586, 33.602760, 43.432091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.990215, 33.791691, 43.535759>,  <40.166264, 34.106579, 43.708538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990215, 33.791691, 43.535759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476542, -0.202938, 0.855409,
		-0.761050, 0.582329, -0.285823,
		-0.440125, -0.787216, -0.431950,
		39.858177, 33.555527, 43.406174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588715, 34.052280, 44.098049>,  <40.166264, 34.106579, 43.708538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588715, 34.052280, 44.098049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630550, 33.711159, 43.893391>,  <39.655651, 33.506485, 43.770596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630550, 33.711159, 43.893391>,  <39.588715, 34.052280, 44.098049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630550, 33.711159, 43.893391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283222, -0.518705, 0.806679,
		-0.953334, 0.060536, -0.295787,
		0.104593, -0.852808, -0.511644,
		39.661930, 33.455315, 43.739899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028061, 33.695282, 44.196800>,  <39.588715, 34.052280, 44.098049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028061, 33.695282, 44.196800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284000, 33.411072, 44.079674>,  <39.437565, 33.240547, 44.009396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284000, 33.411072, 44.079674>,  <39.028061, 33.695282, 44.196800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284000, 33.411072, 44.079674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125464, -0.472496, 0.872357,
		-0.758187, -0.521441, -0.391473,
		0.639852, -0.710526, -0.292819,
		39.475956, 33.197914, 43.991829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690617, 33.127640, 44.437897>,  <39.028061, 33.695282, 44.196800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690617, 33.127640, 44.437897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075588, 33.040604, 44.372913>,  <39.306572, 32.988384, 44.333923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075588, 33.040604, 44.372913>,  <38.690617, 33.127640, 44.437897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075588, 33.040604, 44.372913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076882, -0.355467, 0.931522,
		-0.260434, -0.909011, -0.325382,
		0.962426, -0.217584, -0.162462,
		39.364315, 32.975327, 44.324173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833893, 32.395359, 44.689304>,  <38.690617, 33.127640, 44.437897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833893, 32.395359, 44.689304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.194042, 32.568855, 44.675491>,  <39.410133, 32.672955, 44.667202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.194042, 32.568855, 44.675491>,  <38.833893, 32.395359, 44.689304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194042, 32.568855, 44.675491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246529, -0.443132, 0.861892,
		0.358536, -0.784539, -0.505915,
		0.900375, 0.433742, -0.034532,
		39.464153, 32.698978, 44.665131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355789, 31.886576, 44.728245>,  <38.833893, 32.395359, 44.689304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355789, 31.886576, 44.728245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553410, 32.218792, 44.831093>,  <39.671982, 32.418121, 44.892803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553410, 32.218792, 44.831093>,  <39.355789, 31.886576, 44.728245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553410, 32.218792, 44.831093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378538, -0.471716, 0.796363,
		0.782703, -0.296112, -0.547443,
		0.494050, 0.830543, 0.257124,
		39.701626, 32.467957, 44.908230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054695, 31.677002, 44.951523>,  <39.355789, 31.886576, 44.728245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054695, 31.677002, 44.951523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057121, 32.059704, 45.067852>,  <40.058578, 32.289326, 45.137650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057121, 32.059704, 45.067852>,  <40.054695, 31.677002, 44.951523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057121, 32.059704, 45.067852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644347, -0.226148, 0.730530,
		0.764709, 0.182960, -0.617856,
		0.006069, 0.956757, 0.290827,
		40.058941, 32.346729, 45.155102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767887, 31.951834, 44.938866>,  <40.054695, 31.677002, 44.951523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767887, 31.951834, 44.938866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534904, 32.137821, 45.205563>,  <40.395115, 32.249413, 45.365582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534904, 32.137821, 45.205563>,  <40.767887, 31.951834, 44.938866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534904, 32.137821, 45.205563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586289, -0.327837, 0.740802,
		0.563032, 0.822391, -0.081654,
		-0.582460, 0.464968, 0.666742,
		40.360165, 32.277313, 45.405586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209484, 32.173660, 45.511856>,  <40.767887, 31.951834, 44.938866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209484, 32.173660, 45.511856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836575, 32.168228, 45.656452>,  <40.612827, 32.164967, 45.743210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836575, 32.168228, 45.656452>,  <41.209484, 32.173660, 45.511856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836575, 32.168228, 45.656452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325894, -0.465285, 0.822984,
		0.157017, 0.885057, 0.438201,
		-0.932276, -0.013585, 0.361492,
		40.556892, 32.164154, 45.764900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.679184, 32.195366, 46.775337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891827, 31.968264, 46.523926>,  <36.019413, 31.832003, 46.373077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891827, 31.968264, 46.523926>,  <35.679184, 32.195366, 46.775337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891827, 31.968264, 46.523926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194797, 0.804137, -0.561620,
		0.824289, 0.176122, 0.538078,
		0.531603, -0.567754, -0.628533,
		36.051308, 31.797937, 46.335365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325890, 32.580097, 46.645992>,  <35.679184, 32.195366, 46.775337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325890, 32.580097, 46.645992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235813, 32.336937, 46.341427>,  <36.181767, 32.191040, 46.158688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235813, 32.336937, 46.341427>,  <36.325890, 32.580097, 46.645992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235813, 32.336937, 46.341427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024520, 0.784774, -0.619296,
		0.974006, -0.120790, -0.191630,
		-0.225191, -0.607897, -0.761413,
		36.168255, 32.154568, 46.113003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684807, 32.834877, 46.012714>,  <36.325890, 32.580097, 46.645992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684807, 32.834877, 46.012714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.427521, 32.575619, 45.849655>,  <36.273148, 32.420063, 45.751820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.427521, 32.575619, 45.849655>,  <36.684807, 32.834877, 46.012714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427521, 32.575619, 45.849655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012193, 0.541002, -0.840933,
		0.765588, -0.535930, -0.355884,
		-0.643215, -0.648148, -0.407650,
		36.234554, 32.381176, 45.727360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049644, 32.651924, 45.475166>,  <36.684807, 32.834877, 46.012714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049644, 32.651924, 45.475166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.661083, 32.571747, 45.424252>,  <36.427948, 32.523640, 45.393703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.661083, 32.571747, 45.424252>,  <37.049644, 32.651924, 45.475166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661083, 32.571747, 45.424252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020149, 0.464565, -0.885310,
		0.236589, -0.862556, -0.447240,
		-0.971401, -0.200443, -0.127290,
		36.369663, 32.511612, 45.386063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034149, 32.510086, 44.799625>,  <37.049644, 32.651924, 45.475166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034149, 32.510086, 44.799625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642231, 32.553841, 44.866592>,  <36.407078, 32.580093, 44.906773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642231, 32.553841, 44.866592>,  <37.034149, 32.510086, 44.799625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642231, 32.553841, 44.866592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108870, 0.410492, -0.905342,
		-0.167759, -0.905279, -0.390290,
		-0.979798, 0.109388, 0.167422,
		36.348293, 32.586658, 44.916821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710720, 32.214119, 44.170654>,  <37.034149, 32.510086, 44.799625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710720, 32.214119, 44.170654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.445480, 32.454792, 44.348766>,  <36.286335, 32.599194, 44.455635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.445480, 32.454792, 44.348766>,  <36.710720, 32.214119, 44.170654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445480, 32.454792, 44.348766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246452, 0.386212, -0.888877,
		-0.706792, -0.699158, -0.107813,
		-0.663104, 0.601681, 0.445280,
		36.246548, 32.635296, 44.482349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093994, 32.234661, 43.792759>,  <36.710720, 32.214119, 44.170654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093994, 32.234661, 43.792759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133541, 32.582264, 43.986691>,  <36.157269, 32.790825, 44.103050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133541, 32.582264, 43.986691>,  <36.093994, 32.234661, 43.792759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133541, 32.582264, 43.986691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051472, 0.491030, -0.869621,
		-0.993769, 0.061018, 0.093274,
		0.098863, 0.869003, 0.484829,
		36.163200, 32.842964, 44.132141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836353, 32.698292, 43.261509>,  <36.093994, 32.234661, 43.792759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836353, 32.698292, 43.261509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996349, 32.960003, 43.518238>,  <36.092346, 33.117027, 43.672276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996349, 32.960003, 43.518238>,  <35.836353, 32.698292, 43.261509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996349, 32.960003, 43.518238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003030, 0.701219, -0.712939,
		-0.916515, 0.283223, 0.282461,
		0.399988, 0.654276, 0.641820,
		36.116344, 33.156284, 43.710785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374809, 33.232574, 43.410576>,  <35.836353, 32.698292, 43.261509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374809, 33.232574, 43.410576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735512, 33.390240, 43.481537>,  <35.951935, 33.484840, 43.524113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735512, 33.390240, 43.481537>,  <35.374809, 33.232574, 43.410576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735512, 33.390240, 43.481537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144603, 0.661863, -0.735546,
		-0.407339, 0.637630, 0.653836,
		0.901756, 0.394164, 0.177400,
		36.006039, 33.508488, 43.534756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314388, 33.925297, 43.349724>,  <35.374809, 33.232574, 43.410576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314388, 33.925297, 43.349724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.712917, 33.915966, 43.316761>,  <35.952034, 33.910366, 43.296982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.712917, 33.915966, 43.316761>,  <35.314388, 33.925297, 43.349724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712917, 33.915966, 43.316761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021010, 0.866214, -0.499231,
		0.083030, 0.499128, 0.862541,
		0.996326, -0.023329, -0.082409,
		36.011814, 33.908966, 43.292038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417923, 34.522907, 43.329552>,  <35.314388, 33.925297, 43.349724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417923, 34.522907, 43.329552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746422, 34.349545, 43.181114>,  <35.943520, 34.245525, 43.092052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746422, 34.349545, 43.181114>,  <35.417923, 34.522907, 43.329552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746422, 34.349545, 43.181114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090354, 0.740966, -0.665436,
		0.563376, 0.512957, 0.647675,
		0.821245, -0.433411, -0.371095,
		35.992794, 34.219521, 43.069786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822964, 35.138821, 43.216122>,  <35.417923, 34.522907, 43.329552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822964, 35.138821, 43.216122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013165, 34.857285, 43.005028>,  <36.127285, 34.688362, 42.878372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013165, 34.857285, 43.005028>,  <35.822964, 35.138821, 43.216122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013165, 34.857285, 43.005028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249628, 0.683187, -0.686252,
		0.843553, 0.194578, 0.500557,
		0.475504, -0.703843, -0.527732,
		36.155815, 34.646133, 42.846706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561443, 35.477879, 43.033775>,  <35.822964, 35.138821, 43.216122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561443, 35.477879, 43.033775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474178, 35.195400, 42.764347>,  <36.421818, 35.025913, 42.602692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474178, 35.195400, 42.764347>,  <36.561443, 35.477879, 43.033775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474178, 35.195400, 42.764347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301734, 0.607567, -0.734723,
		0.928095, -0.363530, 0.080532,
		-0.218165, -0.706192, -0.673570,
		36.408730, 34.983543, 42.562275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940769, 35.553219, 42.503094>,  <36.561443, 35.477879, 43.033775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940769, 35.553219, 42.503094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.667091, 35.327007, 42.318893>,  <36.502884, 35.191280, 42.208374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.667091, 35.327007, 42.318893>,  <36.940769, 35.553219, 42.503094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667091, 35.327007, 42.318893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000827, 0.630819, -0.775929,
		0.729303, -0.531265, -0.431133,
		-0.684191, -0.565530, -0.460498,
		36.461834, 35.157349, 42.180744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727764, 35.579613, 42.316250>,  <36.940769, 35.553219, 42.503094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727764, 35.579613, 42.316250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792534, 35.928997, 42.499920>,  <37.831398, 36.138630, 42.610123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792534, 35.928997, 42.499920>,  <37.727764, 35.579613, 42.316250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792534, 35.928997, 42.499920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084469, -0.451340, 0.888345,
		0.983181, -0.182633, 0.000697,
		0.161927, 0.873463, 0.459175,
		37.841110, 36.191036, 42.637672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069897, 35.401436, 42.915520>,  <37.727764, 35.579613, 42.316250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069897, 35.401436, 42.915520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947575, 35.770203, 43.010639>,  <37.874180, 35.991463, 43.067711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947575, 35.770203, 43.010639>,  <38.069897, 35.401436, 42.915520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947575, 35.770203, 43.010639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173995, -0.299670, 0.938043,
		0.936060, 0.245485, 0.252050,
		-0.305807, 0.921919, 0.237795,
		37.855831, 36.046780, 43.081978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592934, 35.612823, 43.341255>,  <38.069897, 35.401436, 42.915520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592934, 35.612823, 43.341255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278458, 35.845207, 43.425537>,  <38.089771, 35.984638, 43.476105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278458, 35.845207, 43.425537>,  <38.592934, 35.612823, 43.341255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278458, 35.845207, 43.425537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037535, -0.295429, 0.954627,
		0.616848, 0.758424, 0.210456,
		-0.786187, 0.580960, 0.210703,
		38.042603, 36.019497, 43.488747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799473, 35.830360, 44.049191>,  <38.592934, 35.612823, 43.341255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799473, 35.830360, 44.049191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413982, 35.926491, 44.002769>,  <38.182686, 35.984169, 43.974915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413982, 35.926491, 44.002769>,  <38.799473, 35.830360, 44.049191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413982, 35.926491, 44.002769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198583, -0.355224, 0.913444,
		0.178296, 0.903360, 0.390064,
		-0.963730, 0.240324, -0.116057,
		38.124863, 35.998589, 43.967953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690231, 36.329643, 44.504402>,  <38.799473, 35.830360, 44.049191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690231, 36.329643, 44.504402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.333668, 36.164970, 44.428604>,  <38.119728, 36.066166, 44.383125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.333668, 36.164970, 44.428604>,  <38.690231, 36.329643, 44.504402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333668, 36.164970, 44.428604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003149, -0.412488, 0.910957,
		-0.453190, 0.812632, 0.366399,
		-0.891408, -0.411683, -0.189495,
		38.066246, 36.041466, 44.371758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289703, 36.440372, 45.129402>,  <38.690231, 36.329643, 44.504402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289703, 36.440372, 45.129402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097034, 36.141911, 44.945553>,  <37.981434, 35.962833, 44.835243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097034, 36.141911, 44.945553>,  <38.289703, 36.440372, 45.129402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097034, 36.141911, 44.945553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036155, -0.507107, 0.861125,
		-0.875607, 0.431394, 0.217280,
		-0.481669, -0.746151, -0.459624,
		37.952534, 35.918064, 44.807667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645298, 36.240108, 45.569302>,  <38.289703, 36.440372, 45.129402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645298, 36.240108, 45.569302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743988, 35.927578, 45.339985>,  <37.803204, 35.740059, 45.202396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743988, 35.927578, 45.339985>,  <37.645298, 36.240108, 45.569302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743988, 35.927578, 45.339985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161936, -0.616498, 0.770523,
		-0.955460, -0.097272, -0.278630,
		0.246725, -0.781324, -0.573288,
		37.818005, 35.693180, 45.167999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188568, 35.696259, 45.807076>,  <37.645298, 36.240108, 45.569302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188568, 35.696259, 45.807076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.468929, 35.502621, 45.597549>,  <37.637146, 35.386436, 45.471832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.468929, 35.502621, 45.597549>,  <37.188568, 35.696259, 45.807076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468929, 35.502621, 45.597549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121818, -0.804862, 0.580824,
		-0.702773, -0.343294, -0.623105,
		0.700907, -0.484093, -0.523816,
		37.679203, 35.357391, 45.440403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894192, 35.028984, 45.701126>,  <37.188568, 35.696259, 45.807076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894192, 35.028984, 45.701126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286545, 34.967445, 45.653458>,  <37.521957, 34.930523, 45.624859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286545, 34.967445, 45.653458>,  <36.894192, 35.028984, 45.701126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286545, 34.967445, 45.653458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051034, -0.794308, 0.605367,
		-0.187786, -0.587713, -0.786975,
		0.980883, -0.153842, -0.119167,
		37.580811, 34.921291, 45.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944687, 34.193901, 45.711987>,  <36.894192, 35.028984, 45.701126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944687, 34.193901, 45.711987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.314743, 34.338589, 45.758083>,  <37.536777, 34.425404, 45.785740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.314743, 34.338589, 45.758083>,  <36.944687, 34.193901, 45.711987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314743, 34.338589, 45.758083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206913, -0.734936, 0.645798,
		0.318294, -0.573606, -0.754761,
		0.925135, 0.361724, 0.115239,
		37.592285, 34.447105, 45.792656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375515, 33.692596, 45.587185>,  <36.944687, 34.193901, 45.711987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375515, 33.692596, 45.587185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580147, 33.942200, 45.823456>,  <37.702927, 34.091961, 45.965218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580147, 33.942200, 45.823456>,  <37.375515, 33.692596, 45.587185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580147, 33.942200, 45.823456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406520, -0.781417, 0.473423,
		0.756987, -0.002068, -0.653427,
		0.511578, 0.624006, 0.590682,
		37.733620, 34.129402, 46.000660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061001, 33.398201, 45.724533>,  <37.375515, 33.692596, 45.587185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061001, 33.398201, 45.724533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001606, 33.674385, 46.007717>,  <37.965969, 33.840096, 46.177628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001606, 33.674385, 46.007717>,  <38.061001, 33.398201, 45.724533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001606, 33.674385, 46.007717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380224, -0.621009, 0.685403,
		0.912898, 0.370957, -0.170320,
		-0.148485, 0.690463, 0.707964,
		37.957062, 33.881523, 46.220108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754337, 33.579147, 46.082211>,  <38.061001, 33.398201, 45.724533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754337, 33.579147, 46.082211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.456310, 33.690216, 46.324787>,  <38.277493, 33.756859, 46.470333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.456310, 33.690216, 46.324787>,  <38.754337, 33.579147, 46.082211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456310, 33.690216, 46.324787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363084, -0.593851, 0.717991,
		0.559502, 0.755141, 0.341642,
		-0.745069, 0.277673, 0.606441,
		38.232788, 33.773518, 46.506718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151642, 33.565639, 46.740299>,  <38.754337, 33.579147, 46.082211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151642, 33.565639, 46.740299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.753513, 33.547234, 46.774284>,  <38.514637, 33.536190, 46.794674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.753513, 33.547234, 46.774284>,  <39.151642, 33.565639, 46.740299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753513, 33.547234, 46.774284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092246, -0.714252, 0.693784,
		0.028758, 0.698375, 0.715154,
		-0.995321, -0.046018, 0.084962,
		38.454918, 33.533428, 46.799774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477837, 34.105011, 47.038082>,  <39.151642, 33.565639, 46.740299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477837, 34.105011, 47.038082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866508, 34.178638, 47.097343>,  <40.099712, 34.222816, 47.132900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866508, 34.178638, 47.097343>,  <39.477837, 34.105011, 47.038082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866508, 34.178638, 47.097343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005279, 0.643757, -0.765212,
		-0.236228, 0.742761, 0.626500,
		0.971683, 0.184072, 0.148152,
		40.158012, 34.233860, 47.141788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432919, 34.757195, 47.118675>,  <39.477837, 34.105011, 47.038082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432919, 34.757195, 47.118675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808773, 34.674290, 47.009777>,  <40.034286, 34.624546, 46.944439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808773, 34.674290, 47.009777>,  <39.432919, 34.757195, 47.118675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808773, 34.674290, 47.009777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006528, 0.806370, -0.591375,
		0.342104, 0.553902, 0.759050,
		0.939639, -0.207267, -0.272247,
		40.090664, 34.612110, 46.928104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747440, 35.453926, 47.111561>,  <39.432919, 34.757195, 47.118675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747440, 35.453926, 47.111561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.992256, 35.235855, 46.882408>,  <40.139145, 35.105015, 46.744915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.992256, 35.235855, 46.882408>,  <39.747440, 35.453926, 47.111561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992256, 35.235855, 46.882408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101528, 0.772581, -0.626746,
		0.784285, 0.325428, 0.528199,
		0.612037, -0.545175, -0.572884,
		40.175869, 35.072304, 46.710545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414024, 35.883297, 46.971123>,  <39.747440, 35.453926, 47.111561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414024, 35.883297, 46.971123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.380543, 35.610809, 46.680214>,  <40.360455, 35.447315, 46.505669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.380543, 35.610809, 46.680214>,  <40.414024, 35.883297, 46.971123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380543, 35.610809, 46.680214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266382, 0.687981, -0.675072,
		0.960227, -0.250237, 0.123881,
		-0.083700, -0.681222, -0.727276,
		40.355434, 35.406445, 46.462032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996353, 35.960579, 46.619572>,  <40.414024, 35.883297, 46.971123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996353, 35.960579, 46.619572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765766, 35.782566, 46.345451>,  <40.627415, 35.675758, 46.180981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765766, 35.782566, 46.345451>,  <40.996353, 35.960579, 46.619572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765766, 35.782566, 46.345451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355845, 0.618249, -0.700815,
		0.735571, -0.647856, -0.198037,
		-0.576463, -0.445029, -0.685303,
		40.592827, 35.649059, 46.139862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457176, 35.860905, 45.901237>,  <40.996353, 35.960579, 46.619572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457176, 35.860905, 45.901237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073784, 35.836323, 45.789852>,  <40.843750, 35.821575, 45.723019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073784, 35.836323, 45.789852>,  <41.457176, 35.860905, 45.901237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073784, 35.836323, 45.789852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205833, 0.526750, -0.824722,
		0.197366, -0.847796, -0.492229,
		-0.958478, -0.061455, -0.278467,
		40.786240, 35.817886, 45.706310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493675, 35.859947, 45.229271>,  <41.457176, 35.860905, 45.901237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493675, 35.859947, 45.229271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109879, 35.959866, 45.281384>,  <40.879601, 36.019817, 45.312653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109879, 35.959866, 45.281384>,  <41.493675, 35.859947, 45.229271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109879, 35.959866, 45.281384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005470, 0.478862, -0.877873,
		-0.281678, -0.841601, -0.460832,
		-0.959493, 0.249799, 0.130282,
		40.822029, 36.034805, 45.320469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097580, 35.592178, 44.600735>,  <41.493675, 35.859947, 45.229271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097580, 35.592178, 44.600735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.885807, 35.888577, 44.765957>,  <40.758743, 36.066418, 44.865089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.885807, 35.888577, 44.765957>,  <41.097580, 35.592178, 44.600735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885807, 35.888577, 44.765957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030274, 0.470084, -0.882102,
		-0.847809, -0.479522, -0.226447,
		-0.529437, 0.740999, 0.413059,
		40.726974, 36.110878, 44.889874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614265, 35.755772, 44.076679>,  <41.097580, 35.592178, 44.600735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614265, 35.755772, 44.076679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642387, 36.080036, 44.309193>,  <40.659260, 36.274593, 44.448700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642387, 36.080036, 44.309193>,  <40.614265, 35.755772, 44.076679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642387, 36.080036, 44.309193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053916, 0.578782, -0.813698,
		-0.996068, 0.088546, -0.003017,
		0.070303, 0.810661, 0.581280,
		40.663479, 36.323235, 44.483578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238823, 36.230671, 43.785446>,  <40.614265, 35.755772, 44.076679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238823, 36.230671, 43.785446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476849, 36.462357, 44.008305>,  <40.619663, 36.601368, 44.142017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476849, 36.462357, 44.008305>,  <40.238823, 36.230671, 43.785446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476849, 36.462357, 44.008305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180750, 0.579029, -0.795019,
		-0.783090, 0.573790, 0.239866,
		0.595063, 0.579216, 0.557144,
		40.655369, 36.636120, 44.175449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996075, 36.867004, 43.593708>,  <40.238823, 36.230671, 43.785446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996075, 36.867004, 43.593708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353447, 36.919029, 43.765690>,  <40.567871, 36.950245, 43.868877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353447, 36.919029, 43.765690>,  <39.996075, 36.867004, 43.593708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353447, 36.919029, 43.765690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218287, 0.710842, -0.668622,
		-0.392591, 0.691222, 0.606699,
		0.893433, 0.130061, 0.429955,
		40.621475, 36.958046, 43.894676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098816, 37.619705, 43.611633>,  <39.996075, 36.867004, 43.593708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098816, 37.619705, 43.611633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460995, 37.449959, 43.607868>,  <40.678303, 37.348110, 43.605610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460995, 37.449959, 43.607868>,  <40.098816, 37.619705, 43.611633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460995, 37.449959, 43.607868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281508, 0.616946, -0.734936,
		0.317688, 0.662792, 0.678072,
		0.905443, -0.424363, -0.009415,
		40.732628, 37.322651, 43.605045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565109, 38.191826, 43.679859>,  <40.098816, 37.619705, 43.611633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565109, 38.191826, 43.679859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805996, 37.898216, 43.554295>,  <40.950527, 37.722050, 43.478954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805996, 37.898216, 43.554295>,  <40.565109, 38.191826, 43.679859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805996, 37.898216, 43.554295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309716, 0.577224, -0.755572,
		0.735807, 0.357794, 0.574953,
		0.602216, -0.734027, -0.313911,
		40.986660, 37.678009, 43.460121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327858, 38.475739, 43.503773>,  <40.565109, 38.191826, 43.679859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327858, 38.475739, 43.503773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.232830, 38.152882, 43.287594>,  <41.175812, 37.959167, 43.157887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.232830, 38.152882, 43.287594>,  <41.327858, 38.475739, 43.503773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232830, 38.152882, 43.287594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336612, 0.453492, -0.825250,
		0.911182, -0.377974, 0.163959,
		-0.237569, -0.807144, -0.540444,
		41.161560, 37.910740, 43.125462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.176374, 28.156540, 39.915756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792582, 28.196470, 40.021152>,  <26.562305, 28.220428, 40.084389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792582, 28.196470, 40.021152>,  <27.176374, 28.156540, 39.915756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792582, 28.196470, 40.021152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146223, 0.622951, -0.768473,
		-0.240857, -0.775865, -0.583114,
		-0.959483, 0.099827, 0.263491,
		26.504736, 28.226418, 40.100201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654558, 27.983524, 39.292282>,  <27.176374, 28.156540, 39.915756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654558, 27.983524, 39.292282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488865, 28.246132, 39.544441>,  <26.389450, 28.403696, 39.695736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488865, 28.246132, 39.544441>,  <26.654558, 27.983524, 39.292282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488865, 28.246132, 39.544441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127658, 0.643856, -0.754422,
		-0.901174, -0.392980, -0.182896,
		-0.414232, 0.656518, 0.630394,
		26.364595, 28.443087, 39.733559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183250, 28.313337, 38.859108>,  <26.654558, 27.983524, 39.292282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183250, 28.313337, 38.859108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.123213, 28.543159, 39.180943>,  <26.087191, 28.681053, 39.374043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.123213, 28.543159, 39.180943>,  <26.183250, 28.313337, 38.859108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123213, 28.543159, 39.180943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493713, 0.661512, -0.564490,
		-0.856574, -0.481961, 0.184377,
		-0.150095, 0.574557, 0.804584,
		26.078184, 28.715527, 39.422318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488777, 28.587662, 38.781261>,  <26.183250, 28.313337, 38.859108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488777, 28.587662, 38.781261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.678881, 28.839825, 39.026772>,  <25.792942, 28.991123, 39.174076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.678881, 28.839825, 39.026772>,  <25.488777, 28.587662, 38.781261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678881, 28.839825, 39.026772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363364, 0.775952, -0.515621,
		-0.801309, 0.022030, 0.597845,
		0.475258, 0.630407, 0.613773,
		25.821459, 29.028946, 39.210903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016747, 29.051062, 38.988144>,  <25.488777, 28.587662, 38.781261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016747, 29.051062, 38.988144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.361477, 29.242855, 39.054298>,  <25.568316, 29.357931, 39.093990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.361477, 29.242855, 39.054298>,  <25.016747, 29.051062, 38.988144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361477, 29.242855, 39.054298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325169, 0.772562, -0.545356,
		-0.389260, 0.416223, 0.821727,
		0.861825, 0.479485, 0.165385,
		25.620024, 29.386700, 39.103912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733555, 29.599304, 39.048714>,  <25.016747, 29.051062, 38.988144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733555, 29.599304, 39.048714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.119192, 29.702295, 39.022690>,  <25.350574, 29.764091, 39.007076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.119192, 29.702295, 39.022690>,  <24.733555, 29.599304, 39.048714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119192, 29.702295, 39.022690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234970, 0.712840, -0.660794,
		-0.123765, 0.652352, 0.747743,
		0.964091, 0.257480, -0.065058,
		25.408419, 29.779539, 39.003174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816891, 30.267067, 39.225994>,  <24.733555, 29.599304, 39.048714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816891, 30.267067, 39.225994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.143427, 30.206797, 39.002964>,  <25.339348, 30.170633, 38.869148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.143427, 30.206797, 39.002964>,  <24.816891, 30.267067, 39.225994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143427, 30.206797, 39.002964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181842, 0.849228, -0.495728,
		0.548200, 0.506072, 0.665858,
		0.816339, -0.150677, -0.557572,
		25.388329, 30.161594, 38.835693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109709, 30.882948, 39.248596>,  <24.816891, 30.267067, 39.225994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109709, 30.882948, 39.248596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.267859, 30.736172, 38.911777>,  <25.362749, 30.648106, 38.709686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.267859, 30.736172, 38.911777>,  <25.109709, 30.882948, 39.248596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267859, 30.736172, 38.911777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019965, 0.919955, -0.391516,
		0.918303, 0.137983, 0.371052,
		0.395374, -0.366938, -0.842043,
		25.386471, 30.626091, 38.659164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668423, 31.260782, 39.160660>,  <25.109709, 30.882948, 39.248596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668423, 31.260782, 39.160660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603773, 31.131981, 38.787525>,  <25.564983, 31.054701, 38.563644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603773, 31.131981, 38.787525>,  <25.668423, 31.260782, 39.160660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603773, 31.131981, 38.787525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138174, 0.928574, -0.344469,
		0.977131, -0.184569, -0.105588,
		-0.161625, -0.322002, -0.932841,
		25.555286, 31.035381, 38.507671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155733, 31.596537, 38.881649>,  <25.668423, 31.260782, 39.160660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155733, 31.596537, 38.881649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902924, 31.509830, 38.584042>,  <25.751238, 31.457808, 38.405479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902924, 31.509830, 38.584042>,  <26.155733, 31.596537, 38.881649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902924, 31.509830, 38.584042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152011, 0.906754, -0.393307,
		0.759893, -0.361678, -0.540140,
		-0.632024, -0.216764, -0.744015,
		25.713316, 31.444801, 38.360836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401993, 31.869408, 38.283230>,  <26.155733, 31.596537, 38.881649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401993, 31.869408, 38.283230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.035950, 31.804121, 38.135750>,  <25.816324, 31.764950, 38.047260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.035950, 31.804121, 38.135750>,  <26.401993, 31.869408, 38.283230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035950, 31.804121, 38.135750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110162, 0.778415, -0.618009,
		0.387870, -0.606161, -0.694353,
		-0.915107, -0.163216, -0.368700,
		25.761417, 31.755156, 38.025139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466755, 31.696352, 37.583664>,  <26.401993, 31.869408, 38.283230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466755, 31.696352, 37.583664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.084679, 31.809401, 37.618851>,  <25.855433, 31.877230, 37.639961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.084679, 31.809401, 37.618851>,  <26.466755, 31.696352, 37.583664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084679, 31.809401, 37.618851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108605, 0.611098, -0.784069,
		-0.275349, -0.739381, -0.614409,
		-0.955190, 0.282621, 0.087965,
		25.798122, 31.894186, 37.645241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168581, 31.781334, 36.875607>,  <26.466755, 31.696352, 37.583664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168581, 31.781334, 36.875607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941896, 31.997082, 37.124741>,  <25.805885, 32.126530, 37.274220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941896, 31.997082, 37.124741>,  <26.168581, 31.781334, 36.875607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941896, 31.997082, 37.124741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080987, 0.788746, -0.609361,
		-0.819928, -0.294889, -0.490672,
		-0.566709, 0.539370, 0.622833,
		25.771883, 32.158894, 37.311592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693693, 32.122856, 36.445160>,  <26.168581, 31.781334, 36.875607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693693, 32.122856, 36.445160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.707661, 32.335838, 36.783455>,  <25.716042, 32.463627, 36.986431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.707661, 32.335838, 36.783455>,  <25.693693, 32.122856, 36.445160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707661, 32.335838, 36.783455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006950, 0.846105, -0.532972,
		-0.999366, 0.024489, 0.025846,
		0.034920, 0.532454, 0.845738,
		25.718136, 32.495575, 37.037178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210888, 32.719246, 36.436077>,  <25.693693, 32.122856, 36.445160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210888, 32.719246, 36.436077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.516220, 32.828609, 36.670197>,  <25.699419, 32.894230, 36.810669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.516220, 32.828609, 36.670197>,  <25.210888, 32.719246, 36.436077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516220, 32.828609, 36.670197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057960, 0.873381, -0.483576,
		-0.643401, 0.403053, 0.650833,
		0.763332, 0.273411, 0.585295,
		25.745220, 32.910633, 36.845783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192205, 33.387955, 36.437057>,  <25.210888, 32.719246, 36.436077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192205, 33.387955, 36.437057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.560757, 33.340378, 36.585064>,  <25.781887, 33.311832, 36.673866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.560757, 33.340378, 36.585064>,  <25.192205, 33.387955, 36.437057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560757, 33.340378, 36.585064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234462, 0.929386, -0.285078,
		-0.309979, 0.349420, 0.884205,
		0.921379, -0.118945, 0.370016,
		25.837170, 33.304695, 36.696068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297955, 33.947788, 36.798855>,  <25.192205, 33.387955, 36.437057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297955, 33.947788, 36.798855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664486, 33.798080, 36.741913>,  <25.884405, 33.708256, 36.707748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664486, 33.798080, 36.741913>,  <25.297955, 33.947788, 36.798855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664486, 33.798080, 36.741913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332577, 0.909334, -0.250008,
		0.223017, 0.181746, 0.957722,
		0.916327, -0.374272, -0.142352,
		25.939384, 33.685799, 36.699207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706379, 34.500118, 37.147583>,  <25.297955, 33.947788, 36.798855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706379, 34.500118, 37.147583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978304, 34.302021, 36.931217>,  <26.141459, 34.183163, 36.801395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978304, 34.302021, 36.931217>,  <25.706379, 34.500118, 37.147583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978304, 34.302021, 36.931217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393968, 0.868708, -0.300225,
		0.618583, -0.009008, 0.785668,
		0.679812, -0.495242, -0.540917,
		26.182247, 34.153450, 36.768944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229027, 34.993973, 37.095478>,  <25.706379, 34.500118, 37.147583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229027, 34.993973, 37.095478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325548, 34.712486, 36.828178>,  <26.383461, 34.543594, 36.667797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325548, 34.712486, 36.828178>,  <26.229027, 34.993973, 37.095478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325548, 34.712486, 36.828178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456198, 0.690028, -0.561911,
		0.856536, -0.169263, 0.487540,
		0.241306, -0.703712, -0.668252,
		26.397940, 34.501373, 36.627705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039995, 34.955444, 36.971176>,  <26.229027, 34.993973, 37.095478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039995, 34.955444, 36.971176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843403, 34.814857, 36.652451>,  <26.725447, 34.730507, 36.461212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843403, 34.814857, 36.652451>,  <27.039995, 34.955444, 36.971176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843403, 34.814857, 36.652451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288922, 0.797329, -0.529897,
		0.821569, -0.490650, -0.290323,
		-0.491477, -0.351466, -0.796820,
		26.695959, 34.709419, 36.413406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531281, 35.079201, 36.354290>,  <27.039995, 34.955444, 36.971176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531281, 35.079201, 36.354290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162210, 35.036076, 36.206211>,  <26.940769, 35.010201, 36.117363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162210, 35.036076, 36.206211>,  <27.531281, 35.079201, 36.354290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162210, 35.036076, 36.206211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109226, 0.847697, -0.519113,
		0.369782, -0.519409, -0.770374,
		-0.922676, -0.107814, -0.370196,
		26.885408, 35.003731, 36.095154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937784, 35.652088, 36.589481>,  <27.531281, 35.079201, 36.354290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937784, 35.652088, 36.589481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.199057, 35.554276, 36.876133>,  <28.355820, 35.495586, 37.048122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.199057, 35.554276, 36.876133>,  <27.937784, 35.652088, 36.589481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199057, 35.554276, 36.876133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051286, -0.929957, -0.364074,
		0.755464, 0.274558, -0.594888,
		0.653180, -0.244535, 0.716630,
		28.395010, 35.480915, 37.091122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399113, 35.250751, 36.201740>,  <27.937784, 35.652088, 36.589481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399113, 35.250751, 36.201740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.459951, 35.158520, 36.586178>,  <28.496454, 35.103180, 36.816841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.459951, 35.158520, 36.586178>,  <28.399113, 35.250751, 36.201740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459951, 35.158520, 36.586178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127529, -0.959699, -0.250427,
		0.980103, 0.160657, -0.116563,
		0.152099, -0.230579, 0.961093,
		28.505581, 35.089348, 36.874504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130629, 34.979702, 36.293755>,  <28.399113, 35.250751, 36.201740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130629, 34.979702, 36.293755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903408, 34.854546, 36.598232>,  <28.767076, 34.779449, 36.780918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903408, 34.854546, 36.598232>,  <29.130629, 34.979702, 36.293755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903408, 34.854546, 36.598232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281575, -0.942981, -0.177492,
		0.773327, 0.113509, 0.623763,
		-0.568050, -0.312895, 0.761194,
		28.732992, 34.760677, 36.826591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520418, 34.403130, 36.533672>,  <29.130629, 34.979702, 36.293755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520418, 34.403130, 36.533672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178186, 34.345768, 36.732635>,  <28.972847, 34.311352, 36.852013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178186, 34.345768, 36.732635>,  <29.520418, 34.403130, 36.533672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178186, 34.345768, 36.732635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177268, -0.983934, 0.021233,
		0.486376, 0.106342, 0.867254,
		-0.855579, -0.143409, 0.497412,
		28.921513, 34.302746, 36.881859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726364, 33.868294, 37.068512>,  <29.520418, 34.403130, 36.533672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726364, 33.868294, 37.068512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.326929, 33.859623, 37.087925>,  <29.087269, 33.854420, 37.099571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.326929, 33.859623, 37.087925>,  <29.726364, 33.868294, 37.068512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326929, 33.859623, 37.087925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034184, -0.961075, 0.274166,
		0.040699, 0.275438, 0.960457,
		-0.998587, -0.021674, 0.048530,
		29.027353, 33.853119, 37.102486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537716, 33.586887, 37.755730>,  <29.726364, 33.868294, 37.068512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537716, 33.586887, 37.755730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206854, 33.551422, 37.533752>,  <29.008337, 33.530144, 37.400566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206854, 33.551422, 37.533752>,  <29.537716, 33.586887, 37.755730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206854, 33.551422, 37.533752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029592, -0.979236, 0.200553,
		-0.561197, 0.182310, 0.807354,
		-0.827153, -0.088659, -0.554940,
		28.958708, 33.524826, 37.367271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125904, 33.152657, 38.150135>,  <29.537716, 33.586887, 37.755730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125904, 33.152657, 38.150135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978857, 33.119686, 37.779610>,  <28.890629, 33.099903, 37.557293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978857, 33.119686, 37.779610>,  <29.125904, 33.152657, 38.150135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978857, 33.119686, 37.779610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015273, -0.995395, 0.094634,
		-0.929852, 0.048937, 0.364665,
		-0.367617, -0.082426, -0.926317,
		28.868572, 33.094959, 37.501713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487566, 32.744244, 38.187309>,  <29.125904, 33.152657, 38.150135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487566, 32.744244, 38.187309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603622, 32.712063, 37.805870>,  <28.673256, 32.692757, 37.577007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603622, 32.712063, 37.805870>,  <28.487566, 32.744244, 38.187309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603622, 32.712063, 37.805870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097370, -0.993771, 0.054211,
		-0.952017, 0.077123, -0.296168,
		0.290142, -0.080448, -0.953596,
		28.690666, 32.687927, 37.519791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034119, 32.255898, 37.893734>,  <28.487566, 32.744244, 38.187309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034119, 32.255898, 37.893734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333176, 32.257637, 37.628098>,  <28.512609, 32.258678, 37.468716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333176, 32.257637, 37.628098>,  <28.034119, 32.255898, 37.893734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333176, 32.257637, 37.628098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131114, -0.981262, 0.141187,
		-0.651031, -0.192629, -0.734202,
		0.747641, 0.004346, -0.664088,
		28.557468, 32.258942, 37.428871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943394, 31.610270, 37.544884>,  <28.034119, 32.255898, 37.893734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943394, 31.610270, 37.544884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318663, 31.736689, 37.488392>,  <28.543825, 31.812540, 37.454498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318663, 31.736689, 37.488392>,  <27.943394, 31.610270, 37.544884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318663, 31.736689, 37.488392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323595, -0.945602, 0.033511,
		-0.122954, -0.077140, -0.989410,
		0.938173, 0.316047, -0.141227,
		28.600115, 31.831503, 37.446022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236561, 31.033310, 37.221771>,  <27.943394, 31.610270, 37.544884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236561, 31.033310, 37.221771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553423, 31.229336, 37.367279>,  <28.743540, 31.346951, 37.454582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553423, 31.229336, 37.367279>,  <28.236561, 31.033310, 37.221771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553423, 31.229336, 37.367279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437504, -0.871536, 0.221395,
		0.425534, -0.016229, -0.904797,
		0.792156, 0.490063, 0.363768,
		28.791069, 31.376354, 37.476410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802999, 30.647778, 37.023735>,  <28.236561, 31.033310, 37.221771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802999, 30.647778, 37.023735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921373, 30.865288, 37.337864>,  <28.992397, 30.995794, 37.526340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921373, 30.865288, 37.337864>,  <28.802999, 30.647778, 37.023735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921373, 30.865288, 37.337864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418213, -0.812919, 0.405292,
		0.858791, 0.208492, -0.467984,
		0.295932, 0.543777, 0.785322,
		29.010153, 31.028421, 37.573460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287518, 30.267553, 37.212868>,  <28.802999, 30.647778, 37.023735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287518, 30.267553, 37.212868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287743, 30.500771, 37.537846>,  <29.287878, 30.640701, 37.732830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287743, 30.500771, 37.537846>,  <29.287518, 30.267553, 37.212868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287743, 30.500771, 37.537846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147310, -0.803627, 0.576614,
		0.989090, 0.119357, -0.086339,
		0.000561, 0.583042, 0.812442,
		29.287910, 30.675684, 37.781578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862198, 30.124348, 37.595360>,  <29.287518, 30.267553, 37.212868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862198, 30.124348, 37.595360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616579, 30.301895, 37.856411>,  <29.469208, 30.408424, 38.013042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616579, 30.301895, 37.856411>,  <29.862198, 30.124348, 37.595360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616579, 30.301895, 37.856411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137326, -0.754183, 0.642144,
		0.777231, 0.483930, 0.402149,
		-0.614047, 0.443869, 0.652631,
		29.432365, 30.435057, 38.052200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143734, 29.996178, 38.303883>,  <29.862198, 30.124348, 37.595360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143734, 29.996178, 38.303883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763262, 30.108368, 38.355404>,  <29.534979, 30.175682, 38.386314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763262, 30.108368, 38.355404>,  <30.143734, 29.996178, 38.303883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763262, 30.108368, 38.355404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048976, -0.549195, 0.834258,
		0.304727, 0.787221, 0.536120,
		-0.951180, 0.280478, 0.128800,
		29.477907, 30.192511, 38.394043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059107, 30.294113, 38.940788>,  <30.143734, 29.996178, 38.303883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059107, 30.294113, 38.940788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688236, 30.180359, 38.843246>,  <29.465714, 30.112106, 38.784721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688236, 30.180359, 38.843246>,  <30.059107, 30.294113, 38.940788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688236, 30.180359, 38.843246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073089, -0.501108, 0.862293,
		-0.367420, 0.817323, 0.443831,
		-0.927179, -0.284384, -0.243855,
		29.410082, 30.095043, 38.770088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715302, 30.262693, 39.525509>,  <30.059107, 30.294113, 38.940788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715302, 30.262693, 39.525509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490883, 30.032396, 39.287601>,  <29.356232, 29.894218, 39.144855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490883, 30.032396, 39.287601>,  <29.715302, 30.262693, 39.525509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490883, 30.032396, 39.287601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232234, -0.580174, 0.780683,
		-0.794540, 0.576125, 0.191798,
		-0.561047, -0.575741, -0.594767,
		29.322569, 29.859674, 39.109173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177559, 30.181246, 39.928017>,  <29.715302, 30.262693, 39.525509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177559, 30.181246, 39.928017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174778, 29.882851, 39.661648>,  <29.173109, 29.703814, 39.501827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174778, 29.882851, 39.661648>,  <29.177559, 30.181246, 39.928017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174778, 29.882851, 39.661648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313422, -0.630757, 0.709868,
		-0.949588, 0.213652, -0.229423,
		-0.006955, -0.745988, -0.665923,
		29.172691, 29.659054, 39.461872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782898, 29.817669, 40.268341>,  <29.177559, 30.181246, 39.928017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782898, 29.817669, 40.268341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908756, 29.549927, 39.999130>,  <28.984270, 29.389282, 39.837605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908756, 29.549927, 39.999130>,  <28.782898, 29.817669, 40.268341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908756, 29.549927, 39.999130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222875, -0.741313, 0.633073,
		-0.922673, -0.049192, -0.382432,
		0.314644, -0.669354, -0.673026,
		29.003149, 29.349121, 39.797222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280769, 29.291294, 40.055046>,  <28.782898, 29.817669, 40.268341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280769, 29.291294, 40.055046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630938, 29.112068, 39.982517>,  <28.841038, 29.004534, 39.938999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630938, 29.112068, 39.982517>,  <28.280769, 29.291294, 40.055046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630938, 29.112068, 39.982517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279050, -0.774787, 0.567306,
		-0.394678, -0.446032, -0.803296,
		0.875420, -0.448063, -0.181326,
		28.893564, 28.977650, 39.928120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096865, 28.614954, 39.924889>,  <28.280769, 29.291294, 40.055046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096865, 28.614954, 39.924889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485991, 28.579304, 40.010384>,  <28.719467, 28.557913, 40.061680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485991, 28.579304, 40.010384>,  <28.096865, 28.614954, 39.924889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485991, 28.579304, 40.010384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200485, -0.786087, 0.584698,
		0.115907, -0.611656, -0.782587,
		0.972816, -0.089127, 0.213741,
		28.777836, 28.552567, 40.074505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.297035, 32.179447, 46.357098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907341, 32.106888, 46.303497>,  <40.673523, 32.063354, 46.271339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907341, 32.106888, 46.303497>,  <41.297035, 32.179447, 46.357098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907341, 32.106888, 46.303497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006369, -0.571796, 0.820371,
		-0.225431, 0.800090, 0.555910,
		-0.974238, -0.181396, -0.133996,
		40.615070, 32.052467, 46.263298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970043, 32.289501, 47.047192>,  <41.297035, 32.179447, 46.357098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970043, 32.289501, 47.047192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757313, 32.023716, 46.837185>,  <40.629673, 31.864244, 46.711182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757313, 32.023716, 46.837185>,  <40.970043, 32.289501, 47.047192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757313, 32.023716, 46.837185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016726, -0.628087, 0.777963,
		-0.846686, 0.404962, 0.345149,
		-0.531829, -0.664464, -0.525019,
		40.597763, 31.824377, 46.679680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548306, 31.940987, 47.560905>,  <40.970043, 32.289501, 47.047192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548306, 31.940987, 47.560905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.518013, 31.702280, 47.241371>,  <40.499836, 31.559057, 47.049652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.518013, 31.702280, 47.241371>,  <40.548306, 31.940987, 47.560905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518013, 31.702280, 47.241371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127285, -0.800367, 0.585842,
		-0.988971, -0.057311, 0.136574,
		-0.075734, -0.596764, -0.798835,
		40.495293, 31.523251, 47.001720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011856, 31.481813, 47.636780>,  <40.548306, 31.940987, 47.560905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011856, 31.481813, 47.636780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.277679, 31.318247, 47.386612>,  <40.437176, 31.220108, 47.236511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.277679, 31.318247, 47.386612>,  <40.011856, 31.481813, 47.636780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277679, 31.318247, 47.386612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022821, -0.847693, 0.529997,
		-0.746882, -0.337945, -0.572678,
		0.664565, -0.408914, -0.625414,
		40.477047, 31.195572, 47.198986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822468, 30.770227, 47.684418>,  <40.011856, 31.481813, 47.636780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822468, 30.770227, 47.684418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184742, 30.752539, 47.515766>,  <40.402107, 30.741926, 47.414574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184742, 30.752539, 47.515766>,  <39.822468, 30.770227, 47.684418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184742, 30.752539, 47.515766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273262, -0.699484, 0.660340,
		-0.324126, -0.713279, -0.621431,
		0.905688, -0.044220, -0.421633,
		40.456448, 30.739273, 47.389275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972332, 30.082815, 47.482460>,  <39.822468, 30.770227, 47.684418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972332, 30.082815, 47.482460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.337631, 30.243399, 47.510178>,  <40.556812, 30.339748, 47.526810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.337631, 30.243399, 47.510178>,  <39.972332, 30.082815, 47.482460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337631, 30.243399, 47.510178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276203, -0.735174, 0.619056,
		0.299473, -0.546214, -0.782283,
		0.913251, 0.401459, 0.069299,
		40.611607, 30.363836, 47.530968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413738, 29.556520, 47.399597>,  <39.972332, 30.082815, 47.482460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413738, 29.556520, 47.399597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.651432, 29.827971, 47.572269>,  <40.794048, 29.990841, 47.675873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.651432, 29.827971, 47.572269>,  <40.413738, 29.556520, 47.399597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651432, 29.827971, 47.572269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347252, -0.700597, 0.623361,
		0.725465, -0.220521, -0.651975,
		0.594236, 0.678627, 0.431682,
		40.829704, 30.031559, 47.701775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193596, 29.363768, 47.422672>,  <40.413738, 29.556520, 47.399597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193596, 29.363768, 47.422672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.138271, 29.623331, 47.721947>,  <41.105076, 29.779068, 47.901512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.138271, 29.623331, 47.721947>,  <41.193596, 29.363768, 47.422672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138271, 29.623331, 47.721947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588884, -0.553515, 0.588929,
		0.796295, 0.522054, -0.305572,
		-0.138314, 0.648907, 0.748190,
		41.096779, 29.818003, 47.946404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798958, 29.266420, 47.801598>,  <41.193596, 29.363768, 47.422672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798958, 29.266420, 47.801598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.602871, 29.488697, 48.070190>,  <41.485218, 29.622063, 48.231346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.602871, 29.488697, 48.070190>,  <41.798958, 29.266420, 47.801598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602871, 29.488697, 48.070190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653197, -0.275854, 0.705151,
		0.577077, 0.784292, -0.227747,
		-0.490219, 0.555690, 0.671486,
		41.455807, 29.655403, 48.271637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333637, 29.757780, 48.138409>,  <41.798958, 29.266420, 47.801598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333637, 29.757780, 48.138409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.036732, 29.716516, 48.403255>,  <41.858589, 29.691759, 48.562164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.036732, 29.716516, 48.403255>,  <42.333637, 29.757780, 48.138409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036732, 29.716516, 48.403255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656502, -0.310053, 0.687657,
		0.134357, 0.945106, 0.297864,
		-0.742262, -0.103157, 0.662122,
		41.814053, 29.685570, 48.601891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615284, 29.953133, 48.809875>,  <42.333637, 29.757780, 48.138409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615284, 29.953133, 48.809875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.272419, 29.790182, 48.935936>,  <42.066700, 29.692411, 49.011570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.272419, 29.790182, 48.935936>,  <42.615284, 29.953133, 48.809875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272419, 29.790182, 48.935936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475322, -0.390034, 0.788633,
		-0.198351, 0.825783, 0.527957,
		-0.857161, -0.407376, 0.315149,
		42.015270, 29.667969, 49.030479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505001, 30.176023, 49.596737>,  <42.615284, 29.953133, 48.809875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505001, 30.176023, 49.596737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.285061, 29.852053, 49.515072>,  <42.153095, 29.657671, 49.466072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.285061, 29.852053, 49.515072>,  <42.505001, 30.176023, 49.596737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285061, 29.852053, 49.515072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345178, -0.442920, 0.827450,
		-0.760604, 0.384499, 0.523108,
		-0.549849, -0.809927, -0.204166,
		42.120106, 29.609074, 49.453823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218143, 30.030130, 50.219395>,  <42.505001, 30.176023, 49.596737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218143, 30.030130, 50.219395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.270542, 29.688030, 50.018841>,  <42.301983, 29.482771, 49.898506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.270542, 29.688030, 50.018841>,  <42.218143, 30.030130, 50.219395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270542, 29.688030, 50.018841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460019, -0.395564, 0.794928,
		-0.878193, -0.334780, 0.341614,
		0.130996, -0.855249, -0.501387,
		42.309841, 29.431456, 49.868423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966225, 29.609221, 50.848576>,  <42.218143, 30.030130, 50.219395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966225, 29.609221, 50.848576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152264, 29.523098, 50.505104>,  <42.263885, 29.471424, 50.299023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152264, 29.523098, 50.505104>,  <41.966225, 29.609221, 50.848576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152264, 29.523098, 50.505104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694555, 0.690163, 0.203148,
		0.548889, -0.690882, 0.470535,
		0.465097, -0.215307, -0.858678,
		42.291794, 29.458506, 50.247501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255692, 30.024117, 50.947304>,  <41.966225, 29.609221, 50.848576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255692, 30.024117, 50.947304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.964600, 30.222492, 51.136810>,  <40.789944, 30.341518, 51.250515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.964600, 30.222492, 51.136810>,  <41.255692, 30.024117, 50.947304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964600, 30.222492, 51.136810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046875, 0.653176, -0.755754,
		-0.684260, -0.572192, -0.452089,
		-0.727730, 0.495941, 0.473764,
		40.746281, 30.371275, 51.278938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654053, 30.140388, 50.460052>,  <41.255692, 30.024117, 50.947304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654053, 30.140388, 50.460052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.610882, 30.414600, 50.748055>,  <40.584980, 30.579126, 50.920856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.610882, 30.414600, 50.748055>,  <40.654053, 30.140388, 50.460052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610882, 30.414600, 50.748055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310755, 0.664679, -0.679436,
		-0.944343, -0.297074, 0.141294,
		-0.107928, 0.685528, 0.720002,
		40.578503, 30.620258, 50.964054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071156, 30.595648, 50.140617>,  <40.654053, 30.140388, 50.460052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071156, 30.595648, 50.140617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196472, 30.813570, 50.451756>,  <40.271664, 30.944323, 50.638439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196472, 30.813570, 50.451756>,  <40.071156, 30.595648, 50.140617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196472, 30.813570, 50.451756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076350, 0.801975, -0.592459,
		-0.946583, 0.245001, 0.209656,
		0.313292, 0.544804, 0.777841,
		40.290459, 30.977011, 50.685108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536774, 31.211039, 50.295937>,  <40.071156, 30.595648, 50.140617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536774, 31.211039, 50.295937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901390, 31.319124, 50.419922>,  <40.120159, 31.383976, 50.494312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901390, 31.319124, 50.419922>,  <39.536774, 31.211039, 50.295937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901390, 31.319124, 50.419922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053166, 0.824902, -0.562770,
		-0.407759, 0.496508, 0.766298,
		0.911540, 0.270216, 0.309964,
		40.174850, 31.400188, 50.512913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472534, 31.836424, 50.458427>,  <39.536774, 31.211039, 50.295937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472534, 31.836424, 50.458427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.869385, 31.816772, 50.412331>,  <40.107494, 31.804981, 50.384674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.869385, 31.816772, 50.412331>,  <39.472534, 31.836424, 50.458427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869385, 31.816772, 50.412331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008547, 0.891202, -0.453526,
		0.124981, 0.450939, 0.883761,
		0.992122, -0.049128, -0.115238,
		40.167023, 31.802034, 50.377758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866047, 32.495838, 50.716541>,  <39.472534, 31.836424, 50.458427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866047, 32.495838, 50.716541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098049, 32.299629, 50.456394>,  <40.237251, 32.181904, 50.300304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098049, 32.299629, 50.456394>,  <39.866047, 32.495838, 50.716541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098049, 32.299629, 50.456394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123525, 0.842105, -0.524976,
		0.805191, 0.224153, 0.549019,
		0.580007, -0.490524, -0.650367,
		40.272053, 32.152473, 50.261284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274662, 32.989998, 50.539883>,  <39.866047, 32.495838, 50.716541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274662, 32.989998, 50.539883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.362022, 32.728882, 50.249733>,  <40.414440, 32.572212, 50.075642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.362022, 32.728882, 50.249733>,  <40.274662, 32.989998, 50.539883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362022, 32.728882, 50.249733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112285, 0.755191, -0.645816,
		0.969378, 0.059598, 0.238233,
		0.218400, -0.652790, -0.725373,
		40.427544, 32.533043, 50.032120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771118, 33.340706, 50.079922>,  <40.274662, 32.989998, 50.539883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771118, 33.340706, 50.079922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625336, 33.046661, 49.851261>,  <40.537865, 32.870235, 49.714066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625336, 33.046661, 49.851261>,  <40.771118, 33.340706, 50.079922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625336, 33.046661, 49.851261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023701, 0.620992, -0.783458,
		0.930919, -0.271987, -0.243747,
		-0.364455, -0.735113, -0.571647,
		40.515999, 32.826126, 49.679768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273586, 33.039753, 49.555561>,  <40.771118, 33.340706, 50.079922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273586, 33.039753, 49.555561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.898651, 33.018623, 49.417801>,  <40.673691, 33.005947, 49.335144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.898651, 33.018623, 49.417801>,  <41.273586, 33.039753, 49.555561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898651, 33.018623, 49.417801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281883, 0.466020, -0.838670,
		0.204795, -0.883196, -0.421928,
		-0.937337, -0.052821, -0.344396,
		40.617451, 33.002777, 49.314484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397793, 32.846291, 48.834011>,  <41.273586, 33.039753, 49.555561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397793, 32.846291, 48.834011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.010315, 32.944630, 48.820187>,  <40.777828, 33.003635, 48.811890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.010315, 32.944630, 48.820187>,  <41.397793, 32.846291, 48.834011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010315, 32.944630, 48.820187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123550, 0.356607, -0.926049,
		-0.215345, -0.901326, -0.375816,
		-0.968691, 0.245852, -0.034565,
		40.719707, 33.018387, 48.809818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247295, 32.736561, 48.205196>,  <41.397793, 32.846291, 48.834011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247295, 32.736561, 48.205196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944267, 32.974110, 48.313560>,  <40.762451, 33.116638, 48.378578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944267, 32.974110, 48.313560>,  <41.247295, 32.736561, 48.205196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944267, 32.974110, 48.313560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037550, 0.374692, -0.926389,
		-0.651668, -0.711981, -0.261557,
		-0.757574, 0.593876, 0.270909,
		40.716995, 33.152271, 48.394833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795185, 32.803806, 47.659687>,  <41.247295, 32.736561, 48.205196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795185, 32.803806, 47.659687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.650051, 33.128479, 47.842781>,  <40.562973, 33.323284, 47.952637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.650051, 33.128479, 47.842781>,  <40.795185, 32.803806, 47.659687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650051, 33.128479, 47.842781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087521, 0.459350, -0.883933,
		-0.927735, -0.360781, -0.095628,
		-0.362833, 0.811686, 0.457731,
		40.541203, 33.371986, 47.980099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369488, 33.115387, 47.218063>,  <40.795185, 32.803806, 47.659687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369488, 33.115387, 47.218063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.396065, 33.417519, 47.478851>,  <40.412010, 33.598797, 47.635323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.396065, 33.417519, 47.478851>,  <40.369488, 33.115387, 47.218063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396065, 33.417519, 47.478851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331195, 0.633060, -0.699675,
		-0.941220, -0.169438, 0.292226,
		0.066445, 0.755332, 0.651966,
		40.415997, 33.644119, 47.674442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690544, 33.453358, 47.269398>,  <40.369488, 33.115387, 47.218063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690544, 33.453358, 47.269398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010445, 33.684593, 47.334152>,  <40.202385, 33.823334, 47.373005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010445, 33.684593, 47.334152>,  <39.690544, 33.453358, 47.269398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010445, 33.684593, 47.334152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331777, 0.650354, -0.683348,
		-0.500320, 0.492799, 0.711919,
		0.799752, 0.578091, 0.161886,
		40.250370, 33.858021, 47.382717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986221, 33.421463, 47.558525>,  <39.690544, 33.453358, 47.269398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986221, 33.421463, 47.558525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645576, 33.320099, 47.374985>,  <38.441189, 33.259281, 47.264858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645576, 33.320099, 47.374985>,  <38.986221, 33.421463, 47.558525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645576, 33.320099, 47.374985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137421, -0.736827, 0.661968,
		-0.505843, 0.626794, 0.592665,
		-0.851610, -0.253407, -0.458853,
		38.390095, 33.244076, 47.237328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500084, 33.373672, 48.092781>,  <38.986221, 33.421463, 47.558525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500084, 33.373672, 48.092781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350094, 33.144608, 47.801178>,  <38.260101, 33.007168, 47.626217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350094, 33.144608, 47.801178>,  <38.500084, 33.373672, 48.092781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350094, 33.144608, 47.801178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278862, -0.680290, 0.677822,
		-0.884100, 0.457457, 0.095396,
		-0.374971, -0.572660, -0.729011,
		38.237602, 32.972809, 47.582474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934841, 32.886322, 48.438728>,  <38.500084, 33.373672, 48.092781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934841, 32.886322, 48.438728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005955, 32.702118, 48.090858>,  <38.048622, 32.591595, 47.882137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005955, 32.702118, 48.090858>,  <37.934841, 32.886322, 48.438728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005955, 32.702118, 48.090858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078915, -0.887575, 0.453854,
		-0.980900, -0.012058, -0.194137,
		0.177784, -0.460506, -0.869671,
		38.059292, 32.563965, 47.829956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389477, 32.444263, 48.421341>,  <37.934841, 32.886322, 48.438728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389477, 32.444263, 48.421341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684536, 32.299763, 48.193176>,  <37.861572, 32.213062, 48.056278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684536, 32.299763, 48.193176>,  <37.389477, 32.444263, 48.421341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684536, 32.299763, 48.193176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108771, -0.897371, 0.427662,
		-0.666363, -0.253421, -0.701240,
		0.737651, -0.361252, -0.570410,
		37.905830, 32.191387, 48.022053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206356, 31.778341, 48.177856>,  <37.389477, 32.444263, 48.421341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206356, 31.778341, 48.177856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604939, 31.799959, 48.152046>,  <37.844086, 31.812929, 48.136559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604939, 31.799959, 48.152046>,  <37.206356, 31.778341, 48.177856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604939, 31.799959, 48.152046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078983, -0.865322, 0.494954,
		-0.029088, -0.498294, -0.866520,
		0.996452, 0.054043, -0.064527,
		37.903873, 31.816172, 48.132687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359703, 31.119967, 48.254463>,  <37.206356, 31.778341, 48.177856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359703, 31.119967, 48.254463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725658, 31.250534, 48.349483>,  <37.945232, 31.328875, 48.406498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725658, 31.250534, 48.349483>,  <37.359703, 31.119967, 48.254463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725658, 31.250534, 48.349483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126292, -0.790303, 0.599560,
		0.383448, -0.518528, -0.764262,
		0.914887, 0.326420, 0.237554,
		38.000126, 31.348459, 48.420750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825642, 30.489382, 48.272743>,  <37.359703, 31.119967, 48.254463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825642, 30.489382, 48.272743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004951, 30.775883, 48.486671>,  <38.112537, 30.947783, 48.615028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004951, 30.775883, 48.486671>,  <37.825642, 30.489382, 48.272743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004951, 30.775883, 48.486671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096057, -0.633439, 0.767807,
		0.888721, -0.292813, -0.352754,
		0.448272, 0.716251, 0.534824,
		38.139435, 30.990757, 48.647118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813660, 29.879604, 47.739952>,  <37.825642, 30.489382, 48.272743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813660, 29.879604, 47.739952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431244, 29.762465, 47.746048>,  <37.201794, 29.692181, 47.749706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431244, 29.762465, 47.746048>,  <37.813660, 29.879604, 47.739952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431244, 29.762465, 47.746048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223458, 0.693888, -0.684534,
		0.189890, -0.657845, -0.728822,
		-0.956038, -0.292847, 0.015238,
		37.144432, 29.674610, 47.750618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530861, 29.946306, 47.034386>,  <37.813660, 29.879604, 47.739952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530861, 29.946306, 47.034386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216320, 29.955585, 47.281322>,  <37.027596, 29.961153, 47.429485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216320, 29.955585, 47.281322>,  <37.530861, 29.946306, 47.034386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216320, 29.955585, 47.281322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381461, 0.767799, -0.514754,
		-0.485934, -0.640270, -0.594914,
		-0.786356, 0.023200, 0.617338,
		36.980412, 29.962545, 47.466522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970089, 29.720949, 46.682266>,  <37.530861, 29.946306, 47.034386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970089, 29.720949, 46.682266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814217, 29.917730, 46.993683>,  <36.720692, 30.035799, 47.180534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814217, 29.917730, 46.993683>,  <36.970089, 29.720949, 46.682266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814217, 29.917730, 46.993683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465951, 0.623871, -0.627435,
		-0.794380, -0.607263, -0.013884,
		-0.389680, 0.491952, 0.778545,
		36.697311, 30.065315, 47.227245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396812, 30.069233, 46.381943>,  <36.970089, 29.720949, 46.682266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396812, 30.069233, 46.381943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405560, 30.243679, 46.741795>,  <36.410809, 30.348347, 46.957706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405560, 30.243679, 46.741795>,  <36.396812, 30.069233, 46.381943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405560, 30.243679, 46.741795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412026, 0.823801, -0.389340,
		-0.910910, -0.362154, 0.197709,
		0.021872, 0.436115, 0.899625,
		36.412121, 30.374514, 47.011681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625393, 30.305704, 46.576778>,  <36.396812, 30.069233, 46.381943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625393, 30.305704, 46.576778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907745, 30.511297, 46.771736>,  <36.077156, 30.634653, 46.888710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907745, 30.511297, 46.771736>,  <35.625393, 30.305704, 46.576778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907745, 30.511297, 46.771736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227907, 0.816302, -0.530763,
		-0.670660, 0.263578, 0.693355,
		0.705885, 0.513982, 0.487390,
		36.119511, 30.665491, 46.917953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295845, 30.907103, 46.738422>,  <35.625393, 30.305704, 46.576778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295845, 30.907103, 46.738422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688972, 30.972870, 46.704857>,  <35.924847, 31.012329, 46.684719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688972, 30.972870, 46.704857>,  <35.295845, 30.907103, 46.738422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688972, 30.972870, 46.704857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177227, 0.713330, -0.678049,
		-0.051624, 0.681269, 0.730211,
		0.982815, 0.164417, -0.083914,
		35.983818, 31.022196, 46.679684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322357, 31.567017, 46.723080>,  <35.295845, 30.907103, 46.738422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322357, 31.567017, 46.723080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697506, 31.482498, 46.612984>,  <35.922596, 31.431787, 46.546928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697506, 31.482498, 46.612984>,  <35.322357, 31.567017, 46.723080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697506, 31.482498, 46.612984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006753, 0.781946, -0.623309,
		0.346923, 0.586441, 0.731936,
		0.937869, -0.211298, -0.275235,
		35.978867, 31.419109, 46.530415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.738628, 26.859388, 48.330845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.968819, 27.178810, 48.401432>,  <40.106934, 27.370462, 48.443783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.968819, 27.178810, 48.401432>,  <39.738628, 26.859388, 48.330845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968819, 27.178810, 48.401432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022663, 0.231268, -0.972626,
		-0.817507, 0.555720, 0.151186,
		0.575472, 0.798555, 0.176469,
		40.141460, 27.418377, 48.454372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394951, 27.466759, 48.111412>,  <39.738628, 26.859388, 48.330845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394951, 27.466759, 48.111412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.791710, 27.516314, 48.100136>,  <40.029766, 27.546047, 48.093369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.791710, 27.516314, 48.100136>,  <39.394951, 27.466759, 48.111412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791710, 27.516314, 48.100136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054503, 0.214457, -0.975211,
		-0.114770, 0.968845, 0.219472,
		0.991896, 0.123887, -0.028192,
		40.089279, 27.553480, 48.091679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495544, 28.119440, 47.738194>,  <39.394951, 27.466759, 48.111412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495544, 28.119440, 47.738194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.869289, 27.976942, 47.735142>,  <40.093536, 27.891443, 47.733311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.869289, 27.976942, 47.735142>,  <39.495544, 28.119440, 47.738194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869289, 27.976942, 47.735142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125991, 0.350336, -0.928111,
		0.333309, 0.866230, 0.372224,
		0.934362, -0.356244, -0.007633,
		40.149597, 27.870070, 47.732853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920189, 28.633240, 47.477566>,  <39.495544, 28.119440, 47.738194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920189, 28.633240, 47.477566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.115070, 28.288004, 47.424328>,  <40.231998, 28.080862, 47.392387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.115070, 28.288004, 47.424328>,  <39.920189, 28.633240, 47.477566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115070, 28.288004, 47.424328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078070, 0.194837, -0.977724,
		0.869793, 0.465958, 0.162306,
		0.487202, -0.863088, -0.133090,
		40.261230, 28.029078, 47.384399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589211, 28.750999, 47.037125>,  <39.920189, 28.633240, 47.477566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589211, 28.750999, 47.037125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.501850, 28.362873, 46.995583>,  <40.449432, 28.129997, 46.970657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.501850, 28.362873, 46.995583>,  <40.589211, 28.750999, 47.037125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501850, 28.362873, 46.995583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230910, 0.052020, -0.971584,
		0.948147, -0.236176, 0.212694,
		-0.218400, -0.970317, -0.103858,
		40.436329, 28.071777, 46.964424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952911, 28.606319, 46.359291>,  <40.589211, 28.750999, 47.037125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952911, 28.606319, 46.359291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.728878, 28.282503, 46.429653>,  <40.594456, 28.088213, 46.471870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.728878, 28.282503, 46.429653>,  <40.952911, 28.606319, 46.359291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728878, 28.282503, 46.429653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029814, -0.192502, -0.980843,
		0.827897, -0.554603, 0.083682,
		-0.560087, -0.809543, 0.175907,
		40.560852, 28.039640, 46.482426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273483, 27.984741, 46.009388>,  <40.952911, 28.606319, 46.359291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273483, 27.984741, 46.009388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.877998, 27.954142, 46.060913>,  <40.640709, 27.935781, 46.091827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.877998, 27.954142, 46.060913>,  <41.273483, 27.984741, 46.009388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877998, 27.954142, 46.060913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123452, -0.071152, -0.989796,
		0.084887, -0.994527, 0.060904,
		-0.988713, -0.076503, 0.128817,
		40.581383, 27.931190, 46.099560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112160, 27.631239, 45.348167>,  <41.273483, 27.984741, 46.009388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112160, 27.631239, 45.348167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.778778, 27.781725, 45.510067>,  <40.578751, 27.872017, 45.607208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.778778, 27.781725, 45.510067>,  <41.112160, 27.631239, 45.348167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778778, 27.781725, 45.510067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383629, 0.133254, -0.913823,
		-0.397730, -0.916899, 0.033266,
		-0.833451, 0.376216, 0.404749,
		40.528744, 27.894590, 45.631493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565102, 27.392687, 44.896809>,  <41.112160, 27.631239, 45.348167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565102, 27.392687, 44.896809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.417339, 27.702389, 45.102356>,  <40.328682, 27.888210, 45.225685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.417339, 27.702389, 45.102356>,  <40.565102, 27.392687, 44.896809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417339, 27.702389, 45.102356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532527, 0.276800, -0.799873,
		-0.761547, -0.569129, 0.310061,
		-0.369406, 0.774257, 0.513873,
		40.306519, 27.934666, 45.256519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960880, 27.587534, 44.607838>,  <40.565102, 27.392687, 44.896809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960880, 27.587534, 44.607838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.058571, 27.926620, 44.796188>,  <40.117188, 28.130072, 44.909199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.058571, 27.926620, 44.796188>,  <39.960880, 27.587534, 44.607838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058571, 27.926620, 44.796188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209133, 0.520203, -0.828041,
		-0.946898, 0.103755, 0.304334,
		0.244229, 0.847717, 0.470881,
		40.131840, 28.180935, 44.937454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406693, 27.968546, 44.439404>,  <39.960880, 27.587534, 44.607838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406693, 27.968546, 44.439404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.706341, 28.214930, 44.536903>,  <39.886127, 28.362761, 44.595402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.706341, 28.214930, 44.536903>,  <39.406693, 27.968546, 44.439404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706341, 28.214930, 44.536903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242875, 0.597723, -0.764028,
		-0.616306, 0.513147, 0.597367,
		0.749119, 0.615960, 0.243750,
		39.931076, 28.399717, 44.610027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208717, 28.587713, 44.798134>,  <39.406693, 27.968546, 44.439404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208717, 28.587713, 44.798134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.539005, 28.654633, 44.582657>,  <39.737179, 28.694784, 44.453369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.539005, 28.654633, 44.582657>,  <39.208717, 28.587713, 44.798134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539005, 28.654633, 44.582657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531960, 0.548595, -0.645029,
		0.187615, 0.819180, 0.541983,
		0.825723, 0.167296, -0.538696,
		39.786724, 28.704821, 44.421047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639210, 28.214890, 44.616024>,  <39.208717, 28.587713, 44.798134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639210, 28.214890, 44.616024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.241932, 28.219500, 44.662369>,  <38.003563, 28.222265, 44.690174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.241932, 28.219500, 44.662369>,  <38.639210, 28.214890, 44.616024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241932, 28.219500, 44.662369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095657, -0.486569, 0.868389,
		0.066382, 0.873566, 0.482158,
		-0.993198, 0.011524, 0.115863,
		37.943974, 28.222958, 44.697128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552456, 28.472858, 45.255943>,  <38.639210, 28.214890, 44.616024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552456, 28.472858, 45.255943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.200939, 28.294752, 45.187275>,  <37.990028, 28.187889, 45.146072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.200939, 28.294752, 45.187275>,  <38.552456, 28.472858, 45.255943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200939, 28.294752, 45.187275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014541, -0.334585, 0.942253,
		-0.476990, 0.830537, 0.287555,
		-0.878788, -0.445264, -0.171670,
		37.937302, 28.161173, 45.135773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214443, 28.496159, 45.895657>,  <38.552456, 28.472858, 45.255943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214443, 28.496159, 45.895657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.038345, 28.196976, 45.696964>,  <37.932686, 28.017466, 45.577747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.038345, 28.196976, 45.696964>,  <38.214443, 28.496159, 45.895657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038345, 28.196976, 45.696964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113165, -0.595042, 0.795688,
		-0.890717, 0.294086, 0.346607,
		-0.440246, -0.747957, -0.496733,
		37.906273, 27.972589, 45.547943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666431, 28.253304, 46.341942>,  <38.214443, 28.496159, 45.895657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666431, 28.253304, 46.341942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742558, 27.950380, 46.092060>,  <37.788235, 27.768625, 45.942131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742558, 27.950380, 46.092060>,  <37.666431, 28.253304, 46.341942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742558, 27.950380, 46.092060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011577, -0.634564, 0.772784,
		-0.981655, -0.154306, -0.112000,
		0.190316, -0.757310, -0.624709,
		37.799652, 27.723186, 45.904648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178570, 27.721346, 46.532021>,  <37.666431, 28.253304, 46.341942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178570, 27.721346, 46.532021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.455158, 27.524456, 46.320518>,  <37.621113, 27.406322, 46.193615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.455158, 27.524456, 46.320518>,  <37.178570, 27.721346, 46.532021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455158, 27.524456, 46.320518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075531, -0.777191, 0.624715,
		-0.718445, -0.392034, -0.574583,
		0.691471, -0.492222, -0.528758,
		37.662598, 27.376789, 46.161892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979603, 27.075901, 46.507568>,  <37.178570, 27.721346, 46.532021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979603, 27.075901, 46.507568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.368111, 27.033083, 46.422546>,  <37.601215, 27.007391, 46.371532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.368111, 27.033083, 46.422546>,  <36.979603, 27.075901, 46.507568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368111, 27.033083, 46.422546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088572, -0.666380, 0.740333,
		-0.220892, -0.737888, -0.637753,
		0.971268, -0.107047, -0.212554,
		37.659492, 27.000969, 46.358780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013813, 26.464891, 46.590012>,  <36.979603, 27.075901, 46.507568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013813, 26.464891, 46.590012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.405918, 26.543327, 46.579872>,  <37.641182, 26.590389, 46.573788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.405918, 26.543327, 46.579872>,  <37.013813, 26.464891, 46.590012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405918, 26.543327, 46.579872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149178, -0.649354, 0.745712,
		0.129769, -0.734771, -0.665787,
		0.980259, 0.196090, -0.025346,
		37.699997, 26.602154, 46.572269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350536, 25.783823, 46.544823>,  <37.013813, 26.464891, 46.590012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350536, 25.783823, 46.544823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.630783, 26.041376, 46.667824>,  <37.798931, 26.195908, 46.741623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.630783, 26.041376, 46.667824>,  <37.350536, 25.783823, 46.544823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630783, 26.041376, 46.667824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256449, -0.629377, 0.733565,
		0.665862, -0.435088, -0.606074,
		0.700615, 0.643881, 0.307500,
		37.840969, 26.234541, 46.760075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021141, 25.466486, 46.728119>,  <37.350536, 25.783823, 46.544823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021141, 25.466486, 46.728119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.029762, 25.806913, 46.937965>,  <38.034935, 26.011169, 47.063873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.029762, 25.806913, 46.937965>,  <38.021141, 25.466486, 46.728119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029762, 25.806913, 46.937965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284606, -0.508249, 0.812824,
		0.958402, 0.131787, -0.253175,
		0.021556, 0.851067, 0.524614,
		38.036228, 26.062233, 47.095348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709560, 25.636644, 47.094280>,  <38.021141, 25.466486, 46.728119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709560, 25.636644, 47.094280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.408936, 25.810514, 47.292759>,  <38.228561, 25.914837, 47.411846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.408936, 25.810514, 47.292759>,  <38.709560, 25.636644, 47.094280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408936, 25.810514, 47.292759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449591, -0.212917, 0.867487,
		0.482723, 0.875057, -0.035405,
		-0.751563, 0.434674, 0.496198,
		38.183468, 25.940916, 47.441620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023499, 25.798037, 47.839489>,  <38.709560, 25.636644, 47.094280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023499, 25.798037, 47.839489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.629311, 25.848225, 47.885269>,  <38.392796, 25.878338, 47.912739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.629311, 25.848225, 47.885269>,  <39.023499, 25.798037, 47.839489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629311, 25.848225, 47.885269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123638, 0.068050, 0.989991,
		0.116424, 0.989761, -0.082574,
		-0.985474, 0.125469, 0.114450,
		38.333668, 25.885864, 47.919605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996632, 26.218647, 48.426796>,  <39.023499, 25.798037, 47.839489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996632, 26.218647, 48.426796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.635201, 26.057556, 48.368343>,  <38.418343, 25.960901, 48.333271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.635201, 26.057556, 48.368343>,  <38.996632, 26.218647, 48.426796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635201, 26.057556, 48.368343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153804, -0.013412, 0.988010,
		-0.399859, 0.915222, -0.049822,
		-0.903580, -0.402728, -0.146128,
		38.364128, 25.936737, 48.324505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550163, 26.708035, 48.662479>,  <38.996632, 26.218647, 48.426796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550163, 26.708035, 48.662479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.351303, 26.361351, 48.678753>,  <38.231987, 26.153341, 48.688519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.351303, 26.361351, 48.678753>,  <38.550163, 26.708035, 48.662479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351303, 26.361351, 48.678753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206659, 0.163822, 0.964600,
		-0.842692, 0.471147, -0.260558,
		-0.497154, -0.866708, 0.040685,
		38.202156, 26.101339, 48.690960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894714, 26.839720, 49.043839>,  <38.550163, 26.708035, 48.662479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894714, 26.839720, 49.043839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940842, 26.442698, 49.059521>,  <37.968517, 26.204485, 49.068928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940842, 26.442698, 49.059521>,  <37.894714, 26.839720, 49.043839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940842, 26.442698, 49.059521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134165, 0.023541, 0.990679,
		-0.984226, -0.119506, -0.130451,
		0.115321, -0.992554, 0.039203,
		37.975437, 26.144932, 49.071281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183918, 26.624304, 48.800091>,  <37.894714, 26.839720, 49.043839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183918, 26.624304, 48.800091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.275539, 26.948351, 49.015961>,  <37.330513, 27.142778, 49.145481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.275539, 26.948351, 49.015961>,  <37.183918, 26.624304, 48.800091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275539, 26.948351, 49.015961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211645, 0.582596, -0.784721,
		-0.950128, 0.065520, 0.304901,
		0.229049, 0.810116, 0.539674,
		37.344254, 27.191385, 49.177864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641525, 27.098190, 48.613235>,  <37.183918, 26.624304, 48.800091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641525, 27.098190, 48.613235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.938488, 27.314211, 48.771816>,  <37.116665, 27.443823, 48.866966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.938488, 27.314211, 48.771816>,  <36.641525, 27.098190, 48.613235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938488, 27.314211, 48.771816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228575, 0.760442, -0.607850,
		-0.629750, 0.360653, 0.688000,
		0.742407, 0.540053, 0.396452,
		37.161209, 27.476227, 48.890751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248615, 27.691072, 48.849747>,  <36.641525, 27.098190, 48.613235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248615, 27.691072, 48.849747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.626328, 27.813229, 48.800648>,  <36.852955, 27.886522, 48.771187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.626328, 27.813229, 48.800648>,  <36.248615, 27.691072, 48.849747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626328, 27.813229, 48.800648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326010, 0.816571, -0.476370,
		-0.045246, 0.489845, 0.870635,
		0.944283, 0.305390, -0.122748,
		36.909611, 27.904846, 48.763824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328922, 28.392063, 49.063953>,  <36.248615, 27.691072, 48.849747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328922, 28.392063, 49.063953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647392, 28.364796, 48.823467>,  <36.838474, 28.348436, 48.679176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647392, 28.364796, 48.823467>,  <36.328922, 28.392063, 49.063953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647392, 28.364796, 48.823467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218589, 0.894123, -0.390849,
		0.564204, 0.442603, 0.696977,
		0.796174, -0.068167, -0.601215,
		36.886246, 28.344345, 48.643101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718212, 29.060659, 49.110058>,  <36.328922, 28.392063, 49.063953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718212, 29.060659, 49.110058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.910000, 28.902235, 48.796818>,  <37.025074, 28.807180, 48.608875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.910000, 28.902235, 48.796818>,  <36.718212, 29.060659, 49.110058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910000, 28.902235, 48.796818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037221, 0.882379, -0.469065,
		0.876768, 0.254051, 0.408334,
		0.479472, -0.396063, -0.783097,
		37.053841, 28.783417, 48.561890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204556, 29.518869, 48.974064>,  <36.718212, 29.060659, 49.110058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204556, 29.518869, 48.974064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164913, 29.293760, 48.645805>,  <37.141129, 29.158695, 48.448849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164913, 29.293760, 48.645805>,  <37.204556, 29.518869, 48.974064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164913, 29.293760, 48.645805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062307, 0.819580, -0.569568,
		0.993124, -0.107582, -0.046164,
		-0.099110, -0.562775, -0.820647,
		37.135181, 29.124928, 48.399612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690063, 29.773083, 48.448086>,  <37.204556, 29.518869, 48.974064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690063, 29.773083, 48.448086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.402771, 29.586439, 48.241619>,  <37.230396, 29.474453, 48.117741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.402771, 29.586439, 48.241619>,  <37.690063, 29.773083, 48.448086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402771, 29.586439, 48.241619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105806, 0.806433, -0.581782,
		0.687715, -0.363239, -0.628573,
		-0.718229, -0.466608, -0.516163,
		37.187302, 29.446457, 48.086769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400734, 30.120968, 48.643719>,  <37.690063, 29.773083, 48.448086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400734, 30.120968, 48.643719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348515, 30.465105, 48.840805>,  <38.317181, 30.671587, 48.959057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348515, 30.465105, 48.840805>,  <38.400734, 30.120968, 48.643719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348515, 30.465105, 48.840805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058970, -0.502824, 0.862375,
		0.989686, 0.083529, 0.116378,
		-0.130551, 0.860344, 0.492712,
		38.309349, 30.723207, 48.988617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839046, 30.072311, 49.177525>,  <38.400734, 30.120968, 48.643719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839046, 30.072311, 49.177525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568539, 30.346001, 49.286705>,  <38.406235, 30.510214, 49.352211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568539, 30.346001, 49.286705>,  <38.839046, 30.072311, 49.177525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568539, 30.346001, 49.286705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135313, -0.479600, 0.866991,
		0.724121, 0.549385, 0.416923,
		-0.676268, 0.684222, 0.272949,
		38.365658, 30.551268, 49.368591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872902, 30.047993, 49.878960>,  <38.839046, 30.072311, 49.177525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872902, 30.047993, 49.878960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534866, 30.258165, 49.839481>,  <38.332043, 30.384270, 49.815792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534866, 30.258165, 49.839481>,  <38.872902, 30.047993, 49.878960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534866, 30.258165, 49.839481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328702, -0.365061, 0.871025,
		0.421633, 0.768539, 0.481220,
		-0.845092, 0.525431, -0.098699,
		38.281338, 30.415794, 49.809872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823761, 30.578548, 50.449848>,  <38.872902, 30.047993, 49.878960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823761, 30.578548, 50.449848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.469124, 30.463911, 50.304619>,  <38.256344, 30.395128, 50.217484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.469124, 30.463911, 50.304619>,  <38.823761, 30.578548, 50.449848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469124, 30.463911, 50.304619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246246, -0.372017, 0.894967,
		-0.391561, 0.882874, 0.259255,
		-0.886591, -0.286594, -0.363072,
		38.203148, 30.377934, 50.195698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299580, 30.788809, 50.932438>,  <38.823761, 30.578548, 50.449848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299580, 30.788809, 50.932438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.155914, 30.492489, 50.705383>,  <38.069717, 30.314697, 50.569149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.155914, 30.492489, 50.705383>,  <38.299580, 30.788809, 50.932438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155914, 30.492489, 50.705383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230613, -0.518917, 0.823130,
		-0.904334, 0.426542, 0.015536,
		-0.359162, -0.740802, -0.567640,
		38.048164, 30.270248, 50.535091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637608, 30.723835, 51.238422>,  <38.299580, 30.788809, 50.932438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637608, 30.723835, 51.238422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.723217, 30.398140, 51.022568>,  <37.774582, 30.202723, 50.893055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.723217, 30.398140, 51.022568>,  <37.637608, 30.723835, 51.238422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723217, 30.398140, 51.022568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179710, -0.575829, 0.797575,
		-0.960155, -0.073724, -0.269570,
		0.214026, -0.814240, -0.539635,
		37.787426, 30.153868, 50.860676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082222, 30.194269, 51.341614>,  <37.637608, 30.723835, 51.238422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082222, 30.194269, 51.341614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.389946, 29.993090, 51.184029>,  <37.574581, 29.872381, 51.089478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.389946, 29.993090, 51.184029>,  <37.082222, 30.194269, 51.341614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389946, 29.993090, 51.184029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136966, -0.732151, 0.667230,
		-0.624023, -0.459346, -0.632137,
		0.769309, -0.502947, -0.393964,
		37.620739, 29.842205, 51.065838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801529, 29.603277, 51.260002>,  <37.082222, 30.194269, 51.341614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801529, 29.603277, 51.260002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.198338, 29.560211, 51.286221>,  <37.436424, 29.534372, 51.301952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.198338, 29.560211, 51.286221>,  <36.801529, 29.603277, 51.260002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198338, 29.560211, 51.286221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123355, -0.722394, 0.680390,
		-0.025907, -0.683049, -0.729913,
		0.992024, -0.107665, 0.065543,
		37.495945, 29.527912, 51.305882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862133, 28.895542, 51.285568>,  <36.801529, 29.603277, 51.260002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862133, 28.895542, 51.285568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.212841, 29.023052, 51.429600>,  <37.423267, 29.099558, 51.516018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.212841, 29.023052, 51.429600>,  <36.862133, 28.895542, 51.285568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212841, 29.023052, 51.429600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026328, -0.779436, 0.625928,
		0.480187, -0.539315, -0.691780,
		0.876771, 0.318776, 0.360077,
		37.475872, 29.118685, 51.537624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.692287, 37.377598, 38.097088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091549, 37.353767, 38.101749>,  <38.331108, 37.339470, 38.104546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091549, 37.353767, 38.101749>,  <37.692287, 37.377598, 38.097088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091549, 37.353767, 38.101749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030724, -0.330251, 0.943393,
		-0.052353, -0.942012, -0.331472,
		0.998156, -0.059573, 0.011652,
		38.390995, 37.335896, 38.105244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928440, 36.702843, 38.243668>,  <37.692287, 37.377598, 38.097088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928440, 36.702843, 38.243668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235085, 36.937336, 38.348457>,  <38.419071, 37.078033, 38.411331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235085, 36.937336, 38.348457>,  <37.928440, 36.702843, 38.243668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235085, 36.937336, 38.348457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067249, -0.332452, 0.940720,
		0.638575, -0.738788, -0.215439,
		0.766615, 0.586232, 0.261979,
		38.465069, 37.113205, 38.427052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525707, 36.283432, 38.515728>,  <37.928440, 36.702843, 38.243668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525707, 36.283432, 38.515728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574451, 36.652592, 38.661831>,  <38.603699, 36.874088, 38.749493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574451, 36.652592, 38.661831>,  <38.525707, 36.283432, 38.515728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574451, 36.652592, 38.661831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053204, -0.373541, 0.926087,
		0.991121, -0.093419, -0.094621,
		0.121859, 0.922898, 0.365254,
		38.611008, 36.929462, 38.771408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795216, 36.166992, 39.142193>,  <38.525707, 36.283432, 38.515728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795216, 36.166992, 39.142193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732189, 36.557354, 39.202557>,  <38.694374, 36.791573, 39.238777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732189, 36.557354, 39.202557>,  <38.795216, 36.166992, 39.142193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732189, 36.557354, 39.202557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070711, -0.141280, 0.987441,
		0.984973, 0.166260, -0.046746,
		-0.157567, 0.975909, 0.150914,
		38.684917, 36.850128, 39.247829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318783, 36.488590, 39.561420>,  <38.795216, 36.166992, 39.142193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318783, 36.488590, 39.561420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991207, 36.714569, 39.601761>,  <38.794662, 36.850155, 39.625965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991207, 36.714569, 39.601761>,  <39.318783, 36.488590, 39.561420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991207, 36.714569, 39.601761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061484, -0.088353, 0.994190,
		0.570573, 0.820385, 0.037621,
		-0.818942, 0.564944, 0.100853,
		38.745525, 36.884052, 39.632015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474808, 36.781075, 40.172382>,  <39.318783, 36.488590, 39.561420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474808, 36.781075, 40.172382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081181, 36.819504, 40.112549>,  <38.845005, 36.842560, 40.076649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081181, 36.819504, 40.112549>,  <39.474808, 36.781075, 40.172382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081181, 36.819504, 40.112549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162180, -0.140425, 0.976718,
		0.072830, 0.985419, 0.153769,
		-0.984070, 0.096073, -0.149588,
		38.785961, 36.848324, 40.067673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251488, 37.478706, 40.520115>,  <39.474808, 36.781075, 40.172382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251488, 37.478706, 40.520115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949863, 37.218906, 40.481045>,  <38.768887, 37.063026, 40.457603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949863, 37.218906, 40.481045>,  <39.251488, 37.478706, 40.520115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949863, 37.218906, 40.481045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102405, -0.030629, 0.994271,
		-0.648770, 0.759745, -0.043415,
		-0.754063, -0.649499, -0.097673,
		38.723644, 37.024055, 40.451744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746159, 37.679592, 40.918186>,  <39.251488, 37.478706, 40.520115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746159, 37.679592, 40.918186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638844, 37.297245, 40.870304>,  <38.574455, 37.067837, 40.841576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638844, 37.297245, 40.870304>,  <38.746159, 37.679592, 40.918186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638844, 37.297245, 40.870304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289541, -0.038502, 0.956391,
		-0.918796, 0.291250, -0.266434,
		-0.268290, -0.955872, -0.119705,
		38.558357, 37.010483, 40.834393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200283, 37.696362, 41.302666>,  <38.746159, 37.679592, 40.918186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200283, 37.696362, 41.302666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276402, 37.306168, 41.258446>,  <38.322071, 37.072052, 41.231915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276402, 37.306168, 41.258446>,  <38.200283, 37.696362, 41.302666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276402, 37.306168, 41.258446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418431, -0.182454, 0.889734,
		-0.888090, -0.123053, -0.442892,
		0.190292, -0.975484, -0.110547,
		38.333488, 37.013523, 41.225281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549591, 37.407112, 41.608772>,  <38.200283, 37.696362, 41.302666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549591, 37.407112, 41.608772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822880, 37.115906, 41.586163>,  <37.986855, 36.941181, 41.572598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822880, 37.115906, 41.586163>,  <37.549591, 37.407112, 41.608772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822880, 37.115906, 41.586163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355566, -0.399297, 0.845065,
		-0.637790, -0.557273, -0.531668,
		0.683225, -0.728017, -0.056520,
		38.027847, 36.897499, 41.569206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146099, 36.815918, 41.737400>,  <37.549591, 37.407112, 41.608772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146099, 36.815918, 41.737400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531338, 36.757397, 41.827770>,  <37.762482, 36.722282, 41.881992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531338, 36.757397, 41.827770>,  <37.146099, 36.815918, 41.737400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531338, 36.757397, 41.827770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269092, -0.504838, 0.820200,
		-0.005948, -0.850725, -0.525578,
		0.963096, -0.146307, 0.225921,
		37.820267, 36.713505, 41.895546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184250, 36.107922, 41.978333>,  <37.146099, 36.815918, 41.737400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184250, 36.107922, 41.978333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500854, 36.308186, 42.118534>,  <37.690815, 36.428345, 42.202656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500854, 36.308186, 42.118534>,  <37.184250, 36.107922, 41.978333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500854, 36.308186, 42.118534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055998, -0.511679, 0.857350,
		0.608586, -0.698228, -0.376962,
		0.791510, 0.500662, 0.350500,
		37.738308, 36.458385, 42.223682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154896, 35.394444, 41.744034>,  <37.184250, 36.107922, 41.978333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154896, 35.394444, 41.744034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761456, 35.322487, 41.738918>,  <36.525391, 35.279312, 41.735851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761456, 35.322487, 41.738918>,  <37.154896, 35.394444, 41.744034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761456, 35.322487, 41.738918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026706, 0.215397, -0.976161,
		0.178348, -0.959816, -0.216670,
		-0.983605, -0.179883, -0.012783,
		36.466373, 35.268520, 41.735085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920010, 34.965599, 41.072613>,  <37.154896, 35.394444, 41.744034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920010, 34.965599, 41.072613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588028, 35.162292, 41.177967>,  <36.388840, 35.280308, 41.241180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588028, 35.162292, 41.177967>,  <36.920010, 34.965599, 41.072613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588028, 35.162292, 41.177967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158272, 0.245186, -0.956469,
		-0.534907, -0.835513, -0.125666,
		-0.829954, 0.491733, 0.263390,
		36.339043, 35.309811, 41.256985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467686, 34.762627, 40.592525>,  <36.920010, 34.965599, 41.072613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467686, 34.762627, 40.592525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293026, 35.090950, 40.739822>,  <36.188229, 35.287945, 40.828201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293026, 35.090950, 40.739822>,  <36.467686, 34.762627, 40.592525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293026, 35.090950, 40.739822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337130, 0.230204, -0.912880,
		-0.834073, -0.522759, 0.176201,
		-0.436653, 0.820811, 0.368245,
		36.162029, 35.337193, 40.850296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652855, 34.658436, 40.500542>,  <36.467686, 34.762627, 40.592525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652855, 34.658436, 40.500542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736408, 35.045509, 40.557053>,  <35.786541, 35.277752, 40.590958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736408, 35.045509, 40.557053>,  <35.652855, 34.658436, 40.500542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736408, 35.045509, 40.557053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438901, 0.221860, -0.870715,
		-0.873918, 0.119873, 0.471060,
		0.208885, 0.967682, 0.141275,
		35.799072, 35.335815, 40.599434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007229, 35.008518, 40.505821>,  <35.652855, 34.658436, 40.500542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007229, 35.008518, 40.505821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299358, 35.262142, 40.404160>,  <35.474636, 35.414318, 40.343163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299358, 35.262142, 40.404160>,  <35.007229, 35.008518, 40.505821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299358, 35.262142, 40.404160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538677, 0.305767, -0.785069,
		-0.420070, 0.710261, 0.564863,
		0.730321, 0.634063, -0.254158,
		35.518456, 35.452362, 40.327911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672401, 35.547573, 40.283813>,  <35.007229, 35.008518, 40.505821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672401, 35.547573, 40.283813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030056, 35.609745, 40.115833>,  <35.244648, 35.647049, 40.015045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030056, 35.609745, 40.115833>,  <34.672401, 35.547573, 40.283813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030056, 35.609745, 40.115833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445595, 0.216112, -0.868758,
		-0.044279, 0.963917, 0.262495,
		0.894139, 0.155434, -0.419948,
		35.298298, 35.656376, 39.989849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634235, 36.179699, 40.003620>,  <34.672401, 35.547573, 40.283813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634235, 36.179699, 40.003620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958130, 36.036682, 39.817501>,  <35.152466, 35.950874, 39.705830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958130, 36.036682, 39.817501>,  <34.634235, 36.179699, 40.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958130, 36.036682, 39.817501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425704, 0.187815, -0.885156,
		0.403866, 0.914818, -0.000125,
		0.809733, -0.357537, -0.465294,
		35.201050, 35.929420, 39.677914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726830, 36.584682, 39.470074>,  <34.634235, 36.179699, 40.003620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726830, 36.584682, 39.470074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906937, 36.242348, 39.368256>,  <35.014999, 36.036945, 39.307163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906937, 36.242348, 39.368256>,  <34.726830, 36.584682, 39.470074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906937, 36.242348, 39.368256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477917, 0.009806, -0.878350,
		0.754225, 0.517145, -0.404606,
		0.450267, -0.855842, -0.254549,
		35.042015, 35.985596, 39.291889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013016, 36.740131, 38.747730>,  <34.726830, 36.584682, 39.470074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013016, 36.740131, 38.747730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976013, 36.346050, 38.805447>,  <34.953812, 36.109600, 38.840076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976013, 36.346050, 38.805447>,  <35.013016, 36.740131, 38.747730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976013, 36.346050, 38.805447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459606, -0.086304, -0.883920,
		0.883292, -0.148087, -0.444820,
		-0.092507, -0.985202, 0.144293,
		34.948261, 36.050491, 38.848736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038242, 36.452053, 38.058613>,  <35.013016, 36.740131, 38.747730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038242, 36.452053, 38.058613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886417, 36.159779, 38.285603>,  <34.795322, 35.984413, 38.421795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886417, 36.159779, 38.285603>,  <35.038242, 36.452053, 38.058613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886417, 36.159779, 38.285603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651185, -0.224701, -0.724891,
		0.657181, -0.644673, -0.390525,
		-0.379567, -0.730689, 0.567471,
		34.772549, 35.940571, 38.455845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873093, 35.927944, 37.574646>,  <35.038242, 36.452053, 38.058613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873093, 35.927944, 37.574646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672752, 35.820709, 37.903831>,  <34.552547, 35.756367, 38.101345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672752, 35.820709, 37.903831>,  <34.873093, 35.927944, 37.574646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672752, 35.820709, 37.903831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787162, -0.254272, -0.561891,
		0.359894, -0.929233, -0.083677,
		-0.500851, -0.268089, 0.822968,
		34.522495, 35.740284, 38.150723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484745, 35.248646, 37.442776>,  <34.873093, 35.927944, 37.574646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484745, 35.248646, 37.442776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285351, 35.430382, 37.738094>,  <34.165714, 35.539425, 37.915287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285351, 35.430382, 37.738094>,  <34.484745, 35.248646, 37.442776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285351, 35.430382, 37.738094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866828, -0.272094, -0.417820,
		0.011054, -0.848256, 0.529471,
		-0.498485, 0.454341, 0.738300,
		34.135807, 35.566685, 37.959583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012695, 34.809727, 37.623955>,  <34.484745, 35.248646, 37.442776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012695, 34.809727, 37.623955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887344, 35.185982, 37.676109>,  <33.812134, 35.411736, 37.707401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887344, 35.185982, 37.676109>,  <34.012695, 34.809727, 37.623955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887344, 35.185982, 37.676109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804052, -0.189770, -0.563460,
		-0.505267, -0.281412, 0.815789,
		-0.313377, 0.940635, 0.130386,
		33.793331, 35.468174, 37.715225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203144, 34.744041, 37.595779>,  <34.012695, 34.809727, 37.623955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203144, 34.744041, 37.595779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241989, 35.142136, 37.599388>,  <33.265297, 35.380993, 37.601555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241989, 35.142136, 37.599388>,  <33.203144, 34.744041, 37.595779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241989, 35.142136, 37.599388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651958, 0.070463, -0.754974,
		-0.752011, 0.067438, 0.655692,
		0.097116, 0.995233, 0.009022,
		33.271122, 35.440704, 37.602097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581108, 34.794781, 36.893932>,  <33.203144, 34.744041, 37.595779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581108, 34.794781, 36.893932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849785, 34.876087, 36.608974>,  <34.010990, 34.924870, 36.438000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849785, 34.876087, 36.608974>,  <33.581108, 34.794781, 36.893932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849785, 34.876087, 36.608974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560981, -0.767635, 0.309898,
		-0.483870, -0.607799, -0.629643,
		0.671691, 0.203267, -0.712399,
		34.051292, 34.937069, 36.395256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699574, 34.209423, 36.509708>,  <33.581108, 34.794781, 36.893932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699574, 34.209423, 36.509708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019924, 34.448883, 36.503876>,  <34.212135, 34.592560, 36.500378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019924, 34.448883, 36.503876>,  <33.699574, 34.209423, 36.509708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019924, 34.448883, 36.503876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583431, -0.774562, 0.244260,
		0.134933, -0.204129, -0.969600,
		0.800876, 0.598653, -0.014582,
		34.260185, 34.628479, 36.499500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111755, 33.474522, 36.633038>,  <33.699574, 34.209423, 36.509708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111755, 33.474522, 36.633038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498234, 33.553566, 36.566799>,  <34.730122, 33.600994, 36.527058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498234, 33.553566, 36.566799>,  <34.111755, 33.474522, 36.633038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498234, 33.553566, 36.566799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257740, -0.724079, 0.639750,
		0.006519, -0.660802, -0.750532,
		0.966193, 0.197613, -0.165594,
		34.788090, 33.612850, 36.517120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478699, 32.774158, 36.556374>,  <34.111755, 33.474522, 36.633038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478699, 32.774158, 36.556374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761921, 33.044682, 36.637623>,  <34.931854, 33.206997, 36.686371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761921, 33.044682, 36.637623>,  <34.478699, 32.774158, 36.556374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761921, 33.044682, 36.637623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394079, -0.617125, 0.681072,
		0.585967, -0.402193, -0.703480,
		0.708057, 0.676312, 0.203119,
		34.974339, 33.247574, 36.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152267, 32.332691, 36.642025>,  <34.478699, 32.774158, 36.556374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152267, 32.332691, 36.642025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227715, 32.687824, 36.809917>,  <35.272984, 32.900906, 36.910652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227715, 32.687824, 36.809917>,  <35.152267, 32.332691, 36.642025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227715, 32.687824, 36.809917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550790, -0.449490, 0.703270,
		0.813052, 0.098532, -0.573793,
		0.188620, 0.887834, 0.419730,
		35.284302, 32.954174, 36.935837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854607, 32.308205, 36.837727>,  <35.152267, 32.332691, 36.642025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854607, 32.308205, 36.837727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735081, 32.597607, 37.086643>,  <35.663364, 32.771248, 37.235992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735081, 32.597607, 37.086643>,  <35.854607, 32.308205, 36.837727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735081, 32.597607, 37.086643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365143, -0.515780, 0.775010,
		0.881690, 0.458814, -0.110058,
		-0.298820, 0.723506, 0.622291,
		35.645435, 32.814659, 37.273331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289650, 32.294804, 37.425442>,  <35.854607, 32.308205, 36.837727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289650, 32.294804, 37.425442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965416, 32.478958, 37.570213>,  <35.770874, 32.589451, 37.657078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965416, 32.478958, 37.570213>,  <36.289650, 32.294804, 37.425442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965416, 32.478958, 37.570213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210203, -0.348112, 0.913583,
		0.546595, 0.816616, 0.185400,
		-0.810586, 0.460388, 0.361931,
		35.722240, 32.617073, 37.678791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459984, 32.531971, 37.987694>,  <36.289650, 32.294804, 37.425442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459984, 32.531971, 37.987694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065125, 32.538872, 38.051235>,  <35.828209, 32.543015, 38.089359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065125, 32.538872, 38.051235>,  <36.459984, 32.531971, 37.987694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065125, 32.538872, 38.051235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156283, -0.102969, 0.982331,
		0.033306, 0.994535, 0.098950,
		-0.987151, 0.017254, 0.158858,
		35.768978, 32.544048, 38.098892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368313, 33.033615, 38.526859>,  <36.459984, 32.531971, 37.987694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368313, 33.033615, 38.526859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050266, 32.792828, 38.497387>,  <35.859440, 32.648357, 38.479702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050266, 32.792828, 38.497387>,  <36.368313, 33.033615, 38.526859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050266, 32.792828, 38.497387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062186, -0.201780, 0.977455,
		-0.603262, 0.772607, 0.197872,
		-0.795115, -0.601966, -0.073681,
		35.811733, 32.612236, 38.475281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018276, 33.177586, 39.074162>,  <36.368313, 33.033615, 38.526859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018276, 33.177586, 39.074162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872185, 32.822987, 38.960506>,  <35.784531, 32.610226, 38.892315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872185, 32.822987, 38.960506>,  <36.018276, 33.177586, 39.074162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872185, 32.822987, 38.960506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012924, -0.310021, 0.950642,
		-0.930829, 0.343528, 0.124685,
		-0.365227, -0.886496, -0.284137,
		35.762615, 32.557037, 38.875267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645699, 33.000061, 39.672558>,  <36.018276, 33.177586, 39.074162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645699, 33.000061, 39.672558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665096, 32.653156, 39.474365>,  <35.676735, 32.445015, 39.355450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665096, 32.653156, 39.474365>,  <35.645699, 33.000061, 39.672558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665096, 32.653156, 39.474365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069617, -0.491928, 0.867848,
		-0.996395, -0.076580, 0.036520,
		0.048494, -0.867262, -0.495486,
		35.679646, 32.392979, 39.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127354, 32.572987, 39.968967>,  <35.645699, 33.000061, 39.672558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127354, 32.572987, 39.968967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415615, 32.343933, 39.812634>,  <35.588573, 32.206501, 39.718834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415615, 32.343933, 39.812634>,  <35.127354, 32.572987, 39.968967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415615, 32.343933, 39.812634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169454, -0.401152, 0.900202,
		-0.672268, -0.714962, -0.192056,
		0.720653, -0.572632, -0.390835,
		35.631809, 32.172142, 39.695385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148537, 31.973097, 40.385090>,  <35.127354, 32.572987, 39.968967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148537, 31.973097, 40.385090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480194, 31.888731, 40.178001>,  <35.679188, 31.838112, 40.053749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480194, 31.888731, 40.178001>,  <35.148537, 31.973097, 40.385090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480194, 31.888731, 40.178001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344318, -0.536914, 0.770174,
		-0.440411, -0.816847, -0.372558,
		0.829146, -0.210915, -0.517718,
		35.728939, 31.825457, 40.022686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361931, 31.208950, 40.405338>,  <35.148537, 31.973097, 40.385090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361931, 31.208950, 40.405338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695385, 31.417601, 40.332722>,  <35.895458, 31.542791, 40.289150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695385, 31.417601, 40.332722>,  <35.361931, 31.208950, 40.405338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695385, 31.417601, 40.332722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439899, -0.428312, 0.789328,
		0.333976, -0.737873, -0.586518,
		0.833636, 0.521626, -0.181543,
		35.945477, 31.574089, 40.278259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908298, 30.671387, 40.194748>,  <35.361931, 31.208950, 40.405338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908298, 30.671387, 40.194748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062538, 31.013821, 40.332405>,  <36.155083, 31.219280, 40.415001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062538, 31.013821, 40.332405>,  <35.908298, 30.671387, 40.194748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062538, 31.013821, 40.332405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368424, -0.484821, 0.793230,
		0.845919, -0.179077, -0.502347,
		0.385597, 0.856084, 0.344143,
		36.178219, 31.270645, 40.435646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440594, 30.398088, 40.548065>,  <35.908298, 30.671387, 40.194748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440594, 30.398088, 40.548065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439869, 30.779083, 40.669895>,  <36.439434, 31.007681, 40.742992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439869, 30.779083, 40.669895>,  <36.440594, 30.398088, 40.548065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439869, 30.779083, 40.669895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352075, -0.284465, 0.891697,
		0.935970, 0.108847, -0.334832,
		-0.001811, 0.952487, 0.304573,
		36.439327, 31.064829, 40.761269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134369, 30.435959, 40.730324>,  <36.440594, 30.398088, 40.548065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134369, 30.435959, 40.730324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923054, 30.725180, 40.908363>,  <36.796265, 30.898712, 41.015186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923054, 30.725180, 40.908363>,  <37.134369, 30.435959, 40.730324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923054, 30.725180, 40.908363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434197, -0.220427, 0.873433,
		0.729650, 0.654680, -0.197500,
		-0.528284, 0.723054, 0.445095,
		36.764568, 30.942097, 41.041893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713531, 30.834951, 41.105099>,  <37.134369, 30.435959, 40.730324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713531, 30.834951, 41.105099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344746, 30.906948, 41.242256>,  <37.123474, 30.950146, 41.324551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344746, 30.906948, 41.242256>,  <37.713531, 30.834951, 41.105099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344746, 30.906948, 41.242256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331397, -0.091434, 0.939051,
		0.200375, 0.979409, 0.024650,
		-0.921968, 0.179994, 0.342894,
		37.068153, 30.960947, 41.345123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818558, 31.152142, 41.771801>,  <37.713531, 30.834951, 41.105099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818558, 31.152142, 41.771801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439941, 31.023745, 41.784615>,  <37.212772, 30.946707, 41.792305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439941, 31.023745, 41.784615>,  <37.818558, 31.152142, 41.771801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439941, 31.023745, 41.784615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183275, -0.453377, 0.872272,
		-0.265469, 0.831512, 0.487969,
		-0.946539, -0.320994, 0.032038,
		37.155979, 30.927446, 41.794228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470695, 31.339674, 42.501926>,  <37.818558, 31.152142, 41.771801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470695, 31.339674, 42.501926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235340, 31.058161, 42.342682>,  <37.094128, 30.889252, 42.247135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235340, 31.058161, 42.342682>,  <37.470695, 31.339674, 42.501926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235340, 31.058161, 42.342682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033918, -0.470437, 0.881782,
		-0.807868, 0.532332, 0.252928,
		-0.588387, -0.703784, -0.398107,
		37.058823, 30.847025, 42.223251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765244, 31.187714, 42.936367>,  <37.470695, 31.339674, 42.501926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765244, 31.187714, 42.936367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839046, 30.851215, 42.733089>,  <36.883327, 30.649317, 42.611122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839046, 30.851215, 42.733089>,  <36.765244, 31.187714, 42.936367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839046, 30.851215, 42.733089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017487, -0.514183, 0.857502,
		-0.982675, -0.167104, -0.080161,
		0.184510, -0.841244, -0.508197,
		36.894398, 30.598843, 42.580631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486732, 30.644762, 43.330826>,  <36.765244, 31.187714, 42.936367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486732, 30.644762, 43.330826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711937, 30.434797, 43.075485>,  <36.847057, 30.308819, 42.922283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711937, 30.434797, 43.075485>,  <36.486732, 30.644762, 43.330826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711937, 30.434797, 43.075485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168010, -0.683573, 0.710282,
		-0.809194, -0.507144, -0.296666,
		0.563008, -0.524913, -0.638348,
		36.880840, 30.277323, 42.883980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288486, 29.954966, 43.447697>,  <36.486732, 30.644762, 43.330826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288486, 29.954966, 43.447697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650146, 29.904615, 43.284393>,  <36.867142, 29.874405, 43.186413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650146, 29.904615, 43.284393>,  <36.288486, 29.954966, 43.447697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650146, 29.904615, 43.284393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232969, -0.655754, 0.718131,
		-0.358108, -0.744408, -0.563574,
		0.904148, -0.125874, -0.408255,
		36.921391, 29.866854, 43.161915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328217, 29.271719, 43.425858>,  <36.288486, 29.954966, 43.447697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328217, 29.271719, 43.425858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710175, 29.364601, 43.351822>,  <36.939350, 29.420330, 43.307400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710175, 29.364601, 43.351822>,  <36.328217, 29.271719, 43.425858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710175, 29.364601, 43.351822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296846, -0.762665, 0.574652,
		-0.007723, -0.603675, -0.797193,
		0.954894, 0.232206, -0.185088,
		36.996643, 29.434263, 43.296295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737247, 28.719946, 43.196644>,  <36.328217, 29.271719, 43.425858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737247, 28.719946, 43.196644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015377, 28.963396, 43.349537>,  <37.182255, 29.109467, 43.441273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015377, 28.963396, 43.349537>,  <36.737247, 28.719946, 43.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015377, 28.963396, 43.349537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400622, -0.769780, 0.496931,
		0.596680, -0.192396, -0.779074,
		0.695323, 0.608623, 0.382235,
		37.223972, 29.145983, 43.464207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283295, 28.301167, 43.218143>,  <36.737247, 28.719946, 43.196644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283295, 28.301167, 43.218143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376392, 28.601339, 43.465588>,  <37.432251, 28.781443, 43.614056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376392, 28.601339, 43.465588>,  <37.283295, 28.301167, 43.218143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376392, 28.601339, 43.465588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371964, -0.656406, 0.656334,
		0.898595, 0.077344, -0.431909,
		0.232744, 0.750433, 0.618612,
		37.446217, 28.826469, 43.651173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961948, 28.358072, 43.436352>,  <37.283295, 28.301167, 43.218143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961948, 28.358072, 43.436352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811321, 28.558022, 43.748333>,  <37.720947, 28.677992, 43.935520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811321, 28.558022, 43.748333>,  <37.961948, 28.358072, 43.436352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811321, 28.558022, 43.748333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428887, -0.652192, 0.625061,
		0.821131, 0.569887, 0.031203,
		-0.376565, 0.499874, 0.779952,
		37.698353, 28.707983, 43.982319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508392, 28.576490, 43.965527>,  <37.961948, 28.358072, 43.436352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508392, 28.576490, 43.965527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169064, 28.584661, 44.177158>,  <37.965466, 28.589563, 44.304138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169064, 28.584661, 44.177158>,  <38.508392, 28.576490, 43.965527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169064, 28.584661, 44.177158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362757, -0.705459, 0.608880,
		0.385683, 0.708457, 0.591048,
		-0.848325, 0.020428, 0.529081,
		37.914566, 28.590790, 44.335884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943115, 29.094740, 44.341324>,  <38.508392, 28.576490, 43.965527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943115, 29.094740, 44.341324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324207, 29.127754, 44.224373>,  <39.552864, 29.147562, 44.154202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324207, 29.127754, 44.224373>,  <38.943115, 29.094740, 44.341324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324207, 29.127754, 44.224373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295432, 0.476120, -0.828269,
		0.070847, 0.875498, 0.477999,
		0.952733, 0.082536, -0.292382,
		39.610027, 29.152515, 44.136658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026146, 29.754549, 44.101902>,  <38.943115, 29.094740, 44.341324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026146, 29.754549, 44.101902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354984, 29.595955, 43.938457>,  <39.552288, 29.500799, 43.840389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354984, 29.595955, 43.938457>,  <39.026146, 29.754549, 44.101902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354984, 29.595955, 43.938457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005735, 0.711874, -0.702284,
		0.569326, 0.579686, 0.582952,
		0.822092, -0.396485, -0.408613,
		39.601612, 29.477009, 43.815872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533207, 30.394049, 43.959297>,  <39.026146, 29.754549, 44.101902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533207, 30.394049, 43.959297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634529, 30.076801, 43.737740>,  <39.695324, 29.886454, 43.604805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634529, 30.076801, 43.737740>,  <39.533207, 30.394049, 43.959297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634529, 30.076801, 43.737740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148988, 0.597722, -0.787738,
		0.955845, 0.117014, 0.269571,
		0.253305, -0.793118, -0.553896,
		39.710522, 29.838865, 43.571571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156342, 30.570557, 43.643829>,  <39.533207, 30.394049, 43.959297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156342, 30.570557, 43.643829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046272, 30.262419, 43.413754>,  <39.980228, 30.077536, 43.275707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046272, 30.262419, 43.413754>,  <40.156342, 30.570557, 43.643829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046272, 30.262419, 43.413754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129125, 0.563254, -0.816132,
		0.952683, -0.298851, -0.055523,
		-0.275176, -0.770346, -0.575191,
		39.963718, 30.031315, 43.241196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680138, 30.453339, 43.114285>,  <40.156342, 30.570557, 43.643829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680138, 30.453339, 43.114285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340534, 30.306669, 42.962105>,  <40.136772, 30.218668, 42.870796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340534, 30.306669, 42.962105>,  <40.680138, 30.453339, 43.114285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340534, 30.306669, 42.962105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116327, 0.572643, -0.811510,
		0.515418, -0.733233, -0.443524,
		-0.849007, -0.366673, -0.380445,
		40.085835, 30.196667, 42.847969>
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
