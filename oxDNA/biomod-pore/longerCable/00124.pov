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
	<24.302320, 34.799896, 35.373077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298124, 34.898228, 34.985374>,  <24.295607, 34.957226, 34.752754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298124, 34.898228, 34.985374>,  <24.302320, 34.799896, 35.373077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298124, 34.898228, 34.985374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999027, 0.044111, 0.000374,
		0.042847, -0.968309, -0.246054,
		-0.010492, 0.245831, -0.969256,
		24.294977, 34.971977, 34.694599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832750, 34.460052, 34.978706>,  <24.302320, 34.799896, 35.373077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832750, 34.460052, 34.978706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746637, 34.792297, 34.773285>,  <24.694969, 34.991646, 34.650032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746637, 34.792297, 34.773285>,  <24.832750, 34.460052, 34.978706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746637, 34.792297, 34.773285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967310, 0.109198, -0.228882,
		-0.134034, -0.546038, -0.826969,
		-0.215282, 0.830613, -0.513552,
		24.682053, 35.041481, 34.619221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256414, 34.408649, 34.379658>,  <24.832750, 34.460052, 34.978706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256414, 34.408649, 34.379658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146130, 34.788204, 34.441101>,  <25.079960, 35.015938, 34.477966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146130, 34.788204, 34.441101>,  <25.256414, 34.408649, 34.379658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146130, 34.788204, 34.441101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947195, 0.295409, -0.124720,
		-0.163722, 0.111108, -0.980230,
		-0.275711, 0.948888, 0.153606,
		25.063416, 35.072872, 34.487183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474596, 33.860794, 34.881454>,  <25.256414, 34.408649, 34.379658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474596, 33.860794, 34.881454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834908, 33.879887, 34.708797>,  <26.051094, 33.891342, 34.605202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834908, 33.879887, 34.708797>,  <25.474596, 33.860794, 34.881454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834908, 33.879887, 34.708797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001745, -0.994330, -0.106323,
		-0.434270, 0.095021, -0.895757,
		0.900781, 0.047736, -0.431642,
		26.105143, 33.894207, 34.579304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421593, 33.441521, 34.358273>,  <25.474596, 33.860794, 34.881454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421593, 33.441521, 34.358273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819118, 33.482582, 34.375202>,  <26.057634, 33.507217, 34.385361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819118, 33.482582, 34.375202>,  <25.421593, 33.441521, 34.358273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819118, 33.482582, 34.375202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104363, -0.993720, -0.040370,
		0.037918, 0.044538, -0.998288,
		0.993816, 0.102653, 0.042328,
		26.117264, 33.513378, 34.387901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899925, 33.346767, 33.671356>,  <25.421593, 33.441521, 34.358273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899925, 33.346767, 33.671356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005018, 33.236767, 34.041294>,  <26.068075, 33.170765, 34.263256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005018, 33.236767, 34.041294>,  <25.899925, 33.346767, 33.671356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005018, 33.236767, 34.041294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159072, -0.957752, -0.239599,
		0.951666, -0.084166, -0.295379,
		0.262734, -0.275005, 0.924848,
		26.083838, 33.154266, 34.318748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487732, 32.922062, 33.719688>,  <25.899925, 33.346767, 33.671356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487732, 32.922062, 33.719688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258842, 32.839031, 34.037045>,  <26.121508, 32.789211, 34.227459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258842, 32.839031, 34.037045>,  <26.487732, 32.922062, 33.719688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258842, 32.839031, 34.037045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162816, -0.919422, -0.357985,
		0.803771, -0.334025, 0.492320,
		-0.572226, -0.207581, 0.793390,
		26.087175, 32.776756, 34.275063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821424, 33.279015, 33.101982>,  <26.487732, 32.922062, 33.719688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821424, 33.279015, 33.101982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915510, 32.890308, 33.094646>,  <26.971962, 32.657085, 33.090244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915510, 32.890308, 33.094646>,  <26.821424, 33.279015, 33.101982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915510, 32.890308, 33.094646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134697, 0.051282, -0.989559,
		0.962564, 0.230289, 0.142957,
		0.235215, -0.971770, -0.018343,
		26.986074, 32.598778, 33.089142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560884, 33.226028, 32.889767>,  <26.821424, 33.279015, 33.101982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560884, 33.226028, 32.889767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387251, 32.872574, 32.819622>,  <27.283070, 32.660500, 32.777534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387251, 32.872574, 32.819622>,  <27.560884, 33.226028, 32.889767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387251, 32.872574, 32.819622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268004, 0.059180, -0.961599,
		0.860084, -0.464414, 0.211129,
		-0.434085, -0.883639, -0.175364,
		27.257025, 32.607483, 32.767014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014236, 32.834301, 32.434971>,  <27.560884, 33.226028, 32.889767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014236, 32.834301, 32.434971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685587, 32.614433, 32.374565>,  <27.488398, 32.482513, 32.338322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685587, 32.614433, 32.374565>,  <28.014236, 32.834301, 32.434971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685587, 32.614433, 32.374565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192454, -0.018126, -0.981139,
		0.536562, -0.835187, 0.120678,
		-0.821622, -0.549667, -0.151010,
		27.439100, 32.449532, 32.329262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255577, 32.376144, 31.913322>,  <28.014236, 32.834301, 32.434971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255577, 32.376144, 31.913322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856277, 32.377029, 31.889688>,  <27.616697, 32.377560, 31.875507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856277, 32.377029, 31.889688>,  <28.255577, 32.376144, 31.913322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856277, 32.377029, 31.889688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057853, -0.169834, -0.983773,
		-0.012213, -0.985471, 0.169409,
		-0.998250, 0.002214, -0.059086,
		27.556803, 32.377693, 31.871962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005276, 31.761776, 31.506363>,  <28.255577, 32.376144, 31.913322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005276, 31.761776, 31.506363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757547, 32.075653, 31.495781>,  <27.608912, 32.263981, 31.489431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757547, 32.075653, 31.495781>,  <28.005276, 31.761776, 31.506363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757547, 32.075653, 31.495781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145981, 0.081980, -0.985885,
		-0.771449, -0.614439, -0.165322,
		-0.619319, 0.784694, -0.026452,
		27.571751, 32.311062, 31.487844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722321, 32.229805, 31.025572>,  <28.005276, 31.761776, 31.506363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722321, 32.229805, 31.025572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959785, 32.546814, 30.969759>,  <28.102264, 32.737019, 30.936272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959785, 32.546814, 30.969759>,  <27.722321, 32.229805, 31.025572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959785, 32.546814, 30.969759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799790, 0.600245, 0.006473,
		0.088884, 0.107753, 0.990196,
		0.593662, 0.792525, -0.139532,
		28.137884, 32.784573, 30.927898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542789, 32.914692, 31.457926>,  <27.722321, 32.229805, 31.025572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542789, 32.914692, 31.457926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702497, 32.991146, 31.099251>,  <27.798323, 33.037018, 30.884045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702497, 32.991146, 31.099251>,  <27.542789, 32.914692, 31.457926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702497, 32.991146, 31.099251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720582, 0.670129, -0.178014,
		0.566872, 0.717213, 0.405291,
		0.399271, 0.191135, -0.896688,
		27.822279, 33.048485, 30.830244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096083, 33.485687, 31.381727>,  <27.542789, 32.914692, 31.457926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096083, 33.485687, 31.381727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000513, 33.125999, 31.235132>,  <26.943172, 32.910187, 31.147175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000513, 33.125999, 31.235132>,  <27.096083, 33.485687, 31.381727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000513, 33.125999, 31.235132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111470, -0.400321, 0.909570,
		-0.964620, 0.176464, 0.195882,
		-0.238922, -0.899224, -0.366487,
		26.928837, 32.856232, 31.125187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537989, 33.139683, 31.552393>,  <27.096083, 33.485687, 31.381727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537989, 33.139683, 31.552393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769772, 32.819279, 31.492252>,  <26.908842, 32.627037, 31.456167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769772, 32.819279, 31.492252>,  <26.537989, 33.139683, 31.552393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769772, 32.819279, 31.492252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023414, -0.200766, 0.979359,
		-0.814666, -0.563977, -0.135090,
		0.579458, -0.801014, -0.150352,
		26.943609, 32.578976, 31.447147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214817, 32.490990, 31.818909>,  <26.537989, 33.139683, 31.552393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214817, 32.490990, 31.818909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611807, 32.442028, 31.820080>,  <26.850000, 32.412651, 31.820782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611807, 32.442028, 31.820080>,  <26.214817, 32.490990, 31.818909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611807, 32.442028, 31.820080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042611, -0.322895, 0.945475,
		-0.114783, -0.938486, -0.325681,
		0.992477, -0.122402, 0.002927,
		26.909550, 32.405308, 31.820957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285439, 31.892538, 32.168358>,  <26.214817, 32.490990, 31.818909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285439, 31.892538, 32.168358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647688, 32.051720, 32.226986>,  <26.865038, 32.147228, 32.262161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647688, 32.051720, 32.226986>,  <26.285439, 31.892538, 32.168358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647688, 32.051720, 32.226986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107573, -0.118744, 0.987080,
		0.410217, -0.909688, -0.064728,
		0.905621, 0.397954, 0.146569,
		26.919374, 32.171104, 32.270958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746428, 31.397144, 32.516487>,  <26.285439, 31.892538, 32.168358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746428, 31.397144, 32.516487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900738, 31.755838, 32.603249>,  <26.993324, 31.971054, 32.655308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900738, 31.755838, 32.603249>,  <26.746428, 31.397144, 32.516487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900738, 31.755838, 32.603249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070317, -0.205844, 0.976055,
		0.919910, -0.391789, -0.016354,
		0.385774, 0.896733, 0.216907,
		27.016470, 32.024857, 32.668320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114073, 31.324594, 33.141518>,  <26.746428, 31.397144, 32.516487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114073, 31.324594, 33.141518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042870, 31.717247, 33.114048>,  <27.000149, 31.952839, 33.097565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042870, 31.717247, 33.114048>,  <27.114073, 31.324594, 33.141518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042870, 31.717247, 33.114048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159391, 0.040105, 0.986400,
		0.971035, 0.186532, 0.149324,
		-0.178007, 0.981630, -0.068675,
		26.989468, 32.011738, 33.093445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552910, 31.672747, 33.552662>,  <27.114073, 31.324594, 33.141518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552910, 31.672747, 33.552662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211618, 31.874002, 33.497742>,  <27.006844, 31.994755, 33.464790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211618, 31.874002, 33.497742>,  <27.552910, 31.672747, 33.552662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211618, 31.874002, 33.497742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134086, 0.042783, 0.990046,
		0.504004, 0.863146, 0.030960,
		-0.853230, 0.503139, -0.137298,
		26.955650, 32.024944, 33.456551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440081, 32.219666, 34.070053>,  <27.552910, 31.672747, 33.552662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440081, 32.219666, 34.070053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088081, 32.083012, 33.938061>,  <26.876883, 32.001019, 33.858864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088081, 32.083012, 33.938061>,  <27.440081, 32.219666, 34.070053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088081, 32.083012, 33.938061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377595, 0.081718, 0.922358,
		-0.288146, 0.936273, -0.200912,
		-0.879997, -0.341637, -0.329985,
		26.824081, 31.980520, 33.839066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009157, 32.352543, 33.582813>,  <27.440081, 32.219666, 34.070053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009157, 32.352543, 33.582813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864553, 32.725483, 33.580379>,  <27.777790, 32.949245, 33.578918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864553, 32.725483, 33.580379>,  <28.009157, 32.352543, 33.582813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864553, 32.725483, 33.580379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932359, 0.361471, -0.006801,
		-0.004140, -0.008134, -0.999958,
		-0.361511, 0.932348, -0.006087,
		27.756100, 33.005188, 33.578552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558796, 32.675385, 33.538910>,  <28.009157, 32.352543, 33.582813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558796, 32.675385, 33.538910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295286, 32.973270, 33.581642>,  <28.137180, 33.152004, 33.607281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295286, 32.973270, 33.581642>,  <28.558796, 32.675385, 33.538910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295286, 32.973270, 33.581642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745407, 0.665322, -0.041417,
		-0.101919, 0.052345, -0.993415,
		-0.658772, 0.744720, 0.106827,
		28.097654, 33.196686, 33.613689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657995, 33.307934, 32.991253>,  <28.558796, 32.675385, 33.538910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657995, 33.307934, 32.991253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494337, 33.412350, 33.340988>,  <28.396141, 33.474998, 33.550827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494337, 33.412350, 33.340988>,  <28.657995, 33.307934, 32.991253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494337, 33.412350, 33.340988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573879, 0.818583, 0.024157,
		-0.709409, 0.511646, -0.484724,
		-0.409147, 0.261036, 0.874334,
		28.371593, 33.490662, 33.603287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850037, 33.921017, 33.050251>,  <28.657995, 33.307934, 32.991253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850037, 33.921017, 33.050251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658058, 33.902645, 33.400688>,  <28.542871, 33.891624, 33.610950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658058, 33.902645, 33.400688>,  <28.850037, 33.921017, 33.050251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658058, 33.902645, 33.400688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338360, 0.911675, 0.233152,
		-0.809422, 0.408337, -0.422015,
		-0.479946, -0.045925, 0.876095,
		28.514074, 33.888866, 33.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446127, 34.514374, 33.149769>,  <28.850037, 33.921017, 33.050251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446127, 34.514374, 33.149769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567598, 34.345146, 33.491245>,  <28.640480, 34.243610, 33.696133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567598, 34.345146, 33.491245>,  <28.446127, 34.514374, 33.149769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567598, 34.345146, 33.491245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377125, 0.876202, 0.300078,
		-0.874962, 0.230822, 0.425633,
		0.303676, -0.423073, 0.853692,
		28.658701, 34.218224, 33.747353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195641, 34.945244, 33.681892>,  <28.446127, 34.514374, 33.149769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195641, 34.945244, 33.681892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517153, 34.724373, 33.770466>,  <28.710060, 34.591850, 33.823608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517153, 34.724373, 33.770466>,  <28.195641, 34.945244, 33.681892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517153, 34.724373, 33.770466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514367, 0.832034, 0.207715,
		-0.298933, -0.053061, 0.952798,
		0.803782, -0.552181, 0.221430,
		28.758287, 34.558720, 33.836895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293106, 35.076916, 34.476025>,  <28.195641, 34.945244, 33.681892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293106, 35.076916, 34.476025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595152, 34.981705, 34.231682>,  <28.776381, 34.924580, 34.085075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595152, 34.981705, 34.231682>,  <28.293106, 35.076916, 34.476025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595152, 34.981705, 34.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558255, 0.721985, 0.408766,
		0.343731, -0.649678, 0.678061,
		0.755116, -0.238026, -0.610855,
		28.821686, 34.910297, 34.048424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980352, 35.034176, 34.858395>,  <28.293106, 35.076916, 34.476025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980352, 35.034176, 34.858395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035250, 35.114491, 34.470406>,  <29.068188, 35.162678, 34.237614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035250, 35.114491, 34.470406>,  <28.980352, 35.034176, 34.858395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035250, 35.114491, 34.470406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661699, 0.710110, 0.240619,
		0.737101, -0.674855, -0.035400,
		0.137245, 0.200785, -0.969974,
		29.076424, 35.174725, 34.179413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587839, 34.840954, 35.344460>,  <28.980352, 35.034176, 34.858395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587839, 34.840954, 35.344460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821609, 34.934792, 35.033741>,  <29.961872, 34.991093, 34.847309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821609, 34.934792, 35.033741>,  <29.587839, 34.840954, 35.344460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821609, 34.934792, 35.033741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663101, 0.413695, 0.623822,
		0.467699, -0.879673, 0.086217,
		0.584427, 0.234590, -0.776797,
		29.996937, 35.005169, 34.800701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219934, 34.605030, 35.539402>,  <29.587839, 34.840954, 35.344460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219934, 34.605030, 35.539402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273628, 34.890579, 35.264484>,  <30.305845, 35.061909, 35.099533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273628, 34.890579, 35.264484>,  <30.219934, 34.605030, 35.539402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273628, 34.890579, 35.264484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750700, 0.379484, 0.540779,
		0.646862, -0.588540, -0.484964,
		0.134234, 0.713872, -0.687291,
		30.313898, 35.104740, 35.058296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867205, 34.534714, 35.424366>,  <30.219934, 34.605030, 35.539402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867205, 34.534714, 35.424366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787354, 34.904823, 35.295353>,  <30.739443, 35.126888, 35.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787354, 34.904823, 35.295353>,  <30.867205, 34.534714, 35.424366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787354, 34.904823, 35.295353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883476, 0.312325, 0.349176,
		0.423816, -0.215241, -0.879802,
		-0.199627, 0.925270, -0.322528,
		30.727465, 35.182404, 35.198593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529726, 34.725910, 35.106262>,  <30.867205, 34.534714, 35.424366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529726, 34.725910, 35.106262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299534, 35.044285, 35.181423>,  <31.161419, 35.235310, 35.226521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299534, 35.044285, 35.181423>,  <31.529726, 34.725910, 35.106262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299534, 35.044285, 35.181423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742816, 0.412605, 0.527240,
		0.342120, 0.442992, -0.828681,
		-0.575481, 0.795936, 0.187901,
		31.126890, 35.283066, 35.237793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957058, 35.270847, 35.127640>,  <31.529726, 34.725910, 35.106262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957058, 35.270847, 35.127640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666300, 35.274227, 35.402317>,  <31.491844, 35.276257, 35.567123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666300, 35.274227, 35.402317>,  <31.957058, 35.270847, 35.127640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666300, 35.274227, 35.402317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676670, 0.179493, 0.714072,
		-0.117222, 0.983723, -0.136192,
		-0.726895, 0.008453, 0.686697,
		31.448231, 35.276764, 35.608326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520454, 35.266895, 35.534168>,  <31.957058, 35.270847, 35.127640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520454, 35.266895, 35.534168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388096, 35.513866, 35.819626>,  <32.308681, 35.662048, 35.990902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388096, 35.513866, 35.819626>,  <32.520454, 35.266895, 35.534168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388096, 35.513866, 35.819626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829003, 0.171115, -0.532423,
		-0.450849, -0.767790, 0.455229,
		-0.330893, 0.617428, 0.713647,
		32.288830, 35.699097, 36.033722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841160, 35.108025, 35.954208>,  <32.520454, 35.266895, 35.534168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841160, 35.108025, 35.954208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884142, 35.499187, 35.882488>,  <31.909931, 35.733887, 35.839455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884142, 35.499187, 35.882488>,  <31.841160, 35.108025, 35.954208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884142, 35.499187, 35.882488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780613, -0.028701, -0.624355,
		-0.615708, 0.207057, 0.760284,
		0.107456, 0.977908, -0.179303,
		31.916378, 35.792561, 35.828697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252277, 35.446911, 36.246113>,  <31.841160, 35.108025, 35.954208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252277, 35.446911, 36.246113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417965, 35.641346, 35.938309>,  <31.517378, 35.758007, 35.753628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417965, 35.641346, 35.938309>,  <31.252277, 35.446911, 36.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417965, 35.641346, 35.938309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908302, 0.166514, -0.383745,
		-0.058399, 0.857902, 0.510484,
		0.414218, 0.486084, -0.769510,
		31.542231, 35.787170, 35.707455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903196, 36.054966, 36.170376>,  <31.252277, 35.446911, 36.246113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903196, 36.054966, 36.170376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079401, 36.003910, 35.814926>,  <31.185123, 35.973278, 35.601654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079401, 36.003910, 35.814926>,  <30.903196, 36.054966, 36.170376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079401, 36.003910, 35.814926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891970, 0.049894, -0.449333,
		0.101689, 0.990565, -0.091870,
		0.440510, -0.127637, -0.888628,
		31.211554, 35.965618, 35.548336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650249, 36.447155, 35.576790>,  <30.903196, 36.054966, 36.170376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650249, 36.447155, 35.576790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789812, 36.095940, 35.445751>,  <30.873550, 35.885212, 35.367126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789812, 36.095940, 35.445751>,  <30.650249, 36.447155, 35.576790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789812, 36.095940, 35.445751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789804, -0.087331, -0.607110,
		0.504454, 0.470562, -0.723945,
		0.348907, -0.878034, -0.327597,
		30.894484, 35.832531, 35.347473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502731, 36.422157, 34.829208>,  <30.650249, 36.447155, 35.576790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502731, 36.422157, 34.829208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578348, 36.046970, 34.945473>,  <30.623718, 35.821857, 35.015232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578348, 36.046970, 34.945473>,  <30.502731, 36.422157, 34.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578348, 36.046970, 34.945473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654101, -0.341049, -0.675157,
		0.732404, -0.062488, -0.677997,
		0.189041, -0.937966, 0.290659,
		30.635061, 35.765579, 35.032669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616238, 36.021626, 34.152988>,  <30.502731, 36.422157, 34.829208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616238, 36.021626, 34.152988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539528, 35.766544, 34.451401>,  <30.493502, 35.613495, 34.630447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539528, 35.766544, 34.451401>,  <30.616238, 36.021626, 34.152988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539528, 35.766544, 34.451401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563723, -0.550664, -0.615618,
		0.803392, -0.538612, -0.253886,
		-0.191774, -0.637704, 0.746027,
		30.481997, 35.575233, 34.675209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784441, 35.331326, 33.990120>,  <30.616238, 36.021626, 34.152988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784441, 35.331326, 33.990120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486845, 35.340694, 34.257233>,  <30.308289, 35.346317, 34.417500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486845, 35.340694, 34.257233>,  <30.784441, 35.331326, 33.990120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486845, 35.340694, 34.257233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603592, -0.452262, -0.656610,
		0.286634, -0.891578, 0.350614,
		-0.743988, 0.023421, 0.667783,
		30.263649, 35.347721, 34.457569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370562, 35.340355, 34.420273>,  <30.784441, 35.331326, 33.990120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370562, 35.340355, 34.420273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237093, 35.631580, 34.659801>,  <31.157011, 35.806316, 34.803520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237093, 35.631580, 34.659801>,  <31.370562, 35.340355, 34.420273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237093, 35.631580, 34.659801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942681, 0.255065, 0.215162,
		0.003914, 0.636290, -0.771440,
		-0.333673, 0.728064, 0.598820,
		31.136992, 35.849998, 34.839447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826689, 35.907997, 34.440529>,  <31.370562, 35.340355, 34.420273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826689, 35.907997, 34.440529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634348, 35.939487, 34.789833>,  <31.518944, 35.958382, 34.999416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634348, 35.939487, 34.789833>,  <31.826689, 35.907997, 34.440529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634348, 35.939487, 34.789833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875972, 0.086482, 0.474546,
		-0.038162, 0.993138, -0.110548,
		-0.480850, 0.078727, 0.873261,
		31.490093, 35.963104, 35.051811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172344, 36.477531, 34.748753>,  <31.826689, 35.907997, 34.440529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172344, 36.477531, 34.748753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000614, 36.219410, 35.001499>,  <31.897575, 36.064537, 35.153149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000614, 36.219410, 35.001499>,  <32.172344, 36.477531, 34.748753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000614, 36.219410, 35.001499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865874, -0.095179, 0.491124,
		-0.256785, 0.757972, 0.599617,
		-0.429329, -0.645306, 0.631868,
		31.871815, 36.025818, 35.191059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361397, 36.706230, 35.427521>,  <32.172344, 36.477531, 34.748753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361397, 36.706230, 35.427521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300182, 36.311131, 35.439789>,  <32.263454, 36.074070, 35.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300182, 36.311131, 35.439789>,  <32.361397, 36.706230, 35.427521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300182, 36.311131, 35.439789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967047, -0.143293, 0.210445,
		-0.203471, 0.061864, 0.977125,
		-0.153034, -0.987745, 0.030669,
		32.254272, 36.014809, 35.448990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634892, 36.354237, 36.027538>,  <32.361397, 36.706230, 35.427521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634892, 36.354237, 36.027538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614395, 36.083492, 35.733807>,  <32.602097, 35.921047, 35.557568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614395, 36.083492, 35.733807>,  <32.634892, 36.354237, 36.027538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614395, 36.083492, 35.733807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962794, -0.228833, 0.143743,
		-0.265331, -0.699641, 0.663402,
		-0.051240, -0.676859, -0.734327,
		32.599022, 35.880436, 35.513508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142399, 36.837997, 35.893574>,  <32.634892, 36.354237, 36.027538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142399, 36.837997, 35.893574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455524, 37.032074, 36.049416>,  <33.643398, 37.148518, 36.142921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455524, 37.032074, 36.049416>,  <33.142399, 36.837997, 35.893574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455524, 37.032074, 36.049416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332656, -0.855447, 0.396927,
		0.525874, -0.181114, -0.831056,
		0.782813, 0.485189, 0.389609,
		33.690369, 37.177631, 36.166298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853565, 36.439499, 35.751179>,  <33.142399, 36.837997, 35.893574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853565, 36.439499, 35.751179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863605, 36.666794, 36.080173>,  <33.869629, 36.803169, 36.277569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863605, 36.666794, 36.080173>,  <33.853565, 36.439499, 35.751179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863605, 36.666794, 36.080173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274918, -0.794942, 0.540821,
		0.961140, 0.212542, -0.176170,
		0.025098, 0.568237, 0.822482,
		33.871136, 36.837265, 36.326920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531647, 36.373318, 36.037548>,  <33.853565, 36.439499, 35.751179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531647, 36.373318, 36.037548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284641, 36.467510, 36.337742>,  <34.136436, 36.524025, 36.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284641, 36.467510, 36.337742>,  <34.531647, 36.373318, 36.037548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284641, 36.467510, 36.337742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366397, -0.758173, 0.539377,
		0.696008, 0.608048, 0.381903,
		-0.617516, 0.235482, 0.750481,
		34.099388, 36.538155, 36.562885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944778, 36.188004, 36.615986>,  <34.531647, 36.373318, 36.037548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944778, 36.188004, 36.615986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563431, 36.226295, 36.730476>,  <34.334621, 36.249271, 36.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563431, 36.226295, 36.730476>,  <34.944778, 36.188004, 36.615986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563431, 36.226295, 36.730476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084398, -0.825965, 0.557367,
		0.289766, 0.555533, 0.779370,
		-0.953369, 0.095729, 0.286223,
		34.277420, 36.255013, 36.816341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033535, 36.136173, 37.289028>,  <34.944778, 36.188004, 36.615986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033535, 36.136173, 37.289028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648178, 36.049809, 37.225460>,  <34.416965, 35.997990, 37.187317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648178, 36.049809, 37.225460>,  <35.033535, 36.136173, 37.289028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648178, 36.049809, 37.225460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077362, -0.791458, 0.606308,
		-0.256692, 0.571818, 0.779188,
		-0.963392, -0.215914, -0.158924,
		34.359161, 35.985035, 37.177784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729599, 35.983543, 37.892559>,  <35.033535, 36.136173, 37.289028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729599, 35.983543, 37.892559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502785, 35.781902, 37.631992>,  <34.366695, 35.660915, 37.475651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502785, 35.781902, 37.631992>,  <34.729599, 35.983543, 37.892559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502785, 35.781902, 37.631992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137105, -0.837583, 0.528825,
		-0.812199, 0.210553, 0.544059,
		-0.567040, -0.504105, -0.651417,
		34.332672, 35.630672, 37.436569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165405, 35.622040, 38.228832>,  <34.729599, 35.983543, 37.892559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165405, 35.622040, 38.228832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266720, 35.429100, 37.893410>,  <34.327511, 35.313335, 37.692154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266720, 35.429100, 37.893410>,  <34.165405, 35.622040, 38.228832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266720, 35.429100, 37.893410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011277, -0.868239, 0.496018,
		-0.967325, -0.116179, -0.225354,
		0.253288, -0.482352, -0.838559,
		34.342705, 35.284393, 37.641842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798668, 35.027046, 38.179256>,  <34.165405, 35.622040, 38.228832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798668, 35.027046, 38.179256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144630, 34.982822, 37.983418>,  <34.352207, 34.956287, 37.865913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144630, 34.982822, 37.983418>,  <33.798668, 35.027046, 38.179256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144630, 34.982822, 37.983418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110225, -0.909788, 0.400170,
		-0.489673, -0.400077, -0.774699,
		0.864911, -0.110561, -0.489597,
		34.404102, 34.949654, 37.836540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037769, 34.328743, 38.566444>,  <33.798668, 35.027046, 38.179256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037769, 34.328743, 38.566444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791359, 34.190510, 38.283295>,  <33.643513, 34.107571, 38.113403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791359, 34.190510, 38.283295>,  <34.037769, 34.328743, 38.566444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791359, 34.190510, 38.283295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127063, 0.843267, -0.522261,
		0.777412, -0.411669, -0.475561,
		-0.616023, -0.345586, -0.707874,
		33.606552, 34.086834, 38.070930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399548, 34.366425, 37.841511>,  <34.037769, 34.328743, 38.566444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399548, 34.366425, 37.841511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003956, 34.365955, 37.782284>,  <33.766602, 34.365673, 37.746746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003956, 34.365955, 37.782284>,  <34.399548, 34.366425, 37.841511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003956, 34.365955, 37.782284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062105, 0.904468, -0.421995,
		0.134423, -0.426539, -0.894424,
		-0.988976, -0.001178, -0.148072,
		33.707264, 34.365601, 37.737862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271927, 34.380241, 37.061253>,  <34.399548, 34.366425, 37.841511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271927, 34.380241, 37.061253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013649, 34.548611, 37.316093>,  <33.858681, 34.649632, 37.468998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013649, 34.548611, 37.316093>,  <34.271927, 34.380241, 37.061253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013649, 34.548611, 37.316093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248330, 0.904748, -0.346069,
		-0.722088, -0.065242, -0.688718,
		-0.645694, 0.420921, 0.637106,
		33.819942, 34.674889, 37.507225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776997, 34.758484, 36.657982>,  <34.271927, 34.380241, 37.061253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776997, 34.758484, 36.657982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877651, 34.901283, 37.017811>,  <33.938046, 34.986961, 37.233707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877651, 34.901283, 37.017811>,  <33.776997, 34.758484, 36.657982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877651, 34.901283, 37.017811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195775, 0.891492, -0.408552,
		-0.947814, 0.278921, 0.154440,
		0.251635, 0.356996, 0.899574,
		33.953140, 35.008381, 37.287682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554409, 35.363281, 36.538780>,  <33.776997, 34.758484, 36.657982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554409, 35.363281, 36.538780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749119, 35.447910, 36.877789>,  <33.865944, 35.498688, 37.081192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749119, 35.447910, 36.877789>,  <33.554409, 35.363281, 36.538780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749119, 35.447910, 36.877789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021411, 0.972822, -0.230561,
		-0.873265, 0.094085, 0.478076,
		0.486775, 0.211577, 0.847517,
		33.895153, 35.511383, 37.132042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079727, 35.852783, 36.985085>,  <33.554409, 35.363281, 36.538780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079727, 35.852783, 36.985085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473236, 35.888439, 37.047363>,  <33.709343, 35.909832, 37.084728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473236, 35.888439, 37.047363>,  <33.079727, 35.852783, 36.985085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473236, 35.888439, 37.047363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041192, 0.956870, -0.287581,
		-0.174616, 0.276501, 0.945017,
		0.983775, 0.089143, 0.155695,
		33.768368, 35.915180, 37.094070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232208, 36.239841, 37.567989>,  <33.079727, 35.852783, 36.985085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232208, 36.239841, 37.567989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531864, 36.278950, 37.305927>,  <33.711658, 36.302414, 37.148689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531864, 36.278950, 37.305927>,  <33.232208, 36.239841, 37.567989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531864, 36.278950, 37.305927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148620, 0.988641, -0.022399,
		0.645522, 0.114149, 0.755163,
		0.749141, 0.097774, -0.655154,
		33.756607, 36.308281, 37.109383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532593, 36.792164, 37.715656>,  <33.232208, 36.239841, 37.567989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532593, 36.792164, 37.715656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669621, 36.725460, 37.345825>,  <33.751839, 36.685436, 37.123928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669621, 36.725460, 37.345825>,  <33.532593, 36.792164, 37.715656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669621, 36.725460, 37.345825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013521, 0.983143, -0.182337,
		0.939395, 0.074964, 0.334540,
		0.342569, -0.166763, -0.924574,
		33.772392, 36.675430, 37.068455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965214, 37.445786, 37.484470>,  <33.532593, 36.792164, 37.715656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965214, 37.445786, 37.484470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917145, 37.270840, 37.127983>,  <33.888302, 37.165871, 36.914089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917145, 37.270840, 37.127983>,  <33.965214, 37.445786, 37.484470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917145, 37.270840, 37.127983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124783, 0.897258, -0.423506,
		0.984879, 0.060315, -0.162403,
		-0.120173, -0.437367, -0.891217,
		33.881092, 37.139629, 36.860619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348446, 37.945290, 37.105698>,  <33.965214, 37.445786, 37.484470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348446, 37.945290, 37.105698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045803, 37.742260, 36.940819>,  <33.864216, 37.620441, 36.841892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045803, 37.742260, 36.940819>,  <34.348446, 37.945290, 37.105698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045803, 37.742260, 36.940819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385508, 0.855464, -0.345782,
		0.528133, -0.102716, -0.842927,
		-0.756610, -0.507574, -0.412201,
		33.818821, 37.589989, 36.817158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218105, 37.998055, 36.400204>,  <34.348446, 37.945290, 37.105698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218105, 37.998055, 36.400204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846447, 37.924397, 36.528446>,  <33.623451, 37.880203, 36.605392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846447, 37.924397, 36.528446>,  <34.218105, 37.998055, 36.400204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846447, 37.924397, 36.528446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275448, 0.923194, -0.268031,
		-0.246628, -0.337349, -0.908499,
		-0.929141, -0.184140, 0.320608,
		33.567703, 37.869156, 36.624630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504681, 37.847496, 35.754482>,  <34.218105, 37.998055, 36.400204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504681, 37.847496, 35.754482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575420, 38.142746, 35.494053>,  <34.617863, 38.319897, 35.337795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575420, 38.142746, 35.494053>,  <34.504681, 37.847496, 35.754482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575420, 38.142746, 35.494053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254319, -0.604767, -0.754705,
		-0.950814, 0.299048, 0.080767,
		0.176848, 0.738124, -0.651074,
		34.628475, 38.364182, 35.298729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899117, 37.939266, 35.364639>,  <34.504681, 37.847496, 35.754482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899117, 37.939266, 35.364639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222088, 38.035793, 35.149300>,  <34.415871, 38.093712, 35.020096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222088, 38.035793, 35.149300>,  <33.899117, 37.939266, 35.364639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222088, 38.035793, 35.149300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272832, -0.656338, -0.703408,
		-0.523088, 0.714832, -0.464106,
		0.807429, 0.241322, -0.538352,
		34.464317, 38.108189, 34.987793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686623, 38.203930, 34.699818>,  <33.899117, 37.939266, 35.364639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686623, 38.203930, 34.699818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041183, 38.032661, 34.629440>,  <34.253922, 37.929901, 34.587215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041183, 38.032661, 34.629440>,  <33.686623, 38.203930, 34.699818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041183, 38.032661, 34.629440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367629, -0.420145, -0.829655,
		0.281317, 0.800090, -0.529828,
		0.886403, -0.428176, -0.175943,
		34.307106, 37.904209, 34.576656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785603, 38.266422, 33.981876>,  <33.686623, 38.203930, 34.699818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785603, 38.266422, 33.981876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029247, 37.967678, 34.088600>,  <34.175434, 37.788433, 34.152634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029247, 37.967678, 34.088600>,  <33.785603, 38.266422, 33.981876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029247, 37.967678, 34.088600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260812, -0.506339, -0.821948,
		0.748974, 0.431070, -0.503206,
		0.609110, -0.746860, 0.266807,
		34.211979, 37.743622, 34.168644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072762, 38.006840, 33.373280>,  <33.785603, 38.266422, 33.981876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072762, 38.006840, 33.373280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191593, 37.691280, 33.588459>,  <34.262894, 37.501945, 33.717567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191593, 37.691280, 33.588459>,  <34.072762, 38.006840, 33.373280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191593, 37.691280, 33.588459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151836, -0.595243, -0.789070,
		0.942703, 0.152739, -0.296619,
		0.297082, -0.788896, 0.537946,
		34.280716, 37.454613, 33.749844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393505, 37.625843, 32.861546>,  <34.072762, 38.006840, 33.373280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393505, 37.625843, 32.861546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358067, 37.370815, 33.167656>,  <34.336803, 37.217796, 33.351322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358067, 37.370815, 33.167656>,  <34.393505, 37.625843, 32.861546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358067, 37.370815, 33.167656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192637, -0.742827, -0.641169,
		0.977262, -0.204227, -0.057007,
		-0.088598, -0.637572, 0.765279,
		34.331486, 37.179543, 33.397240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818787, 37.199326, 32.684204>,  <34.393505, 37.625843, 32.861546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818787, 37.199326, 32.684204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570347, 37.003986, 32.929398>,  <34.421284, 36.886784, 33.076515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570347, 37.003986, 32.929398>,  <34.818787, 37.199326, 32.684204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570347, 37.003986, 32.929398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023185, -0.770345, -0.637206,
		0.783388, -0.409981, 0.467139,
		-0.621100, -0.488349, 0.612984,
		34.384018, 36.857483, 33.113293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085945, 36.501328, 32.810875>,  <34.818787, 37.199326, 32.684204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085945, 36.501328, 32.810875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693062, 36.484482, 32.884071>,  <34.457333, 36.474373, 32.927990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693062, 36.484482, 32.884071>,  <35.085945, 36.501328, 32.810875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693062, 36.484482, 32.884071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081179, -0.783511, -0.616052,
		0.169319, -0.619949, 0.766156,
		-0.982212, -0.042113, 0.182990,
		34.398399, 36.471848, 32.938969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942394, 35.871250, 32.860210>,  <35.085945, 36.501328, 32.810875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942394, 35.871250, 32.860210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566986, 35.993622, 32.796223>,  <34.341743, 36.067043, 32.757828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566986, 35.993622, 32.796223>,  <34.942394, 35.871250, 32.860210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566986, 35.993622, 32.796223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223602, -0.891722, -0.393489,
		-0.263029, -0.333527, 0.905304,
		-0.938519, 0.305927, -0.159972,
		34.285431, 36.085400, 32.748230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595573, 35.236866, 32.917145>,  <34.942394, 35.871250, 32.860210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595573, 35.236866, 32.917145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334946, 35.492035, 32.752945>,  <34.178570, 35.645138, 32.654427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334946, 35.492035, 32.752945>,  <34.595573, 35.236866, 32.917145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334946, 35.492035, 32.752945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470671, -0.764344, -0.440733,
		-0.594916, -0.093959, 0.798277,
		-0.651570, 0.637926, -0.410497,
		34.139477, 35.683414, 32.629795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971142, 34.921104, 33.018909>,  <34.595573, 35.236866, 32.917145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971142, 34.921104, 33.018909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916256, 35.180885, 32.719742>,  <33.883324, 35.336754, 32.540241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916256, 35.180885, 32.719742>,  <33.971142, 34.921104, 33.018909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916256, 35.180885, 32.719742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563153, -0.672310, -0.480478,
		-0.814881, 0.355263, 0.457993,
		-0.137217, 0.649452, -0.747919,
		33.875092, 35.375721, 32.495365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332264, 34.767754, 32.760887>,  <33.971142, 34.921104, 33.018909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332264, 34.767754, 32.760887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465500, 34.970882, 32.443104>,  <33.545441, 35.092758, 32.252434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465500, 34.970882, 32.443104>,  <33.332264, 34.767754, 32.760887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465500, 34.970882, 32.443104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516904, -0.606333, -0.604294,
		-0.788580, 0.611946, 0.060530,
		0.333094, 0.507822, -0.794459,
		33.565430, 35.123230, 32.204765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752598, 34.752029, 32.322033>,  <33.332264, 34.767754, 32.760887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752598, 34.752029, 32.322033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074524, 34.826736, 32.096684>,  <33.267681, 34.871563, 31.961475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074524, 34.826736, 32.096684>,  <32.752598, 34.752029, 32.322033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074524, 34.826736, 32.096684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350409, -0.616594, -0.705000,
		-0.479044, 0.764806, -0.430800,
		0.804817, 0.186770, -0.563371,
		33.315968, 34.882767, 31.927671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533058, 34.883358, 31.608438>,  <32.752598, 34.752029, 32.322033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533058, 34.883358, 31.608438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917046, 34.772720, 31.590746>,  <33.147438, 34.706337, 31.580130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917046, 34.772720, 31.590746>,  <32.533058, 34.883358, 31.608438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917046, 34.772720, 31.590746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159490, -0.409931, -0.898064,
		0.230265, 0.869169, -0.437634,
		0.959969, -0.276591, -0.044231,
		33.205036, 34.689743, 31.577477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730667, 35.194424, 31.027674>,  <32.533058, 34.883358, 31.608438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730667, 35.194424, 31.027674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994289, 34.903679, 31.104952>,  <33.152462, 34.729233, 31.151320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994289, 34.903679, 31.104952>,  <32.730667, 35.194424, 31.027674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994289, 34.903679, 31.104952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101827, -0.340746, -0.934624,
		0.745170, 0.596295, -0.298584,
		0.659054, -0.726859, 0.193195,
		33.192005, 34.685623, 31.162910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967323, 35.113686, 30.423058>,  <32.730667, 35.194424, 31.027674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967323, 35.113686, 30.423058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104301, 34.779026, 30.594059>,  <33.186489, 34.578232, 30.696659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104301, 34.779026, 30.594059>,  <32.967323, 35.113686, 30.423058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104301, 34.779026, 30.594059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011751, -0.458791, -0.888467,
		0.939466, 0.299224, -0.166940,
		0.342441, -0.836646, 0.427502,
		33.207035, 34.528030, 30.722309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698650, 34.934502, 30.123981>,  <32.967323, 35.113686, 30.423058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698650, 34.934502, 30.123981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528175, 34.600258, 30.262621>,  <33.425892, 34.399712, 30.345804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528175, 34.600258, 30.262621>,  <33.698650, 34.934502, 30.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528175, 34.600258, 30.262621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021886, -0.392545, -0.919472,
		0.904372, -0.384278, 0.185584,
		-0.426183, -0.835607, 0.346597,
		33.400322, 34.349575, 30.366600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139923, 34.422680, 29.917309>,  <33.698650, 34.934502, 30.123981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139923, 34.422680, 29.917309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792835, 34.234825, 29.982424>,  <33.584583, 34.122112, 30.021492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792835, 34.234825, 29.982424>,  <34.139923, 34.422680, 29.917309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792835, 34.234825, 29.982424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030624, -0.276376, -0.960562,
		0.496102, -0.838488, 0.225436,
		-0.867724, -0.469633, 0.162788,
		33.532516, 34.093937, 30.031260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188339, 33.835838, 29.578733>,  <34.139923, 34.422680, 29.917309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188339, 33.835838, 29.578733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791832, 33.864452, 29.623051>,  <33.553928, 33.881618, 29.649641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791832, 33.864452, 29.623051>,  <34.188339, 33.835838, 29.578733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791832, 33.864452, 29.623051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131072, -0.441644, -0.887564,
		-0.014559, -0.894334, 0.447163,
		-0.991266, 0.071533, 0.110793,
		33.494453, 33.885914, 29.656288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986328, 33.149181, 29.450254>,  <34.188339, 33.835838, 29.578733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986328, 33.149181, 29.450254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644814, 33.355339, 29.420828>,  <33.439903, 33.479034, 29.403172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644814, 33.355339, 29.420828>,  <33.986328, 33.149181, 29.450254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644814, 33.355339, 29.420828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213161, -0.474981, -0.853789,
		-0.474981, -0.713274, 0.515396,
		0.853789, -0.515396, 0.073565,
		33.388676, 33.509956, 29.398758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661156, 32.632069, 29.195576>,  <33.986328, 33.149181, 29.450254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661156, 32.632069, 29.195576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452324, 32.965374, 29.122799>,  <33.327026, 33.165359, 29.079132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452324, 32.965374, 29.122799>,  <33.661156, 32.632069, 29.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452324, 32.965374, 29.122799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355519, -0.406518, -0.841635,
		-0.775268, -0.374715, 0.508476,
		-0.522078, 0.833266, -0.181942,
		33.295700, 33.215355, 29.068216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978371, 32.418125, 29.134504>,  <33.661156, 32.632069, 29.195576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978371, 32.418125, 29.134504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000130, 32.779850, 28.965151>,  <33.013187, 32.996887, 28.863539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000130, 32.779850, 28.965151>,  <32.978371, 32.418125, 29.134504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000130, 32.779850, 28.965151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604261, -0.307745, -0.734957,
		-0.794927, 0.295817, 0.529701,
		0.054400, 0.904315, -0.423386,
		33.016449, 33.051144, 28.838135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287285, 32.668652, 28.761913>,  <32.978371, 32.418125, 29.134504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287285, 32.668652, 28.761913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595898, 32.859909, 28.594051>,  <32.781067, 32.974663, 28.493334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595898, 32.859909, 28.594051>,  <32.287285, 32.668652, 28.761913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595898, 32.859909, 28.594051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372141, -0.195808, -0.907287,
		-0.515989, 0.856174, 0.026866,
		0.771535, 0.478148, -0.419653,
		32.827358, 33.003353, 28.468155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947353, 33.117256, 28.309126>,  <32.287285, 32.668652, 28.761913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947353, 33.117256, 28.309126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313011, 33.093231, 28.148758>,  <32.532406, 33.078815, 28.052538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313011, 33.093231, 28.148758>,  <31.947353, 33.117256, 28.309126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313011, 33.093231, 28.148758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403430, -0.231979, -0.885115,
		-0.039841, 0.970864, -0.236294,
		0.914143, -0.060064, -0.400918,
		32.587254, 33.075211, 28.028482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912529, 33.525230, 27.748877>,  <31.947353, 33.117256, 28.309126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912529, 33.525230, 27.748877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243462, 33.316612, 27.665434>,  <32.442020, 33.191441, 27.615368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243462, 33.316612, 27.665434>,  <31.912529, 33.525230, 27.748877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243462, 33.316612, 27.665434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374966, -0.236265, -0.896426,
		0.418240, 0.819860, -0.391030,
		0.827331, -0.521544, -0.208605,
		32.491661, 33.160149, 27.602852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085846, 33.717594, 27.049696>,  <31.912529, 33.525230, 27.748877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085846, 33.717594, 27.049696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266068, 33.364220, 27.101139>,  <32.374199, 33.152195, 27.132006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266068, 33.364220, 27.101139>,  <32.085846, 33.717594, 27.049696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266068, 33.364220, 27.101139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250822, -0.263519, -0.931475,
		0.856792, 0.387420, -0.340315,
		0.450551, -0.883439, 0.128607,
		32.401234, 33.099190, 27.139721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457520, 33.609203, 26.527685>,  <32.085846, 33.717594, 27.049696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457520, 33.609203, 26.527685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414036, 33.230484, 26.648853>,  <32.387947, 33.003254, 26.721554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414036, 33.230484, 26.648853>,  <32.457520, 33.609203, 26.527685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414036, 33.230484, 26.648853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408924, -0.235160, -0.881749,
		0.906071, -0.219723, -0.361604,
		-0.108706, -0.946795, 0.302922,
		32.381424, 32.946445, 26.739731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775978, 33.227104, 26.011585>,  <32.457520, 33.609203, 26.527685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775978, 33.227104, 26.011585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544071, 32.959171, 26.197142>,  <32.404926, 32.798412, 26.308475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544071, 32.959171, 26.197142>,  <32.775978, 33.227104, 26.011585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544071, 32.959171, 26.197142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395793, -0.266129, -0.878933,
		0.712194, -0.693179, -0.110823,
		-0.579765, -0.669834, 0.463891,
		32.370140, 32.758221, 26.336309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025616, 32.623512, 25.784618>,  <32.775978, 33.227104, 26.011585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025616, 32.623512, 25.784618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652836, 32.583443, 25.924011>,  <32.429169, 32.559402, 26.007647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652836, 32.583443, 25.924011>,  <33.025616, 32.623512, 25.784618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652836, 32.583443, 25.924011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288845, -0.375872, -0.880505,
		0.219187, -0.921242, 0.321358,
		-0.931947, -0.100173, 0.348482,
		32.373253, 32.553391, 26.028555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874542, 31.953711, 25.636549>,  <33.025616, 32.623512, 25.784618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874542, 31.953711, 25.636549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518105, 32.125839, 25.694212>,  <32.304241, 32.229115, 25.728809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518105, 32.125839, 25.694212>,  <32.874542, 31.953711, 25.636549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518105, 32.125839, 25.694212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266019, -0.237923, -0.934145,
		-0.367684, -0.870756, 0.326485,
		-0.891090, 0.430321, 0.144157,
		32.250778, 32.254936, 25.737459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356121, 31.453058, 25.498644>,  <32.874542, 31.953711, 25.636549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356121, 31.453058, 25.498644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152485, 31.796583, 25.475767>,  <32.030304, 32.002697, 25.462040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152485, 31.796583, 25.475767>,  <32.356121, 31.453058, 25.498644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152485, 31.796583, 25.475767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238327, -0.204503, -0.949409,
		-0.827059, -0.469704, 0.308789,
		-0.509090, 0.858811, -0.057193,
		31.999758, 32.054226, 25.458609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757835, 31.209631, 25.254028>,  <32.356121, 31.453058, 25.498644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757835, 31.209631, 25.254028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787264, 31.602121, 25.182716>,  <31.804922, 31.837616, 25.139929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787264, 31.602121, 25.182716>,  <31.757835, 31.209631, 25.254028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787264, 31.602121, 25.182716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258391, -0.153906, -0.953702,
		-0.963235, 0.116233, 0.242216,
		0.073573, 0.981225, -0.178281,
		31.809336, 31.896488, 25.129232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105686, 31.425962, 25.011688>,  <31.757835, 31.209631, 25.254028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105686, 31.425962, 25.011688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332312, 31.716782, 24.856558>,  <31.468287, 31.891273, 24.763479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332312, 31.716782, 24.856558>,  <31.105686, 31.425962, 25.011688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332312, 31.716782, 24.856558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295899, -0.259756, -0.919223,
		-0.769059, 0.635555, 0.067964,
		0.566562, 0.727047, -0.387828,
		31.502281, 31.934896, 24.740210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751617, 31.632042, 24.443039>,  <31.105686, 31.425962, 25.011688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751617, 31.632042, 24.443039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128107, 31.755739, 24.388680>,  <31.354000, 31.829958, 24.356064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128107, 31.755739, 24.388680>,  <30.751617, 31.632042, 24.443039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128107, 31.755739, 24.388680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076180, -0.197618, -0.977315,
		-0.329083, 0.930224, -0.162444,
		0.941223, 0.309243, -0.135897,
		31.410475, 31.848513, 24.347910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686169, 32.097023, 23.847303>,  <30.751617, 31.632042, 24.443039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686169, 32.097023, 23.847303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085819, 32.094357, 23.830803>,  <31.325609, 32.092758, 23.820902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085819, 32.094357, 23.830803>,  <30.686169, 32.097023, 23.847303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085819, 32.094357, 23.830803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041786, -0.161548, -0.985980,
		-0.000096, 0.986842, -0.161685,
		0.999127, -0.006662, -0.041252,
		31.385557, 32.092358, 23.818428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878592, 32.610928, 23.333532>,  <30.686169, 32.097023, 23.847303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878592, 32.610928, 23.333532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184702, 32.354130, 23.352268>,  <31.368368, 32.200050, 23.363510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184702, 32.354130, 23.352268>,  <30.878592, 32.610928, 23.333532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184702, 32.354130, 23.352268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032202, -0.034491, -0.998886,
		0.642897, 0.765932, -0.005721,
		0.765276, -0.641996, 0.046839,
		31.414284, 32.161530, 23.366320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351994, 32.933064, 22.900108>,  <30.878592, 32.610928, 23.333532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351994, 32.933064, 22.900108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420689, 32.539360, 22.916813>,  <31.461905, 32.303139, 22.926836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420689, 32.539360, 22.916813>,  <31.351994, 32.933064, 22.900108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420689, 32.539360, 22.916813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118612, -0.021426, -0.992709,
		0.977976, 0.175438, 0.113065,
		0.171736, -0.984257, 0.041763,
		31.472210, 32.244083, 22.929342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842367, 32.879196, 22.518341>,  <31.351994, 32.933064, 22.900108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842367, 32.879196, 22.518341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716215, 32.499615, 22.520309>,  <31.640524, 32.271866, 22.521490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716215, 32.499615, 22.520309>,  <31.842367, 32.879196, 22.518341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716215, 32.499615, 22.520309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307787, -0.107196, -0.945398,
		0.897666, -0.296644, 0.325882,
		-0.315379, -0.948953, 0.004923,
		31.621601, 32.214928, 22.521786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268353, 32.545021, 21.985022>,  <31.842367, 32.879196, 22.518341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268353, 32.545021, 21.985022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000340, 32.254913, 22.048330>,  <31.839533, 32.080849, 22.086315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000340, 32.254913, 22.048330>,  <32.268353, 32.545021, 21.985022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000340, 32.254913, 22.048330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110857, -0.308574, -0.944718,
		0.734009, -0.615445, 0.287155,
		-0.670031, -0.725265, 0.158270,
		31.799330, 32.037334, 22.095812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611355, 31.908091, 21.817497>,  <32.268353, 32.545021, 21.985022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611355, 31.908091, 21.817497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218491, 31.835348, 21.798349>,  <31.982773, 31.791702, 21.786861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218491, 31.835348, 21.798349>,  <32.611355, 31.908091, 21.817497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218491, 31.835348, 21.798349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073486, -0.136851, -0.987862,
		0.173099, -0.973755, 0.147774,
		-0.982159, -0.181857, -0.047868,
		31.923843, 31.780790, 21.783989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537788, 31.352657, 21.446346>,  <32.611355, 31.908091, 21.817497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537788, 31.352657, 21.446346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178539, 31.527712, 21.429173>,  <31.962990, 31.632744, 21.418869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178539, 31.527712, 21.429173>,  <32.537788, 31.352657, 21.446346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178539, 31.527712, 21.429173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041401, -0.013044, -0.999058,
		-0.437784, -0.899058, -0.006404,
		-0.898127, 0.437636, -0.042932,
		31.909101, 31.659002, 21.416292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034462, 30.826981, 21.120703>,  <32.537788, 31.352657, 21.446346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034462, 30.826981, 21.120703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869013, 31.184927, 21.053621>,  <31.769743, 31.399694, 21.013372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869013, 31.184927, 21.053621>,  <32.034462, 30.826981, 21.120703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869013, 31.184927, 21.053621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103733, -0.229322, -0.967807,
		-0.904518, -0.382915, 0.187681,
		-0.413627, 0.894868, -0.167705,
		31.744925, 31.453386, 21.003309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334549, 30.681942, 20.979849>,  <32.034462, 30.826981, 21.120703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334549, 30.681942, 20.979849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486765, 31.015301, 20.819530>,  <31.578094, 31.215317, 20.723339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486765, 31.015301, 20.819530>,  <31.334549, 30.681942, 20.979849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486765, 31.015301, 20.819530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024576, -0.442365, -0.896499,
		-0.924439, 0.331301, -0.188818,
		0.380538, 0.833398, -0.400797,
		31.600925, 31.265320, 20.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979988, 30.752972, 20.399311>,  <31.334549, 30.681942, 20.979849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979988, 30.752972, 20.399311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296066, 30.983442, 20.315777>,  <31.485714, 31.121725, 20.265656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296066, 30.983442, 20.315777>,  <30.979988, 30.752972, 20.399311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296066, 30.983442, 20.315777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063326, -0.262174, -0.962941,
		-0.609574, 0.774136, -0.170682,
		0.790196, 0.576175, -0.208837,
		31.533125, 31.156296, 20.253126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763798, 31.227476, 19.887924>,  <30.979988, 30.752972, 20.399311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763798, 31.227476, 19.887924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162003, 31.209633, 19.854534>,  <31.400925, 31.198927, 19.834501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162003, 31.209633, 19.854534>,  <30.763798, 31.227476, 19.887924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162003, 31.209633, 19.854534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081966, 0.034628, -0.996033,
		0.047321, 0.998404, 0.030816,
		0.995511, -0.044607, -0.083473,
		31.460655, 31.196251, 19.829493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867958, 31.608562, 19.311846>,  <30.763798, 31.227476, 19.887924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867958, 31.608562, 19.311846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212954, 31.414160, 19.368294>,  <31.419950, 31.297518, 19.402163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212954, 31.414160, 19.368294>,  <30.867958, 31.608562, 19.311846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212954, 31.414160, 19.368294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224255, 0.117052, -0.967475,
		0.453681, 0.866081, 0.209946,
		0.862487, -0.486006, 0.141119,
		31.471699, 31.268358, 19.410629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501785, 32.040585, 19.084467>,  <30.867958, 31.608562, 19.311846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501785, 32.040585, 19.084467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575075, 31.648903, 19.049616>,  <31.619049, 31.413895, 19.028706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575075, 31.648903, 19.049616>,  <31.501785, 32.040585, 19.084467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575075, 31.648903, 19.049616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316252, 0.142628, -0.937892,
		0.930813, 0.144292, 0.335808,
		0.183226, -0.979202, -0.087128,
		31.630043, 31.355143, 19.023478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223072, 32.004673, 18.926060>,  <31.501785, 32.040585, 19.084467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223072, 32.004673, 18.926060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958231, 31.756523, 18.757889>,  <31.799328, 31.607634, 18.656986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958231, 31.756523, 18.757889>,  <32.223072, 32.004673, 18.926060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958231, 31.756523, 18.757889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294136, 0.300869, -0.907172,
		0.689281, -0.724301, -0.016730,
		-0.662100, -0.620375, -0.420426,
		31.759602, 31.570410, 18.631762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440891, 31.442093, 18.572495>,  <32.223072, 32.004673, 18.926060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440891, 31.442093, 18.572495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111603, 31.550810, 18.373123>,  <31.914028, 31.616039, 18.253500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111603, 31.550810, 18.373123>,  <32.440891, 31.442093, 18.572495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111603, 31.550810, 18.373123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561741, 0.262934, -0.784419,
		-0.082145, -0.925740, -0.369131,
		-0.823225, 0.271792, -0.498428,
		31.864635, 31.632347, 18.223595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047516, 31.977131, 18.390762>,  <32.440891, 31.442093, 18.572495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047516, 31.977131, 18.390762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961304, 32.363255, 18.331804>,  <32.909576, 32.594929, 18.296429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961304, 32.363255, 18.331804>,  <33.047516, 31.977131, 18.390762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961304, 32.363255, 18.331804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410915, 0.226588, 0.883067,
		0.885830, 0.129762, -0.445497,
		-0.215533, 0.965308, -0.147397,
		32.896645, 32.652847, 18.287584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602718, 32.342606, 18.739653>,  <33.047516, 31.977131, 18.390762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602718, 32.342606, 18.739653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300953, 32.597576, 18.676987>,  <33.119892, 32.750557, 18.639387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300953, 32.597576, 18.676987>,  <33.602718, 32.342606, 18.739653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300953, 32.597576, 18.676987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268355, 0.517334, 0.812620,
		0.599033, 0.571012, -0.561341,
		-0.754417, 0.637425, -0.156666,
		33.074627, 32.788803, 18.629988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818634, 33.090206, 18.907768>,  <33.602718, 32.342606, 18.739653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818634, 33.090206, 18.907768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421150, 33.051155, 18.929703>,  <33.182659, 33.027725, 18.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421150, 33.051155, 18.929703>,  <33.818634, 33.090206, 18.907768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421150, 33.051155, 18.929703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020389, 0.639293, 0.768693,
		-0.110103, 0.762741, -0.637263,
		-0.993711, -0.097629, 0.054836,
		33.123035, 33.021866, 18.946154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629570, 33.751282, 19.071634>,  <33.818634, 33.090206, 18.907768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629570, 33.751282, 19.071634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356472, 33.494808, 19.211775>,  <33.192616, 33.340923, 19.295858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356472, 33.494808, 19.211775>,  <33.629570, 33.751282, 19.071634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356472, 33.494808, 19.211775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022532, 0.497745, 0.867031,
		-0.730314, 0.584063, -0.354278,
		-0.682740, -0.641187, 0.350350,
		33.151649, 33.302452, 19.316879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424355, 34.123154, 19.632572>,  <33.629570, 33.751282, 19.071634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424355, 34.123154, 19.632572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215195, 33.783524, 19.662636>,  <33.089699, 33.579746, 19.680674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215195, 33.783524, 19.662636>,  <33.424355, 34.123154, 19.632572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215195, 33.783524, 19.662636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159279, 0.183948, 0.969945,
		-0.837380, 0.495214, -0.231426,
		-0.522900, -0.849074, 0.075157,
		33.058323, 33.528801, 19.685183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941868, 34.311317, 20.074934>,  <33.424355, 34.123154, 19.632572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941868, 34.311317, 20.074934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908474, 33.913845, 20.104954>,  <32.888435, 33.675362, 20.122967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908474, 33.913845, 20.104954>,  <32.941868, 34.311317, 20.074934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908474, 33.913845, 20.104954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115777, 0.084476, 0.989676,
		-0.989760, 0.073937, -0.122098,
		-0.083488, -0.993679, 0.075051,
		32.883427, 33.615742, 20.127470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392925, 34.239281, 20.449919>,  <32.941868, 34.311317, 20.074934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392925, 34.239281, 20.449919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628136, 33.918926, 20.495188>,  <32.769260, 33.726715, 20.522348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628136, 33.918926, 20.495188>,  <32.392925, 34.239281, 20.449919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628136, 33.918926, 20.495188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032326, 0.116535, 0.992660,
		-0.808196, -0.587368, 0.042636,
		0.588026, -0.800886, 0.113171,
		32.804543, 33.678661, 20.529139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085621, 34.038540, 21.010122>,  <32.392925, 34.239281, 20.449919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085621, 34.038540, 21.010122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441406, 33.856953, 20.989065>,  <32.654877, 33.748001, 20.976431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441406, 33.856953, 20.989065>,  <32.085621, 34.038540, 21.010122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441406, 33.856953, 20.989065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088993, 0.059063, 0.994280,
		-0.448265, -0.889057, 0.092935,
		0.889460, -0.453971, -0.052644,
		32.708244, 33.720760, 20.973272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100166, 33.521004, 21.541002>,  <32.085621, 34.038540, 21.010122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100166, 33.521004, 21.541002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476402, 33.617825, 21.445749>,  <32.702145, 33.675919, 21.388597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476402, 33.617825, 21.445749>,  <32.100166, 33.521004, 21.541002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476402, 33.617825, 21.445749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187560, 0.214239, 0.958605,
		0.283054, -0.946314, 0.156110,
		0.940586, 0.242057, -0.238132,
		32.758579, 33.690441, 21.374310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506439, 33.316826, 22.122259>,  <32.100166, 33.521004, 21.541002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506439, 33.316826, 22.122259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730446, 33.576656, 21.916567>,  <32.864849, 33.732555, 21.793152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730446, 33.576656, 21.916567>,  <32.506439, 33.316826, 22.122259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730446, 33.576656, 21.916567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344039, 0.382309, 0.857599,
		0.753671, -0.657185, -0.009380,
		0.560015, 0.649575, -0.514233,
		32.898449, 33.771530, 21.762297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124378, 33.420296, 22.477472>,  <32.506439, 33.316826, 22.122259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124378, 33.420296, 22.477472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129807, 33.743748, 22.242207>,  <33.133064, 33.937817, 22.101048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129807, 33.743748, 22.242207>,  <33.124378, 33.420296, 22.477472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129807, 33.743748, 22.242207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234537, 0.569234, 0.788014,
		0.972013, -0.148640, -0.181929,
		0.013570, 0.808628, -0.588164,
		33.133877, 33.986336, 22.065758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755119, 33.599682, 22.582804>,  <33.124378, 33.420296, 22.477472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755119, 33.599682, 22.582804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567719, 33.932129, 22.462963>,  <33.455280, 34.131596, 22.391058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567719, 33.932129, 22.462963>,  <33.755119, 33.599682, 22.582804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567719, 33.932129, 22.462963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347091, 0.485006, 0.802681,
		0.812427, 0.272065, -0.515696,
		-0.468498, 0.831113, -0.299601,
		33.427170, 34.181461, 22.373083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194447, 34.174477, 22.666014>,  <33.755119, 33.599682, 22.582804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194447, 34.174477, 22.666014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835945, 34.350704, 22.645523>,  <33.620846, 34.456440, 22.633228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835945, 34.350704, 22.645523>,  <34.194447, 34.174477, 22.666014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835945, 34.350704, 22.645523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305978, 0.697758, 0.647697,
		0.321102, 0.564826, -0.760174,
		-0.896254, 0.440574, -0.051227,
		33.567070, 34.482876, 22.630156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335758, 34.831882, 22.608870>,  <34.194447, 34.174477, 22.666014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335758, 34.831882, 22.608870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961636, 34.827450, 22.750338>,  <33.737164, 34.824791, 22.835218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961636, 34.827450, 22.750338>,  <34.335758, 34.831882, 22.608870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961636, 34.827450, 22.750338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236822, 0.723033, 0.648952,
		-0.262907, 0.690724, -0.673632,
		-0.935305, -0.011083, 0.353669,
		33.681046, 34.824123, 22.856438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115456, 35.590115, 22.749989>,  <34.335758, 34.831882, 22.608870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115456, 35.590115, 22.749989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908413, 35.351192, 22.995039>,  <33.784187, 35.207840, 23.142069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908413, 35.351192, 22.995039>,  <34.115456, 35.590115, 22.749989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908413, 35.351192, 22.995039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120023, 0.658237, 0.743182,
		-0.847159, 0.458204, -0.269016,
		-0.517605, -0.597305, 0.612626,
		33.753132, 35.172001, 23.178827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880001, 36.023376, 23.235954>,  <34.115456, 35.590115, 22.749989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880001, 36.023376, 23.235954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820004, 35.670879, 23.415249>,  <33.784004, 35.459381, 23.522825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820004, 35.670879, 23.415249>,  <33.880001, 36.023376, 23.235954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820004, 35.670879, 23.415249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032244, 0.457486, 0.888632,
		-0.988161, 0.118835, -0.097034,
		-0.149992, -0.881241, 0.448238,
		33.775005, 35.406506, 23.549721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417164, 36.163048, 23.784645>,  <33.880001, 36.023376, 23.235954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417164, 36.163048, 23.784645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516369, 35.797752, 23.913948>,  <33.575890, 35.578575, 23.991529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516369, 35.797752, 23.913948>,  <33.417164, 36.163048, 23.784645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516369, 35.797752, 23.913948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192402, 0.280600, 0.940343,
		-0.949460, -0.295407, -0.106117,
		0.248008, -0.913235, 0.323256,
		33.590771, 35.523781, 24.010925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931488, 36.010178, 24.197943>,  <33.417164, 36.163048, 23.784645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931488, 36.010178, 24.197943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254265, 35.800617, 24.307032>,  <33.447929, 35.674881, 24.372484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254265, 35.800617, 24.307032>,  <32.931488, 36.010178, 24.197943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254265, 35.800617, 24.307032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168525, 0.238319, 0.956454,
		-0.566080, -0.817761, 0.104019,
		0.806940, -0.523900, 0.272720,
		33.496346, 35.643448, 24.388847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724621, 35.629078, 24.943642>,  <32.931488, 36.010178, 24.197943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724621, 35.629078, 24.943642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123627, 35.610294, 24.922638>,  <33.363029, 35.599026, 24.910036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123627, 35.610294, 24.922638>,  <32.724621, 35.629078, 24.943642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123627, 35.610294, 24.922638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062266, 0.239150, 0.968984,
		-0.032944, -0.969846, 0.241480,
		0.997516, -0.046958, -0.052510,
		33.422882, 35.596207, 24.906885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975838, 35.050102, 25.507778>,  <32.724621, 35.629078, 24.943642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975838, 35.050102, 25.507778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264679, 35.313866, 25.424109>,  <33.437984, 35.472122, 25.373907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264679, 35.313866, 25.424109>,  <32.975838, 35.050102, 25.507778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264679, 35.313866, 25.424109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184868, 0.107434, 0.976873,
		0.666630, -0.744070, -0.044325,
		0.722100, 0.659407, -0.209174,
		33.481308, 35.511688, 25.361357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380966, 34.991039, 26.123920>,  <32.975838, 35.050102, 25.507778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380966, 34.991039, 26.123920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510979, 35.332359, 25.960836>,  <33.588985, 35.537151, 25.862986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510979, 35.332359, 25.960836>,  <33.380966, 34.991039, 26.123920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510979, 35.332359, 25.960836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167325, 0.372425, 0.912854,
		0.930783, -0.364926, -0.021729,
		0.325032, 0.853305, -0.407708,
		33.608490, 35.588352, 25.838524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065899, 35.110100, 26.458666>,  <33.380966, 34.991039, 26.123920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065899, 35.110100, 26.458666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941109, 35.462608, 26.316660>,  <33.866234, 35.674114, 26.231457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941109, 35.462608, 26.316660>,  <34.065899, 35.110100, 26.458666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941109, 35.462608, 26.316660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160838, 0.417257, 0.894443,
		0.936378, 0.221943, -0.271915,
		-0.311974, 0.881271, -0.355013,
		33.847515, 35.726990, 26.210155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513863, 35.622971, 26.748602>,  <34.065899, 35.110100, 26.458666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513863, 35.622971, 26.748602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181751, 35.820797, 26.645802>,  <33.982487, 35.939491, 26.584122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181751, 35.820797, 26.645802>,  <34.513863, 35.622971, 26.748602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181751, 35.820797, 26.645802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032561, 0.503360, 0.863463,
		0.556401, 0.708544, -0.434031,
		-0.830276, 0.494564, -0.256999,
		33.932667, 35.969166, 26.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718189, 36.281624, 26.769241>,  <34.513863, 35.622971, 26.748602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718189, 36.281624, 26.769241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319752, 36.304565, 26.796104>,  <34.080688, 36.318333, 26.812222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319752, 36.304565, 26.796104>,  <34.718189, 36.281624, 26.769241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319752, 36.304565, 26.796104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087589, 0.543994, 0.834505,
		0.011332, 0.837127, -0.546892,
		-0.996092, 0.057358, 0.067158,
		34.020924, 36.321774, 26.816252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688412, 36.948292, 26.987270>,  <34.718189, 36.281624, 26.769241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688412, 36.948292, 26.987270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347427, 36.755444, 27.068132>,  <34.142838, 36.639736, 27.116650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347427, 36.755444, 27.068132>,  <34.688412, 36.948292, 26.987270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347427, 36.755444, 27.068132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004193, 0.392981, 0.919537,
		-0.522772, 0.783023, -0.337023,
		-0.852462, -0.482122, 0.202156,
		34.091690, 36.610806, 27.128778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197895, 37.470589, 27.218622>,  <34.688412, 36.948292, 26.987270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197895, 37.470589, 27.218622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086460, 37.115257, 27.364645>,  <34.019600, 36.902058, 27.452259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086460, 37.115257, 27.364645>,  <34.197895, 37.470589, 27.218622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086460, 37.115257, 27.364645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005989, 0.381703, 0.924266,
		-0.960393, 0.255299, -0.111657,
		-0.278584, -0.888327, 0.365056,
		34.002884, 36.848759, 27.474161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749485, 37.618755, 27.709261>,  <34.197895, 37.470589, 27.218622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749485, 37.618755, 27.709261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834808, 37.239841, 27.804878>,  <33.886002, 37.012493, 27.862247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834808, 37.239841, 27.804878>,  <33.749485, 37.618755, 27.709261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834808, 37.239841, 27.804878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238379, 0.287743, 0.927566,
		-0.947456, -0.140878, 0.287193,
		0.213311, -0.947289, 0.239042,
		33.898800, 36.955654, 27.876591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423218, 37.510281, 28.310499>,  <33.749485, 37.618755, 27.709261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423218, 37.510281, 28.310499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716656, 37.238705, 28.322332>,  <33.892719, 37.075760, 28.329432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716656, 37.238705, 28.322332>,  <33.423218, 37.510281, 28.310499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716656, 37.238705, 28.322332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104515, 0.155729, 0.982255,
		-0.671500, -0.717487, 0.185202,
		0.733597, -0.678941, 0.029584,
		33.936733, 37.035023, 28.331207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155262, 36.992123, 28.863909>,  <33.423218, 37.510281, 28.310499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155262, 36.992123, 28.863909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550774, 36.999962, 28.804663>,  <33.788078, 37.004665, 28.769115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550774, 36.999962, 28.804663>,  <33.155262, 36.992123, 28.863909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550774, 36.999962, 28.804663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144985, 0.113481, 0.982905,
		0.036071, -0.993347, 0.109365,
		0.988776, 0.019598, -0.148113,
		33.847408, 37.005840, 28.760229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463058, 36.650047, 29.466394>,  <33.155262, 36.992123, 28.863909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463058, 36.650047, 29.466394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778507, 36.834789, 29.304029>,  <33.967777, 36.945637, 29.206610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778507, 36.834789, 29.304029>,  <33.463058, 36.650047, 29.466394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778507, 36.834789, 29.304029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283029, 0.313394, 0.906465,
		0.545871, -0.829741, 0.116428,
		0.788619, 0.461860, -0.405913,
		34.015095, 36.973347, 29.182255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853485, 36.564838, 30.053911>,  <33.463058, 36.650047, 29.466394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853485, 36.564838, 30.053911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007042, 36.837330, 29.804575>,  <34.099178, 37.000824, 29.654972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007042, 36.837330, 29.804575>,  <33.853485, 36.564838, 30.053911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007042, 36.837330, 29.804575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274664, 0.560265, 0.781449,
		0.881580, -0.471204, 0.027974,
		0.383895, 0.681227, -0.623342,
		34.122211, 37.041698, 29.617573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558838, 36.532433, 30.201384>,  <33.853485, 36.564838, 30.053911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558838, 36.532433, 30.201384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470730, 36.878357, 30.020903>,  <34.417866, 37.085911, 29.912615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470730, 36.878357, 30.020903>,  <34.558838, 36.532433, 30.201384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470730, 36.878357, 30.020903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389494, 0.502065, 0.772157,
		0.894303, -0.005659, -0.447427,
		-0.220267, 0.864811, -0.451202,
		34.404648, 37.137802, 29.885542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119015, 36.939266, 30.274517>,  <34.558838, 36.532433, 30.201384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119015, 36.939266, 30.274517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830990, 37.208542, 30.207205>,  <34.658173, 37.370110, 30.166817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830990, 37.208542, 30.207205>,  <35.119015, 36.939266, 30.274517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830990, 37.208542, 30.207205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410123, 0.608502, 0.679356,
		0.559737, 0.420164, -0.714252,
		-0.720065, 0.673192, -0.168282,
		34.614971, 37.410500, 30.156721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513084, 37.515850, 30.169437>,  <35.119015, 36.939266, 30.274517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513084, 37.515850, 30.169437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149582, 37.651627, 30.266554>,  <34.931480, 37.733093, 30.324823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149582, 37.651627, 30.266554>,  <35.513084, 37.515850, 30.169437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149582, 37.651627, 30.266554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404484, 0.573119, 0.712691,
		0.102770, 0.745864, -0.658122,
		-0.908753, 0.339443, 0.242791,
		34.876957, 37.753460, 30.339392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635891, 38.205212, 30.198563>,  <35.513084, 37.515850, 30.169437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635891, 38.205212, 30.198563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278122, 38.167183, 30.373362>,  <35.063461, 38.144367, 30.478241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278122, 38.167183, 30.373362>,  <35.635891, 38.205212, 30.198563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278122, 38.167183, 30.373362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263021, 0.678463, 0.685936,
		-0.361698, 0.728457, -0.581828,
		-0.894424, -0.095068, 0.436998,
		35.009796, 38.138664, 30.504461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376766, 38.901382, 30.274675>,  <35.635891, 38.205212, 30.198563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376766, 38.901382, 30.274675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199600, 38.662563, 30.542215>,  <35.093300, 38.519272, 30.702740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199600, 38.662563, 30.542215>,  <35.376766, 38.901382, 30.274675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199600, 38.662563, 30.542215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317223, 0.593397, 0.739763,
		-0.838565, 0.539830, -0.073430,
		-0.442920, -0.597046, 0.668849,
		35.066723, 38.483448, 30.742870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052734, 39.314594, 30.751707>,  <35.376766, 38.901382, 30.274675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052734, 39.314594, 30.751707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101780, 38.969604, 30.948114>,  <35.131207, 38.762611, 31.065958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101780, 38.969604, 30.948114>,  <35.052734, 39.314594, 30.751707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101780, 38.969604, 30.948114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230856, 0.505966, 0.831086,
		-0.965231, 0.011452, 0.261147,
		0.122614, -0.862477, 0.491018,
		35.138565, 38.710861, 31.095419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743141, 39.439484, 31.413357>,  <35.052734, 39.314594, 30.751707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743141, 39.439484, 31.413357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960926, 39.107563, 31.462328>,  <35.091599, 38.908409, 31.491711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960926, 39.107563, 31.462328>,  <34.743141, 39.439484, 31.413357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960926, 39.107563, 31.462328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279790, 0.317269, 0.906122,
		-0.790745, -0.459095, 0.404912,
		0.544462, -0.829802, 0.122429,
		35.124264, 38.858624, 31.499056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501324, 39.348610, 32.031845>,  <34.743141, 39.439484, 31.413357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501324, 39.348610, 32.031845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831478, 39.131657, 31.969154>,  <35.029572, 39.001484, 31.931540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831478, 39.131657, 31.969154>,  <34.501324, 39.348610, 32.031845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831478, 39.131657, 31.969154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234516, 0.076863, 0.969069,
		-0.513556, -0.836610, 0.190639,
		0.825386, -0.542379, -0.156725,
		35.079094, 38.968945, 31.922136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547665, 38.758266, 32.550423>,  <34.501324, 39.348610, 32.031845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547665, 38.758266, 32.550423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927776, 38.856689, 32.474079>,  <35.155842, 38.915745, 32.428272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927776, 38.856689, 32.474079>,  <34.547665, 38.758266, 32.550423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927776, 38.856689, 32.474079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163742, 0.126497, 0.978359,
		0.264881, -0.960964, 0.079916,
		0.950277, 0.246063, -0.190857,
		35.212860, 38.930508, 32.416821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874771, 38.566380, 33.129433>,  <34.547665, 38.758266, 32.550423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874771, 38.566380, 33.129433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161812, 38.797611, 32.974064>,  <35.334034, 38.936352, 32.880844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161812, 38.797611, 32.974064>,  <34.874771, 38.566380, 33.129433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161812, 38.797611, 32.974064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303854, 0.241966, 0.921480,
		0.626677, -0.779276, -0.002018,
		0.717599, 0.578084, -0.388421,
		35.377090, 38.971035, 32.857536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417526, 38.325829, 33.491241>,  <34.874771, 38.566380, 33.129433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417526, 38.325829, 33.491241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492985, 38.690922, 33.346279>,  <35.538261, 38.909977, 33.259304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492985, 38.690922, 33.346279>,  <35.417526, 38.325829, 33.491241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492985, 38.690922, 33.346279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352907, 0.281369, 0.892350,
		0.916443, -0.296233, -0.269030,
		0.188647, 0.912731, -0.362402,
		35.549580, 38.964741, 33.237560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138863, 38.521648, 33.740688>,  <35.417526, 38.325829, 33.491241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138863, 38.521648, 33.740688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928955, 38.852177, 33.658897>,  <35.803009, 39.050495, 33.609821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928955, 38.852177, 33.658897>,  <36.138863, 38.521648, 33.740688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928955, 38.852177, 33.658897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205421, 0.356042, 0.911612,
		0.826088, 0.436381, -0.356583,
		-0.524768, 0.826321, -0.204480,
		35.771526, 39.100075, 33.597553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438309, 38.078682, 33.118404>,  <36.138863, 38.521648, 33.740688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438309, 38.078682, 33.118404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835236, 38.111725, 33.081570>,  <37.073391, 38.131550, 33.059467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835236, 38.111725, 33.081570>,  <36.438309, 38.078682, 33.118404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835236, 38.111725, 33.081570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088026, -0.051545, -0.994784,
		-0.086920, 0.995248, -0.043878,
		0.992319, 0.082605, -0.092088,
		37.132931, 38.136505, 33.053944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734268, 38.628159, 32.667171>,  <36.438309, 38.078682, 33.118404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734268, 38.628159, 32.667171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997768, 38.327293, 32.674042>,  <37.155869, 38.146774, 32.678165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997768, 38.327293, 32.674042>,  <36.734268, 38.628159, 32.667171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997768, 38.327293, 32.674042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138354, -0.143548, -0.979924,
		0.739532, 0.643148, -0.198628,
		0.658749, -0.752167, 0.017176,
		37.195393, 38.101643, 32.679195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194530, 38.731434, 32.092297>,  <36.734268, 38.628159, 32.667171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194530, 38.731434, 32.092297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204617, 38.345829, 32.198154>,  <37.210667, 38.114464, 32.261669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204617, 38.345829, 32.198154>,  <37.194530, 38.731434, 32.092297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204617, 38.345829, 32.198154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024744, -0.265251, -0.963862,
		0.999376, 0.017754, -0.030542,
		0.025213, -0.964016, 0.264646,
		37.212181, 38.056625, 32.277550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628468, 38.504028, 31.634180>,  <37.194530, 38.731434, 32.092297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628468, 38.504028, 31.634180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465725, 38.160927, 31.759867>,  <37.368080, 37.955067, 31.835279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465725, 38.160927, 31.759867>,  <37.628468, 38.504028, 31.634180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465725, 38.160927, 31.759867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065193, -0.370359, -0.926598,
		0.911165, -0.356503, 0.206600,
		-0.406852, -0.857753, 0.314217,
		37.343670, 37.903603, 31.854132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105923, 37.816902, 31.504732>,  <37.628468, 38.504028, 31.634180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105923, 37.816902, 31.504732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731903, 37.675724, 31.518051>,  <37.507492, 37.591019, 31.526043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731903, 37.675724, 31.518051>,  <38.105923, 37.816902, 31.504732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731903, 37.675724, 31.518051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188777, -0.575209, -0.795926,
		0.300073, -0.737945, 0.604478,
		-0.935051, -0.352947, 0.033298,
		37.451389, 37.569839, 31.528040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125889, 37.065987, 31.408651>,  <38.105923, 37.816902, 31.504732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125889, 37.065987, 31.408651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739269, 37.126781, 31.326008>,  <37.507298, 37.163258, 31.276421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739269, 37.126781, 31.326008>,  <38.125889, 37.065987, 31.408651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739269, 37.126781, 31.326008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093583, -0.541030, -0.835780,
		-0.238807, -0.827156, 0.508708,
		-0.966547, 0.151984, -0.206610,
		37.449306, 37.172379, 31.264025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853596, 36.471825, 31.118546>,  <38.125889, 37.065987, 31.408651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853596, 36.471825, 31.118546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562897, 36.716850, 30.994215>,  <37.388477, 36.863865, 30.919617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562897, 36.716850, 30.994215>,  <37.853596, 36.471825, 31.118546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562897, 36.716850, 30.994215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125137, -0.562993, -0.816933,
		-0.675416, -0.554803, 0.485805,
		-0.726742, 0.612562, -0.310828,
		37.344875, 36.900620, 30.900967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383743, 36.112198, 30.841475>,  <37.853596, 36.471825, 31.118546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383743, 36.112198, 30.841475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278305, 36.466835, 30.689434>,  <37.215042, 36.679615, 30.598209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278305, 36.466835, 30.689434>,  <37.383743, 36.112198, 30.841475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278305, 36.466835, 30.689434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107554, -0.418590, -0.901784,
		-0.958619, -0.196825, 0.205694,
		-0.263595, 0.886590, -0.380099,
		37.199226, 36.732811, 30.575405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704750, 36.065228, 30.533611>,  <37.383743, 36.112198, 30.841475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704750, 36.065228, 30.533611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899094, 36.369034, 30.360603>,  <37.015701, 36.551319, 30.256798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899094, 36.369034, 30.360603>,  <36.704750, 36.065228, 30.533611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899094, 36.369034, 30.360603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106852, -0.439529, -0.891851,
		-0.867482, 0.479528, -0.132392,
		0.485858, 0.759518, -0.432521,
		37.044849, 36.596889, 30.230846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322304, 36.167465, 29.871485>,  <36.704750, 36.065228, 30.533611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322304, 36.167465, 29.871485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667286, 36.358437, 29.804270>,  <36.874275, 36.473019, 29.763941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667286, 36.358437, 29.804270>,  <36.322304, 36.167465, 29.871485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667286, 36.358437, 29.804270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098853, -0.166716, -0.981037,
		-0.496389, 0.862710, -0.096590,
		0.862453, 0.477428, -0.168038,
		36.926022, 36.501663, 29.753859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223240, 36.506474, 29.265112>,  <36.322304, 36.167465, 29.871485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223240, 36.506474, 29.265112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621124, 36.539314, 29.289774>,  <36.859856, 36.559017, 29.304571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621124, 36.539314, 29.289774>,  <36.223240, 36.506474, 29.265112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621124, 36.539314, 29.289774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077173, -0.201737, -0.976395,
		-0.067726, 0.975992, -0.207007,
		0.994715, 0.082103, 0.061657,
		36.919540, 36.563946, 29.308271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504993, 36.981133, 28.725130>,  <36.223240, 36.506474, 29.265112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504993, 36.981133, 28.725130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 36.737633, 28.837292>,  <36.979977, 36.591534, 28.904589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 36.737633, 28.837292>,  <36.504993, 36.981133, 28.725130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801857, 36.737633, 28.837292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156222, -0.249732, -0.955630,
		0.651762, 0.753036, -0.090241,
		0.742159, -0.608746, 0.280406,
		37.024506, 36.555008, 28.921413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986732, 37.149757, 28.269823>,  <36.504993, 36.981133, 28.725130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986732, 37.149757, 28.269823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098122, 36.794216, 28.415367>,  <37.164955, 36.580891, 28.502693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098122, 36.794216, 28.415367>,  <36.986732, 37.149757, 28.269823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098122, 36.794216, 28.415367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256975, -0.296079, -0.919946,
		0.925427, 0.349687, 0.145961,
		0.278477, -0.888851, 0.363860,
		37.181664, 36.527561, 28.524525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541767, 36.959087, 27.746260>,  <36.986732, 37.149757, 28.269823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541767, 36.959087, 27.746260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415447, 36.636959, 27.946949>,  <37.339657, 36.443680, 28.067362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415447, 36.636959, 27.946949>,  <37.541767, 36.959087, 27.746260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415447, 36.636959, 27.946949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023463, -0.535248, -0.844369,
		0.948536, -0.254878, 0.187925,
		-0.315798, -0.805324, 0.501722,
		37.320709, 36.395363, 28.097466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987789, 36.298481, 27.607510>,  <37.541767, 36.959087, 27.746260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987789, 36.298481, 27.607510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633057, 36.141510, 27.705103>,  <37.420216, 36.047329, 27.763659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633057, 36.141510, 27.705103>,  <37.987789, 36.298481, 27.607510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633057, 36.141510, 27.705103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083853, -0.655904, -0.750173,
		0.454416, -0.644820, 0.614584,
		-0.886834, -0.392425, 0.243983,
		37.367008, 36.023781, 27.778297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981377, 35.563442, 27.377337>,  <37.987789, 36.298481, 27.607510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981377, 35.563442, 27.377337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591087, 35.589149, 27.461077>,  <37.356915, 35.604572, 27.511322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591087, 35.589149, 27.461077>,  <37.981377, 35.563442, 27.377337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591087, 35.589149, 27.461077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197464, -0.671558, -0.714155,
		0.094694, -0.738159, 0.667948,
		-0.975726, 0.064269, 0.209353,
		37.298370, 35.608429, 27.523882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677143, 34.833172, 27.512920>,  <37.981377, 35.563442, 27.377337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677143, 34.833172, 27.512920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384815, 35.081680, 27.399836>,  <37.209419, 35.230785, 27.331985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384815, 35.081680, 27.399836>,  <37.677143, 34.833172, 27.512920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384815, 35.081680, 27.399836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280181, -0.650724, -0.705732,
		-0.622415, -0.436554, 0.649630,
		-0.730820, 0.621272, -0.282706,
		37.165569, 35.268063, 27.315023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132660, 34.372040, 27.361246>,  <37.677143, 34.833172, 27.512920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132660, 34.372040, 27.361246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019829, 34.707966, 27.175713>,  <36.952129, 34.909519, 27.064392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019829, 34.707966, 27.175713>,  <37.132660, 34.372040, 27.361246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019829, 34.707966, 27.175713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304492, -0.536842, -0.786820,
		-0.909788, -0.080713, 0.407149,
		-0.282081, 0.839813, -0.463836,
		36.935204, 34.959911, 27.036562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576748, 34.172695, 26.969524>,  <37.132660, 34.372040, 27.361246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576748, 34.172695, 26.969524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672573, 34.525425, 26.807041>,  <36.730068, 34.737061, 26.709551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672573, 34.525425, 26.807041>,  <36.576748, 34.172695, 26.969524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672573, 34.525425, 26.807041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389428, -0.295984, -0.872204,
		-0.889358, 0.367134, 0.272499,
		0.239560, 0.881820, -0.406207,
		36.744442, 34.789970, 26.685179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966366, 34.509190, 26.625547>,  <36.576748, 34.172695, 26.969524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966366, 34.509190, 26.625547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292145, 34.666885, 26.455252>,  <36.487610, 34.761501, 26.353075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292145, 34.666885, 26.455252>,  <35.966366, 34.509190, 26.625547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292145, 34.666885, 26.455252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377333, -0.197536, -0.904765,
		-0.440794, 0.897526, -0.012122,
		0.814445, 0.394241, -0.425739,
		36.536480, 34.785156, 26.327530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644806, 34.777359, 26.196440>,  <35.966366, 34.509190, 26.625547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644806, 34.777359, 26.196440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020866, 34.768890, 26.060396>,  <36.246502, 34.763809, 25.978771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020866, 34.768890, 26.060396>,  <35.644806, 34.777359, 26.196440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020866, 34.768890, 26.060396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340488, -0.098705, -0.935054,
		-0.013771, 0.994892, -0.100007,
		0.940148, -0.021175, -0.340108,
		36.302910, 34.762539, 25.958364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799755, 35.354126, 25.722303>,  <35.644806, 34.777359, 26.196440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799755, 35.354126, 25.722303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079048, 35.084473, 25.625952>,  <36.246624, 34.922680, 25.568140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079048, 35.084473, 25.625952>,  <35.799755, 35.354126, 25.722303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079048, 35.084473, 25.625952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234705, 0.102312, -0.966667,
		0.676303, 0.731493, -0.086785,
		0.698232, -0.674129, -0.240879,
		36.288517, 34.882233, 25.553688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237907, 35.628441, 25.116499>,  <35.799755, 35.354126, 25.722303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237907, 35.628441, 25.116499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243969, 35.229233, 25.140936>,  <36.247604, 34.989708, 25.155598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243969, 35.229233, 25.140936>,  <36.237907, 35.628441, 25.116499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243969, 35.229233, 25.140936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189657, -0.062859, -0.979836,
		0.981734, 0.003262, -0.190233,
		0.015154, -0.998017, 0.061093,
		36.248516, 34.929829, 25.159264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453438, 35.359161, 24.528143>,  <36.237907, 35.628441, 25.116499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453438, 35.359161, 24.528143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349155, 34.994286, 24.654596>,  <36.286587, 34.775360, 24.730469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349155, 34.994286, 24.654596>,  <36.453438, 35.359161, 24.528143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349155, 34.994286, 24.654596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303824, -0.233298, -0.923723,
		0.916365, -0.336867, -0.216323,
		-0.260704, -0.912191, 0.316134,
		36.270943, 34.720627, 24.749437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698689, 34.751465, 24.058367>,  <36.453438, 35.359161, 24.528143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698689, 34.751465, 24.058367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386963, 34.572582, 24.233946>,  <36.199928, 34.465252, 24.339294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386963, 34.572582, 24.233946>,  <36.698689, 34.751465, 24.058367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386963, 34.572582, 24.233946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318943, -0.319887, -0.892159,
		0.539395, -0.835270, 0.106658,
		-0.779313, -0.447209, 0.438949,
		36.153168, 34.438419, 24.365631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664845, 34.086182, 23.768167>,  <36.698689, 34.751465, 24.058367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664845, 34.086182, 23.768167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309967, 34.125580, 23.948471>,  <36.097038, 34.149220, 24.056652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309967, 34.125580, 23.948471>,  <36.664845, 34.086182, 23.768167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309967, 34.125580, 23.948471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409733, -0.617357, -0.671558,
		0.212135, -0.780493, 0.588072,
		-0.887197, 0.098492, 0.450756,
		36.043808, 34.155128, 24.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413670, 33.413349, 23.974302>,  <36.664845, 34.086182, 23.768167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413670, 33.413349, 23.974302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116768, 33.677002, 23.925970>,  <35.938625, 33.835194, 23.896971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116768, 33.677002, 23.925970>,  <36.413670, 33.413349, 23.974302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116768, 33.677002, 23.925970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310456, -0.498036, -0.809677,
		-0.593864, -0.563474, 0.574302,
		-0.742255, 0.659133, -0.120832,
		35.894093, 33.874741, 23.889721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921284, 32.984715, 23.830452>,  <36.413670, 33.413349, 23.974302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921284, 32.984715, 23.830452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752556, 33.331894, 23.725584>,  <35.651318, 33.540203, 23.662663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752556, 33.331894, 23.725584>,  <35.921284, 32.984715, 23.830452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752556, 33.331894, 23.725584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357115, -0.424827, -0.831860,
		-0.833389, -0.257269, 0.489158,
		-0.421819, 0.867948, -0.262172,
		35.626011, 33.592278, 23.646933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377041, 32.745903, 23.455671>,  <35.921284, 32.984715, 23.830452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377041, 32.745903, 23.455671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406521, 33.116241, 23.307417>,  <35.424210, 33.338444, 23.218464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406521, 33.116241, 23.307417>,  <35.377041, 32.745903, 23.455671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406521, 33.116241, 23.307417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087972, -0.364162, -0.927171,
		-0.993393, 0.100937, 0.054611,
		0.073698, 0.925849, -0.370636,
		35.428631, 33.393997, 23.196226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711411, 32.888218, 22.995737>,  <35.377041, 32.745903, 23.455671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711411, 32.888218, 22.995737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991360, 33.160072, 22.907852>,  <35.159328, 33.323185, 22.855122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991360, 33.160072, 22.907852>,  <34.711411, 32.888218, 22.995737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991360, 33.160072, 22.907852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097608, -0.213717, -0.972007,
		-0.707570, 0.701724, -0.083236,
		0.699870, 0.679639, -0.219713,
		35.201321, 33.363964, 22.841938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468838, 33.163055, 22.443089>,  <34.711411, 32.888218, 22.995737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468838, 33.163055, 22.443089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868004, 33.186905, 22.433239>,  <35.107506, 33.201214, 22.427330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868004, 33.186905, 22.433239>,  <34.468838, 33.163055, 22.443089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868004, 33.186905, 22.433239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006845, -0.281659, -0.959490,
		-0.064145, 0.957660, -0.280664,
		0.997917, 0.059626, -0.024622,
		35.167377, 33.204792, 22.425852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649639, 33.615181, 21.798674>,  <34.468838, 33.163055, 22.443089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649639, 33.615181, 21.798674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957947, 33.377037, 21.889412>,  <35.142933, 33.234150, 21.943855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957947, 33.377037, 21.889412>,  <34.649639, 33.615181, 21.798674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957947, 33.377037, 21.889412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034523, -0.394559, -0.918222,
		0.636179, 0.699905, -0.324667,
		0.770769, -0.595362, 0.226847,
		35.189178, 33.198429, 21.957466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034061, 33.597622, 21.136005>,  <34.649639, 33.615181, 21.798674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034061, 33.597622, 21.136005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197853, 33.315094, 21.366985>,  <35.296127, 33.145576, 21.505573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197853, 33.315094, 21.366985>,  <35.034061, 33.597622, 21.136005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197853, 33.315094, 21.366985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274219, -0.508390, -0.816298,
		0.870134, 0.492602, -0.014488,
		0.409475, -0.706316, 0.577449,
		35.320694, 33.103199, 21.540220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681282, 33.473831, 20.954897>,  <35.034061, 33.597622, 21.136005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681282, 33.473831, 20.954897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566906, 33.131023, 21.126368>,  <35.498280, 32.925339, 21.229250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566906, 33.131023, 21.126368>,  <35.681282, 33.473831, 20.954897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566906, 33.131023, 21.126368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079314, -0.466985, -0.880701,
		0.954960, -0.217826, 0.201502,
		-0.285938, -0.857016, 0.428676,
		35.481125, 32.873917, 21.254971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115349, 32.947647, 20.654469>,  <35.681282, 33.473831, 20.954897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115349, 32.947647, 20.654469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842541, 32.707504, 20.821524>,  <35.678856, 32.563419, 20.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842541, 32.707504, 20.821524>,  <36.115349, 32.947647, 20.654469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842541, 32.707504, 20.821524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201536, -0.703237, -0.681793,
		0.703017, -0.380827, 0.600615,
		-0.682019, -0.600358, 0.417637,
		35.637936, 32.527397, 20.946815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249207, 32.191917, 20.426273>,  <36.115349, 32.947647, 20.654469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249207, 32.191917, 20.426273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873329, 32.162811, 20.559950>,  <35.647804, 32.145348, 20.640156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873329, 32.162811, 20.559950>,  <36.249207, 32.191917, 20.426273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873329, 32.162811, 20.559950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174237, -0.738962, -0.650828,
		0.294313, -0.669806, 0.681718,
		-0.939692, -0.072767, 0.334192,
		35.591423, 32.140980, 20.660208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084869, 31.466940, 20.477369>,  <36.249207, 32.191917, 20.426273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084869, 31.466940, 20.477369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724903, 31.639206, 20.449995>,  <35.508923, 31.742565, 20.433571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724903, 31.639206, 20.449995>,  <36.084869, 31.466940, 20.477369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724903, 31.639206, 20.449995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237166, -0.615070, -0.751958,
		-0.365934, -0.660467, 0.655649,
		-0.899914, 0.430665, -0.068434,
		35.454929, 31.768406, 20.429464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895950, 31.368017, 21.220320>,  <36.084869, 31.466940, 20.477369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895950, 31.368017, 21.220320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064762, 31.029280, 21.090860>,  <36.166050, 30.826038, 21.013186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064762, 31.029280, 21.090860>,  <35.895950, 31.368017, 21.220320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064762, 31.029280, 21.090860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502845, -0.078392, 0.860815,
		-0.754346, -0.526034, 0.392747,
		0.422030, -0.846843, -0.323648,
		36.191372, 30.775227, 20.993767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887268, 30.775965, 21.738384>,  <35.895950, 31.368017, 21.220320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887268, 30.775965, 21.738384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203430, 30.716623, 21.500645>,  <36.393127, 30.681019, 21.358000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203430, 30.716623, 21.500645>,  <35.887268, 30.775965, 21.738384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203430, 30.716623, 21.500645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541781, -0.283519, 0.791259,
		-0.285870, -0.947427, -0.143739,
		0.790413, -0.148322, -0.594347,
		36.440552, 30.672117, 21.322340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199341, 30.333298, 22.161400>,  <35.887268, 30.775965, 21.738384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199341, 30.333298, 22.161400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488323, 30.385231, 21.889755>,  <36.661713, 30.416391, 21.726768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488323, 30.385231, 21.889755>,  <36.199341, 30.333298, 22.161400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488323, 30.385231, 21.889755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686267, -0.254258, 0.681462,
		-0.084193, -0.958382, -0.272793,
		0.722460, 0.129835, -0.679113,
		36.705063, 30.424181, 21.686022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729321, 29.840523, 22.344162>,  <36.199341, 30.333298, 22.161400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729321, 29.840523, 22.344162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914837, 30.106144, 22.109581>,  <37.026146, 30.265516, 21.968832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914837, 30.106144, 22.109581>,  <36.729321, 29.840523, 22.344162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914837, 30.106144, 22.109581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835936, -0.108765, 0.537941,
		0.293435, -0.739734, -0.605550,
		0.463796, 0.664051, -0.586455,
		37.053974, 30.305359, 21.933645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288700, 29.548309, 22.261190>,  <36.729321, 29.840523, 22.344162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288700, 29.548309, 22.261190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343666, 29.935255, 22.176037>,  <37.376644, 30.167423, 22.124945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343666, 29.935255, 22.176037>,  <37.288700, 29.548309, 22.261190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343666, 29.935255, 22.176037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798907, 0.018812, 0.601161,
		0.585548, -0.252683, -0.770250,
		0.137413, 0.967366, -0.212885,
		37.384892, 30.225466, 22.112171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986671, 29.644526, 22.006603>,  <37.288700, 29.548309, 22.261190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986671, 29.644526, 22.006603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849606, 29.988199, 22.158592>,  <37.767365, 30.194405, 22.249786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849606, 29.988199, 22.158592>,  <37.986671, 29.644526, 22.006603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849606, 29.988199, 22.158592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820056, 0.076225, 0.567184,
		0.458353, 0.505953, -0.730701,
		-0.342666, 0.859187, 0.379972,
		37.746807, 30.245955, 22.272583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633167, 30.047533, 22.053389>,  <37.986671, 29.644526, 22.006603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633167, 30.047533, 22.053389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363159, 30.215742, 22.295881>,  <38.201157, 30.316668, 22.441378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363159, 30.215742, 22.295881>,  <38.633167, 30.047533, 22.053389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363159, 30.215742, 22.295881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724563, 0.222861, 0.652182,
		0.139150, 0.879486, -0.455128,
		-0.675016, 0.420520, 0.606231,
		38.160656, 30.341898, 22.477751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028275, 30.675192, 22.278643>,  <38.633167, 30.047533, 22.053389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028275, 30.675192, 22.278643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727127, 30.609453, 22.533573>,  <38.546440, 30.570009, 22.686531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727127, 30.609453, 22.533573>,  <39.028275, 30.675192, 22.278643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727127, 30.609453, 22.533573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551347, 0.371363, 0.747065,
		-0.359457, 0.913827, -0.188975,
		-0.752866, -0.164347, 0.637325,
		38.501266, 30.560148, 22.724771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958241, 31.311733, 22.684803>,  <39.028275, 30.675192, 22.278643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958241, 31.311733, 22.684803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796078, 31.016115, 22.900009>,  <38.698780, 30.838745, 23.029133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796078, 31.016115, 22.900009>,  <38.958241, 31.311733, 22.684803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796078, 31.016115, 22.900009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245662, 0.478819, 0.842842,
		-0.880510, 0.473861, -0.012560,
		-0.405403, -0.739045, 0.538015,
		38.674458, 30.794401, 23.061413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515720, 31.626144, 23.180544>,  <38.958241, 31.311733, 22.684803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515720, 31.626144, 23.180544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523968, 31.258070, 23.336918>,  <38.528915, 31.037226, 23.430742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523968, 31.258070, 23.336918>,  <38.515720, 31.626144, 23.180544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523968, 31.258070, 23.336918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034175, 0.390139, 0.920122,
		-0.999203, -0.032331, -0.023403,
		0.020618, -0.920188, 0.390933,
		38.530151, 30.982014, 23.454197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980133, 31.557051, 23.692635>,  <38.515720, 31.626144, 23.180544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980133, 31.557051, 23.692635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228374, 31.261839, 23.798588>,  <38.377319, 31.084711, 23.862160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228374, 31.261839, 23.798588>,  <37.980133, 31.557051, 23.692635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228374, 31.261839, 23.798588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045103, 0.303648, 0.951716,
		-0.782825, -0.602587, 0.155158,
		0.620605, -0.738029, 0.264882,
		38.414555, 31.040430, 23.878052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673763, 31.328012, 24.311966>,  <37.980133, 31.557051, 23.692635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673763, 31.328012, 24.311966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043633, 31.175894, 24.319443>,  <38.265556, 31.084623, 24.323929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043633, 31.175894, 24.319443>,  <37.673763, 31.328012, 24.311966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043633, 31.175894, 24.319443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122622, 0.343904, 0.930964,
		-0.360469, -0.858548, 0.364632,
		0.924676, -0.380296, 0.018690,
		38.321033, 31.061806, 24.325050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654980, 31.095695, 24.920418>,  <37.673763, 31.328012, 24.311966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654980, 31.095695, 24.920418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039883, 31.156517, 24.830132>,  <38.270824, 31.193010, 24.775959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039883, 31.156517, 24.830132>,  <37.654980, 31.095695, 24.920418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039883, 31.156517, 24.830132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114059, 0.527712, 0.841731,
		0.247101, -0.835704, 0.490450,
		0.962254, 0.152052, -0.225717,
		38.328560, 31.202133, 24.762417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970234, 30.955214, 25.432741>,  <37.654980, 31.095695, 24.920418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970234, 30.955214, 25.432741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226105, 31.204517, 25.252802>,  <38.379627, 31.354099, 25.144838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226105, 31.204517, 25.252802>,  <37.970234, 30.955214, 25.432741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226105, 31.204517, 25.252802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015228, 0.595408, 0.803279,
		0.768495, -0.506987, 0.390359,
		0.639675, 0.623260, -0.449848,
		38.418007, 31.391495, 25.117847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450001, 31.103752, 25.952703>,  <37.970234, 30.955214, 25.432741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450001, 31.103752, 25.952703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528278, 31.393332, 25.688099>,  <38.575245, 31.567080, 25.529335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528278, 31.393332, 25.688099>,  <38.450001, 31.103752, 25.952703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528278, 31.393332, 25.688099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068523, 0.662813, 0.745643,
		0.978268, -0.191248, 0.080102,
		0.195695, 0.723950, -0.661513,
		38.586987, 31.610516, 25.489645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055344, 31.371634, 26.206553>,  <38.450001, 31.103752, 25.952703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055344, 31.371634, 26.206553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899746, 31.631004, 25.944798>,  <38.806385, 31.786627, 25.787745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899746, 31.631004, 25.944798>,  <39.055344, 31.371634, 26.206553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899746, 31.631004, 25.944798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135114, 0.742809, 0.655728,
		0.911276, 0.166661, -0.376563,
		-0.388999, 0.648428, -0.654386,
		38.783047, 31.825533, 25.748482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581760, 31.912077, 26.063684>,  <39.055344, 31.371634, 26.206553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581760, 31.912077, 26.063684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211533, 32.054672, 26.012722>,  <38.989395, 32.140228, 25.982145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211533, 32.054672, 26.012722>,  <39.581760, 31.912077, 26.063684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211533, 32.054672, 26.012722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242581, 0.816862, 0.523347,
		0.290639, 0.453489, -0.842542,
		-0.925572, 0.356489, -0.127404,
		38.933861, 32.161617, 25.974501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770023, 32.535755, 25.853086>,  <39.581760, 31.912077, 26.063684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770023, 32.535755, 25.853086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388077, 32.555115, 25.970314>,  <39.158909, 32.566730, 26.040651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388077, 32.555115, 25.970314>,  <39.770023, 32.535755, 25.853086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388077, 32.555115, 25.970314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228004, 0.751810, 0.618705,
		-0.190387, 0.657601, -0.728913,
		-0.954865, 0.048402, 0.293071,
		39.101616, 32.569633, 26.058235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689163, 33.267639, 26.058016>,  <39.770023, 32.535755, 25.853086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689163, 33.267639, 26.058016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374886, 33.099850, 26.239885>,  <39.186321, 32.999176, 26.349007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374886, 33.099850, 26.239885>,  <39.689163, 33.267639, 26.058016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374886, 33.099850, 26.239885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143922, 0.590867, 0.793828,
		-0.601645, 0.689141, -0.403866,
		-0.785690, -0.419477, 0.454675,
		39.139179, 32.974007, 26.376287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152233, 33.769470, 26.145472>,  <39.689163, 33.267639, 26.058016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152233, 33.769470, 26.145472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091209, 33.470306, 26.403883>,  <39.054596, 33.290806, 26.558929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091209, 33.470306, 26.403883>,  <39.152233, 33.769470, 26.145472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091209, 33.470306, 26.403883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009752, 0.654788, 0.755750,
		-0.988246, 0.108999, -0.107189,
		-0.152563, -0.747912, 0.646028,
		39.045441, 33.245934, 26.597691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535145, 33.880913, 26.512177>,  <39.152233, 33.769470, 26.145472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535145, 33.880913, 26.512177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757103, 33.637596, 26.739180>,  <38.890278, 33.491608, 26.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757103, 33.637596, 26.739180>,  <38.535145, 33.880913, 26.512177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757103, 33.637596, 26.739180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105109, 0.625440, 0.773161,
		-0.825251, -0.488676, 0.283119,
		0.554899, -0.608293, 0.567509,
		38.923573, 33.455109, 26.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150856, 33.898788, 27.165186>,  <38.535145, 33.880913, 26.512177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150856, 33.898788, 27.165186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508286, 33.741360, 27.251553>,  <38.722744, 33.646904, 27.303373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508286, 33.741360, 27.251553>,  <38.150856, 33.898788, 27.165186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508286, 33.741360, 27.251553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026558, 0.433791, 0.900622,
		-0.448123, -0.810510, 0.377173,
		0.893577, -0.393573, 0.215918,
		38.776360, 33.623287, 27.316328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031723, 33.647957, 27.823654>,  <38.150856, 33.898788, 27.165186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031723, 33.647957, 27.823654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429119, 33.686543, 27.799397>,  <38.667557, 33.709694, 27.784842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429119, 33.686543, 27.799397>,  <38.031723, 33.647957, 27.823654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429119, 33.686543, 27.799397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000921, 0.525396, 0.850857,
		0.113942, -0.845371, 0.521886,
		0.993487, 0.096468, -0.060644,
		38.727165, 33.715485, 27.781204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139645, 33.777988, 28.475859>,  <38.031723, 33.647957, 27.823654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139645, 33.777988, 28.475859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478897, 33.891129, 28.296675>,  <38.682449, 33.959011, 28.189163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478897, 33.891129, 28.296675>,  <38.139645, 33.777988, 28.475859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478897, 33.891129, 28.296675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262887, 0.509420, 0.819379,
		0.459961, -0.812704, 0.357697,
		0.848131, 0.282849, -0.447962,
		38.733337, 33.975983, 28.162287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662758, 33.536484, 28.880188>,  <38.139645, 33.777988, 28.475859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662758, 33.536484, 28.880188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825562, 33.828552, 28.660667>,  <38.923244, 34.003796, 28.528955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825562, 33.828552, 28.660667>,  <38.662758, 33.536484, 28.880188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825562, 33.828552, 28.660667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394145, 0.401614, 0.826653,
		0.824009, -0.552767, -0.124333,
		0.407013, 0.730175, -0.548804,
		38.947666, 34.047604, 28.496027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342754, 33.740517, 29.209124>,  <38.662758, 33.536484, 28.880188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342754, 33.740517, 29.209124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248142, 34.069115, 29.001587>,  <39.191376, 34.266273, 28.877066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248142, 34.069115, 29.001587>,  <39.342754, 33.740517, 29.209124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248142, 34.069115, 29.001587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239772, 0.566828, 0.788172,
		0.941575, 0.062021, -0.331043,
		-0.236527, 0.821498, -0.518840,
		39.177185, 34.315563, 28.845936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940819, 34.077778, 29.246241>,  <39.342754, 33.740517, 29.209124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940819, 34.077778, 29.246241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665665, 34.349407, 29.143738>,  <39.500572, 34.512386, 29.082235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665665, 34.349407, 29.143738>,  <39.940819, 34.077778, 29.246241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665665, 34.349407, 29.143738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396744, 0.647445, 0.650698,
		0.607786, 0.345938, -0.714789,
		-0.687888, 0.679074, -0.256259,
		39.459297, 34.553131, 29.066860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194973, 34.795033, 29.183189>,  <39.940819, 34.077778, 29.246241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194973, 34.795033, 29.183189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807343, 34.872173, 29.244772>,  <39.574764, 34.918457, 29.281721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807343, 34.872173, 29.244772>,  <40.194973, 34.795033, 29.183189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807343, 34.872173, 29.244772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244525, 0.666539, 0.704225,
		0.033189, 0.720094, -0.693082,
		-0.969075, 0.192849, 0.153959,
		39.516621, 34.930027, 29.290960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198090, 35.532291, 29.361721>,  <40.194973, 34.795033, 29.183189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198090, 35.532291, 29.361721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838989, 35.402012, 29.480352>,  <39.623528, 35.323845, 29.551531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838989, 35.402012, 29.480352>,  <40.198090, 35.532291, 29.361721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838989, 35.402012, 29.480352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075598, 0.549375, 0.832149,
		-0.433963, 0.769486, -0.468581,
		-0.897753, -0.325698, 0.296580,
		39.569664, 35.304302, 29.569326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906460, 36.106270, 29.557823>,  <40.198090, 35.532291, 29.361721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906460, 36.106270, 29.557823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732685, 35.798965, 29.745880>,  <39.628418, 35.614582, 29.858713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732685, 35.798965, 29.745880>,  <39.906460, 36.106270, 29.557823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732685, 35.798965, 29.745880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221463, 0.414835, 0.882533,
		-0.873050, 0.487526, -0.010078,
		-0.434439, -0.768264, 0.470141,
		39.602352, 35.568485, 29.886923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737682, 36.424225, 30.177948>,  <39.906460, 36.106270, 29.557823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737682, 36.424225, 30.177948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634495, 36.046036, 30.257475>,  <39.572582, 35.819122, 30.305191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634495, 36.046036, 30.257475>,  <39.737682, 36.424225, 30.177948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634495, 36.046036, 30.257475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147393, 0.164862, 0.975241,
		-0.954844, 0.280887, 0.096827,
		-0.257969, -0.945475, 0.198818,
		39.557102, 35.762394, 30.317120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084076, 36.365940, 30.706680>,  <39.737682, 36.424225, 30.177948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084076, 36.365940, 30.706680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330833, 36.052120, 30.731735>,  <39.478889, 35.863831, 30.746769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330833, 36.052120, 30.731735>,  <39.084076, 36.365940, 30.706680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330833, 36.052120, 30.731735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259319, 0.277755, 0.924990,
		-0.743096, -0.554381, 0.374794,
		0.616897, -0.784547, 0.062637,
		39.515903, 35.816757, 30.750526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889286, 36.071777, 31.280413>,  <39.084076, 36.365940, 30.706680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889286, 36.071777, 31.280413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231461, 35.872978, 31.222147>,  <39.436768, 35.753700, 31.187187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231461, 35.872978, 31.222147>,  <38.889286, 36.071777, 31.280413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231461, 35.872978, 31.222147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301257, 0.248729, 0.920531,
		-0.421271, -0.831340, 0.362497,
		0.855438, -0.496998, -0.145665,
		39.488091, 35.723877, 31.178448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005882, 35.550270, 31.902170>,  <38.889286, 36.071777, 31.280413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005882, 35.550270, 31.902170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370636, 35.614094, 31.750910>,  <39.589489, 35.652390, 31.660152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370636, 35.614094, 31.750910>,  <39.005882, 35.550270, 31.902170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370636, 35.614094, 31.750910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365980, 0.100944, 0.925132,
		0.185792, -0.982013, 0.033651,
		0.911888, 0.159566, -0.378152,
		39.644203, 35.661964, 31.637465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524475, 35.207451, 32.282600>,  <39.005882, 35.550270, 31.902170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524475, 35.207451, 32.282600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727379, 35.500725, 32.101437>,  <39.849121, 35.676689, 31.992739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727379, 35.500725, 32.101437>,  <39.524475, 35.207451, 32.282600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727379, 35.500725, 32.101437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426255, 0.243295, 0.871271,
		0.748995, -0.635014, -0.189111,
		0.507260, 0.733188, -0.452905,
		39.879559, 35.720680, 31.965565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210007, 35.204350, 32.528976>,  <39.524475, 35.207451, 32.282600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210007, 35.204350, 32.528976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184040, 35.581757, 32.399017>,  <40.168461, 35.808201, 32.321041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184040, 35.581757, 32.399017>,  <40.210007, 35.204350, 32.528976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184040, 35.581757, 32.399017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456016, 0.317655, 0.831351,
		0.887600, -0.094188, -0.450882,
		-0.064921, 0.943517, -0.324902,
		40.164562, 35.864811, 32.301548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725483, 35.542679, 32.729988>,  <40.210007, 35.204350, 32.528976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725483, 35.542679, 32.729988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491196, 35.863506, 32.683304>,  <40.350624, 36.056004, 32.655293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491196, 35.863506, 32.683304>,  <40.725483, 35.542679, 32.729988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491196, 35.863506, 32.683304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382888, 0.400723, 0.832357,
		0.714373, 0.442843, -0.541813,
		-0.585720, 0.802067, -0.116706,
		40.315479, 36.104126, 32.648293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178555, 36.181431, 32.861073>,  <40.725483, 35.542679, 32.729988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178555, 36.181431, 32.861073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801449, 36.302837, 32.916325>,  <40.575188, 36.375683, 32.949474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801449, 36.302837, 32.916325>,  <41.178555, 36.181431, 32.861073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801449, 36.302837, 32.916325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304112, 0.612589, 0.729555,
		0.136820, 0.729801, -0.669829,
		-0.942760, 0.303521, 0.138126,
		40.518620, 36.393894, 32.957764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282494, 36.902195, 33.021152>,  <41.178555, 36.181431, 32.861073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282494, 36.902195, 33.021152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907856, 36.826733, 33.139275>,  <40.683075, 36.781456, 33.210148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907856, 36.826733, 33.139275>,  <41.282494, 36.902195, 33.021152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907856, 36.826733, 33.139275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108058, 0.646169, 0.755506,
		-0.333350, 0.739510, -0.584809,
		-0.936590, -0.188655, 0.295310,
		40.626881, 36.770138, 33.227867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126324, 37.543667, 33.114426>,  <41.282494, 36.902195, 33.021152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126324, 37.543667, 33.114426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889805, 37.307175, 33.333813>,  <40.747894, 37.165279, 33.465446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889805, 37.307175, 33.333813>,  <41.126324, 37.543667, 33.114426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889805, 37.307175, 33.333813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084323, 0.631042, 0.771152,
		-0.802035, 0.502227, -0.323278,
		-0.591295, -0.591231, 0.548467,
		40.712418, 37.129807, 33.498352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644852, 38.006760, 33.414673>,  <41.126324, 37.543667, 33.114426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644852, 38.006760, 33.414673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654140, 37.684097, 33.650898>,  <40.659714, 37.490498, 33.792633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654140, 37.684097, 33.650898>,  <40.644852, 38.006760, 33.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654140, 37.684097, 33.650898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042987, 0.590979, 0.805541,
		-0.998806, 0.006678, 0.048402,
		0.023225, -0.806659, 0.590560,
		40.661110, 37.442101, 33.828068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275898, 38.237434, 33.963364>,  <40.644852, 38.006760, 33.414673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275898, 38.237434, 33.963364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473774, 37.917347, 34.098976>,  <40.592499, 37.725296, 34.180344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473774, 37.917347, 34.098976>,  <40.275898, 38.237434, 33.963364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473774, 37.917347, 34.098976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038565, 0.409933, 0.911300,
		-0.868216, -0.437732, 0.233648,
		0.494686, -0.800216, 0.339029,
		40.622181, 37.677280, 34.200684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863979, 38.105156, 34.504700>,  <40.275898, 38.237434, 33.963364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863979, 38.105156, 34.504700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232819, 37.956432, 34.547585>,  <40.454121, 37.867199, 34.573315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232819, 37.956432, 34.547585>,  <39.863979, 38.105156, 34.504700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232819, 37.956432, 34.547585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093877, 0.483745, 0.870160,
		-0.375395, -0.792308, 0.480965,
		0.922099, -0.371805, 0.107216,
		40.509449, 37.844891, 34.579750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880951, 37.945194, 35.209225>,  <39.863979, 38.105156, 34.504700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880951, 37.945194, 35.209225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265648, 37.926804, 35.101196>,  <40.496464, 37.915768, 35.036377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265648, 37.926804, 35.101196>,  <39.880951, 37.945194, 35.209225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265648, 37.926804, 35.101196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266260, 0.388965, 0.881936,
		0.064499, -0.920105, 0.386326,
		0.961741, -0.045979, -0.270075,
		40.554169, 37.913010, 35.020172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294094, 37.583740, 35.762707>,  <39.880951, 37.945194, 35.209225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294094, 37.583740, 35.762707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532608, 37.831875, 35.558895>,  <40.675716, 37.980755, 35.436607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532608, 37.831875, 35.558895>,  <40.294094, 37.583740, 35.762707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532608, 37.831875, 35.558895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390444, 0.330475, 0.859267,
		0.701423, -0.711314, -0.045150,
		0.596288, 0.620338, -0.509531,
		40.711494, 38.017975, 35.406036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905472, 37.547634, 36.098553>,  <40.294094, 37.583740, 35.762707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905472, 37.547634, 36.098553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923782, 37.889820, 35.892216>,  <40.934769, 38.095131, 35.768414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923782, 37.889820, 35.892216>,  <40.905472, 37.547634, 36.098553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923782, 37.889820, 35.892216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369342, 0.465297, 0.804416,
		0.928166, -0.227341, -0.294660,
		0.045772, 0.855461, -0.515840,
		40.937515, 38.146458, 35.737465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027496, 37.986828, 36.739113>,  <40.905472, 37.547634, 36.098553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027496, 37.986828, 36.739113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072792, 38.179920, 36.391747>,  <41.099968, 38.295776, 36.183327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072792, 38.179920, 36.391747>,  <41.027496, 37.986828, 36.739113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072792, 38.179920, 36.391747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403488, 0.776378, 0.484185,
		0.907951, -0.405225, -0.106860,
		0.113240, 0.482732, -0.868416,
		41.106766, 38.324741, 36.131222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838970, 38.192272, 36.508846>,  <41.027496, 37.986828, 36.739113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838970, 38.192272, 36.508846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582058, 38.453819, 36.348877>,  <41.427910, 38.610748, 36.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582058, 38.453819, 36.348877>,  <41.838970, 38.192272, 36.508846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582058, 38.453819, 36.348877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499957, 0.752888, 0.428022,
		0.580964, 0.074967, -0.810469,
		-0.642280, 0.653865, -0.399921,
		41.389374, 38.649979, 36.228901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223274, 38.780262, 36.260147>,  <41.838970, 38.192272, 36.508846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223274, 38.780262, 36.260147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845825, 38.879166, 36.348183>,  <41.619354, 38.938507, 36.401005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845825, 38.879166, 36.348183>,  <42.223274, 38.780262, 36.260147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845825, 38.879166, 36.348183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330009, 0.754673, 0.567066,
		-0.025881, 0.607727, -0.793724,
		-0.943623, 0.247260, 0.220087,
		41.562737, 38.953342, 36.414207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148617, 39.489300, 35.966125>,  <42.223274, 38.780262, 36.260147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148617, 39.489300, 35.966125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877846, 39.430729, 36.254662>,  <41.715385, 39.395584, 36.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877846, 39.430729, 36.254662>,  <42.148617, 39.489300, 35.966125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877846, 39.430729, 36.254662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256281, 0.871801, 0.417474,
		-0.689996, 0.467464, -0.552616,
		-0.676924, -0.146430, 0.721340,
		41.674770, 39.386799, 36.471066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000622, 40.147747, 36.157494>,  <42.148617, 39.489300, 35.966125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000622, 40.147747, 36.157494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816887, 39.967636, 36.463764>,  <41.706646, 39.859570, 36.647526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816887, 39.967636, 36.463764>,  <42.000622, 40.147747, 36.157494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816887, 39.967636, 36.463764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277785, 0.745937, 0.605321,
		-0.843706, 0.490742, -0.217559,
		-0.459342, -0.450279, 0.765672,
		41.679085, 39.832554, 36.693466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632729, 40.724861, 36.507519>,  <42.000622, 40.147747, 36.157494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632729, 40.724861, 36.507519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656631, 40.432045, 36.778973>,  <41.670975, 40.256355, 36.941845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656631, 40.432045, 36.778973>,  <41.632729, 40.724861, 36.507519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656631, 40.432045, 36.778973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121107, 0.669508, 0.732866,
		-0.990839, -0.125984, -0.048645,
		0.059761, -0.732043, 0.678632,
		41.674561, 40.212433, 36.982563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028889, 40.808723, 37.080643>,  <41.632729, 40.724861, 36.507519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028889, 40.808723, 37.080643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344658, 40.594551, 37.200726>,  <41.534119, 40.466049, 37.272774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344658, 40.594551, 37.200726>,  <41.028889, 40.808723, 37.080643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344658, 40.594551, 37.200726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145914, 0.638715, 0.755481,
		-0.596252, -0.552592, 0.582345,
		0.789425, -0.535430, 0.300204,
		41.581486, 40.433922, 37.290787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048317, 40.770016, 37.830326>,  <41.028889, 40.808723, 37.080643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048317, 40.770016, 37.830326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419743, 40.652775, 37.739243>,  <41.642597, 40.582428, 37.684593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419743, 40.652775, 37.739243>,  <41.048317, 40.770016, 37.830326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419743, 40.652775, 37.739243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355170, 0.523556, 0.774431,
		-0.107774, -0.799986, 0.590261,
		0.928568, -0.293107, -0.227705,
		41.698315, 40.564842, 37.670933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329628, 40.562557, 38.500488>,  <41.048317, 40.770016, 37.830326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329628, 40.562557, 38.500488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623020, 40.649864, 38.243004>,  <41.799057, 40.702248, 38.088512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623020, 40.649864, 38.243004>,  <41.329628, 40.562557, 38.500488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623020, 40.649864, 38.243004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518853, 0.431988, 0.737684,
		0.439089, -0.875069, 0.203604,
		0.733479, 0.218268, -0.643714,
		41.843063, 40.715343, 38.049889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935478, 40.302448, 38.834080>,  <41.329628, 40.562557, 38.500488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935478, 40.302448, 38.834080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058529, 40.583214, 38.577118>,  <42.132359, 40.751675, 38.422943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058529, 40.583214, 38.577118>,  <41.935478, 40.302448, 38.834080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058529, 40.583214, 38.577118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591685, 0.387618, 0.706867,
		0.745168, -0.597551, -0.296070,
		0.307627, 0.701915, -0.642402,
		42.150818, 40.793789, 38.384396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666164, 40.232128, 38.873596>,  <41.935478, 40.302448, 38.834080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666164, 40.232128, 38.873596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528625, 40.591953, 38.765858>,  <42.446102, 40.807850, 38.701214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528625, 40.591953, 38.765858>,  <42.666164, 40.232128, 38.873596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528625, 40.591953, 38.765858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618791, 0.432814, 0.655568,
		0.706304, 0.058747, -0.705467,
		-0.343848, 0.899567, -0.269346,
		42.425472, 40.861824, 38.685055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311378, 40.627254, 38.945961>,  <42.666164, 40.232128, 38.873596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311378, 40.627254, 38.945961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992821, 40.868725, 38.931335>,  <42.801685, 41.013607, 38.922558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992821, 40.868725, 38.931335>,  <43.311378, 40.627254, 38.945961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992821, 40.868725, 38.931335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445136, 0.626030, 0.640267,
		0.409404, 0.493626, -0.767282,
		-0.796394, 0.603672, -0.036568,
		42.753902, 41.049828, 38.920364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531330, 41.303951, 38.859421>,  <43.311378, 40.627254, 38.945961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531330, 41.303951, 38.859421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171776, 41.314598, 39.034370>,  <42.956043, 41.320984, 39.139339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171776, 41.314598, 39.034370>,  <43.531330, 41.303951, 38.859421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171776, 41.314598, 39.034370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385782, 0.521396, 0.761130,
		-0.207788, 0.852900, -0.478943,
		-0.898886, 0.026614, 0.437373,
		42.902111, 41.322582, 39.165581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282410, 42.029186, 38.852871>,  <43.531330, 41.303951, 38.859421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282410, 42.029186, 38.852871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127220, 41.824265, 39.159340>,  <43.034107, 41.701313, 39.343224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127220, 41.824265, 39.159340>,  <43.282410, 42.029186, 38.852871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127220, 41.824265, 39.159340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440944, 0.626809, 0.642400,
		-0.809349, 0.587074, -0.017287,
		-0.387972, -0.512303, 0.766174,
		43.010830, 41.670574, 39.389191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951611, 42.585335, 39.423016>,  <43.282410, 42.029186, 38.852871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951611, 42.585335, 39.423016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060036, 42.239815, 39.592899>,  <43.125092, 42.032505, 39.694832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060036, 42.239815, 39.592899>,  <42.951611, 42.585335, 39.423016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060036, 42.239815, 39.592899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330930, 0.497965, 0.801571,
		-0.903886, -0.076728, 0.420837,
		0.271065, -0.863796, 0.424711,
		43.141354, 41.980675, 39.720314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571362, 42.455776, 40.027935>,  <42.951611, 42.585335, 39.423016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571362, 42.455776, 40.027935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930183, 42.279217, 40.036518>,  <43.145477, 42.173283, 40.041668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930183, 42.279217, 40.036518>,  <42.571362, 42.455776, 40.027935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930183, 42.279217, 40.036518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262775, 0.571813, 0.777161,
		-0.355307, -0.691517, 0.628936,
		0.897054, -0.441399, 0.021456,
		43.199299, 42.146797, 40.042953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698055, 42.449997, 40.737232>,  <42.571362, 42.455776, 40.027935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698055, 42.449997, 40.737232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043709, 42.361115, 40.556614>,  <43.251102, 42.307785, 40.448242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043709, 42.361115, 40.556614>,  <42.698055, 42.449997, 40.737232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043709, 42.361115, 40.556614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498871, 0.496422, 0.710418,
		0.066297, -0.839160, 0.539829,
		0.864137, -0.222207, -0.451544,
		43.302948, 42.294453, 40.421150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169365, 42.139610, 41.243061>,  <42.698055, 42.449997, 40.737232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169365, 42.139610, 41.243061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357975, 42.332855, 40.947960>,  <43.471142, 42.448803, 40.770901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357975, 42.332855, 40.947960>,  <43.169365, 42.139610, 41.243061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357975, 42.332855, 40.947960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719687, 0.272653, 0.638523,
		0.509626, -0.832025, -0.219126,
		0.471521, 0.483110, -0.737748,
		43.499432, 42.477787, 40.726635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868183, 41.858753, 40.884521>,  <43.169365, 42.139610, 41.243061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868183, 41.858753, 40.884521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859993, 42.252934, 40.952007>,  <43.855080, 42.489441, 40.992500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859993, 42.252934, 40.952007>,  <43.868183, 41.858753, 40.884521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859993, 42.252934, 40.952007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816451, -0.080920, 0.571717,
		0.577052, 0.149455, -0.802916,
		-0.020474, 0.985452, 0.168718,
		43.853851, 42.548569, 41.002621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616528, 41.316071, 40.347752>,  <43.868183, 41.858753, 40.884521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616528, 41.316071, 40.347752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326363, 41.590851, 40.365070>,  <43.152264, 41.755718, 40.375462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326363, 41.590851, 40.365070>,  <43.616528, 41.316071, 40.347752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326363, 41.590851, 40.365070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465277, -0.443035, -0.766314,
		-0.507238, -0.576039, 0.641006,
		-0.725415, 0.686949, 0.043294,
		43.108738, 41.796936, 40.378059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987747, 41.001904, 40.428627>,  <43.616528, 41.316071, 40.347752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987747, 41.001904, 40.428627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938175, 41.349129, 40.236332>,  <42.908432, 41.557465, 40.120953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938175, 41.349129, 40.236332>,  <42.987747, 41.001904, 40.428627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938175, 41.349129, 40.236332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512806, -0.470793, -0.717902,
		-0.849512, 0.157557, 0.503492,
		-0.123930, 0.868061, -0.480741,
		42.900997, 41.609547, 40.092110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265347, 41.079071, 40.275749>,  <42.987747, 41.001904, 40.428627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265347, 41.079071, 40.275749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486595, 41.273399, 40.005035>,  <42.619347, 41.389996, 39.842609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486595, 41.273399, 40.005035>,  <42.265347, 41.079071, 40.275749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486595, 41.273399, 40.005035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449632, -0.509804, -0.733438,
		-0.701344, 0.709985, -0.063545,
		0.553126, 0.485820, -0.676780,
		42.652534, 41.419144, 39.802002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799805, 41.464611, 39.834915>,  <42.265347, 41.079071, 40.275749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799805, 41.464611, 39.834915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139912, 41.418877, 39.629402>,  <42.343975, 41.391434, 39.506092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139912, 41.418877, 39.629402>,  <41.799805, 41.464611, 39.834915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139912, 41.418877, 39.629402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526140, -0.212568, -0.823403,
		-0.015068, 0.970434, -0.240897,
		0.850265, -0.114339, -0.513786,
		42.394993, 41.384575, 39.475266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614777, 41.651447, 39.211708>,  <41.799805, 41.464611, 39.834915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614777, 41.651447, 39.211708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969791, 41.485355, 39.131847>,  <42.182800, 41.385700, 39.083931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969791, 41.485355, 39.131847>,  <41.614777, 41.651447, 39.211708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969791, 41.485355, 39.131847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268504, -0.114001, -0.956509,
		0.374414, 0.902544, -0.212672,
		0.887536, -0.415233, -0.199653,
		42.236053, 41.360786, 39.071953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869514, 42.032921, 38.592514>,  <41.614777, 41.651447, 39.211708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869514, 42.032921, 38.592514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066826, 41.688980, 38.645176>,  <42.185211, 41.482616, 38.676773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066826, 41.688980, 38.645176>,  <41.869514, 42.032921, 38.592514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066826, 41.688980, 38.645176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283095, -0.301800, -0.910370,
		0.822517, 0.411794, -0.392290,
		0.493278, -0.859850, 0.131659,
		42.214809, 41.431026, 38.684673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137936, 41.809135, 37.932465>,  <41.869514, 42.032921, 38.592514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137936, 41.809135, 37.932465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347900, 41.531109, 38.128975>,  <42.473877, 41.364292, 38.246883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347900, 41.531109, 38.128975>,  <42.137936, 41.809135, 37.932465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347900, 41.531109, 38.128975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173186, -0.652331, -0.737883,
		0.833352, 0.302239, -0.462791,
		0.524910, -0.695066, 0.491278,
		42.505375, 41.322590, 38.276360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553452, 41.501312, 37.432056>,  <42.137936, 41.809135, 37.932465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553452, 41.501312, 37.432056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494011, 41.239277, 37.728374>,  <42.458347, 41.082054, 37.906166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494011, 41.239277, 37.728374>,  <42.553452, 41.501312, 37.432056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494011, 41.239277, 37.728374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337888, -0.670389, -0.660614,
		0.929381, -0.348472, -0.121727,
		-0.148601, -0.655093, 0.740791,
		42.449432, 41.042747, 37.950611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005257, 40.870522, 37.377968>,  <42.553452, 41.501312, 37.432056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005257, 40.870522, 37.377968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661354, 40.799606, 37.569546>,  <42.455013, 40.757057, 37.684494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661354, 40.799606, 37.569546>,  <43.005257, 40.870522, 37.377968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661354, 40.799606, 37.569546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272752, -0.633473, -0.724098,
		0.431773, -0.753181, 0.496276,
		-0.859755, -0.177285, 0.478948,
		42.403427, 40.746422, 37.713230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874073, 40.084904, 37.447937>,  <43.005257, 40.870522, 37.377968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874073, 40.084904, 37.447937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509815, 40.230766, 37.525661>,  <42.291260, 40.318283, 37.572296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509815, 40.230766, 37.525661>,  <42.874073, 40.084904, 37.447937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509815, 40.230766, 37.525661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407662, -0.716214, -0.566435,
		-0.067389, -0.595031, 0.800872,
		-0.910643, 0.364657, 0.194307,
		42.236622, 40.340164, 37.583954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426266, 39.625694, 37.897705>,  <42.874073, 40.084904, 37.447937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426266, 39.625694, 37.897705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178631, 39.856857, 37.685005>,  <42.030052, 39.995556, 37.557384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178631, 39.856857, 37.685005>,  <42.426266, 39.625694, 37.897705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178631, 39.856857, 37.685005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473791, -0.814852, -0.333974,
		-0.626305, 0.045181, 0.778268,
		-0.619084, 0.577906, -0.531752,
		41.992905, 40.030228, 37.525478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924080, 39.204906, 37.809734>,  <42.426266, 39.625694, 37.897705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924080, 39.204906, 37.809734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853340, 39.509827, 37.560696>,  <41.810894, 39.692780, 37.411274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853340, 39.509827, 37.560696>,  <41.924080, 39.204906, 37.809734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853340, 39.509827, 37.560696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633915, -0.572114, -0.520420,
		-0.752910, 0.302635, 0.584413,
		-0.176853, 0.762298, -0.622595,
		41.800285, 39.738518, 37.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207809, 39.187943, 37.730770>,  <41.924080, 39.204906, 37.809734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207809, 39.187943, 37.730770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332317, 39.370808, 37.397514>,  <41.407021, 39.480526, 37.197563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332317, 39.370808, 37.397514>,  <41.207809, 39.187943, 37.730770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332317, 39.370808, 37.397514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604490, -0.581220, -0.544771,
		-0.733283, 0.673193, 0.095432,
		0.311269, 0.457158, -0.833137,
		41.425697, 39.507954, 37.147572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600624, 39.293232, 37.336262>,  <41.207809, 39.187943, 37.730770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600624, 39.293232, 37.336262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922268, 39.297634, 37.098511>,  <41.115253, 39.300274, 36.955860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922268, 39.297634, 37.098511>,  <40.600624, 39.293232, 37.336262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922268, 39.297634, 37.098511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435665, -0.669358, -0.601794,
		-0.404474, 0.742859, -0.533444,
		0.804112, 0.011007, -0.594375,
		41.163502, 39.300938, 36.920197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391644, 39.463326, 36.718716>,  <40.600624, 39.293232, 37.336262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391644, 39.463326, 36.718716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737606, 39.288986, 36.619137>,  <40.945183, 39.184383, 36.559391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737606, 39.288986, 36.619137>,  <40.391644, 39.463326, 36.718716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737606, 39.288986, 36.619137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445623, -0.438525, -0.780459,
		0.230991, 0.785961, -0.573506,
		0.864907, -0.435846, -0.248947,
		40.997078, 39.158234, 36.544453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363464, 39.467739, 35.931702>,  <40.391644, 39.463326, 36.718716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363464, 39.467739, 35.931702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662502, 39.219955, 36.027512>,  <40.841927, 39.071285, 36.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662502, 39.219955, 36.027512>,  <40.363464, 39.467739, 35.931702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662502, 39.219955, 36.027512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306006, -0.641361, -0.703575,
		0.589455, 0.452695, -0.669037,
		0.747599, -0.619455, 0.239526,
		40.886784, 39.034119, 36.099369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412289, 39.177994, 35.229790>,  <40.363464, 39.467739, 35.931702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412289, 39.177994, 35.229790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658249, 38.975098, 35.471317>,  <40.805824, 38.853359, 35.616234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658249, 38.975098, 35.471317>,  <40.412289, 39.177994, 35.229790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658249, 38.975098, 35.471317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130353, -0.689774, -0.712194,
		0.777755, 0.516640, -0.358024,
		0.614903, -0.507242, 0.603821,
		40.842720, 38.822926, 35.652462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072601, 39.149574, 34.926689>,  <40.412289, 39.177994, 35.229790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072601, 39.149574, 34.926689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042450, 38.845150, 35.184406>,  <41.024361, 38.662495, 35.339035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042450, 38.845150, 35.184406>,  <41.072601, 39.149574, 34.926689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042450, 38.845150, 35.184406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277062, -0.636669, -0.719645,
		0.957891, 0.124265, 0.258850,
		-0.075375, -0.761059, 0.644289,
		41.019836, 38.616833, 35.377693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602734, 38.732430, 34.676476>,  <41.072601, 39.149574, 34.926689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602734, 38.732430, 34.676476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391777, 38.500778, 34.925140>,  <41.265202, 38.361786, 35.074337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391777, 38.500778, 34.925140>,  <41.602734, 38.732430, 34.676476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391777, 38.500778, 34.925140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175953, -0.790277, -0.586944,
		0.831201, -0.200168, 0.518688,
		-0.527394, -0.579133, 0.621659,
		41.233559, 38.327038, 35.111637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832424, 38.024601, 34.766262>,  <41.602734, 38.732430, 34.676476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832424, 38.024601, 34.766262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450066, 37.959114, 34.863796>,  <41.220650, 37.919823, 34.922318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450066, 37.959114, 34.863796>,  <41.832424, 38.024601, 34.766262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450066, 37.959114, 34.863796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050610, -0.725977, -0.685854,
		0.289305, -0.667947, 0.685674,
		-0.955898, -0.163719, 0.243834,
		41.163296, 37.910000, 34.936947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718399, 37.242985, 34.801334>,  <41.832424, 38.024601, 34.766262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718399, 37.242985, 34.801334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360851, 37.411030, 34.738712>,  <41.146324, 37.511856, 34.701138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360851, 37.411030, 34.738712>,  <41.718399, 37.242985, 34.801334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360851, 37.411030, 34.738712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135932, -0.586712, -0.798306,
		-0.427230, -0.692297, 0.581548,
		-0.893866, 0.420111, -0.156556,
		41.092693, 37.537064, 34.691746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345547, 36.671791, 34.688976>,  <41.718399, 37.242985, 34.801334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345547, 36.671791, 34.688976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141899, 36.981747, 34.539131>,  <41.019711, 37.167721, 34.449223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141899, 36.981747, 34.539131>,  <41.345547, 36.671791, 34.688976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141899, 36.981747, 34.539131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398983, -0.598139, -0.695012,
		-0.762632, -0.204380, 0.613694,
		-0.509122, 0.774893, -0.374616,
		40.989162, 37.214214, 34.426746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763264, 36.114315, 34.450974>,  <41.345547, 36.671791, 34.688976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763264, 36.114315, 34.450974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024681, 35.956951, 34.709618>,  <42.181534, 35.862534, 34.864803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024681, 35.956951, 34.709618>,  <41.763264, 36.114315, 34.450974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024681, 35.956951, 34.709618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129358, 0.899791, 0.416704,
		-0.745751, -0.188691, 0.638945,
		0.653546, -0.393410, 0.646612,
		42.220745, 35.838928, 34.903603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657185, 36.243694, 35.198917>,  <41.763264, 36.114315, 34.450974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657185, 36.243694, 35.198917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049946, 36.199726, 35.137234>,  <42.285603, 36.173344, 35.100224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049946, 36.199726, 35.137234>,  <41.657185, 36.243694, 35.198917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049946, 36.199726, 35.137234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166388, 0.889632, 0.425287,
		0.090442, -0.443250, 0.891823,
		0.981904, -0.109924, -0.154212,
		42.344517, 36.166748, 35.090969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121632, 36.346676, 35.797070>,  <41.657185, 36.243694, 35.198917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121632, 36.346676, 35.797070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344040, 36.428226, 35.474758>,  <42.477486, 36.477158, 35.281372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344040, 36.428226, 35.474758>,  <42.121632, 36.346676, 35.797070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344040, 36.428226, 35.474758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257091, 0.879722, 0.399992,
		0.790408, -0.429561, 0.436729,
		0.556021, 0.203878, -0.805776,
		42.510845, 36.489391, 35.233025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719688, 36.573990, 36.009483>,  <42.121632, 36.346676, 35.797070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719688, 36.573990, 36.009483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690346, 36.728390, 35.641651>,  <42.672741, 36.821030, 35.420952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690346, 36.728390, 35.641651>,  <42.719688, 36.573990, 36.009483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690346, 36.728390, 35.641651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105105, 0.919919, 0.377758,
		0.991752, -0.068941, -0.108053,
		-0.073357, 0.386000, -0.919578,
		42.668339, 36.844189, 35.365776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374695, 36.769062, 35.660297>,  <42.719688, 36.573990, 36.009483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374695, 36.769062, 35.660297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362679, 36.371330, 35.619495>,  <43.355469, 36.132690, 35.595013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362679, 36.371330, 35.619495>,  <43.374695, 36.769062, 35.660297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362679, 36.371330, 35.619495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614162, 0.062154, -0.786728,
		0.788608, -0.086286, 0.608812,
		-0.030043, -0.994330, -0.102009,
		43.353664, 36.073032, 35.588894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979195, 36.603344, 35.789093>,  <43.374695, 36.769062, 35.660297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979195, 36.603344, 35.789093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805504, 36.320942, 35.565308>,  <43.701290, 36.151501, 35.431038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805504, 36.320942, 35.565308>,  <43.979195, 36.603344, 35.789093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805504, 36.320942, 35.565308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637224, 0.198235, -0.744747,
		0.636704, -0.679892, 0.363807,
		-0.434228, -0.706010, -0.559461,
		43.675236, 36.109138, 35.397469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594746, 36.117016, 35.490459>,  <43.979195, 36.603344, 35.789093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594746, 36.117016, 35.490459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248222, 36.139614, 35.291935>,  <44.040310, 36.153172, 35.172821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248222, 36.139614, 35.291935>,  <44.594746, 36.117016, 35.490459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248222, 36.139614, 35.291935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496294, 0.210028, -0.842366,
		0.056653, -0.976062, -0.209984,
		-0.866304, 0.056492, -0.496313,
		43.988331, 36.156563, 35.143040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649300, 35.616348, 35.005787>,  <44.594746, 36.117016, 35.490459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649300, 35.616348, 35.005787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396568, 35.882496, 34.846752>,  <44.244930, 36.042187, 34.751331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396568, 35.882496, 34.846752>,  <44.649300, 35.616348, 35.005787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396568, 35.882496, 34.846752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583966, 0.071334, -0.808638,
		-0.509685, -0.743095, -0.433625,
		-0.631827, 0.665373, -0.397584,
		44.207020, 36.082108, 34.727478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379341, 35.486820, 34.201397>,  <44.649300, 35.616348, 35.005787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379341, 35.486820, 34.201397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401840, 35.870342, 34.312775>,  <44.415340, 36.100456, 34.379601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401840, 35.870342, 34.312775>,  <44.379341, 35.486820, 34.201397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401840, 35.870342, 34.312775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706735, 0.158759, -0.689435,
		-0.705239, 0.235568, -0.668690,
		0.056248, 0.958803, 0.278447,
		44.418716, 36.157982, 34.396309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731197, 35.865089, 33.661003>,  <44.379341, 35.486820, 34.201397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731197, 35.865089, 33.661003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953445, 35.615044, 33.880280>,  <45.086796, 35.465015, 34.011845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953445, 35.615044, 33.880280>,  <44.731197, 35.865089, 33.661003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953445, 35.615044, 33.880280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757421, -0.652499, 0.023628,
		0.342921, -0.428336, -0.836022,
		0.555625, -0.625118, 0.548187,
		45.120132, 35.427509, 34.044735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627266, 35.286411, 33.334602>,  <44.731197, 35.865089, 33.661003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627266, 35.286411, 33.334602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733616, 35.159378, 33.698681>,  <44.797428, 35.083157, 33.917126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733616, 35.159378, 33.698681>,  <44.627266, 35.286411, 33.334602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733616, 35.159378, 33.698681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652298, -0.754467, -0.072702,
		0.709799, -0.574387, -0.407756,
		0.265879, -0.317582, 0.910192,
		44.813381, 35.064102, 33.971737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627003, 34.468544, 33.314926>,  <44.627266, 35.286411, 33.334602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627003, 34.468544, 33.314926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574280, 34.623108, 33.680069>,  <44.542645, 34.715847, 33.899155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574280, 34.623108, 33.680069>,  <44.627003, 34.468544, 33.314926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574280, 34.623108, 33.680069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626060, -0.746439, 0.225562,
		0.768554, -0.541774, 0.340303,
		-0.131811, 0.386407, 0.912862,
		44.534737, 34.739029, 33.953926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688957, 34.555378, 32.504047>,  <44.627003, 34.468544, 33.314926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688957, 34.555378, 32.504047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013958, 34.688648, 32.695396>,  <45.208958, 34.768608, 32.810204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013958, 34.688648, 32.695396>,  <44.688957, 34.555378, 32.504047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013958, 34.688648, 32.695396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320924, 0.940686, -0.110081,
		-0.486670, -0.064079, 0.871232,
		0.812502, 0.333173, 0.478368,
		45.257710, 34.788601, 32.838905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203545, 34.184090, 33.009193>,  <44.688957, 34.555378, 32.504047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203545, 34.184090, 33.009193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102222, 34.562840, 33.088459>,  <45.041431, 34.790089, 33.136017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102222, 34.562840, 33.088459>,  <45.203545, 34.184090, 33.009193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102222, 34.562840, 33.088459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947777, -0.283941, 0.145247,
		0.193797, -0.151023, 0.969348,
		-0.253302, 0.946873, 0.198163,
		45.026234, 34.846901, 33.147907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540531, 34.424301, 33.531742>,  <45.203545, 34.184090, 33.009193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540531, 34.424301, 33.531742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831860, 34.696014, 33.495678>,  <46.006657, 34.859043, 33.474037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831860, 34.696014, 33.495678>,  <45.540531, 34.424301, 33.531742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831860, 34.696014, 33.495678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664895, -0.668731, 0.332737,
		0.165726, -0.302288, -0.938700,
		0.728320, 0.679279, -0.090163,
		46.050354, 34.899799, 33.468628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088264, 33.992065, 33.163319>,  <45.540531, 34.424301, 33.531742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088264, 33.992065, 33.163319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248383, 34.310616, 33.344669>,  <46.344452, 34.501747, 33.453480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248383, 34.310616, 33.344669>,  <46.088264, 33.992065, 33.163319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248383, 34.310616, 33.344669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716497, -0.580432, 0.386951,
		0.571312, 0.169947, -0.802945,
		0.400294, 0.796377, 0.453374,
		46.368469, 34.549530, 33.480682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.826237, 33.847004, 33.035809>,  <46.088264, 33.992065, 33.163319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.826237, 33.847004, 33.035809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772766, 34.103588, 33.337975>,  <46.740685, 34.257538, 33.519276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772766, 34.103588, 33.337975>,  <46.826237, 33.847004, 33.035809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772766, 34.103588, 33.337975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517342, -0.604985, 0.605269,
		0.845274, 0.471717, -0.250987,
		-0.133672, 0.641464, 0.755417,
		46.732666, 34.296028, 33.564598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491318, 33.953259, 33.322727>,  <46.826237, 33.847004, 33.035809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491318, 33.953259, 33.322727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221260, 34.056644, 33.599098>,  <47.059227, 34.118675, 33.764919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221260, 34.056644, 33.599098>,  <47.491318, 33.953259, 33.322727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221260, 34.056644, 33.599098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542705, -0.460368, 0.702519,
		0.499658, 0.849269, 0.170543,
		-0.675140, 0.258464, 0.690929,
		47.018719, 34.134182, 33.806377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.830544, 34.305798, 33.728729>,  <47.491318, 33.953259, 33.322727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.830544, 34.305798, 33.728729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583069, 34.513756, 33.964333>,  <47.434586, 34.638531, 34.105694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583069, 34.513756, 33.964333>,  <47.830544, 34.305798, 33.728729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583069, 34.513756, 33.964333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679058, -0.023171, 0.733719,
		0.395107, 0.853914, -0.338706,
		-0.618685, 0.519898, 0.589012,
		47.397465, 34.669724, 34.141037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.050892, 35.035603, 34.097523>,  <47.830544, 34.305798, 33.728729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.050892, 35.035603, 34.097523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775490, 34.848927, 34.319572>,  <47.610249, 34.736919, 34.452801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775490, 34.848927, 34.319572>,  <48.050892, 35.035603, 34.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.775490, 34.848927, 34.319572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661141, -0.089300, 0.744928,
		-0.298079, 0.879901, 0.370032,
		-0.688507, -0.466691, 0.555120,
		47.568939, 34.708920, 34.486107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955162, 35.344189, 34.761932>,  <48.050892, 35.035603, 34.097523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955162, 35.344189, 34.761932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.876675, 34.952137, 34.773621>,  <47.829582, 34.716908, 34.780636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.876675, 34.952137, 34.773621>,  <47.955162, 35.344189, 34.761932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.876675, 34.952137, 34.773621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671472, -0.112586, 0.732427,
		-0.714580, 0.163338, 0.680218,
		-0.196216, -0.980125, 0.029225,
		47.817810, 34.658100, 34.782387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.552837, 30.170872, 28.367666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219776, 30.391562, 28.386766>,  <35.019939, 30.523975, 28.398226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219776, 30.391562, 28.386766>,  <35.552837, 30.170872, 28.367666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219776, 30.391562, 28.386766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398199, 0.536566, 0.743999,
		0.384863, 0.638510, -0.666472,
		-0.832657, 0.551726, 0.047750,
		34.969978, 30.557079, 28.401091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789917, 30.906208, 28.589720>,  <35.552837, 30.170872, 28.367666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789917, 30.906208, 28.589720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395954, 30.929581, 28.654882>,  <35.159576, 30.943604, 28.693979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395954, 30.929581, 28.654882>,  <35.789917, 30.906208, 28.589720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395954, 30.929581, 28.654882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161335, 0.650653, 0.742039,
		-0.062636, 0.757124, -0.650262,
		-0.984910, 0.058432, 0.162905,
		35.100483, 30.947111, 28.703754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584850, 31.651962, 28.712751>,  <35.789917, 30.906208, 28.589720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584850, 31.651962, 28.712751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306141, 31.419994, 28.881607>,  <35.138916, 31.280813, 28.982920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306141, 31.419994, 28.881607>,  <35.584850, 31.651962, 28.712751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306141, 31.419994, 28.881607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014998, 0.576609, 0.816883,
		-0.717136, 0.575512, -0.393067,
		-0.696771, -0.579921, 0.422139,
		35.097111, 31.246017, 29.008249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032295, 32.200947, 28.949713>,  <35.584850, 31.651962, 28.712751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032295, 32.200947, 28.949713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936661, 31.870338, 29.153559>,  <34.879280, 31.671974, 29.275866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936661, 31.870338, 29.153559>,  <35.032295, 32.200947, 28.949713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936661, 31.870338, 29.153559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136490, 0.491017, 0.860391,
		-0.961357, 0.275266, -0.004585,
		-0.239088, -0.826517, 0.509614,
		34.864933, 31.622383, 29.306442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389080, 32.326065, 29.341976>,  <35.032295, 32.200947, 28.949713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389080, 32.326065, 29.341976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559616, 32.010929, 29.519758>,  <34.661938, 31.821848, 29.626427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559616, 32.010929, 29.519758>,  <34.389080, 32.326065, 29.341976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559616, 32.010929, 29.519758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070953, 0.460707, 0.884712,
		-0.901774, -0.408727, 0.140520,
		0.426344, -0.787840, 0.444454,
		34.687519, 31.774578, 29.653095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063499, 32.364250, 29.986959>,  <34.389080, 32.326065, 29.341976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063499, 32.364250, 29.986959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.374279, 32.114742, 30.021038>,  <34.560745, 31.965036, 30.041485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.374279, 32.114742, 30.021038>,  <34.063499, 32.364250, 29.986959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374279, 32.114742, 30.021038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186815, 0.357663, 0.914974,
		-0.601208, -0.694971, 0.394415,
		0.776948, -0.623773, 0.085199,
		34.607365, 31.927610, 30.046598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998219, 32.016754, 30.642235>,  <34.063499, 32.364250, 29.986959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998219, 32.016754, 30.642235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382431, 32.059074, 30.539328>,  <34.612957, 32.084465, 30.477583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382431, 32.059074, 30.539328>,  <33.998219, 32.016754, 30.642235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382431, 32.059074, 30.539328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189490, 0.428230, 0.883579,
		0.203649, -0.897455, 0.391281,
		0.960531, 0.105796, -0.257268,
		34.670589, 32.090813, 30.462147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316418, 31.824768, 31.294044>,  <33.998219, 32.016754, 30.642235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316418, 31.824768, 31.294044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.615776, 32.001076, 31.095802>,  <34.795391, 32.106861, 30.976856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.615776, 32.001076, 31.095802>,  <34.316418, 31.824768, 31.294044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615776, 32.001076, 31.095802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330889, 0.399482, 0.854942,
		0.574820, -0.803826, 0.153124,
		0.748395, 0.440771, -0.495607,
		34.840294, 32.133308, 30.947121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880798, 31.665342, 31.701906>,  <34.316418, 31.824768, 31.294044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880798, 31.665342, 31.701906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951973, 31.986885, 31.474873>,  <34.994678, 32.179810, 31.338652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951973, 31.986885, 31.474873>,  <34.880798, 31.665342, 31.701906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951973, 31.986885, 31.474873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339956, 0.491061, 0.802053,
		0.923455, -0.335667, -0.185899,
		0.177935, 0.803857, -0.567585,
		35.005352, 32.228043, 31.304598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623989, 31.829546, 31.898335>,  <34.880798, 31.665342, 31.701906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623989, 31.829546, 31.898335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441456, 32.143028, 31.729780>,  <35.331936, 32.331116, 31.628647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441456, 32.143028, 31.729780>,  <35.623989, 31.829546, 31.898335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441456, 32.143028, 31.729780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516890, 0.618948, 0.591378,
		0.724281, 0.052056, -0.687537,
		-0.456334, 0.783705, -0.421385,
		35.304554, 32.378139, 31.603365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113029, 32.309986, 31.665674>,  <35.623989, 31.829546, 31.898335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113029, 32.309986, 31.665674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803810, 32.556419, 31.726122>,  <35.618279, 32.704281, 31.762390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803810, 32.556419, 31.726122>,  <36.113029, 32.309986, 31.665674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803810, 32.556419, 31.726122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609628, 0.655674, 0.445472,
		0.175364, 0.436498, -0.882450,
		-0.773047, 0.616086, 0.151120,
		35.571896, 32.741245, 31.771458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388435, 32.914356, 31.477341>,  <36.113029, 32.309986, 31.665674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388435, 32.914356, 31.477341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064114, 33.016941, 31.687799>,  <35.869522, 33.078491, 31.814075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064114, 33.016941, 31.687799>,  <36.388435, 32.914356, 31.477341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064114, 33.016941, 31.687799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497882, 0.774820, 0.389574,
		-0.307759, 0.577825, -0.755912,
		-0.810801, 0.256460, 0.526146,
		35.820873, 33.093880, 31.845644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421318, 33.713593, 31.513315>,  <36.388435, 32.914356, 31.477341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421318, 33.713593, 31.513315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158669, 33.595112, 31.790764>,  <36.001080, 33.524025, 31.957233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158669, 33.595112, 31.790764>,  <36.421318, 33.713593, 31.513315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158669, 33.595112, 31.790764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311086, 0.731424, 0.606832,
		-0.687074, 0.614236, -0.388127,
		-0.656623, -0.296197, 0.693623,
		35.961681, 33.506252, 31.998850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954372, 34.355125, 31.685596>,  <36.421318, 33.713593, 31.513315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954372, 34.355125, 31.685596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993187, 34.089031, 31.981718>,  <36.016476, 33.929375, 32.159389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993187, 34.089031, 31.981718>,  <35.954372, 34.355125, 31.685596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993187, 34.089031, 31.981718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293237, 0.729907, 0.617453,
		-0.951102, 0.157167, 0.265900,
		0.097038, -0.665233, 0.740303,
		36.022297, 33.889462, 32.203808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705181, 34.738838, 32.250519>,  <35.954372, 34.355125, 31.685596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705181, 34.738838, 32.250519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923843, 34.446774, 32.414486>,  <36.055042, 34.271534, 32.512867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923843, 34.446774, 32.414486>,  <35.705181, 34.738838, 32.250519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923843, 34.446774, 32.414486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275369, 0.619066, 0.735478,
		-0.790782, -0.289177, 0.539481,
		0.546658, -0.730160, 0.409916,
		36.087841, 34.227726, 32.537460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499359, 34.448956, 33.014725>,  <35.705181, 34.738838, 32.250519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499359, 34.448956, 33.014725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894360, 34.398678, 32.976692>,  <36.131359, 34.368511, 32.953873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894360, 34.398678, 32.976692>,  <35.499359, 34.448956, 33.014725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894360, 34.398678, 32.976692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140390, 0.427293, 0.893147,
		-0.071637, -0.895333, 0.439599,
		0.987501, -0.125698, -0.095085,
		36.190609, 34.360970, 32.948166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629120, 34.366955, 33.686142>,  <35.499359, 34.448956, 33.014725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629120, 34.366955, 33.686142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994175, 34.350517, 33.523460>,  <36.213207, 34.340652, 33.425850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994175, 34.350517, 33.523460>,  <35.629120, 34.366955, 33.686142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994175, 34.350517, 33.523460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405824, 0.210516, 0.889376,
		0.049068, -0.976726, 0.208802,
		0.912633, -0.041097, -0.406708,
		36.267963, 34.338188, 33.401447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961105, 33.993702, 34.139919>,  <35.629120, 34.366955, 33.686142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961105, 33.993702, 34.139919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262844, 34.183582, 33.958534>,  <36.443886, 34.297508, 33.849705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262844, 34.183582, 33.958534>,  <35.961105, 33.993702, 34.139919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262844, 34.183582, 33.958534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475651, 0.080866, 0.875909,
		0.452463, -0.876426, -0.164790,
		0.754343, 0.474699, -0.453462,
		36.489147, 34.325993, 33.822495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472404, 33.853516, 34.484070>,  <35.961105, 33.993702, 34.139919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472404, 33.853516, 34.484070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684856, 34.139153, 34.301655>,  <36.812328, 34.310535, 34.192204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684856, 34.139153, 34.301655>,  <36.472404, 33.853516, 34.484070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684856, 34.139153, 34.301655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503382, 0.167002, 0.847772,
		0.681546, -0.679842, -0.270760,
		0.531133, 0.714091, -0.456039,
		36.844196, 34.353378, 34.164845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253624, 33.705936, 34.566017>,  <36.472404, 33.853516, 34.484070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253624, 33.705936, 34.566017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215942, 34.098385, 34.498447>,  <37.193333, 34.333855, 34.457905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215942, 34.098385, 34.498447>,  <37.253624, 33.705936, 34.566017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215942, 34.098385, 34.498447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528235, 0.193080, 0.826854,
		0.843856, -0.011341, -0.536449,
		-0.094200, 0.981118, -0.168923,
		37.187683, 34.392719, 34.447769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920593, 33.936337, 34.460804>,  <37.253624, 33.705936, 34.566017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920593, 33.936337, 34.460804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.701092, 34.252724, 34.569057>,  <37.569389, 34.442554, 34.634010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.701092, 34.252724, 34.569057>,  <37.920593, 33.936337, 34.460804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701092, 34.252724, 34.569057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549526, 0.097337, 0.829787,
		0.629989, 0.604072, -0.488069,
		-0.548758, 0.790963, 0.270632,
		37.536465, 34.490013, 34.650246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408203, 34.330341, 34.702740>,  <37.920593, 33.936337, 34.460804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408203, 34.330341, 34.702740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070873, 34.495964, 34.839771>,  <37.868477, 34.595337, 34.921989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070873, 34.495964, 34.839771>,  <38.408203, 34.330341, 34.702740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070873, 34.495964, 34.839771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375378, -0.002320, 0.926869,
		0.384574, 0.910247, -0.153473,
		-0.843323, 0.414060, 0.342579,
		37.817875, 34.620182, 34.942543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993385, 34.507179, 34.422367>,  <38.408203, 34.330341, 34.702740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993385, 34.507179, 34.422367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391434, 34.546631, 34.421196>,  <39.630264, 34.570301, 34.420494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391434, 34.546631, 34.421196>,  <38.993385, 34.507179, 34.422367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391434, 34.546631, 34.421196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056978, -0.598546, -0.799059,
		-0.080564, 0.794993, -0.601245,
		0.995120, 0.098633, -0.002924,
		39.689968, 34.576221, 34.420319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180111, 34.521534, 33.752392>,  <38.993385, 34.507179, 34.422367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180111, 34.521534, 33.752392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504044, 34.391514, 33.947742>,  <39.698402, 34.313503, 34.064953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504044, 34.391514, 33.947742>,  <39.180111, 34.521534, 33.752392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504044, 34.391514, 33.947742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079028, -0.764440, -0.639833,
		0.581309, 0.556754, -0.593384,
		0.809836, -0.325047, 0.488375,
		39.746994, 34.293999, 34.094254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724686, 34.490170, 33.231064>,  <39.180111, 34.521534, 33.752392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724686, 34.490170, 33.231064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869049, 34.254208, 33.519993>,  <39.955666, 34.112629, 33.693352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869049, 34.254208, 33.519993>,  <39.724686, 34.490170, 33.231064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869049, 34.254208, 33.519993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144708, -0.729725, -0.668252,
		0.921306, 0.345705, -0.177999,
		0.360909, -0.589907, 0.722326,
		39.977322, 34.077236, 33.736691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287292, 34.186131, 32.937267>,  <39.724686, 34.490170, 33.231064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287292, 34.186131, 32.937267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163063, 33.948299, 33.233921>,  <40.088524, 33.805599, 33.411911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163063, 33.948299, 33.233921>,  <40.287292, 34.186131, 32.937267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163063, 33.948299, 33.233921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084383, -0.794380, -0.601531,
		0.946796, -0.124239, 0.296886,
		-0.310574, -0.594580, 0.741633,
		40.069889, 33.769924, 33.456409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625954, 33.615974, 32.742836>,  <40.287292, 34.186131, 32.937267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625954, 33.615974, 32.742836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.368336, 33.486763, 33.020210>,  <40.213764, 33.409237, 33.186634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.368336, 33.486763, 33.020210>,  <40.625954, 33.615974, 32.742836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368336, 33.486763, 33.020210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270352, -0.751862, -0.601343,
		0.715622, -0.574765, 0.396901,
		-0.644046, -0.323031, 0.693438,
		40.175121, 33.389854, 33.228241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746780, 32.904293, 32.892593>,  <40.625954, 33.615974, 32.742836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746780, 32.904293, 32.892593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361607, 32.975193, 32.973911>,  <40.130501, 33.017735, 33.022701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361607, 32.975193, 32.973911>,  <40.746780, 32.904293, 32.892593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361607, 32.975193, 32.973911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269716, -0.636693, -0.722409,
		0.001391, -0.750469, 0.660904,
		-0.962939, 0.177251, 0.203300,
		40.072723, 33.028370, 33.034901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265205, 32.240993, 32.946289>,  <40.746780, 32.904293, 32.892593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265205, 32.240993, 32.946289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.997776, 32.534798, 32.899796>,  <39.837318, 32.711079, 32.871899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.997776, 32.534798, 32.899796>,  <40.265205, 32.240993, 32.946289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997776, 32.534798, 32.899796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506380, -0.564126, -0.652182,
		-0.544597, -0.377178, 0.749100,
		-0.668576, 0.734505, -0.116226,
		39.797207, 32.755150, 32.864925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695007, 31.898270, 33.151798>,  <40.265205, 32.240993, 32.946289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695007, 31.898270, 33.151798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572247, 32.201183, 32.921204>,  <39.498592, 32.382931, 32.782848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572247, 32.201183, 32.921204>,  <39.695007, 31.898270, 33.151798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572247, 32.201183, 32.921204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553755, -0.634715, -0.538974,
		-0.774060, 0.153824, 0.614141,
		-0.306897, 0.757282, -0.576488,
		39.480179, 32.428368, 32.748257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042625, 31.775856, 33.061897>,  <39.695007, 31.898270, 33.151798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042625, 31.775856, 33.061897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136459, 32.034721, 32.771751>,  <39.192760, 32.190041, 32.597664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136459, 32.034721, 32.771751>,  <39.042625, 31.775856, 33.061897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136459, 32.034721, 32.771751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449092, -0.589636, -0.671301,
		-0.862142, 0.483230, 0.152318,
		0.234581, 0.647162, -0.725365,
		39.206833, 32.228870, 32.554142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472908, 31.708061, 32.596920>,  <39.042625, 31.775856, 33.061897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472908, 31.708061, 32.596920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733974, 31.915163, 32.375668>,  <38.890614, 32.039425, 32.242916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733974, 31.915163, 32.375668>,  <38.472908, 31.708061, 32.596920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733974, 31.915163, 32.375668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336606, -0.455900, -0.823924,
		-0.678763, 0.723937, -0.123273,
		0.652669, 0.517755, -0.553129,
		38.929775, 32.070488, 32.209728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114380, 31.932312, 31.985016>,  <38.472908, 31.708061, 32.596920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114380, 31.932312, 31.985016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.503250, 31.925362, 31.891575>,  <38.736572, 31.921190, 31.835510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.503250, 31.925362, 31.891575>,  <38.114380, 31.932312, 31.985016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503250, 31.925362, 31.891575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228476, -0.290337, -0.929248,
		-0.051676, 0.956766, -0.286229,
		0.972177, -0.017377, -0.233602,
		38.794903, 31.920149, 31.821495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207302, 32.296322, 31.337347>,  <38.114380, 31.932312, 31.985016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207302, 32.296322, 31.337347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534046, 32.073025, 31.395456>,  <38.730091, 31.939045, 31.430323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534046, 32.073025, 31.395456>,  <38.207302, 32.296322, 31.337347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534046, 32.073025, 31.395456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128555, -0.421688, -0.897582,
		0.562333, 0.714521, -0.416224,
		0.816857, -0.558247, 0.145274,
		38.779102, 31.905550, 31.439039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624817, 32.449932, 30.827774>,  <38.207302, 32.296322, 31.337347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624817, 32.449932, 30.827774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711342, 32.083534, 30.962931>,  <38.763256, 31.863697, 31.044025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711342, 32.083534, 30.962931>,  <38.624817, 32.449932, 30.827774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711342, 32.083534, 30.962931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193501, -0.379442, -0.904755,
		0.956956, 0.130328, -0.259324,
		0.216313, -0.915990, 0.337891,
		38.776237, 31.808737, 31.064299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004555, 32.194061, 30.251505>,  <38.624817, 32.449932, 30.827774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004555, 32.194061, 30.251505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.897243, 31.869694, 30.459522>,  <38.832855, 31.675074, 30.584332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.897243, 31.869694, 30.459522>,  <39.004555, 32.194061, 30.251505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897243, 31.869694, 30.459522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174519, -0.489987, -0.854082,
		0.947401, -0.319890, -0.010066,
		-0.268280, -0.810915, 0.520041,
		38.816761, 31.626419, 30.615534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412380, 31.566830, 29.977968>,  <39.004555, 32.194061, 30.251505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412380, 31.566830, 29.977968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073975, 31.465158, 30.165440>,  <38.870934, 31.404156, 30.277924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073975, 31.465158, 30.165440>,  <39.412380, 31.566830, 29.977968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073975, 31.465158, 30.165440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325837, -0.449309, -0.831836,
		0.422016, -0.856455, 0.297300,
		-0.846010, -0.254177, 0.468681,
		38.820171, 31.388905, 30.306044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285336, 30.940594, 29.613182>,  <39.412380, 31.566830, 29.977968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285336, 30.940594, 29.613182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932617, 31.045435, 29.770018>,  <38.720985, 31.108339, 29.864119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932617, 31.045435, 29.770018>,  <39.285336, 30.940594, 29.613182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932617, 31.045435, 29.770018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467777, -0.380040, -0.797969,
		-0.060139, -0.887058, 0.457724,
		-0.881798, 0.262102, 0.392090,
		38.668079, 31.124065, 29.887644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850361, 30.370514, 29.639595>,  <39.285336, 30.940594, 29.613182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850361, 30.370514, 29.639595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578903, 30.663830, 29.656258>,  <38.416031, 30.839819, 29.666254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578903, 30.663830, 29.656258>,  <38.850361, 30.370514, 29.639595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578903, 30.663830, 29.656258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442552, -0.362992, -0.819991,
		-0.586169, -0.574914, 0.570859,
		-0.678641, 0.733288, 0.041655,
		38.375309, 30.883816, 29.668755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198544, 30.007326, 29.556488>,  <38.850361, 30.370514, 29.639595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198544, 30.007326, 29.556488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153801, 30.393009, 29.460329>,  <38.126957, 30.624418, 29.402634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153801, 30.393009, 29.460329>,  <38.198544, 30.007326, 29.556488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153801, 30.393009, 29.460329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422885, -0.265106, -0.866537,
		-0.899253, 0.004733, 0.437403,
		-0.111857, 0.964208, -0.240399,
		38.120243, 30.682272, 29.388210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.382305, 30.043509, 29.318943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560043, 30.376385, 29.186268>,  <37.666687, 30.576111, 29.106663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560043, 30.376385, 29.186268>,  <37.382305, 30.043509, 29.318943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560043, 30.376385, 29.186268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338249, -0.186992, -0.922292,
		-0.829543, 0.522012, 0.198398,
		0.444348, 0.832189, -0.331688,
		37.693348, 30.626041, 29.086761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854721, 30.249279, 28.832134>,  <37.382305, 30.043509, 29.318943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854721, 30.249279, 28.832134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.174004, 30.472641, 28.741762>,  <37.365574, 30.606659, 28.687538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.174004, 30.472641, 28.741762>,  <36.854721, 30.249279, 28.832134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174004, 30.472641, 28.741762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239126, -0.050511, -0.969674,
		-0.552884, 0.828029, 0.093211,
		0.798210, 0.558406, -0.225930,
		37.413467, 30.640163, 28.673983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641697, 30.996515, 28.612280>,  <36.854721, 30.249279, 28.832134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641697, 30.996515, 28.612280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988724, 30.893734, 28.441965>,  <37.196941, 30.832066, 28.339775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988724, 30.893734, 28.441965>,  <36.641697, 30.996515, 28.612280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988724, 30.893734, 28.441965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394538, 0.165602, -0.903834,
		0.302753, 0.952130, 0.042294,
		0.867571, -0.256952, -0.425788,
		37.248997, 30.816648, 28.314228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661804, 31.303547, 27.916050>,  <36.641697, 30.996515, 28.612280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661804, 31.303547, 27.916050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951065, 31.027985, 27.896185>,  <37.124622, 30.862648, 27.884266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951065, 31.027985, 27.896185>,  <36.661804, 31.303547, 27.916050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951065, 31.027985, 27.896185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197705, -0.137563, -0.970561,
		0.661793, 0.711678, -0.235678,
		0.723148, -0.688905, -0.049664,
		37.168011, 30.821314, 27.881287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896732, 31.360037, 27.234463>,  <36.661804, 31.303547, 27.916050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896732, 31.360037, 27.234463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009457, 30.991056, 27.340040>,  <37.077091, 30.769669, 27.403387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009457, 30.991056, 27.340040>,  <36.896732, 31.360037, 27.234463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009457, 30.991056, 27.340040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185831, -0.322357, -0.928199,
		0.941303, 0.212525, -0.262263,
		0.281808, -0.922453, 0.263942,
		37.093998, 30.714321, 27.419222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240070, 31.114172, 26.712837>,  <36.896732, 31.360037, 27.234463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240070, 31.114172, 26.712837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118530, 30.788195, 26.910236>,  <37.045605, 30.592609, 27.028677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118530, 30.788195, 26.910236>,  <37.240070, 31.114172, 26.712837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118530, 30.788195, 26.910236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193505, -0.454403, -0.869525,
		0.932860, -0.359704, -0.019623,
		-0.303854, -0.814942, 0.493499,
		37.027374, 30.543713, 27.058287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608185, 30.548859, 26.276943>,  <37.240070, 31.114172, 26.712837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608185, 30.548859, 26.276943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321831, 30.382372, 26.501183>,  <37.150017, 30.282480, 26.635727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321831, 30.382372, 26.501183>,  <37.608185, 30.548859, 26.276943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321831, 30.382372, 26.501183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300086, -0.541549, -0.785285,
		0.630440, -0.730403, 0.262788,
		-0.715887, -0.416216, 0.560597,
		37.107063, 30.257507, 26.669361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595924, 29.885971, 26.009132>,  <37.608185, 30.548859, 26.276943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595924, 29.885971, 26.009132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241329, 29.894684, 26.194029>,  <37.028572, 29.899912, 26.304966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241329, 29.894684, 26.194029>,  <37.595924, 29.885971, 26.009132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241329, 29.894684, 26.194029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390485, -0.571227, -0.721956,
		0.248320, -0.820503, 0.514890,
		-0.886487, 0.021781, 0.462241,
		36.975384, 29.901218, 26.332701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545040, 29.253761, 25.999554>,  <37.595924, 29.885971, 26.009132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545040, 29.253761, 25.999554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191120, 29.429396, 26.061939>,  <36.978767, 29.534777, 26.099371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191120, 29.429396, 26.061939>,  <37.545040, 29.253761, 25.999554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191120, 29.429396, 26.061939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396762, -0.534427, -0.746302,
		-0.244338, -0.722213, 0.647076,
		-0.884804, 0.439086, 0.155966,
		36.925678, 29.561121, 26.108728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950161, 28.761372, 26.056646>,  <37.545040, 29.253761, 25.999554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950161, 28.761372, 26.056646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764694, 29.099070, 25.949118>,  <36.653416, 29.301689, 25.884602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764694, 29.099070, 25.949118>,  <36.950161, 28.761372, 26.056646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764694, 29.099070, 25.949118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596789, -0.521845, -0.609525,
		-0.654871, -0.122187, 0.745798,
		-0.463667, 0.844244, -0.268821,
		36.625595, 29.352343, 25.868471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362431, 28.565662, 25.992708>,  <36.950161, 28.761372, 26.056646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362431, 28.565662, 25.992708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342476, 28.917767, 25.803965>,  <36.330505, 29.129028, 25.690718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342476, 28.917767, 25.803965>,  <36.362431, 28.565662, 25.992708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342476, 28.917767, 25.803965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662434, -0.382736, -0.643967,
		-0.747457, 0.280454, 0.602207,
		-0.049883, 0.880261, -0.471861,
		36.327511, 29.181845, 25.662407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642830, 28.684649, 25.899105>,  <36.362431, 28.565662, 25.992708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642830, 28.684649, 25.899105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814899, 28.911123, 25.617855>,  <35.918140, 29.047009, 25.449106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814899, 28.911123, 25.617855>,  <35.642830, 28.684649, 25.899105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814899, 28.911123, 25.617855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683189, -0.304934, -0.663527,
		-0.590085, 0.765800, 0.255637,
		0.430177, 0.566186, -0.703123,
		35.943951, 29.080978, 25.406918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114510, 28.961515, 25.434227>,  <35.642830, 28.684649, 25.899105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114510, 28.961515, 25.434227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445007, 28.975658, 25.209345>,  <35.643307, 28.984144, 25.074415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445007, 28.975658, 25.209345>,  <35.114510, 28.961515, 25.434227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445007, 28.975658, 25.209345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551451, -0.152984, -0.820060,
		-0.115005, 0.987596, -0.106903,
		0.826242, 0.035359, -0.562204,
		35.692879, 28.986265, 25.040684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836170, 29.197565, 24.785927>,  <35.114510, 28.961515, 25.434227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836170, 29.197565, 24.785927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207809, 29.078308, 24.698389>,  <35.430794, 29.006754, 24.645866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207809, 29.078308, 24.698389>,  <34.836170, 29.197565, 24.785927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207809, 29.078308, 24.698389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260253, -0.106624, -0.959635,
		0.262776, 0.948547, -0.176657,
		0.929095, -0.298145, -0.218844,
		35.486538, 28.988865, 24.632736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051723, 29.590391, 24.285294>,  <34.836170, 29.197565, 24.785927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051723, 29.590391, 24.285294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277988, 29.261395, 24.261497>,  <35.413746, 29.063997, 24.247221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277988, 29.261395, 24.261497>,  <35.051723, 29.590391, 24.285294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277988, 29.261395, 24.261497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340675, -0.167381, -0.925162,
		0.750979, 0.543593, -0.374882,
		0.565660, -0.822490, -0.059488,
		35.447685, 29.014647, 24.243650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574596, 29.676300, 23.876862>,  <35.051723, 29.590391, 24.285294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574596, 29.676300, 23.876862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559689, 29.276690, 23.886272>,  <35.550743, 29.036922, 23.891918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559689, 29.276690, 23.886272>,  <35.574596, 29.676300, 23.876862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559689, 29.276690, 23.886272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009710, -0.023180, -0.999684,
		0.999258, -0.037486, -0.008837,
		-0.037269, -0.999028, 0.023527,
		35.548508, 28.976980, 23.893330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056061, 29.400356, 23.461554>,  <35.574596, 29.676300, 23.876862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056061, 29.400356, 23.461554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811737, 29.083759, 23.470055>,  <35.665142, 28.893801, 23.475155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811737, 29.083759, 23.470055>,  <36.056061, 29.400356, 23.461554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811737, 29.083759, 23.470055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030961, -0.050699, -0.998234,
		0.791173, -0.609071, 0.055473,
		-0.610808, -0.791493, 0.021255,
		35.628494, 28.846312, 23.476431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303299, 29.012529, 22.917515>,  <36.056061, 29.400356, 23.461554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303299, 29.012529, 22.917515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943211, 28.857742, 22.997377>,  <35.727158, 28.764870, 23.045294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943211, 28.857742, 22.997377>,  <36.303299, 29.012529, 22.917515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943211, 28.857742, 22.997377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142699, -0.171020, -0.974879,
		0.411390, -0.906096, 0.098736,
		-0.900220, -0.386966, 0.199655,
		35.673145, 28.741653, 23.057274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280521, 28.225185, 22.774689>,  <36.303299, 29.012529, 22.917515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280521, 28.225185, 22.774689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924664, 28.402498, 22.730806>,  <35.711147, 28.508886, 22.704477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924664, 28.402498, 22.730806>,  <36.280521, 28.225185, 22.774689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924664, 28.402498, 22.730806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039429, -0.313905, -0.948635,
		-0.454950, -0.839622, 0.296742,
		-0.889644, 0.443282, -0.109705,
		35.657768, 28.535482, 22.697895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956985, 27.848795, 22.321136>,  <36.280521, 28.225185, 22.774689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956985, 27.848795, 22.321136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741905, 28.186047, 22.322660>,  <35.612858, 28.388397, 22.323574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741905, 28.186047, 22.322660>,  <35.956985, 27.848795, 22.321136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741905, 28.186047, 22.322660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140861, -0.085377, -0.986341,
		-0.831287, -0.530890, 0.164671,
		-0.537698, 0.843129, 0.003809,
		35.580597, 28.438986, 22.323803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400288, 27.639778, 22.005903>,  <35.956985, 27.848795, 22.321136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400288, 27.639778, 22.005903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412685, 28.037586, 21.965960>,  <35.420124, 28.276270, 21.941994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412685, 28.037586, 21.965960>,  <35.400288, 27.639778, 22.005903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412685, 28.037586, 21.965960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266476, -0.088071, -0.959810,
		-0.963344, 0.056355, 0.262286,
		0.030990, 0.994519, -0.099859,
		35.421982, 28.335941, 21.936001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739120, 27.862000, 21.734739>,  <35.400288, 27.639778, 22.005903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739120, 27.862000, 21.734739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020164, 28.129515, 21.637531>,  <35.188793, 28.290024, 21.579206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020164, 28.129515, 21.637531>,  <34.739120, 27.862000, 21.734739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020164, 28.129515, 21.637531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249090, -0.088751, -0.964405,
		-0.666550, 0.738137, 0.104231,
		0.702613, 0.668788, -0.243019,
		35.230949, 28.330151, 21.564625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411915, 28.279322, 21.153393>,  <34.739120, 27.862000, 21.734739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411915, 28.279322, 21.153393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809933, 28.316067, 21.138224>,  <35.048744, 28.338114, 21.129122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809933, 28.316067, 21.138224>,  <34.411915, 28.279322, 21.153393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809933, 28.316067, 21.138224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022566, -0.162761, -0.986407,
		-0.096788, 0.982380, -0.159882,
		0.995049, 0.091864, -0.037921,
		35.108448, 28.343626, 21.126846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708435, 28.269526, 20.948278>,  <34.411915, 28.279322, 21.153393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708435, 28.269526, 20.948278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728291, 27.870081, 20.955322>,  <33.740204, 27.630415, 20.959549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728291, 27.870081, 20.955322>,  <33.708435, 28.269526, 20.948278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728291, 27.870081, 20.955322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511717, -0.040569, -0.858195,
		0.857718, 0.033591, -0.513021,
		0.049641, -0.998612, 0.017607,
		33.743183, 27.570498, 20.960604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735733, 28.938572, 20.795769>,  <33.708435, 28.269526, 20.948278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735733, 28.938572, 20.795769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341618, 29.004019, 20.815493>,  <33.105148, 29.043287, 20.827326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341618, 29.004019, 20.815493>,  <33.735733, 28.938572, 20.795769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341618, 29.004019, 20.815493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138011, 0.591753, 0.794218,
		0.100768, 0.789340, -0.605630,
		-0.985291, 0.163615, 0.049308,
		33.046032, 29.053102, 20.830284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621685, 29.730703, 20.755135>,  <33.735733, 28.938572, 20.795769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621685, 29.730703, 20.755135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313416, 29.544815, 20.929537>,  <33.128452, 29.433283, 21.034178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313416, 29.544815, 20.929537>,  <33.621685, 29.730703, 20.755135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313416, 29.544815, 20.929537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030373, 0.656651, 0.753583,
		-0.636508, 0.594008, -0.491947,
		-0.770672, -0.464719, 0.436005,
		33.082214, 29.405399, 21.060339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217560, 30.218702, 21.038403>,  <33.621685, 29.730703, 20.755135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217560, 30.218702, 21.038403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122929, 29.890417, 21.246426>,  <33.066151, 29.693445, 21.371241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122929, 29.890417, 21.246426>,  <33.217560, 30.218702, 21.038403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122929, 29.890417, 21.246426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131412, 0.557363, 0.819803,
		-0.962685, 0.125605, -0.239711,
		-0.236577, -0.820713, 0.520059,
		33.051956, 29.644203, 21.402443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719273, 30.425705, 21.533127>,  <33.217560, 30.218702, 21.038403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719273, 30.425705, 21.533127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.865845, 30.086357, 21.685966>,  <32.953789, 29.882748, 21.777670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.865845, 30.086357, 21.685966>,  <32.719273, 30.425705, 21.533127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865845, 30.086357, 21.685966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077680, 0.381336, 0.921167,
		-0.927198, -0.367223, 0.073831,
		0.366428, -0.848369, 0.382100,
		32.975773, 29.831846, 21.800596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227474, 30.292505, 22.064552>,  <32.719273, 30.425705, 21.533127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227474, 30.292505, 22.064552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542931, 30.060299, 22.145588>,  <32.732204, 29.920975, 22.194208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542931, 30.060299, 22.145588>,  <32.227474, 30.292505, 22.064552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542931, 30.060299, 22.145588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125827, 0.170138, 0.977354,
		-0.601839, -0.796274, 0.061133,
		0.788643, -0.580517, 0.202588,
		32.779522, 29.886145, 22.206364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148590, 30.070486, 22.823803>,  <32.227474, 30.292505, 22.064552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148590, 30.070486, 22.823803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528881, 29.952974, 22.784178>,  <32.757057, 29.882467, 22.760403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528881, 29.952974, 22.784178>,  <32.148590, 30.070486, 22.823803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528881, 29.952974, 22.784178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226652, 0.440590, 0.868625,
		-0.211541, -0.848277, 0.485466,
		0.950726, -0.293781, -0.099061,
		32.814098, 29.864840, 22.754459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395615, 29.747826, 23.416765>,  <32.148590, 30.070486, 22.823803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395615, 29.747826, 23.416765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753044, 29.847820, 23.267616>,  <32.967503, 29.907818, 23.178127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753044, 29.847820, 23.267616>,  <32.395615, 29.747826, 23.416765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753044, 29.847820, 23.267616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273223, 0.356199, 0.893572,
		0.356199, -0.900349, 0.249987,
		-0.893572, -0.249987, 0.372874,
		33.021114, 29.922817, 23.155754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886147, 29.504747, 23.902653>,  <32.395615, 29.747826, 23.416765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886147, 29.504747, 23.902653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068382, 29.797514, 23.699976>,  <33.177723, 29.973173, 23.578369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068382, 29.797514, 23.699976>,  <32.886147, 29.504747, 23.902653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068382, 29.797514, 23.699976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395894, 0.343220, 0.851744,
		0.797313, -0.588641, -0.133394,
		0.455588, 0.731917, -0.506693,
		33.205059, 30.017090, 23.547968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527252, 29.559433, 24.241199>,  <32.886147, 29.504747, 23.902653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527252, 29.559433, 24.241199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.462303, 29.911884, 24.063547>,  <33.423332, 30.123354, 23.956955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.462303, 29.911884, 24.063547>,  <33.527252, 29.559433, 24.241199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462303, 29.911884, 24.063547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384831, 0.471010, 0.793760,
		0.908593, -0.042031, -0.415564,
		-0.162372, 0.881126, -0.444131,
		33.413593, 30.176222, 23.930307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145363, 29.745733, 24.204224>,  <33.527252, 29.559433, 24.241199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145363, 29.745733, 24.204224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892971, 30.055874, 24.214802>,  <33.741535, 30.241959, 24.221149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892971, 30.055874, 24.214802>,  <34.145363, 29.745733, 24.204224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892971, 30.055874, 24.214802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556858, 0.428905, 0.711302,
		0.540166, 0.463541, -0.702389,
		-0.630975, 0.775352, 0.026447,
		33.703678, 30.288479, 24.222736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528179, 30.205238, 24.422060>,  <34.145363, 29.745733, 24.204224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528179, 30.205238, 24.422060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157795, 30.320820, 24.519302>,  <33.935566, 30.390169, 24.577648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157795, 30.320820, 24.519302>,  <34.528179, 30.205238, 24.422060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157795, 30.320820, 24.519302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324288, 0.278636, 0.903991,
		0.193474, 0.915897, -0.351710,
		-0.925962, 0.288954, 0.243105,
		33.880005, 30.407507, 24.592234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641251, 30.691044, 24.839413>,  <34.528179, 30.205238, 24.422060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641251, 30.691044, 24.839413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262672, 30.614552, 24.943476>,  <34.035526, 30.568657, 25.005913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262672, 30.614552, 24.943476>,  <34.641251, 30.691044, 24.839413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262672, 30.614552, 24.943476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208085, 0.254841, 0.944329,
		-0.246881, 0.947886, -0.201401,
		-0.946441, -0.191229, 0.260156,
		33.978741, 30.557182, 25.021523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481262, 31.165165, 25.260149>,  <34.641251, 30.691044, 24.839413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481262, 31.165165, 25.260149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209572, 30.884947, 25.347687>,  <34.046558, 30.716816, 25.400209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209572, 30.884947, 25.347687>,  <34.481262, 31.165165, 25.260149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209572, 30.884947, 25.347687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136168, 0.172719, 0.975513,
		-0.721190, 0.692390, -0.021922,
		-0.679222, -0.700546, 0.218845,
		34.005806, 30.674784, 25.413340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089886, 31.493605, 25.861536>,  <34.481262, 31.165165, 25.260149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089886, 31.493605, 25.861536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012833, 31.101248, 25.872471>,  <33.966602, 30.865833, 25.879032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012833, 31.101248, 25.872471>,  <34.089886, 31.493605, 25.861536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012833, 31.101248, 25.872471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171671, -0.006260, 0.985134,
		-0.966138, 0.194458, 0.169596,
		-0.192629, -0.980891, 0.027335,
		33.955044, 30.806980, 25.880671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773766, 31.516020, 26.433304>,  <34.089886, 31.493605, 25.861536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773766, 31.516020, 26.433304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882397, 31.140560, 26.348276>,  <33.947575, 30.915285, 26.297260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882397, 31.140560, 26.348276>,  <33.773766, 31.516020, 26.433304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882397, 31.140560, 26.348276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204879, -0.159421, 0.965717,
		-0.940357, -0.305816, 0.149015,
		0.271576, -0.938649, -0.212568,
		33.963871, 30.858965, 26.284506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373638, 31.111116, 26.862804>,  <33.773766, 31.516020, 26.433304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373638, 31.111116, 26.862804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.683819, 30.881214, 26.758247>,  <33.869926, 30.743273, 26.695513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.683819, 30.881214, 26.758247>,  <33.373638, 31.111116, 26.862804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683819, 30.881214, 26.758247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126924, -0.263644, 0.956234,
		-0.618517, -0.774692, -0.131493,
		0.775453, -0.574757, -0.261395,
		33.916454, 30.708788, 26.679829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298767, 30.540657, 27.285578>,  <33.373638, 31.111116, 26.862804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298767, 30.540657, 27.285578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681202, 30.561022, 27.170128>,  <33.910664, 30.573240, 27.100859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681202, 30.561022, 27.170128>,  <33.298767, 30.540657, 27.285578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681202, 30.561022, 27.170128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292975, -0.139585, 0.945876,
		0.007870, -0.988901, -0.148372,
		0.956088, 0.050913, -0.288625,
		33.968029, 30.576296, 27.083540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625687, 29.859913, 27.580864>,  <33.298767, 30.540657, 27.285578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625687, 29.859913, 27.580864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898392, 30.138245, 27.490519>,  <34.062016, 30.305244, 27.436312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898392, 30.138245, 27.490519>,  <33.625687, 29.859913, 27.580864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898392, 30.138245, 27.490519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372749, -0.064748, 0.925671,
		0.629487, -0.715281, -0.303513,
		0.681766, 0.695832, -0.225862,
		34.102921, 30.346994, 27.422760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273746, 29.651615, 27.834099>,  <33.625687, 29.859913, 27.580864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273746, 29.651615, 27.834099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371120, 30.033331, 27.764736>,  <34.429543, 30.262362, 27.723118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371120, 30.033331, 27.764736>,  <34.273746, 29.651615, 27.834099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371120, 30.033331, 27.764736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508999, 0.026498, 0.860359,
		0.825627, -0.297703, -0.479283,
		0.243431, 0.954291, -0.173408,
		34.444149, 30.319618, 27.712713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940422, 29.724556, 28.270691>,  <34.273746, 29.651615, 27.834099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940422, 29.724556, 28.270691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799397, 30.084673, 28.168577>,  <34.714783, 30.300743, 28.107309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799397, 30.084673, 28.168577>,  <34.940422, 29.724556, 28.270691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799397, 30.084673, 28.168577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422237, 0.396498, 0.815171,
		0.835114, 0.179609, -0.519929,
		-0.352563, 0.900294, -0.255283,
		34.693626, 30.354761, 28.091991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.778477, 31.091599, 31.705338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.495754, 31.357615, 31.608885>,  <39.326118, 31.517223, 31.551012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.495754, 31.357615, 31.608885>,  <39.778477, 31.091599, 31.705338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495754, 31.357615, 31.608885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449879, 0.685636, 0.572286,
		0.545922, 0.296016, -0.783800,
		-0.706808, 0.665040, -0.241133,
		39.283710, 31.557127, 31.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086823, 31.789921, 31.705963>,  <39.778477, 31.091599, 31.705338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086823, 31.789921, 31.705963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690701, 31.844282, 31.694445>,  <39.453026, 31.876900, 31.687534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690701, 31.844282, 31.694445>,  <40.086823, 31.789921, 31.705963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690701, 31.844282, 31.694445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103436, 0.859706, 0.500207,
		0.092736, 0.492378, -0.865427,
		-0.990304, 0.135903, -0.028796,
		39.393608, 31.885054, 31.685806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886383, 32.561192, 31.521988>,  <40.086823, 31.789921, 31.705963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886383, 32.561192, 31.521988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588974, 32.414001, 31.745333>,  <39.410526, 32.325687, 31.879339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588974, 32.414001, 31.745333>,  <39.886383, 32.561192, 31.521988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588974, 32.414001, 31.745333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016579, 0.844872, 0.534711,
		-0.668502, 0.388314, -0.634284,
		-0.743525, -0.367971, 0.558361,
		39.365917, 32.303612, 31.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382706, 33.071632, 31.582907>,  <39.886383, 32.561192, 31.521988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382706, 33.071632, 31.582907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340004, 32.831039, 31.899597>,  <39.314384, 32.686684, 32.089611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340004, 32.831039, 31.899597>,  <39.382706, 33.071632, 31.582907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340004, 32.831039, 31.899597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181091, 0.771194, 0.610300,
		-0.977655, 0.208527, 0.026593,
		-0.106756, -0.601478, 0.791724,
		39.307976, 32.650597, 32.137115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213512, 33.543041, 32.077435>,  <39.382706, 33.071632, 31.582907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213512, 33.543041, 32.077435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287552, 33.205017, 32.278080>,  <39.331978, 33.002205, 32.398468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287552, 33.205017, 32.278080>,  <39.213512, 33.543041, 32.077435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287552, 33.205017, 32.278080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238184, 0.533791, 0.811379,
		-0.953418, -0.030712, 0.300085,
		0.185102, -0.845059, 0.501611,
		39.343082, 32.951500, 32.428562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867153, 33.593403, 32.731316>,  <39.213512, 33.543041, 32.077435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867153, 33.593403, 32.731316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149487, 33.314999, 32.784035>,  <39.318886, 33.147957, 32.815666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149487, 33.314999, 32.784035>,  <38.867153, 33.593403, 32.731316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149487, 33.314999, 32.784035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208375, 0.381824, 0.900439,
		-0.677037, -0.608097, 0.414535,
		0.705833, -0.696009, 0.131797,
		39.361237, 33.106197, 32.823574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904678, 33.390347, 33.450195>,  <38.867153, 33.593403, 32.731316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904678, 33.390347, 33.450195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265705, 33.273548, 33.323635>,  <39.482323, 33.203468, 33.247700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265705, 33.273548, 33.323635>,  <38.904678, 33.390347, 33.450195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265705, 33.273548, 33.323635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417291, 0.412289, 0.809868,
		-0.106028, -0.862993, 0.493965,
		0.902567, -0.291996, -0.316405,
		39.536476, 33.185951, 33.228714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263737, 32.900303, 33.990097>,  <38.904678, 33.390347, 33.450195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263737, 32.900303, 33.990097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544933, 33.077099, 33.767223>,  <39.713650, 33.183178, 33.633499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544933, 33.077099, 33.767223>,  <39.263737, 32.900303, 33.990097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544933, 33.077099, 33.767223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269125, 0.559859, 0.783665,
		0.658317, -0.700857, 0.274622,
		0.702987, 0.441992, -0.557182,
		39.755829, 33.209694, 33.600067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882000, 32.855537, 34.389988>,  <39.263737, 32.900303, 33.990097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882000, 32.855537, 34.389988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933937, 33.144081, 34.117874>,  <39.965099, 33.317207, 33.954605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933937, 33.144081, 34.117874>,  <39.882000, 32.855537, 34.389988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933937, 33.144081, 34.117874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136502, 0.666554, 0.732852,
		0.982094, -0.188012, -0.011922,
		0.129839, 0.721357, -0.680283,
		39.972889, 33.360489, 33.913788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379742, 33.324776, 34.687481>,  <39.882000, 32.855537, 34.389988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379742, 33.324776, 34.687481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251144, 33.562988, 34.393002>,  <40.173988, 33.705917, 34.216312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251144, 33.562988, 34.393002>,  <40.379742, 33.324776, 34.687481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251144, 33.562988, 34.393002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223949, 0.803234, 0.551962,
		0.920050, 0.012579, -0.391600,
		-0.321489, 0.595531, -0.736198,
		40.154697, 33.741646, 34.172142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872158, 33.883446, 34.499809>,  <40.379742, 33.324776, 34.687481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872158, 33.883446, 34.499809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522572, 34.030205, 34.372334>,  <40.312820, 34.118259, 34.295849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522572, 34.030205, 34.372334>,  <40.872158, 33.883446, 34.499809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522572, 34.030205, 34.372334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126000, 0.804409, 0.580560,
		0.469364, 0.467236, -0.749258,
		-0.873969, 0.366900, -0.318689,
		40.260380, 34.140274, 34.276726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021202, 34.663765, 34.431526>,  <40.872158, 33.883446, 34.499809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021202, 34.663765, 34.431526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621693, 34.643993, 34.430843>,  <40.381985, 34.632130, 34.430435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621693, 34.643993, 34.430843>,  <41.021202, 34.663765, 34.431526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621693, 34.643993, 34.430843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041868, 0.826612, 0.561212,
		-0.026333, 0.560597, -0.827670,
		-0.998776, -0.049431, -0.001704,
		40.322060, 34.629166, 34.430332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771614, 35.371292, 34.368481>,  <41.021202, 34.663765, 34.431526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771614, 35.371292, 34.368481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.497585, 35.136795, 34.541454>,  <40.333168, 34.996098, 34.645237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.497585, 35.136795, 34.541454>,  <40.771614, 35.371292, 34.368481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497585, 35.136795, 34.541454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145668, 0.691865, 0.707180,
		-0.713767, 0.421474, -0.559371,
		-0.685068, -0.586244, 0.432435,
		40.292065, 34.960922, 34.671185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192242, 35.805149, 34.432178>,  <40.771614, 35.371292, 34.368481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192242, 35.805149, 34.432178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135586, 35.487888, 34.669109>,  <40.101593, 35.297531, 34.811268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135586, 35.487888, 34.669109>,  <40.192242, 35.805149, 34.432178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135586, 35.487888, 34.669109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437774, 0.586860, 0.681138,
		-0.887858, -0.162828, -0.430344,
		-0.141643, -0.793147, 0.592330,
		40.093094, 35.249943, 34.846809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610836, 36.340931, 34.463379>,  <40.192242, 35.805149, 34.432178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610836, 36.340931, 34.463379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.613220, 36.688877, 34.266075>,  <40.614651, 36.897644, 34.147694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.613220, 36.688877, 34.266075>,  <40.610836, 36.340931, 34.463379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613220, 36.688877, 34.266075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492754, -0.426667, -0.758385,
		-0.870148, 0.247579, 0.426083,
		0.005964, 0.869862, -0.493259,
		40.615009, 36.949837, 34.118099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919018, 36.480751, 34.303299>,  <40.610836, 36.340931, 34.463379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919018, 36.480751, 34.303299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158867, 36.657162, 34.036182>,  <40.302776, 36.763008, 33.875912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158867, 36.657162, 34.036182>,  <39.919018, 36.480751, 34.303299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158867, 36.657162, 34.036182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612146, -0.284730, -0.737703,
		-0.515485, 0.851133, 0.099240,
		0.599627, 0.441024, -0.667792,
		40.338757, 36.789471, 33.835846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470554, 36.749424, 33.836056>,  <39.919018, 36.480751, 34.303299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470554, 36.749424, 33.836056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820522, 36.739388, 33.642605>,  <40.030502, 36.733364, 33.526535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820522, 36.739388, 33.642605>,  <39.470554, 36.749424, 33.836056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820522, 36.739388, 33.642605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467055, -0.307658, -0.828979,
		-0.127991, 0.951166, -0.280893,
		0.874916, -0.025090, -0.483625,
		40.082996, 36.731861, 33.497517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345203, 36.998943, 33.153454>,  <39.470554, 36.749424, 33.836056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345203, 36.998943, 33.153454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694359, 36.822254, 33.070560>,  <39.903851, 36.716240, 33.020824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694359, 36.822254, 33.070560>,  <39.345203, 36.998943, 33.153454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694359, 36.822254, 33.070560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308818, -0.171325, -0.935564,
		0.377759, 0.880639, -0.285961,
		0.872886, -0.441727, -0.207238,
		39.956226, 36.689735, 33.008389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505665, 37.096073, 32.423988>,  <39.345203, 36.998943, 33.153454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505665, 37.096073, 32.423988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769753, 36.803310, 32.491417>,  <39.928207, 36.627651, 32.531876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769753, 36.803310, 32.491417>,  <39.505665, 37.096073, 32.423988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769753, 36.803310, 32.491417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160134, -0.356454, -0.920488,
		0.733800, 0.580734, -0.352543,
		0.660224, -0.731908, 0.168571,
		39.967819, 36.583736, 32.541988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991543, 37.065159, 31.924534>,  <39.505665, 37.096073, 32.423988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991543, 37.065159, 31.924534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.016476, 36.687183, 32.053036>,  <40.031433, 36.460400, 32.130138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.016476, 36.687183, 32.053036>,  <39.991543, 37.065159, 31.924534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016476, 36.687183, 32.053036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150073, -0.327093, -0.932999,
		0.986708, 0.009941, -0.162197,
		0.062328, -0.944940, 0.321254,
		40.035175, 36.403702, 32.149410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595070, 36.681545, 31.504986>,  <39.991543, 37.065159, 31.924534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595070, 36.681545, 31.504986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349522, 36.398106, 31.644157>,  <40.202194, 36.228043, 31.727659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349522, 36.398106, 31.644157>,  <40.595070, 36.681545, 31.504986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349522, 36.398106, 31.644157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074612, -0.386690, -0.919186,
		0.785877, -0.590217, 0.184506,
		-0.613866, -0.708601, 0.347928,
		40.165363, 36.185524, 31.748535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723183, 36.064007, 31.018097>,  <40.595070, 36.681545, 31.504986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723183, 36.064007, 31.018097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414402, 35.907082, 31.218170>,  <40.229134, 35.812927, 31.338215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414402, 35.907082, 31.218170>,  <40.723183, 36.064007, 31.018097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414402, 35.907082, 31.218170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319925, -0.440164, -0.838990,
		0.549311, -0.807679, 0.214273,
		-0.771949, -0.392315, 0.500183,
		40.182816, 35.789387, 31.368225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719925, 35.351562, 30.807875>,  <40.723183, 36.064007, 31.018097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719925, 35.351562, 30.807875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.363873, 35.468979, 30.947304>,  <40.150242, 35.539429, 31.030960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.363873, 35.468979, 30.947304>,  <40.719925, 35.351562, 30.807875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363873, 35.468979, 30.947304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452717, -0.482118, -0.750073,
		-0.052126, -0.825466, 0.562039,
		-0.890129, 0.293543, 0.348571,
		40.096832, 35.557041, 31.051876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264057, 34.746254, 30.549379>,  <40.719925, 35.351562, 30.807875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264057, 34.746254, 30.549379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043072, 35.064800, 30.647840>,  <39.910480, 35.255928, 30.706917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043072, 35.064800, 30.647840>,  <40.264057, 34.746254, 30.549379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043072, 35.064800, 30.647840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619625, -0.194838, -0.760331,
		-0.557541, -0.572575, 0.601087,
		-0.552461, 0.796364, 0.246151,
		39.877335, 35.303711, 30.721685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551888, 34.492264, 30.625885>,  <40.264057, 34.746254, 30.549379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551888, 34.492264, 30.625885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574150, 34.876621, 30.517384>,  <39.587509, 35.107235, 30.452282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574150, 34.876621, 30.517384>,  <39.551888, 34.492264, 30.625885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574150, 34.876621, 30.517384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438389, -0.220569, -0.871300,
		-0.897060, 0.167410, 0.408971,
		0.055658, 0.960897, -0.271255,
		39.590847, 35.164890, 30.436007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861313, 34.696724, 30.531958>,  <39.551888, 34.492264, 30.625885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861313, 34.696724, 30.531958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.094063, 34.930851, 30.306099>,  <39.233711, 35.071327, 30.170584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.094063, 34.930851, 30.306099>,  <38.861313, 34.696724, 30.531958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094063, 34.930851, 30.306099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500665, -0.289323, -0.815860,
		-0.640903, 0.757426, 0.124699,
		0.581875, 0.585319, -0.564644,
		39.268623, 35.106445, 30.136705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494774, 34.614437, 29.996506>,  <38.861313, 34.696724, 30.531958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494774, 34.614437, 29.996506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812687, 34.817440, 29.863382>,  <39.003433, 34.939243, 29.783508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812687, 34.817440, 29.863382>,  <38.494774, 34.614437, 29.996506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812687, 34.817440, 29.863382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236360, -0.246236, -0.939948,
		-0.558978, 0.825715, -0.075750,
		0.794781, 0.507506, -0.332806,
		39.051121, 34.969692, 29.763540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302940, 35.204388, 29.572222>,  <38.494774, 34.614437, 29.996506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302940, 35.204388, 29.572222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.678696, 35.100929, 29.482204>,  <38.904148, 35.038853, 29.428194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.678696, 35.100929, 29.482204>,  <38.302940, 35.204388, 29.572222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678696, 35.100929, 29.482204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292033, -0.259782, -0.920451,
		0.179609, 0.930385, -0.319570,
		0.939392, -0.258646, -0.225044,
		38.960514, 35.023335, 29.414692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055595, 35.889400, 29.303288>,  <38.302940, 35.204388, 29.572222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055595, 35.889400, 29.303288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.720619, 36.079597, 29.195517>,  <37.519634, 36.193718, 29.130854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.720619, 36.079597, 29.195517>,  <38.055595, 35.889400, 29.303288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720619, 36.079597, 29.195517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016199, 0.514365, 0.857418,
		0.546284, 0.713675, -0.438455,
		-0.837443, 0.475496, -0.269428,
		37.469387, 36.222248, 29.114689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191849, 36.550667, 29.374634>,  <38.055595, 35.889400, 29.303288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191849, 36.550667, 29.374634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792709, 36.559280, 29.349855>,  <37.553226, 36.564449, 29.334990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792709, 36.559280, 29.349855>,  <38.191849, 36.550667, 29.374634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792709, 36.559280, 29.349855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039045, 0.563814, 0.824978,
		0.052690, 0.825621, -0.561760,
		-0.997847, 0.021534, -0.061944,
		37.493355, 36.565739, 29.331272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032196, 37.154400, 29.600155>,  <38.191849, 36.550667, 29.374634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032196, 37.154400, 29.600155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688663, 36.953041, 29.638081>,  <37.482544, 36.832226, 29.660837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688663, 36.953041, 29.638081>,  <38.032196, 37.154400, 29.600155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688663, 36.953041, 29.638081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136550, 0.403381, 0.904786,
		-0.493716, 0.764116, -0.415177,
		-0.858836, -0.503400, 0.094815,
		37.431011, 36.802021, 29.666525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546776, 37.705273, 29.694408>,  <38.032196, 37.154400, 29.600155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546776, 37.705273, 29.694408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416023, 37.361137, 29.850849>,  <37.337570, 37.154655, 29.944714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416023, 37.361137, 29.850849>,  <37.546776, 37.705273, 29.694408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416023, 37.361137, 29.850849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272505, 0.482063, 0.832680,
		-0.904924, 0.165613, -0.392026,
		-0.326884, -0.860342, 0.391100,
		37.317959, 37.103035, 29.968180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025009, 37.929195, 30.057375>,  <37.546776, 37.705273, 29.694408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025009, 37.929195, 30.057375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.033325, 37.558380, 30.207130>,  <37.038315, 37.335892, 30.296984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.033325, 37.558380, 30.207130>,  <37.025009, 37.929195, 30.057375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033325, 37.558380, 30.207130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208869, 0.362179, 0.908405,
		-0.977723, -0.097080, -0.186101,
		0.020786, -0.927039, 0.374388,
		37.039562, 37.280270, 30.319447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456284, 37.757389, 30.599169>,  <37.025009, 37.929195, 30.057375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456284, 37.757389, 30.599169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.727856, 37.477028, 30.686602>,  <36.890800, 37.308811, 30.739061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.727856, 37.477028, 30.686602>,  <36.456284, 37.757389, 30.599169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727856, 37.477028, 30.686602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057306, 0.246220, 0.967518,
		-0.731961, -0.669406, 0.127001,
		0.678932, -0.700908, 0.218584,
		36.931534, 37.266754, 30.752176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195034, 37.508324, 31.082411>,  <36.456284, 37.757389, 30.599169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195034, 37.508324, 31.082411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.575645, 37.394196, 31.128355>,  <36.804012, 37.325718, 31.155922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.575645, 37.394196, 31.128355>,  <36.195034, 37.508324, 31.082411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575645, 37.394196, 31.128355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085413, 0.113633, 0.989845,
		-0.295472, -0.951673, 0.083755,
		0.951525, -0.285317, 0.114861,
		36.861103, 37.308601, 31.162813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235435, 37.159306, 31.683525>,  <36.195034, 37.508324, 31.082411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235435, 37.159306, 31.683525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.614212, 37.277351, 31.632605>,  <36.841480, 37.348179, 31.602053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.614212, 37.277351, 31.632605>,  <36.235435, 37.159306, 31.683525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614212, 37.277351, 31.632605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053043, 0.247157, 0.967523,
		0.316995, -0.922941, 0.218389,
		0.946943, 0.295116, -0.127303,
		36.898296, 37.365887, 31.594414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637497, 36.842709, 32.232864>,  <36.235435, 37.159306, 31.683525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637497, 36.842709, 32.232864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860294, 37.155376, 32.120613>,  <36.993973, 37.342976, 32.053265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860294, 37.155376, 32.120613>,  <36.637497, 36.842709, 32.232864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860294, 37.155376, 32.120613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134350, 0.248638, 0.959234,
		0.819579, -0.571988, 0.033472,
		0.556993, 0.781670, -0.280625,
		37.027393, 37.389877, 32.036427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375957, 36.830597, 32.609161>,  <36.637497, 36.842709, 32.232864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375957, 36.830597, 32.609161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.327457, 37.213326, 32.503483>,  <37.298359, 37.442963, 32.440075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.327457, 37.213326, 32.503483>,  <37.375957, 36.830597, 32.609161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327457, 37.213326, 32.503483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416683, 0.290635, 0.861340,
		0.900930, -0.005651, -0.433928,
		-0.121247, 0.956817, -0.264197,
		37.291084, 37.500370, 32.424225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009541, 37.110039, 32.799831>,  <37.375957, 36.830597, 32.609161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009541, 37.110039, 32.799831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732536, 37.396961, 32.769123>,  <37.566334, 37.569115, 32.750698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732536, 37.396961, 32.769123>,  <38.009541, 37.110039, 32.799831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732536, 37.396961, 32.769123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243796, 0.332863, 0.910915,
		0.678963, 0.612103, -0.405389,
		-0.692513, 0.717309, -0.076773,
		37.524784, 37.612152, 32.746090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201427, 37.636677, 33.176296>,  <38.009541, 37.110039, 32.799831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201427, 37.636677, 33.176296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808319, 37.704388, 33.146606>,  <37.572453, 37.745014, 33.128792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808319, 37.704388, 33.146606>,  <38.201427, 37.636677, 33.176296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808319, 37.704388, 33.146606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006266, 0.370835, 0.928678,
		0.184727, 0.913141, -0.363385,
		-0.982770, 0.169275, -0.074225,
		37.513489, 37.755169, 33.124340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.458466, 34.841007, 25.412079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106972, 34.797554, 25.597994>,  <36.896076, 34.771481, 25.709543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106972, 34.797554, 25.597994>,  <37.458466, 34.841007, 25.412079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106972, 34.797554, 25.597994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340119, 0.540676, 0.769408,
		-0.334885, 0.834187, -0.438160,
		-0.878733, -0.108637, 0.464787,
		36.843353, 34.764961, 25.737431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597504, 35.280724, 25.896959>,  <37.458466, 34.841007, 25.412079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597504, 35.280724, 25.896959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243279, 35.146553, 26.025503>,  <37.030743, 35.066051, 26.102631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243279, 35.146553, 26.025503>,  <37.597504, 35.280724, 25.896959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243279, 35.146553, 26.025503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121599, 0.500291, 0.857276,
		-0.448329, 0.798246, -0.402250,
		-0.885559, -0.335428, 0.321361,
		36.977612, 35.045925, 26.121912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262394, 35.890099, 26.175503>,  <37.597504, 35.280724, 25.896959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262394, 35.890099, 26.175503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080997, 35.567909, 26.328112>,  <36.972160, 35.374596, 26.419678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080997, 35.567909, 26.328112>,  <37.262394, 35.890099, 26.175503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080997, 35.567909, 26.328112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107453, 0.474359, 0.873749,
		-0.884759, 0.355242, -0.301668,
		-0.453492, -0.805473, 0.381522,
		36.944950, 35.326267, 26.442568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737297, 36.141304, 26.531101>,  <37.262394, 35.890099, 26.175503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737297, 36.141304, 26.531101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777199, 35.772568, 26.680906>,  <36.801140, 35.551327, 26.770790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777199, 35.772568, 26.680906>,  <36.737297, 36.141304, 26.531101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777199, 35.772568, 26.680906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118932, 0.362647, 0.924307,
		-0.987879, -0.136741, -0.073462,
		0.099750, -0.921840, 0.374514,
		36.807125, 35.496017, 26.793261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168308, 36.023293, 27.020706>,  <36.737297, 36.141304, 26.531101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168308, 36.023293, 27.020706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477196, 35.784565, 27.107880>,  <36.662529, 35.641331, 27.160185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477196, 35.784565, 27.107880>,  <36.168308, 36.023293, 27.020706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477196, 35.784565, 27.107880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067941, 0.263477, 0.962270,
		-0.631720, -0.757885, 0.162913,
		0.772214, -0.596817, 0.217935,
		36.708858, 35.605518, 27.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019634, 35.656166, 27.715786>,  <36.168308, 36.023293, 27.020706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019634, 35.656166, 27.715786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416840, 35.655342, 27.668606>,  <36.655163, 35.654846, 27.640299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416840, 35.655342, 27.668606>,  <36.019634, 35.656166, 27.715786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416840, 35.655342, 27.668606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111707, 0.337804, 0.934564,
		0.037917, -0.941214, 0.335676,
		0.993018, -0.002062, -0.117949,
		36.714745, 35.654724, 27.633221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354488, 35.491131, 28.358902>,  <36.019634, 35.656166, 27.715786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354488, 35.491131, 28.358902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650913, 35.678085, 28.166080>,  <36.828770, 35.790257, 28.050388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650913, 35.678085, 28.166080>,  <36.354488, 35.491131, 28.358902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650913, 35.678085, 28.166080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302377, 0.408709, 0.861119,
		0.599496, -0.783904, 0.161551,
		0.741062, 0.467388, -0.482053,
		36.873234, 35.818302, 28.021465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946468, 35.325573, 28.689016>,  <36.354488, 35.491131, 28.358902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946468, 35.325573, 28.689016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073135, 35.657001, 28.504328>,  <37.149136, 35.855858, 28.393515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073135, 35.657001, 28.504328>,  <36.946468, 35.325573, 28.689016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073135, 35.657001, 28.504328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332457, 0.358943, 0.872143,
		0.888367, -0.429679, -0.161801,
		0.316665, 0.828575, -0.461723,
		37.168137, 35.905575, 28.365810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652378, 35.425041, 28.927713>,  <36.946468, 35.325573, 28.689016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652378, 35.425041, 28.927713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502033, 35.776943, 28.811264>,  <37.411827, 35.988087, 28.741394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502033, 35.776943, 28.811264>,  <37.652378, 35.425041, 28.927713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502033, 35.776943, 28.811264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302945, 0.413551, 0.858603,
		0.875758, 0.234521, -0.421957,
		-0.375861, 0.879759, -0.291124,
		37.389275, 36.040871, 28.723927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431419, 35.277641, 28.801306>,  <37.652378, 35.425041, 28.927713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431419, 35.277641, 28.801306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757217, 35.058159, 28.876684>,  <38.952698, 34.926468, 28.921911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757217, 35.058159, 28.876684>,  <38.431419, 35.277641, 28.801306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757217, 35.058159, 28.876684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015031, -0.344666, -0.938605,
		0.579969, 0.761661, -0.288978,
		0.814500, -0.548706, 0.188447,
		39.001568, 34.893547, 28.933218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954918, 35.443138, 28.280294>,  <38.431419, 35.277641, 28.801306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954918, 35.443138, 28.280294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981712, 35.079899, 28.445641>,  <38.997787, 34.861954, 28.544847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981712, 35.079899, 28.445641>,  <38.954918, 35.443138, 28.280294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981712, 35.079899, 28.445641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157720, -0.418723, -0.894313,
		0.985209, -0.005288, -0.171274,
		0.066988, -0.908099, 0.413364,
		39.001808, 34.807468, 28.569651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365669, 35.012589, 27.728504>,  <38.954918, 35.443138, 28.280294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365669, 35.012589, 27.728504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232792, 34.726467, 27.974426>,  <39.153065, 34.554794, 28.121979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232792, 34.726467, 27.974426>,  <39.365669, 35.012589, 27.728504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232792, 34.726467, 27.974426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070062, -0.631307, -0.772362,
		0.940606, -0.299648, 0.159601,
		-0.332194, -0.715306, 0.614805,
		39.133133, 34.511875, 28.158867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755177, 34.443913, 27.464693>,  <39.365669, 35.012589, 27.728504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755177, 34.443913, 27.464693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458088, 34.286728, 27.681562>,  <39.279835, 34.192417, 27.811684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458088, 34.286728, 27.681562>,  <39.755177, 34.443913, 27.464693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458088, 34.286728, 27.681562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069200, -0.760314, -0.645859,
		0.666019, -0.517209, 0.537506,
		-0.742718, -0.392959, 0.542175,
		39.235271, 34.168839, 27.844215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998718, 33.815865, 27.823751>,  <39.755177, 34.443913, 27.464693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998718, 33.815865, 27.823751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600368, 33.790314, 27.797941>,  <39.361359, 33.774982, 27.782455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600368, 33.790314, 27.797941>,  <39.998718, 33.815865, 27.823751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600368, 33.790314, 27.797941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084271, -0.914788, -0.395046,
		-0.033793, -0.398851, 0.916393,
		-0.995870, -0.063875, -0.064525,
		39.301609, 33.771152, 27.778584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919559, 33.114304, 27.758802>,  <39.998718, 33.815865, 27.823751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919559, 33.114304, 27.758802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562828, 33.244473, 27.633108>,  <39.348789, 33.322575, 27.557692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562828, 33.244473, 27.633108>,  <39.919559, 33.114304, 27.758802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562828, 33.244473, 27.633108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086948, -0.804993, -0.586879,
		-0.443939, -0.496073, 0.746210,
		-0.891828, 0.325420, -0.314235,
		39.295280, 33.342098, 27.538837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437950, 32.468163, 27.553146>,  <39.919559, 33.114304, 27.758802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437950, 32.468163, 27.553146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290535, 32.790588, 27.367916>,  <39.202084, 32.984043, 27.256779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290535, 32.790588, 27.367916>,  <39.437950, 32.468163, 27.553146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290535, 32.790588, 27.367916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283567, -0.571875, -0.769772,
		-0.885307, -0.152379, 0.439332,
		-0.368540, 0.806064, -0.463075,
		39.179974, 33.032406, 27.228994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787354, 32.327168, 27.410969>,  <39.437950, 32.468163, 27.553146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787354, 32.327168, 27.410969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849464, 32.627777, 27.154499>,  <38.886730, 32.808144, 27.000618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849464, 32.627777, 27.154499>,  <38.787354, 32.327168, 27.410969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849464, 32.627777, 27.154499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395803, -0.547342, -0.737398,
		-0.905113, 0.368279, 0.212465,
		0.155277, 0.751523, -0.641173,
		38.896046, 32.853233, 26.962147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209343, 32.339741, 26.963827>,  <38.787354, 32.327168, 27.410969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209343, 32.339741, 26.963827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489216, 32.544262, 26.764221>,  <38.657139, 32.666977, 26.644457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489216, 32.544262, 26.764221>,  <38.209343, 32.339741, 26.963827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489216, 32.544262, 26.764221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253014, -0.475863, -0.842341,
		-0.668156, 0.715626, -0.203584,
		0.699679, 0.511306, -0.499014,
		38.699120, 32.697655, 26.614517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837929, 32.613029, 26.369223>,  <38.209343, 32.339741, 26.963827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837929, 32.613029, 26.369223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229412, 32.597740, 26.288563>,  <38.464302, 32.588566, 26.240168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229412, 32.597740, 26.288563>,  <37.837929, 32.613029, 26.369223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229412, 32.597740, 26.288563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175621, -0.664390, -0.726459,
		-0.106207, 0.746408, -0.656959,
		0.978712, -0.038221, -0.201647,
		38.523026, 32.586273, 26.228069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803967, 32.654476, 25.733541>,  <37.837929, 32.613029, 26.369223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803967, 32.654476, 25.733541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181324, 32.532917, 25.786699>,  <38.407738, 32.459984, 25.818594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181324, 32.532917, 25.786699>,  <37.803967, 32.654476, 25.733541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181324, 32.532917, 25.786699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072535, -0.579992, -0.811386,
		0.323653, 0.755816, -0.569203,
		0.943392, -0.303894, 0.132893,
		38.464340, 32.441750, 25.826567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069450, 32.715454, 25.152817>,  <37.803967, 32.654476, 25.733541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069450, 32.715454, 25.152817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304142, 32.439896, 25.323072>,  <38.444958, 32.274559, 25.425226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304142, 32.439896, 25.323072>,  <38.069450, 32.715454, 25.152817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304142, 32.439896, 25.323072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055774, -0.489997, -0.869938,
		0.807860, 0.534158, -0.249074,
		0.586730, -0.688896, 0.425641,
		38.480160, 32.233227, 25.450766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657253, 32.604252, 24.701349>,  <38.069450, 32.715454, 25.152817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657253, 32.604252, 24.701349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642662, 32.282814, 24.938972>,  <38.633907, 32.089951, 25.081547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642662, 32.282814, 24.938972>,  <38.657253, 32.604252, 24.701349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642662, 32.282814, 24.938972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150628, -0.592084, -0.791674,
		0.987917, 0.060603, 0.142643,
		-0.036479, -0.803594, 0.594059,
		38.631718, 32.041737, 25.117189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319538, 32.156815, 24.691183>,  <38.657253, 32.604252, 24.701349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319538, 32.156815, 24.691183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991531, 31.942343, 24.771278>,  <38.794727, 31.813662, 24.819336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991531, 31.942343, 24.771278>,  <39.319538, 32.156815, 24.691183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991531, 31.942343, 24.771278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185452, -0.579892, -0.793305,
		0.541468, -0.613385, 0.574953,
		-0.820012, -0.536175, 0.200239,
		38.745529, 31.781490, 24.831350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.735373, 31.804262, 27.023905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.938501, 32.071674, 26.806581>,  <32.060379, 32.232121, 26.676188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.938501, 32.071674, 26.806581>,  <31.735373, 31.804262, 27.023905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938501, 32.071674, 26.806581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570101, 0.212019, 0.793746,
		0.645835, -0.712822, -0.273462,
		0.507821, 0.668530, -0.543310,
		32.090847, 32.272232, 26.643589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464039, 31.694237, 27.023764>,  <31.735373, 31.804262, 27.023905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464039, 31.694237, 27.023764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.406017, 32.084145, 26.955906>,  <32.371204, 32.318089, 26.915192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.406017, 32.084145, 26.955906>,  <32.464039, 31.694237, 27.023764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406017, 32.084145, 26.955906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717232, 0.221703, 0.660626,
		0.681570, -0.025847, -0.731296,
		-0.145055, 0.974772, -0.169645,
		32.362499, 32.376575, 26.905012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974117, 31.978445, 27.387243>,  <32.464039, 31.694237, 27.023764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974117, 31.978445, 27.387243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790791, 32.323196, 27.300423>,  <32.680794, 32.530048, 27.248331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790791, 32.323196, 27.300423>,  <32.974117, 31.978445, 27.387243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790791, 32.323196, 27.300423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570840, 0.472636, 0.671385,
		0.681237, 0.183808, -0.708612,
		-0.458321, 0.861876, -0.217052,
		32.653294, 32.581760, 27.235308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555084, 32.416752, 27.357777>,  <32.974117, 31.978445, 27.387243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555084, 32.416752, 27.357777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.234234, 32.646267, 27.423954>,  <33.041725, 32.783974, 27.463661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.234234, 32.646267, 27.423954>,  <33.555084, 32.416752, 27.357777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234234, 32.646267, 27.423954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464386, 0.425181, 0.776896,
		0.375426, 0.699996, -0.607504,
		-0.802123, 0.573783, 0.165444,
		32.993599, 32.818401, 27.473587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820423, 33.109875, 27.419003>,  <33.555084, 32.416752, 27.357777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820423, 33.109875, 27.419003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.471371, 33.056316, 27.606869>,  <33.261940, 33.024181, 27.719589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.471371, 33.056316, 27.606869>,  <33.820423, 33.109875, 27.419003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471371, 33.056316, 27.606869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349001, 0.501755, 0.791480,
		-0.341630, 0.854585, -0.391119,
		-0.872632, -0.133893, 0.469665,
		33.209579, 33.016148, 27.747768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816933, 33.635700, 27.913305>,  <33.820423, 33.109875, 27.419003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816933, 33.635700, 27.913305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.504482, 33.450718, 28.081104>,  <33.317013, 33.339729, 28.181784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.504482, 33.450718, 28.081104>,  <33.816933, 33.635700, 27.913305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504482, 33.450718, 28.081104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258500, 0.372051, 0.891491,
		-0.568350, 0.804806, -0.171073,
		-0.781125, -0.462457, 0.419498,
		33.270145, 33.311981, 28.206953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347061, 34.139786, 28.197647>,  <33.816933, 33.635700, 27.913305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347061, 34.139786, 28.197647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231342, 33.809872, 28.391979>,  <33.161911, 33.611923, 28.508579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231342, 33.809872, 28.391979>,  <33.347061, 34.139786, 28.197647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231342, 33.809872, 28.391979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127637, 0.469764, 0.873516,
		-0.948691, 0.314718, -0.030629,
		-0.289300, -0.824788, 0.485830,
		33.144554, 33.562435, 28.537727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891605, 34.375534, 28.656925>,  <33.347061, 34.139786, 28.197647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891605, 34.375534, 28.656925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003300, 34.018093, 28.797493>,  <33.070316, 33.803627, 28.881834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003300, 34.018093, 28.797493>,  <32.891605, 34.375534, 28.656925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003300, 34.018093, 28.797493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041308, 0.376818, 0.925366,
		-0.959333, -0.243880, 0.142134,
		0.279237, -0.893606, 0.351420,
		33.087070, 33.750011, 28.902920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396660, 34.295071, 29.152687>,  <32.891605, 34.375534, 28.656925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396660, 34.295071, 29.152687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715523, 34.063282, 29.220510>,  <32.906841, 33.924210, 29.261204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715523, 34.063282, 29.220510>,  <32.396660, 34.295071, 29.152687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715523, 34.063282, 29.220510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031953, 0.239950, 0.970259,
		-0.602928, -0.778865, 0.172762,
		0.797156, -0.579476, 0.169559,
		32.954670, 33.889439, 29.271378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196426, 33.834171, 29.741856>,  <32.396660, 34.295071, 29.152687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196426, 33.834171, 29.741856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594433, 33.867912, 29.720617>,  <32.833237, 33.888157, 29.707874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594433, 33.867912, 29.720617>,  <32.196426, 33.834171, 29.741856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594433, 33.867912, 29.720617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054716, -0.017006, 0.998357,
		0.083310, -0.996291, -0.021537,
		0.995021, 0.084351, -0.053096,
		32.892941, 33.893215, 29.704689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332302, 33.598480, 30.322790>,  <32.196426, 33.834171, 29.741856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332302, 33.598480, 30.322790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692383, 33.748524, 30.234310>,  <32.908432, 33.838551, 30.181223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692383, 33.748524, 30.234310>,  <32.332302, 33.598480, 30.322790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692383, 33.748524, 30.234310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227800, 0.027280, 0.973326,
		0.371135, -0.926580, -0.060891,
		0.900203, 0.375106, -0.221200,
		32.962444, 33.861057, 30.167950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805592, 33.328766, 30.850960>,  <32.332302, 33.598480, 30.322790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805592, 33.328766, 30.850960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.992012, 33.643852, 30.689817>,  <33.103867, 33.832905, 30.593132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.992012, 33.643852, 30.689817>,  <32.805592, 33.328766, 30.850960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992012, 33.643852, 30.689817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232391, 0.330352, 0.914801,
		0.853690, -0.519968, -0.029096,
		0.466055, 0.787719, -0.402854,
		33.131828, 33.880169, 30.568962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490456, 33.380161, 31.285122>,  <32.805592, 33.328766, 30.850960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490456, 33.380161, 31.285122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.407150, 33.734119, 31.118467>,  <33.357166, 33.946495, 31.018475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.407150, 33.734119, 31.118467>,  <33.490456, 33.380161, 31.285122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407150, 33.734119, 31.118467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328298, 0.464509, 0.822466,
		0.921328, 0.034512, -0.387252,
		-0.208267, 0.884895, -0.416635,
		33.344669, 33.999588, 30.993477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140202, 33.749626, 31.247740>,  <33.490456, 33.380161, 31.285122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140202, 33.749626, 31.247740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.857635, 34.031239, 31.218576>,  <33.688095, 34.200207, 31.201078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.857635, 34.031239, 31.218576>,  <34.140202, 33.749626, 31.247740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857635, 34.031239, 31.218576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405802, 0.487251, 0.773247,
		0.579917, 0.516646, -0.629899,
		-0.706414, 0.704034, -0.072909,
		33.645710, 34.242447, 31.196703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849724, 33.528252, 30.941584>,  <34.140202, 33.749626, 31.247740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849724, 33.528252, 30.941584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993362, 33.210640, 31.137775>,  <35.079548, 33.020073, 31.255489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993362, 33.210640, 31.137775>,  <34.849724, 33.528252, 30.941584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993362, 33.210640, 31.137775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050048, -0.541159, -0.839430,
		0.931956, 0.276891, -0.234069,
		0.359099, -0.794027, 0.490478,
		35.101093, 32.972431, 31.284920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250473, 33.266510, 30.473267>,  <34.849724, 33.528252, 30.941584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250473, 33.266510, 30.473267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201729, 32.961182, 30.727034>,  <35.172482, 32.777985, 30.879293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201729, 32.961182, 30.727034>,  <35.250473, 33.266510, 30.473267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201729, 32.961182, 30.727034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189967, -0.609429, -0.769746,
		0.974198, -0.214323, -0.070739,
		-0.121864, -0.763323, 0.634419,
		35.165169, 32.732185, 30.917358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725887, 32.805702, 30.252552>,  <35.250473, 33.266510, 30.473267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725887, 32.805702, 30.252552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455006, 32.594986, 30.458035>,  <35.292477, 32.468555, 30.581324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455006, 32.594986, 30.458035>,  <35.725887, 32.805702, 30.252552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455006, 32.594986, 30.458035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108912, -0.762236, -0.638071,
		0.727693, -0.376153, 0.573560,
		-0.677201, -0.526788, 0.513706,
		35.251846, 32.436951, 30.612146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970108, 32.059834, 30.176470>,  <35.725887, 32.805702, 30.252552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970108, 32.059834, 30.176470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581974, 32.054871, 30.273041>,  <35.349094, 32.051891, 30.330984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581974, 32.054871, 30.273041>,  <35.970108, 32.059834, 30.176470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581974, 32.054871, 30.273041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134001, -0.803604, -0.579882,
		0.201211, -0.595034, 0.778106,
		-0.970339, -0.012412, 0.241429,
		35.290871, 32.051147, 30.345470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799728, 31.363096, 30.229404>,  <35.970108, 32.059834, 30.176470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799728, 31.363096, 30.229404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448818, 31.548899, 30.181042>,  <35.238274, 31.660381, 30.152023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448818, 31.548899, 30.181042>,  <35.799728, 31.363096, 30.229404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448818, 31.548899, 30.181042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342167, -0.781872, -0.521150,
		-0.336612, -0.415823, 0.844857,
		-0.877277, 0.464507, -0.120907,
		35.185635, 31.688251, 30.144770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386806, 30.807970, 30.095594>,  <35.799728, 31.363096, 30.229404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386806, 30.807970, 30.095594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.147064, 31.107258, 29.981792>,  <35.003220, 31.286831, 29.913511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.147064, 31.107258, 29.981792>,  <35.386806, 30.807970, 30.095594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147064, 31.107258, 29.981792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372979, -0.575509, -0.727788,
		-0.708282, -0.330086, 0.624003,
		-0.599353, 0.748220, -0.284508,
		34.967258, 31.331724, 29.896441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778599, 30.509609, 29.935356>,  <35.386806, 30.807970, 30.095594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778599, 30.509609, 29.935356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798431, 30.852270, 29.729952>,  <34.810333, 31.057867, 29.606710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798431, 30.852270, 29.729952>,  <34.778599, 30.509609, 29.935356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798431, 30.852270, 29.729952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110543, -0.506276, -0.855257,
		-0.992634, 0.099172, 0.069594,
		0.049583, 0.856650, -0.513509,
		34.813305, 31.109264, 29.575899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158482, 30.518547, 29.537704>,  <34.778599, 30.509609, 29.935356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158482, 30.518547, 29.537704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432930, 30.757359, 29.371429>,  <34.597599, 30.900644, 29.271666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432930, 30.757359, 29.371429>,  <34.158482, 30.518547, 29.537704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432930, 30.757359, 29.371429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056716, -0.525762, -0.848739,
		-0.725272, 0.605915, -0.326876,
		0.686122, 0.597027, -0.415686,
		34.638767, 30.936466, 29.246723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787857, 30.744944, 28.970699>,  <34.158482, 30.518547, 29.537704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787857, 30.744944, 28.970699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.175694, 30.814816, 28.902128>,  <34.408394, 30.856739, 28.860987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.175694, 30.814816, 28.902128>,  <33.787857, 30.744944, 28.970699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175694, 30.814816, 28.902128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101812, -0.349075, -0.931547,
		-0.222562, 0.920670, -0.320675,
		0.969588, 0.174679, -0.171426,
		34.466568, 30.867220, 28.850700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911991, 31.228186, 28.446550>,  <33.787857, 30.744944, 28.970699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911991, 31.228186, 28.446550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239529, 30.998610, 28.442898>,  <34.436050, 30.860865, 28.440706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239529, 30.998610, 28.442898>,  <33.911991, 31.228186, 28.446550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239529, 30.998610, 28.442898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172584, -0.230990, -0.957527,
		0.547452, 0.785645, -0.288198,
		0.818848, -0.573938, -0.009134,
		34.485184, 30.826427, 28.440157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283165, 31.598139, 27.886404>,  <33.911991, 31.228186, 28.446550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283165, 31.598139, 27.886404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389076, 31.218307, 27.953573>,  <34.452621, 30.990410, 27.993876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389076, 31.218307, 27.953573>,  <34.283165, 31.598139, 27.886404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389076, 31.218307, 27.953573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048473, -0.187024, -0.981159,
		0.963091, 0.251646, -0.095548,
		0.264774, -0.949577, 0.167923,
		34.468510, 30.933434, 28.003950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846554, 31.479700, 27.433424>,  <34.283165, 31.598139, 27.886404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846554, 31.479700, 27.433424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702248, 31.122332, 27.540495>,  <34.615665, 30.907911, 27.604738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702248, 31.122332, 27.540495>,  <34.846554, 31.479700, 27.433424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702248, 31.122332, 27.540495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131437, -0.332843, -0.933777,
		0.923350, -0.301689, 0.237506,
		-0.360762, -0.893420, 0.267677,
		34.594017, 30.854305, 27.620798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186356, 31.045517, 27.077101>,  <34.846554, 31.479700, 27.433424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186356, 31.045517, 27.077101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862270, 30.842806, 27.194895>,  <34.667820, 30.721178, 27.265572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862270, 30.842806, 27.194895>,  <35.186356, 31.045517, 27.077101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862270, 30.842806, 27.194895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036869, -0.457367, -0.888514,
		0.584970, -0.730746, 0.351882,
		-0.810217, -0.506780, 0.294487,
		34.619205, 30.690771, 27.283241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228359, 30.435560, 26.768772>,  <35.186356, 31.045517, 27.077101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228359, 30.435560, 26.768772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839333, 30.447681, 26.861031>,  <34.605915, 30.454954, 26.916386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839333, 30.447681, 26.861031>,  <35.228359, 30.435560, 26.768772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839333, 30.447681, 26.861031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218559, -0.458612, -0.861340,
		0.079676, -0.888120, 0.452653,
		-0.972566, 0.030303, 0.230647,
		34.547562, 30.456772, 26.930225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820377, 29.960293, 26.896732>,  <35.228359, 30.435560, 26.768772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820377, 29.960293, 26.896732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181820, 29.945206, 26.726049>,  <36.398685, 29.936153, 26.623640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181820, 29.945206, 26.726049>,  <35.820377, 29.960293, 26.896732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181820, 29.945206, 26.726049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387396, 0.497095, 0.776415,
		0.182830, -0.866876, 0.463788,
		0.903603, -0.037718, -0.426708,
		36.452900, 29.933889, 26.598038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189899, 29.763916, 27.398943>,  <35.820377, 29.960293, 26.896732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189899, 29.763916, 27.398943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.489307, 29.872942, 27.157143>,  <36.668953, 29.938356, 27.012062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.489307, 29.872942, 27.157143>,  <36.189899, 29.763916, 27.398943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489307, 29.872942, 27.157143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501699, 0.363319, 0.785046,
		0.433601, -0.890903, 0.135208,
		0.748524, 0.272563, -0.604501,
		36.713863, 29.954710, 26.975792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705872, 29.481504, 27.707525>,  <36.189899, 29.763916, 27.398943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705872, 29.481504, 27.707525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806789, 29.811417, 27.505104>,  <36.867340, 30.009363, 27.383652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806789, 29.811417, 27.505104>,  <36.705872, 29.481504, 27.707525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806789, 29.811417, 27.505104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518019, 0.326601, 0.790562,
		0.817316, -0.461596, -0.344853,
		0.252292, 0.824779, -0.506052,
		36.882477, 30.058851, 27.353289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449772, 29.526661, 27.742012>,  <36.705872, 29.481504, 27.707525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449772, 29.526661, 27.742012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344578, 29.901260, 27.649223>,  <37.281460, 30.126020, 27.593550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344578, 29.901260, 27.649223>,  <37.449772, 29.526661, 27.742012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344578, 29.901260, 27.649223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478240, 0.335352, 0.811680,
		0.837930, 0.102520, -0.536063,
		-0.262984, 0.936498, -0.231972,
		37.265682, 30.182209, 27.579632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049309, 29.894716, 27.719149>,  <37.449772, 29.526661, 27.742012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049309, 29.894716, 27.719149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755718, 30.156303, 27.792469>,  <37.579563, 30.313255, 27.836462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755718, 30.156303, 27.792469>,  <38.049309, 29.894716, 27.719149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755718, 30.156303, 27.792469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467740, 0.291042, 0.834574,
		0.492438, 0.698296, -0.519506,
		-0.733978, 0.653970, 0.183301,
		37.535526, 30.352495, 27.847460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437855, 30.536137, 27.862707>,  <38.049309, 29.894716, 27.719149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437855, 30.536137, 27.862707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064888, 30.573954, 28.002230>,  <37.841110, 30.596643, 28.085943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064888, 30.573954, 28.002230>,  <38.437855, 30.536137, 27.862707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064888, 30.573954, 28.002230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359286, 0.138399, 0.922908,
		0.038980, 0.985854, -0.163013,
		-0.932413, 0.094544, 0.348809,
		37.785164, 30.602316, 28.106873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604404, 31.019075, 28.380548>,  <38.437855, 30.536137, 27.862707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604404, 31.019075, 28.380548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226814, 30.919197, 28.466866>,  <38.000259, 30.859270, 28.518656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226814, 30.919197, 28.466866>,  <38.604404, 31.019075, 28.380548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226814, 30.919197, 28.466866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174395, 0.177714, 0.968506,
		-0.280183, 0.951877, -0.124212,
		-0.943972, -0.249697, 0.215795,
		37.943623, 30.844288, 28.531605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371231, 31.675789, 28.660295>,  <38.604404, 31.019075, 28.380548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371231, 31.675789, 28.660295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162903, 31.357653, 28.784344>,  <38.037907, 31.166771, 28.858772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162903, 31.357653, 28.784344>,  <38.371231, 31.675789, 28.660295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162903, 31.357653, 28.784344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299487, 0.169957, 0.938841,
		-0.799405, 0.581849, 0.149677,
		-0.520824, -0.795341, 0.310121,
		38.006657, 31.119051, 28.877380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899910, 31.966793, 29.200882>,  <38.371231, 31.675789, 28.660295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899910, 31.966793, 29.200882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955788, 31.573675, 29.249210>,  <37.989315, 31.337805, 29.278208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955788, 31.573675, 29.249210>,  <37.899910, 31.966793, 29.200882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955788, 31.573675, 29.249210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199487, 0.147446, 0.968744,
		-0.969892, -0.111223, 0.216652,
		0.139691, -0.982797, 0.120820,
		37.997696, 31.278835, 29.285456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502243, 31.787369, 29.750301>,  <37.899910, 31.966793, 29.200882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502243, 31.787369, 29.750301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778442, 31.498657, 29.731323>,  <37.944160, 31.325430, 29.719936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778442, 31.498657, 29.731323>,  <37.502243, 31.787369, 29.750301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778442, 31.498657, 29.731323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179392, 0.107338, 0.977905,
		-0.700737, -0.683751, 0.203598,
		0.690497, -0.721777, -0.047443,
		37.985592, 31.282124, 29.717091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530716, 31.343311, 30.434456>,  <37.502243, 31.787369, 29.750301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530716, 31.343311, 30.434456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881031, 31.257357, 30.261568>,  <38.091221, 31.205784, 30.157835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881031, 31.257357, 30.261568>,  <37.530716, 31.343311, 30.434456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881031, 31.257357, 30.261568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469151, 0.168373, 0.866919,
		-0.113516, -0.962016, 0.248274,
		0.875792, -0.214887, -0.432217,
		38.143768, 31.192890, 30.131903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785683, 30.967739, 30.979858>,  <37.530716, 31.343311, 30.434456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785683, 30.967739, 30.979858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108921, 31.068165, 30.766712>,  <38.302864, 31.128420, 30.638824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108921, 31.068165, 30.766712>,  <37.785683, 30.967739, 30.979858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108921, 31.068165, 30.766712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471223, 0.267270, 0.840545,
		0.353450, -0.930340, 0.097673,
		0.808098, 0.251065, -0.532864,
		38.351349, 31.143484, 30.606853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305622, 30.643177, 31.338518>,  <37.785683, 30.967739, 30.979858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305622, 30.643177, 31.338518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481682, 30.931616, 31.124496>,  <38.587318, 31.104679, 30.996082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481682, 30.931616, 31.124496>,  <38.305622, 30.643177, 31.338518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481682, 30.931616, 31.124496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411065, 0.367955, 0.834047,
		0.798306, -0.587049, -0.134462,
		0.440151, 0.721098, -0.535056,
		38.613728, 31.147945, 30.963980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019176, 30.583986, 31.479546>,  <38.305622, 30.643177, 31.338518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019176, 30.583986, 31.479546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953941, 30.959169, 31.357143>,  <38.914803, 31.184278, 31.283703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953941, 30.959169, 31.357143>,  <39.019176, 30.583986, 31.479546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953941, 30.959169, 31.357143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485263, 0.346304, 0.802866,
		0.859025, -0.017558, -0.511633,
		-0.163084, 0.937958, -0.306004,
		38.905018, 31.240557, 31.265343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.567936, 31.364817, 24.415176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.185917, 31.311821, 24.521261>,  <38.956707, 31.280024, 24.584911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.185917, 31.311821, 24.521261>,  <39.567936, 31.364817, 24.415176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185917, 31.311821, 24.521261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090393, -0.721852, -0.686119,
		0.282345, -0.679247, 0.677425,
		-0.955045, -0.132488, 0.265210,
		38.899403, 31.272074, 24.600824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490734, 30.604597, 24.467909>,  <39.567936, 31.364817, 24.415176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490734, 30.604597, 24.467909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139774, 30.780746, 24.391758>,  <38.929199, 30.886436, 24.346067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139774, 30.780746, 24.391758>,  <39.490734, 30.604597, 24.467909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139774, 30.780746, 24.391758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102386, -0.559545, -0.822452,
		-0.468709, -0.702127, 0.536032,
		-0.877399, 0.440373, -0.190376,
		38.876556, 30.912859, 24.334644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194920, 30.037146, 24.116726>,  <39.490734, 30.604597, 24.467909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194920, 30.037146, 24.116726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944069, 30.339794, 24.042711>,  <38.793560, 30.521383, 23.998302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944069, 30.339794, 24.042711>,  <39.194920, 30.037146, 24.116726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944069, 30.339794, 24.042711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239283, -0.413205, -0.878638,
		-0.741256, -0.506737, 0.440178,
		-0.627122, 0.756623, -0.185037,
		38.755932, 30.566780, 23.987200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652641, 29.673904, 23.879877>,  <39.194920, 30.037146, 24.116726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652641, 29.673904, 23.879877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614586, 30.057251, 23.772188>,  <38.591751, 30.287258, 23.707575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614586, 30.057251, 23.772188>,  <38.652641, 29.673904, 23.879877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614586, 30.057251, 23.772188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316850, -0.285538, -0.904474,
		-0.943692, -0.000751, 0.330825,
		-0.095143, 0.958367, -0.269222,
		38.586044, 30.344761, 23.691422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007572, 29.991600, 23.805710>,  <38.652641, 29.673904, 23.879877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007572, 29.991600, 23.805710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.208805, 30.243023, 23.568449>,  <38.329544, 30.393877, 23.426092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.208805, 30.243023, 23.568449>,  <38.007572, 29.991600, 23.805710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208805, 30.243023, 23.568449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734037, -0.051505, -0.677154,
		-0.456179, 0.776058, 0.435472,
		0.503081, 0.628555, -0.593151,
		38.359730, 30.431589, 23.390503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567467, 30.536453, 23.638945>,  <38.007572, 29.991600, 23.805710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567467, 30.536453, 23.638945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.849804, 30.540730, 23.355631>,  <38.019207, 30.543295, 23.185642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.849804, 30.540730, 23.355631>,  <37.567467, 30.536453, 23.638945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849804, 30.540730, 23.355631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704485, -0.093936, -0.703475,
		-0.074054, 0.995521, -0.058774,
		0.705845, 0.010690, -0.708286,
		38.061558, 30.543936, 23.143145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420349, 31.133598, 23.190556>,  <37.567467, 30.536453, 23.638945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420349, 31.133598, 23.190556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646217, 30.887226, 22.970819>,  <37.781738, 30.739403, 22.838978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646217, 30.887226, 22.970819>,  <37.420349, 31.133598, 23.190556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646217, 30.887226, 22.970819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670898, 0.045091, -0.740178,
		0.480670, 0.786508, -0.387766,
		0.564670, -0.615932, -0.549340,
		37.815617, 30.702446, 22.806017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561451, 31.540455, 22.593061>,  <37.420349, 31.133598, 23.190556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561451, 31.540455, 22.593061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599766, 31.149660, 22.516825>,  <37.622757, 30.915184, 22.471083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599766, 31.149660, 22.516825>,  <37.561451, 31.540455, 22.593061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599766, 31.149660, 22.516825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560080, 0.105385, -0.821708,
		0.822882, 0.185456, -0.537095,
		0.095789, -0.976985, -0.190590,
		37.628502, 30.856565, 22.459648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559589, 31.505642, 21.877378>,  <37.561451, 31.540455, 22.593061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559589, 31.505642, 21.877378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515491, 31.114475, 21.948400>,  <37.489033, 30.879776, 21.991014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515491, 31.114475, 21.948400>,  <37.559589, 31.505642, 21.877378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515491, 31.114475, 21.948400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681907, -0.055547, -0.729326,
		0.723083, -0.201478, -0.660725,
		-0.110242, -0.977917, 0.177554,
		37.482418, 30.821100, 22.001667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659527, 31.223898, 21.251350>,  <37.559589, 31.505642, 21.877378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659527, 31.223898, 21.251350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466171, 30.942068, 21.459164>,  <37.350159, 30.772970, 21.583851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466171, 30.942068, 21.459164>,  <37.659527, 31.223898, 21.251350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466171, 30.942068, 21.459164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641601, -0.118605, -0.757813,
		0.595555, -0.699648, -0.394724,
		-0.483386, -0.704574, 0.519531,
		37.321156, 30.730696, 21.615023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544167, 30.768490, 20.780100>,  <37.659527, 31.223898, 21.251350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544167, 30.768490, 20.780100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275604, 30.671898, 21.060356>,  <37.114468, 30.613943, 21.228510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275604, 30.671898, 21.060356>,  <37.544167, 30.768490, 20.780100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275604, 30.671898, 21.060356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679933, -0.175341, -0.712001,
		0.294786, -0.954433, -0.046466,
		-0.671410, -0.241482, 0.700639,
		37.074181, 30.599453, 21.270548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358406, 30.122433, 20.568256>,  <37.544167, 30.768490, 20.780100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358406, 30.122433, 20.568256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.075970, 30.291159, 20.795767>,  <36.906509, 30.392395, 20.932274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.075970, 30.291159, 20.795767>,  <37.358406, 30.122433, 20.568256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075970, 30.291159, 20.795767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677754, -0.169862, -0.715400,
		-0.205159, -0.890625, 0.405829,
		-0.706088, 0.421823, 0.568775,
		36.864143, 30.417704, 20.966400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844460, 29.656212, 20.692377>,  <37.358406, 30.122433, 20.568256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844460, 29.656212, 20.692377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639534, 29.990831, 20.770063>,  <36.516579, 30.191603, 20.816675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639534, 29.990831, 20.770063>,  <36.844460, 29.656212, 20.692377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639534, 29.990831, 20.770063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681877, -0.258748, -0.684174,
		-0.522092, -0.482943, 0.702984,
		-0.512312, 0.836550, 0.194217,
		36.485840, 30.241796, 20.828329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131866, 29.466717, 20.683977>,  <36.844460, 29.656212, 20.692377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131866, 29.466717, 20.683977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173489, 29.854813, 20.596516>,  <36.198463, 30.087669, 20.544039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173489, 29.854813, 20.596516>,  <36.131866, 29.466717, 20.683977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173489, 29.854813, 20.596516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637148, -0.103777, -0.763723,
		-0.763684, 0.218787, 0.607386,
		0.104060, 0.970238, -0.218653,
		36.204708, 30.145884, 20.530920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855545, 29.439779, 21.291315>,  <36.131866, 29.466717, 20.683977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855545, 29.439779, 21.291315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.626205, 29.121536, 21.369574>,  <35.488602, 28.930590, 21.416529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.626205, 29.121536, 21.369574>,  <35.855545, 29.439779, 21.291315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626205, 29.121536, 21.369574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041194, 0.210497, 0.976726,
		-0.818274, 0.568065, -0.087914,
		-0.573350, -0.795608, 0.195645,
		35.454201, 28.882854, 21.428267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341698, 29.609291, 21.907570>,  <35.855545, 29.439779, 21.291315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341698, 29.609291, 21.907570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345932, 29.209465, 21.918550>,  <35.348473, 28.969568, 21.925138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345932, 29.209465, 21.918550>,  <35.341698, 29.609291, 21.907570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345932, 29.209465, 21.918550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008605, 0.027361, 0.999589,
		-0.999907, -0.010816, -0.008312,
		0.010584, -0.999567, 0.027451,
		35.349106, 28.909595, 21.926786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849121, 29.422064, 22.403030>,  <35.341698, 29.609291, 21.907570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849121, 29.422064, 22.403030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096416, 29.110996, 22.357410>,  <35.244793, 28.924356, 22.330038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096416, 29.110996, 22.357410>,  <34.849121, 29.422064, 22.403030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096416, 29.110996, 22.357410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024215, -0.126190, 0.991710,
		-0.785614, -0.615879, -0.059185,
		0.618242, -0.777669, -0.114050,
		35.281891, 28.877695, 22.323195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466522, 28.863121, 22.757521>,  <34.849121, 29.422064, 22.403030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466522, 28.863121, 22.757521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.849472, 28.752710, 22.723457>,  <35.079243, 28.686464, 22.703020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.849472, 28.752710, 22.723457>,  <34.466522, 28.863121, 22.757521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849472, 28.752710, 22.723457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001874, -0.288857, 0.957371,
		-0.288857, -0.916718, -0.276026,
		-0.957371, 0.276026, 0.085156,
		35.136684, 28.669903, 22.697910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508369, 28.221207, 23.207508>,  <34.466522, 28.863121, 22.757521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508369, 28.221207, 23.207508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863354, 28.400719, 23.165552>,  <35.076347, 28.508427, 23.140379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863354, 28.400719, 23.165552>,  <34.508369, 28.221207, 23.207508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863354, 28.400719, 23.165552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185233, -0.138927, 0.972825,
		0.422012, -0.882777, -0.206422,
		0.887465, 0.448780, -0.104890,
		35.129593, 28.535353, 23.134085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973770, 27.759579, 23.552338>,  <34.508369, 28.221207, 23.207508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973770, 27.759579, 23.552338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163616, 28.111473, 23.541010>,  <35.277523, 28.322609, 23.534214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163616, 28.111473, 23.541010>,  <34.973770, 27.759579, 23.552338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163616, 28.111473, 23.541010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303913, -0.133598, 0.943286,
		0.826059, -0.456307, -0.330771,
		0.474618, 0.879736, -0.028318,
		35.306004, 28.375395, 23.532515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560493, 27.695248, 23.910915>,  <34.973770, 27.759579, 23.552338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560493, 27.695248, 23.910915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557255, 28.094641, 23.889137>,  <35.555313, 28.334276, 23.876070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557255, 28.094641, 23.889137>,  <35.560493, 27.695248, 23.910915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557255, 28.094641, 23.889137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459517, 0.052071, 0.886641,
		0.888132, -0.017839, -0.459242,
		-0.008096, 0.998484, -0.054443,
		35.554825, 28.394186, 23.872805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133236, 27.918072, 24.255091>,  <35.560493, 27.695248, 23.910915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133236, 27.918072, 24.255091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937382, 28.266195, 24.233831>,  <35.819870, 28.475069, 24.221075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937382, 28.266195, 24.233831>,  <36.133236, 27.918072, 24.255091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937382, 28.266195, 24.233831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439725, 0.299107, 0.846863,
		0.752929, 0.391281, -0.529148,
		-0.489633, 0.870307, -0.053150,
		35.790493, 28.527287, 24.217886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624676, 28.438841, 24.360241>,  <36.133236, 27.918072, 24.255091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624676, 28.438841, 24.360241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283318, 28.637121, 24.424730>,  <36.078503, 28.756088, 24.463425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283318, 28.637121, 24.424730>,  <36.624676, 28.438841, 24.360241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283318, 28.637121, 24.424730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435175, 0.507270, 0.743841,
		0.286937, 0.704953, -0.648620,
		-0.853399, 0.495699, 0.161223,
		36.027298, 28.785831, 24.473097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816269, 29.077320, 24.373844>,  <36.624676, 28.438841, 24.360241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816269, 29.077320, 24.373844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.475887, 29.048300, 24.581928>,  <36.271660, 29.030888, 24.706779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.475887, 29.048300, 24.581928>,  <36.816269, 29.077320, 24.373844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475887, 29.048300, 24.581928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415512, 0.512866, 0.751211,
		-0.321299, 0.855398, -0.406278,
		-0.850950, -0.072550, 0.520212,
		36.220604, 29.026535, 24.737991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577618, 29.739267, 24.496180>,  <36.816269, 29.077320, 24.373844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577618, 29.739267, 24.496180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405602, 29.517984, 24.781567>,  <36.302391, 29.385216, 24.952799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405602, 29.517984, 24.781567>,  <36.577618, 29.739267, 24.496180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405602, 29.517984, 24.781567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381331, 0.605015, 0.698959,
		-0.818325, 0.572644, -0.049224,
		-0.430036, -0.553205, 0.713465,
		36.276592, 29.352022, 24.995605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332573, 30.239355, 24.988628>,  <36.577618, 29.739267, 24.496180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332573, 30.239355, 24.988628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377804, 29.893452, 25.184345>,  <36.404942, 29.685909, 25.301775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377804, 29.893452, 25.184345>,  <36.332573, 30.239355, 24.988628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377804, 29.893452, 25.184345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270296, 0.500649, 0.822368,
		-0.956114, 0.039263, 0.290353,
		0.113076, -0.864759, 0.489291,
		36.411728, 29.634024, 25.331133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800262, 30.328043, 25.619253>,  <36.332573, 30.239355, 24.988628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800262, 30.328043, 25.619253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089897, 30.057817, 25.674839>,  <36.263676, 29.895681, 25.708191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089897, 30.057817, 25.674839>,  <35.800262, 30.328043, 25.619253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089897, 30.057817, 25.674839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300882, 0.490700, 0.817730,
		-0.620621, -0.550294, 0.558575,
		0.724085, -0.675566, 0.138965,
		36.307121, 29.855148, 25.716528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724335, 30.247536, 26.247915>,  <35.800262, 30.328043, 25.619253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724335, 30.247536, 26.247915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077267, 30.070089, 26.185053>,  <36.289024, 29.963621, 26.147335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077267, 30.070089, 26.185053>,  <35.724335, 30.247536, 26.247915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077267, 30.070089, 26.185053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306447, 0.288108, 0.907240,
		-0.357189, -0.848645, 0.390151,
		0.882330, -0.443617, -0.157156,
		36.341965, 29.937004, 26.137905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961285, 29.921740, 26.359921>,  <35.724335, 30.247536, 26.247915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961285, 29.921740, 26.359921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647343, 30.146919, 26.463524>,  <34.458977, 30.282028, 26.525686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647343, 30.146919, 26.463524>,  <34.961285, 29.921740, 26.359921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647343, 30.146919, 26.463524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350657, -0.058856, -0.934653,
		-0.510919, -0.824392, 0.243596,
		-0.784857, 0.562951, 0.259009,
		34.411884, 30.315804, 26.541227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465752, 29.642189, 25.953644>,  <34.961285, 29.921740, 26.359921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465752, 29.642189, 25.953644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307831, 29.993832, 26.060452>,  <34.213078, 30.204819, 26.124537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307831, 29.993832, 26.060452>,  <34.465752, 29.642189, 25.953644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307831, 29.993832, 26.060452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436206, 0.076436, -0.896595,
		-0.808615, -0.470452, 0.353295,
		-0.394800, 0.879109, 0.267021,
		34.189392, 30.257565, 26.140558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652248, 29.546261, 25.919191>,  <34.465752, 29.642189, 25.953644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652248, 29.546261, 25.919191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730808, 29.938454, 25.915606>,  <33.777943, 30.173769, 25.913454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730808, 29.938454, 25.915606>,  <33.652248, 29.546261, 25.919191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730808, 29.938454, 25.915606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570248, 0.106781, -0.814503,
		-0.797649, 0.165080, 0.580090,
		0.196401, 0.980483, -0.008963,
		33.789730, 30.232599, 25.912916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025055, 29.773672, 25.658621>,  <33.652248, 29.546261, 25.919191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025055, 29.773672, 25.658621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316818, 30.036095, 25.581110>,  <33.491875, 30.193548, 25.534603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316818, 30.036095, 25.581110>,  <33.025055, 29.773672, 25.658621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316818, 30.036095, 25.581110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427196, 0.215601, -0.878077,
		-0.534291, 0.723259, 0.437527,
		0.729408, 0.656059, -0.193779,
		33.535641, 30.232912, 25.522976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710667, 30.353817, 25.264778>,  <33.025055, 29.773672, 25.658621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710667, 30.353817, 25.264778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097851, 30.423964, 25.192898>,  <33.330162, 30.466051, 25.149769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097851, 30.423964, 25.192898>,  <32.710667, 30.353817, 25.264778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097851, 30.423964, 25.192898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190369, 0.045893, -0.980639,
		-0.163722, 0.983433, 0.077806,
		0.967964, 0.175364, -0.179702,
		33.388241, 30.476572, 25.138987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767773, 31.061520, 24.815563>,  <32.710667, 30.353817, 25.264778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767773, 31.061520, 24.815563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102856, 30.854340, 24.746321>,  <33.303905, 30.730032, 24.704775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102856, 30.854340, 24.746321>,  <32.767773, 31.061520, 24.815563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102856, 30.854340, 24.746321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177720, 0.041174, -0.983219,
		0.516387, 0.854419, -0.057558,
		0.837711, -0.517951, -0.173108,
		33.354168, 30.698954, 24.694387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910564, 31.340759, 24.208569>,  <32.767773, 31.061520, 24.815563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910564, 31.340759, 24.208569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166199, 31.033609, 24.226164>,  <33.319580, 30.849319, 24.236721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166199, 31.033609, 24.226164>,  <32.910564, 31.340759, 24.208569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166199, 31.033609, 24.226164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037884, -0.025694, -0.998952,
		0.768198, 0.640087, 0.012669,
		0.639090, -0.767873, 0.043987,
		33.357925, 30.803247, 24.239361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621735, 31.749969, 23.797873>,  <32.910564, 31.340759, 24.208569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621735, 31.749969, 23.797873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231518, 31.837616, 23.804848>,  <31.997387, 31.890203, 23.809032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231518, 31.837616, 23.804848>,  <32.621735, 31.749969, 23.797873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231518, 31.837616, 23.804848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077426, 0.268305, 0.960217,
		0.205720, 0.938084, -0.278708,
		-0.975543, 0.219115, 0.017437,
		31.938854, 31.903351, 23.810080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595604, 32.396320, 24.033766>,  <32.621735, 31.749969, 23.797873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595604, 32.396320, 24.033766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244049, 32.223057, 24.113697>,  <32.033115, 32.119099, 24.161655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244049, 32.223057, 24.113697>,  <32.595604, 32.396320, 24.033766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244049, 32.223057, 24.113697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011561, 0.399437, 0.916688,
		-0.476886, 0.807977, -0.346053,
		-0.878889, -0.433155, 0.199827,
		31.980383, 32.093109, 24.173645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169949, 32.911304, 24.349899>,  <32.595604, 32.396320, 24.033766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169949, 32.911304, 24.349899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954067, 32.602570, 24.484354>,  <31.824537, 32.417328, 24.565027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954067, 32.602570, 24.484354>,  <32.169949, 32.911304, 24.349899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954067, 32.602570, 24.484354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051590, 0.428853, 0.901900,
		-0.840270, 0.469421, -0.271274,
		-0.539708, -0.771835, 0.336135,
		31.792154, 32.371017, 24.585194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763563, 33.200794, 24.866920>,  <32.169949, 32.911304, 24.349899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763563, 33.200794, 24.866920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748457, 32.811150, 24.956074>,  <31.739393, 32.577362, 25.009565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748457, 32.811150, 24.956074>,  <31.763563, 33.200794, 24.866920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748457, 32.811150, 24.956074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089820, 0.218831, 0.971620,
		-0.995242, 0.056714, 0.079230,
		-0.037767, -0.974113, 0.222884,
		31.737127, 32.518917, 25.022940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433125, 33.206272, 25.479799>,  <31.763563, 33.200794, 24.866920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433125, 33.206272, 25.479799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584864, 32.836182, 25.477083>,  <31.675907, 32.614128, 25.475454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584864, 32.836182, 25.477083>,  <31.433125, 33.206272, 25.479799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584864, 32.836182, 25.477083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172360, 0.063454, 0.982988,
		-0.909059, -0.374062, 0.183544,
		0.379345, -0.925230, -0.006790,
		31.698668, 32.558613, 25.475046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086182, 32.879810, 26.005739>,  <31.433125, 33.206272, 25.479799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086182, 32.879810, 26.005739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419445, 32.671078, 25.932480>,  <31.619404, 32.545837, 25.888525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419445, 32.671078, 25.932480>,  <31.086182, 32.879810, 26.005739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419445, 32.671078, 25.932480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235674, 0.035422, 0.971186,
		-0.500305, -0.852315, 0.152493,
		0.833159, -0.521828, -0.183147,
		31.669394, 32.514530, 25.877535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176044, 32.217461, 26.493641>,  <31.086182, 32.879810, 26.005739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176044, 32.217461, 26.493641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536791, 32.315411, 26.351274>,  <31.753239, 32.374180, 26.265854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536791, 32.315411, 26.351274>,  <31.176044, 32.217461, 26.493641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536791, 32.315411, 26.351274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388438, -0.099037, 0.916137,
		0.189088, -0.964484, -0.184436,
		0.901866, 0.244873, -0.355916,
		31.807350, 32.388874, 26.244499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.839409, 32.343464, 19.999031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.153915, 32.118896, 19.895807>,  <35.342617, 31.984156, 19.833872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.153915, 32.118896, 19.895807>,  <34.839409, 32.343464, 19.999031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153915, 32.118896, 19.895807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124018, 0.552540, -0.824208,
		0.605317, 0.616041, 0.504069,
		0.786264, -0.561421, -0.258061,
		35.389793, 31.950470, 19.818388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331234, 32.407654, 20.528042>,  <34.839409, 32.343464, 19.999031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331234, 32.407654, 20.528042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.678322, 32.210358, 20.503448>,  <34.886574, 32.091980, 20.488693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.678322, 32.210358, 20.503448>,  <34.331234, 32.407654, 20.528042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678322, 32.210358, 20.503448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078704, 0.014206, 0.996797,
		-0.490787, -0.869777, 0.051147,
		0.867718, -0.493240, -0.061483,
		34.938637, 32.062386, 20.485004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364288, 31.964643, 21.085522>,  <34.331234, 32.407654, 20.528042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364288, 31.964643, 21.085522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738327, 32.038456, 20.964500>,  <34.962749, 32.082745, 20.891888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738327, 32.038456, 20.964500>,  <34.364288, 31.964643, 21.085522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738327, 32.038456, 20.964500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255763, 0.239559, 0.936588,
		0.245328, -0.953180, 0.176809,
		0.935093, 0.184550, -0.302559,
		35.018856, 32.093815, 20.873734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818268, 31.698740, 21.497210>,  <34.364288, 31.964643, 21.085522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818268, 31.698740, 21.497210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.044518, 31.985271, 21.333773>,  <35.180267, 32.157192, 21.235710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.044518, 31.985271, 21.333773>,  <34.818268, 31.698740, 21.497210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044518, 31.985271, 21.333773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078429, 0.446490, 0.891345,
		0.820929, -0.536207, 0.196362,
		0.565619, 0.716330, -0.408590,
		35.214203, 32.200169, 21.211195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303295, 31.903706, 22.040007>,  <34.818268, 31.698740, 21.497210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303295, 31.903706, 22.040007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.363945, 32.193138, 21.770655>,  <35.400333, 32.366798, 21.609043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.363945, 32.193138, 21.770655>,  <35.303295, 31.903706, 22.040007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363945, 32.193138, 21.770655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303845, 0.614150, 0.728353,
		0.940579, -0.315040, -0.126736,
		0.151626, 0.723581, -0.673379,
		35.409431, 32.410213, 21.568642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940956, 32.189671, 22.303452>,  <35.303295, 31.903706, 22.040007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940956, 32.189671, 22.303452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.796795, 32.470749, 22.058067>,  <35.710300, 32.639397, 21.910837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.796795, 32.470749, 22.058067>,  <35.940956, 32.189671, 22.303452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796795, 32.470749, 22.058067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163787, 0.695111, 0.699996,
		0.918306, 0.151802, -0.365611,
		-0.360401, 0.702693, -0.613461,
		35.688675, 32.681557, 21.874029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393429, 32.725983, 22.229200>,  <35.940956, 32.189671, 22.303452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393429, 32.725983, 22.229200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021172, 32.855789, 22.161564>,  <35.797817, 32.933674, 22.120981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021172, 32.855789, 22.161564>,  <36.393429, 32.725983, 22.229200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021172, 32.855789, 22.161564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073014, 0.617471, 0.783197,
		0.358573, 0.716530, -0.598339,
		-0.930642, 0.324521, -0.169092,
		35.741978, 32.953144, 22.110836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403404, 33.487068, 22.379538>,  <36.393429, 32.725983, 22.229200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403404, 33.487068, 22.379538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012234, 33.403503, 22.377800>,  <35.777531, 33.353367, 22.376759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012234, 33.403503, 22.377800>,  <36.403404, 33.487068, 22.379538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012234, 33.403503, 22.377800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121404, 0.551148, 0.825529,
		-0.170065, 0.807833, -0.564344,
		-0.977926, -0.208907, -0.004343,
		35.718857, 33.340832, 22.376497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244968, 34.086552, 22.532862>,  <36.403404, 33.487068, 22.379538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244968, 34.086552, 22.532862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.953308, 33.833946, 22.638336>,  <35.778313, 33.682384, 22.701620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.953308, 33.833946, 22.638336>,  <36.244968, 34.086552, 22.532862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953308, 33.833946, 22.638336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126333, 0.502896, 0.855065,
		-0.672587, 0.590162, -0.446469,
		-0.729154, -0.631509, 0.263684,
		35.734562, 33.644493, 22.717442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727810, 34.522266, 22.763098>,  <36.244968, 34.086552, 22.532862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727810, 34.522266, 22.763098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647026, 34.155930, 22.901918>,  <35.598557, 33.936127, 22.985210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647026, 34.155930, 22.901918>,  <35.727810, 34.522266, 22.763098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647026, 34.155930, 22.901918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242213, 0.390050, 0.888366,
		-0.948971, 0.095351, -0.300602,
		-0.201957, -0.915843, 0.347051,
		35.586437, 33.881176, 23.006033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146393, 34.679764, 23.136232>,  <35.727810, 34.522266, 22.763098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146393, 34.679764, 23.136232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.305466, 34.346901, 23.290821>,  <35.400909, 34.147182, 23.383574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.305466, 34.346901, 23.290821>,  <35.146393, 34.679764, 23.136232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305466, 34.346901, 23.290821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074741, 0.390430, 0.917594,
		-0.914474, -0.393797, 0.093071,
		0.397683, -0.832159, 0.386471,
		35.424770, 34.097252, 23.406763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672024, 34.524513, 23.827692>,  <35.146393, 34.679764, 23.136232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672024, 34.524513, 23.827692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.039425, 34.366890, 23.840782>,  <35.259865, 34.272316, 23.848637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.039425, 34.366890, 23.840782>,  <34.672024, 34.524513, 23.827692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039425, 34.366890, 23.840782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062281, 0.225905, 0.972156,
		-0.390483, -0.890889, 0.232036,
		0.918501, -0.394062, 0.032727,
		35.314976, 34.248672, 23.850599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129601, 34.396400, 24.404209>,  <34.672024, 34.524513, 23.827692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129601, 34.396400, 24.404209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.974213, 34.748573, 24.295448>,  <33.880978, 34.959877, 24.230192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.974213, 34.748573, 24.295448>,  <34.129601, 34.396400, 24.404209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974213, 34.748573, 24.295448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185703, -0.363826, -0.912768,
		-0.902553, -0.304093, 0.304836,
		-0.388474, 0.880430, -0.271902,
		33.857670, 35.012703, 24.213879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549225, 34.221786, 24.020384>,  <34.129601, 34.396400, 24.404209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549225, 34.221786, 24.020384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.599689, 34.589149, 23.870392>,  <33.629967, 34.809566, 23.780397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.599689, 34.589149, 23.870392>,  <33.549225, 34.221786, 24.020384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599689, 34.589149, 23.870392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298043, -0.325444, -0.897361,
		-0.946178, 0.224974, 0.232666,
		0.126163, 0.918408, -0.374980,
		33.637539, 34.864674, 23.757898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892258, 34.436497, 23.805710>,  <33.549225, 34.221786, 24.020384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892258, 34.436497, 23.805710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.152870, 34.669361, 23.611145>,  <33.309238, 34.809078, 23.494406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.152870, 34.669361, 23.611145>,  <32.892258, 34.436497, 23.805710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152870, 34.669361, 23.611145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405786, -0.274303, -0.871834,
		-0.640972, 0.765407, 0.057515,
		0.651531, 0.582160, -0.486412,
		33.348331, 34.844009, 23.465221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506786, 34.825520, 23.306948>,  <32.892258, 34.436497, 23.805710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506786, 34.825520, 23.306948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.876019, 34.845692, 23.154434>,  <33.097557, 34.857796, 23.062925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.876019, 34.845692, 23.154434>,  <32.506786, 34.825520, 23.306948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876019, 34.845692, 23.154434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350721, -0.296494, -0.888305,
		-0.157846, 0.953702, -0.256001,
		0.923081, 0.050430, -0.381284,
		33.152943, 34.860821, 23.040049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406433, 35.052235, 22.594286>,  <32.506786, 34.825520, 23.306948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406433, 35.052235, 22.594286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.761444, 34.868076, 22.601522>,  <32.974453, 34.757584, 22.605865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.761444, 34.868076, 22.601522>,  <32.406433, 35.052235, 22.594286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761444, 34.868076, 22.601522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174406, -0.372042, -0.911684,
		0.426464, 0.805992, -0.410494,
		0.887531, -0.460393, 0.018092,
		33.027702, 34.729958, 22.606951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859657, 35.198986, 21.970303>,  <32.406433, 35.052235, 22.594286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859657, 35.198986, 21.970303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.996635, 34.862873, 22.138428>,  <33.078823, 34.661205, 22.239304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.996635, 34.862873, 22.138428>,  <32.859657, 35.198986, 21.970303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996635, 34.862873, 22.138428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038060, -0.434586, -0.899826,
		0.938768, 0.324134, -0.116839,
		0.342441, -0.840281, 0.420312,
		33.099369, 34.610790, 22.264521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327248, 35.129906, 21.470711>,  <32.859657, 35.198986, 21.970303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327248, 35.129906, 21.470711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.262814, 34.769691, 21.632250>,  <33.224152, 34.553562, 21.729174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.262814, 34.769691, 21.632250>,  <33.327248, 35.129906, 21.470711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262814, 34.769691, 21.632250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035366, -0.414196, -0.909500,
		0.986307, -0.132224, 0.098569,
		-0.161085, -0.900532, 0.403848,
		33.214489, 34.499531, 21.753405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670738, 34.570724, 21.086315>,  <33.327248, 35.129906, 21.470711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670738, 34.570724, 21.086315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.434608, 34.324711, 21.295406>,  <33.292931, 34.177101, 21.420860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.434608, 34.324711, 21.295406>,  <33.670738, 34.570724, 21.086315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434608, 34.324711, 21.295406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103564, -0.699970, -0.706623,
		0.800492, -0.363004, 0.476907,
		-0.590328, -0.615037, 0.522726,
		33.257511, 34.140202, 21.452225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004608, 33.907749, 21.052361>,  <33.670738, 34.570724, 21.086315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004608, 33.907749, 21.052361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.618179, 33.851948, 21.139303>,  <33.386322, 33.818466, 21.191469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.618179, 33.851948, 21.139303>,  <34.004608, 33.907749, 21.052361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618179, 33.851948, 21.139303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105072, -0.556493, -0.824182,
		0.235934, -0.819057, 0.522955,
		-0.966072, -0.139505, 0.217355,
		33.328358, 33.810097, 21.204510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893291, 33.183414, 20.909473>,  <34.004608, 33.907749, 21.052361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893291, 33.183414, 20.909473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.520111, 33.326427, 20.926331>,  <33.296204, 33.412235, 20.936445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.520111, 33.326427, 20.926331>,  <33.893291, 33.183414, 20.909473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520111, 33.326427, 20.926331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221426, -0.477583, -0.850227,
		-0.283855, -0.802551, 0.524727,
		-0.932951, 0.357529, 0.042141,
		33.240227, 33.433685, 20.938972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479580, 32.605915, 20.687876>,  <33.893291, 33.183414, 20.909473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479580, 32.605915, 20.687876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.283550, 32.950504, 20.634661>,  <33.165932, 33.157257, 20.602732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.283550, 32.950504, 20.634661>,  <33.479580, 32.605915, 20.687876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283550, 32.950504, 20.634661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248469, -0.284346, -0.925965,
		-0.835520, -0.420733, 0.353398,
		-0.490071, 0.861470, -0.133038,
		33.136528, 33.208946, 20.594749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959183, 32.339878, 20.327456>,  <33.479580, 32.605915, 20.687876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959183, 32.339878, 20.327456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930141, 32.733902, 20.264986>,  <32.912716, 32.970314, 20.227505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930141, 32.733902, 20.264986>,  <32.959183, 32.339878, 20.327456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930141, 32.733902, 20.264986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190633, -0.167408, -0.967282,
		-0.978973, -0.040456, 0.199939,
		-0.072603, 0.985057, -0.156175,
		32.908360, 33.029419, 20.218134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374825, 32.480721, 19.953726>,  <32.959183, 32.339878, 20.327456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374825, 32.480721, 19.953726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.589672, 32.807655, 19.870344>,  <32.718582, 33.003819, 19.820314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.589672, 32.807655, 19.870344>,  <32.374825, 32.480721, 19.953726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589672, 32.807655, 19.870344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035270, -0.225152, -0.973685,
		-0.842766, 0.530341, -0.092106,
		0.537123, 0.817340, -0.208456,
		32.750809, 33.052856, 19.807808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718321, 32.501930, 20.322796>,  <32.374825, 32.480721, 19.953726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718321, 32.501930, 20.322796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.699596, 32.121555, 20.445122>,  <31.688362, 31.893330, 20.518517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.699596, 32.121555, 20.445122>,  <31.718321, 32.501930, 20.322796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699596, 32.121555, 20.445122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195416, 0.308953, 0.930785,
		-0.979603, -0.016188, -0.200292,
		-0.046813, -0.950940, 0.305814,
		31.685553, 31.836273, 20.536865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203732, 32.613110, 20.818518>,  <31.718321, 32.501930, 20.322796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203732, 32.613110, 20.818518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.366932, 32.252602, 20.876837>,  <31.464851, 32.036297, 20.911827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.366932, 32.252602, 20.876837>,  <31.203732, 32.613110, 20.818518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366932, 32.252602, 20.876837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265276, 0.035776, 0.963509,
		-0.873593, -0.431787, -0.224488,
		0.407999, -0.901266, 0.145796,
		31.489332, 31.982222, 20.920576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799160, 32.294048, 21.334461>,  <31.203732, 32.613110, 20.818518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799160, 32.294048, 21.334461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134012, 32.078197, 21.370274>,  <31.334923, 31.948687, 21.391762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134012, 32.078197, 21.370274>,  <30.799160, 32.294048, 21.334461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134012, 32.078197, 21.370274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140368, -0.053728, 0.988641,
		-0.528688, -0.840187, -0.120724,
		0.837130, -0.539628, 0.089530,
		31.385151, 31.916309, 21.397133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592525, 31.769709, 21.736404>,  <30.799160, 32.294048, 21.334461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592525, 31.769709, 21.736404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991772, 31.774050, 21.760569>,  <31.231319, 31.776655, 21.775068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991772, 31.774050, 21.760569>,  <30.592525, 31.769709, 21.736404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991772, 31.774050, 21.760569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057949, -0.157818, 0.985766,
		0.020232, -0.987409, -0.156891,
		0.998114, 0.010852, 0.060412,
		31.291206, 31.777306, 21.778692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778511, 31.214575, 22.218014>,  <30.592525, 31.769709, 21.736404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778511, 31.214575, 22.218014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.095015, 31.458275, 22.197144>,  <31.284916, 31.604496, 22.184622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.095015, 31.458275, 22.197144>,  <30.778511, 31.214575, 22.218014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095015, 31.458275, 22.197144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048454, 0.022585, 0.998570,
		0.609559, -0.792656, -0.011650,
		0.791259, 0.609251, -0.052174,
		31.332392, 31.641050, 22.181492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261892, 30.980984, 22.651321>,  <30.778511, 31.214575, 22.218014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261892, 30.980984, 22.651321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.386377, 31.359005, 22.611286>,  <31.461067, 31.585817, 22.587265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.386377, 31.359005, 22.611286>,  <31.261892, 30.980984, 22.651321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386377, 31.359005, 22.611286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025158, 0.097091, 0.994958,
		0.950008, -0.312160, 0.006439,
		0.311211, 0.945056, -0.100090,
		31.479740, 31.642521, 22.581259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702667, 30.983704, 23.129852>,  <31.261892, 30.980984, 22.651321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702667, 30.983704, 23.129852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.650717, 31.375248, 23.066650>,  <31.619547, 31.610174, 23.028728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.650717, 31.375248, 23.066650>,  <31.702667, 30.983704, 23.129852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650717, 31.375248, 23.066650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029481, 0.163097, 0.986169,
		0.991092, 0.123422, -0.050041,
		-0.129877, 0.978860, -0.158006,
		31.611753, 31.668905, 23.019249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369385, 31.294266, 23.285627>,  <31.702667, 30.983704, 23.129852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369385, 31.294266, 23.285627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.078259, 31.565123, 23.329014>,  <31.903584, 31.727636, 23.355045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.078259, 31.565123, 23.329014>,  <32.369385, 31.294266, 23.285627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078259, 31.565123, 23.329014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265190, 0.132043, 0.955112,
		0.632425, 0.723908, -0.275674,
		-0.727814, 0.677142, 0.108466,
		31.859915, 31.768265, 23.361553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072067, 31.289949, 23.398399>,  <32.369385, 31.294266, 23.285627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072067, 31.289949, 23.398399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206009, 30.959385, 23.579470>,  <33.286373, 30.761047, 23.688112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206009, 30.959385, 23.579470>,  <33.072067, 31.289949, 23.398399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206009, 30.959385, 23.579470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072668, -0.501630, -0.862025,
		0.939462, 0.255760, -0.228028,
		0.334858, -0.826410, 0.452677,
		33.306465, 30.711462, 23.715273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530083, 31.085131, 22.919247>,  <33.072067, 31.289949, 23.398399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530083, 31.085131, 22.919247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.465389, 30.750006, 23.127829>,  <33.426575, 30.548931, 23.252977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.465389, 30.750006, 23.127829>,  <33.530083, 31.085131, 22.919247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465389, 30.750006, 23.127829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051500, -0.534856, -0.843372,
		0.985490, -0.109543, 0.129650,
		-0.161729, -0.837812, 0.521454,
		33.416870, 30.498663, 23.284266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006565, 30.506834, 22.583551>,  <33.530083, 31.085131, 22.919247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006565, 30.506834, 22.583551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.693386, 30.328289, 22.756872>,  <33.505478, 30.221163, 22.860865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.693386, 30.328289, 22.756872>,  <34.006565, 30.506834, 22.583551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693386, 30.328289, 22.756872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118136, -0.577172, -0.808032,
		0.610765, -0.683837, 0.399165,
		-0.782949, -0.446362, 0.433302,
		33.458500, 30.194380, 22.886864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096645, 29.777916, 22.678846>,  <34.006565, 30.506834, 22.583551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096645, 29.777916, 22.678846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.697723, 29.807022, 22.675133>,  <33.458370, 29.824486, 22.672905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.697723, 29.807022, 22.675133>,  <34.096645, 29.777916, 22.678846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697723, 29.807022, 22.675133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031336, -0.537015, -0.842991,
		-0.066328, -0.840429, 0.537848,
		-0.997306, 0.072767, -0.009284,
		33.398533, 29.828852, 22.672348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872662, 29.193991, 22.517447>,  <34.096645, 29.777916, 22.678846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872662, 29.193991, 22.517447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.526890, 29.374907, 22.429638>,  <33.319427, 29.483456, 22.376953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.526890, 29.374907, 22.429638>,  <33.872662, 29.193991, 22.517447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526890, 29.374907, 22.429638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052551, -0.515544, -0.855250,
		-0.499981, -0.727777, 0.469425,
		-0.864441, 0.452277, -0.219516,
		33.267559, 29.510593, 22.363781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311188, 28.703857, 22.321529>,  <33.872662, 29.193991, 22.517447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311188, 28.703857, 22.321529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.207020, 29.055471, 22.161789>,  <33.144520, 29.266439, 22.065945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.207020, 29.055471, 22.161789>,  <33.311188, 28.703857, 22.321529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207020, 29.055471, 22.161789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166845, -0.448374, -0.878136,
		-0.950970, -0.162055, 0.263428,
		-0.260421, 0.879033, -0.399352,
		33.128895, 29.319181, 22.041983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590771, 28.555471, 22.000937>,  <33.311188, 28.703857, 22.321529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590771, 28.555471, 22.000937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.745667, 28.876122, 21.818752>,  <32.838604, 29.068512, 21.709442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.745667, 28.876122, 21.818752>,  <32.590771, 28.555471, 22.000937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745667, 28.876122, 21.818752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312250, -0.350779, -0.882867,
		-0.867493, 0.484100, 0.114471,
		0.387242, 0.801624, -0.455458,
		32.861839, 29.116610, 21.682116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061985, 28.879143, 21.643700>,  <32.590771, 28.555471, 22.000937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061985, 28.879143, 21.643700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378304, 29.025133, 21.447153>,  <32.568092, 29.112726, 21.329226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378304, 29.025133, 21.447153>,  <32.061985, 28.879143, 21.643700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378304, 29.025133, 21.447153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354139, -0.381946, -0.853641,
		-0.499233, 0.849065, -0.172789,
		0.790792, 0.364974, -0.491367,
		32.615540, 29.134624, 21.299744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788454, 29.145435, 21.113314>,  <32.061985, 28.879143, 21.643700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788454, 29.145435, 21.113314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.173637, 29.107704, 21.012266>,  <32.404747, 29.085066, 20.951637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.173637, 29.107704, 21.012266>,  <31.788454, 29.145435, 21.113314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173637, 29.107704, 21.012266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267956, -0.439726, -0.857228,
		-0.030224, 0.893165, -0.448712,
		0.962957, -0.094326, -0.252620,
		32.462524, 29.079407, 20.936480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.602085, 35.061298, 35.391575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968376, 34.961082, 35.265930>,  <37.188152, 34.900955, 35.190544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968376, 34.961082, 35.265930>,  <36.602085, 35.061298, 35.391575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968376, 34.961082, 35.265930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348455, -0.105972, -0.931316,
		0.200040, 0.962290, -0.184343,
		0.915731, -0.250536, -0.314116,
		37.243095, 34.885921, 35.171696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908279, 35.529797, 34.971733>,  <36.602085, 35.061298, 35.391575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908279, 35.529797, 34.971733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090889, 35.185551, 34.881458>,  <37.200455, 34.979004, 34.827293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090889, 35.185551, 34.881458>,  <36.908279, 35.529797, 34.971733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090889, 35.185551, 34.881458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196515, 0.149861, -0.968981,
		0.867739, 0.486710, -0.100708,
		0.456521, -0.860613, -0.225686,
		37.227844, 34.927368, 34.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225063, 35.681305, 34.296707>,  <36.908279, 35.529797, 34.971733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225063, 35.681305, 34.296707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214607, 35.283218, 34.334351>,  <37.208332, 35.044365, 34.356937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214607, 35.283218, 34.334351>,  <37.225063, 35.681305, 34.296707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214607, 35.283218, 34.334351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353644, -0.078846, -0.932051,
		0.935014, -0.057644, -0.349893,
		-0.026140, -0.995219, 0.094107,
		37.206764, 34.984653, 34.362583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200638, 35.471436, 33.582432>,  <37.225063, 35.681305, 34.296707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200638, 35.471436, 33.582432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106293, 35.131298, 33.770596>,  <37.049686, 34.927216, 33.883495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106293, 35.131298, 33.770596>,  <37.200638, 35.471436, 33.582432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106293, 35.131298, 33.770596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245661, -0.416173, -0.875472,
		0.940224, -0.322049, -0.110738,
		-0.235859, -0.850344, 0.470411,
		37.035534, 34.876194, 33.911720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464417, 34.960194, 33.231960>,  <37.200638, 35.471436, 33.582432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464417, 34.960194, 33.231960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165760, 34.773064, 33.421135>,  <36.986565, 34.660786, 33.534641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165760, 34.773064, 33.421135>,  <37.464417, 34.960194, 33.231960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165760, 34.773064, 33.421135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310358, -0.383859, -0.869673,
		0.588393, -0.796113, 0.141412,
		-0.746641, -0.467821, 0.472940,
		36.941769, 34.632717, 33.563015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396793, 34.310894, 32.824677>,  <37.464417, 34.960194, 33.231960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396793, 34.310894, 32.824677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040291, 34.356968, 33.000126>,  <36.826389, 34.384613, 33.105396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040291, 34.356968, 33.000126>,  <37.396793, 34.310894, 32.824677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040291, 34.356968, 33.000126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444343, -0.415193, -0.793835,
		0.090677, -0.902412, 0.421225,
		-0.891256, 0.115185, 0.438629,
		36.772915, 34.391525, 33.131714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211163, 33.658733, 32.841179>,  <37.396793, 34.310894, 32.824677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211163, 33.658733, 32.841179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905739, 33.913998, 32.880630>,  <36.722485, 34.067158, 32.904301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905739, 33.913998, 32.880630>,  <37.211163, 33.658733, 32.841179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905739, 33.913998, 32.880630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535647, -0.540645, -0.648679,
		-0.360636, -0.548138, 0.754643,
		-0.763560, 0.638160, 0.098633,
		36.676670, 34.105446, 32.910221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677631, 33.297058, 33.181644>,  <37.211163, 33.658733, 32.841179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677631, 33.297058, 33.181644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505379, 33.584629, 32.963398>,  <36.402027, 33.757172, 32.832451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505379, 33.584629, 32.963398>,  <36.677631, 33.297058, 33.181644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505379, 33.584629, 32.963398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604684, -0.678620, -0.416931,
		-0.670009, 0.150380, 0.726961,
		-0.430633, 0.718930, -0.545615,
		36.376186, 33.800308, 32.799713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022873, 33.107941, 33.213825>,  <36.677631, 33.297058, 33.181644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022873, 33.107941, 33.213825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013226, 33.345226, 32.891953>,  <36.007439, 33.487598, 32.698830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013226, 33.345226, 32.891953>,  <36.022873, 33.107941, 33.213825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013226, 33.345226, 32.891953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604438, -0.649784, -0.460907,
		-0.796287, 0.475264, 0.374234,
		-0.024119, 0.593216, -0.804682,
		36.005989, 33.523190, 32.650547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293640, 33.182850, 33.057808>,  <36.022873, 33.107941, 33.213825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293640, 33.182850, 33.057808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486221, 33.285618, 32.722618>,  <35.601768, 33.347279, 32.521503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486221, 33.285618, 32.722618>,  <35.293640, 33.182850, 33.057808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486221, 33.285618, 32.722618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642882, -0.546330, -0.536867,
		-0.595739, 0.797193, -0.097865,
		0.481453, 0.256917, -0.837972,
		35.630657, 33.362694, 32.471226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839592, 33.476368, 32.628407>,  <35.293640, 33.182850, 33.057808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839592, 33.476368, 32.628407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122894, 33.377579, 32.363869>,  <35.292877, 33.318306, 32.205147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122894, 33.377579, 32.363869>,  <34.839592, 33.476368, 32.628407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122894, 33.377579, 32.363869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699740, -0.369634, -0.611339,
		-0.093469, 0.895753, -0.434615,
		0.708257, -0.246976, -0.661343,
		35.335373, 33.303486, 32.165466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638702, 33.662338, 31.883038>,  <34.839592, 33.476368, 32.628407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638702, 33.662338, 31.883038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912243, 33.371662, 31.856901>,  <35.076366, 33.197258, 31.841219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912243, 33.371662, 31.856901>,  <34.638702, 33.662338, 31.883038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912243, 33.371662, 31.856901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512715, -0.414909, -0.751647,
		0.519104, 0.547516, -0.656321,
		0.683852, -0.726689, -0.065339,
		35.117397, 33.153656, 31.837299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391087, 34.368217, 31.471312>,  <34.638702, 33.662338, 31.883038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391087, 34.368217, 31.471312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006725, 34.478298, 31.483549>,  <33.776108, 34.544346, 31.490892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006725, 34.478298, 31.483549>,  <34.391087, 34.368217, 31.471312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006725, 34.478298, 31.483549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232836, 0.743245, 0.627195,
		0.149865, 0.609796, -0.778261,
		-0.960899, 0.275202, 0.030596,
		33.718456, 34.560860, 31.492727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317596, 35.029579, 31.200588>,  <34.391087, 34.368217, 31.471312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317596, 35.029579, 31.200588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005100, 34.965385, 31.441889>,  <33.817604, 34.926868, 31.586670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005100, 34.965385, 31.441889>,  <34.317596, 35.029579, 31.200588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005100, 34.965385, 31.441889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303481, 0.746852, 0.591702,
		-0.545498, 0.645336, -0.534765,
		-0.781237, -0.160481, 0.603253,
		33.770729, 34.917240, 31.622866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193253, 35.745773, 31.277870>,  <34.317596, 35.029579, 31.200588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193253, 35.745773, 31.277870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004894, 35.530258, 31.557287>,  <33.891880, 35.400948, 31.724937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004894, 35.530258, 31.557287>,  <34.193253, 35.745773, 31.277870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004894, 35.530258, 31.557287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308502, 0.641262, 0.702573,
		-0.826487, 0.546343, -0.135753,
		-0.470899, -0.538788, 0.698543,
		33.863625, 35.368622, 31.766850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702507, 36.244049, 31.544498>,  <34.193253, 35.745773, 31.277870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702507, 36.244049, 31.544498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765297, 35.959126, 31.818132>,  <33.802971, 35.788170, 31.982313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765297, 35.959126, 31.818132>,  <33.702507, 36.244049, 31.544498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765297, 35.959126, 31.818132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135609, 0.701658, 0.699490,
		-0.978247, -0.017036, 0.206741,
		0.156978, -0.712310, 0.684085,
		33.812389, 35.745434, 32.023357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260220, 36.461559, 31.982124>,  <33.702507, 36.244049, 31.544498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260220, 36.461559, 31.982124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525372, 36.234917, 32.177898>,  <33.684464, 36.098930, 32.295364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525372, 36.234917, 32.177898>,  <33.260220, 36.461559, 31.982124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525372, 36.234917, 32.177898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147745, 0.739828, 0.656373,
		-0.734001, -0.362787, 0.574132,
		0.662883, -0.566604, 0.489435,
		33.724236, 36.064934, 32.324730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054554, 36.528202, 32.649605>,  <33.260220, 36.461559, 31.982124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054554, 36.528202, 32.649605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437180, 36.411812, 32.656807>,  <33.666756, 36.341976, 32.661129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437180, 36.411812, 32.656807>,  <33.054554, 36.528202, 32.649605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437180, 36.411812, 32.656807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191762, 0.674522, 0.712914,
		-0.219590, -0.678492, 0.701020,
		0.956560, -0.290978, 0.018010,
		33.724148, 36.324520, 32.662209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150818, 36.545898, 33.315418>,  <33.054554, 36.528202, 32.649605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150818, 36.545898, 33.315418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532207, 36.514069, 33.199100>,  <33.761040, 36.494972, 33.129311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532207, 36.514069, 33.199100>,  <33.150818, 36.545898, 33.315418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532207, 36.514069, 33.199100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283342, 0.566027, 0.774165,
		0.102994, -0.820538, 0.562237,
		0.953472, -0.079571, -0.290790,
		33.818249, 36.490196, 33.111862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426949, 36.511387, 33.924656>,  <33.150818, 36.545898, 33.315418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426949, 36.511387, 33.924656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731182, 36.606098, 33.682846>,  <33.913723, 36.662926, 33.537762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731182, 36.606098, 33.682846>,  <33.426949, 36.511387, 33.924656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731182, 36.606098, 33.682846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398372, 0.565035, 0.722520,
		0.512649, -0.790364, 0.335435,
		0.760586, 0.236771, -0.604523,
		33.959358, 36.677132, 33.501488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923141, 36.428860, 34.380306>,  <33.426949, 36.511387, 33.924656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923141, 36.428860, 34.380306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028679, 36.676823, 34.084709>,  <34.092003, 36.825600, 33.907352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028679, 36.676823, 34.084709>,  <33.923141, 36.428860, 34.380306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028679, 36.676823, 34.084709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515022, 0.557246, 0.651329,
		0.815561, -0.552443, -0.172241,
		0.263842, 0.619906, -0.738988,
		34.107830, 36.862793, 33.863014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487854, 36.608212, 34.633659>,  <33.923141, 36.428860, 34.380306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487854, 36.608212, 34.633659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435574, 36.872509, 34.338001>,  <34.404205, 37.031086, 34.160606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435574, 36.872509, 34.338001>,  <34.487854, 36.608212, 34.633659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435574, 36.872509, 34.338001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440557, 0.706598, 0.553741,
		0.888159, -0.253259, -0.383450,
		-0.130705, 0.660741, -0.739146,
		34.396362, 37.070732, 34.116257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145233, 36.880714, 34.551418>,  <34.487854, 36.608212, 34.633659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145233, 36.880714, 34.551418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858658, 37.133011, 34.432167>,  <34.686714, 37.284389, 34.360615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858658, 37.133011, 34.432167>,  <35.145233, 36.880714, 34.551418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858658, 37.133011, 34.432167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360491, 0.700558, 0.615844,
		0.597297, 0.333740, -0.729283,
		-0.716437, 0.630742, -0.298131,
		34.643726, 37.322235, 34.342728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570793, 37.480473, 34.529419>,  <35.145233, 36.880714, 34.551418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570793, 37.480473, 34.529419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198517, 37.626732, 34.525143>,  <34.975151, 37.714489, 34.522575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198517, 37.626732, 34.525143>,  <35.570793, 37.480473, 34.529419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198517, 37.626732, 34.525143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289173, 0.753312, 0.590677,
		0.224034, 0.546647, -0.806837,
		-0.930692, 0.365647, -0.010692,
		34.919308, 37.736427, 34.521935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663055, 38.176090, 34.384678>,  <35.570793, 37.480473, 34.529419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663055, 38.176090, 34.384678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307549, 38.129620, 34.562031>,  <35.094242, 38.101738, 34.668442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307549, 38.129620, 34.562031>,  <35.663055, 38.176090, 34.384678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307549, 38.129620, 34.562031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275309, 0.638096, 0.719054,
		-0.366459, 0.761142, -0.535136,
		-0.888771, -0.116176, 0.443385,
		35.040916, 38.094769, 34.695045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305450, 38.835415, 34.471485>,  <35.663055, 38.176090, 34.384678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305450, 38.835415, 34.471485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160027, 38.608395, 34.766972>,  <35.072773, 38.472183, 34.944263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160027, 38.608395, 34.766972>,  <35.305450, 38.835415, 34.471485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160027, 38.608395, 34.766972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405731, 0.617348, 0.673991,
		-0.838572, 0.544759, 0.005829,
		-0.363564, -0.567555, 0.738717,
		35.050957, 38.438129, 34.988586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150002, 39.427444, 34.303131>,  <35.305450, 38.835415, 34.471485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150002, 39.427444, 34.303131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454334, 39.669209, 34.208626>,  <35.636932, 39.814266, 34.151920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454334, 39.669209, 34.208626>,  <35.150002, 39.427444, 34.303131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454334, 39.669209, 34.208626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194749, -0.134640, -0.971568,
		-0.619041, 0.785210, 0.015271,
		0.760829, 0.604414, -0.236267,
		35.682583, 39.850533, 34.137745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885902, 39.912319, 33.848637>,  <35.150002, 39.427444, 34.303131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885902, 39.912319, 33.848637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273079, 39.818829, 33.811852>,  <35.505386, 39.762733, 33.789780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273079, 39.818829, 33.811852>,  <34.885902, 39.912319, 33.848637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273079, 39.818829, 33.811852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171070, -0.345393, -0.922734,
		0.183906, 0.908886, -0.374305,
		0.967943, -0.233729, -0.091964,
		35.563461, 39.748711, 33.784264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349464, 40.275261, 33.345577>,  <34.885902, 39.912319, 33.848637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349464, 40.275261, 33.345577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482319, 39.904308, 33.414444>,  <35.562035, 39.681736, 33.455765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482319, 39.904308, 33.414444>,  <35.349464, 40.275261, 33.345577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482319, 39.904308, 33.414444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068991, -0.205924, -0.976133,
		0.940703, 0.312336, -0.132377,
		0.332141, -0.927384, 0.172165,
		35.581963, 39.626095, 33.466095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883049, 40.114498, 32.815639>,  <35.349464, 40.275261, 33.345577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883049, 40.114498, 32.815639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.756187, 39.752266, 32.928307>,  <35.680069, 39.534927, 32.995907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.756187, 39.752266, 32.928307>,  <35.883049, 40.114498, 32.815639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756187, 39.752266, 32.928307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001479, -0.297472, -0.954729,
		0.948372, -0.302383, 0.095684,
		-0.317157, -0.905580, 0.281667,
		35.661041, 39.480591, 33.012806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293457, 39.739807, 32.318024>,  <35.883049, 40.114498, 32.815639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293457, 39.739807, 32.318024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025024, 39.495674, 32.486374>,  <35.863964, 39.349194, 32.587383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025024, 39.495674, 32.486374>,  <36.293457, 39.739807, 32.318024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025024, 39.495674, 32.486374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119038, -0.471626, -0.873727,
		0.731766, -0.636441, 0.243845,
		-0.671080, -0.610337, 0.420880,
		35.823700, 39.312572, 32.612637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359409, 39.214104, 31.952023>,  <36.293457, 39.739807, 32.318024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359409, 39.214104, 31.952023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019794, 39.084503, 32.118950>,  <35.816025, 39.006744, 32.219105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019794, 39.084503, 32.118950>,  <36.359409, 39.214104, 31.952023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019794, 39.084503, 32.118950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265896, -0.420513, -0.867449,
		0.456540, -0.847463, 0.270883,
		-0.849041, -0.323999, 0.417318,
		35.765083, 38.987305, 32.244144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300529, 38.495991, 31.728580>,  <36.359409, 39.214104, 31.952023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300529, 38.495991, 31.728580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931080, 38.636974, 31.788847>,  <35.709412, 38.721565, 31.825006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931080, 38.636974, 31.788847>,  <36.300529, 38.495991, 31.728580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931080, 38.636974, 31.788847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318708, -0.487768, -0.812716,
		-0.212956, -0.798660, 0.562843,
		-0.923620, 0.352455, 0.150666,
		35.653996, 38.742710, 31.834047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986351, 37.898842, 31.636658>,  <36.300529, 38.495991, 31.728580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986351, 37.898842, 31.636658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717991, 38.191849, 31.590515>,  <35.556973, 38.367653, 31.562830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717991, 38.191849, 31.590515>,  <35.986351, 37.898842, 31.636658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717991, 38.191849, 31.590515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411872, -0.497463, -0.763474,
		-0.616644, -0.464704, 0.635453,
		-0.670904, 0.732516, -0.115359,
		35.516720, 38.411602, 31.555908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281708, 37.530632, 31.641697>,  <35.986351, 37.898842, 31.636658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281708, 37.530632, 31.641697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258965, 37.892246, 31.472233>,  <35.245319, 38.109215, 31.370554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258965, 37.892246, 31.472233>,  <35.281708, 37.530632, 31.641697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258965, 37.892246, 31.472233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578083, -0.375789, -0.724295,
		-0.813995, 0.203729, 0.543974,
		-0.056859, 0.904034, -0.423662,
		35.241905, 38.163456, 31.345135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516605, 37.668152, 31.603519>,  <35.281708, 37.530632, 31.641697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516605, 37.668152, 31.603519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672192, 37.924007, 31.338320>,  <34.765545, 38.077522, 31.179199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672192, 37.924007, 31.338320>,  <34.516605, 37.668152, 31.603519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672192, 37.924007, 31.338320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620663, -0.349884, -0.701683,
		-0.680796, 0.684430, 0.260907,
		0.388966, 0.639638, -0.663000,
		34.788883, 38.115898, 31.139420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979630, 37.811668, 31.263424>,  <34.516605, 37.668152, 31.603519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979630, 37.811668, 31.263424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282776, 37.933910, 31.032862>,  <34.464664, 38.007256, 30.894526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282776, 37.933910, 31.032862>,  <33.979630, 37.811668, 31.263424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282776, 37.933910, 31.032862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500059, -0.295335, -0.814075,
		-0.419020, 0.905196, -0.071002,
		0.757867, 0.305609, -0.576403,
		34.510136, 38.025593, 30.859941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683079, 38.070194, 30.755072>,  <33.979630, 37.811668, 31.263424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683079, 38.070194, 30.755072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051842, 38.001846, 30.615992>,  <34.273098, 37.960838, 30.532543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051842, 38.001846, 30.615992>,  <33.683079, 38.070194, 30.755072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051842, 38.001846, 30.615992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387391, -0.396104, -0.832484,
		0.004524, 0.902167, -0.431364,
		0.921904, -0.170873, -0.347699,
		34.328415, 37.950584, 30.511683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653198, 38.195419, 29.947157>,  <33.683079, 38.070194, 30.755072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653198, 38.195419, 29.947157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965736, 37.951000, 29.997944>,  <34.153259, 37.804348, 30.028416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965736, 37.951000, 29.997944>,  <33.653198, 38.195419, 29.947157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965736, 37.951000, 29.997944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219648, -0.459660, -0.860504,
		0.584170, 0.644463, -0.493369,
		0.781345, -0.611048, 0.126965,
		34.200138, 37.767685, 30.036034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001427, 38.230778, 29.321510>,  <33.653198, 38.195419, 29.947157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001427, 38.230778, 29.321510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148518, 37.900166, 29.491978>,  <34.236771, 37.701797, 29.594257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148518, 37.900166, 29.491978>,  <34.001427, 38.230778, 29.321510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148518, 37.900166, 29.491978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050951, -0.439681, -0.896708,
		0.928537, 0.351458, -0.119570,
		0.367727, -0.826534, 0.426167,
		34.258835, 37.652206, 29.619827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674313, 38.054241, 29.019819>,  <34.001427, 38.230778, 29.321510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674313, 38.054241, 29.019819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486286, 37.738041, 29.176870>,  <34.373470, 37.548321, 29.271101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486286, 37.738041, 29.176870>,  <34.674313, 38.054241, 29.019819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486286, 37.738041, 29.176870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119649, -0.497801, -0.858998,
		0.874486, -0.356805, 0.328580,
		-0.470062, -0.790496, 0.392629,
		34.345268, 37.500893, 29.294659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165451, 37.544064, 28.807978>,  <34.674313, 38.054241, 29.019819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165451, 37.544064, 28.807978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813747, 37.382751, 28.909386>,  <34.602726, 37.285965, 28.970230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813747, 37.382751, 28.909386>,  <35.165451, 37.544064, 28.807978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813747, 37.382751, 28.909386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019736, -0.562592, -0.826499,
		0.475942, -0.721701, 0.502621,
		-0.879256, -0.403285, 0.253518,
		34.549973, 37.261765, 28.985441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133698, 36.886425, 28.474424>,  <35.165451, 37.544064, 28.807978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133698, 36.886425, 28.474424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747269, 36.925865, 28.569908>,  <34.515411, 36.949532, 28.627199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747269, 36.925865, 28.569908>,  <35.133698, 36.886425, 28.474424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747269, 36.925865, 28.569908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252726, -0.551454, -0.795002,
		0.053248, -0.828357, 0.557664,
		-0.966072, 0.098604, 0.238711,
		34.457447, 36.955448, 28.641521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864529, 36.183342, 28.336788>,  <35.133698, 36.886425, 28.474424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864529, 36.183342, 28.336788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560551, 36.443333, 28.338135>,  <34.378162, 36.599327, 28.338943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560551, 36.443333, 28.338135>,  <34.864529, 36.183342, 28.336788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560551, 36.443333, 28.338135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350916, -0.405917, -0.843854,
		-0.547116, -0.642468, 0.536563,
		-0.759949, 0.649974, 0.003369,
		34.332565, 36.638325, 28.339146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307796, 35.721458, 28.167141>,  <34.864529, 36.183342, 28.336788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307796, 35.721458, 28.167141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196732, 36.094929, 28.076681>,  <34.130093, 36.319012, 28.022406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196732, 36.094929, 28.076681>,  <34.307796, 35.721458, 28.167141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196732, 36.094929, 28.076681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374164, -0.321922, -0.869694,
		-0.884818, -0.156867, 0.438736,
		-0.277665, 0.933680, -0.226148,
		34.113434, 36.375034, 28.008837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689377, 35.650848, 27.910259>,  <34.307796, 35.721458, 28.167141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689377, 35.650848, 27.910259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769978, 36.022552, 27.786402>,  <33.818336, 36.245575, 27.712088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769978, 36.022552, 27.786402>,  <33.689377, 35.650848, 27.910259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769978, 36.022552, 27.786402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350037, -0.226937, -0.908831,
		-0.914807, 0.291516, 0.279547,
		0.201499, 0.929257, -0.309644,
		33.830429, 36.301331, 27.693508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031963, 35.881836, 27.512747>,  <33.689377, 35.650848, 27.910259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031963, 35.881836, 27.512747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340271, 36.104034, 27.387953>,  <33.525257, 36.237354, 27.313076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340271, 36.104034, 27.387953>,  <33.031963, 35.881836, 27.512747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340271, 36.104034, 27.387953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231771, -0.211656, -0.949465,
		-0.593461, 0.804128, -0.034390,
		0.770770, 0.555500, -0.311983,
		33.571503, 36.270683, 27.294357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740574, 36.244717, 26.872429>,  <33.031963, 35.881836, 27.512747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740574, 36.244717, 26.872429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139229, 36.276627, 26.864929>,  <33.378422, 36.295773, 26.860430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139229, 36.276627, 26.864929>,  <32.740574, 36.244717, 26.872429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139229, 36.276627, 26.864929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002758, -0.196013, -0.980597,
		-0.081905, 0.977351, -0.195133,
		0.996636, 0.079778, -0.018750,
		33.438221, 36.300560, 26.859304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835880, 36.657898, 26.314445>,  <32.740574, 36.244717, 26.872429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835880, 36.657898, 26.314445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184399, 36.469292, 26.368879>,  <33.393509, 36.356129, 26.401539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184399, 36.469292, 26.368879>,  <32.835880, 36.657898, 26.314445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184399, 36.469292, 26.368879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104403, -0.092855, -0.990191,
		0.479528, 0.876955, -0.031677,
		0.871294, -0.471517, 0.136083,
		33.445786, 36.327835, 26.409704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382210, 36.871326, 25.815643>,  <32.835880, 36.657898, 26.314445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382210, 36.871326, 25.815643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537403, 36.523289, 25.937241>,  <33.630520, 36.314468, 26.010199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537403, 36.523289, 25.937241>,  <33.382210, 36.871326, 25.815643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537403, 36.523289, 25.937241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285082, -0.200363, -0.937328,
		0.876469, 0.450330, 0.170309,
		0.387983, -0.870091, 0.303993,
		33.653797, 36.262260, 26.028439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052303, 36.766815, 25.448957>,  <33.382210, 36.871326, 25.815643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052303, 36.766815, 25.448957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903324, 36.409081, 25.548109>,  <33.813934, 36.194439, 25.607601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903324, 36.409081, 25.548109>,  <34.052303, 36.766815, 25.448957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903324, 36.409081, 25.548109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118732, -0.310821, -0.943023,
		0.920425, -0.321799, 0.221952,
		-0.372452, -0.894335, 0.247880,
		33.791588, 36.140781, 25.622473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540405, 36.251602, 25.235456>,  <34.052303, 36.766815, 25.448957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540405, 36.251602, 25.235456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185181, 36.067867, 25.243031>,  <33.972046, 35.957626, 25.247576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185181, 36.067867, 25.243031>,  <34.540405, 36.251602, 25.235456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185181, 36.067867, 25.243031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151637, -0.331555, -0.931170,
		0.433997, -0.824065, 0.364094,
		-0.888061, -0.459335, 0.018935,
		33.918762, 35.930065, 25.248711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712109, 35.626499, 24.876747>,  <34.540405, 36.251602, 25.235456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712109, 35.626499, 24.876747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312397, 35.612526, 24.882727>,  <34.072571, 35.604141, 24.886314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312397, 35.612526, 24.882727>,  <34.712109, 35.626499, 24.876747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312397, 35.612526, 24.882727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008304, -0.584696, -0.811210,
		0.037075, -0.810500, 0.584564,
		-0.999278, -0.034930, 0.014947,
		34.012615, 35.602047, 24.887211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473526, 34.898869, 24.782385>,  <34.712109, 35.626499, 24.876747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473526, 34.898869, 24.782385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175503, 35.130783, 24.650484>,  <33.996689, 35.269932, 24.571344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175503, 35.130783, 24.650484>,  <34.473526, 34.898869, 24.782385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175503, 35.130783, 24.650484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075484, -0.417912, -0.905346,
		-0.662715, -0.699426, 0.267603,
		-0.745057, 0.579787, -0.329752,
		33.951984, 35.304718, 24.551559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833988, 34.326492, 24.499405>,  <34.473526, 34.898869, 24.782385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833988, 34.326492, 24.499405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214077, 34.273708, 24.386507>,  <35.442131, 34.242039, 24.318768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214077, 34.273708, 24.386507>,  <34.833988, 34.326492, 24.499405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214077, 34.273708, 24.386507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286362, 0.012946, 0.958034,
		-0.122774, -0.991170, 0.050092,
		0.950223, -0.131966, -0.282244,
		35.499146, 34.234119, 24.301834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189682, 34.003517, 25.077362>,  <34.833988, 34.326492, 24.499405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189682, 34.003517, 25.077362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498657, 34.130878, 24.857561>,  <35.684044, 34.207294, 24.725681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498657, 34.130878, 24.857561>,  <35.189682, 34.003517, 25.077362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498657, 34.130878, 24.857561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587308, -0.028886, 0.808848,
		0.241671, -0.947514, -0.209316,
		0.772441, 0.318408, -0.549502,
		35.730389, 34.226402, 24.692711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741947, 33.559460, 25.103062>,  <35.189682, 34.003517, 25.077362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741947, 33.559460, 25.103062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891129, 33.919479, 25.012892>,  <35.980637, 34.135490, 24.958790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891129, 33.919479, 25.012892>,  <35.741947, 33.559460, 25.103062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891129, 33.919479, 25.012892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622442, -0.062521, 0.780165,
		0.688094, -0.431276, -0.583547,
		0.372951, 0.900051, -0.225424,
		36.003014, 34.189495, 24.945265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411816, 33.615791, 25.192343>,  <35.741947, 33.559460, 25.103062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411816, 33.615791, 25.192343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355404, 34.011772, 25.196287>,  <36.321556, 34.249363, 25.198654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355404, 34.011772, 25.196287>,  <36.411816, 33.615791, 25.192343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355404, 34.011772, 25.196287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547534, 0.069696, 0.833876,
		0.824814, 0.122999, -0.551864,
		-0.141029, 0.989956, 0.009860,
		36.313095, 34.308758, 25.199245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181679, 33.967110, 25.367737>,  <36.411816, 33.615791, 25.192343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181679, 33.967110, 25.367737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894451, 34.239872, 25.423416>,  <36.722115, 34.403530, 25.456823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894451, 34.239872, 25.423416>,  <37.181679, 33.967110, 25.367737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894451, 34.239872, 25.423416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390259, 0.228914, 0.891794,
		0.576257, 0.694695, -0.430497,
		-0.718071, 0.681907, 0.139198,
		36.679031, 34.444443, 25.465176>
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
