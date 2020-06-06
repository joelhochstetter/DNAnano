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
	<24.274345, 34.787266, 34.935040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245617, 35.076622, 35.209717>,  <24.228380, 35.250237, 35.374523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245617, 35.076622, 35.209717>,  <24.274345, 34.787266, 34.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245617, 35.076622, 35.209717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610698, -0.512440, 0.603699,
		0.788600, 0.462720, -0.404970,
		-0.071821, 0.723391, 0.686693,
		24.224070, 35.293640, 35.415726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962379, 34.890823, 35.241348>,  <24.274345, 34.787266, 34.935040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962379, 34.890823, 35.241348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682043, 35.012760, 35.499306>,  <24.513842, 35.085922, 35.654079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682043, 35.012760, 35.499306>,  <24.962379, 34.890823, 35.241348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682043, 35.012760, 35.499306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315480, -0.678389, 0.663521,
		0.639759, 0.668476, 0.379273,
		-0.700842, 0.304841, 0.644897,
		24.471790, 35.104214, 35.692776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171186, 35.192001, 35.827984>,  <24.962379, 34.890823, 35.241348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171186, 35.192001, 35.827984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828213, 35.009773, 35.923702>,  <24.622429, 34.900436, 35.981133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828213, 35.009773, 35.923702>,  <25.171186, 35.192001, 35.827984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828213, 35.009773, 35.923702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511062, -0.699497, 0.499520,
		-0.060183, 0.550598, 0.832598,
		-0.857434, -0.455572, 0.239292,
		24.570982, 34.873100, 35.995491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452682, 34.812599, 36.394714>,  <25.171186, 35.192001, 35.827984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452682, 34.812599, 36.394714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074766, 34.686275, 36.359764>,  <24.848017, 34.610481, 36.338795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074766, 34.686275, 36.359764>,  <25.452682, 34.812599, 36.394714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074766, 34.686275, 36.359764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246003, -0.859770, 0.447525,
		-0.216453, 0.401324, 0.889993,
		-0.944791, -0.315809, -0.087372,
		24.791328, 34.591534, 36.333553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312220, 34.553082, 37.021854>,  <25.452682, 34.812599, 36.394714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312220, 34.553082, 37.021854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053917, 34.385201, 36.766716>,  <24.898935, 34.284473, 36.613632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053917, 34.385201, 36.766716>,  <25.312220, 34.553082, 37.021854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.053917, 34.385201, 36.766716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181374, -0.895784, 0.405802,
		-0.741689, 0.146360, 0.654581,
		-0.645756, -0.419702, -0.637847,
		24.860189, 34.259289, 36.575363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754234, 34.268726, 37.386494>,  <25.312220, 34.553082, 37.021854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754234, 34.268726, 37.386494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821554, 34.066807, 37.047825>,  <24.861946, 33.945656, 36.844624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821554, 34.066807, 37.047825>,  <24.754234, 34.268726, 37.386494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821554, 34.066807, 37.047825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265354, -0.804015, 0.532115,
		-0.949348, -0.314224, -0.001366,
		0.168302, -0.504800, -0.846671,
		24.872046, 33.915367, 36.793823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860817, 33.588318, 37.611023>,  <24.754234, 34.268726, 37.386494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860817, 33.588318, 37.611023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961676, 33.517815, 37.230423>,  <25.022190, 33.475513, 37.002064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961676, 33.517815, 37.230423>,  <24.860817, 33.588318, 37.611023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961676, 33.517815, 37.230423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223527, -0.946072, 0.234484,
		-0.941518, -0.271812, -0.199155,
		0.252150, -0.176254, -0.951501,
		25.037319, 33.464939, 36.944973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415932, 33.014633, 37.403732>,  <24.860817, 33.588318, 37.611023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415932, 33.014633, 37.403732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787682, 33.050465, 37.260490>,  <25.010731, 33.071964, 37.174545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787682, 33.050465, 37.260490>,  <24.415932, 33.014633, 37.403732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787682, 33.050465, 37.260490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143113, -0.981673, 0.125844,
		-0.340267, -0.168205, -0.925162,
		0.929374, 0.089582, -0.358104,
		25.066494, 33.077339, 37.153061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638447, 32.293766, 37.404942>,  <24.415932, 33.014633, 37.403732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638447, 32.293766, 37.404942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978910, 32.463406, 37.281219>,  <25.183187, 32.565189, 37.206985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978910, 32.463406, 37.281219>,  <24.638447, 32.293766, 37.404942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.978910, 32.463406, 37.281219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467749, -0.880208, 0.080279,
		-0.238207, -0.213008, -0.947568,
		0.851157, 0.424101, -0.309306,
		25.234257, 32.590637, 37.188427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990461, 31.832109, 37.000576>,  <24.638447, 32.293766, 37.404942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990461, 31.832109, 37.000576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279072, 32.091892, 37.096581>,  <25.452238, 32.247761, 37.154182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279072, 32.091892, 37.096581>,  <24.990461, 31.832109, 37.000576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279072, 32.091892, 37.096581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677011, -0.734407, -0.047968,
		0.145116, 0.197103, -0.969583,
		0.721524, 0.649458, 0.240016,
		25.495529, 32.286728, 37.168587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444353, 31.732010, 36.522896>,  <24.990461, 31.832109, 37.000576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444353, 31.732010, 36.522896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600887, 31.874578, 36.862267>,  <25.694809, 31.960119, 37.065887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600887, 31.874578, 36.862267>,  <25.444353, 31.732010, 36.522896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600887, 31.874578, 36.862267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730317, -0.681226, -0.050679,
		0.559905, 0.639449, -0.526888,
		0.391336, 0.356420, 0.848422,
		25.718288, 31.981504, 37.116795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100443, 31.712753, 36.388958>,  <25.444353, 31.732010, 36.522896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100443, 31.712753, 36.388958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088457, 31.742212, 36.787693>,  <26.081266, 31.759888, 37.026932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088457, 31.742212, 36.787693>,  <26.100443, 31.712753, 36.388958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088457, 31.742212, 36.787693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725367, -0.684546, 0.072379,
		0.687709, 0.725240, -0.032909,
		-0.029965, 0.073647, 0.996834,
		26.079468, 31.764307, 37.086742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849957, 31.670465, 36.694500>,  <26.100443, 31.712753, 36.388958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849957, 31.670465, 36.694500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615507, 31.557159, 36.998135>,  <26.474836, 31.489176, 37.180317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615507, 31.557159, 36.998135>,  <26.849957, 31.670465, 36.694500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615507, 31.557159, 36.998135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636211, -0.741035, 0.214717,
		0.501691, 0.608792, 0.614555,
		-0.586124, -0.283265, 0.759091,
		26.439671, 31.472179, 37.225861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264889, 31.553898, 37.148758>,  <26.849957, 31.670465, 36.694500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264889, 31.553898, 37.148758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953466, 31.348675, 37.293324>,  <26.766613, 31.225540, 37.380062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953466, 31.348675, 37.293324>,  <27.264889, 31.553898, 37.148758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953466, 31.348675, 37.293324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604988, -0.766692, 0.214879,
		0.166846, 0.385946, 0.907308,
		-0.778558, -0.513059, 0.361412,
		26.719898, 31.194757, 37.401749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500296, 31.172310, 37.758221>,  <27.264889, 31.553898, 37.148758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500296, 31.172310, 37.758221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172871, 30.969753, 37.649761>,  <26.976416, 30.848219, 37.584686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172871, 30.969753, 37.649761>,  <27.500296, 31.172310, 37.758221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172871, 30.969753, 37.649761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506195, -0.859047, 0.076196,
		-0.271512, -0.074881, 0.959518,
		-0.818565, -0.506391, -0.271146,
		26.927301, 30.817837, 37.568417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372211, 30.795856, 38.359386>,  <27.500296, 31.172310, 37.758221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372211, 30.795856, 38.359386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201065, 30.617424, 38.044949>,  <27.098377, 30.510365, 37.856285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201065, 30.617424, 38.044949>,  <27.372211, 30.795856, 38.359386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201065, 30.617424, 38.044949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447274, -0.860265, 0.244724,
		-0.785414, -0.246889, 0.567600,
		-0.427867, -0.446082, -0.786092,
		27.072704, 30.483599, 37.809120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391048, 30.182577, 38.543709>,  <27.372211, 30.795856, 38.359386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391048, 30.182577, 38.543709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341185, 30.112558, 38.153053>,  <27.311266, 30.070547, 37.918659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341185, 30.112558, 38.153053>,  <27.391048, 30.182577, 38.543709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341185, 30.112558, 38.153053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395547, -0.911482, 0.112883,
		-0.909946, -0.372234, 0.182864,
		-0.124659, -0.175049, -0.976636,
		27.303787, 30.060043, 37.860062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172062, 29.451532, 38.499378>,  <27.391048, 30.182577, 38.543709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172062, 29.451532, 38.499378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295469, 29.561388, 38.135094>,  <27.369514, 29.627300, 37.916523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295469, 29.561388, 38.135094>,  <27.172062, 29.451532, 38.499378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295469, 29.561388, 38.135094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506794, -0.857670, -0.086957,
		-0.804969, -0.434713, -0.403794,
		0.308521, 0.274638, -0.910708,
		27.388025, 29.643780, 37.861881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067728, 28.849100, 38.052509>,  <27.172062, 29.451532, 38.499378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067728, 28.849100, 38.052509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354813, 29.058207, 37.868507>,  <27.527063, 29.183670, 37.758106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354813, 29.058207, 37.868507>,  <27.067728, 28.849100, 38.052509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354813, 29.058207, 37.868507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537235, -0.835986, -0.111832,
		-0.443021, -0.166868, -0.880845,
		0.717712, 0.522765, -0.460007,
		27.570126, 29.215036, 37.730507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348087, 28.381054, 37.557022>,  <27.067728, 28.849100, 38.052509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348087, 28.381054, 37.557022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612339, 28.677053, 37.607571>,  <27.770889, 28.854654, 37.637901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612339, 28.677053, 37.607571>,  <27.348087, 28.381054, 37.557022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612339, 28.677053, 37.607571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748972, -0.638226, -0.178069,
		-0.051116, 0.212288, -0.975869,
		0.660627, 0.740001, 0.126374,
		27.810528, 28.899054, 37.645481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722040, 28.417160, 36.865067>,  <27.348087, 28.381054, 37.557022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722040, 28.417160, 36.865067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922134, 28.556805, 37.182022>,  <28.042191, 28.640591, 37.372196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922134, 28.556805, 37.182022>,  <27.722040, 28.417160, 36.865067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922134, 28.556805, 37.182022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679257, -0.725751, -0.109063,
		0.537004, 0.592795, -0.600183,
		0.500236, 0.349112, 0.792392,
		28.072205, 28.661539, 37.419739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423206, 28.175833, 36.732533>,  <27.722040, 28.417160, 36.865067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423206, 28.175833, 36.732533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458941, 28.284016, 37.115963>,  <28.480381, 28.348925, 37.346024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458941, 28.284016, 37.115963>,  <28.423206, 28.175833, 36.732533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458941, 28.284016, 37.115963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767775, -0.631773, 0.106697,
		0.634461, 0.726441, -0.264089,
		0.089336, 0.270456, 0.958578,
		28.485741, 28.365152, 37.403538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071489, 28.188150, 36.797722>,  <28.423206, 28.175833, 36.732533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071489, 28.188150, 36.797722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936874, 28.154472, 37.172882>,  <28.856106, 28.134266, 37.397980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936874, 28.154472, 37.172882>,  <29.071489, 28.188150, 36.797722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936874, 28.154472, 37.172882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710504, -0.676359, 0.194224,
		0.618003, 0.731745, 0.287440,
		-0.336535, -0.084196, 0.937899,
		28.835915, 28.129213, 37.454250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581337, 28.310629, 37.311401>,  <29.071489, 28.188150, 36.797722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581337, 28.310629, 37.311401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335665, 28.068794, 37.514286>,  <29.188261, 27.923695, 37.636017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335665, 28.068794, 37.514286>,  <29.581337, 28.310629, 37.311401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335665, 28.068794, 37.514286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785469, -0.530466, 0.318818,
		0.076305, 0.594209, 0.800683,
		-0.614180, -0.604584, 0.507209,
		29.151411, 27.887419, 37.666451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905991, 28.110554, 37.924164>,  <29.581337, 28.310629, 37.311401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905991, 28.110554, 37.924164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620205, 27.831450, 37.903484>,  <29.448734, 27.663986, 37.891079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620205, 27.831450, 37.903484>,  <29.905991, 28.110554, 37.924164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620205, 27.831450, 37.903484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668269, -0.702415, 0.245010,
		-0.207270, 0.140504, 0.968141,
		-0.714462, -0.697762, -0.051695,
		29.405867, 27.622122, 37.887974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808210, 27.843145, 38.570354>,  <29.905991, 28.110554, 37.924164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808210, 27.843145, 38.570354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703661, 27.580790, 38.287090>,  <29.640932, 27.423376, 38.117130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703661, 27.580790, 38.287090>,  <29.808210, 27.843145, 38.570354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703661, 27.580790, 38.287090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715985, -0.623779, 0.313475,
		-0.647342, -0.425101, 0.632644,
		-0.261371, -0.655888, -0.708164,
		29.625250, 27.384024, 38.074642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560905, 27.147909, 38.893997>,  <29.808210, 27.843145, 38.570354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560905, 27.147909, 38.893997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738152, 27.133955, 38.535683>,  <29.844500, 27.125584, 38.320694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738152, 27.133955, 38.535683>,  <29.560905, 27.147909, 38.893997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738152, 27.133955, 38.535683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753151, -0.527482, 0.393098,
		-0.486224, -0.848850, -0.207463,
		0.443115, -0.034883, -0.895786,
		29.871086, 27.123489, 38.266945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050331, 26.680468, 38.977833>,  <29.560905, 27.147909, 38.893997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050331, 26.680468, 38.977833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132442, 26.798887, 38.604691>,  <30.181709, 26.869938, 38.380806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132442, 26.798887, 38.604691>,  <30.050331, 26.680468, 38.977833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132442, 26.798887, 38.604691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929913, -0.356192, 0.091591,
		-0.305160, -0.886275, -0.348417,
		0.205278, 0.296048, -0.932854,
		30.194025, 26.887701, 38.324833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334791, 26.135427, 38.568714>,  <30.050331, 26.680468, 38.977833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334791, 26.135427, 38.568714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477625, 26.479856, 38.423912>,  <30.563326, 26.686514, 38.337032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477625, 26.479856, 38.423912>,  <30.334791, 26.135427, 38.568714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477625, 26.479856, 38.423912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928776, -0.368523, 0.039575,
		-0.099329, -0.350351, -0.931337,
		0.357084, 0.861072, -0.362002,
		30.584749, 26.738178, 38.315311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608953, 26.259426, 37.883076>,  <30.334791, 26.135427, 38.568714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608953, 26.259426, 37.883076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802488, 26.496176, 38.140942>,  <30.918610, 26.638226, 38.295662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802488, 26.496176, 38.140942>,  <30.608953, 26.259426, 37.883076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802488, 26.496176, 38.140942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858686, -0.463307, -0.219100,
		0.168996, 0.659570, -0.732399,
		0.483837, 0.591873, 0.644661,
		30.947639, 26.673738, 38.334339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223240, 26.665468, 37.500992>,  <30.608953, 26.259426, 37.883076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223240, 26.665468, 37.500992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263315, 26.634069, 37.897739>,  <31.287359, 26.615231, 38.135788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263315, 26.634069, 37.897739>,  <31.223240, 26.665468, 37.500992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263315, 26.634069, 37.897739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913529, -0.387745, -0.122961,
		0.394244, 0.918418, 0.032862,
		0.100187, -0.078497, 0.991867,
		31.293371, 26.610519, 38.195301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935867, 26.797878, 37.645458>,  <31.223240, 26.665468, 37.500992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935867, 26.797878, 37.645458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799946, 26.603039, 37.967270>,  <31.718393, 26.486135, 38.160358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799946, 26.603039, 37.967270>,  <31.935867, 26.797878, 37.645458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799946, 26.603039, 37.967270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906510, -0.397516, 0.142200,
		0.250549, 0.777636, 0.576634,
		-0.339802, -0.487097, 0.804532,
		31.698006, 26.456909, 38.208630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389118, 26.960718, 38.145340>,  <31.935867, 26.797878, 37.645458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389118, 26.960718, 38.145340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206951, 26.609762, 38.205711>,  <32.097652, 26.399189, 38.241932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206951, 26.609762, 38.205711>,  <32.389118, 26.960718, 38.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206951, 26.609762, 38.205711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882557, -0.422656, 0.206047,
		-0.116994, 0.227039, 0.966833,
		-0.455418, -0.877392, 0.150926,
		32.070324, 26.346544, 38.250988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514149, 27.425909, 37.549950>,  <32.389118, 26.960718, 38.145340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514149, 27.425909, 37.549950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348835, 27.688297, 37.802586>,  <32.249649, 27.845730, 37.954166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348835, 27.688297, 37.802586>,  <32.514149, 27.425909, 37.549950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348835, 27.688297, 37.802586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799595, 0.070458, -0.596393,
		-0.435716, -0.751491, 0.495391,
		-0.413280, 0.655970, 0.631588,
		32.224850, 27.885088, 37.992062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789181, 26.840012, 37.451561>,  <32.514149, 27.425909, 37.549950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789181, 26.840012, 37.451561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103401, 27.039822, 37.305477>,  <33.291935, 27.159708, 37.217827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103401, 27.039822, 37.305477>,  <32.789181, 26.840012, 37.451561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103401, 27.039822, 37.305477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461629, 0.866111, 0.191703,
		0.412077, 0.018000, 0.910971,
		0.785552, 0.499527, -0.365214,
		33.339066, 27.189680, 37.195911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138931, 27.415331, 37.936237>,  <32.789181, 26.840012, 37.451561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138931, 27.415331, 37.936237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175491, 27.508421, 37.548943>,  <33.197426, 27.564274, 37.316566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175491, 27.508421, 37.548943>,  <33.138931, 27.415331, 37.936237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175491, 27.508421, 37.548943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485851, 0.859152, 0.160642,
		0.869250, 0.455738, 0.191593,
		0.091397, 0.232724, -0.968239,
		33.202911, 27.578238, 37.258472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332928, 28.153551, 37.947884>,  <33.138931, 27.415331, 37.936237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332928, 28.153551, 37.947884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201878, 28.065716, 37.580307>,  <33.123249, 28.013016, 37.359760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201878, 28.065716, 37.580307>,  <33.332928, 28.153551, 37.947884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201878, 28.065716, 37.580307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357266, 0.929193, -0.094663,
		0.874656, 0.297291, -0.382876,
		-0.327623, -0.219587, -0.918937,
		33.103592, 27.999840, 37.304626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598625, 28.590231, 37.390182>,  <33.332928, 28.153551, 37.947884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598625, 28.590231, 37.390182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247272, 28.453592, 37.256458>,  <33.036461, 28.371609, 37.176224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247272, 28.453592, 37.256458>,  <33.598625, 28.590231, 37.390182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247272, 28.453592, 37.256458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251871, 0.925260, -0.283647,
		0.406219, -0.164946, -0.898765,
		-0.878378, -0.341596, -0.334313,
		32.983761, 28.351114, 37.156166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324806, 28.963966, 36.728794>,  <33.598625, 28.590231, 37.390182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324806, 28.963966, 36.728794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991505, 28.785572, 36.859501>,  <32.791523, 28.678535, 36.937923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991505, 28.785572, 36.859501>,  <33.324806, 28.963966, 36.728794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991505, 28.785572, 36.859501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525544, 0.822471, -0.217589,
		-0.171714, -0.353039, -0.919716,
		-0.833257, -0.445988, 0.326767,
		32.741528, 28.651775, 36.957531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741238, 29.141499, 36.237217>,  <33.324806, 28.963966, 36.728794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741238, 29.141499, 36.237217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530006, 29.034328, 36.559547>,  <32.403267, 28.970026, 36.752945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530006, 29.034328, 36.559547>,  <32.741238, 29.141499, 36.237217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530006, 29.034328, 36.559547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721328, 0.642280, -0.259157,
		-0.448130, -0.718118, -0.532434,
		-0.528077, -0.267924, 0.805824,
		32.371582, 28.953951, 36.801296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069431, 29.101652, 36.016544>,  <32.741238, 29.141499, 36.237217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069431, 29.101652, 36.016544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034393, 29.139322, 36.413223>,  <32.013371, 29.161924, 36.651230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034393, 29.139322, 36.413223>,  <32.069431, 29.101652, 36.016544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034393, 29.139322, 36.413223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756634, 0.641241, -0.127730,
		-0.647945, -0.761538, 0.015086,
		-0.087598, 0.094177, 0.991694,
		32.008114, 29.167576, 36.710732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374546, 29.112265, 36.160297>,  <32.069431, 29.101652, 36.016544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374546, 29.112265, 36.160297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562559, 29.283606, 36.468994>,  <31.675367, 29.386410, 36.654213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562559, 29.283606, 36.468994>,  <31.374546, 29.112265, 36.160297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562559, 29.283606, 36.468994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755141, 0.647837, 0.100345,
		-0.456979, -0.629938, 0.627971,
		0.470034, 0.428352, 0.771740,
		31.703569, 29.412111, 36.700516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807583, 29.262798, 36.575939>,  <31.374546, 29.112265, 36.160297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807583, 29.262798, 36.575939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102753, 29.488188, 36.724514>,  <31.279856, 29.623421, 36.813660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102753, 29.488188, 36.724514>,  <30.807583, 29.262798, 36.575939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102753, 29.488188, 36.724514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617134, 0.786147, 0.033458,
		-0.273149, -0.253914, 0.927856,
		0.737927, 0.563472, 0.371434,
		31.324131, 29.657230, 36.835945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536882, 29.706991, 37.185787>,  <30.807583, 29.262798, 36.575939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536882, 29.706991, 37.185787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864695, 29.910574, 37.080463>,  <31.061382, 30.032722, 37.017269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864695, 29.910574, 37.080463>,  <30.536882, 29.706991, 37.185787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864695, 29.910574, 37.080463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507184, 0.858109, 0.080083,
		0.266710, 0.067917, 0.961381,
		0.819531, 0.508956, -0.263312,
		31.110554, 30.063261, 37.001469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583818, 30.288902, 37.668198>,  <30.536882, 29.706991, 37.185787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583818, 30.288902, 37.668198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799479, 30.391289, 37.347252>,  <30.928875, 30.452721, 37.154682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799479, 30.391289, 37.347252>,  <30.583818, 30.288902, 37.668198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799479, 30.391289, 37.347252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432964, 0.901405, -0.003368,
		0.722396, 0.349213, 0.596820,
		0.539152, 0.255968, -0.802368,
		30.961224, 30.468079, 37.106541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782963, 30.979593, 37.832333>,  <30.583818, 30.288902, 37.668198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782963, 30.979593, 37.832333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781456, 30.891783, 37.442093>,  <30.780552, 30.839096, 37.207951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781456, 30.891783, 37.442093>,  <30.782963, 30.979593, 37.832333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781456, 30.891783, 37.442093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479757, 0.856394, -0.190850,
		0.877393, 0.467332, -0.108543,
		-0.003765, -0.219524, -0.975600,
		30.780327, 30.825926, 37.149414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688084, 31.580248, 37.572548>,  <30.782963, 30.979593, 37.832333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688084, 31.580248, 37.572548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655388, 31.397961, 37.218002>,  <30.635771, 31.288589, 37.005276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655388, 31.397961, 37.218002>,  <30.688084, 31.580248, 37.572548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655388, 31.397961, 37.218002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474922, 0.799687, -0.367355,
		0.876224, 0.390926, -0.281796,
		-0.081740, -0.455716, -0.886364,
		30.630865, 31.261246, 36.952091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919695, 32.008205, 37.029625>,  <30.688084, 31.580248, 37.572548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919695, 32.008205, 37.029625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671629, 31.745996, 36.857262>,  <30.522789, 31.588671, 36.753841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671629, 31.745996, 36.857262>,  <30.919695, 32.008205, 37.029625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671629, 31.745996, 36.857262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514668, 0.754550, -0.407151,
		0.592041, -0.030725, -0.805322,
		-0.620165, -0.655523, -0.430911,
		30.485580, 31.549339, 36.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786610, 32.354187, 36.365772>,  <30.919695, 32.008205, 37.029625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786610, 32.354187, 36.365772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497797, 32.081963, 36.415573>,  <30.324509, 31.918627, 36.445454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497797, 32.081963, 36.415573>,  <30.786610, 32.354187, 36.365772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497797, 32.081963, 36.415573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642220, 0.592354, -0.486487,
		0.257334, -0.431220, -0.864771,
		-0.722033, -0.680563, 0.124505,
		30.281187, 31.877794, 36.452923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332718, 32.306770, 35.728413>,  <30.786610, 32.354187, 36.365772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332718, 32.306770, 35.728413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124752, 32.145477, 36.029636>,  <29.999971, 32.048702, 36.210369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124752, 32.145477, 36.029636>,  <30.332718, 32.306770, 35.728413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124752, 32.145477, 36.029636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812900, 0.504411, -0.291140,
		-0.262452, -0.763527, -0.590039,
		-0.519915, -0.403232, 0.753055,
		29.968777, 32.024509, 36.255554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671234, 32.143806, 35.394669>,  <30.332718, 32.306770, 35.728413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671234, 32.143806, 35.394669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636520, 32.166492, 35.792515>,  <29.615692, 32.180103, 36.031223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636520, 32.166492, 35.792515>,  <29.671234, 32.143806, 35.394669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636520, 32.166492, 35.792515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832013, 0.544982, -0.103674,
		-0.547926, -0.836527, -0.000110,
		-0.086786, 0.056714, 0.994612,
		29.610485, 32.183506, 36.090897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005493, 32.014828, 35.510715>,  <29.671234, 32.143806, 35.394669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005493, 32.014828, 35.510715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113810, 32.216488, 35.838741>,  <29.178801, 32.337482, 36.035557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113810, 32.216488, 35.838741>,  <29.005493, 32.014828, 35.510715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113810, 32.216488, 35.838741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708641, 0.680980, -0.184644,
		-0.651536, -0.531131, 0.541664,
		0.270793, 0.504148, 0.820065,
		29.195047, 32.367733, 36.084763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393629, 32.063152, 35.935696>,  <29.005493, 32.014828, 35.510715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393629, 32.063152, 35.935696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639475, 32.345093, 36.077362>,  <28.786983, 32.514256, 36.162361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639475, 32.345093, 36.077362>,  <28.393629, 32.063152, 35.935696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639475, 32.345093, 36.077362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771897, 0.629918, 0.085898,
		-0.162552, -0.326175, 0.931229,
		0.614615, 0.704850, 0.354168,
		28.823860, 32.556549, 36.183613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096111, 32.272667, 36.535122>,  <28.393629, 32.063152, 35.935696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096111, 32.272667, 36.535122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324926, 32.563854, 36.383945>,  <28.462215, 32.738567, 36.293240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324926, 32.563854, 36.383945>,  <28.096111, 32.272667, 36.535122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324926, 32.563854, 36.383945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729947, 0.661969, 0.170220,
		0.374099, 0.178504, 0.910048,
		0.572038, 0.727966, -0.377940,
		28.496538, 32.782246, 36.270565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871124, 32.758121, 36.942398>,  <28.096111, 32.272667, 36.535122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871124, 32.758121, 36.942398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048336, 32.929413, 36.627350>,  <28.154663, 33.032188, 36.438320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048336, 32.929413, 36.627350>,  <27.871124, 32.758121, 36.942398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048336, 32.929413, 36.627350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577916, 0.808058, 0.114263,
		0.685373, 0.404556, 0.605474,
		0.443032, 0.428226, -0.787620,
		28.181246, 33.057880, 36.391064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072859, 33.429684, 37.152401>,  <27.871124, 32.758121, 36.942398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072859, 33.429684, 37.152401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067970, 33.482342, 36.755913>,  <28.065037, 33.513935, 36.518021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067970, 33.482342, 36.755913>,  <28.072859, 33.429684, 37.152401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067970, 33.482342, 36.755913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548555, 0.827928, 0.116719,
		0.836025, 0.545166, 0.062095,
		-0.012221, 0.131643, -0.991222,
		28.064304, 33.521835, 36.458546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221983, 34.145992, 36.993309>,  <28.072859, 33.429684, 37.152401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221983, 34.145992, 36.993309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047674, 34.004963, 36.662056>,  <27.943089, 33.920345, 36.463306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047674, 34.004963, 36.662056>,  <28.221983, 34.145992, 36.993309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047674, 34.004963, 36.662056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639882, 0.768414, 0.009568,
		0.632972, 0.534074, -0.560456,
		-0.435772, -0.352570, -0.828129,
		27.916943, 33.899193, 36.413616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900326, 34.757687, 36.715122>,  <28.221983, 34.145992, 36.993309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900326, 34.757687, 36.715122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751768, 34.484180, 36.463875>,  <27.662634, 34.320076, 36.313126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751768, 34.484180, 36.463875>,  <27.900326, 34.757687, 36.715122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751768, 34.484180, 36.463875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849981, 0.522619, -0.066343,
		0.373631, 0.509252, -0.775282,
		-0.371392, -0.683763, -0.628121,
		27.640350, 34.279053, 36.275436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598272, 34.767933, 36.889122>,  <27.900326, 34.757687, 36.715122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598272, 34.767933, 36.889122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487555, 34.827354, 37.268871>,  <28.421124, 34.863007, 37.496723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487555, 34.827354, 37.268871>,  <28.598272, 34.767933, 36.889122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487555, 34.827354, 37.268871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945296, 0.219583, 0.241245,
		-0.172630, 0.964218, -0.201204,
		-0.276794, 0.148551, 0.949378,
		28.404516, 34.871922, 37.553684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303499, 34.873333, 36.544514>,  <28.598272, 34.767933, 36.889122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303499, 34.873333, 36.544514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470152, 35.081181, 36.246140>,  <29.570143, 35.205887, 36.067116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470152, 35.081181, 36.246140>,  <29.303499, 34.873333, 36.544514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470152, 35.081181, 36.246140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697909, 0.342974, 0.628722,
		0.582530, -0.782539, -0.219751,
		0.416631, 0.519616, -0.745934,
		29.595140, 35.237064, 36.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096386, 34.751499, 36.447128>,  <29.303499, 34.873333, 36.544514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096386, 34.751499, 36.447128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993979, 35.111839, 36.306889>,  <29.932533, 35.328045, 36.222744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993979, 35.111839, 36.306889>,  <30.096386, 34.751499, 36.447128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993979, 35.111839, 36.306889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699531, 0.422966, 0.575982,
		0.667166, -0.097789, -0.738463,
		-0.256020, 0.900853, -0.350595,
		29.917173, 35.382095, 36.201710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722630, 35.155079, 36.351864>,  <30.096386, 34.751499, 36.447128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722630, 35.155079, 36.351864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386713, 35.360050, 36.423607>,  <30.185163, 35.483032, 36.466652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386713, 35.360050, 36.423607>,  <30.722630, 35.155079, 36.351864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386713, 35.360050, 36.423607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512246, 0.638424, 0.574472,
		0.179871, 0.574311, -0.798632,
		-0.839792, 0.512427, 0.179354,
		30.134775, 35.513779, 36.477413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955961, 35.876274, 36.465485>,  <30.722630, 35.155079, 36.351864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955961, 35.876274, 36.465485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610985, 35.807037, 36.655739>,  <30.403999, 35.765495, 36.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610985, 35.807037, 36.655739>,  <30.955961, 35.876274, 36.465485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610985, 35.807037, 36.655739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354679, 0.463742, 0.811879,
		-0.361103, 0.868897, -0.338558,
		-0.862443, -0.173093, 0.475638,
		30.352251, 35.755108, 36.798431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760883, 36.564457, 36.908726>,  <30.955961, 35.876274, 36.465485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760883, 36.564457, 36.908726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585093, 36.232956, 37.047310>,  <30.479618, 36.034058, 37.130459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585093, 36.232956, 37.047310>,  <30.760883, 36.564457, 36.908726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585093, 36.232956, 37.047310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166297, 0.303971, 0.938055,
		-0.882726, 0.469869, 0.004230,
		-0.439477, -0.828749, 0.346461,
		30.453249, 35.984333, 37.151249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271885, 36.664238, 37.452396>,  <30.760883, 36.564457, 36.908726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271885, 36.664238, 37.452396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401869, 36.290894, 37.513371>,  <30.479860, 36.066887, 37.549953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401869, 36.290894, 37.513371>,  <30.271885, 36.664238, 37.452396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401869, 36.290894, 37.513371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056130, 0.179929, 0.982077,
		-0.944060, -0.310580, 0.110860,
		0.324961, -0.933362, 0.152431,
		30.499357, 36.010883, 37.559101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914997, 36.400017, 38.092972>,  <30.271885, 36.664238, 37.452396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914997, 36.400017, 38.092972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265884, 36.219978, 38.026165>,  <30.476418, 36.111954, 37.986080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265884, 36.219978, 38.026165>,  <29.914997, 36.400017, 38.092972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265884, 36.219978, 38.026165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227072, 0.082477, 0.970379,
		-0.422992, -0.889161, 0.174555,
		0.877221, -0.450100, -0.167017,
		30.529051, 36.084949, 37.976059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947626, 35.885887, 38.609779>,  <29.914997, 36.400017, 38.092972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947626, 35.885887, 38.609779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310246, 35.985722, 38.473614>,  <30.527817, 36.045620, 38.391914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310246, 35.985722, 38.473614>,  <29.947626, 35.885887, 38.609779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310246, 35.985722, 38.473614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323165, 0.108434, 0.940110,
		0.271548, -0.962263, 0.017644,
		0.906546, 0.249584, -0.340415,
		30.582209, 36.060596, 38.371490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336395, 35.670860, 39.113407>,  <29.947626, 35.885887, 38.609779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336395, 35.670860, 39.113407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606689, 35.896530, 38.923630>,  <30.768866, 36.031933, 38.809765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606689, 35.896530, 38.923630>,  <30.336395, 35.670860, 39.113407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606689, 35.896530, 38.923630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345486, 0.326162, 0.879919,
		0.651172, -0.758502, 0.025485,
		0.675733, 0.564174, -0.474439,
		30.809410, 36.065781, 38.781300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058102, 35.547787, 39.366898>,  <30.336395, 35.670860, 39.113407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058102, 35.547787, 39.366898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074276, 35.912304, 39.202988>,  <31.083981, 36.131012, 39.104641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074276, 35.912304, 39.202988>,  <31.058102, 35.547787, 39.366898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074276, 35.912304, 39.202988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373302, 0.366635, 0.852188,
		0.926828, -0.187428, -0.325362,
		0.040435, 0.911290, -0.409775,
		31.086407, 36.185692, 39.080055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684416, 35.779903, 39.643982>,  <31.058102, 35.547787, 39.366898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684416, 35.779903, 39.643982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513670, 36.111984, 39.500568>,  <31.411222, 36.311234, 39.414520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513670, 36.111984, 39.500568>,  <31.684416, 35.779903, 39.643982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513670, 36.111984, 39.500568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491315, 0.545761, 0.678789,
		0.759208, 0.113598, -0.640858,
		-0.426864, 0.830205, -0.358534,
		31.385611, 36.361046, 39.393009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201218, 36.304962, 39.777283>,  <31.684416, 35.779903, 39.643982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201218, 36.304962, 39.777283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847675, 36.484707, 39.725323>,  <31.635550, 36.592552, 39.694149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847675, 36.484707, 39.725323>,  <32.201218, 36.304962, 39.777283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847675, 36.484707, 39.725323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228436, 0.656998, 0.718450,
		0.408184, 0.605333, -0.683342,
		-0.883857, 0.449360, -0.129897,
		31.582518, 36.619514, 39.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393284, 37.071095, 39.783352>,  <32.201218, 36.304962, 39.777283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393284, 37.071095, 39.783352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006649, 37.029472, 39.877064>,  <31.774668, 37.004501, 39.933292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006649, 37.029472, 39.877064>,  <32.393284, 37.071095, 39.783352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006649, 37.029472, 39.877064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151058, 0.507191, 0.848492,
		-0.207112, 0.855529, -0.474525,
		-0.966585, -0.104053, 0.234280,
		31.716673, 36.998257, 39.947350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304562, 37.731869, 40.197937>,  <32.393284, 37.071095, 39.783352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304562, 37.731869, 40.197937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989901, 37.488609, 40.240513>,  <31.801104, 37.342655, 40.266056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989901, 37.488609, 40.240513>,  <32.304562, 37.731869, 40.197937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989901, 37.488609, 40.240513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157482, 0.364345, 0.917852,
		-0.596969, 0.705272, -0.382387,
		-0.786656, -0.608148, 0.106435,
		31.753904, 37.306164, 40.272442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733097, 38.210384, 40.357601>,  <32.304562, 37.731869, 40.197937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733097, 38.210384, 40.357601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684925, 37.835293, 40.487926>,  <31.656021, 37.610237, 40.566120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684925, 37.835293, 40.487926>,  <31.733097, 38.210384, 40.357601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684925, 37.835293, 40.487926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050676, 0.333580, 0.941359,
		-0.991428, 0.096857, -0.087694,
		-0.120430, -0.937733, 0.325813,
		31.648796, 37.553974, 40.585670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281397, 38.302174, 40.929703>,  <31.733097, 38.210384, 40.357601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281397, 38.302174, 40.929703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430378, 37.935883, 40.990005>,  <31.519766, 37.716110, 41.026188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430378, 37.935883, 40.990005>,  <31.281397, 38.302174, 40.929703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430378, 37.935883, 40.990005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126294, 0.110921, 0.985772,
		-0.919418, -0.386191, -0.074338,
		0.372451, -0.915725, 0.150757,
		31.542114, 37.661163, 41.035233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888409, 38.031422, 41.465622>,  <31.281397, 38.302174, 40.929703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888409, 38.031422, 41.465622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216452, 37.802544, 41.467121>,  <31.413277, 37.665215, 41.468021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216452, 37.802544, 41.467121>,  <30.888409, 38.031422, 41.465622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216452, 37.802544, 41.467121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040743, -0.051854, 0.997823,
		-0.570757, -0.818475, -0.065839,
		0.820108, -0.572197, 0.003751,
		31.462484, 37.630886, 41.468246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742445, 37.503826, 41.844177>,  <30.888409, 38.031422, 41.465622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742445, 37.503826, 41.844177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140608, 37.532318, 41.869774>,  <31.379505, 37.549412, 41.885132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140608, 37.532318, 41.869774>,  <30.742445, 37.503826, 41.844177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140608, 37.532318, 41.869774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064242, 0.001246, 0.997934,
		0.071001, -0.997459, 0.005817,
		0.995405, 0.071228, 0.063990,
		31.439230, 37.553684, 41.888969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981661, 37.034466, 42.424263>,  <30.742445, 37.503826, 41.844177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981661, 37.034466, 42.424263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236483, 37.327808, 42.329308>,  <31.389376, 37.503815, 42.272335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236483, 37.327808, 42.329308>,  <30.981661, 37.034466, 42.424263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236483, 37.327808, 42.329308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136541, 0.195735, 0.971105,
		0.758630, -0.651058, 0.024560,
		0.637053, 0.733356, -0.237386,
		31.427599, 37.547813, 42.258091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639263, 36.817623, 42.737747>,  <30.981661, 37.034466, 42.424263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639263, 36.817623, 42.737747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644060, 37.214890, 42.691315>,  <31.646938, 37.453251, 42.663456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644060, 37.214890, 42.691315>,  <31.639263, 36.817623, 42.737747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644060, 37.214890, 42.691315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216505, 0.110758, 0.969978,
		0.976208, -0.036766, -0.213697,
		0.011994, 0.993167, -0.116082,
		31.647657, 37.512840, 42.656490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245804, 37.117805, 43.042252>,  <31.639263, 36.817623, 42.737747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245804, 37.117805, 43.042252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981382, 37.417740, 43.031296>,  <31.822731, 37.597702, 43.024723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981382, 37.417740, 43.031296>,  <32.245804, 37.117805, 43.042252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981382, 37.417740, 43.031296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084594, 0.110753, 0.990241,
		0.745557, 0.652283, -0.136645,
		-0.661051, 0.749840, -0.027393,
		31.783068, 37.642693, 43.023079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419941, 37.388992, 43.558170>,  <32.245804, 37.117805, 43.042252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419941, 37.388992, 43.558170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069714, 37.569252, 43.488544>,  <31.859577, 37.677406, 43.446770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069714, 37.569252, 43.488544>,  <32.419941, 37.388992, 43.558170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069714, 37.569252, 43.488544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055355, 0.264347, 0.962838,
		0.479912, 0.852666, -0.206508,
		-0.875569, 0.450646, -0.174063,
		31.807043, 37.704445, 43.436325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471207, 37.944298, 43.972061>,  <32.419941, 37.388992, 43.558170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471207, 37.944298, 43.972061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084843, 37.857269, 43.915936>,  <31.853025, 37.805054, 43.882259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084843, 37.857269, 43.915936>,  <32.471207, 37.944298, 43.972061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084843, 37.857269, 43.915936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164534, 0.097456, 0.981545,
		-0.199879, 0.971167, -0.129931,
		-0.965907, -0.217569, -0.140310,
		31.795071, 37.792000, 43.873844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092728, 38.543041, 44.261967>,  <32.471207, 37.944298, 43.972061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092728, 38.543041, 44.261967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836123, 38.236553, 44.247154>,  <31.682159, 38.052662, 44.238266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836123, 38.236553, 44.247154>,  <32.092728, 38.543041, 44.261967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836123, 38.236553, 44.247154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209405, 0.128468, 0.969353,
		-0.737980, 0.629605, -0.242864,
		-0.641509, -0.766221, -0.037035,
		31.643669, 38.006687, 44.236042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644512, 38.721516, 44.832569>,  <32.092728, 38.543041, 44.261967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644512, 38.721516, 44.832569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533752, 38.346474, 44.748444>,  <31.467297, 38.121449, 44.697968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533752, 38.346474, 44.748444>,  <31.644512, 38.721516, 44.832569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533752, 38.346474, 44.748444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285505, -0.128714, 0.949695,
		-0.917505, 0.323015, -0.232049,
		-0.276898, -0.937600, -0.210318,
		31.450684, 38.065193, 44.685349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862906, 38.609348, 45.069550>,  <31.644512, 38.721516, 44.832569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862906, 38.609348, 45.069550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082611, 38.275089, 45.069611>,  <31.214434, 38.074532, 45.069649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082611, 38.275089, 45.069611>,  <30.862906, 38.609348, 45.069550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082611, 38.275089, 45.069611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226527, -0.148719, 0.962584,
		-0.804361, -0.528745, -0.270983,
		0.549262, -0.835650, 0.000151,
		31.247389, 38.024395, 45.069656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501455, 38.073109, 45.530182>,  <30.862906, 38.609348, 45.069550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501455, 38.073109, 45.530182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869099, 37.923874, 45.479519>,  <31.089685, 37.834332, 45.449123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869099, 37.923874, 45.479519>,  <30.501455, 38.073109, 45.530182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869099, 37.923874, 45.479519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010122, -0.298991, 0.954202,
		-0.393874, -0.878297, -0.271029,
		0.919109, -0.373093, -0.126655,
		31.144831, 37.811947, 45.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515471, 37.610977, 46.048981>,  <30.501455, 38.073109, 45.530182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515471, 37.610977, 46.048981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899286, 37.665459, 45.950405>,  <31.129576, 37.698147, 45.891262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899286, 37.665459, 45.950405>,  <30.515471, 37.610977, 46.048981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899286, 37.665459, 45.950405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280709, -0.394397, 0.875016,
		0.021985, -0.908790, -0.416673,
		0.959541, 0.136201, -0.246434,
		31.187149, 37.706318, 45.876476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839258, 37.022560, 46.438164>,  <30.515471, 37.610977, 46.048981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839258, 37.022560, 46.438164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121496, 37.292912, 46.353008>,  <31.290840, 37.455124, 46.301914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121496, 37.292912, 46.353008>,  <30.839258, 37.022560, 46.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121496, 37.292912, 46.353008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383721, -0.111862, 0.916649,
		0.595729, -0.728474, -0.338278,
		0.705596, 0.675879, -0.212891,
		31.333176, 37.495674, 46.289143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227926, 36.814804, 46.889118>,  <30.839258, 37.022560, 46.438164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227926, 36.814804, 46.889118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404743, 37.147366, 46.754436>,  <31.510834, 37.346901, 46.673626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404743, 37.147366, 46.754436>,  <31.227926, 36.814804, 46.889118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404743, 37.147366, 46.754436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560291, 0.037208, 0.827460,
		0.700479, -0.554425, -0.449379,
		0.442044, 0.831402, -0.336703,
		31.537355, 37.396786, 46.653427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955139, 36.730198, 46.889351>,  <31.227926, 36.814804, 46.889118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955139, 36.730198, 46.889351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889469, 37.124413, 46.906170>,  <31.850067, 37.360939, 46.916260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889469, 37.124413, 46.906170>,  <31.955139, 36.730198, 46.889351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889469, 37.124413, 46.906170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463600, 0.039465, 0.885165,
		0.870701, 0.164817, -0.463373,
		-0.164177, 0.985534, 0.042047,
		31.840216, 37.420074, 46.918785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614643, 37.046894, 47.041367>,  <31.955139, 36.730198, 46.889351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614643, 37.046894, 47.041367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343033, 37.317554, 47.155258>,  <32.180065, 37.479950, 47.223591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343033, 37.317554, 47.155258>,  <32.614643, 37.046894, 47.041367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343033, 37.317554, 47.155258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439007, 0.063420, 0.896243,
		0.588383, 0.733570, -0.340117,
		-0.679027, 0.676648, 0.284727,
		32.139324, 37.520550, 47.240677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998322, 37.657131, 47.272884>,  <32.614643, 37.046894, 47.041367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998322, 37.657131, 47.272884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660591, 37.625454, 47.484859>,  <32.457951, 37.606445, 47.612045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660591, 37.625454, 47.484859>,  <32.998322, 37.657131, 47.272884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660591, 37.625454, 47.484859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535806, -0.116787, 0.836225,
		-0.004335, 0.989995, 0.141040,
		-0.844330, -0.079195, 0.529939,
		32.407291, 37.601696, 47.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084488, 38.055500, 47.888775>,  <32.998322, 37.657131, 47.272884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084488, 38.055500, 47.888775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788395, 37.791325, 47.939182>,  <32.610741, 37.632820, 47.969425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788395, 37.791325, 47.939182>,  <33.084488, 38.055500, 47.888775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788395, 37.791325, 47.939182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411337, -0.296585, 0.861881,
		-0.531844, 0.689826, 0.491204,
		-0.740232, -0.660437, 0.126014,
		32.566326, 37.593193, 47.976986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864571, 38.230148, 48.504482>,  <33.084488, 38.055500, 47.888775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864571, 38.230148, 48.504482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817623, 37.851707, 48.383739>,  <32.789455, 37.624645, 48.311295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817623, 37.851707, 48.383739>,  <32.864571, 38.230148, 48.504482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817623, 37.851707, 48.383739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431000, -0.322370, 0.842803,
		-0.894686, -0.031183, 0.445605,
		-0.117368, -0.946100, -0.301860,
		32.782413, 37.567879, 48.293182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712273, 37.949852, 49.086842>,  <32.864571, 38.230148, 48.504482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712273, 37.949852, 49.086842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795891, 37.624798, 48.869247>,  <32.846062, 37.429764, 48.738689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795891, 37.624798, 48.869247>,  <32.712273, 37.949852, 49.086842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795891, 37.624798, 48.869247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333478, -0.463697, 0.820840,
		-0.919289, -0.353001, 0.174062,
		0.209045, -0.812635, -0.543989,
		32.858604, 37.381008, 48.706051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369438, 37.443527, 49.328411>,  <32.712273, 37.949852, 49.086842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369438, 37.443527, 49.328411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694351, 37.287766, 49.154720>,  <32.889301, 37.194309, 49.050507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694351, 37.287766, 49.154720>,  <32.369438, 37.443527, 49.328411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694351, 37.287766, 49.154720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292575, -0.372011, 0.880913,
		-0.504572, -0.842597, -0.188248,
		0.812285, -0.389407, -0.434229,
		32.938038, 37.170944, 49.024452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415382, 36.848816, 49.643345>,  <32.369438, 37.443527, 49.328411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415382, 36.848816, 49.643345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774315, 36.883106, 49.470165>,  <32.989674, 36.903683, 49.366257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774315, 36.883106, 49.470165>,  <32.415382, 36.848816, 49.643345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774315, 36.883106, 49.470165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426379, -0.421744, 0.800208,
		-0.113992, -0.902653, -0.414998,
		0.897333, 0.085729, -0.432948,
		33.043514, 36.908825, 49.340282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814487, 36.128811, 49.563091>,  <32.415382, 36.848816, 49.643345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814487, 36.128811, 49.563091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062485, 36.442646, 49.565193>,  <33.211285, 36.630947, 49.566452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062485, 36.442646, 49.565193>,  <32.814487, 36.128811, 49.563091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062485, 36.442646, 49.565193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434841, -0.349175, 0.830054,
		0.653084, -0.512346, -0.557658,
		0.619996, 0.784588, 0.005252,
		33.248482, 36.678020, 49.566769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423946, 35.917900, 49.463242>,  <32.814487, 36.128811, 49.563091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423946, 35.917900, 49.463242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504543, 36.269981, 49.635124>,  <33.552902, 36.481232, 49.738255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504543, 36.269981, 49.635124>,  <33.423946, 35.917900, 49.463242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504543, 36.269981, 49.635124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517568, -0.468130, 0.716225,
		0.831580, 0.078089, -0.549888,
		0.201490, 0.880203, 0.429704,
		33.564991, 36.534042, 49.764034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156937, 35.848072, 49.693512>,  <33.423946, 35.917900, 49.463242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156937, 35.848072, 49.693512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006893, 36.150784, 49.907642>,  <33.916866, 36.332413, 50.036121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006893, 36.150784, 49.907642>,  <34.156937, 35.848072, 49.693512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006893, 36.150784, 49.907642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351613, -0.418175, 0.837555,
		0.857706, 0.502403, -0.109232,
		-0.375112, 0.756783, 0.535323,
		33.894360, 36.377819, 50.068241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629826, 36.010586, 50.179497>,  <34.156937, 35.848072, 49.693512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629826, 36.010586, 50.179497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293064, 36.157490, 50.337646>,  <34.091007, 36.245632, 50.432537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293064, 36.157490, 50.337646>,  <34.629826, 36.010586, 50.179497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293064, 36.157490, 50.337646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263063, -0.360396, 0.894937,
		0.471163, 0.857459, 0.206807,
		-0.841905, 0.367258, 0.395371,
		34.040493, 36.267666, 50.456257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835186, 36.188141, 50.845173>,  <34.629826, 36.010586, 50.179497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835186, 36.188141, 50.845173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436890, 36.201374, 50.879604>,  <34.197914, 36.209312, 50.900265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436890, 36.201374, 50.879604>,  <34.835186, 36.188141, 50.845173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436890, 36.201374, 50.879604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078098, -0.193825, 0.977923,
		0.049037, 0.980478, 0.190415,
		-0.995739, 0.033084, 0.086078,
		34.138168, 36.211300, 50.905426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718613, 36.437622, 51.508430>,  <34.835186, 36.188141, 50.845173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718613, 36.437622, 51.508430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355415, 36.298702, 51.414680>,  <34.137497, 36.215351, 51.358433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355415, 36.298702, 51.414680>,  <34.718613, 36.437622, 51.508430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355415, 36.298702, 51.414680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173047, -0.198590, 0.964685,
		-0.381575, 0.916487, 0.120221,
		-0.907995, -0.347295, -0.234372,
		34.083015, 36.194515, 51.344368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217842, 36.892914, 51.964958>,  <34.718613, 36.437622, 51.508430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217842, 36.892914, 51.964958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066639, 36.536720, 51.863647>,  <33.975918, 36.323002, 51.802860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066639, 36.536720, 51.863647>,  <34.217842, 36.892914, 51.964958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066639, 36.536720, 51.863647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296938, -0.142506, 0.944203,
		-0.876893, 0.432119, -0.210551,
		-0.378003, -0.890486, -0.253275,
		33.953239, 36.269573, 51.787666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631889, 36.902115, 52.406624>,  <34.217842, 36.892914, 51.964958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631889, 36.902115, 52.406624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736069, 36.533169, 52.292500>,  <33.798576, 36.311802, 52.224026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736069, 36.533169, 52.292500>,  <33.631889, 36.902115, 52.406624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736069, 36.533169, 52.292500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263362, -0.352174, 0.898117,
		-0.928874, -0.158773, -0.334640,
		0.260448, -0.922369, -0.285311,
		33.814201, 36.256458, 52.206905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153996, 36.471149, 52.701389>,  <33.631889, 36.902115, 52.406624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153996, 36.471149, 52.701389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469284, 36.227390, 52.667107>,  <33.658459, 36.081135, 52.646538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469284, 36.227390, 52.667107>,  <33.153996, 36.471149, 52.701389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469284, 36.227390, 52.667107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192213, -0.376092, 0.906426,
		-0.584605, -0.697990, -0.413577,
		0.788220, -0.609396, -0.085703,
		33.705750, 36.044571, 52.641396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909481, 35.880314, 53.084572>,  <33.153996, 36.471149, 52.701389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909481, 35.880314, 53.084572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306923, 35.912266, 53.052647>,  <33.545387, 35.931438, 53.033493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306923, 35.912266, 53.052647>,  <32.909481, 35.880314, 53.084572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306923, 35.912266, 53.052647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107346, -0.448904, 0.887109,
		0.035039, -0.890002, -0.454608,
		0.993604, 0.079884, -0.079809,
		33.605003, 35.936230, 53.028706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536362, 36.125622, 53.588253>,  <32.909481, 35.880314, 53.084572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536362, 36.125622, 53.588253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339817, 36.079781, 53.933605>,  <33.221889, 36.052277, 54.140816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339817, 36.079781, 53.933605>,  <33.536362, 36.125622, 53.588253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339817, 36.079781, 53.933605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719656, -0.611782, 0.328355,
		0.490572, 0.782680, 0.383082,
		-0.491359, -0.114605, 0.863384,
		33.192410, 36.045399, 54.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016758, 36.228531, 54.098663>,  <33.536362, 36.125622, 53.588253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016758, 36.228531, 54.098663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702507, 36.007214, 54.209419>,  <33.513958, 35.874424, 54.275871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702507, 36.007214, 54.209419>,  <34.016758, 36.228531, 54.098663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702507, 36.007214, 54.209419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617487, -0.673098, 0.407001,
		-0.038819, 0.490722, 0.870451,
		-0.785623, -0.553291, 0.276885,
		33.466820, 35.841225, 54.292484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005959, 36.092789, 54.915585>,  <34.016758, 36.228531, 54.098663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005959, 36.092789, 54.915585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890751, 35.837948, 54.629608>,  <33.821625, 35.685043, 54.458023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890751, 35.837948, 54.629608>,  <34.005959, 36.092789, 54.915585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890751, 35.837948, 54.629608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718765, -0.637154, 0.278228,
		-0.632789, -0.433741, 0.641441,
		-0.288018, -0.637105, -0.714942,
		33.804344, 35.646816, 54.415127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953209, 35.444248, 55.152596>,  <34.005959, 36.092789, 54.915585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953209, 35.444248, 55.152596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046509, 35.447365, 54.763641>,  <34.102489, 35.449234, 54.530270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046509, 35.447365, 54.763641>,  <33.953209, 35.444248, 55.152596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046509, 35.447365, 54.763641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852147, -0.483357, 0.200529,
		-0.468446, -0.875389, -0.119384,
		0.233246, 0.007796, -0.972386,
		34.116482, 35.449703, 54.471924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148735, 34.739925, 54.910027>,  <33.953209, 35.444248, 55.152596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148735, 34.739925, 54.910027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363262, 35.014610, 54.713745>,  <34.491978, 35.179420, 54.595978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363262, 35.014610, 54.713745>,  <34.148735, 34.739925, 54.910027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363262, 35.014610, 54.713745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840868, -0.484899, 0.240447,
		-0.072822, -0.541571, -0.837495,
		0.536319, 0.686713, -0.490701,
		34.524158, 35.220623, 54.566536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614468, 34.336998, 54.789787>,  <34.148735, 34.739925, 54.910027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614468, 34.336998, 54.789787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788082, 34.688030, 54.708344>,  <34.892250, 34.898651, 54.659477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788082, 34.688030, 54.708344>,  <34.614468, 34.336998, 54.789787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788082, 34.688030, 54.708344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900621, -0.417092, 0.122128,
		0.022253, -0.236385, -0.971404,
		0.434035, 0.877585, -0.203612,
		34.918293, 34.951305, 54.647259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020164, 34.353901, 54.216824>,  <34.614468, 34.336998, 54.789787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020164, 34.353901, 54.216824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169430, 34.648026, 54.443119>,  <35.258991, 34.824501, 54.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169430, 34.648026, 54.443119>,  <35.020164, 34.353901, 54.216824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169430, 34.648026, 54.443119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875637, -0.480663, 0.047154,
		0.306604, 0.477787, -0.823234,
		0.373168, 0.735311, 0.565741,
		35.281380, 34.868618, 54.612843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185810, 34.977753, 53.818947>,  <35.020164, 34.353901, 54.216824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185810, 34.977753, 53.818947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135098, 34.691708, 53.543980>,  <35.104671, 34.520081, 53.378998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135098, 34.691708, 53.543980>,  <35.185810, 34.977753, 53.818947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135098, 34.691708, 53.543980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534113, 0.534756, -0.654797,
		0.835853, -0.450174, 0.314154,
		-0.126777, -0.715108, -0.687421,
		35.097065, 34.477177, 53.337753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842655, 34.704700, 53.547779>,  <35.185810, 34.977753, 53.818947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842655, 34.704700, 53.547779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569717, 34.661636, 53.258556>,  <35.405956, 34.635796, 53.085022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569717, 34.661636, 53.258556>,  <35.842655, 34.704700, 53.547779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569717, 34.661636, 53.258556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694520, 0.213204, -0.687158,
		0.228144, -0.971057, -0.070700,
		-0.682343, -0.107668, -0.723060,
		35.365013, 34.629337, 53.041637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170692, 34.318100, 52.934322>,  <35.842655, 34.704700, 53.547779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170692, 34.318100, 52.934322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842407, 34.464058, 52.758469>,  <35.645435, 34.551632, 52.652958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842407, 34.464058, 52.758469>,  <36.170692, 34.318100, 52.934322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842407, 34.464058, 52.758469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524928, 0.177794, -0.832370,
		-0.225565, -0.913915, -0.337462,
		-0.820714, 0.364897, -0.439635,
		35.596191, 34.573528, 52.626579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183784, 34.015026, 52.293964>,  <36.170692, 34.318100, 52.934322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183784, 34.015026, 52.293964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909916, 34.302174, 52.243542>,  <35.745594, 34.474461, 52.213287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909916, 34.302174, 52.243542>,  <36.183784, 34.015026, 52.293964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909916, 34.302174, 52.243542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404021, 0.229861, -0.885399,
		-0.606626, -0.657135, -0.447414,
		-0.684669, 0.717870, -0.126057,
		35.704514, 34.517536, 52.205723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772533, 33.917095, 51.575317>,  <36.183784, 34.015026, 52.293964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772533, 33.917095, 51.575317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747364, 34.291466, 51.713924>,  <35.732262, 34.516090, 51.797089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747364, 34.291466, 51.713924>,  <35.772533, 33.917095, 51.575317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747364, 34.291466, 51.713924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152391, 0.352148, -0.923455,
		-0.986315, -0.005296, -0.164784,
		-0.062919, 0.935929, 0.346521,
		35.728489, 34.572243, 51.817883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274078, 34.351143, 51.159576>,  <35.772533, 33.917095, 51.575317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274078, 34.351143, 51.159576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558823, 34.581078, 51.320980>,  <35.729671, 34.719036, 51.417820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558823, 34.581078, 51.320980>,  <35.274078, 34.351143, 51.159576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558823, 34.581078, 51.320980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189356, 0.396166, -0.898441,
		-0.676308, 0.715975, 0.173169,
		0.711865, 0.574832, 0.403505,
		35.772381, 34.753529, 51.442032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297504, 34.784470, 50.632030>,  <35.274078, 34.351143, 51.159576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297504, 34.784470, 50.632030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619640, 34.877186, 50.850277>,  <35.812923, 34.932816, 50.981224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619640, 34.877186, 50.850277>,  <35.297504, 34.784470, 50.632030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619640, 34.877186, 50.850277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559453, 0.007201, -0.828831,
		-0.196043, 0.972739, -0.123876,
		0.805344, 0.231790, 0.545614,
		35.861244, 34.946724, 51.013962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609795, 35.413990, 50.318726>,  <35.297504, 34.784470, 50.632030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609795, 35.413990, 50.318726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903851, 35.261658, 50.543056>,  <36.080284, 35.170258, 50.677654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903851, 35.261658, 50.543056>,  <35.609795, 35.413990, 50.318726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903851, 35.261658, 50.543056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643321, 0.131029, -0.754301,
		0.213779, 0.915312, 0.341325,
		0.735144, -0.380835, 0.560828,
		36.124393, 35.147408, 50.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176331, 35.877808, 50.299095>,  <35.609795, 35.413990, 50.318726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176331, 35.877808, 50.299095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312466, 35.510300, 50.379120>,  <36.394146, 35.289795, 50.427135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312466, 35.510300, 50.379120>,  <36.176331, 35.877808, 50.299095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312466, 35.510300, 50.379120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677355, 0.091973, -0.729884,
		0.652198, 0.383920, 0.653638,
		0.340334, -0.918774, 0.200065,
		36.414566, 35.234669, 50.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993294, 35.919064, 50.193386>,  <36.176331, 35.877808, 50.299095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993294, 35.919064, 50.193386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852043, 35.546902, 50.154102>,  <36.767292, 35.323605, 50.130531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852043, 35.546902, 50.154102>,  <36.993294, 35.919064, 50.193386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852043, 35.546902, 50.154102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692180, -0.189196, -0.696485,
		0.629434, -0.313925, 0.710819,
		-0.353128, -0.930406, -0.098206,
		36.746105, 35.267780, 50.124641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542648, 35.592102, 50.037437>,  <36.993294, 35.919064, 50.193386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542648, 35.592102, 50.037437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261570, 35.322220, 49.947117>,  <37.092922, 35.160290, 49.892925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261570, 35.322220, 49.947117>,  <37.542648, 35.592102, 50.037437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261570, 35.322220, 49.947117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460199, -0.188971, -0.867472,
		0.542619, -0.713484, 0.443290,
		-0.702696, -0.674708, -0.225805,
		37.050762, 35.119808, 49.879375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886898, 35.081806, 49.576588>,  <37.542648, 35.592102, 50.037437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886898, 35.081806, 49.576588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500221, 35.029095, 49.488819>,  <37.268215, 34.997467, 49.436157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500221, 35.029095, 49.488819>,  <37.886898, 35.081806, 49.576588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500221, 35.029095, 49.488819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249697, -0.297243, -0.921574,
		0.056223, -0.945664, 0.320247,
		-0.966690, -0.131778, -0.219418,
		37.210213, 34.989563, 49.422993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881027, 34.492302, 49.145939>,  <37.886898, 35.081806, 49.576588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881027, 34.492302, 49.145939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515270, 34.643482, 49.087925>,  <37.295815, 34.734188, 49.053116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515270, 34.643482, 49.087925>,  <37.881027, 34.492302, 49.145939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515270, 34.643482, 49.087925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053537, -0.242223, -0.968742,
		-0.401265, -0.893579, 0.201254,
		-0.914396, 0.377948, -0.145036,
		37.240952, 34.756866, 49.044415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462345, 33.994991, 48.762779>,  <37.881027, 34.492302, 49.145939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462345, 33.994991, 48.762779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306461, 34.353142, 48.676594>,  <37.212933, 34.568031, 48.624882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306461, 34.353142, 48.676594>,  <37.462345, 33.994991, 48.762779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306461, 34.353142, 48.676594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130865, -0.177747, -0.975336,
		-0.911592, -0.408295, -0.047904,
		-0.389710, 0.895378, -0.215464,
		37.189548, 34.621754, 48.611954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100986, 33.875065, 48.102921>,  <37.462345, 33.994991, 48.762779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100986, 33.875065, 48.102921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053284, 34.270802, 48.136326>,  <37.024662, 34.508244, 48.156368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053284, 34.270802, 48.136326>,  <37.100986, 33.875065, 48.102921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053284, 34.270802, 48.136326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093148, 0.072592, -0.993002,
		-0.988484, -0.126205, 0.083498,
		-0.119261, 0.989345, 0.083512,
		37.017506, 34.567604, 48.161381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412987, 34.101482, 47.931892>,  <37.100986, 33.875065, 48.102921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412987, 34.101482, 47.931892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720566, 34.346779, 47.859615>,  <36.905113, 34.493958, 47.816250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720566, 34.346779, 47.859615>,  <36.412987, 34.101482, 47.931892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720566, 34.346779, 47.859615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190994, -0.049376, -0.980349,
		-0.610116, 0.788348, 0.079159,
		0.768947, 0.613245, -0.180694,
		36.951248, 34.530754, 47.805408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177059, 34.580799, 47.465576>,  <36.412987, 34.101482, 47.931892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177059, 34.580799, 47.465576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570621, 34.574699, 47.394363>,  <36.806759, 34.571041, 47.351635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570621, 34.574699, 47.394363>,  <36.177059, 34.580799, 47.465576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570621, 34.574699, 47.394363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178676, -0.089417, -0.979836,
		-0.000981, 0.995878, -0.090702,
		0.983907, -0.015245, -0.178027,
		36.865795, 34.570126, 47.340954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215221, 34.971844, 46.801392>,  <36.177059, 34.580799, 47.465576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215221, 34.971844, 46.801392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560757, 34.776485, 46.850788>,  <36.768078, 34.659271, 46.880428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560757, 34.776485, 46.850788>,  <36.215221, 34.971844, 46.801392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560757, 34.776485, 46.850788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105776, -0.415521, -0.903412,
		0.492541, 0.767338, -0.410603,
		0.863837, -0.488400, 0.123495,
		36.819908, 34.629967, 46.887836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609119, 35.057285, 46.171761>,  <36.215221, 34.971844, 46.801392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609119, 35.057285, 46.171761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752621, 34.728794, 46.349243>,  <36.838722, 34.531700, 46.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752621, 34.728794, 46.349243>,  <36.609119, 35.057285, 46.171761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752621, 34.728794, 46.349243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011271, -0.479126, -0.877674,
		0.933365, 0.309865, -0.181143,
		0.358751, -0.821232, 0.443707,
		36.860245, 34.482426, 46.482357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208439, 34.907429, 45.768078>,  <36.609119, 35.057285, 46.171761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208439, 34.907429, 45.768078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066360, 34.573189, 45.935703>,  <36.981113, 34.372646, 46.036278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066360, 34.573189, 45.935703>,  <37.208439, 34.907429, 45.768078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066360, 34.573189, 45.935703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106601, -0.409161, -0.906214,
		0.928694, -0.366556, 0.056257,
		-0.355196, -0.835598, 0.419061,
		36.959801, 34.322510, 46.061420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369518, 34.464603, 45.260883>,  <37.208439, 34.907429, 45.768078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369518, 34.464603, 45.260883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104370, 34.258171, 45.477867>,  <36.945282, 34.134312, 45.608059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104370, 34.258171, 45.477867>,  <37.369518, 34.464603, 45.260883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104370, 34.258171, 45.477867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301277, -0.479418, -0.824252,
		0.685447, -0.709802, 0.162307,
		-0.662868, -0.516082, 0.542462,
		36.905510, 34.103348, 45.640606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523579, 33.804291, 45.056656>,  <37.369518, 34.464603, 45.260883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523579, 33.804291, 45.056656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144962, 33.803131, 45.185680>,  <36.917793, 33.802437, 45.263096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144962, 33.803131, 45.185680>,  <37.523579, 33.804291, 45.056656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144962, 33.803131, 45.185680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279350, -0.492648, -0.824173,
		0.161300, -0.870224, 0.465503,
		-0.946544, -0.002901, 0.322561,
		36.861000, 33.802261, 45.282448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273918, 33.167953, 44.771477>,  <37.523579, 33.804291, 45.056656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273918, 33.167953, 44.771477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937557, 33.355904, 44.878883>,  <36.735741, 33.468674, 44.943329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937557, 33.355904, 44.878883>,  <37.273918, 33.167953, 44.771477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937557, 33.355904, 44.878883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487948, -0.443663, -0.751711,
		-0.234076, -0.763139, 0.602351,
		-0.840901, 0.469874, 0.268522,
		36.685287, 33.496864, 44.959438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764362, 32.628708, 44.805199>,  <37.273918, 33.167953, 44.771477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764362, 32.628708, 44.805199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581470, 32.980820, 44.754517>,  <36.471733, 33.192085, 44.724110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581470, 32.980820, 44.754517>,  <36.764362, 32.628708, 44.805199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581470, 32.980820, 44.754517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445755, -0.350112, -0.823847,
		-0.769572, -0.320211, 0.552470,
		-0.457231, 0.880276, -0.126701,
		36.444302, 33.244904, 44.716507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063530, 32.488548, 44.533970>,  <36.764362, 32.628708, 44.805199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063530, 32.488548, 44.533970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125168, 32.873577, 44.444782>,  <36.162151, 33.104595, 44.391270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125168, 32.873577, 44.444782>,  <36.063530, 32.488548, 44.533970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125168, 32.873577, 44.444782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626666, -0.079253, -0.775247,
		-0.763900, 0.259187, 0.590998,
		0.154096, 0.962570, -0.222965,
		36.171398, 33.162350, 44.377892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375027, 32.783226, 44.352291>,  <36.063530, 32.488548, 44.533970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375027, 32.783226, 44.352291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644238, 33.036858, 44.199986>,  <35.805763, 33.189037, 44.108601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644238, 33.036858, 44.199986>,  <35.375027, 32.783226, 44.352291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644238, 33.036858, 44.199986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528643, 0.052360, -0.847228,
		-0.517269, 0.771497, 0.370439,
		0.673030, 0.634075, -0.380762,
		35.846146, 33.227081, 44.085758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908703, 33.206844, 43.931549>,  <35.375027, 32.783226, 44.352291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908703, 33.206844, 43.931549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284363, 33.283218, 43.817333>,  <35.509758, 33.329044, 43.748802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284363, 33.283218, 43.817333>,  <34.908703, 33.206844, 43.931549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284363, 33.283218, 43.817333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316969, 0.161374, -0.934607,
		-0.132374, 0.968246, 0.212077,
		0.939153, 0.190939, -0.285542,
		35.566109, 33.340500, 43.731670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876610, 33.833096, 43.498276>,  <34.908703, 33.206844, 43.931549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876610, 33.833096, 43.498276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214668, 33.633472, 43.421677>,  <35.417503, 33.513699, 43.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214668, 33.633472, 43.421677>,  <34.876610, 33.833096, 43.498276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214668, 33.633472, 43.421677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123129, 0.166869, -0.978261,
		0.520160, 0.850353, 0.079581,
		0.845147, -0.499054, -0.191502,
		35.468212, 33.483757, 43.364227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295288, 34.164654, 43.047771>,  <34.876610, 33.833096, 43.498276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295288, 34.164654, 43.047771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446461, 33.798389, 42.993019>,  <35.537167, 33.578632, 42.960167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446461, 33.798389, 42.993019>,  <35.295288, 34.164654, 43.047771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446461, 33.798389, 42.993019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186113, 0.069691, -0.980054,
		0.906933, 0.395872, -0.144077,
		0.377935, -0.915657, -0.136882,
		35.559841, 33.523693, 42.951954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755886, 34.216690, 42.513409>,  <35.295288, 34.164654, 43.047771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755886, 34.216690, 42.513409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623451, 33.841465, 42.554241>,  <35.543991, 33.616329, 42.578739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623451, 33.841465, 42.554241>,  <35.755886, 34.216690, 42.513409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623451, 33.841465, 42.554241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270956, -0.009114, -0.962549,
		0.903862, -0.346345, -0.251156,
		-0.331085, -0.938063, 0.102082,
		35.524124, 33.560047, 42.584866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957607, 33.974422, 41.874943>,  <35.755886, 34.216690, 42.513409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957607, 33.974422, 41.874943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709763, 33.687016, 42.001308>,  <35.561054, 33.514572, 42.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709763, 33.687016, 42.001308>,  <35.957607, 33.974422, 41.874943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709763, 33.687016, 42.001308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359371, -0.098126, -0.928021,
		0.697802, -0.688549, -0.197415,
		-0.619616, -0.718521, 0.315917,
		35.523876, 33.471458, 42.096085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893631, 33.490589, 41.328140>,  <35.957607, 33.974422, 41.874943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893631, 33.490589, 41.328140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574234, 33.356522, 41.528172>,  <35.382595, 33.276081, 41.648190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574234, 33.356522, 41.528172>,  <35.893631, 33.490589, 41.328140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574234, 33.356522, 41.528172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425437, -0.273560, -0.862652,
		0.425935, -0.901569, 0.075841,
		-0.798488, -0.335168, 0.500079,
		35.334686, 33.255970, 41.678196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741520, 32.860237, 41.006653>,  <35.893631, 33.490589, 41.328140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741520, 32.860237, 41.006653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417320, 32.974518, 41.211185>,  <35.222801, 33.043087, 41.333904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417320, 32.974518, 41.211185>,  <35.741520, 32.860237, 41.006653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417320, 32.974518, 41.211185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565340, -0.153219, -0.810503,
		-0.153219, -0.945990, 0.285705,
		0.810503, -0.285705, -0.511330,
		35.174168, 33.060230, 41.364586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181015, 32.413513, 40.834133>,  <35.741520, 32.860237, 41.006653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181015, 32.413513, 40.834133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057838, 32.778557, 40.941696>,  <34.983932, 32.997585, 41.006233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057838, 32.778557, 40.941696>,  <35.181015, 32.413513, 40.834133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057838, 32.778557, 40.941696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575958, 0.046144, -0.816176,
		-0.757260, -0.406215, 0.511416,
		-0.307944, 0.912612, 0.268906,
		34.965454, 33.052341, 41.022369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432617, 32.429962, 40.716995>,  <35.181015, 32.413513, 40.834133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432617, 32.429962, 40.716995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527008, 32.818459, 40.729683>,  <34.583641, 33.051556, 40.737297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527008, 32.818459, 40.729683>,  <34.432617, 32.429962, 40.716995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527008, 32.818459, 40.729683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616070, 0.174771, -0.768058,
		-0.751513, 0.161701, 0.639594,
		0.235979, 0.971240, 0.031724,
		34.597801, 33.109829, 40.739201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784561, 32.829735, 40.498676>,  <34.432617, 32.429962, 40.716995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784561, 32.829735, 40.498676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077312, 33.100433, 40.466778>,  <34.252964, 33.262852, 40.447639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077312, 33.100433, 40.466778>,  <33.784561, 32.829735, 40.498676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077312, 33.100433, 40.466778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416859, 0.352069, -0.838019,
		-0.539053, 0.646574, 0.539782,
		0.731882, 0.676749, -0.079747,
		34.296879, 33.303459, 40.442852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467358, 33.393665, 40.285881>,  <33.784561, 32.829735, 40.498676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467358, 33.393665, 40.285881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842056, 33.486912, 40.181454>,  <34.066875, 33.542858, 40.118797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842056, 33.486912, 40.181454>,  <33.467358, 33.393665, 40.285881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842056, 33.486912, 40.181454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337851, 0.407449, -0.848435,
		-0.091407, 0.882975, 0.460435,
		0.936751, 0.233112, -0.261069,
		34.123081, 33.556847, 40.103134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422695, 34.068371, 40.146759>,  <33.467358, 33.393665, 40.285881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422695, 34.068371, 40.146759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746822, 33.939236, 39.951145>,  <33.941299, 33.861755, 39.833775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746822, 33.939236, 39.951145>,  <33.422695, 34.068371, 40.146759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746822, 33.939236, 39.951145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323376, 0.449611, -0.832633,
		0.488681, 0.832843, 0.259931,
		0.810320, -0.322836, -0.489038,
		33.989918, 33.842384, 39.804436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653130, 34.642624, 39.898056>,  <33.422695, 34.068371, 40.146759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653130, 34.642624, 39.898056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864647, 34.403019, 39.657536>,  <33.991558, 34.259258, 39.513222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864647, 34.403019, 39.657536>,  <33.653130, 34.642624, 39.898056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864647, 34.403019, 39.657536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241566, 0.572941, -0.783188,
		0.813651, 0.559397, 0.158265,
		0.528790, -0.599010, -0.601305,
		34.023285, 34.223316, 39.477142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154434, 34.985413, 39.477772>,  <33.653130, 34.642624, 39.898056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154434, 34.985413, 39.477772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030773, 34.658924, 39.282543>,  <33.956577, 34.463032, 39.165405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030773, 34.658924, 39.282543>,  <34.154434, 34.985413, 39.477772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030773, 34.658924, 39.282543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185904, 0.555176, -0.810690,
		0.932664, -0.159896, -0.323374,
		-0.309156, -0.816218, -0.488067,
		33.938026, 34.414059, 39.136124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483749, 35.095402, 38.852940>,  <34.154434, 34.985413, 39.477772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483749, 35.095402, 38.852940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173286, 34.850048, 38.794502>,  <33.987011, 34.702835, 38.759441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173286, 34.850048, 38.794502>,  <34.483749, 35.095402, 38.852940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173286, 34.850048, 38.794502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274993, 0.537789, -0.796971,
		0.567423, -0.578393, -0.586083,
		-0.776151, -0.613388, -0.146099,
		33.940441, 34.666031, 38.750675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024521, 35.528938, 39.093121>,  <34.483749, 35.095402, 38.852940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024521, 35.528938, 39.093121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280701, 35.799660, 38.947933>,  <35.434410, 35.962093, 38.860821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280701, 35.799660, 38.947933>,  <35.024521, 35.528938, 39.093121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280701, 35.799660, 38.947933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742354, -0.424455, 0.518410,
		0.196799, -0.601472, -0.774275,
		0.640454, 0.676808, -0.362973,
		35.472836, 36.002701, 38.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606197, 35.152985, 38.982918>,  <35.024521, 35.528938, 39.093121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606197, 35.152985, 38.982918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732826, 35.530472, 38.944580>,  <35.808804, 35.756962, 38.921577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732826, 35.530472, 38.944580>,  <35.606197, 35.152985, 38.982918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732826, 35.530472, 38.944580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804434, -0.213555, 0.554329,
		0.502661, -0.252584, -0.826761,
		0.316573, 0.943714, -0.095841,
		35.827797, 35.813587, 38.915829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263554, 35.096970, 38.984901>,  <35.606197, 35.152985, 38.982918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263554, 35.096970, 38.984901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216717, 35.482700, 39.079861>,  <36.188614, 35.714138, 39.136837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216717, 35.482700, 39.079861>,  <36.263554, 35.096970, 38.984901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216717, 35.482700, 39.079861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779722, -0.058781, 0.623361,
		0.615080, 0.258098, -0.745025,
		-0.117094, 0.964329, 0.237400,
		36.181587, 35.771999, 39.151081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901852, 35.355110, 38.956276>,  <36.263554, 35.096970, 38.984901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901852, 35.355110, 38.956276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695385, 35.587353, 39.208138>,  <36.571507, 35.726700, 39.359253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695385, 35.587353, 39.208138>,  <36.901852, 35.355110, 38.956276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695385, 35.587353, 39.208138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673186, -0.179491, 0.717359,
		0.529523, 0.794151, -0.298211,
		-0.516165, 0.580610, 0.629655,
		36.540535, 35.761536, 39.397034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401886, 35.651978, 39.242657>,  <36.901852, 35.355110, 38.956276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401886, 35.651978, 39.242657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092247, 35.730614, 39.483368>,  <36.906464, 35.777794, 39.627792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092247, 35.730614, 39.483368>,  <37.401886, 35.651978, 39.242657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092247, 35.730614, 39.483368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599805, -0.076337, 0.796497,
		0.202521, 0.977510, -0.058823,
		-0.774093, 0.196590, 0.601775,
		36.860020, 35.789589, 39.663898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715206, 36.098961, 39.822865>,  <37.401886, 35.651978, 39.242657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715206, 36.098961, 39.822865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381374, 35.922005, 39.954178>,  <37.181076, 35.815830, 40.032967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381374, 35.922005, 39.954178>,  <37.715206, 36.098961, 39.822865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381374, 35.922005, 39.954178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438572, -0.172946, 0.881898,
		-0.333369, 0.879988, 0.338358,
		-0.834578, -0.442392, 0.328283,
		37.131001, 35.789288, 40.052662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644722, 36.323841, 40.460571>,  <37.715206, 36.098961, 39.822865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644722, 36.323841, 40.460571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389816, 36.016479, 40.484062>,  <37.236874, 35.832062, 40.498158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389816, 36.016479, 40.484062>,  <37.644722, 36.323841, 40.460571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389816, 36.016479, 40.484062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307985, -0.184084, 0.933412,
		-0.706430, 0.612914, 0.353967,
		-0.637261, -0.768407, 0.058726,
		37.198639, 35.785957, 40.501678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304379, 36.437889, 40.994808>,  <37.644722, 36.323841, 40.460571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304379, 36.437889, 40.994808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230694, 36.045635, 40.968227>,  <37.186485, 35.810284, 40.952278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230694, 36.045635, 40.968227>,  <37.304379, 36.437889, 40.994808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230694, 36.045635, 40.968227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385605, -0.134292, 0.912838,
		-0.904088, 0.142529, 0.402877,
		-0.184209, -0.980638, -0.066452,
		37.175430, 35.751442, 40.948292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893753, 36.100136, 41.554482>,  <37.304379, 36.437889, 40.994808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893753, 36.100136, 41.554482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101662, 35.789902, 41.411209>,  <37.226406, 35.603760, 41.325245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101662, 35.789902, 41.411209>,  <36.893753, 36.100136, 41.554482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101662, 35.789902, 41.411209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416578, -0.135943, 0.898878,
		-0.745852, -0.616427, 0.252433,
		0.519776, -0.775589, -0.358183,
		37.257595, 35.557224, 41.303753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803352, 35.527996, 42.022743>,  <36.893753, 36.100136, 41.554482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803352, 35.527996, 42.022743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133739, 35.465340, 41.806133>,  <37.331970, 35.427746, 41.676167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133739, 35.465340, 41.806133>,  <36.803352, 35.527996, 42.022743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133739, 35.465340, 41.806133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549660, 0.010566, 0.835321,
		-0.125123, -0.987599, 0.094825,
		0.825965, -0.156639, -0.541522,
		37.381531, 35.418350, 41.643677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158337, 35.025467, 42.468033>,  <36.803352, 35.527996, 42.022743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158337, 35.025467, 42.468033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446720, 35.154030, 42.222458>,  <37.619751, 35.231167, 42.075111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446720, 35.154030, 42.222458>,  <37.158337, 35.025467, 42.468033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446720, 35.154030, 42.222458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650751, -0.009460, 0.759232,
		0.238217, -0.946893, -0.215979,
		0.720955, 0.321411, -0.613938,
		37.663006, 35.250454, 42.038277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630978, 34.512321, 42.461178>,  <37.158337, 35.025467, 42.468033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630978, 34.512321, 42.461178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829472, 34.839539, 42.344864>,  <37.948566, 35.035870, 42.275074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829472, 34.839539, 42.344864>,  <37.630978, 34.512321, 42.461178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829472, 34.839539, 42.344864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694424, -0.172962, 0.698470,
		0.521086, -0.548530, -0.653900,
		0.496231, 0.818046, -0.290784,
		37.978340, 35.084953, 42.257629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344528, 34.534035, 42.389900>,  <37.630978, 34.512321, 42.461178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344528, 34.534035, 42.389900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493107, 34.903782, 42.424698>,  <38.582253, 35.125629, 42.445576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493107, 34.903782, 42.424698>,  <38.344528, 34.534035, 42.389900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493107, 34.903782, 42.424698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496655, -0.276987, 0.822564,
		0.784452, -0.262328, -0.561978,
		0.371442, 0.924371, 0.086997,
		38.604538, 35.181095, 42.450798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049603, 34.482956, 42.663486>,  <38.344528, 34.534035, 42.389900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049603, 34.482956, 42.663486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897713, 34.842117, 42.752552>,  <38.806580, 35.057613, 42.805992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897713, 34.842117, 42.752552>,  <39.049603, 34.482956, 42.663486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897713, 34.842117, 42.752552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316918, -0.099867, 0.943181,
		0.869123, 0.428713, -0.246640,
		-0.379723, 0.897904, 0.222663,
		38.783794, 35.111488, 42.819351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518505, 34.754810, 43.014591>,  <39.049603, 34.482956, 42.663486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518505, 34.754810, 43.014591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198738, 34.959492, 43.140507>,  <39.006878, 35.082302, 43.216057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198738, 34.959492, 43.140507>,  <39.518505, 34.754810, 43.014591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198738, 34.959492, 43.140507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256583, -0.182975, 0.949045,
		0.543228, 0.839452, 0.014979,
		-0.799418, 0.511705, 0.314786,
		38.958912, 35.113003, 43.234943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657730, 35.392220, 43.284447>,  <39.518505, 34.754810, 43.014591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657730, 35.392220, 43.284447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292305, 35.369991, 43.445602>,  <39.073051, 35.356655, 43.542294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292305, 35.369991, 43.445602>,  <39.657730, 35.392220, 43.284447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292305, 35.369991, 43.445602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363785, 0.331256, 0.870592,
		-0.181837, 0.941903, -0.282407,
		-0.913562, -0.055570, 0.402884,
		39.018238, 35.353321, 43.566467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684189, 35.818398, 43.927792>,  <39.657730, 35.392220, 43.284447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684189, 35.818398, 43.927792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342999, 35.622223, 43.999245>,  <39.138287, 35.504517, 44.042114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342999, 35.622223, 43.999245>,  <39.684189, 35.818398, 43.927792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342999, 35.622223, 43.999245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127894, 0.135417, 0.982500,
		-0.506045, 0.860890, -0.052782,
		-0.852972, -0.490439, 0.178630,
		39.087109, 35.475090, 44.052834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534492, 36.199207, 44.433285>,  <39.684189, 35.818398, 43.927792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534492, 36.199207, 44.433285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318672, 35.862732, 44.447689>,  <39.189182, 35.660847, 44.456333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318672, 35.862732, 44.447689>,  <39.534492, 36.199207, 44.433285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318672, 35.862732, 44.447689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157511, -0.058828, 0.985764,
		-0.827091, 0.537538, 0.164236,
		-0.539547, -0.841185, 0.036012,
		39.156807, 35.610378, 44.458492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878120, 36.283638, 44.847008>,  <39.534492, 36.199207, 44.433285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878120, 36.283638, 44.847008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989021, 35.899567, 44.860775>,  <39.055561, 35.669125, 44.869034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989021, 35.899567, 44.860775>,  <38.878120, 36.283638, 44.847008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989021, 35.899567, 44.860775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069354, 0.015725, 0.997468,
		-0.958292, -0.278934, -0.062233,
		0.277249, -0.960182, 0.034415,
		39.072197, 35.611511, 44.871098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786194, 36.255230, 45.579418>,  <38.878120, 36.283638, 44.847008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786194, 36.255230, 45.579418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936390, 35.895081, 45.491470>,  <39.026508, 35.678993, 45.438702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936390, 35.895081, 45.491470>,  <38.786194, 36.255230, 45.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936390, 35.895081, 45.491470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102822, -0.276230, 0.955576,
		-0.921106, -0.336201, -0.196299,
		0.375489, -0.900370, -0.219868,
		39.049038, 35.624969, 45.425510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318619, 35.760128, 45.822418>,  <38.786194, 36.255230, 45.579418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318619, 35.760128, 45.822418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677555, 35.585430, 45.797012>,  <38.892918, 35.480614, 45.781769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677555, 35.585430, 45.797012>,  <38.318619, 35.760128, 45.822418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677555, 35.585430, 45.797012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041012, -0.225816, 0.973306,
		-0.439428, -0.870783, -0.220545,
		0.897341, -0.436743, -0.063517,
		38.946758, 35.454407, 45.777958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192619, 35.201012, 46.219944>,  <38.318619, 35.760128, 45.822418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192619, 35.201012, 46.219944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591209, 35.232300, 46.207848>,  <38.830364, 35.251072, 46.200592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591209, 35.232300, 46.207848>,  <38.192619, 35.201012, 46.219944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591209, 35.232300, 46.207848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038969, -0.112609, 0.992875,
		0.074263, -0.990556, -0.115261,
		0.996477, 0.078225, -0.030238,
		38.890152, 35.255768, 46.198776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515717, 34.579708, 46.506065>,  <38.192619, 35.201012, 46.219944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515717, 34.579708, 46.506065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761284, 34.889690, 46.566132>,  <38.908623, 35.075680, 46.602169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761284, 34.889690, 46.566132>,  <38.515717, 34.579708, 46.506065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761284, 34.889690, 46.566132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044410, -0.156020, 0.986755,
		0.788120, -0.612454, -0.061368,
		0.613917, 0.774956, 0.150162,
		38.945457, 35.122177, 46.611179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812748, 34.467976, 47.229694>,  <38.515717, 34.579708, 46.506065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812748, 34.467976, 47.229694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912838, 34.847252, 47.151390>,  <38.972893, 35.074818, 47.104408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912838, 34.847252, 47.151390>,  <38.812748, 34.467976, 47.229694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912838, 34.847252, 47.151390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146229, 0.162866, 0.975752,
		0.957083, -0.272780, -0.097901,
		0.250221, 0.948191, -0.195764,
		38.987904, 35.131710, 47.092659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359329, 34.704010, 47.696907>,  <38.812748, 34.467976, 47.229694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359329, 34.704010, 47.696907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205719, 35.051548, 47.571918>,  <39.113552, 35.260071, 47.496925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205719, 35.051548, 47.571918>,  <39.359329, 34.704010, 47.696907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205719, 35.051548, 47.571918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086500, 0.370785, 0.924681,
		0.919260, 0.328076, -0.217547,
		-0.384029, 0.868841, -0.312470,
		39.090511, 35.312199, 47.478176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775433, 35.292984, 47.913708>,  <39.359329, 34.704010, 47.696907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775433, 35.292984, 47.913708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415966, 35.451664, 47.838837>,  <39.200287, 35.546871, 47.793915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415966, 35.451664, 47.838837>,  <39.775433, 35.292984, 47.913708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415966, 35.451664, 47.838837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033817, 0.488108, 0.872128,
		0.437331, 0.777421, -0.452060,
		-0.898665, 0.396696, -0.187175,
		39.146366, 35.570671, 47.782684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724892, 36.050045, 47.867516>,  <39.775433, 35.292984, 47.913708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724892, 36.050045, 47.867516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374584, 35.928070, 48.017200>,  <39.164398, 35.854885, 48.107010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374584, 35.928070, 48.017200>,  <39.724892, 36.050045, 47.867516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374584, 35.928070, 48.017200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145584, 0.572263, 0.807044,
		-0.460248, 0.761266, -0.456778,
		-0.875772, -0.304941, 0.374212,
		39.111851, 35.836586, 48.129463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342922, 36.670223, 47.980354>,  <39.724892, 36.050045, 47.867516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342922, 36.670223, 47.980354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169647, 36.386986, 48.203403>,  <39.065681, 36.217041, 48.337234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169647, 36.386986, 48.203403>,  <39.342922, 36.670223, 47.980354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169647, 36.386986, 48.203403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108045, 0.655026, 0.747842,
		-0.894803, 0.263709, -0.360257,
		-0.433190, -0.708095, 0.557627,
		39.039692, 36.174557, 48.370693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842571, 36.960400, 48.355850>,  <39.342922, 36.670223, 47.980354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842571, 36.960400, 48.355850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879219, 36.643364, 48.596985>,  <38.901207, 36.453144, 48.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879219, 36.643364, 48.596985>,  <38.842571, 36.960400, 48.355850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879219, 36.643364, 48.596985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201822, 0.578035, 0.790660,
		-0.975127, -0.194108, -0.107001,
		0.091623, -0.792589, 0.602833,
		38.906708, 36.405586, 48.777836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222839, 37.006737, 48.804108>,  <38.842571, 36.960400, 48.355850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222839, 37.006737, 48.804108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500771, 36.777466, 48.977859>,  <38.667530, 36.639904, 49.082111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500771, 36.777466, 48.977859>,  <38.222839, 37.006737, 48.804108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500771, 36.777466, 48.977859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184814, 0.441405, 0.878069,
		-0.695025, -0.690385, 0.200770,
		0.694827, -0.573175, 0.434380,
		38.709217, 36.605515, 49.108173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891659, 36.582970, 49.394001>,  <38.222839, 37.006737, 48.804108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891659, 36.582970, 49.394001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280018, 36.639103, 49.471626>,  <38.513035, 36.672783, 49.518200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280018, 36.639103, 49.471626>,  <37.891659, 36.582970, 49.394001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280018, 36.639103, 49.471626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237408, 0.457521, 0.856920,
		0.031464, -0.878056, 0.477523,
		0.970900, 0.140330, 0.194062,
		38.571289, 36.681202, 49.529846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872997, 36.493229, 50.136761>,  <37.891659, 36.582970, 49.394001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872997, 36.493229, 50.136761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235813, 36.655117, 50.090328>,  <38.453503, 36.752251, 50.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235813, 36.655117, 50.090328>,  <37.872997, 36.493229, 50.136761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235813, 36.655117, 50.090328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069222, 0.415308, 0.907044,
		0.415308, -0.814692, 0.404717,
		-0.907044, -0.404717, 0.116085,
		38.507927, 36.776531, 50.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298035, 36.380371, 50.819466>,  <37.872997, 36.493229, 50.136761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298035, 36.380371, 50.819466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464653, 36.667110, 50.595818>,  <38.564625, 36.839153, 50.461628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464653, 36.667110, 50.595818>,  <38.298035, 36.380371, 50.819466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464653, 36.667110, 50.595818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043307, 0.629960, 0.775419,
		0.908082, -0.298785, 0.293453,
		0.416548, 0.716852, -0.559116,
		38.589619, 36.882168, 50.428082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917450, 36.625694, 51.231010>,  <38.298035, 36.380371, 50.819466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917450, 36.625694, 51.231010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822933, 36.934597, 50.995117>,  <38.766224, 37.119938, 50.853580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822933, 36.934597, 50.995117>,  <38.917450, 36.625694, 51.231010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822933, 36.934597, 50.995117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241294, 0.634548, 0.734252,
		0.941245, 0.031198, -0.336279,
		-0.236292, 0.772254, -0.589737,
		38.752045, 37.166275, 50.818195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453510, 37.149303, 51.285179>,  <38.917450, 36.625694, 51.231010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453510, 37.149303, 51.285179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156929, 37.365616, 51.126278>,  <38.978981, 37.495403, 51.030937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156929, 37.365616, 51.126278>,  <39.453510, 37.149303, 51.285179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156929, 37.365616, 51.126278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170973, 0.724736, 0.667478,
		0.648859, 0.426984, -0.629815,
		-0.741452, 0.540780, -0.397248,
		38.934494, 37.527851, 51.007103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649750, 37.818054, 51.168243>,  <39.453510, 37.149303, 51.285179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649750, 37.818054, 51.168243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251923, 37.859535, 51.171913>,  <39.013226, 37.884422, 51.174114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251923, 37.859535, 51.171913>,  <39.649750, 37.818054, 51.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251923, 37.859535, 51.171913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074013, 0.642321, 0.762853,
		0.073214, 0.759387, -0.646507,
		-0.994566, 0.103701, 0.009178,
		38.953552, 37.890644, 51.174667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545017, 38.565960, 51.344521>,  <39.649750, 37.818054, 51.168243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545017, 38.565960, 51.344521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204567, 38.369774, 51.419380>,  <39.000298, 38.252064, 51.464298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204567, 38.369774, 51.419380>,  <39.545017, 38.565960, 51.344521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204567, 38.369774, 51.419380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086695, 0.482941, 0.871351,
		-0.517748, 0.725407, -0.453566,
		-0.851129, -0.490462, 0.187153,
		38.949226, 38.222637, 51.475525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012875, 38.525265, 51.865402>,  <39.545017, 38.565960, 51.344521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012875, 38.525265, 51.865402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885017, 38.903419, 51.839878>,  <38.808304, 39.130314, 51.824562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885017, 38.903419, 51.839878>,  <39.012875, 38.525265, 51.865402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885017, 38.903419, 51.839878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252756, 0.020167, -0.967320,
		-0.913203, -0.325329, -0.245399,
		-0.319646, 0.945386, -0.063812,
		38.789124, 39.187035, 51.820736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647003, 38.562801, 51.229729>,  <39.012875, 38.525265, 51.865402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647003, 38.562801, 51.229729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783699, 38.930073, 51.309895>,  <38.865715, 39.150436, 51.357994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783699, 38.930073, 51.309895>,  <38.647003, 38.562801, 51.229729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783699, 38.930073, 51.309895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194166, 0.139668, -0.970975,
		-0.919518, 0.370735, -0.130548,
		0.341741, 0.918177, 0.200411,
		38.886223, 39.205524, 51.370018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328617, 38.996731, 50.771217>,  <38.647003, 38.562801, 51.229729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328617, 38.996731, 50.771217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653584, 39.203232, 50.879639>,  <38.848564, 39.327133, 50.944691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653584, 39.203232, 50.879639>,  <38.328617, 38.996731, 50.771217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653584, 39.203232, 50.879639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220591, 0.158191, -0.962453,
		-0.539746, 0.841701, 0.014636,
		0.812413, 0.516251, 0.271054,
		38.897308, 39.358109, 50.960957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343952, 39.597984, 50.392876>,  <38.328617, 38.996731, 50.771217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343952, 39.597984, 50.392876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716194, 39.507122, 50.507675>,  <38.939541, 39.452606, 50.576557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716194, 39.507122, 50.507675>,  <38.343952, 39.597984, 50.392876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716194, 39.507122, 50.507675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316295, 0.104495, -0.942888,
		0.184189, 0.968237, 0.169091,
		0.930608, -0.227153, 0.287002,
		38.995377, 39.438976, 50.593777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568394, 39.885654, 49.829773>,  <38.343952, 39.597984, 50.392876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568394, 39.885654, 49.829773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866150, 39.707520, 50.028793>,  <39.044804, 39.600639, 50.148205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866150, 39.707520, 50.028793>,  <38.568394, 39.885654, 49.829773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866150, 39.707520, 50.028793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527897, -0.063801, -0.846908,
		0.408905, 0.893086, 0.187599,
		0.744393, -0.445338, 0.497547,
		39.089466, 39.573917, 50.178059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105595, 40.284420, 49.856705>,  <38.568394, 39.885654, 49.829773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105595, 40.284420, 49.856705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261116, 39.916241, 49.872749>,  <39.354431, 39.695335, 49.882374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261116, 39.916241, 49.872749>,  <39.105595, 40.284420, 49.856705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261116, 39.916241, 49.872749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578486, 0.210011, -0.788193,
		0.717066, 0.329657, 0.614119,
		0.388805, -0.920447, 0.040110,
		39.377758, 39.640106, 49.884781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834312, 40.357288, 49.856903>,  <39.105595, 40.284420, 49.856705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834312, 40.357288, 49.856903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772778, 39.988960, 49.713562>,  <39.735855, 39.767963, 49.627556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772778, 39.988960, 49.713562>,  <39.834312, 40.357288, 49.856903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772778, 39.988960, 49.713562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536866, 0.226575, -0.812674,
		0.829523, -0.317411, 0.459502,
		-0.153840, -0.920822, -0.358356,
		39.726627, 39.712715, 49.606056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326214, 40.303368, 49.348114>,  <39.834312, 40.357288, 49.856903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326214, 40.303368, 49.348114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119823, 39.974991, 49.250275>,  <39.995987, 39.777966, 49.191570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119823, 39.974991, 49.250275>,  <40.326214, 40.303368, 49.348114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119823, 39.974991, 49.250275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441017, -0.009801, -0.897445,
		0.734350, -0.570933, 0.367105,
		-0.515979, -0.820938, -0.244594,
		39.965031, 39.728710, 49.176895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794941, 39.908955, 48.917629>,  <40.326214, 40.303368, 49.348114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794941, 39.908955, 48.917629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444962, 39.746593, 48.812019>,  <40.234974, 39.649178, 48.748653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444962, 39.746593, 48.812019>,  <40.794941, 39.908955, 48.917629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444962, 39.746593, 48.812019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320011, -0.075504, -0.944400,
		0.363397, -0.910794, 0.195954,
		-0.874949, -0.405899, -0.264026,
		40.182476, 39.624825, 48.732811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003281, 39.361744, 48.333721>,  <40.794941, 39.908955, 48.917629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003281, 39.361744, 48.333721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604702, 39.393711, 48.323044>,  <40.365555, 39.412891, 48.316639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604702, 39.393711, 48.323044>,  <41.003281, 39.361744, 48.333721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604702, 39.393711, 48.323044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025907, -0.010828, -0.999606,
		-0.080179, -0.996743, 0.008719,
		-0.996444, 0.079921, -0.026691,
		40.305767, 39.417686, 48.315037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748997, 38.850571, 47.907345>,  <41.003281, 39.361744, 48.333721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748997, 38.850571, 47.907345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429749, 39.091484, 47.900799>,  <40.238201, 39.236031, 47.896870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429749, 39.091484, 47.900799>,  <40.748997, 38.850571, 47.907345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429749, 39.091484, 47.900799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042533, -0.083421, -0.995606,
		-0.600999, -0.793914, 0.092196,
		-0.798117, 0.602280, -0.016368,
		40.190315, 39.272167, 47.895889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162739, 38.437195, 47.573490>,  <40.748997, 38.850571, 47.907345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162739, 38.437195, 47.573490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121113, 38.833763, 47.541847>,  <40.096138, 39.071705, 47.522861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121113, 38.833763, 47.541847>,  <40.162739, 38.437195, 47.573490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121113, 38.833763, 47.541847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057454, -0.073415, -0.995645,
		-0.992910, -0.108154, -0.049321,
		-0.104062, 0.991420, -0.079108,
		40.089893, 39.131187, 47.518116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556976, 38.613091, 47.255039>,  <40.162739, 38.437195, 47.573490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556976, 38.613091, 47.255039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853687, 38.872253, 47.185783>,  <40.031715, 39.027752, 47.144230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853687, 38.872253, 47.185783>,  <39.556976, 38.613091, 47.255039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853687, 38.872253, 47.185783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031537, -0.224183, -0.974037,
		-0.669899, 0.727983, -0.145862,
		0.741782, 0.647907, -0.173138,
		40.076221, 39.066624, 47.133842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307583, 39.131237, 46.841969>,  <39.556976, 38.613091, 47.255039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307583, 39.131237, 46.841969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700722, 39.079201, 46.789669>,  <39.936604, 39.047981, 46.758289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700722, 39.079201, 46.789669>,  <39.307583, 39.131237, 46.841969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700722, 39.079201, 46.789669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138566, -0.052911, -0.988939,
		0.121729, 0.990090, -0.070029,
		0.982844, -0.130086, -0.130752,
		39.995575, 39.040176, 46.750443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525845, 39.582726, 46.363190>,  <39.307583, 39.131237, 46.841969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525845, 39.582726, 46.363190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817814, 39.309841, 46.346207>,  <39.992996, 39.146111, 46.336018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817814, 39.309841, 46.346207>,  <39.525845, 39.582726, 46.363190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817814, 39.309841, 46.346207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133575, -0.081444, -0.987686,
		0.670354, 0.726604, -0.150574,
		0.729920, -0.682212, -0.042460,
		40.036789, 39.105179, 46.333469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009907, 39.782822, 45.837643>,  <39.525845, 39.582726, 46.363190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009907, 39.782822, 45.837643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028107, 39.385921, 45.883900>,  <40.039028, 39.147781, 45.911652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028107, 39.385921, 45.883900>,  <40.009907, 39.782822, 45.837643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028107, 39.385921, 45.883900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072158, -0.112191, -0.991064,
		0.996355, 0.053441, 0.066494,
		0.045503, -0.992249, 0.115638,
		40.041759, 39.088245, 45.918591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272560, 39.531761, 45.248421>,  <40.009907, 39.782822, 45.837643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272560, 39.531761, 45.248421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195595, 39.166103, 45.391148>,  <40.149418, 38.946709, 45.476784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195595, 39.166103, 45.391148>,  <40.272560, 39.531761, 45.248421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195595, 39.166103, 45.391148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002645, -0.364092, -0.931360,
		0.981311, -0.178259, 0.072473,
		-0.192410, -0.914145, 0.356816,
		40.137871, 38.891861, 45.498192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759914, 39.145565, 44.936642>,  <40.272560, 39.531761, 45.248421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759914, 39.145565, 44.936642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456348, 38.908821, 45.045265>,  <40.274208, 38.766773, 45.110439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456348, 38.908821, 45.045265>,  <40.759914, 39.145565, 44.936642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456348, 38.908821, 45.045265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061596, -0.349902, -0.934759,
		0.648267, -0.726132, 0.229091,
		-0.758918, -0.591862, 0.271557,
		40.228672, 38.731262, 45.126732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922832, 38.451485, 44.787365>,  <40.759914, 39.145565, 44.936642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922832, 38.451485, 44.787365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524376, 38.482353, 44.804123>,  <40.285301, 38.500874, 44.814178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524376, 38.482353, 44.804123>,  <40.922832, 38.451485, 44.787365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524376, 38.482353, 44.804123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070906, -0.425403, -0.902222,
		-0.051802, -0.901708, 0.429232,
		-0.996137, 0.077172, 0.041900,
		40.225536, 38.505505, 44.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636204, 37.963718, 44.340141>,  <40.922832, 38.451485, 44.787365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636204, 37.963718, 44.340141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320805, 38.208633, 44.363377>,  <40.131565, 38.355583, 44.377319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320805, 38.208633, 44.363377>,  <40.636204, 37.963718, 44.340141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320805, 38.208633, 44.363377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399465, -0.438018, -0.805337,
		-0.467658, -0.658208, 0.589964,
		-0.788495, 0.612292, 0.058088,
		40.084255, 38.392319, 44.380802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125370, 37.535091, 44.109715>,  <40.636204, 37.963718, 44.340141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125370, 37.535091, 44.109715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966469, 37.899899, 44.068878>,  <39.871128, 38.118782, 44.044376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966469, 37.899899, 44.068878>,  <40.125370, 37.535091, 44.109715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966469, 37.899899, 44.068878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569168, -0.332114, -0.752162,
		-0.719889, -0.240687, 0.651022,
		-0.397249, 0.912014, -0.102093,
		39.847294, 38.173504, 44.038250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480827, 37.406597, 43.861954>,  <40.125370, 37.535091, 44.109715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480827, 37.406597, 43.861954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520172, 37.797581, 43.787228>,  <39.543777, 38.032169, 43.742390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520172, 37.797581, 43.787228>,  <39.480827, 37.406597, 43.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520172, 37.797581, 43.787228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593036, -0.093182, -0.799766,
		-0.799146, 0.189454, 0.570502,
		0.098359, 0.977458, -0.186819,
		39.549679, 38.090816, 43.731182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835758, 37.893822, 43.961388>,  <39.480827, 37.406597, 43.861954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835758, 37.893822, 43.961388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092510, 38.020309, 43.681961>,  <39.246559, 38.096203, 43.514305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092510, 38.020309, 43.681961>,  <38.835758, 37.893822, 43.961388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092510, 38.020309, 43.681961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635945, -0.289496, -0.715378,
		-0.428447, 0.903438, 0.015275,
		0.641878, 0.316216, -0.698570,
		39.285072, 38.115173, 43.472389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426373, 37.892673, 43.280231>,  <38.835758, 37.893822, 43.961388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426373, 37.892673, 43.280231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790306, 38.007053, 43.159943>,  <39.008667, 38.075680, 43.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790306, 38.007053, 43.159943>,  <38.426373, 37.892673, 43.280231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790306, 38.007053, 43.159943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220868, -0.279823, -0.934300,
		-0.351311, 0.916478, -0.191436,
		0.909834, 0.285948, -0.300725,
		39.063255, 38.092838, 43.069725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256218, 38.315678, 42.570572>,  <38.426373, 37.892673, 43.280231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256218, 38.315678, 42.570572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635719, 38.189323, 42.566784>,  <38.863419, 38.113510, 42.564510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635719, 38.189323, 42.566784>,  <38.256218, 38.315678, 42.570572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635719, 38.189323, 42.566784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015091, -0.015344, -0.999768,
		0.315669, 0.948673, -0.019324,
		0.948749, -0.315887, -0.009473,
		38.920345, 38.094559, 42.563942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483906, 38.647636, 41.980392>,  <38.256218, 38.315678, 42.570572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483906, 38.647636, 41.980392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737484, 38.350719, 42.067211>,  <38.889629, 38.172569, 42.119301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737484, 38.350719, 42.067211>,  <38.483906, 38.647636, 41.980392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737484, 38.350719, 42.067211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139478, -0.166308, -0.976160,
		0.760696, 0.649105, -0.001897,
		0.633946, -0.742296, 0.217046,
		38.927670, 38.128029, 42.132324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980171, 38.730797, 41.432587>,  <38.483906, 38.647636, 41.980392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980171, 38.730797, 41.432587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019550, 38.357525, 41.570850>,  <39.043179, 38.133560, 41.653809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019550, 38.357525, 41.570850>,  <38.980171, 38.730797, 41.432587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019550, 38.357525, 41.570850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217482, -0.318772, -0.922543,
		0.971087, 0.165994, 0.171569,
		0.098445, -0.933183, 0.345656,
		39.049084, 38.077568, 41.674549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558369, 38.407879, 41.197598>,  <38.980171, 38.730797, 41.432587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558369, 38.407879, 41.197598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338676, 38.088669, 41.296787>,  <39.206860, 37.897141, 41.356300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338676, 38.088669, 41.296787>,  <39.558369, 38.407879, 41.197598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338676, 38.088669, 41.296787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242963, -0.436413, -0.866321,
		0.799569, -0.415565, 0.433584,
		-0.549234, -0.798028, 0.247976,
		39.173904, 37.849258, 41.371181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925972, 37.911709, 40.910942>,  <39.558369, 38.407879, 41.197598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925972, 37.911709, 40.910942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579872, 37.724445, 40.982689>,  <39.372211, 37.612087, 41.025738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579872, 37.724445, 40.982689>,  <39.925972, 37.911709, 40.910942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579872, 37.724445, 40.982689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099402, -0.510869, -0.853893,
		0.491386, -0.721002, 0.488565,
		-0.865251, -0.468156, 0.179365,
		39.320297, 37.584000, 41.036499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071255, 37.215420, 40.799210>,  <39.925972, 37.911709, 40.910942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071255, 37.215420, 40.799210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679646, 37.290993, 40.768715>,  <39.444679, 37.336338, 40.750420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679646, 37.290993, 40.768715>,  <40.071255, 37.215420, 40.799210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679646, 37.290993, 40.768715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003674, -0.390504, -0.920594,
		-0.203700, -0.901006, 0.383008,
		-0.979027, 0.188932, -0.076236,
		39.385937, 37.347672, 40.745846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871357, 36.714794, 40.345612>,  <40.071255, 37.215420, 40.799210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871357, 36.714794, 40.345612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529388, 36.921043, 40.368385>,  <39.324207, 37.044792, 40.382050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529388, 36.921043, 40.368385>,  <39.871357, 36.714794, 40.345612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529388, 36.921043, 40.368385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217052, -0.255870, -0.942029,
		-0.471164, -0.817720, 0.330665,
		-0.854923, 0.515621, 0.056931,
		39.272911, 37.075729, 40.385464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396515, 36.295200, 40.071514>,  <39.871357, 36.714794, 40.345612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396515, 36.295200, 40.071514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263485, 36.669189, 40.022175>,  <39.183666, 36.893585, 39.992569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263485, 36.669189, 40.022175>,  <39.396515, 36.295200, 40.071514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263485, 36.669189, 40.022175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196930, -0.196764, -0.960470,
		-0.922287, -0.295135, 0.249563,
		-0.332573, 0.934976, -0.123351,
		39.163712, 36.949680, 39.985168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795044, 36.223980, 39.926975>,  <39.396515, 36.295200, 40.071514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795044, 36.223980, 39.926975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922672, 36.565887, 39.763237>,  <38.999249, 36.771030, 39.664993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922672, 36.565887, 39.763237>,  <38.795044, 36.223980, 39.926975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922672, 36.565887, 39.763237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298444, -0.319329, -0.899422,
		-0.899513, 0.409150, 0.153210,
		0.319074, 0.854766, -0.409348,
		39.018394, 36.822319, 39.640434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278263, 36.513371, 39.484638>,  <38.795044, 36.223980, 39.926975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278263, 36.513371, 39.484638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622341, 36.660748, 39.343601>,  <38.828789, 36.749172, 39.258980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622341, 36.660748, 39.343601>,  <38.278263, 36.513371, 39.484638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622341, 36.660748, 39.343601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277242, -0.242436, -0.929711,
		-0.428026, 0.897482, -0.106393,
		0.860192, 0.368444, -0.352588,
		38.880398, 36.771282, 39.237823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027855, 36.657791, 38.771503>,  <38.278263, 36.513371, 39.484638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027855, 36.657791, 38.771503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421642, 36.726902, 38.783966>,  <38.657913, 36.768368, 38.791443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421642, 36.726902, 38.783966>,  <38.027855, 36.657791, 38.771503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421642, 36.726902, 38.783966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033011, -0.007867, -0.999424,
		-0.172437, 0.984928, -0.013449,
		0.984467, 0.172782, 0.031157,
		38.716984, 36.778736, 38.793312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184994, 37.254677, 38.423351>,  <38.027855, 36.657791, 38.771503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184994, 37.254677, 38.423351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527859, 37.048756, 38.416916>,  <38.733578, 36.925205, 38.413055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527859, 37.048756, 38.416916>,  <38.184994, 37.254677, 38.423351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527859, 37.048756, 38.416916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024043, 0.071192, -0.997173,
		0.514489, 0.854350, 0.073400,
		0.857160, -0.514800, -0.016087,
		38.785007, 36.894318, 38.412090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742653, 37.646473, 38.018124>,  <38.184994, 37.254677, 38.423351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742653, 37.646473, 38.018124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862617, 37.264885, 38.017738>,  <38.934597, 37.035934, 38.017506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862617, 37.264885, 38.017738>,  <38.742653, 37.646473, 38.018124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862617, 37.264885, 38.017738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142493, 0.045796, -0.988736,
		0.943264, 0.296399, 0.149668,
		0.299915, -0.953965, -0.000963,
		38.952591, 36.978695, 38.017448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277004, 37.647709, 37.475044>,  <38.742653, 37.646473, 38.018124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277004, 37.647709, 37.475044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193054, 37.258419, 37.512524>,  <39.142685, 37.024845, 37.535011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193054, 37.258419, 37.512524>,  <39.277004, 37.647709, 37.475044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193054, 37.258419, 37.512524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427646, -0.177552, -0.886338,
		0.879246, -0.145949, 0.453460,
		-0.209873, -0.973229, 0.093697,
		39.130093, 36.966450, 37.540634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896599, 37.142113, 37.268738>,  <39.277004, 37.647709, 37.475044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896599, 37.142113, 37.268738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548717, 36.949589, 37.225006>,  <39.339989, 36.834076, 37.198765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548717, 36.949589, 37.225006>,  <39.896599, 37.142113, 37.268738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548717, 36.949589, 37.225006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297355, -0.334142, -0.894388,
		0.393944, -0.810365, 0.433725,
		-0.869706, -0.481309, -0.109332,
		39.287807, 36.805195, 37.192207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097313, 36.564636, 36.857925>,  <39.896599, 37.142113, 37.268738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097313, 36.564636, 36.857925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698566, 36.543907, 36.834045>,  <39.459316, 36.531471, 36.819717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698566, 36.543907, 36.834045>,  <40.097313, 36.564636, 36.857925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698566, 36.543907, 36.834045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077488, -0.490803, -0.867818,
		0.015668, -0.869728, 0.493283,
		-0.996870, -0.051821, -0.059704,
		39.399506, 36.528362, 36.816135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975681, 35.912304, 36.715412>,  <40.097313, 36.564636, 36.857925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975681, 35.912304, 36.715412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635391, 36.096256, 36.613602>,  <39.431217, 36.206627, 36.552517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635391, 36.096256, 36.613602>,  <39.975681, 35.912304, 36.715412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635391, 36.096256, 36.613602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032675, -0.437037, -0.898850,
		-0.524599, -0.772988, 0.356770,
		-0.850722, 0.459878, -0.254527,
		39.380173, 36.234219, 36.537243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493576, 35.384003, 36.515736>,  <39.975681, 35.912304, 36.715412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493576, 35.384003, 36.515736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402134, 35.735794, 36.348755>,  <39.347267, 35.946869, 36.248566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402134, 35.735794, 36.348755>,  <39.493576, 35.384003, 36.515736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402134, 35.735794, 36.348755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020470, -0.433053, -0.901136,
		-0.973304, -0.197461, 0.117002,
		-0.228607, 0.879474, -0.417450,
		39.333553, 35.999638, 36.223518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926453, 35.192509, 36.046204>,  <39.493576, 35.384003, 36.515736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926453, 35.192509, 36.046204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097649, 35.523930, 35.901798>,  <39.200367, 35.722782, 35.815155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097649, 35.523930, 35.901798>,  <38.926453, 35.192509, 36.046204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097649, 35.523930, 35.901798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023856, -0.388951, -0.920949,
		-0.903469, 0.402768, -0.146701,
		0.427988, 0.828550, -0.361014,
		39.226044, 35.772495, 35.793495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551674, 35.474319, 35.483753>,  <38.926453, 35.192509, 36.046204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551674, 35.474319, 35.483753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942348, 35.555676, 35.456310>,  <39.176754, 35.604488, 35.439842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942348, 35.555676, 35.456310>,  <38.551674, 35.474319, 35.483753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942348, 35.555676, 35.456310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039912, -0.486149, -0.872964,
		-0.210906, 0.849878, -0.482935,
		0.976691, 0.203389, -0.068612,
		39.235355, 35.616692, 35.435726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747025, 35.783466, 34.911686>,  <38.551674, 35.474319, 35.483753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747025, 35.783466, 34.911686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066730, 35.568878, 35.020035>,  <39.258556, 35.440125, 35.085045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066730, 35.568878, 35.020035>,  <38.747025, 35.783466, 34.911686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066730, 35.568878, 35.020035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046824, -0.393762, -0.918019,
		0.599146, 0.746428, -0.289602,
		0.799269, -0.536467, 0.270872,
		39.306511, 35.407936, 35.101295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310818, 35.900696, 34.459702>,  <38.747025, 35.783466, 34.911686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310818, 35.900696, 34.459702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331951, 35.525391, 34.596451>,  <39.344631, 35.300209, 34.678501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331951, 35.525391, 34.596451>,  <39.310818, 35.900696, 34.459702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331951, 35.525391, 34.596451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151865, -0.330824, -0.931393,
		0.986988, 0.101124, 0.125012,
		0.052829, -0.938259, 0.341877,
		39.347801, 35.243912, 34.699013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959942, 35.496456, 34.356815>,  <39.310818, 35.900696, 34.459702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959942, 35.496456, 34.356815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700741, 35.193367, 34.387688>,  <39.545219, 35.011513, 34.406212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700741, 35.193367, 34.387688>,  <39.959942, 35.496456, 34.356815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700741, 35.193367, 34.387688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270632, -0.323784, -0.906599,
		0.711936, -0.566591, 0.414875,
		-0.648001, -0.757719, 0.077177,
		39.506340, 34.966053, 34.410839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556835, 35.649345, 34.035126>,  <39.959942, 35.496456, 34.356815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556835, 35.649345, 34.035126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315033, 35.888123, 33.824135>,  <40.169952, 36.031391, 33.697540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315033, 35.888123, 33.824135>,  <40.556835, 35.649345, 34.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315033, 35.888123, 33.824135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254679, -0.772231, -0.582064,
		-0.754791, -0.217525, 0.618849,
		-0.604508, 0.596945, -0.527474,
		40.133682, 36.067207, 33.665894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769054, 36.318916, 33.903339>,  <40.556835, 35.649345, 34.035126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769054, 36.318916, 33.903339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140812, 36.171318, 33.906742>,  <41.363865, 36.082760, 33.908783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140812, 36.171318, 33.906742>,  <40.769054, 36.318916, 33.903339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140812, 36.171318, 33.906742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318584, -0.813635, -0.486316,
		0.186372, 0.449267, -0.873742,
		0.929392, -0.368995, 0.008509,
		41.419628, 36.060619, 33.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883572, 36.015312, 33.243328>,  <40.769054, 36.318916, 33.903339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883572, 36.015312, 33.243328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181824, 35.828037, 33.432995>,  <41.360775, 35.715672, 33.546795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181824, 35.828037, 33.432995>,  <40.883572, 36.015312, 33.243328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181824, 35.828037, 33.432995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179287, -0.826289, -0.533950,
		0.641787, 0.313118, -0.700048,
		0.745631, -0.468191, 0.474164,
		41.405514, 35.687580, 33.575245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475822, 35.746040, 32.696857>,  <40.883572, 36.015312, 33.243328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475822, 35.746040, 32.696857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475262, 35.539761, 33.039566>,  <41.474926, 35.415993, 33.245190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475262, 35.539761, 33.039566>,  <41.475822, 35.746040, 32.696857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475262, 35.539761, 33.039566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210889, -0.837348, -0.504356,
		0.977509, -0.181389, -0.107583,
		-0.001400, -0.515700, 0.856768,
		41.474842, 35.385052, 33.296597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882607, 35.263515, 32.575043>,  <41.475822, 35.746040, 32.696857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882607, 35.263515, 32.575043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672009, 35.122711, 32.884598>,  <41.545650, 35.038231, 33.070332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672009, 35.122711, 32.884598>,  <41.882607, 35.263515, 32.575043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672009, 35.122711, 32.884598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189306, -0.838869, -0.510355,
		0.828837, -0.415198, 0.375020,
		-0.526491, -0.352007, 0.773885,
		41.514061, 35.017109, 33.116764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087601, 34.637600, 32.668465>,  <41.882607, 35.263515, 32.575043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087601, 34.637600, 32.668465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759148, 34.593937, 32.892548>,  <41.562077, 34.567741, 33.026997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759148, 34.593937, 32.892548>,  <42.087601, 34.637600, 32.668465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759148, 34.593937, 32.892548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293518, -0.761034, -0.578510,
		0.489483, -0.639462, 0.592869,
		-0.821129, -0.109153, 0.560208,
		41.512810, 34.561192, 33.060608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070423, 33.947300, 32.780888>,  <42.087601, 34.637600, 32.668465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070423, 33.947300, 32.780888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691597, 34.044785, 32.864479>,  <41.464302, 34.103275, 32.914635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691597, 34.044785, 32.864479>,  <42.070423, 33.947300, 32.780888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691597, 34.044785, 32.864479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315841, -0.824000, -0.470392,
		0.057557, -0.511495, 0.857356,
		-0.947065, 0.243714, 0.208978,
		41.407478, 34.117897, 32.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759659, 33.387272, 33.196392>,  <42.070423, 33.947300, 32.780888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759659, 33.387272, 33.196392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470253, 33.589821, 33.008728>,  <41.296608, 33.711349, 32.896130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470253, 33.589821, 33.008728>,  <41.759659, 33.387272, 33.196392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470253, 33.589821, 33.008728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352489, -0.855362, -0.379614,
		-0.593531, -0.109281, 0.797357,
		-0.723514, 0.506372, -0.469164,
		41.253201, 33.741734, 32.867977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148441, 33.052036, 33.289646>,  <41.759659, 33.387272, 33.196392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148441, 33.052036, 33.289646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029789, 33.278408, 32.981949>,  <40.958595, 33.414230, 32.797329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029789, 33.278408, 32.981949>,  <41.148441, 33.052036, 33.289646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029789, 33.278408, 32.981949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276206, -0.821912, -0.498167,
		-0.914176, 0.064696, 0.400120,
		-0.296634, 0.565928, -0.769242,
		40.940800, 33.448185, 32.751175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562840, 32.751450, 33.062180>,  <41.148441, 33.052036, 33.289646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562840, 32.751450, 33.062180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680992, 32.969471, 32.748322>,  <40.751884, 33.100285, 32.560005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680992, 32.969471, 32.748322>,  <40.562840, 32.751450, 33.062180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680992, 32.969471, 32.748322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123461, -0.792630, -0.597072,
		-0.947368, 0.273239, -0.166838,
		0.295384, 0.545049, -0.784646,
		40.769608, 33.132984, 32.512928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171013, 32.505428, 32.514137>,  <40.562840, 32.751450, 33.062180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171013, 32.505428, 32.514137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472511, 32.688583, 32.325584>,  <40.653412, 32.798477, 32.212452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472511, 32.688583, 32.325584>,  <40.171013, 32.505428, 32.514137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472511, 32.688583, 32.325584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028575, -0.739459, -0.672595,
		-0.656545, 0.493495, -0.570448,
		0.753745, 0.457890, -0.471386,
		40.698635, 32.825951, 32.184170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040031, 32.435734, 31.737669>,  <40.171013, 32.505428, 32.514137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040031, 32.435734, 31.737669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423672, 32.495777, 31.833668>,  <40.653854, 32.531803, 31.891266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423672, 32.495777, 31.833668>,  <40.040031, 32.435734, 31.737669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423672, 32.495777, 31.833668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273406, -0.710910, -0.647963,
		0.073350, 0.687077, -0.722873,
		0.959098, 0.150110, 0.239996,
		40.711403, 32.540810, 31.905666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380398, 32.628265, 31.095417>,  <40.040031, 32.435734, 31.737669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380398, 32.628265, 31.095417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683853, 32.523785, 31.334162>,  <40.865925, 32.461098, 31.477409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683853, 32.523785, 31.334162>,  <40.380398, 32.628265, 31.095417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683853, 32.523785, 31.334162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409466, -0.521428, -0.748632,
		0.506763, 0.812335, -0.288623,
		0.758637, -0.261198, 0.596864,
		40.911446, 32.445427, 31.513222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089172, 32.602421, 30.706068>,  <40.380398, 32.628265, 31.095417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089172, 32.602421, 30.706068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144691, 32.376049, 31.031143>,  <41.178001, 32.240227, 31.226189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144691, 32.376049, 31.031143>,  <41.089172, 32.602421, 30.706068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144691, 32.376049, 31.031143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339521, -0.743701, -0.575877,
		0.930301, 0.355854, 0.088922,
		0.138796, -0.565930, 0.812686,
		41.186329, 32.206268, 31.274948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770679, 32.229198, 30.574112>,  <41.089172, 32.602421, 30.706068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770679, 32.229198, 30.574112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563770, 32.019928, 30.845024>,  <41.439625, 31.894365, 31.007572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563770, 32.019928, 30.845024>,  <41.770679, 32.229198, 30.574112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563770, 32.019928, 30.845024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216484, -0.845635, -0.487889,
		0.827987, -0.105752, 0.550685,
		-0.517274, -0.523180, 0.677281,
		41.408588, 31.862974, 31.048208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208801, 31.728445, 30.833418>,  <41.770679, 32.229198, 30.574112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208801, 31.728445, 30.833418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848515, 31.590874, 30.939569>,  <41.632343, 31.508331, 31.003260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848515, 31.590874, 30.939569>,  <42.208801, 31.728445, 30.833418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848515, 31.590874, 30.939569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230058, -0.895847, -0.380174,
		0.368491, -0.281376, 0.886026,
		-0.900715, -0.343928, 0.265379,
		41.578300, 31.487696, 31.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309692, 31.081121, 31.079359>,  <42.208801, 31.728445, 30.833418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309692, 31.081121, 31.079359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920181, 31.036049, 31.000303>,  <41.686474, 31.009007, 30.952869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920181, 31.036049, 31.000303>,  <42.309692, 31.081121, 31.079359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920181, 31.036049, 31.000303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205099, -0.810742, -0.548299,
		-0.098452, -0.574457, 0.812592,
		-0.973777, -0.112680, -0.197639,
		41.628048, 31.002245, 30.941011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167152, 30.360327, 30.992285>,  <42.309692, 31.081121, 31.079359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167152, 30.360327, 30.992285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831944, 30.496773, 30.821938>,  <41.630817, 30.578640, 30.719730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831944, 30.496773, 30.821938>,  <42.167152, 30.360327, 30.992285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831944, 30.496773, 30.821938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082542, -0.692255, -0.716917,
		-0.539357, -0.635944, 0.551968,
		-0.838022, 0.341114, -0.425865,
		41.580536, 30.599108, 30.694178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689991, 29.736004, 30.788416>,  <42.167152, 30.360327, 30.992285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689991, 29.736004, 30.788416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583347, 30.031075, 30.540302>,  <41.519360, 30.208117, 30.391434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583347, 30.031075, 30.540302>,  <41.689991, 29.736004, 30.788416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583347, 30.031075, 30.540302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023373, -0.638441, -0.769316,
		-0.963521, -0.219606, 0.152973,
		-0.266610, 0.737676, -0.620284,
		41.503365, 30.252377, 30.354218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223236, 29.368505, 30.352064>,  <41.689991, 29.736004, 30.788416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223236, 29.368505, 30.352064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362377, 29.699751, 30.176235>,  <41.445862, 29.898499, 30.070738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362377, 29.699751, 30.176235>,  <41.223236, 29.368505, 30.352064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362377, 29.699751, 30.176235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039247, -0.481303, -0.875675,
		-0.936728, 0.287353, -0.199923,
		0.347851, 0.828116, -0.439572,
		41.466732, 29.948185, 30.044363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900803, 29.350872, 29.792742>,  <41.223236, 29.368505, 30.352064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900803, 29.350872, 29.792742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179028, 29.611662, 29.671997>,  <41.345963, 29.768135, 29.599550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179028, 29.611662, 29.671997>,  <40.900803, 29.350872, 29.792742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179028, 29.611662, 29.671997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019303, -0.436957, -0.899275,
		-0.718206, 0.619676, -0.316516,
		0.695563, 0.651974, -0.301864,
		41.387695, 29.807255, 29.581438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633442, 29.672516, 29.177889>,  <40.900803, 29.350872, 29.792742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633442, 29.672516, 29.177889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033257, 29.673161, 29.165749>,  <41.273144, 29.673548, 29.158464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033257, 29.673161, 29.165749>,  <40.633442, 29.672516, 29.177889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033257, 29.673161, 29.165749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022931, -0.615462, -0.787833,
		-0.019949, 0.788165, -0.615141,
		0.999538, 0.001611, -0.030351,
		41.333118, 29.673643, 29.156643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916176, 29.874298, 28.429976>,  <40.633442, 29.672516, 29.177889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916176, 29.874298, 28.429976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134533, 29.616718, 28.644386>,  <41.265549, 29.462170, 28.773033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134533, 29.616718, 28.644386>,  <40.916176, 29.874298, 28.429976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134533, 29.616718, 28.644386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137012, -0.699760, -0.701116,
		0.826575, 0.309293, -0.470225,
		0.545895, -0.643951, 0.536028,
		41.298302, 29.423532, 28.805195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403648, 29.479256, 27.913902>,  <40.916176, 29.874298, 28.429976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403648, 29.479256, 27.913902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344097, 29.293360, 28.263039>,  <41.308365, 29.181822, 28.472521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344097, 29.293360, 28.263039>,  <41.403648, 29.479256, 27.913902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344097, 29.293360, 28.263039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012258, -0.881744, -0.471569,
		0.988779, -0.080906, 0.125576,
		-0.148878, -0.464738, 0.872842,
		41.299435, 29.153938, 28.524891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900898, 29.021381, 27.930120>,  <41.403648, 29.479256, 27.913902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900898, 29.021381, 27.930120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610023, 28.900801, 28.176805>,  <41.435501, 28.828451, 28.324816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610023, 28.900801, 28.176805>,  <41.900898, 29.021381, 27.930120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610023, 28.900801, 28.176805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039429, -0.915272, -0.400901,
		0.685312, -0.267212, 0.677456,
		-0.727182, -0.301454, 0.616711,
		41.391869, 28.810364, 28.361818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161610, 28.346725, 28.199905>,  <41.900898, 29.021381, 27.930120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161610, 28.346725, 28.199905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783306, 28.262360, 28.298750>,  <41.556324, 28.211740, 28.358057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783306, 28.262360, 28.298750>,  <42.161610, 28.346725, 28.199905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783306, 28.262360, 28.298750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207143, -0.977431, -0.041469,
		0.250281, 0.011968, 0.968099,
		-0.945754, -0.210914, 0.247111,
		41.499580, 28.199085, 28.372883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363400, 27.753721, 28.598396>,  <42.161610, 28.346725, 28.199905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363400, 27.753721, 28.598396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980915, 27.801912, 28.491697>,  <41.751427, 27.830826, 28.427677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980915, 27.801912, 28.491697>,  <42.363400, 27.753721, 28.598396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980915, 27.801912, 28.491697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142808, -0.987554, 0.065896,
		-0.255489, 0.101104, 0.961511,
		-0.956207, 0.120476, -0.266748,
		41.694054, 27.838055, 28.411673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855042, 27.822260, 29.166533>,  <42.363400, 27.753721, 28.598396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855042, 27.822260, 29.166533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062664, 28.101408, 29.363939>,  <43.187237, 28.268896, 29.482384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062664, 28.101408, 29.363939>,  <42.855042, 27.822260, 29.166533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062664, 28.101408, 29.363939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162296, -0.647352, 0.744712,
		0.839190, -0.306452, -0.449274,
		0.519056, 0.697870, 0.493516,
		43.218380, 28.310770, 29.511993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232864, 27.452644, 29.601723>,  <42.855042, 27.822260, 29.166533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232864, 27.452644, 29.601723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226238, 27.816786, 29.767122>,  <43.222263, 28.035271, 29.866362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226238, 27.816786, 29.767122>,  <43.232864, 27.452644, 29.601723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226238, 27.816786, 29.767122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173349, -0.404680, 0.897878,
		0.984721, 0.086552, -0.151106,
		-0.016564, 0.910353, 0.413501,
		43.221268, 28.089891, 29.891172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800697, 27.698610, 29.942076>,  <43.232864, 27.452644, 29.601723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800697, 27.698610, 29.942076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496185, 27.873201, 30.133883>,  <43.313477, 27.977955, 30.248966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496185, 27.873201, 30.133883>,  <43.800697, 27.698610, 29.942076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496185, 27.873201, 30.133883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245174, -0.490852, 0.836035,
		0.600280, 0.754025, 0.266665,
		-0.761284, 0.436476, 0.479516,
		43.267799, 28.004145, 30.277737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105824, 27.955095, 30.574121>,  <43.800697, 27.698610, 29.942076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105824, 27.955095, 30.574121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713337, 27.907898, 30.635160>,  <43.477844, 27.879580, 30.671783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713337, 27.907898, 30.635160>,  <44.105824, 27.955095, 30.574121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713337, 27.907898, 30.635160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189709, -0.447114, 0.874128,
		-0.034911, 0.886661, 0.461101,
		-0.981219, -0.117992, 0.152599,
		43.418972, 27.872501, 30.680941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662529, 28.399508, 31.019535>,  <44.105824, 27.955095, 30.574121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662529, 28.399508, 31.019535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488022, 28.039747, 31.030460>,  <43.383316, 27.823891, 31.037016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488022, 28.039747, 31.030460>,  <43.662529, 28.399508, 31.019535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488022, 28.039747, 31.030460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119874, -0.028009, 0.992394,
		-0.891797, 0.436222, 0.120034,
		-0.436267, -0.899403, 0.027313,
		43.357143, 27.769926, 31.038654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465424, 28.932468, 31.512096>,  <43.662529, 28.399508, 31.019535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465424, 28.932468, 31.512096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196552, 28.977392, 31.804825>,  <43.035229, 29.004347, 31.980461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196552, 28.977392, 31.804825>,  <43.465424, 28.932468, 31.512096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196552, 28.977392, 31.804825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341786, 0.923876, 0.172151,
		-0.656776, 0.365842, -0.659397,
		-0.672181, 0.112308, 0.731819,
		42.994896, 29.011086, 32.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039619, 29.473427, 31.322794>,  <43.465424, 28.932468, 31.512096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039619, 29.473427, 31.322794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023121, 29.443443, 31.721327>,  <43.013222, 29.425453, 31.960447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023121, 29.443443, 31.721327>,  <43.039619, 29.473427, 31.322794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023121, 29.443443, 31.721327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302532, 0.949435, 0.083954,
		-0.952246, 0.304886, -0.016481,
		-0.041244, -0.074958, 0.996333,
		43.010746, 29.420956, 32.020226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728611, 30.208406, 31.488535>,  <43.039619, 29.473427, 31.322794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728611, 30.208406, 31.488535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850479, 30.057146, 31.838203>,  <42.923599, 29.966389, 32.048004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850479, 30.057146, 31.838203>,  <42.728611, 30.208406, 31.488535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850479, 30.057146, 31.838203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305051, 0.908201, 0.286556,
		-0.902287, 0.179363, 0.392055,
		0.304668, -0.378153, 0.874173,
		42.941879, 29.943701, 32.100456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390629, 30.571087, 32.053463>,  <42.728611, 30.208406, 31.488535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390629, 30.571087, 32.053463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734287, 30.398867, 32.164097>,  <42.940483, 30.295534, 32.230476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734287, 30.398867, 32.164097>,  <42.390629, 30.571087, 32.053463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734287, 30.398867, 32.164097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415972, 0.902381, 0.112591,
		-0.298059, 0.018319, 0.954372,
		0.859144, -0.430550, 0.276583,
		42.992031, 30.269701, 32.247070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491108, 30.975870, 32.650143>,  <42.390629, 30.571087, 32.053463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491108, 30.975870, 32.650143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833183, 30.796068, 32.546909>,  <43.038429, 30.688187, 32.484970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833183, 30.796068, 32.546909>,  <42.491108, 30.975870, 32.650143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833183, 30.796068, 32.546909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484300, 0.870380, 0.088839,
		0.184694, -0.200961, 0.962031,
		0.855185, -0.449504, -0.258079,
		43.089737, 30.661217, 32.469486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048077, 31.215721, 33.142757>,  <42.491108, 30.975870, 32.650143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048077, 31.215721, 33.142757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254208, 31.080387, 32.827808>,  <43.377888, 30.999186, 32.638840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254208, 31.080387, 32.827808>,  <43.048077, 31.215721, 33.142757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254208, 31.080387, 32.827808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590292, 0.806203, 0.039914,
		0.621281, -0.485351, 0.615178,
		0.515331, -0.338336, -0.787377,
		43.408806, 30.978886, 32.591595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677158, 31.274494, 33.454025>,  <43.048077, 31.215721, 33.142757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677158, 31.274494, 33.454025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679928, 31.281956, 33.054104>,  <43.681591, 31.286432, 32.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679928, 31.281956, 33.054104>,  <43.677158, 31.274494, 33.454025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679928, 31.281956, 33.054104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519507, 0.854243, 0.019535,
		0.854438, -0.519539, -0.003775,
		0.006925, 0.018653, -0.999802,
		43.682007, 31.287552, 32.754162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347931, 31.375366, 33.249813>,  <43.677158, 31.274494, 33.454025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347931, 31.375366, 33.249813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129894, 31.497728, 32.937584>,  <43.999073, 31.571146, 32.750248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129894, 31.497728, 32.937584>,  <44.347931, 31.375366, 33.249813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129894, 31.497728, 32.937584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371868, 0.922675, 0.101907,
		0.751390, -0.234721, -0.616700,
		-0.545094, 0.305903, -0.780574,
		43.966366, 31.589499, 32.703411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745827, 31.869816, 33.119648>,  <44.347931, 31.375366, 33.249813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745827, 31.869816, 33.119648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441635, 31.948946, 32.872250>,  <44.259121, 31.996424, 32.723808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441635, 31.948946, 32.872250>,  <44.745827, 31.869816, 33.119648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441635, 31.948946, 32.872250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303611, 0.950268, -0.069362,
		0.574017, -0.240531, -0.782719,
		-0.760477, 0.197827, -0.618498,
		44.213493, 32.008293, 32.686699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991928, 32.280994, 32.500519>,  <44.745827, 31.869816, 33.119648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991928, 32.280994, 32.500519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604630, 32.376328, 32.530701>,  <44.372250, 32.433529, 32.548809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604630, 32.376328, 32.530701>,  <44.991928, 32.280994, 32.500519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604630, 32.376328, 32.530701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247538, 0.956237, 0.156000,
		-0.034977, 0.169726, -0.984870,
		-0.968247, 0.238336, 0.075459,
		44.314156, 32.447830, 32.553337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831955, 32.916374, 32.057167>,  <44.991928, 32.280994, 32.500519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831955, 32.916374, 32.057167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523212, 32.908192, 32.311356>,  <44.337967, 32.903282, 32.463867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523212, 32.908192, 32.311356>,  <44.831955, 32.916374, 32.057167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523212, 32.908192, 32.311356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087195, 0.986632, 0.137671,
		-0.629789, 0.161672, -0.759755,
		-0.771857, -0.020457, 0.635467,
		44.291656, 32.902054, 32.501995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400410, 33.476654, 31.918114>,  <44.831955, 32.916374, 32.057167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400410, 33.476654, 31.918114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333652, 33.388680, 32.302567>,  <44.293598, 33.335896, 32.533237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333652, 33.388680, 32.302567>,  <44.400410, 33.476654, 31.918114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333652, 33.388680, 32.302567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060753, 0.975245, 0.212617,
		-0.984102, -0.022908, -0.176123,
		-0.166892, -0.219937, 0.961132,
		44.283585, 33.322697, 32.590904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775520, 33.926521, 32.088215>,  <44.400410, 33.476654, 31.918114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775520, 33.926521, 32.088215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964405, 33.817677, 32.423588>,  <44.077736, 33.752369, 32.624813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964405, 33.817677, 32.423588>,  <43.775520, 33.926521, 32.088215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964405, 33.817677, 32.423588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096590, 0.929459, 0.356057,
		-0.876178, -0.249118, 0.412617,
		0.472211, -0.272115, 0.838433,
		44.106068, 33.736042, 32.675117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466198, 34.358414, 32.597927>,  <43.775520, 33.926521, 32.088215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466198, 34.358414, 32.597927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813324, 34.246517, 32.762188>,  <44.021599, 34.179379, 32.860744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813324, 34.246517, 32.762188>,  <43.466198, 34.358414, 32.597927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813324, 34.246517, 32.762188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058449, 0.878197, 0.474714,
		-0.493435, -0.387962, 0.778465,
		0.867817, -0.279741, 0.410657,
		44.073669, 34.162594, 32.885384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393364, 34.504410, 33.238934>,  <43.466198, 34.358414, 32.597927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393364, 34.504410, 33.238934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789272, 34.447952, 33.247196>,  <44.026817, 34.414078, 33.252155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789272, 34.447952, 33.247196>,  <43.393364, 34.504410, 33.238934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789272, 34.447952, 33.247196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073471, 0.628568, 0.774277,
		-0.122268, -0.764841, 0.632510,
		0.989774, -0.141141, 0.020660,
		44.086205, 34.405609, 33.253395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566437, 34.316952, 33.938145>,  <43.393364, 34.504410, 33.238934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566437, 34.316952, 33.938145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.869495, 34.484089, 33.737598>,  <44.051331, 34.584373, 33.617271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.869495, 34.484089, 33.737598>,  <43.566437, 34.316952, 33.938145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869495, 34.484089, 33.737598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094490, 0.689872, 0.717739,
		0.645783, -0.591170, 0.483200,
		0.757652, 0.417846, -0.501367,
		44.096790, 34.609444, 33.587189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037781, 34.556229, 34.421078>,  <43.566437, 34.316952, 33.938145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037781, 34.556229, 34.421078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121819, 34.768219, 34.092445>,  <44.172241, 34.895412, 33.895267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121819, 34.768219, 34.092445>,  <44.037781, 34.556229, 34.421078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121819, 34.768219, 34.092445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162184, 0.809798, 0.563847,
		0.964134, -0.251710, 0.084184,
		0.210098, 0.529971, -0.821577,
		44.184849, 34.927212, 33.845974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462662, 35.185390, 34.661602>,  <44.037781, 34.556229, 34.421078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462662, 35.185390, 34.661602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407040, 35.288601, 34.279171>,  <44.373665, 35.350525, 34.049713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407040, 35.288601, 34.279171>,  <44.462662, 35.185390, 34.661602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407040, 35.288601, 34.279171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070767, 0.965581, 0.250293,
		0.987752, -0.032853, -0.152532,
		-0.139059, 0.258022, -0.956079,
		44.365322, 35.366009, 33.992348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954670, 35.632046, 34.602455>,  <44.462662, 35.185390, 34.661602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954670, 35.632046, 34.602455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711086, 35.710705, 34.295078>,  <44.564938, 35.757900, 34.110653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711086, 35.710705, 34.295078>,  <44.954670, 35.632046, 34.602455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711086, 35.710705, 34.295078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011840, 0.970928, 0.239080,
		0.793112, 0.136492, -0.593585,
		-0.608960, 0.196646, -0.768439,
		44.528397, 35.769699, 34.064548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269371, 36.249489, 34.337376>,  <44.954670, 35.632046, 34.602455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269371, 36.249489, 34.337376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897793, 36.218460, 34.192581>,  <44.674847, 36.199841, 34.105705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897793, 36.218460, 34.192581>,  <45.269371, 36.249489, 34.337376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897793, 36.218460, 34.192581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162341, 0.964130, 0.209997,
		0.332711, 0.253842, -0.908222,
		-0.928950, -0.077574, -0.361986,
		44.619106, 36.195187, 34.083984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989269, 36.513130, 34.640926>,  <45.269371, 36.249489, 34.337376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989269, 36.513130, 34.640926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130211, 36.433403, 35.006683>,  <46.214775, 36.385567, 35.226139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130211, 36.433403, 35.006683>,  <45.989269, 36.513130, 34.640926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130211, 36.433403, 35.006683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683071, -0.613118, -0.396864,
		0.639733, 0.764434, -0.079889,
		0.352358, -0.199317, 0.914394,
		46.235920, 36.373608, 35.281002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674637, 36.449619, 34.463726>,  <45.989269, 36.513130, 34.640926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674637, 36.449619, 34.463726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596603, 36.268688, 34.811829>,  <46.549782, 36.160130, 35.020691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596603, 36.268688, 34.811829>,  <46.674637, 36.449619, 34.463726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596603, 36.268688, 34.811829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645298, -0.727398, -0.233417,
		0.738602, 0.516038, 0.433788,
		-0.195084, -0.452325, 0.870255,
		46.538078, 36.132992, 35.072906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.289936, 36.496162, 34.925484>,  <46.674637, 36.449619, 34.463726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.289936, 36.496162, 34.925484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037239, 36.194229, 34.996056>,  <46.885620, 36.013069, 35.038399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037239, 36.194229, 34.996056>,  <47.289936, 36.496162, 34.925484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037239, 36.194229, 34.996056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698700, -0.653044, -0.292150,
		0.335740, -0.061294, 0.939958,
		-0.631741, -0.754835, 0.176427,
		46.847717, 35.967777, 35.048985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.705116, 35.932499, 35.240795>,  <47.289936, 36.496162, 34.925484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.705116, 35.932499, 35.240795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390289, 35.805641, 35.029156>,  <47.201393, 35.729527, 34.902172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390289, 35.805641, 35.029156>,  <47.705116, 35.932499, 35.240795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390289, 35.805641, 35.029156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582356, -0.664878, -0.467759,
		-0.203441, -0.676283, 0.707993,
		-0.787066, -0.317142, -0.529101,
		47.154171, 35.710499, 34.870426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.885860, 35.208351, 35.108665>,  <47.705116, 35.932499, 35.240795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.885860, 35.208351, 35.108665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619873, 35.276871, 34.817883>,  <47.460281, 35.317982, 34.643414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619873, 35.276871, 34.817883>,  <47.885860, 35.208351, 35.108665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.619873, 35.276871, 34.817883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537929, -0.565373, -0.625289,
		-0.518115, -0.806852, 0.283809,
		-0.664973, 0.171303, -0.726957,
		47.420380, 35.328262, 34.599796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.667313, 39.986206, 44.996731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278637, 39.900761, 45.037106>,  <34.045433, 39.849491, 45.061329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278637, 39.900761, 45.037106>,  <34.667313, 39.986206, 44.996731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278637, 39.900761, 45.037106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034122, -0.295856, -0.954623,
		0.233786, -0.931041, 0.280191,
		-0.971689, -0.213617, 0.100936,
		33.987129, 39.836678, 45.067387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471519, 39.403423, 44.561317>,  <34.667313, 39.986206, 44.996731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471519, 39.403423, 44.561317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.101181, 39.528511, 44.646183>,  <33.878979, 39.603565, 44.697102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.101181, 39.528511, 44.646183>,  <34.471519, 39.403423, 44.561317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101181, 39.528511, 44.646183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304890, -0.286433, -0.908294,
		-0.223268, -0.905629, 0.360537,
		-0.925847, 0.312717, 0.212166,
		33.823425, 39.622326, 44.709831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051311, 38.841183, 44.371170>,  <34.471519, 39.403423, 44.561317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051311, 38.841183, 44.371170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.834782, 39.177498, 44.368492>,  <33.704865, 39.379288, 44.366886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.834782, 39.177498, 44.368492>,  <34.051311, 38.841183, 44.371170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834782, 39.177498, 44.368492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286743, -0.192083, -0.938553,
		-0.790408, -0.506144, 0.345069,
		-0.541325, 0.840787, -0.006691,
		33.672382, 39.429733, 44.366486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505013, 38.625134, 43.944668>,  <34.051311, 38.841183, 44.371170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505013, 38.625134, 43.944668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486794, 39.024719, 43.944168>,  <33.475864, 39.264469, 43.943871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486794, 39.024719, 43.944168>,  <33.505013, 38.625134, 43.944668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486794, 39.024719, 43.944168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258331, -0.012982, -0.965969,
		-0.964982, -0.043671, 0.258654,
		-0.045543, 0.998962, -0.001246,
		33.473129, 39.324409, 43.943794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828991, 38.707588, 43.661652>,  <33.505013, 38.625134, 43.944668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828991, 38.707588, 43.661652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.043129, 39.041603, 43.610863>,  <33.171612, 39.242012, 43.580387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.043129, 39.041603, 43.610863>,  <32.828991, 38.707588, 43.661652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043129, 39.041603, 43.610863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218778, -0.008112, -0.975741,
		-0.815808, 0.550137, 0.178344,
		0.535344, 0.835035, -0.126976,
		33.203732, 39.292114, 43.572769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464291, 39.096905, 43.178894>,  <32.828991, 38.707588, 43.661652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464291, 39.096905, 43.178894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.815136, 39.287872, 43.157959>,  <33.025642, 39.402454, 43.145397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.815136, 39.287872, 43.157959>,  <32.464291, 39.096905, 43.178894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815136, 39.287872, 43.157959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034352, -0.046333, -0.998335,
		-0.479052, 0.877452, -0.024238,
		0.877114, 0.477422, -0.052338,
		33.078270, 39.431099, 43.142258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420532, 39.658604, 42.580578>,  <32.464291, 39.096905, 43.178894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420532, 39.658604, 42.580578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.799492, 39.537807, 42.622971>,  <33.026867, 39.465328, 42.648407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.799492, 39.537807, 42.622971>,  <32.420532, 39.658604, 42.580578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799492, 39.537807, 42.622971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076087, -0.109130, -0.991111,
		0.310876, 0.947043, -0.080412,
		0.947400, -0.301995, 0.105983,
		33.083714, 39.447208, 42.654766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658279, 39.950230, 41.928394>,  <32.420532, 39.658604, 42.580578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658279, 39.950230, 41.928394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.938133, 39.701988, 42.070019>,  <33.106045, 39.553043, 42.154991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.938133, 39.701988, 42.070019>,  <32.658279, 39.950230, 41.928394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938133, 39.701988, 42.070019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377406, -0.099771, -0.920658,
		0.606690, 0.777750, 0.164417,
		0.699637, -0.620606, 0.354057,
		33.148026, 39.515808, 42.176235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317516, 40.038792, 41.532421>,  <32.658279, 39.950230, 41.928394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317516, 40.038792, 41.532421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.383572, 39.669991, 41.672504>,  <33.423206, 39.448711, 41.756554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.383572, 39.669991, 41.672504>,  <33.317516, 40.038792, 41.532421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383572, 39.669991, 41.672504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392865, -0.264201, -0.880827,
		0.904647, 0.283045, 0.318591,
		0.165142, -0.922000, 0.350207,
		33.433113, 39.393391, 41.777565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905277, 39.826797, 41.238304>,  <33.317516, 40.038792, 41.532421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905277, 39.826797, 41.238304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.787994, 39.467850, 41.370224>,  <33.717625, 39.252483, 41.449375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.787994, 39.467850, 41.370224>,  <33.905277, 39.826797, 41.238304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787994, 39.467850, 41.370224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270757, -0.408776, -0.871546,
		0.916908, -0.166248, 0.362824,
		-0.293207, -0.897365, 0.329797,
		33.700031, 39.198639, 41.469162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402760, 39.373722, 40.996620>,  <33.905277, 39.826797, 41.238304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402760, 39.373722, 40.996620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092289, 39.137924, 41.086105>,  <33.906006, 38.996445, 41.139797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092289, 39.137924, 41.086105>,  <34.402760, 39.373722, 40.996620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092289, 39.137924, 41.086105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025624, -0.384015, -0.922971,
		0.629994, -0.710657, 0.313169,
		-0.776177, -0.589492, 0.223717,
		33.859436, 38.961079, 41.153221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603298, 38.671551, 40.822872>,  <34.402760, 39.373722, 40.996620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603298, 38.671551, 40.822872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205181, 38.706596, 40.806320>,  <33.966309, 38.727623, 40.796387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205181, 38.706596, 40.806320>,  <34.603298, 38.671551, 40.822872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205181, 38.706596, 40.806320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014970, -0.282926, -0.959025,
		-0.095733, -0.955132, 0.280283,
		-0.995294, 0.087615, -0.041383,
		33.906593, 38.732880, 40.793903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316269, 38.036263, 40.655468>,  <34.603298, 38.671551, 40.822872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316269, 38.036263, 40.655468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030308, 38.289257, 40.536224>,  <33.858730, 38.441055, 40.464676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030308, 38.289257, 40.536224>,  <34.316269, 38.036263, 40.655468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030308, 38.289257, 40.536224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019999, -0.444670, -0.895471,
		-0.698937, -0.634213, 0.330545,
		-0.714903, 0.632489, -0.298112,
		33.815838, 38.479004, 40.446789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955856, 37.683693, 40.166344>,  <34.316269, 38.036263, 40.655468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955856, 37.683693, 40.166344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.787666, 38.039219, 40.093452>,  <33.686752, 38.252533, 40.049717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.787666, 38.039219, 40.093452>,  <33.955856, 37.683693, 40.166344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787666, 38.039219, 40.093452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093408, -0.242189, -0.965722,
		-0.902482, -0.389043, 0.184858,
		-0.420478, 0.888814, -0.182231,
		33.661522, 38.305862, 40.038784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447063, 37.602856, 39.594357>,  <33.955856, 37.683693, 40.166344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447063, 37.602856, 39.594357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525188, 37.995129, 39.598541>,  <33.572063, 38.230492, 39.601051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525188, 37.995129, 39.598541>,  <33.447063, 37.602856, 39.594357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525188, 37.995129, 39.598541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000969, 0.010863, -0.999941,
		-0.980740, 0.195292, 0.003072,
		0.195314, 0.980685, 0.010465,
		33.583782, 38.289333, 39.601681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061138, 37.830547, 39.003628>,  <33.447063, 37.602856, 39.594357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061138, 37.830547, 39.003628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319427, 38.125988, 39.081097>,  <33.474400, 38.303253, 39.127579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319427, 38.125988, 39.081097>,  <33.061138, 37.830547, 39.003628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319427, 38.125988, 39.081097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223413, 0.059788, -0.972889,
		-0.730160, 0.671482, -0.126408,
		0.645719, 0.738605, 0.193672,
		33.513142, 38.347569, 39.139198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907925, 38.420975, 38.454372>,  <33.061138, 37.830547, 39.003628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907925, 38.420975, 38.454372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281612, 38.481861, 38.583408>,  <33.505825, 38.518391, 38.660828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281612, 38.481861, 38.583408>,  <32.907925, 38.420975, 38.454372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281612, 38.481861, 38.583408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269302, 0.292038, -0.917709,
		-0.233895, 0.944217, 0.231836,
		0.934221, 0.152213, 0.322586,
		33.561878, 38.527527, 38.680183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054749, 39.014637, 38.201618>,  <32.907925, 38.420975, 38.454372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054749, 39.014637, 38.201618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408298, 38.869541, 38.319721>,  <33.620430, 38.782482, 38.390583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408298, 38.869541, 38.319721>,  <33.054749, 39.014637, 38.201618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408298, 38.869541, 38.319721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413116, 0.309482, -0.856479,
		0.219300, 0.879000, 0.423398,
		0.883879, -0.362739, 0.295260,
		33.673462, 38.760719, 38.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540558, 39.575085, 38.205101>,  <33.054749, 39.014637, 38.201618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540558, 39.575085, 38.205101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.701042, 39.211941, 38.156399>,  <33.797333, 38.994053, 38.127178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.701042, 39.211941, 38.156399>,  <33.540558, 39.575085, 38.205101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701042, 39.211941, 38.156399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440691, 0.307840, -0.843224,
		0.803010, 0.284650, 0.523593,
		0.401206, -0.907860, -0.121756,
		33.821404, 38.939583, 38.119873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202915, 39.678284, 37.904270>,  <33.540558, 39.575085, 38.205101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202915, 39.678284, 37.904270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143028, 39.292332, 37.817924>,  <34.107098, 39.060760, 37.766117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143028, 39.292332, 37.817924>,  <34.202915, 39.678284, 37.904270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143028, 39.292332, 37.817924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548621, 0.100558, -0.830002,
		0.822557, -0.242691, 0.514297,
		-0.149717, -0.964878, -0.215860,
		34.098114, 39.002869, 37.753166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771996, 39.453754, 37.585808>,  <34.202915, 39.678284, 37.904270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771996, 39.453754, 37.585808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499657, 39.173820, 37.499386>,  <34.336254, 39.005859, 37.447533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499657, 39.173820, 37.499386>,  <34.771996, 39.453754, 37.585808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499657, 39.173820, 37.499386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313178, -0.011511, -0.949625,
		0.662092, -0.714213, 0.227010,
		-0.680848, -0.699833, -0.216055,
		34.295403, 38.963871, 37.434570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156174, 38.959427, 37.239452>,  <34.771996, 39.453754, 37.585808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156174, 38.959427, 37.239452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773140, 38.951389, 37.124477>,  <34.543320, 38.946568, 37.055492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773140, 38.951389, 37.124477>,  <35.156174, 38.959427, 37.239452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773140, 38.951389, 37.124477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284701, 0.087726, -0.954594,
		0.044393, -0.995942, -0.078286,
		-0.957588, -0.020089, -0.287440,
		34.485863, 38.945362, 37.038246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505119, 38.299629, 37.276577>,  <35.156174, 38.959427, 37.239452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505119, 38.299629, 37.276577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898792, 38.339970, 37.218307>,  <36.134995, 38.364174, 37.183346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898792, 38.339970, 37.218307>,  <35.505119, 38.299629, 37.276577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898792, 38.339970, 37.218307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122689, 0.205278, 0.970983,
		0.127827, -0.973494, 0.189657,
		0.984179, 0.100849, -0.145677,
		36.194046, 38.370224, 37.174603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921841, 37.895897, 37.745113>,  <35.505119, 38.299629, 37.276577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921841, 37.895897, 37.745113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141548, 38.207623, 37.624466>,  <36.273373, 38.394657, 37.552078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141548, 38.207623, 37.624466>,  <35.921841, 37.895897, 37.745113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141548, 38.207623, 37.624466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244083, 0.195575, 0.949828,
		0.799202, -0.595333, -0.082793,
		0.549272, 0.779313, -0.301615,
		36.306332, 38.441418, 37.533981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439713, 37.884445, 38.077572>,  <35.921841, 37.895897, 37.745113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439713, 37.884445, 38.077572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495438, 38.259380, 37.949829>,  <36.528873, 38.484341, 37.873184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495438, 38.259380, 37.949829>,  <36.439713, 37.884445, 38.077572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495438, 38.259380, 37.949829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392040, 0.243948, 0.887014,
		0.909339, -0.248773, -0.333489,
		0.139312, 0.937337, -0.319360,
		36.537231, 38.540581, 37.854019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034832, 38.128361, 38.327675>,  <36.439713, 37.884445, 38.077572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034832, 38.128361, 38.327675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837265, 38.467991, 38.252724>,  <36.718723, 38.671768, 38.207752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837265, 38.467991, 38.252724>,  <37.034832, 38.128361, 38.327675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837265, 38.467991, 38.252724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298723, 0.368088, 0.880497,
		0.816583, 0.378920, -0.435445,
		-0.493920, 0.849076, -0.187382,
		36.689091, 38.722713, 38.196510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455502, 38.664230, 38.473976>,  <37.034832, 38.128361, 38.327675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455502, 38.664230, 38.473976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091194, 38.827507, 38.498901>,  <36.872612, 38.925472, 38.513855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091194, 38.827507, 38.498901>,  <37.455502, 38.664230, 38.473976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091194, 38.827507, 38.498901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238576, 0.397028, 0.886256,
		0.337024, 0.822039, -0.458985,
		-0.910767, 0.408193, 0.062311,
		36.817963, 38.949966, 38.517593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557880, 39.397179, 38.694141>,  <37.455502, 38.664230, 38.473976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557880, 39.397179, 38.694141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167347, 39.326046, 38.743385>,  <36.933029, 39.283367, 38.772930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167347, 39.326046, 38.743385>,  <37.557880, 39.397179, 38.694141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167347, 39.326046, 38.743385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039612, 0.412555, 0.910071,
		-0.212627, 0.893406, -0.395745,
		-0.976330, -0.177830, 0.123110,
		36.874447, 39.272697, 38.780319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280293, 39.987732, 38.915359>,  <37.557880, 39.397179, 38.694141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280293, 39.987732, 38.915359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034794, 39.691166, 39.023891>,  <36.887497, 39.513226, 39.089012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034794, 39.691166, 39.023891>,  <37.280293, 39.987732, 38.915359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034794, 39.691166, 39.023891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097671, 0.412337, 0.905780,
		-0.783441, 0.529415, -0.325483,
		-0.613742, -0.741416, 0.271334,
		36.850670, 39.468742, 39.105293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819214, 40.338387, 39.338528>,  <37.280293, 39.987732, 38.915359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819214, 40.338387, 39.338528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770187, 39.951607, 39.427963>,  <36.740772, 39.719540, 39.481625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770187, 39.951607, 39.427963>,  <36.819214, 40.338387, 39.338528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770187, 39.951607, 39.427963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145459, 0.240361, 0.959723,
		-0.981742, 0.085109, -0.170112,
		-0.122569, -0.966945, 0.223593,
		36.733418, 39.661522, 39.495041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188774, 40.286354, 39.572788>,  <36.819214, 40.338387, 39.338528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188774, 40.286354, 39.572788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388966, 39.966473, 39.705448>,  <36.509083, 39.774544, 39.785046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388966, 39.966473, 39.705448>,  <36.188774, 40.286354, 39.572788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388966, 39.966473, 39.705448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259109, 0.227162, 0.938755,
		-0.826063, -0.555764, -0.093519,
		0.500482, -0.799702, 0.331654,
		36.539112, 39.726562, 39.804943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830151, 40.094620, 40.235336>,  <36.188774, 40.286354, 39.572788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830151, 40.094620, 40.235336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197506, 39.937153, 40.251266>,  <36.417919, 39.842674, 40.260826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197506, 39.937153, 40.251266>,  <35.830151, 40.094620, 40.235336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197506, 39.937153, 40.251266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053984, 0.224374, 0.973007,
		-0.391974, -0.891451, 0.227315,
		0.918391, -0.393665, 0.039824,
		36.473022, 39.819054, 40.263214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957630, 39.897816, 40.842537>,  <35.830151, 40.094620, 40.235336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957630, 39.897816, 40.842537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351044, 39.870228, 40.775707>,  <36.587090, 39.853676, 40.735611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351044, 39.870228, 40.775707>,  <35.957630, 39.897816, 40.842537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351044, 39.870228, 40.775707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175042, 0.133078, 0.975526,
		-0.045046, -0.988703, 0.142958,
		0.983530, -0.068968, -0.167070,
		36.646103, 39.849537, 40.725586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252033, 39.444412, 41.376690>,  <35.957630, 39.897816, 40.842537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252033, 39.444412, 41.376690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529274, 39.690445, 41.226337>,  <36.695618, 39.838066, 41.136127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529274, 39.690445, 41.226337>,  <36.252033, 39.444412, 41.376690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529274, 39.690445, 41.226337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154492, 0.382573, 0.910918,
		0.704093, -0.689426, 0.170135,
		0.693099, 0.615086, -0.375877,
		36.737206, 39.874969, 41.113575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958462, 39.193932, 41.597256>,  <36.252033, 39.444412, 41.376690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958462, 39.193932, 41.597256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953819, 39.586235, 41.519299>,  <36.951035, 39.821617, 41.472527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953819, 39.586235, 41.519299>,  <36.958462, 39.193932, 41.597256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953819, 39.586235, 41.519299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310617, 0.188797, 0.931597,
		0.950464, -0.049724, -0.306830,
		-0.011605, 0.980757, -0.194890,
		36.950336, 39.880463, 41.460831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619492, 39.559631, 41.749554>,  <36.958462, 39.193932, 41.597256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619492, 39.559631, 41.749554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340866, 39.841866, 41.801617>,  <37.173691, 40.011208, 41.832855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340866, 39.841866, 41.801617>,  <37.619492, 39.559631, 41.749554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340866, 39.841866, 41.801617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295347, 0.116651, 0.948242,
		0.653886, 0.698954, -0.289649,
		-0.696565, 0.705589, 0.130158,
		37.131897, 40.053543, 41.840664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945953, 39.995716, 42.273743>,  <37.619492, 39.559631, 41.749554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945953, 39.995716, 42.273743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564339, 40.115570, 42.271423>,  <37.335369, 40.187485, 42.270031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564339, 40.115570, 42.271423>,  <37.945953, 39.995716, 42.273743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564339, 40.115570, 42.271423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071630, 0.246778, 0.966421,
		0.291007, 0.921585, -0.256898,
		-0.954036, 0.299637, -0.005801,
		37.278130, 40.205460, 42.269684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989655, 40.646442, 42.559002>,  <37.945953, 39.995716, 42.273743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989655, 40.646442, 42.559002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611614, 40.523357, 42.602993>,  <37.384789, 40.449505, 42.629387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611614, 40.523357, 42.602993>,  <37.989655, 40.646442, 42.559002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611614, 40.523357, 42.602993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032426, 0.246568, 0.968583,
		-0.325161, 0.918976, -0.223054,
		-0.945102, -0.307713, 0.109973,
		37.328083, 40.431042, 42.635986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773735, 41.037193, 43.035988>,  <37.989655, 40.646442, 42.559002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773735, 41.037193, 43.035988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502701, 40.743015, 43.036350>,  <37.340080, 40.566509, 43.036568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502701, 40.743015, 43.036350>,  <37.773735, 41.037193, 43.035988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502701, 40.743015, 43.036350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055486, -0.049886, 0.997213,
		-0.733350, 0.675746, 0.074609,
		-0.677584, -0.735445, 0.000910,
		37.299427, 40.522381, 43.036625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264950, 41.313507, 43.446472>,  <37.773735, 41.037193, 43.035988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264950, 41.313507, 43.446472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237194, 40.914471, 43.446220>,  <37.220539, 40.675049, 43.446072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237194, 40.914471, 43.446220>,  <37.264950, 41.313507, 43.446472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237194, 40.914471, 43.446220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126747, 0.008193, 0.991901,
		-0.989505, 0.068909, -0.127010,
		-0.069391, -0.997589, -0.000627,
		37.216377, 40.615192, 43.446033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.393349, 41.032089, 43.808453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669430, 40.743004, 43.822914>,  <36.835079, 40.569553, 43.831589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669430, 40.743004, 43.822914>,  <36.393349, 41.032089, 43.808453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669430, 40.743004, 43.822914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207821, -0.150125, 0.966578,
		-0.693131, -0.674648, -0.253811,
		0.690203, -0.722712, 0.036150,
		36.876492, 40.526192, 43.833759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049530, 40.382729, 44.123814>,  <36.393349, 41.032089, 43.808453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049530, 40.382729, 44.123814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443298, 40.322216, 44.159637>,  <36.679562, 40.285908, 44.181133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443298, 40.322216, 44.159637>,  <36.049530, 40.382729, 44.123814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443298, 40.322216, 44.159637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124383, -0.239294, 0.962947,
		-0.124247, -0.959089, -0.254385,
		0.984425, -0.151284, 0.089563,
		36.738625, 40.276833, 44.186508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140385, 39.756592, 44.552086>,  <36.049530, 40.382729, 44.123814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140385, 39.756592, 44.552086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483818, 39.960503, 44.573872>,  <36.689877, 40.082848, 44.586945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483818, 39.960503, 44.573872>,  <36.140385, 39.756592, 44.552086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483818, 39.960503, 44.573872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039858, -0.172282, 0.984241,
		0.511128, -0.842879, -0.168237,
		0.858580, 0.509779, 0.054463,
		36.741390, 40.113438, 44.590210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599625, 39.320446, 44.949432>,  <36.140385, 39.756592, 44.552086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599625, 39.320446, 44.949432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.708080, 39.705055, 44.967113>,  <36.773151, 39.935822, 44.977722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.708080, 39.705055, 44.967113>,  <36.599625, 39.320446, 44.949432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708080, 39.705055, 44.967113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048684, -0.059562, 0.997037,
		0.961309, -0.268180, -0.062960,
		0.271135, 0.961526, 0.044201,
		36.789421, 39.993511, 44.980373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893166, 39.299252, 45.602577>,  <36.599625, 39.320446, 44.949432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893166, 39.299252, 45.602577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862747, 39.693428, 45.541759>,  <36.844494, 39.929935, 45.505268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862747, 39.693428, 45.541759>,  <36.893166, 39.299252, 45.602577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862747, 39.693428, 45.541759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010390, 0.153262, 0.988131,
		0.997050, 0.073566, -0.021894,
		-0.076048, 0.985443, -0.152045,
		36.839931, 39.989059, 45.496147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296318, 39.632992, 46.091507>,  <36.893166, 39.299252, 45.602577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296318, 39.632992, 46.091507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004734, 39.888363, 45.992683>,  <36.829784, 40.041584, 45.933388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004734, 39.888363, 45.992683>,  <37.296318, 39.632992, 46.091507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004734, 39.888363, 45.992683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248081, 0.090003, 0.964549,
		0.638028, 0.764404, 0.092773,
		-0.728955, 0.638425, -0.247059,
		36.786049, 40.079891, 45.918568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353832, 40.092411, 46.571842>,  <37.296318, 39.632992, 46.091507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353832, 40.092411, 46.571842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994549, 40.176353, 46.417351>,  <36.778976, 40.226719, 46.324654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994549, 40.176353, 46.417351>,  <37.353832, 40.092411, 46.571842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994549, 40.176353, 46.417351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324176, 0.277162, 0.904484,
		0.296858, 0.937626, -0.180921,
		-0.898212, 0.209853, -0.386233,
		36.725086, 40.239311, 46.301479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207458, 40.646049, 46.905216>,  <37.353832, 40.092411, 46.571842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207458, 40.646049, 46.905216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.846237, 40.514000, 46.795303>,  <36.629505, 40.434769, 46.729355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.846237, 40.514000, 46.795303>,  <37.207458, 40.646049, 46.905216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846237, 40.514000, 46.795303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358843, 0.228288, 0.905051,
		-0.236054, 0.915915, -0.324621,
		-0.903056, -0.330128, -0.274781,
		36.575321, 40.414963, 46.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813370, 41.319397, 46.937241>,  <37.207458, 40.646049, 46.905216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813370, 41.319397, 46.937241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575035, 40.998871, 46.958706>,  <36.432034, 40.806557, 46.971584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575035, 40.998871, 46.958706>,  <36.813370, 41.319397, 46.937241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575035, 40.998871, 46.958706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373430, 0.335588, 0.864830,
		-0.711007, 0.495257, -0.499190,
		-0.595835, -0.801312, 0.053662,
		36.396286, 40.758476, 46.974804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229027, 41.668537, 47.177711>,  <36.813370, 41.319397, 46.937241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229027, 41.668537, 47.177711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244537, 41.279667, 47.270115>,  <36.253845, 41.046345, 47.325558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244537, 41.279667, 47.270115>,  <36.229027, 41.668537, 47.177711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244537, 41.279667, 47.270115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413993, 0.194776, 0.889197,
		-0.909454, -0.130114, -0.394923,
		0.038776, -0.972179, 0.231006,
		36.256168, 40.988014, 47.339417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687393, 41.559578, 47.614098>,  <36.229027, 41.668537, 47.177711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687393, 41.559578, 47.614098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878563, 41.215401, 47.684788>,  <35.993263, 41.008896, 47.727203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878563, 41.215401, 47.684788>,  <35.687393, 41.559578, 47.614098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878563, 41.215401, 47.684788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182096, 0.099771, 0.978206,
		-0.859319, -0.499691, -0.108999,
		0.477925, -0.860439, 0.176727,
		36.021942, 40.957268, 47.737804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405548, 41.277885, 48.239559>,  <35.687393, 41.559578, 47.614098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405548, 41.277885, 48.239559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727711, 41.041229, 48.225266>,  <35.921009, 40.899235, 48.216690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727711, 41.041229, 48.225266>,  <35.405548, 41.277885, 48.239559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727711, 41.041229, 48.225266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054928, -0.134528, 0.989386,
		-0.590167, -0.794899, -0.140848,
		0.805410, -0.591639, -0.035732,
		35.969334, 40.863739, 48.214546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288990, 40.590729, 48.654350>,  <35.405548, 41.277885, 48.239559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288990, 40.590729, 48.654350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675179, 40.694595, 48.645939>,  <35.906891, 40.756916, 48.640892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675179, 40.694595, 48.645939>,  <35.288990, 40.590729, 48.654350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675179, 40.694595, 48.645939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055801, -0.127276, 0.990296,
		0.254474, -0.957273, -0.137371,
		0.965468, 0.259671, -0.021028,
		35.964821, 40.772495, 48.639629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607178, 40.179829, 49.031841>,  <35.288990, 40.590729, 48.654350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607178, 40.179829, 49.031841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.864338, 40.485683, 49.013939>,  <36.018635, 40.669197, 49.003197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.864338, 40.485683, 49.013939>,  <35.607178, 40.179829, 49.031841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864338, 40.485683, 49.013939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081721, -0.010377, 0.996601,
		0.761575, -0.644376, -0.069159,
		0.642903, 0.764639, -0.044756,
		36.057209, 40.715076, 49.000511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273720, 40.042660, 49.417412>,  <35.607178, 40.179829, 49.031841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273720, 40.042660, 49.417412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284935, 40.442463, 49.411804>,  <36.291664, 40.682346, 49.408440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284935, 40.442463, 49.411804>,  <36.273720, 40.042660, 49.417412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284935, 40.442463, 49.411804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312933, 0.004541, 0.949765,
		0.949362, -0.031012, -0.312652,
		0.028034, 0.999509, -0.014016,
		36.293346, 40.742317, 49.407600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883877, 40.216640, 49.767326>,  <36.273720, 40.042660, 49.417412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883877, 40.216640, 49.767326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640446, 40.533806, 49.779472>,  <36.494385, 40.724106, 49.786762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640446, 40.533806, 49.779472>,  <36.883877, 40.216640, 49.767326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640446, 40.533806, 49.779472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210723, 0.124602, 0.969572,
		0.764999, 0.596464, -0.242915,
		-0.608582, 0.792909, 0.030368,
		36.457870, 40.771679, 49.788582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239597, 40.644028, 50.118435>,  <36.883877, 40.216640, 49.767326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239597, 40.644028, 50.118435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897118, 40.850574, 50.125294>,  <36.691631, 40.974503, 50.129410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897118, 40.850574, 50.125294>,  <37.239597, 40.644028, 50.118435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897118, 40.850574, 50.125294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208256, 0.314567, 0.926108,
		0.472818, 0.796501, -0.376868,
		-0.856196, 0.516366, 0.017143,
		36.640259, 41.005486, 50.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476032, 41.187237, 50.433983>,  <37.239597, 40.644028, 50.118435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476032, 41.187237, 50.433983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077831, 41.186768, 50.471867>,  <36.838909, 41.186485, 50.494595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077831, 41.186768, 50.471867>,  <37.476032, 41.187237, 50.433983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077831, 41.186768, 50.471867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092924, 0.181407, 0.979008,
		-0.018332, 0.983407, -0.180482,
		-0.995504, -0.001176, 0.094708,
		36.779179, 41.186417, 50.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329002, 41.658913, 50.869759>,  <37.476032, 41.187237, 50.433983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329002, 41.658913, 50.869759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992458, 41.445442, 50.903946>,  <36.790531, 41.317360, 50.924458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992458, 41.445442, 50.903946>,  <37.329002, 41.658913, 50.869759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992458, 41.445442, 50.903946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005377, 0.166391, 0.986045,
		-0.540448, 0.829160, -0.142865,
		-0.841360, -0.533674, 0.085467,
		36.740051, 41.285339, 50.929585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755783, 42.009663, 51.399780>,  <37.329002, 41.658913, 50.869759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755783, 42.009663, 51.399780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.690357, 41.615269, 51.386581>,  <36.651104, 41.378632, 51.378662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.690357, 41.615269, 51.386581>,  <36.755783, 42.009663, 51.399780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690357, 41.615269, 51.386581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045226, -0.025919, 0.998640,
		-0.985496, 0.164830, -0.040353,
		-0.163560, -0.985981, -0.032998,
		36.641289, 41.319473, 51.376682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244976, 41.921520, 51.852772>,  <36.755783, 42.009663, 51.399780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244976, 41.921520, 51.852772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402607, 41.555183, 51.821953>,  <36.497185, 41.335381, 51.803459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402607, 41.555183, 51.821953>,  <36.244976, 41.921520, 51.852772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402607, 41.555183, 51.821953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000862, -0.083467, 0.996510,
		-0.919078, -0.392766, -0.032103,
		0.394075, -0.915843, -0.077051,
		36.520828, 41.280430, 51.798836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811691, 41.451260, 52.108601>,  <36.244976, 41.921520, 51.852772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811691, 41.451260, 52.108601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157448, 41.252121, 52.136810>,  <36.364902, 41.132637, 52.153736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157448, 41.252121, 52.136810>,  <35.811691, 41.451260, 52.108601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157448, 41.252121, 52.136810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220711, -0.249657, 0.942846,
		-0.451783, -0.830556, -0.325682,
		0.864395, -0.497843, 0.070522,
		36.416767, 41.102768, 52.157967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631859, 40.949017, 52.565895>,  <35.811691, 41.451260, 52.108601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631859, 40.949017, 52.565895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030212, 40.978882, 52.586414>,  <36.269226, 40.996803, 52.598724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030212, 40.978882, 52.586414>,  <35.631859, 40.949017, 52.565895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030212, 40.978882, 52.586414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038887, -0.159100, 0.986496,
		0.081822, -0.984435, -0.155542,
		0.995888, 0.074668, 0.051299,
		36.328979, 41.001282, 52.601803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871426, 40.432758, 53.030666>,  <35.631859, 40.949017, 52.565895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871426, 40.432758, 53.030666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128460, 40.738800, 53.014179>,  <36.282681, 40.922424, 53.004288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128460, 40.738800, 53.014179>,  <35.871426, 40.432758, 53.030666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128460, 40.738800, 53.014179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057010, 0.005908, 0.998356,
		0.764094, -0.643875, -0.039823,
		0.642581, 0.765108, -0.041222,
		36.321236, 40.968334, 53.001812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219784, 40.211979, 52.502636>,  <35.871426, 40.432758, 53.030666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219784, 40.211979, 52.502636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893986, 40.074478, 52.689579>,  <34.698505, 39.991978, 52.801746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893986, 40.074478, 52.689579>,  <35.219784, 40.211979, 52.502636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893986, 40.074478, 52.689579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204657, -0.583539, -0.785874,
		0.542873, -0.735740, 0.404938,
		-0.814496, -0.343757, 0.467362,
		34.649635, 39.971352, 52.829788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214554, 39.519485, 52.517929>,  <35.219784, 40.211979, 52.502636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214554, 39.519485, 52.517929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830124, 39.626209, 52.546658>,  <34.599468, 39.690243, 52.563896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830124, 39.626209, 52.546658>,  <35.214554, 39.519485, 52.517929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830124, 39.626209, 52.546658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209143, -0.532594, -0.820124,
		-0.180561, -0.803218, 0.567661,
		-0.961071, 0.266805, 0.071822,
		34.541801, 39.706249, 52.568203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861652, 38.864326, 52.435829>,  <35.214554, 39.519485, 52.517929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861652, 38.864326, 52.435829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626476, 39.176140, 52.349426>,  <34.485371, 39.363228, 52.297585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626476, 39.176140, 52.349426>,  <34.861652, 38.864326, 52.435829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626476, 39.176140, 52.349426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263073, -0.436784, -0.860240,
		-0.764931, -0.448944, 0.461876,
		-0.587939, 0.779531, -0.216005,
		34.450096, 39.410000, 52.284626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345665, 38.560795, 52.000595>,  <34.861652, 38.864326, 52.435829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345665, 38.560795, 52.000595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288769, 38.953041, 51.946682>,  <34.254631, 39.188389, 51.914333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288769, 38.953041, 51.946682>,  <34.345665, 38.560795, 52.000595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288769, 38.953041, 51.946682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120678, -0.152330, -0.980934,
		-0.982449, -0.123259, 0.140006,
		-0.142236, 0.980613, -0.134782,
		34.246098, 39.247227, 51.906246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932018, 38.587570, 51.383739>,  <34.345665, 38.560795, 52.000595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932018, 38.587570, 51.383739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091599, 38.953880, 51.402454>,  <34.187347, 39.173668, 51.413681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091599, 38.953880, 51.402454>,  <33.932018, 38.587570, 51.383739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091599, 38.953880, 51.402454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080260, 0.085697, -0.993083,
		-0.913455, 0.392433, 0.107689,
		0.398947, 0.915780, 0.046784,
		34.211281, 39.228615, 51.416489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477501, 38.986198, 50.939537>,  <33.932018, 38.587570, 51.383739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477501, 38.986198, 50.939537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848644, 39.134094, 50.958996>,  <34.071331, 39.222832, 50.970669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848644, 39.134094, 50.958996>,  <33.477501, 38.986198, 50.939537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848644, 39.134094, 50.958996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021020, 0.078382, -0.996702,
		-0.372337, 0.925822, 0.064956,
		0.927859, 0.369744, 0.048645,
		34.127003, 39.245018, 50.973591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391273, 39.588821, 50.554947>,  <33.477501, 38.986198, 50.939537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391273, 39.588821, 50.554947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780048, 39.496632, 50.573792>,  <34.013313, 39.441319, 50.585098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780048, 39.496632, 50.573792>,  <33.391273, 39.588821, 50.554947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780048, 39.496632, 50.573792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066790, 0.078329, -0.994688,
		0.225558, 0.969921, 0.091525,
		0.971937, -0.230473, 0.047113,
		34.071629, 39.427490, 50.587925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763264, 39.974312, 50.044479>,  <33.391273, 39.588821, 50.554947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763264, 39.974312, 50.044479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011543, 39.670918, 50.123917>,  <34.160511, 39.488880, 50.171577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011543, 39.670918, 50.123917>,  <33.763264, 39.974312, 50.044479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011543, 39.670918, 50.123917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262159, -0.037942, -0.964279,
		0.738925, 0.650586, 0.175293,
		0.620695, -0.758484, 0.198593,
		34.197750, 39.443371, 50.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384579, 40.154346, 49.806591>,  <33.763264, 39.974312, 50.044479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384579, 40.154346, 49.806591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403282, 39.754910, 49.796566>,  <34.414505, 39.515247, 49.790550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403282, 39.754910, 49.796566>,  <34.384579, 40.154346, 49.806591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403282, 39.754910, 49.796566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321520, 0.038794, -0.946108,
		0.945748, 0.036178, 0.322882,
		0.046755, -0.998592, -0.025058,
		34.417309, 39.455334, 49.789047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915928, 40.028931, 49.403042>,  <34.384579, 40.154346, 49.806591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915928, 40.028931, 49.403042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700878, 39.691837, 49.414097>,  <34.571846, 39.489582, 49.420731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700878, 39.691837, 49.414097>,  <34.915928, 40.028931, 49.403042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700878, 39.691837, 49.414097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112697, -0.104297, -0.988140,
		0.835617, -0.528137, 0.151046,
		-0.537627, -0.842730, 0.027633,
		34.539589, 39.439018, 49.422386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254940, 39.449127, 49.010479>,  <34.915928, 40.028931, 49.403042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254940, 39.449127, 49.010479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864262, 39.363449, 49.015923>,  <34.629856, 39.312042, 49.019188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864262, 39.363449, 49.015923>,  <35.254940, 39.449127, 49.010479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864262, 39.363449, 49.015923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022654, 0.039844, -0.998949,
		0.213434, -0.975977, -0.043768,
		-0.976695, -0.214201, 0.013606,
		34.571255, 39.299191, 49.020004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164394, 38.989456, 48.412045>,  <35.254940, 39.449127, 49.010479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164394, 38.989456, 48.412045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805103, 39.134544, 48.511341>,  <34.589527, 39.221596, 48.570919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805103, 39.134544, 48.511341>,  <35.164394, 38.989456, 48.412045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805103, 39.134544, 48.511341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264141, 0.005960, -0.964466,
		-0.351310, -0.931879, 0.090456,
		-0.898227, 0.362720, 0.248241,
		34.535637, 39.243359, 48.585812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666775, 38.681149, 47.915417>,  <35.164394, 38.989456, 48.412045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666775, 38.681149, 47.915417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459183, 38.998138, 48.043571>,  <34.334629, 39.188332, 48.120464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459183, 38.998138, 48.043571>,  <34.666775, 38.681149, 47.915417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459183, 38.998138, 48.043571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243281, 0.222377, -0.944120,
		-0.819437, -0.567921, 0.077385,
		-0.518977, 0.792474, 0.320388,
		34.303490, 39.235882, 48.139687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021160, 38.665485, 47.599789>,  <34.666775, 38.681149, 47.915417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021160, 38.665485, 47.599789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.040180, 39.046474, 47.720142>,  <34.051590, 39.275070, 47.792355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.040180, 39.046474, 47.720142>,  <34.021160, 38.665485, 47.599789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040180, 39.046474, 47.720142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154019, 0.304610, -0.939942,
		-0.986923, -0.001649, 0.161183,
		0.047548, 0.952476, 0.300880,
		34.054443, 39.332218, 47.810406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406101, 39.008247, 47.308636>,  <34.021160, 38.665485, 47.599789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406101, 39.008247, 47.308636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.637512, 39.319637, 47.406025>,  <33.776360, 39.506470, 47.464458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.637512, 39.319637, 47.406025>,  <33.406101, 39.008247, 47.308636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637512, 39.319637, 47.406025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073567, 0.247476, -0.966097,
		-0.812336, 0.576829, 0.085903,
		0.578531, 0.778476, 0.243469,
		33.811073, 39.553181, 47.479065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042805, 39.580357, 47.055195>,  <33.406101, 39.008247, 47.308636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042805, 39.580357, 47.055195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410606, 39.735409, 47.081261>,  <33.631287, 39.828442, 47.096901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410606, 39.735409, 47.081261>,  <33.042805, 39.580357, 47.055195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410606, 39.735409, 47.081261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034024, 0.243661, -0.969263,
		-0.391599, 0.889027, 0.237237,
		0.919507, 0.387634, 0.065169,
		33.686459, 39.851700, 47.100811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103981, 40.274403, 46.717274>,  <33.042805, 39.580357, 47.055195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103981, 40.274403, 46.717274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468826, 40.112827, 46.745224>,  <33.687733, 40.015881, 46.761993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468826, 40.112827, 46.745224>,  <33.103981, 40.274403, 46.717274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468826, 40.112827, 46.745224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093317, 0.038613, -0.994887,
		0.399178, 0.913970, 0.072914,
		0.912112, -0.403941, 0.069875,
		33.742458, 39.991646, 46.766186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494225, 40.795345, 46.454155>,  <33.103981, 40.274403, 46.717274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494225, 40.795345, 46.454155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.708241, 40.463734, 46.389114>,  <33.836651, 40.264767, 46.350090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.708241, 40.463734, 46.389114>,  <33.494225, 40.795345, 46.454155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708241, 40.463734, 46.389114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203500, 0.060326, -0.977215,
		0.819949, 0.555942, -0.136430,
		0.535044, -0.829029, -0.162598,
		33.868755, 40.215023, 46.340336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961494, 40.907917, 45.797924>,  <33.494225, 40.795345, 46.454155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961494, 40.907917, 45.797924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904793, 40.512959, 45.826103>,  <33.870773, 40.275986, 45.843010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904793, 40.512959, 45.826103>,  <33.961494, 40.907917, 45.797924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904793, 40.512959, 45.826103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116395, -0.054044, -0.991731,
		0.983035, -0.148780, -0.107267,
		-0.141753, -0.987392, 0.070444,
		33.862267, 40.216740, 45.847237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348038, 40.556190, 45.273689>,  <33.961494, 40.907917, 45.797924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348038, 40.556190, 45.273689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095760, 40.262455, 45.374062>,  <33.944393, 40.086212, 45.434284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095760, 40.262455, 45.374062>,  <34.348038, 40.556190, 45.273689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095760, 40.262455, 45.374062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154316, -0.198220, -0.967934,
		0.760530, -0.649197, 0.011698,
		-0.630698, -0.734338, 0.250934,
		33.906551, 40.042152, 45.449341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.706108, 30.070282, 29.307556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328445, 29.956276, 29.241419>,  <42.101849, 29.887873, 29.201736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328445, 29.956276, 29.241419>,  <42.706108, 30.070282, 29.307556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328445, 29.956276, 29.241419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324222, 0.714109, 0.620425,
		-0.058757, 0.639385, -0.766638,
		-0.944154, -0.285016, -0.165344,
		42.045200, 29.870771, 29.191816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359543, 30.553343, 29.223827>,  <42.706108, 30.070282, 29.307556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359543, 30.553343, 29.223827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.064732, 30.314260, 29.350027>,  <41.887844, 30.170811, 29.425747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.064732, 30.314260, 29.350027>,  <42.359543, 30.553343, 29.223827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064732, 30.314260, 29.350027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274377, 0.691217, 0.668533,
		-0.617663, 0.406162, -0.673442,
		-0.737028, -0.597706, 0.315498,
		41.843624, 30.134949, 29.444675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983604, 31.076401, 29.507151>,  <42.359543, 30.553343, 29.223827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983604, 31.076401, 29.507151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804127, 30.750786, 29.654673>,  <41.696438, 30.555418, 29.743185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804127, 30.750786, 29.654673>,  <41.983604, 31.076401, 29.507151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804127, 30.750786, 29.654673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434464, 0.559322, 0.705974,
		-0.780969, 0.156537, -0.604636,
		-0.448697, -0.814036, 0.368803,
		41.669518, 30.506575, 29.765314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255318, 31.226128, 29.554718>,  <41.983604, 31.076401, 29.507151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255318, 31.226128, 29.554718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331951, 30.932140, 29.814909>,  <41.377930, 30.755749, 29.971024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331951, 30.932140, 29.814909>,  <41.255318, 31.226128, 29.554718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331951, 30.932140, 29.814909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326863, 0.577141, 0.748377,
		-0.925450, -0.355990, -0.129666,
		0.191579, -0.734969, 0.650475,
		41.389423, 30.711649, 30.010052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650711, 31.199684, 30.073654>,  <41.255318, 31.226128, 29.554718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650711, 31.199684, 30.073654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.937698, 31.011658, 30.279287>,  <41.109890, 30.898842, 30.402666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.937698, 31.011658, 30.279287>,  <40.650711, 31.199684, 30.073654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937698, 31.011658, 30.279287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140597, 0.625088, 0.767788,
		-0.682257, -0.623140, 0.382390,
		0.717467, -0.470065, 0.514082,
		41.152939, 30.870638, 30.433512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357624, 30.923237, 30.760939>,  <40.650711, 31.199684, 30.073654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357624, 30.923237, 30.760939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.754055, 30.956533, 30.802572>,  <40.991913, 30.976511, 30.827553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.754055, 30.956533, 30.802572>,  <40.357624, 30.923237, 30.760939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754055, 30.956533, 30.802572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133188, 0.647177, 0.750615,
		-0.004881, -0.757782, 0.652490,
		0.991079, 0.083240, 0.104086,
		41.051380, 30.981506, 30.833797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396725, 31.192005, 31.465820>,  <40.357624, 30.923237, 30.760939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396725, 31.192005, 31.465820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766209, 31.262177, 31.329596>,  <40.987900, 31.304279, 31.247860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766209, 31.262177, 31.329596>,  <40.396725, 31.192005, 31.465820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766209, 31.262177, 31.329596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080034, 0.780999, 0.619383,
		0.374636, -0.599387, 0.707378,
		0.923711, 0.175429, -0.340562,
		41.043324, 31.314806, 31.227427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949173, 31.150589, 32.055691>,  <40.396725, 31.192005, 31.465820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949173, 31.150589, 32.055691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070366, 31.379055, 31.750544>,  <41.143082, 31.516134, 31.567455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070366, 31.379055, 31.750544>,  <40.949173, 31.150589, 32.055691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070366, 31.379055, 31.750544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176509, 0.753014, 0.633888,
		0.936508, -0.326710, 0.127334,
		0.302982, 0.571166, -0.762871,
		41.161259, 31.550406, 31.521683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352367, 31.442310, 32.315659>,  <40.949173, 31.150589, 32.055691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352367, 31.442310, 32.315659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310047, 31.684759, 32.000340>,  <41.284657, 31.830229, 31.811148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310047, 31.684759, 32.000340>,  <41.352367, 31.442310, 32.315659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310047, 31.684759, 32.000340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087627, 0.795351, 0.599783,
		0.990519, -0.005621, -0.137260,
		-0.105799, 0.606124, -0.788302,
		41.278309, 31.866596, 31.763849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880398, 32.029022, 32.319195>,  <41.352367, 31.442310, 32.315659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880398, 32.029022, 32.319195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579823, 32.157089, 32.088428>,  <41.399475, 32.233929, 31.949968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579823, 32.157089, 32.088428>,  <41.880398, 32.029022, 32.319195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579823, 32.157089, 32.088428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003444, 0.872461, 0.488672,
		0.659791, 0.369195, -0.654500,
		-0.751441, 0.320167, -0.576914,
		41.354389, 32.253139, 31.915354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026508, 32.741226, 31.964317>,  <41.880398, 32.029022, 32.319195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026508, 32.741226, 31.964317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.629848, 32.689819, 31.968542>,  <41.391853, 32.658974, 31.971077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.629848, 32.689819, 31.968542>,  <42.026508, 32.741226, 31.964317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629848, 32.689819, 31.968542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119971, 0.949520, 0.289861,
		-0.047282, 0.286173, -0.957011,
		-0.991651, -0.128519, 0.010563,
		41.332352, 32.651264, 31.971710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725006, 33.357880, 31.677547>,  <42.026508, 32.741226, 31.964317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725006, 33.357880, 31.677547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388813, 33.182159, 31.804420>,  <41.187096, 33.076729, 31.880545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388813, 33.182159, 31.804420>,  <41.725006, 33.357880, 31.677547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388813, 33.182159, 31.804420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367456, 0.892326, 0.262166,
		-0.398201, 0.103795, -0.911407,
		-0.840483, -0.439297, 0.317185,
		41.136669, 33.050369, 31.899576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249466, 33.891338, 31.529024>,  <41.725006, 33.357880, 31.677547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249466, 33.891338, 31.529024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110878, 33.652653, 31.818544>,  <41.027725, 33.509441, 31.992256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110878, 33.652653, 31.818544>,  <41.249466, 33.891338, 31.529024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110878, 33.652653, 31.818544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112824, 0.792501, 0.599343,
		-0.931251, 0.125994, -0.341903,
		-0.346472, -0.596714, 0.723802,
		41.006935, 33.473640, 32.035686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629883, 34.213303, 31.719015>,  <41.249466, 33.891338, 31.529024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629883, 34.213303, 31.719015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.757442, 33.993977, 32.028248>,  <40.833977, 33.862381, 32.213787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.757442, 33.993977, 32.028248>,  <40.629883, 34.213303, 31.719015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757442, 33.993977, 32.028248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053049, 0.824716, 0.563053,
		-0.946304, -0.138544, 0.292085,
		0.318895, -0.548315, 0.773083,
		40.853111, 33.829483, 32.260174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353695, 34.581333, 32.268917>,  <40.629883, 34.213303, 31.719015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353695, 34.581333, 32.268917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.624207, 34.337570, 32.434456>,  <40.786514, 34.191311, 32.533779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.624207, 34.337570, 32.434456>,  <40.353695, 34.581333, 32.268917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624207, 34.337570, 32.434456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263739, 0.724858, 0.636413,
		-0.687815, -0.321245, 0.650931,
		0.676278, -0.609411, 0.413844,
		40.827091, 34.154747, 32.558609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180500, 34.587582, 33.016094>,  <40.353695, 34.581333, 32.268917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180500, 34.587582, 33.016094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555153, 34.455559, 32.969120>,  <40.779945, 34.376347, 32.940937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555153, 34.455559, 32.969120>,  <40.180500, 34.587582, 33.016094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555153, 34.455559, 32.969120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316143, 0.651918, 0.689243,
		-0.150929, -0.682692, 0.714949,
		0.936629, -0.330053, -0.117435,
		40.836143, 34.356544, 32.933891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383972, 34.509403, 33.741535>,  <40.180500, 34.587582, 33.016094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383972, 34.509403, 33.741535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738792, 34.512394, 33.556892>,  <40.951687, 34.514187, 33.446106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738792, 34.512394, 33.556892>,  <40.383972, 34.509403, 33.741535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738792, 34.512394, 33.556892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361936, 0.609448, 0.705390,
		0.286598, -0.792791, 0.537907,
		0.887053, 0.007475, -0.461607,
		41.004910, 34.514637, 33.418411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887730, 34.607128, 34.244877>,  <40.383972, 34.509403, 33.741535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887730, 34.607128, 34.244877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086868, 34.713234, 33.914597>,  <41.206352, 34.776897, 33.716427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086868, 34.713234, 33.914597>,  <40.887730, 34.607128, 34.244877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086868, 34.713234, 33.914597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460217, 0.726168, 0.510764,
		0.735090, -0.634282, 0.239434,
		0.497838, 0.265266, -0.825706,
		41.236221, 34.792812, 33.666885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538239, 34.671928, 34.435822>,  <40.887730, 34.607128, 34.244877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538239, 34.671928, 34.435822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514683, 34.879147, 34.094494>,  <41.500549, 35.003479, 33.889698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514683, 34.879147, 34.094494>,  <41.538239, 34.671928, 34.435822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514683, 34.879147, 34.094494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414781, 0.790223, 0.451114,
		0.908013, -0.327375, -0.261414,
		-0.058892, 0.518047, -0.853322,
		41.497017, 35.034561, 33.838497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245094, 34.940926, 34.194740>,  <41.538239, 34.671928, 34.435822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245094, 34.940926, 34.194740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997566, 35.197422, 34.013252>,  <41.849049, 35.351322, 33.904358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997566, 35.197422, 34.013252>,  <42.245094, 34.940926, 34.194740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997566, 35.197422, 34.013252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508281, 0.767252, 0.391119,
		0.598923, 0.011414, -0.800725,
		-0.618823, 0.641244, -0.453723,
		41.811920, 35.389793, 33.877136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651722, 35.534477, 33.951183>,  <42.245094, 34.940926, 34.194740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651722, 35.534477, 33.951183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.287174, 35.692898, 33.906364>,  <42.068447, 35.787949, 33.879475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.287174, 35.692898, 33.906364>,  <42.651722, 35.534477, 33.951183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287174, 35.692898, 33.906364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372710, 0.909604, 0.183594,
		0.174632, 0.125560, -0.976595,
		-0.911368, 0.396049, -0.112048,
		42.013763, 35.811714, 33.872749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631279, 36.009995, 33.439827>,  <42.651722, 35.534477, 33.951183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631279, 36.009995, 33.439827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326389, 36.117622, 33.675320>,  <42.143456, 36.182198, 33.816616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326389, 36.117622, 33.675320>,  <42.631279, 36.009995, 33.439827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326389, 36.117622, 33.675320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342384, 0.939457, 0.013919,
		-0.549347, 0.212183, -0.808206,
		-0.762228, 0.269070, 0.588735,
		42.097721, 36.198345, 33.851940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293259, 36.083218, 33.847427>,  <42.631279, 36.009995, 33.439827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293259, 36.083218, 33.847427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687859, 36.137150, 33.884594>,  <43.924618, 36.169510, 33.906895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687859, 36.137150, 33.884594>,  <43.293259, 36.083218, 33.847427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687859, 36.137150, 33.884594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161441, -0.895684, -0.414351,
		0.027359, 0.423759, -0.905362,
		0.986503, 0.134826, 0.092917,
		43.983810, 36.177597, 33.912468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634624, 36.054264, 33.171143>,  <43.293259, 36.083218, 33.847427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634624, 36.054264, 33.171143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932747, 35.957161, 33.419525>,  <44.111622, 35.898899, 33.568554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932747, 35.957161, 33.419525>,  <43.634624, 36.054264, 33.171143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932747, 35.957161, 33.419525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274898, -0.736622, -0.617915,
		0.607414, 0.631236, -0.482275,
		0.745305, -0.242754, 0.620960,
		44.156338, 35.884335, 33.605812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302086, 35.853958, 32.824913>,  <43.634624, 36.054264, 33.171143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302086, 35.853958, 32.824913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348312, 35.673054, 33.178658>,  <44.376049, 35.564510, 33.390907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348312, 35.673054, 33.178658>,  <44.302086, 35.853958, 32.824913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348312, 35.673054, 33.178658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288232, -0.836755, -0.465579,
		0.950561, 0.308707, 0.033658,
		0.115564, -0.452263, 0.884366,
		44.382980, 35.537376, 33.443966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916885, 35.511868, 32.884727>,  <44.302086, 35.853958, 32.824913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916885, 35.511868, 32.884727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713154, 35.325703, 33.174271>,  <44.590916, 35.214005, 33.347996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713154, 35.325703, 33.174271>,  <44.916885, 35.511868, 32.884727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713154, 35.325703, 33.174271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243260, -0.884698, -0.397660,
		0.825475, -0.026453, 0.563819,
		-0.509329, -0.465413, 0.723861,
		44.560356, 35.186077, 33.391430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216301, 34.984413, 33.127563>,  <44.916885, 35.511868, 32.884727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216301, 34.984413, 33.127563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.869335, 34.843174, 33.267803>,  <44.661156, 34.758430, 33.351948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.869335, 34.843174, 33.267803>,  <45.216301, 34.984413, 33.127563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869335, 34.843174, 33.267803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220026, -0.904145, -0.366211,
		0.446302, -0.240514, 0.861956,
		-0.867411, -0.353093, 0.350603,
		44.609112, 34.737247, 33.372986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407467, 34.290962, 33.066608>,  <45.216301, 34.984413, 33.127563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407467, 34.290962, 33.066608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016945, 34.313587, 33.150162>,  <44.782631, 34.327160, 33.200294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016945, 34.313587, 33.150162>,  <45.407467, 34.290962, 33.066608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016945, 34.313587, 33.150162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125260, -0.934804, -0.332343,
		0.176468, -0.350632, 0.919737,
		-0.976304, 0.056559, 0.208883,
		44.724052, 34.330555, 33.212826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150013, 33.644859, 33.390350>,  <45.407467, 34.290962, 33.066608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150013, 33.644859, 33.390350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797897, 33.802586, 33.284824>,  <44.586628, 33.897221, 33.221508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797897, 33.802586, 33.284824>,  <45.150013, 33.644859, 33.390350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797897, 33.802586, 33.284824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360184, -0.917385, -0.169330,
		-0.308793, -0.054036, 0.949593,
		-0.880292, 0.394316, -0.263819,
		44.533810, 33.920879, 33.205677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589462, 33.367043, 33.808228>,  <45.150013, 33.644859, 33.390350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589462, 33.367043, 33.808228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464863, 33.493900, 33.449921>,  <44.390102, 33.570015, 33.234936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464863, 33.493900, 33.449921>,  <44.589462, 33.367043, 33.808228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464863, 33.493900, 33.449921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174024, -0.945758, -0.274330,
		-0.934178, 0.070433, 0.349787,
		-0.311492, 0.317144, -0.895764,
		44.371414, 33.589043, 33.181190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945839, 33.076740, 33.805000>,  <44.589462, 33.367043, 33.808228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945839, 33.076740, 33.805000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.057255, 33.146931, 33.427296>,  <44.124104, 33.189045, 33.200672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.057255, 33.146931, 33.427296>,  <43.945839, 33.076740, 33.805000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057255, 33.146931, 33.427296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070173, -0.976821, -0.202228,
		-0.957858, 0.122590, -0.259769,
		0.278539, 0.175477, -0.944259,
		44.140816, 33.199574, 33.144016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382278, 32.827259, 33.402901>,  <43.945839, 33.076740, 33.805000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382278, 32.827259, 33.402901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687214, 32.855297, 33.145550>,  <43.870174, 32.872120, 32.991138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687214, 32.855297, 33.145550>,  <43.382278, 32.827259, 33.402901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687214, 32.855297, 33.145550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328109, -0.815027, -0.477573,
		-0.557844, 0.575168, -0.598324,
		0.762335, 0.070096, -0.643376,
		43.915913, 32.876328, 32.952538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034950, 32.614563, 32.737461>,  <43.382278, 32.827259, 33.402901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034950, 32.614563, 32.737461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432507, 32.574768, 32.718327>,  <43.671040, 32.550892, 32.706848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432507, 32.574768, 32.718327>,  <43.034950, 32.614563, 32.737461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432507, 32.574768, 32.718327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110376, -0.889719, -0.442965,
		0.001511, 0.445537, -0.895262,
		0.993889, -0.099485, -0.047832,
		43.730675, 32.544922, 32.703976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137985, 32.267597, 32.076656>,  <43.034950, 32.614563, 32.737461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137985, 32.267597, 32.076656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489849, 32.195236, 32.252598>,  <43.700970, 32.151821, 32.358162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489849, 32.195236, 32.252598>,  <43.137985, 32.267597, 32.076656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489849, 32.195236, 32.252598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057216, -0.958373, -0.279728,
		0.472142, 0.220900, -0.853396,
		0.879664, -0.180899, 0.439850,
		43.753750, 32.140968, 32.384552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402531, 31.863247, 31.566906>,  <43.137985, 32.267597, 32.076656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402531, 31.863247, 31.566906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.554966, 31.782440, 31.927786>,  <43.646427, 31.733955, 32.144314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.554966, 31.782440, 31.927786>,  <43.402531, 31.863247, 31.566906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554966, 31.782440, 31.927786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124558, -0.978158, -0.166413,
		0.916111, -0.048959, -0.397924,
		0.381085, -0.202017, 0.902199,
		43.669292, 31.721834, 32.198444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825310, 31.242455, 31.451002>,  <43.402531, 31.863247, 31.566906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825310, 31.242455, 31.451002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782417, 31.249252, 31.848639>,  <43.756683, 31.253330, 32.087219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782417, 31.249252, 31.848639>,  <43.825310, 31.242455, 31.451002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782417, 31.249252, 31.848639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163831, -0.986488, -0.000809,
		0.980643, -0.162950, 0.108564,
		-0.107229, 0.016993, 0.994089,
		43.750248, 31.254351, 32.146866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202446, 30.669481, 31.635229>,  <43.825310, 31.242455, 31.451002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202446, 30.669481, 31.635229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.936375, 30.751738, 31.922352>,  <43.776733, 30.801090, 32.094627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.936375, 30.751738, 31.922352>,  <44.202446, 30.669481, 31.635229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936375, 30.751738, 31.922352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157784, -0.978331, 0.134060,
		0.729822, -0.024085, 0.683213,
		-0.665180, 0.205640, 0.717808,
		43.736820, 30.813429, 32.137695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308723, 30.217976, 32.153313>,  <44.202446, 30.669481, 31.635229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308723, 30.217976, 32.153313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934464, 30.326515, 32.243576>,  <43.709908, 30.391638, 32.297733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934464, 30.326515, 32.243576>,  <44.308723, 30.217976, 32.153313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934464, 30.326515, 32.243576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290698, -0.955126, -0.056823,
		0.200114, -0.118765, 0.972548,
		-0.935655, 0.271347, 0.225659,
		43.653767, 30.407919, 32.311275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073093, 29.765173, 32.678890>,  <44.308723, 30.217976, 32.153313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073093, 29.765173, 32.678890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739182, 29.928320, 32.530952>,  <43.538834, 30.026209, 32.442188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739182, 29.928320, 32.530952>,  <44.073093, 29.765173, 32.678890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739182, 29.928320, 32.530952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483413, -0.864487, 0.137750,
		-0.263543, 0.293779, 0.918825,
		-0.834780, 0.407869, -0.369846,
		43.488747, 30.050680, 32.419998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626774, 29.508532, 33.089359>,  <44.073093, 29.765173, 32.678890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626774, 29.508532, 33.089359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406483, 29.637676, 32.781475>,  <43.274307, 29.715162, 32.596745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406483, 29.637676, 32.781475>,  <43.626774, 29.508532, 33.089359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406483, 29.637676, 32.781475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494024, -0.869376, -0.011192,
		-0.672783, 0.374093, 0.638292,
		-0.550730, 0.322861, -0.769713,
		43.241264, 29.734535, 32.550560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978985, 29.356546, 33.303398>,  <43.626774, 29.508532, 33.089359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978985, 29.356546, 33.303398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970196, 29.387554, 32.904697>,  <42.964924, 29.406158, 32.665478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970196, 29.387554, 32.904697>,  <42.978985, 29.356546, 33.303398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970196, 29.387554, 32.904697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712484, -0.700616, -0.038782,
		-0.701344, 0.709316, 0.070623,
		-0.021971, 0.077517, -0.996749,
		42.963604, 29.410809, 32.605671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284389, 29.179562, 33.116341>,  <42.978985, 29.356546, 33.303398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284389, 29.179562, 33.116341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497997, 29.127563, 32.782173>,  <42.626160, 29.096365, 32.581673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497997, 29.127563, 32.782173>,  <42.284389, 29.179562, 33.116341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497997, 29.127563, 32.782173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516015, -0.832842, -0.200255,
		-0.669742, 0.538029, -0.511830,
		0.534017, -0.129993, -0.835421,
		42.658203, 29.088566, 32.531548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.774380, 40.510777, 40.613308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486462, 40.274300, 40.758846>,  <37.313709, 40.132412, 40.846169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486462, 40.274300, 40.758846>,  <37.774380, 40.510777, 40.613308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486462, 40.274300, 40.758846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116568, -0.413755, -0.902894,
		0.684327, -0.692314, 0.228906,
		-0.719798, -0.591192, 0.363846,
		37.270523, 40.096943, 40.868000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922009, 39.766949, 40.508205>,  <37.774380, 40.510777, 40.613308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922009, 39.766949, 40.508205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528374, 39.826523, 40.546951>,  <37.292191, 39.862267, 40.570198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528374, 39.826523, 40.546951>,  <37.922009, 39.766949, 40.508205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528374, 39.826523, 40.546951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159591, -0.501416, -0.850360,
		-0.078077, -0.852291, 0.517208,
		-0.984091, 0.148936, 0.096869,
		37.233147, 39.871204, 40.576012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570744, 39.184109, 40.452267>,  <37.922009, 39.766949, 40.508205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570744, 39.184109, 40.452267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244156, 39.402687, 40.377678>,  <37.048203, 39.533836, 40.332924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244156, 39.402687, 40.377678>,  <37.570744, 39.184109, 40.452267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244156, 39.402687, 40.377678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281748, -0.658960, -0.697417,
		-0.503982, -0.516880, 0.691981,
		-0.816468, 0.546450, -0.186474,
		36.999214, 39.566624, 40.321735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006573, 38.723515, 40.385563>,  <37.570744, 39.184109, 40.452267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006573, 38.723515, 40.385563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898354, 39.053337, 40.186802>,  <36.833420, 39.251228, 40.067543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898354, 39.053337, 40.186802>,  <37.006573, 38.723515, 40.385563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898354, 39.053337, 40.186802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298783, -0.562586, -0.770860,
		-0.915167, -0.060088, 0.398570,
		-0.270549, 0.824552, -0.496907,
		36.817188, 39.300701, 40.037731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524944, 38.464985, 39.905403>,  <37.006573, 38.723515, 40.385563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524944, 38.464985, 39.905403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576038, 38.844769, 39.790707>,  <36.606693, 39.072639, 39.721889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576038, 38.844769, 39.790707>,  <36.524944, 38.464985, 39.905403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576038, 38.844769, 39.790707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396032, -0.216232, -0.892414,
		-0.909309, 0.227552, 0.348394,
		0.127736, 0.949454, -0.286739,
		36.614361, 39.129604, 39.704685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990795, 38.550571, 39.495518>,  <36.524944, 38.464985, 39.905403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990795, 38.550571, 39.495518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232761, 38.847721, 39.380829>,  <36.377941, 39.026012, 39.312016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232761, 38.847721, 39.380829>,  <35.990795, 38.550571, 39.495518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232761, 38.847721, 39.380829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233844, -0.178465, -0.955755,
		-0.761177, 0.645201, 0.065761,
		0.604918, 0.742876, -0.286720,
		36.414238, 39.070583, 39.294811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632526, 38.901188, 38.895889>,  <35.990795, 38.550571, 39.495518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632526, 38.901188, 38.895889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015228, 39.016621, 38.881203>,  <36.244850, 39.085880, 38.872391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015228, 39.016621, 38.881203>,  <35.632526, 38.901188, 38.895889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015228, 39.016621, 38.881203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011947, -0.087123, -0.996126,
		-0.290659, 0.953484, -0.079907,
		0.956752, 0.288579, -0.036714,
		36.302254, 39.103195, 38.870190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672722, 39.470924, 38.365795>,  <35.632526, 38.901188, 38.895889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672722, 39.470924, 38.365795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021839, 39.281643, 38.413662>,  <36.231308, 39.168076, 38.442383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021839, 39.281643, 38.413662>,  <35.672722, 39.470924, 38.365795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021839, 39.281643, 38.413662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011733, -0.224758, -0.974344,
		0.487956, 0.851801, -0.190615,
		0.872790, -0.473200, 0.119667,
		36.283676, 39.139683, 38.449562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060230, 39.793736, 37.859962>,  <35.672722, 39.470924, 38.365795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060230, 39.793736, 37.859962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242527, 39.452660, 37.962120>,  <36.351906, 39.248016, 38.023415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242527, 39.452660, 37.962120>,  <36.060230, 39.793736, 37.859962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242527, 39.452660, 37.962120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075736, -0.248735, -0.965606,
		0.886885, 0.459408, -0.048779,
		0.455740, -0.852687, 0.255393,
		36.379250, 39.196854, 38.038738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611008, 39.774509, 37.400883>,  <36.060230, 39.793736, 37.859962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611008, 39.774509, 37.400883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574417, 39.405037, 37.549713>,  <36.552464, 39.183353, 37.639011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574417, 39.405037, 37.549713>,  <36.611008, 39.774509, 37.400883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574417, 39.405037, 37.549713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128072, -0.381453, -0.915473,
		0.987537, -0.036095, 0.153194,
		-0.091480, -0.923683, 0.372076,
		36.546974, 39.127934, 37.661335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016197, 39.341679, 36.890068>,  <36.611008, 39.774509, 37.400883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016197, 39.341679, 36.890068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803402, 39.076656, 37.100971>,  <36.675724, 38.917641, 37.227512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803402, 39.076656, 37.100971>,  <37.016197, 39.341679, 36.890068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803402, 39.076656, 37.100971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002239, -0.621582, -0.783346,
		0.846749, -0.417911, 0.329191,
		-0.531988, -0.662560, 0.527260,
		36.643806, 38.877888, 37.259148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347954, 38.725067, 36.767361>,  <37.016197, 39.341679, 36.890068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347954, 38.725067, 36.767361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984715, 38.617844, 36.896049>,  <36.766773, 38.553509, 36.973263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984715, 38.617844, 36.896049>,  <37.347954, 38.725067, 36.767361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984715, 38.617844, 36.896049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133735, -0.542397, -0.829410,
		0.396834, -0.796209, 0.456699,
		-0.908095, -0.268061, 0.321723,
		36.712284, 38.537426, 36.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275650, 38.006054, 36.700577>,  <37.347954, 38.725067, 36.767361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275650, 38.006054, 36.700577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920383, 38.186539, 36.665756>,  <36.707226, 38.294830, 36.644863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920383, 38.186539, 36.665756>,  <37.275650, 38.006054, 36.700577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920383, 38.186539, 36.665756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206130, -0.560495, -0.802094,
		-0.410702, -0.694447, 0.590819,
		-0.888163, 0.451207, -0.087050,
		36.653934, 38.321899, 36.639641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685520, 37.417442, 36.372032>,  <37.275650, 38.006054, 36.700577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685520, 37.417442, 36.372032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533302, 37.073051, 36.507034>,  <37.441971, 36.866417, 36.588036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533302, 37.073051, 36.507034>,  <37.685520, 37.417442, 36.372032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533302, 37.073051, 36.507034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723550, 0.504488, 0.471134,
		-0.575900, -0.064911, -0.814939,
		-0.380545, -0.860975, 0.337501,
		37.419140, 36.814758, 36.608284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317299, 36.885624, 36.349506>,  <37.685520, 37.417442, 36.372032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317299, 36.885624, 36.349506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634579, 36.646935, 36.398094>,  <38.824947, 36.503719, 36.427246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634579, 36.646935, 36.398094>,  <38.317299, 36.885624, 36.349506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634579, 36.646935, 36.398094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017048, 0.177639, 0.983948,
		-0.608724, -0.782538, 0.130730,
		0.793199, -0.596724, 0.121473,
		38.872540, 36.467918, 36.434536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096733, 36.418819, 36.776257>,  <38.317299, 36.885624, 36.349506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096733, 36.418819, 36.776257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493286, 36.466095, 36.798832>,  <38.731220, 36.494461, 36.812378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493286, 36.466095, 36.798832>,  <38.096733, 36.418819, 36.776257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493286, 36.466095, 36.798832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079319, 0.198901, 0.976804,
		0.104226, -0.972866, 0.206563,
		0.991385, 0.118193, 0.056436,
		38.790703, 36.501553, 36.815762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313244, 35.991119, 37.349583>,  <38.096733, 36.418819, 36.776257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313244, 35.991119, 37.349583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598286, 36.262684, 37.278843>,  <38.769310, 36.425625, 37.236401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598286, 36.262684, 37.278843>,  <38.313244, 35.991119, 37.349583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598286, 36.262684, 37.278843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203812, 0.040868, 0.978157,
		0.671312, -0.733079, -0.109248,
		0.712602, 0.678914, -0.176845,
		38.812065, 36.466358, 37.225788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986816, 35.675549, 37.604851>,  <38.313244, 35.991119, 37.349583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986816, 35.675549, 37.604851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027023, 36.073498, 37.600437>,  <39.051147, 36.312267, 37.597790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027023, 36.073498, 37.600437>,  <38.986816, 35.675549, 37.604851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027023, 36.073498, 37.600437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110232, -0.000118, 0.993906,
		0.988810, -0.101125, -0.109678,
		0.100521, 0.994874, -0.011030,
		39.057178, 36.371960, 37.597130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441826, 35.817238, 38.170155>,  <38.986816, 35.675549, 37.604851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441826, 35.817238, 38.170155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242329, 36.157646, 38.104412>,  <39.122631, 36.361893, 38.064964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242329, 36.157646, 38.104412>,  <39.441826, 35.817238, 38.170155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242329, 36.157646, 38.104412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008528, 0.184800, 0.982739,
		0.866707, 0.491538, -0.084911,
		-0.498745, 0.851023, -0.164359,
		39.092705, 36.412952, 38.055103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917908, 36.224236, 38.591099>,  <39.441826, 35.817238, 38.170155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917908, 36.224236, 38.591099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595818, 36.451462, 38.523075>,  <39.402565, 36.587799, 38.482262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595818, 36.451462, 38.523075>,  <39.917908, 36.224236, 38.591099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595818, 36.451462, 38.523075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061524, 0.365280, 0.928862,
		0.589775, 0.737476, -0.329081,
		-0.805221, 0.568066, -0.170060,
		39.354252, 36.621883, 38.472057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010109, 36.943634, 38.760921>,  <39.917908, 36.224236, 38.591099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010109, 36.943634, 38.760921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613712, 36.891842, 38.774555>,  <39.375874, 36.860767, 38.782738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613712, 36.891842, 38.774555>,  <40.010109, 36.943634, 38.760921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613712, 36.891842, 38.774555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017569, 0.378132, 0.925585,
		-0.132734, 0.916652, -0.377002,
		-0.990996, -0.129480, 0.034087,
		39.316414, 36.852997, 38.784782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789818, 37.574345, 38.798958>,  <40.010109, 36.943634, 38.760921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789818, 37.574345, 38.798958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504395, 37.338135, 38.949753>,  <39.333141, 37.196411, 39.040230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504395, 37.338135, 38.949753>,  <39.789818, 37.574345, 38.798958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504395, 37.338135, 38.949753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096540, 0.450081, 0.887754,
		-0.693912, 0.669859, -0.264151,
		-0.713559, -0.590522, 0.376985,
		39.290325, 37.160976, 39.062847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274723, 37.988083, 39.173992>,  <39.789818, 37.574345, 38.798958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274723, 37.988083, 39.173992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239376, 37.622051, 39.331383>,  <39.218166, 37.402431, 39.425816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239376, 37.622051, 39.331383>,  <39.274723, 37.988083, 39.173992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239376, 37.622051, 39.331383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147710, 0.378617, 0.913691,
		-0.985075, 0.138863, 0.101708,
		-0.088369, -0.915077, 0.393477,
		39.212864, 37.347527, 39.449425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904186, 38.218895, 39.742142>,  <39.274723, 37.988083, 39.173992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904186, 38.218895, 39.742142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000916, 37.837334, 39.813232>,  <39.058952, 37.608398, 39.855888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000916, 37.837334, 39.813232>,  <38.904186, 38.218895, 39.742142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000916, 37.837334, 39.813232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077261, 0.163652, 0.983488,
		-0.967239, -0.251565, -0.034124,
		0.241826, -0.953904, 0.177727,
		39.073463, 37.551163, 39.866550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451817, 38.031441, 40.219368>,  <38.904186, 38.218895, 39.742142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451817, 38.031441, 40.219368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724823, 37.742756, 40.265514>,  <38.888626, 37.569546, 40.293201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724823, 37.742756, 40.265514>,  <38.451817, 38.031441, 40.219368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724823, 37.742756, 40.265514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017887, 0.141312, 0.989804,
		-0.730655, -0.677617, 0.083538,
		0.682512, -0.721711, 0.115370,
		38.929577, 37.526241, 40.300125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073601, 37.572540, 40.594894>,  <38.451817, 38.031441, 40.219368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073601, 37.572540, 40.594894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468136, 37.520226, 40.634960>,  <38.704857, 37.488838, 40.659000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468136, 37.520226, 40.634960>,  <38.073601, 37.572540, 40.594894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468136, 37.520226, 40.634960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092738, 0.061712, 0.993776,
		-0.136154, -0.989488, 0.048740,
		0.986338, -0.130786, 0.100166,
		38.764038, 37.480991, 40.665009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126724, 37.119514, 41.168476>,  <38.073601, 37.572540, 40.594894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126724, 37.119514, 41.168476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495361, 37.268654, 41.125309>,  <38.716545, 37.358139, 41.099411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495361, 37.268654, 41.125309>,  <38.126724, 37.119514, 41.168476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495361, 37.268654, 41.125309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052263, 0.156289, 0.986328,
		0.384618, -0.914635, 0.124549,
		0.921595, 0.372850, -0.107913,
		38.771839, 37.380508, 41.092934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569283, 36.793217, 41.681099>,  <38.126724, 37.119514, 41.168476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569283, 36.793217, 41.681099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739246, 37.139683, 41.575867>,  <38.841225, 37.347561, 41.512726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739246, 37.139683, 41.575867>,  <38.569283, 36.793217, 41.681099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739246, 37.139683, 41.575867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178232, 0.204887, 0.962421,
		0.887518, -0.455828, -0.067321,
		0.424905, 0.866165, -0.263084,
		38.866718, 37.399532, 41.496941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555161, 36.136311, 41.826832>,  <38.569283, 36.793217, 41.681099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555161, 36.136311, 41.826832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407532, 35.792324, 41.967823>,  <38.318954, 35.585934, 42.052418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407532, 35.792324, 41.967823>,  <38.555161, 36.136311, 41.826832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407532, 35.792324, 41.967823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502522, -0.134384, -0.854057,
		0.781828, -0.492338, -0.382555,
		-0.369075, -0.859968, 0.352475,
		38.296810, 35.534332, 42.073566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654102, 35.755749, 41.315586>,  <38.555161, 36.136311, 41.826832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654102, 35.755749, 41.315586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362232, 35.570225, 41.516563>,  <38.187111, 35.458908, 41.637150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362232, 35.570225, 41.516563>,  <38.654102, 35.755749, 41.315586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362232, 35.570225, 41.516563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599554, 0.080648, -0.796260,
		0.328795, -0.882255, -0.336928,
		-0.729677, -0.463813, 0.502443,
		38.143330, 35.431080, 41.667297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433609, 35.188793, 40.910686>,  <38.654102, 35.755749, 41.315586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433609, 35.188793, 40.910686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112289, 35.266674, 41.135826>,  <37.919498, 35.313400, 41.270912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112289, 35.266674, 41.135826>,  <38.433609, 35.188793, 40.910686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112289, 35.266674, 41.135826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562011, 0.064974, -0.824574,
		-0.197115, -0.978709, 0.057230,
		-0.803300, 0.194699, 0.562852,
		37.871300, 35.325085, 41.304680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951996, 34.638672, 40.732235>,  <38.433609, 35.188793, 40.910686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951996, 34.638672, 40.732235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740227, 34.930634, 40.905186>,  <37.613167, 35.105812, 41.008957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740227, 34.930634, 40.905186>,  <37.951996, 34.638672, 40.732235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740227, 34.930634, 40.905186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597236, 0.041300, -0.801002,
		-0.602515, -0.682296, 0.414062,
		-0.529420, 0.729908, 0.432375,
		37.581402, 35.149605, 41.034897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217442, 34.484283, 40.628834>,  <37.951996, 34.638672, 40.732235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217442, 34.484283, 40.628834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211655, 34.874130, 40.718193>,  <37.208183, 35.108040, 40.771809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211655, 34.874130, 40.718193>,  <37.217442, 34.484283, 40.628834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211655, 34.874130, 40.718193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539264, 0.180533, -0.822558,
		-0.842013, -0.132371, 0.522965,
		-0.014471, 0.974621, 0.223394,
		37.207314, 35.166515, 40.785210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496548, 34.700859, 40.603565>,  <37.217442, 34.484283, 40.628834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496548, 34.700859, 40.603565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747406, 35.009617, 40.561874>,  <36.897923, 35.194874, 40.536858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747406, 35.009617, 40.561874>,  <36.496548, 34.700859, 40.603565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747406, 35.009617, 40.561874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534697, 0.329344, -0.778223,
		-0.566380, 0.543791, 0.619278,
		0.627146, 0.771896, -0.104229,
		36.935551, 35.241184, 40.530605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042519, 35.250179, 40.553776>,  <36.496548, 34.700859, 40.603565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042519, 35.250179, 40.553776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379646, 35.384636, 40.385651>,  <36.581921, 35.465309, 40.284775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379646, 35.384636, 40.385651>,  <36.042519, 35.250179, 40.553776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379646, 35.384636, 40.385651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526102, 0.349904, -0.775103,
		-0.113476, 0.874399, 0.471751,
		0.842817, 0.336145, -0.420317,
		36.632492, 35.485481, 40.259556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849552, 35.947392, 40.437019>,  <36.042519, 35.250179, 40.553776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849552, 35.947392, 40.437019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172726, 35.894760, 40.207260>,  <36.366631, 35.863182, 40.069405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172726, 35.894760, 40.207260>,  <35.849552, 35.947392, 40.437019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172726, 35.894760, 40.207260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412946, 0.568960, -0.711168,
		0.420385, 0.811770, 0.405345,
		0.807931, -0.131579, -0.574400,
		36.415104, 35.855286, 40.034939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176216, 36.625736, 40.176971>,  <35.849552, 35.947392, 40.437019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176216, 36.625736, 40.176971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254486, 36.316944, 39.935062>,  <36.301449, 36.131668, 39.789917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254486, 36.316944, 39.935062>,  <36.176216, 36.625736, 40.176971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254486, 36.316944, 39.935062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550444, 0.423926, -0.719234,
		0.811616, 0.473633, -0.341981,
		0.195678, -0.771984, -0.604774,
		36.313190, 36.085350, 39.753632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985416, 36.992546, 39.521835>,  <36.176216, 36.625736, 40.176971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985416, 36.992546, 39.521835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060120, 36.619995, 39.396828>,  <36.104942, 36.396465, 39.321823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060120, 36.619995, 39.396828>,  <35.985416, 36.992546, 39.521835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060120, 36.619995, 39.396828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578006, 0.153052, -0.801551,
		0.794374, 0.330332, -0.509755,
		0.186759, -0.931373, -0.312515,
		36.116146, 36.340584, 39.303074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157074, 37.096806, 38.865494>,  <35.985416, 36.992546, 39.521835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157074, 37.096806, 38.865494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054298, 36.711929, 38.901642>,  <35.992634, 36.481003, 38.923332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054298, 36.711929, 38.901642>,  <36.157074, 37.096806, 38.865494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054298, 36.711929, 38.901642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632768, 0.096812, -0.768265,
		0.730470, -0.254584, -0.633720,
		-0.256940, -0.962192, 0.090374,
		35.977215, 36.423271, 38.928753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149448, 36.808044, 38.168133>,  <36.157074, 37.096806, 38.865494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149448, 36.808044, 38.168133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918381, 36.577824, 38.399662>,  <35.779739, 36.439690, 38.538578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918381, 36.577824, 38.399662>,  <36.149448, 36.808044, 38.168133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918381, 36.577824, 38.399662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661813, -0.084841, -0.744853,
		0.477812, -0.813350, -0.331901,
		-0.577667, -0.575556, 0.578823,
		35.745079, 36.405155, 38.573311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.097458, 34.995499, 45.701946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.719563, 35.122971, 45.732727>,  <39.492825, 35.199455, 45.751194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.719563, 35.122971, 45.732727>,  <40.097458, 34.995499, 45.701946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719563, 35.122971, 45.732727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162433, -0.251131, -0.954227,
		-0.284776, -0.913987, 0.289016,
		-0.944732, 0.318686, 0.076946,
		39.436142, 35.218575, 45.755810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763664, 34.617901, 45.252151>,  <40.097458, 34.995499, 45.701946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763664, 34.617901, 45.252151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497314, 34.910759, 45.309528>,  <39.337505, 35.086475, 45.343952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497314, 34.910759, 45.309528>,  <39.763664, 34.617901, 45.252151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497314, 34.910759, 45.309528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251202, -0.038982, -0.967149,
		-0.702505, -0.680029, 0.209874,
		-0.665871, 0.732148, 0.143440,
		39.297554, 35.130402, 45.352562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132504, 34.368050, 44.973763>,  <39.763664, 34.617901, 45.252151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132504, 34.368050, 44.973763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119316, 34.767033, 44.948502>,  <39.111404, 35.006424, 44.933346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119316, 34.767033, 44.948502>,  <39.132504, 34.368050, 44.973763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119316, 34.767033, 44.948502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239472, -0.069228, -0.968432,
		-0.970343, -0.016806, 0.241146,
		-0.032969, 0.997459, -0.063150,
		39.109425, 35.066269, 44.929558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552448, 34.448875, 44.620991>,  <39.132504, 34.368050, 44.973763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552448, 34.448875, 44.620991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744144, 34.794167, 44.557541>,  <38.859161, 35.001343, 44.519470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744144, 34.794167, 44.557541>,  <38.552448, 34.448875, 44.620991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744144, 34.794167, 44.557541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220284, -0.056642, -0.973790,
		-0.849589, 0.501624, 0.163011,
		0.479243, 0.863230, -0.158622,
		38.887917, 35.053135, 44.509953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029713, 34.786255, 44.333359>,  <38.552448, 34.448875, 44.620991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029713, 34.786255, 44.333359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358456, 34.992867, 44.237240>,  <38.555702, 35.116833, 44.179569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358456, 34.992867, 44.237240>,  <38.029713, 34.786255, 44.333359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358456, 34.992867, 44.237240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284837, 0.007278, -0.958548,
		-0.493368, 0.856239, 0.153107,
		0.821861, 0.516528, -0.240298,
		38.605015, 35.147823, 44.165150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778545, 35.290688, 43.932365>,  <38.029713, 34.786255, 44.333359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778545, 35.290688, 43.932365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168003, 35.282616, 43.841496>,  <38.401676, 35.277771, 43.786972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168003, 35.282616, 43.841496>,  <37.778545, 35.290688, 43.932365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168003, 35.282616, 43.841496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224543, 0.089702, -0.970327,
		0.039962, 0.995764, 0.082806,
		0.973644, -0.020182, -0.227177,
		38.460098, 35.276562, 43.773342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767662, 35.768261, 43.352207>,  <37.778545, 35.290688, 43.932365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767662, 35.768261, 43.352207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122345, 35.583397, 43.347279>,  <38.335155, 35.472477, 43.344322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122345, 35.583397, 43.347279>,  <37.767662, 35.768261, 43.352207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122345, 35.583397, 43.347279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023979, 0.072597, -0.997073,
		0.461703, 0.883820, 0.075454,
		0.886710, -0.462161, -0.012325,
		38.388359, 35.444748, 43.343582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284924, 36.263794, 43.159866>,  <37.767662, 35.768261, 43.352207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284924, 36.263794, 43.159866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437649, 35.905872, 43.067307>,  <38.529285, 35.691120, 43.011772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437649, 35.905872, 43.067307>,  <38.284924, 36.263794, 43.159866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437649, 35.905872, 43.067307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159337, 0.310344, -0.937176,
		0.910400, 0.320958, 0.261069,
		0.381815, -0.894803, -0.231396,
		38.552193, 35.637432, 42.997887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898266, 36.469261, 42.697838>,  <38.284924, 36.263794, 43.159866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898266, 36.469261, 42.697838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774441, 36.096493, 42.622257>,  <38.700146, 35.872833, 42.576908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774441, 36.096493, 42.622257>,  <38.898266, 36.469261, 42.697838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774441, 36.096493, 42.622257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256073, 0.109664, -0.960417,
		0.915750, -0.345694, 0.204691,
		-0.309563, -0.931917, -0.188947,
		38.681572, 35.816917, 42.565575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105179, 36.904564, 42.171394>,  <38.898266, 36.469261, 42.697838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105179, 36.904564, 42.171394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108120, 37.270912, 42.010830>,  <39.109882, 37.490723, 41.914494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108120, 37.270912, 42.010830>,  <39.105179, 36.904564, 42.171394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108120, 37.270912, 42.010830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329742, 0.376747, 0.865639,
		0.944042, -0.138722, -0.299233,
		0.007349, 0.915870, -0.401407,
		39.110325, 37.545673, 41.890408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864689, 37.123642, 42.307102>,  <39.105179, 36.904564, 42.171394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864689, 37.123642, 42.307102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583626, 37.401947, 42.247520>,  <39.414989, 37.568932, 42.211773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583626, 37.401947, 42.247520>,  <39.864689, 37.123642, 42.307102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583626, 37.401947, 42.247520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312726, 0.490024, 0.813682,
		0.639120, 0.525159, -0.561902,
		-0.702658, 0.695762, -0.148953,
		39.372829, 37.610676, 42.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193825, 37.712681, 42.534054>,  <39.864689, 37.123642, 42.307102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193825, 37.712681, 42.534054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815197, 37.840992, 42.547356>,  <39.588020, 37.917980, 42.555336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815197, 37.840992, 42.547356>,  <40.193825, 37.712681, 42.534054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815197, 37.840992, 42.547356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233733, 0.611323, 0.756077,
		0.222206, 0.723452, -0.653637,
		-0.946569, 0.320781, 0.033255,
		39.531227, 37.937225, 42.557331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212166, 38.447414, 42.684219>,  <40.193825, 37.712681, 42.534054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212166, 38.447414, 42.684219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838207, 38.344769, 42.782299>,  <39.613834, 38.283180, 42.841148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838207, 38.344769, 42.782299>,  <40.212166, 38.447414, 42.684219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838207, 38.344769, 42.782299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059699, 0.567320, 0.821331,
		-0.349872, 0.782495, -0.515064,
		-0.934893, -0.256612, 0.245203,
		39.557739, 38.267784, 42.855862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936691, 39.027328, 42.874096>,  <40.212166, 38.447414, 42.684219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936691, 39.027328, 42.874096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725548, 38.745045, 43.063129>,  <39.598862, 38.575672, 43.176552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725548, 38.745045, 43.063129>,  <39.936691, 39.027328, 42.874096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725548, 38.745045, 43.063129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203167, 0.435350, 0.877037,
		-0.824677, 0.558962, -0.086424,
		-0.527855, -0.705714, 0.472586,
		39.567192, 38.533329, 43.204906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683372, 39.338821, 43.430363>,  <39.936691, 39.027328, 42.874096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683372, 39.338821, 43.430363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609505, 38.961071, 43.539215>,  <39.565182, 38.734421, 43.604527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609505, 38.961071, 43.539215>,  <39.683372, 39.338821, 43.430363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609505, 38.961071, 43.539215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322605, 0.203306, 0.924442,
		-0.928344, 0.258512, 0.267114,
		-0.184673, -0.944372, 0.272135,
		39.554104, 38.677761, 43.620857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289501, 39.373058, 44.003014>,  <39.683372, 39.338821, 43.430363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289501, 39.373058, 44.003014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471943, 39.017117, 44.007393>,  <39.581409, 38.803551, 44.010021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471943, 39.017117, 44.007393>,  <39.289501, 39.373058, 44.003014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471943, 39.017117, 44.007393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289387, 0.159940, 0.943756,
		-0.841559, -0.427285, 0.330463,
		0.456107, -0.889858, 0.010948,
		39.608776, 38.750160, 44.010677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985912, 39.054447, 44.497074>,  <39.289501, 39.373058, 44.003014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985912, 39.054447, 44.497074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.333233, 38.859234, 44.461578>,  <39.541626, 38.742107, 44.440281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.333233, 38.859234, 44.461578>,  <38.985912, 39.054447, 44.497074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333233, 38.859234, 44.461578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153235, 0.093769, 0.983731,
		-0.471774, -0.867773, 0.156203,
		0.868302, -0.488034, -0.088736,
		39.593723, 38.712822, 44.434959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957634, 38.606796, 45.027843>,  <38.985912, 39.054447, 44.497074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957634, 38.606796, 45.027843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349731, 38.611115, 44.948845>,  <39.584991, 38.613705, 44.901447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349731, 38.611115, 44.948845>,  <38.957634, 38.606796, 45.027843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349731, 38.611115, 44.948845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197700, -0.023101, 0.979990,
		0.006025, -0.999675, -0.024780,
		0.980244, 0.010803, -0.197496,
		39.643806, 38.614353, 44.889595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242496, 38.015438, 45.508091>,  <38.957634, 38.606796, 45.027843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242496, 38.015438, 45.508091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544537, 38.251530, 45.393932>,  <39.725761, 38.393185, 45.325439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544537, 38.251530, 45.393932>,  <39.242496, 38.015438, 45.508091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544537, 38.251530, 45.393932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271167, 0.115153, 0.955619,
		0.596901, -0.798978, -0.073100,
		0.755101, 0.590232, -0.285392,
		39.771069, 38.428600, 45.308315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572575, 37.850315, 46.036903>,  <39.242496, 38.015438, 45.508091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572575, 37.850315, 46.036903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767849, 38.143089, 45.846767>,  <39.885014, 38.318752, 45.732685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767849, 38.143089, 45.846767>,  <39.572575, 37.850315, 46.036903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767849, 38.143089, 45.846767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435960, 0.267311, 0.859351,
		0.756053, -0.626749, -0.188598,
		0.488183, 0.731936, -0.475339,
		39.914303, 38.362671, 45.704166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338184, 37.809437, 46.115799>,  <39.572575, 37.850315, 46.036903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338184, 37.809437, 46.115799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225578, 38.188847, 46.057762>,  <40.158012, 38.416492, 46.022938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225578, 38.188847, 46.057762>,  <40.338184, 37.809437, 46.115799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225578, 38.188847, 46.057762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499668, 0.274003, 0.821739,
		0.819194, 0.158836, -0.551083,
		-0.281520, 0.948522, -0.145097,
		40.141121, 38.473404, 46.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991932, 38.275761, 46.196693>,  <40.338184, 37.809437, 46.115799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991932, 38.275761, 46.196693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.677990, 38.517296, 46.252369>,  <40.489624, 38.662216, 46.285774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.677990, 38.517296, 46.252369>,  <40.991932, 38.275761, 46.196693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677990, 38.517296, 46.252369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389044, 0.305325, 0.869150,
		0.482332, 0.736309, -0.474558,
		-0.784857, 0.603843, 0.139188,
		40.442532, 38.698448, 46.294125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255749, 38.852982, 46.516140>,  <40.991932, 38.275761, 46.196693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255749, 38.852982, 46.516140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.865070, 38.868500, 46.600586>,  <40.630665, 38.877811, 46.651253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.865070, 38.868500, 46.600586>,  <41.255749, 38.852982, 46.516140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865070, 38.868500, 46.600586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214012, 0.100461, 0.971651,
		0.016490, 0.994184, -0.106423,
		-0.976692, 0.038798, 0.211111,
		40.572063, 38.880138, 46.663918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.295624, 38.407246, 47.557858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601551, 38.163479, 47.474274>,  <31.785109, 38.017220, 47.424122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601551, 38.163479, 47.474274>,  <31.295624, 38.407246, 47.557858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601551, 38.163479, 47.474274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184332, 0.103793, -0.977368,
		0.617312, 0.786028, -0.032952,
		0.764819, -0.609415, -0.208963,
		31.830997, 37.980656, 47.411583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633484, 38.715378, 47.073818>,  <31.295624, 38.407246, 47.557858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633484, 38.715378, 47.073818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.722668, 38.329521, 47.017605>,  <31.776178, 38.098007, 46.983879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.722668, 38.329521, 47.017605>,  <31.633484, 38.715378, 47.073818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722668, 38.329521, 47.017605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274163, 0.076288, -0.958653,
		0.935480, 0.252270, -0.247460,
		0.222961, -0.964645, -0.140529,
		31.789557, 38.040127, 46.975445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676964, 38.693878, 46.335079>,  <31.633484, 38.715378, 47.073818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676964, 38.693878, 46.335079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687538, 38.308643, 46.442238>,  <31.693884, 38.077503, 46.506535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687538, 38.308643, 46.442238>,  <31.676964, 38.693878, 46.335079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687538, 38.308643, 46.442238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004962, -0.268116, -0.963374,
		0.999638, 0.024140, -0.011867,
		0.026437, -0.963084, 0.267899,
		31.695469, 38.019718, 46.522606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224686, 38.438011, 46.009426>,  <31.676964, 38.693878, 46.335079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224686, 38.438011, 46.009426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966829, 38.140194, 46.078812>,  <31.812115, 37.961502, 46.120445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966829, 38.140194, 46.078812>,  <32.224686, 38.438011, 46.009426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966829, 38.140194, 46.078812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056154, -0.180180, -0.982030,
		0.762420, -0.642798, 0.074342,
		-0.644641, -0.744544, 0.173468,
		31.773438, 37.916832, 46.130852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458725, 37.921356, 45.599514>,  <32.224686, 38.438011, 46.009426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458725, 37.921356, 45.599514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.073669, 37.849194, 45.680294>,  <31.842636, 37.805897, 45.728764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.073669, 37.849194, 45.680294>,  <32.458725, 37.921356, 45.599514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073669, 37.849194, 45.680294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184754, -0.107692, -0.976867,
		0.197981, -0.977679, 0.070338,
		-0.962637, -0.180406, 0.201951,
		31.784878, 37.795071, 45.740879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350033, 37.389645, 45.267426>,  <32.458725, 37.921356, 45.599514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350033, 37.389645, 45.267426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979803, 37.531910, 45.319298>,  <31.757666, 37.617271, 45.350422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979803, 37.531910, 45.319298>,  <32.350033, 37.389645, 45.267426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979803, 37.531910, 45.319298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171911, -0.089675, -0.981023,
		-0.337289, -0.930300, 0.144144,
		-0.925572, 0.355668, 0.129682,
		31.702131, 37.638611, 45.358204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860859, 36.881104, 44.903732>,  <32.350033, 37.389645, 45.267426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860859, 36.881104, 44.903732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666214, 37.228161, 44.944546>,  <31.549427, 37.436394, 44.969032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666214, 37.228161, 44.944546>,  <31.860859, 36.881104, 44.903732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666214, 37.228161, 44.944546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232676, -0.016142, -0.972420,
		-0.842064, -0.496930, 0.209734,
		-0.486611, 0.867640, 0.102031,
		31.520231, 37.488453, 44.975155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320963, 36.778702, 44.501553>,  <31.860859, 36.881104, 44.903732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320963, 36.778702, 44.501553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354361, 37.174000, 44.552780>,  <31.374399, 37.411179, 44.583515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354361, 37.174000, 44.552780>,  <31.320963, 36.778702, 44.501553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354361, 37.174000, 44.552780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003716, 0.128208, -0.991740,
		-0.996501, 0.083279, 0.007033,
		0.083493, 0.988244, 0.128069,
		31.379408, 37.470474, 44.591202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753107, 37.067215, 44.106655>,  <31.320963, 36.778702, 44.501553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753107, 37.067215, 44.106655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043880, 37.336487, 44.160900>,  <31.218346, 37.498051, 44.193447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043880, 37.336487, 44.160900>,  <30.753107, 37.067215, 44.106655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043880, 37.336487, 44.160900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066561, 0.127474, -0.989606,
		-0.683472, 0.728406, 0.047858,
		0.726936, 0.673183, 0.135608,
		31.261961, 37.538441, 44.201584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543989, 37.539772, 43.528625>,  <30.753107, 37.067215, 44.106655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543989, 37.539772, 43.528625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915939, 37.630306, 43.644634>,  <31.139109, 37.684628, 43.714237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915939, 37.630306, 43.644634>,  <30.543989, 37.539772, 43.528625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915939, 37.630306, 43.644634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240153, 0.223738, -0.944599,
		-0.278680, 0.948006, 0.153694,
		0.929873, 0.226331, 0.290018,
		31.194901, 37.698204, 43.731640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695829, 38.248798, 43.260372>,  <30.543989, 37.539772, 43.528625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695829, 38.248798, 43.260372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.032410, 38.039654, 43.314896>,  <31.234358, 37.914169, 43.347610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.032410, 38.039654, 43.314896>,  <30.695829, 38.248798, 43.260372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032410, 38.039654, 43.314896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269401, 0.187297, -0.944639,
		0.468382, 0.831589, 0.298460,
		0.841452, -0.522858, 0.136304,
		31.284845, 37.882797, 43.355785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997942, 38.617496, 42.945087>,  <30.695829, 38.248798, 43.260372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997942, 38.617496, 42.945087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244036, 38.303143, 42.969967>,  <31.391693, 38.114529, 42.984894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244036, 38.303143, 42.969967>,  <30.997942, 38.617496, 42.945087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244036, 38.303143, 42.969967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443560, 0.279858, -0.851431,
		0.651720, 0.551419, 0.520766,
		0.615236, -0.785886, 0.062198,
		31.428606, 38.067375, 42.988625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649714, 38.813118, 42.569782>,  <30.997942, 38.617496, 42.945087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649714, 38.813118, 42.569782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.655151, 38.413254, 42.578613>,  <31.658415, 38.173336, 42.583912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.655151, 38.413254, 42.578613>,  <31.649714, 38.813118, 42.569782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655151, 38.413254, 42.578613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176730, -0.019328, -0.984069,
		0.984165, 0.017282, 0.176407,
		0.013597, -0.999664, 0.022077,
		31.659231, 38.113354, 42.585236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211388, 38.584003, 42.203445>,  <31.649714, 38.813118, 42.569782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211388, 38.584003, 42.203445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980661, 38.257263, 42.205605>,  <31.842224, 38.061218, 42.206902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980661, 38.257263, 42.205605>,  <32.211388, 38.584003, 42.203445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980661, 38.257263, 42.205605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071579, -0.057124, -0.995798,
		0.813731, -0.574008, 0.091419,
		-0.576818, -0.816855, 0.005397,
		31.807615, 38.012207, 42.207222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949009, 38.386497, 41.999691>,  <32.211388, 38.584003, 42.203445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949009, 38.386497, 41.999691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250740, 38.589985, 41.833706>,  <33.431778, 38.712078, 41.734116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250740, 38.589985, 41.833706>,  <32.949009, 38.386497, 41.999691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250740, 38.589985, 41.833706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261000, 0.347601, 0.900584,
		0.602386, -0.787642, 0.129430,
		0.754328, 0.508718, -0.414964,
		33.477039, 38.742599, 41.709217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633080, 38.299530, 42.315849>,  <32.949009, 38.386497, 41.999691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633080, 38.299530, 42.315849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586063, 38.661362, 42.151939>,  <33.557854, 38.878460, 42.053593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586063, 38.661362, 42.151939>,  <33.633080, 38.299530, 42.315849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586063, 38.661362, 42.151939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164215, 0.424661, 0.890335,
		0.979396, 0.037360, -0.198461,
		-0.117542, 0.904581, -0.409776,
		33.550800, 38.932735, 42.029007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150845, 38.694099, 42.450863>,  <33.633080, 38.299530, 42.315849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150845, 38.694099, 42.450863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862579, 38.966869, 42.400864>,  <33.689621, 39.130531, 42.370865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862579, 38.966869, 42.400864>,  <34.150845, 38.694099, 42.450863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862579, 38.966869, 42.400864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176836, 0.355143, 0.917934,
		0.670355, 0.639415, -0.376527,
		-0.720661, 0.681925, -0.125001,
		33.646381, 39.171448, 42.363365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383930, 39.385063, 42.672779>,  <34.150845, 38.694099, 42.450863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383930, 39.385063, 42.672779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.985134, 39.415874, 42.676411>,  <33.745857, 39.434361, 42.678589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.985134, 39.415874, 42.676411>,  <34.383930, 39.385063, 42.672779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985134, 39.415874, 42.676411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039633, 0.405297, 0.913326,
		0.066669, 0.910935, -0.407129,
		-0.996988, 0.077026, 0.009082,
		33.686039, 39.438984, 42.679134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274734, 39.896553, 43.133926>,  <34.383930, 39.385063, 42.672779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274734, 39.896553, 43.133926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.913849, 39.724556, 43.120552>,  <33.697319, 39.621357, 43.112530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.913849, 39.724556, 43.120552>,  <34.274734, 39.896553, 43.133926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913849, 39.724556, 43.120552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186625, 0.319344, 0.929081,
		-0.388819, 0.844470, -0.368363,
		-0.902215, -0.429990, -0.033432,
		33.643185, 39.595558, 43.110523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837029, 40.394028, 43.363708>,  <34.274734, 39.896553, 43.133926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837029, 40.394028, 43.363708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640659, 40.052010, 43.430504>,  <33.522839, 39.846798, 43.470581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640659, 40.052010, 43.430504>,  <33.837029, 40.394028, 43.363708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640659, 40.052010, 43.430504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078947, 0.234549, 0.968893,
		-0.867616, 0.462473, -0.182650,
		-0.490927, -0.855047, 0.166988,
		33.493382, 39.795494, 43.480598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301899, 40.606594, 43.862900>,  <33.837029, 40.394028, 43.363708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301899, 40.606594, 43.862900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288788, 40.209702, 43.910892>,  <33.280922, 39.971565, 43.939690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288788, 40.209702, 43.910892>,  <33.301899, 40.606594, 43.862900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288788, 40.209702, 43.910892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114479, 0.115530, 0.986685,
		-0.992885, 0.046078, 0.109803,
		-0.032778, -0.992235, 0.119983,
		33.278954, 39.912029, 43.946888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848797, 40.432526, 44.463585>,  <33.301899, 40.606594, 43.862900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848797, 40.432526, 44.463585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086910, 40.111771, 44.443165>,  <33.229778, 39.919315, 44.430912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086910, 40.111771, 44.443165>,  <32.848797, 40.432526, 44.463585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086910, 40.111771, 44.443165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153812, 0.051360, 0.986764,
		-0.788657, -0.595257, 0.153914,
		0.595284, -0.801892, -0.051053,
		33.265495, 39.871204, 44.427849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610191, 39.981495, 44.929897>,  <32.848797, 40.432526, 44.463585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610191, 39.981495, 44.929897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990829, 39.874557, 44.869244>,  <33.219212, 39.810394, 44.832851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990829, 39.874557, 44.869244>,  <32.610191, 39.981495, 44.929897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990829, 39.874557, 44.869244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100669, -0.195023, 0.975618,
		-0.290395, -0.943660, -0.158670,
		0.951596, -0.267342, -0.151631,
		33.276310, 39.794353, 44.823753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770531, 39.398613, 45.369572>,  <32.610191, 39.981495, 44.929897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770531, 39.398613, 45.369572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133640, 39.548538, 45.294243>,  <33.351505, 39.638493, 45.249046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133640, 39.548538, 45.294243>,  <32.770531, 39.398613, 45.369572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133640, 39.548538, 45.294243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206917, -0.009581, 0.978312,
		0.364878, -0.927051, -0.086252,
		0.907771, 0.374812, -0.188327,
		33.405972, 39.660980, 45.237743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124760, 39.116100, 45.855946>,  <32.770531, 39.398613, 45.369572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124760, 39.116100, 45.855946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361294, 39.404648, 45.711746>,  <33.503212, 39.577774, 45.625225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361294, 39.404648, 45.711746>,  <33.124760, 39.116100, 45.855946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361294, 39.404648, 45.711746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410958, 0.115070, 0.904362,
		0.693859, -0.682927, -0.228407,
		0.591331, 0.721366, -0.360497,
		33.538692, 39.621059, 45.603596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776531, 38.922848, 45.974640>,  <33.124760, 39.116100, 45.855946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776531, 38.922848, 45.974640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793213, 39.322418, 45.966572>,  <33.803223, 39.562160, 45.961731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793213, 39.322418, 45.966572>,  <33.776531, 38.922848, 45.974640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793213, 39.322418, 45.966572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352872, 0.004160, 0.935662,
		0.934742, -0.046139, -0.352320,
		0.041705, 0.998926, -0.020170,
		33.805725, 39.622097, 45.960522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505257, 39.091618, 46.232315>,  <33.776531, 38.922848, 45.974640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505257, 39.091618, 46.232315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310173, 39.440228, 46.252605>,  <34.193123, 39.649395, 46.264778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310173, 39.440228, 46.252605>,  <34.505257, 39.091618, 46.232315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310173, 39.440228, 46.252605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282208, 0.102409, 0.953871,
		0.826132, 0.479530, -0.295899,
		-0.487713, 0.871529, 0.050724,
		34.163860, 39.701687, 46.267822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948296, 39.502842, 46.575829>,  <34.505257, 39.091618, 46.232315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948296, 39.502842, 46.575829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594418, 39.652271, 46.687366>,  <34.382092, 39.741928, 46.754288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594418, 39.652271, 46.687366>,  <34.948296, 39.502842, 46.575829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594418, 39.652271, 46.687366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324238, 0.063357, 0.943851,
		0.334932, 0.925434, -0.177179,
		-0.884698, 0.373574, 0.278841,
		34.329010, 39.764343, 46.771019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481621, 40.008446, 46.449467>,  <34.948296, 39.502842, 46.575829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481621, 40.008446, 46.449467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828312, 40.198532, 46.510063>,  <36.036327, 40.312584, 46.546421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828312, 40.198532, 46.510063>,  <35.481621, 40.008446, 46.449467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828312, 40.198532, 46.510063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251972, -0.155057, -0.955231,
		-0.430456, 0.866096, -0.254135,
		0.866728, 0.475220, 0.151487,
		36.088329, 40.341099, 46.555508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550858, 40.535172, 45.853111>,  <35.481621, 40.008446, 46.449467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550858, 40.535172, 45.853111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.911938, 40.446896, 46.000858>,  <36.128586, 40.393932, 46.089508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.911938, 40.446896, 46.000858>,  <35.550858, 40.535172, 45.853111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911938, 40.446896, 46.000858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413975, 0.211403, -0.885400,
		0.117311, 0.952159, 0.282192,
		0.902698, -0.220687, 0.369370,
		36.182747, 40.380688, 46.111668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000999, 41.014282, 45.494732>,  <35.550858, 40.535172, 45.853111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000999, 41.014282, 45.494732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225185, 40.705009, 45.613438>,  <36.359699, 40.519447, 45.684662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225185, 40.705009, 45.613438>,  <36.000999, 41.014282, 45.494732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225185, 40.705009, 45.613438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606003, 0.138642, -0.783287,
		0.564479, 0.618845, 0.546255,
		0.560467, -0.773182, 0.296761,
		36.393326, 40.473057, 45.702465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650002, 41.252853, 45.315948>,  <36.000999, 41.014282, 45.494732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650002, 41.252853, 45.315948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.696877, 40.857975, 45.359234>,  <36.725002, 40.621048, 45.385204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.696877, 40.857975, 45.359234>,  <36.650002, 41.252853, 45.315948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696877, 40.857975, 45.359234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489501, -0.037391, -0.871200,
		0.864092, 0.155064, 0.478852,
		0.117188, -0.987197, 0.108213,
		36.732033, 40.561817, 45.391697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374737, 41.104286, 45.041565>,  <36.650002, 41.252853, 45.315948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374737, 41.104286, 45.041565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.173466, 40.758831, 45.029278>,  <37.052704, 40.551559, 45.021904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.173466, 40.758831, 45.029278>,  <37.374737, 41.104286, 45.041565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173466, 40.758831, 45.029278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419977, -0.213315, -0.882109,
		0.755270, -0.456757, 0.470043,
		-0.503176, -0.863638, -0.030717,
		37.022514, 40.499741, 45.020061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863930, 40.724693, 44.721783>,  <37.374737, 41.104286, 45.041565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863930, 40.724693, 44.721783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504547, 40.558289, 44.665615>,  <37.288918, 40.458447, 44.631916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504547, 40.558289, 44.665615>,  <37.863930, 40.724693, 44.721783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504547, 40.558289, 44.665615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248405, -0.217898, -0.943830,
		0.362046, -0.882868, 0.299110,
		-0.898453, -0.416010, -0.140420,
		37.235012, 40.433487, 44.623489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989243, 40.101486, 44.422325>,  <37.863930, 40.724693, 44.721783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989243, 40.101486, 44.422325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601124, 40.163025, 44.347637>,  <37.368252, 40.199947, 44.302826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601124, 40.163025, 44.347637>,  <37.989243, 40.101486, 44.422325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601124, 40.163025, 44.347637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149915, -0.223404, -0.963128,
		-0.189888, -0.962508, 0.193703,
		-0.970293, 0.153848, -0.186716,
		37.310036, 40.209179, 44.291622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782711, 39.592407, 43.906307>,  <37.989243, 40.101486, 44.422325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782711, 39.592407, 43.906307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508289, 39.882069, 43.878216>,  <37.343636, 40.055866, 43.861362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508289, 39.882069, 43.878216>,  <37.782711, 39.592407, 43.906307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508289, 39.882069, 43.878216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066022, -0.034161, -0.997233,
		-0.724551, -0.688790, -0.024374,
		-0.686052, 0.724155, -0.070226,
		37.302475, 40.099316, 43.857147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282303, 39.328903, 43.454529>,  <37.782711, 39.592407, 43.906307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282303, 39.328903, 43.454529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222961, 39.724476, 43.455730>,  <37.187355, 39.961819, 43.456451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222961, 39.724476, 43.455730>,  <37.282303, 39.328903, 43.454529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222961, 39.724476, 43.455730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176012, -0.023411, -0.984110,
		-0.973144, -0.146530, 0.177536,
		-0.148358, 0.988929, 0.003009,
		37.178455, 40.021156, 43.456635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692421, 39.396835, 43.133358>,  <37.282303, 39.328903, 43.454529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692421, 39.396835, 43.133358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.859894, 39.759602, 43.114552>,  <36.960377, 39.977261, 43.103268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.859894, 39.759602, 43.114552>,  <36.692421, 39.396835, 43.133358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859894, 39.759602, 43.114552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219981, 0.051055, -0.974167,
		-0.881085, 0.418211, 0.220880,
		0.418685, 0.906914, -0.047015,
		36.985500, 40.031677, 43.100449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140713, 39.910118, 42.790897>,  <36.692421, 39.396835, 43.133358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140713, 39.910118, 42.790897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501144, 40.072701, 42.730427>,  <36.717403, 40.170250, 42.694145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501144, 40.072701, 42.730427>,  <36.140713, 39.910118, 42.790897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501144, 40.072701, 42.730427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209518, 0.102819, -0.972384,
		-0.379688, 0.907867, 0.177807,
		0.901077, 0.406456, -0.151175,
		36.771469, 40.194637, 42.685074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993977, 40.407757, 42.312641>,  <36.140713, 39.910118, 42.790897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993977, 40.407757, 42.312641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.390484, 40.359428, 42.291531>,  <36.628387, 40.330433, 42.278866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.390484, 40.359428, 42.291531>,  <35.993977, 40.407757, 42.312641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390484, 40.359428, 42.291531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038307, 0.119072, -0.992146,
		0.126154, 0.985507, 0.113404,
		0.991271, -0.120820, -0.052773,
		36.687866, 40.323181, 42.275700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310852, 41.014050, 41.972328>,  <35.993977, 40.407757, 42.312641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310852, 41.014050, 41.972328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.527576, 40.680931, 41.926918>,  <36.657612, 40.481060, 41.899670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.527576, 40.680931, 41.926918>,  <36.310852, 41.014050, 41.972328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527576, 40.680931, 41.926918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076855, 0.085419, -0.993376,
		0.836976, 0.546952, -0.017723,
		0.541815, -0.832795, -0.113530,
		36.690121, 40.431091, 41.892860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762539, 41.162323, 41.470581>,  <36.310852, 41.014050, 41.972328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762539, 41.162323, 41.470581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763180, 40.762951, 41.492977>,  <36.763565, 40.523327, 41.506416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763180, 40.762951, 41.492977>,  <36.762539, 41.162323, 41.470581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763180, 40.762951, 41.492977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158442, -0.055541, -0.985805,
		0.987367, -0.007289, -0.158282,
		0.001606, -0.998430, 0.055994,
		36.763660, 40.463421, 41.509777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.228769, 27.144028, 37.661369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510765, 27.278706, 37.911049>,  <28.679962, 27.359512, 38.060856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510765, 27.278706, 37.911049>,  <28.228769, 27.144028, 37.661369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510765, 27.278706, 37.911049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399689, 0.915665, -0.042494,
		-0.585865, -0.219528, 0.780109,
		0.704990, 0.336697, 0.624200,
		28.722261, 27.379715, 38.098309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207130, 27.357100, 38.359348>,  <28.228769, 27.144028, 37.661369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207130, 27.357100, 38.359348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514353, 27.540922, 38.180954>,  <28.698687, 27.651217, 38.073917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514353, 27.540922, 38.180954>,  <28.207130, 27.357100, 38.359348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514353, 27.540922, 38.180954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527738, 0.848714, -0.034302,
		0.362747, 0.261708, 0.894385,
		0.768054, 0.459558, -0.445982,
		28.744768, 27.678789, 38.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211802, 27.959402, 38.633968>,  <28.207130, 27.357100, 38.359348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211802, 27.959402, 38.633968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.420649, 28.012604, 38.296993>,  <28.545956, 28.044525, 38.094807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.420649, 28.012604, 38.296993>,  <28.211802, 27.959402, 38.633968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420649, 28.012604, 38.296993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404486, 0.908228, -0.107296,
		0.750857, 0.396776, 0.527999,
		0.522116, 0.133004, -0.842440,
		28.577284, 28.052505, 38.044262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584894, 28.556480, 38.699322>,  <28.211802, 27.959402, 38.633968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584894, 28.556480, 38.699322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532980, 28.498045, 38.307034>,  <28.501831, 28.462984, 38.071659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532980, 28.498045, 38.307034>,  <28.584894, 28.556480, 38.699322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532980, 28.498045, 38.307034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388400, 0.917537, -0.085276,
		0.912305, 0.369844, -0.175826,
		-0.129788, -0.146089, -0.980721,
		28.494043, 28.454218, 38.012817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770346, 29.155373, 38.343437>,  <28.584894, 28.556480, 38.699322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770346, 29.155373, 38.343437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530027, 28.991957, 38.068588>,  <28.385838, 28.893908, 37.903679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530027, 28.991957, 38.068588>,  <28.770346, 29.155373, 38.343437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530027, 28.991957, 38.068588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277424, 0.912682, -0.300080,
		0.749721, 0.010338, -0.661674,
		-0.600795, -0.408541, -0.687124,
		28.349789, 28.869394, 37.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734753, 29.743107, 37.982269>,  <28.770346, 29.155373, 38.343437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734753, 29.743107, 37.982269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461130, 29.482304, 37.851452>,  <28.296957, 29.325821, 37.772961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461130, 29.482304, 37.851452>,  <28.734753, 29.743107, 37.982269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461130, 29.482304, 37.851452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637078, 0.752388, -0.167460,
		0.355245, 0.093798, -0.930055,
		-0.684056, -0.652008, -0.327039,
		28.255913, 29.286701, 37.753342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514273, 29.896799, 37.181854>,  <28.734753, 29.743107, 37.982269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514273, 29.896799, 37.181854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220125, 29.691378, 37.358715>,  <28.043636, 29.568125, 37.464832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220125, 29.691378, 37.358715>,  <28.514273, 29.896799, 37.181854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220125, 29.691378, 37.358715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636698, 0.747011, -0.191287,
		-0.232057, -0.422184, -0.876305,
		-0.735367, -0.513552, 0.442153,
		27.999516, 29.537312, 37.491360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885399, 29.916664, 36.715103>,  <28.514273, 29.896799, 37.181854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885399, 29.916664, 36.715103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704958, 29.828110, 37.060936>,  <27.596693, 29.774977, 37.268436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704958, 29.828110, 37.060936>,  <27.885399, 29.916664, 36.715103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704958, 29.828110, 37.060936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670113, 0.723849, -0.164287,
		-0.589454, -0.653476, -0.474882,
		-0.451101, -0.221385, 0.864579,
		27.569628, 29.761694, 37.320309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087055, 29.945650, 36.582329>,  <27.885399, 29.916664, 36.715103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087055, 29.945650, 36.582329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.152227, 29.983011, 36.975212>,  <27.191332, 30.005428, 37.210941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.152227, 29.983011, 36.975212>,  <27.087055, 29.945650, 36.582329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152227, 29.983011, 36.975212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705042, 0.707423, 0.049681,
		-0.690195, -0.700591, 0.181116,
		0.162932, 0.093405, 0.982206,
		27.201107, 30.011032, 37.269875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460934, 29.846567, 36.858128>,  <27.087055, 29.945650, 36.582329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460934, 29.846567, 36.858128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657091, 30.062136, 37.132084>,  <26.774786, 30.191477, 37.296459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657091, 30.062136, 37.132084>,  <26.460934, 29.846567, 36.858128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657091, 30.062136, 37.132084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731370, 0.681860, -0.012865,
		-0.473935, -0.494602, 0.728529,
		0.490392, 0.538921, 0.684894,
		26.804209, 30.223812, 37.337551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901106, 30.199841, 37.200645>,  <26.460934, 29.846567, 36.858128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901106, 30.199841, 37.200645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226795, 30.390968, 37.332539>,  <26.422209, 30.505646, 37.411674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226795, 30.390968, 37.332539>,  <25.901106, 30.199841, 37.200645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226795, 30.390968, 37.332539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549638, 0.817327, 0.172843,
		-0.186912, -0.321967, 0.928117,
		0.814225, 0.477821, 0.329734,
		26.471064, 30.534315, 37.431458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683126, 30.591066, 37.876118>,  <25.901106, 30.199841, 37.200645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683126, 30.591066, 37.876118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.011728, 30.766932, 37.730885>,  <26.208889, 30.872450, 37.643745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.011728, 30.766932, 37.730885>,  <25.683126, 30.591066, 37.876118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011728, 30.766932, 37.730885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420136, 0.897231, 0.135877,
		0.385512, 0.040923, 0.921795,
		0.821502, 0.439662, -0.363086,
		26.258179, 30.898830, 37.621960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698238, 31.289240, 38.260895>,  <25.683126, 30.591066, 37.876118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698238, 31.289240, 38.260895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.923964, 31.336027, 37.934002>,  <26.059399, 31.364100, 37.737865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.923964, 31.336027, 37.934002>,  <25.698238, 31.289240, 38.260895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923964, 31.336027, 37.934002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419687, 0.893100, -0.161971,
		0.710925, 0.434384, 0.553078,
		0.564312, 0.116970, -0.817234,
		26.093258, 31.371119, 37.688831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998007, 31.921616, 38.418457>,  <25.698238, 31.289240, 38.260895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998007, 31.921616, 38.418457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033487, 31.857107, 38.025291>,  <26.054775, 31.818401, 37.789391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033487, 31.857107, 38.025291>,  <25.998007, 31.921616, 38.418457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033487, 31.857107, 38.025291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388314, 0.903128, -0.183223,
		0.917248, 0.397932, 0.017483,
		0.088700, -0.161272, -0.982916,
		26.060097, 31.808725, 37.730415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319983, 32.499012, 38.180286>,  <25.998007, 31.921616, 38.418457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319983, 32.499012, 38.180286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.150032, 32.354462, 37.848289>,  <26.048061, 32.267731, 37.649090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.150032, 32.354462, 37.848289>,  <26.319983, 32.499012, 38.180286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150032, 32.354462, 37.848289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419076, 0.891219, -0.173504,
		0.802406, 0.274113, -0.530100,
		-0.424876, -0.361373, -0.829994,
		26.022570, 32.246048, 37.599293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337078, 33.034359, 37.777447>,  <26.319983, 32.499012, 38.180286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337078, 33.034359, 37.777447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085804, 32.803715, 37.568485>,  <25.935040, 32.665329, 37.443108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085804, 32.803715, 37.568485>,  <26.337078, 33.034359, 37.777447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085804, 32.803715, 37.568485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425812, 0.816717, -0.389432,
		0.651203, -0.022193, -0.758579,
		-0.628188, -0.576611, -0.522399,
		25.897348, 32.630730, 37.411766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409290, 33.062572, 37.015869>,  <26.337078, 33.034359, 37.777447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409290, 33.062572, 37.015869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031239, 32.952793, 37.086754>,  <25.804407, 32.886925, 37.129284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031239, 32.952793, 37.086754>,  <26.409290, 33.062572, 37.015869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031239, 32.952793, 37.086754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326116, 0.824738, -0.462012,
		-0.019352, -0.494453, -0.868989,
		-0.945132, -0.274451, 0.177209,
		25.747700, 32.870457, 37.139915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069101, 33.236012, 36.401997>,  <26.409290, 33.062572, 37.015869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069101, 33.236012, 36.401997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786167, 33.206844, 36.683239>,  <25.616407, 33.189342, 36.851986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786167, 33.206844, 36.683239>,  <26.069101, 33.236012, 36.401997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786167, 33.206844, 36.683239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403513, 0.858336, -0.316918,
		-0.580391, -0.507880, -0.636556,
		-0.707335, -0.072922, 0.703107,
		25.573967, 33.184967, 36.894173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670425, 33.500298, 36.190189>,  <26.069101, 33.236012, 36.401997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670425, 33.500298, 36.190189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859528, 33.832211, 36.071548>,  <26.972988, 34.031357, 36.000366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859528, 33.832211, 36.071548>,  <26.670425, 33.500298, 36.190189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859528, 33.832211, 36.071548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864751, -0.501584, -0.024906,
		-0.169435, -0.244709, -0.954678,
		0.472756, 0.829778, -0.296598,
		27.001354, 34.081142, 35.982571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994854, 33.392834, 35.522499>,  <26.670425, 33.500298, 36.190189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994854, 33.392834, 35.522499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186607, 33.672508, 35.734661>,  <27.301659, 33.840313, 35.861958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186607, 33.672508, 35.734661>,  <26.994854, 33.392834, 35.522499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186607, 33.672508, 35.734661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861078, -0.491472, -0.130382,
		0.169520, 0.519227, -0.837656,
		0.479382, 0.699185, 0.530409,
		27.330421, 33.882263, 35.893784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538654, 33.623047, 35.198734>,  <26.994854, 33.392834, 35.522499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538654, 33.623047, 35.198734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639103, 33.688171, 35.580399>,  <27.699373, 33.727245, 35.809399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639103, 33.688171, 35.580399>,  <27.538654, 33.623047, 35.198734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639103, 33.688171, 35.580399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762667, -0.640291, -0.091469,
		0.596051, 0.750680, -0.284963,
		0.251123, 0.162811, 0.954164,
		27.714439, 33.737015, 35.866650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238180, 33.656750, 35.141739>,  <27.538654, 33.623047, 35.198734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238180, 33.656750, 35.141739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160770, 33.576019, 35.525784>,  <28.114325, 33.527580, 35.756210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160770, 33.576019, 35.525784>,  <28.238180, 33.656750, 35.141739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160770, 33.576019, 35.525784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783257, -0.621098, 0.027316,
		0.590811, 0.757301, 0.278276,
		-0.193524, -0.201823, 0.960113,
		28.102713, 33.515472, 35.813816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904823, 33.638298, 35.504658>,  <28.238180, 33.656750, 35.141739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904823, 33.638298, 35.504658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672035, 33.469288, 35.782589>,  <28.532362, 33.367882, 35.949348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672035, 33.469288, 35.782589>,  <28.904823, 33.638298, 35.504658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672035, 33.469288, 35.782589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743816, -0.621943, 0.244796,
		0.328708, 0.659285, 0.676236,
		-0.581970, -0.422529, 0.694824,
		28.497444, 33.342529, 35.991035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268299, 33.769138, 36.108643>,  <28.904823, 33.638298, 35.504658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268299, 33.769138, 36.108643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035719, 33.445480, 36.142597>,  <28.896170, 33.251286, 36.162968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035719, 33.445480, 36.142597>,  <29.268299, 33.769138, 36.108643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035719, 33.445480, 36.142597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775408, -0.519563, 0.358883,
		-0.246285, 0.274492, 0.929515,
		-0.581452, -0.809141, 0.084882,
		28.861284, 33.202740, 36.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702957, 33.417583, 36.643036>,  <29.268299, 33.769138, 36.108643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702957, 33.417583, 36.643036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429728, 33.154690, 36.515633>,  <29.265789, 32.996952, 36.439190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429728, 33.154690, 36.515633>,  <29.702957, 33.417583, 36.643036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429728, 33.154690, 36.515633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528096, -0.745720, 0.406221,
		-0.504504, 0.109274, 0.856467,
		-0.683074, -0.657237, -0.318511,
		29.224806, 32.957520, 36.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638714, 32.846409, 37.232265>,  <29.702957, 33.417583, 36.643036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638714, 32.846409, 37.232265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477348, 32.706524, 36.894043>,  <29.380529, 32.622593, 36.691109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477348, 32.706524, 36.894043>,  <29.638714, 32.846409, 37.232265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477348, 32.706524, 36.894043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599573, -0.799085, 0.044436,
		-0.691210, -0.489046, 0.532037,
		-0.403412, -0.349710, -0.845554,
		29.356325, 32.601612, 36.640377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443445, 32.259445, 37.365074>,  <29.638714, 32.846409, 37.232265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443445, 32.259445, 37.365074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480829, 32.232880, 36.967712>,  <29.503260, 32.216942, 36.729294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480829, 32.232880, 36.967712>,  <29.443445, 32.259445, 37.365074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480829, 32.232880, 36.967712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537011, -0.836830, 0.106466,
		-0.838382, -0.543420, -0.042542,
		0.093456, -0.066413, -0.993406,
		29.508867, 32.212955, 36.669689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262177, 31.480257, 37.213600>,  <29.443445, 32.259445, 37.365074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262177, 31.480257, 37.213600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477325, 31.625195, 36.909126>,  <29.606415, 31.712156, 36.726444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477325, 31.625195, 36.909126>,  <29.262177, 31.480257, 37.213600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477325, 31.625195, 36.909126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508424, -0.859657, -0.049954,
		-0.672457, -0.360134, -0.646610,
		0.537873, 0.362344, -0.761183,
		29.638687, 31.733898, 36.680771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297852, 30.971670, 36.650246>,  <29.262177, 31.480257, 37.213600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297852, 30.971670, 36.650246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597368, 31.232298, 36.601635>,  <29.777079, 31.388676, 36.572468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597368, 31.232298, 36.601635>,  <29.297852, 30.971670, 36.650246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597368, 31.232298, 36.601635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662681, -0.739526, 0.118130,
		-0.012902, -0.168988, -0.985533,
		0.748790, 0.651571, -0.121527,
		29.822006, 31.427769, 36.565178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689789, 30.766453, 36.077881>,  <29.297852, 30.971670, 36.650246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689789, 30.766453, 36.077881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937717, 30.993427, 36.294708>,  <30.086475, 31.129612, 36.424805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937717, 30.993427, 36.294708>,  <29.689789, 30.766453, 36.077881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937717, 30.993427, 36.294708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636675, -0.767442, 0.075354,
		0.458764, 0.298415, -0.836949,
		0.619823, 0.567434, 0.542068,
		30.123665, 31.163658, 36.457329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409767, 30.454569, 35.918453>,  <29.689789, 30.766453, 36.077881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409767, 30.454569, 35.918453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463703, 30.716600, 36.215824>,  <30.496065, 30.873819, 36.394249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463703, 30.716600, 36.215824>,  <30.409767, 30.454569, 35.918453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463703, 30.716600, 36.215824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724814, -0.576786, 0.376779,
		0.675621, 0.488044, -0.552585,
		0.134839, 0.655081, 0.743430,
		30.504154, 30.913124, 36.438854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063860, 30.616968, 35.883659>,  <30.409767, 30.454569, 35.918453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063860, 30.616968, 35.883659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973352, 30.686544, 36.267025>,  <30.919048, 30.728291, 36.497044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973352, 30.686544, 36.267025>,  <31.063860, 30.616968, 35.883659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973352, 30.686544, 36.267025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700097, -0.655066, 0.284169,
		0.677250, 0.735278, 0.026445,
		-0.226267, 0.173939, 0.958409,
		30.905472, 30.738726, 36.554546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712185, 30.751379, 36.112621>,  <31.063860, 30.616968, 35.883659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712185, 30.751379, 36.112621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.486406, 30.665386, 36.431416>,  <31.350939, 30.613791, 36.622692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.486406, 30.665386, 36.431416>,  <31.712185, 30.751379, 36.112621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486406, 30.665386, 36.431416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591759, -0.778524, 0.209097,
		0.575519, 0.589647, 0.566652,
		-0.564446, -0.214983, 0.796984,
		31.317072, 30.600891, 36.670509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208363, 30.637737, 36.633190>,  <31.712185, 30.751379, 36.112621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208363, 30.637737, 36.633190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.867884, 30.453310, 36.733498>,  <31.663597, 30.342653, 36.793682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.867884, 30.453310, 36.733498>,  <32.208363, 30.637737, 36.633190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867884, 30.453310, 36.733498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514908, -0.826150, 0.228792,
		0.101687, 0.323871, 0.940621,
		-0.851193, -0.461068, 0.250772,
		31.612526, 30.314989, 36.808731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264366, 30.404072, 37.361340>,  <32.208363, 30.637737, 36.633190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264366, 30.404072, 37.361340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997959, 30.178738, 37.165760>,  <31.838114, 30.043537, 37.048412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997959, 30.178738, 37.165760>,  <32.264366, 30.404072, 37.361340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997959, 30.178738, 37.165760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356485, -0.816163, 0.454748,
		-0.655235, 0.128570, 0.744403,
		-0.666021, -0.563336, -0.488945,
		31.798153, 30.009737, 37.019077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285797, 29.831448, 37.780102>,  <32.264366, 30.404072, 37.361340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285797, 29.831448, 37.780102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.092178, 29.720524, 37.448128>,  <31.976007, 29.653969, 37.248943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.092178, 29.720524, 37.448128>,  <32.285797, 29.831448, 37.780102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092178, 29.720524, 37.448128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461016, -0.886966, 0.027486,
		-0.743750, -0.369312, 0.557176,
		-0.484045, -0.277310, -0.829939,
		31.946964, 29.637331, 37.199146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870359, 29.217779, 37.961792>,  <32.285797, 29.831448, 37.780102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870359, 29.217779, 37.961792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946058, 29.230228, 37.569218>,  <31.991478, 29.237698, 37.333672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946058, 29.230228, 37.569218>,  <31.870359, 29.217779, 37.961792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946058, 29.230228, 37.569218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222737, -0.974804, 0.012035,
		-0.956334, -0.220880, -0.191410,
		0.189246, 0.031125, -0.981436,
		32.002831, 29.239567, 37.274788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635031, 28.547060, 37.767258>,  <31.870359, 29.217779, 37.961792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635031, 28.547060, 37.767258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.875807, 28.677481, 37.475681>,  <32.020271, 28.755733, 37.300735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.875807, 28.677481, 37.475681>,  <31.635031, 28.547060, 37.767258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875807, 28.677481, 37.475681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360141, -0.925581, -0.116611,
		-0.712719, -0.192330, -0.674567,
		0.601939, 0.326050, -0.728945,
		32.056389, 28.775295, 37.256996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607235, 28.136133, 37.256054>,  <31.635031, 28.547060, 37.767258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607235, 28.136133, 37.256054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954926, 28.310881, 37.163456>,  <32.163540, 28.415730, 37.107895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954926, 28.310881, 37.163456>,  <31.607235, 28.136133, 37.256054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954926, 28.310881, 37.163456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363838, -0.882245, -0.298774,
		-0.334761, 0.175475, -0.925821,
		0.869228, 0.436867, -0.231497,
		32.215694, 28.441940, 37.094006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883392, 27.781399, 36.731380>,  <31.607235, 28.136133, 37.256054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883392, 27.781399, 36.731380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.216114, 27.960272, 36.862915>,  <32.415745, 28.067596, 36.941833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.216114, 27.960272, 36.862915>,  <31.883392, 27.781399, 36.731380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216114, 27.960272, 36.862915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534640, -0.804712, -0.258067,
		0.149214, 0.390469, -0.908443,
		0.831802, 0.447183, 0.328835,
		32.465656, 28.094427, 36.961567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392731, 27.663214, 36.232548>,  <31.883392, 27.781399, 36.731380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392731, 27.663214, 36.232548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.594299, 27.763227, 36.563255>,  <32.715240, 27.823236, 36.761681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.594299, 27.763227, 36.563255>,  <32.392731, 27.663214, 36.232548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594299, 27.763227, 36.563255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750053, -0.601361, -0.275292,
		0.428355, 0.758846, -0.490576,
		0.503917, 0.250035, 0.826771,
		32.745476, 27.838238, 36.811287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063828, 27.786400, 35.997982>,  <32.392731, 27.663214, 36.232548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063828, 27.786400, 35.997982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.086437, 27.690409, 36.385635>,  <33.100002, 27.632814, 36.618225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.086437, 27.690409, 36.385635>,  <33.063828, 27.786400, 35.997982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086437, 27.690409, 36.385635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770177, -0.607203, -0.195276,
		0.635321, 0.757439, 0.150506,
		0.056522, -0.239979, 0.969131,
		33.103394, 27.618416, 36.676376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.389412, 40.216805, 46.913448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190453, 39.878757, 46.991802>,  <40.071075, 39.675930, 47.038815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190453, 39.878757, 46.991802>,  <40.389412, 40.216805, 46.913448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190453, 39.878757, 46.991802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030351, 0.242610, 0.969649,
		-0.866991, 0.476356, -0.146324,
		-0.497398, -0.845118, 0.195883,
		40.041233, 39.625221, 47.050568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808666, 40.429726, 47.366924>,  <40.389412, 40.216805, 46.913448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808666, 40.429726, 47.366924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864040, 40.037331, 47.421337>,  <39.897263, 39.801895, 47.453987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864040, 40.037331, 47.421337>,  <39.808666, 40.429726, 47.366924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864040, 40.037331, 47.421337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005064, 0.136655, 0.990606,
		-0.990359, -0.137819, 0.013950,
		0.138431, -0.980985, 0.136036,
		39.905571, 39.743034, 47.462147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286179, 40.129108, 47.852505>,  <39.808666, 40.429726, 47.366924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286179, 40.129108, 47.852505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581127, 39.859108, 47.862736>,  <39.758095, 39.697105, 47.868874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581127, 39.859108, 47.862736>,  <39.286179, 40.129108, 47.852505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581127, 39.859108, 47.862736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022634, 0.013160, 0.999657,
		-0.675111, -0.737695, -0.005574,
		0.737369, -0.675006, 0.025582,
		39.802338, 39.656605, 47.870411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083275, 39.695381, 48.227890>,  <39.286179, 40.129108, 47.852505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083275, 39.695381, 48.227890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468025, 39.592350, 48.264671>,  <39.698875, 39.530533, 48.286739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468025, 39.592350, 48.264671>,  <39.083275, 39.695381, 48.227890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468025, 39.592350, 48.264671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165544, -0.280699, 0.945412,
		-0.217702, -0.924588, -0.312637,
		0.961874, -0.257574, 0.091951,
		39.756588, 39.515076, 48.292255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151653, 38.991489, 48.303635>,  <39.083275, 39.695381, 48.227890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151653, 38.991489, 48.303635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475307, 39.169437, 48.457199>,  <39.669498, 39.276207, 48.549339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475307, 39.169437, 48.457199>,  <39.151653, 38.991489, 48.303635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475307, 39.169437, 48.457199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288510, -0.268401, 0.919088,
		0.511919, -0.854429, -0.088823,
		0.809136, 0.444872, 0.383911,
		39.718048, 39.302898, 48.572372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295776, 38.599049, 48.897690>,  <39.151653, 38.991489, 48.303635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295776, 38.599049, 48.897690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.482990, 38.942371, 48.981831>,  <39.595318, 39.148365, 49.032314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.482990, 38.942371, 48.981831>,  <39.295776, 38.599049, 48.897690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482990, 38.942371, 48.981831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355758, -0.034891, 0.933927,
		0.808936, -0.511948, 0.289019,
		0.468038, 0.858307, 0.210355,
		39.623402, 39.199863, 49.044937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792198, 38.530075, 49.337849>,  <39.295776, 38.599049, 48.897690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792198, 38.530075, 49.337849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.699581, 38.913685, 49.403164>,  <39.644012, 39.143852, 49.442352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.699581, 38.913685, 49.403164>,  <39.792198, 38.530075, 49.337849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699581, 38.913685, 49.403164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016628, -0.163919, 0.986333,
		0.972683, 0.231089, 0.022007,
		-0.231539, 0.959024, 0.163284,
		39.630119, 39.201393, 49.452148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139690, 38.642796, 49.897655>,  <39.792198, 38.530075, 49.337849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139690, 38.642796, 49.897655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855743, 38.924454, 49.891102>,  <39.685375, 39.093449, 49.887169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855743, 38.924454, 49.891102>,  <40.139690, 38.642796, 49.897655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855743, 38.924454, 49.891102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119711, -0.097696, 0.987990,
		0.694086, 0.703305, 0.153645,
		-0.709869, 0.704144, -0.016383,
		39.642784, 39.135696, 49.886189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123795, 38.799992, 50.619465>,  <40.139690, 38.642796, 49.897655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123795, 38.799992, 50.619465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840733, 39.048794, 50.485397>,  <39.670895, 39.198074, 50.404957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840733, 39.048794, 50.485397>,  <40.123795, 38.799992, 50.619465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840733, 39.048794, 50.485397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335561, 0.121593, 0.934138,
		0.621789, 0.773517, 0.122674,
		-0.707655, 0.622002, -0.335168,
		39.628437, 39.235394, 50.384846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223572, 39.372330, 51.083561>,  <40.123795, 38.799992, 50.619465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223572, 39.372330, 51.083561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858372, 39.403877, 50.923458>,  <39.639252, 39.422806, 50.827396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858372, 39.403877, 50.923458>,  <40.223572, 39.372330, 51.083561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858372, 39.403877, 50.923458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405256, -0.062715, 0.912049,
		0.046833, 0.994910, 0.089222,
		-0.913003, 0.078871, -0.400256,
		39.584473, 39.427540, 50.803383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026958, 39.897087, 51.452427>,  <40.223572, 39.372330, 51.083561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026958, 39.897087, 51.452427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.679550, 39.776943, 51.294720>,  <39.471104, 39.704857, 51.200096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.679550, 39.776943, 51.294720>,  <40.026958, 39.897087, 51.452427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679550, 39.776943, 51.294720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440345, 0.102457, 0.891964,
		-0.227516, 0.948307, -0.221249,
		-0.868524, -0.300362, -0.394271,
		39.418995, 39.686836, 51.176437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443176, 40.399815, 51.584812>,  <40.026958, 39.897087, 51.452427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443176, 40.399815, 51.584812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267612, 40.043320, 51.539124>,  <39.162273, 39.829422, 51.511711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267612, 40.043320, 51.539124>,  <39.443176, 40.399815, 51.584812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267612, 40.043320, 51.539124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421747, 0.092094, 0.902024,
		-0.793401, 0.444083, -0.416299,
		-0.438912, -0.891240, -0.114223,
		39.135941, 39.775948, 51.504856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743713, 40.420910, 51.922737>,  <39.443176, 40.399815, 51.584812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743713, 40.420910, 51.922737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852444, 40.036739, 51.898460>,  <38.917683, 39.806236, 51.883892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852444, 40.036739, 51.898460>,  <38.743713, 40.420910, 51.922737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852444, 40.036739, 51.898460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521605, -0.200045, 0.829404,
		-0.808726, -0.193796, -0.555342,
		0.271829, -0.960430, -0.060696,
		38.933994, 39.748611, 51.880253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062965, 40.072510, 51.965866>,  <38.743713, 40.420910, 51.922737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062965, 40.072510, 51.965866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389324, 39.861065, 52.059574>,  <38.585140, 39.734196, 52.115799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389324, 39.861065, 52.059574>,  <38.062965, 40.072510, 51.965866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389324, 39.861065, 52.059574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368471, -0.163124, 0.915215,
		-0.445583, -0.833040, -0.327872,
		0.815895, -0.528615, 0.234266,
		38.634094, 39.702480, 52.129852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464973, 40.388363, 51.968304>,  <38.062965, 40.072510, 51.965866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464973, 40.388363, 51.968304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128002, 40.581280, 52.064396>,  <36.925819, 40.697029, 52.122051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128002, 40.581280, 52.064396>,  <37.464973, 40.388363, 51.968304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128002, 40.581280, 52.064396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155514, 0.209245, -0.965418,
		-0.515882, -0.850653, -0.101270,
		-0.842426, 0.482293, 0.240234,
		36.875275, 40.725967, 52.136467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969257, 40.083889, 51.578300>,  <37.464973, 40.388363, 51.968304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969257, 40.083889, 51.578300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826244, 40.443542, 51.679279>,  <36.740437, 40.659336, 51.739864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826244, 40.443542, 51.679279>,  <36.969257, 40.083889, 51.578300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826244, 40.443542, 51.679279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239230, 0.173115, -0.955406,
		-0.902740, -0.401981, 0.153205,
		-0.357533, 0.899134, 0.252444,
		36.718983, 40.713284, 51.755013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334724, 40.095840, 51.435463>,  <36.969257, 40.083889, 51.578300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334724, 40.095840, 51.435463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450638, 40.477772, 51.409164>,  <36.520187, 40.706932, 51.393387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450638, 40.477772, 51.409164>,  <36.334724, 40.095840, 51.435463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450638, 40.477772, 51.409164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258691, 0.012004, -0.965885,
		-0.921468, 0.296907, 0.250485,
		0.289785, 0.954831, -0.065746,
		36.537575, 40.764221, 51.389442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765732, 40.438946, 51.080170>,  <36.334724, 40.095840, 51.435463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765732, 40.438946, 51.080170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069065, 40.693977, 51.025887>,  <36.251064, 40.846996, 50.993317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069065, 40.693977, 51.025887>,  <35.765732, 40.438946, 51.080170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069065, 40.693977, 51.025887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321882, 0.185218, -0.928486,
		-0.566848, 0.747788, 0.345683,
		0.758337, 0.637580, -0.135709,
		36.296566, 40.885250, 50.985172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482712, 41.040211, 50.680267>,  <35.765732, 40.438946, 51.080170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482712, 41.040211, 50.680267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874161, 41.101078, 50.624928>,  <36.109032, 41.137600, 50.591724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874161, 41.101078, 50.624928>,  <35.482712, 41.040211, 50.680267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874161, 41.101078, 50.624928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166730, 0.193218, -0.966886,
		-0.120401, 0.969284, 0.214459,
		0.978624, 0.152170, -0.138345,
		36.167747, 41.146729, 50.583424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523857, 41.640793, 50.260612>,  <35.482712, 41.040211, 50.680267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523857, 41.640793, 50.260612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871075, 41.444576, 50.229958>,  <36.079403, 41.326847, 50.211563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871075, 41.444576, 50.229958>,  <35.523857, 41.640793, 50.260612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871075, 41.444576, 50.229958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023188, 0.114137, -0.993194,
		0.495950, 0.863911, 0.087701,
		0.868042, -0.490541, -0.076638,
		36.131489, 41.297413, 50.206966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836575, 41.949055, 49.720184>,  <35.523857, 41.640793, 50.260612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836575, 41.949055, 49.720184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032463, 41.601585, 49.750088>,  <36.149994, 41.393105, 49.768028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032463, 41.601585, 49.750088>,  <35.836575, 41.949055, 49.720184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032463, 41.601585, 49.750088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128458, -0.012923, -0.991631,
		0.862366, 0.495223, 0.105259,
		0.489718, -0.868670, 0.074760,
		36.179379, 41.340984, 49.772514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384880, 41.983437, 49.232307>,  <35.836575, 41.949055, 49.720184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384880, 41.983437, 49.232307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359947, 41.589638, 49.297890>,  <36.344986, 41.353359, 49.337238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359947, 41.589638, 49.297890>,  <36.384880, 41.983437, 49.232307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359947, 41.589638, 49.297890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082295, -0.168783, -0.982212,
		0.994657, -0.047731, 0.091540,
		-0.062332, -0.984497, 0.163953,
		36.341248, 41.294289, 49.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932594, 41.646214, 48.854607>,  <36.384880, 41.983437, 49.232307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932594, 41.646214, 48.854607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686405, 41.334484, 48.901657>,  <36.538692, 41.147446, 48.929886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686405, 41.334484, 48.901657>,  <36.932594, 41.646214, 48.854607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686405, 41.334484, 48.901657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060194, -0.102326, -0.992928,
		0.785853, -0.618205, 0.016069,
		-0.615477, -0.779328, 0.117626,
		36.501762, 41.100685, 48.936943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161522, 41.064049, 48.415409>,  <36.932594, 41.646214, 48.854607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161522, 41.064049, 48.415409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778362, 40.981121, 48.494850>,  <36.548466, 40.931366, 48.542515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778362, 40.981121, 48.494850>,  <37.161522, 41.064049, 48.415409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778362, 40.981121, 48.494850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144701, -0.248826, -0.957678,
		0.247964, -0.946099, 0.208351,
		-0.957902, -0.207321, 0.198601,
		36.490993, 40.918926, 48.554432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142124, 40.443794, 48.324463>,  <37.161522, 41.064049, 48.415409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142124, 40.443794, 48.324463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773602, 40.585220, 48.259727>,  <36.552490, 40.670074, 48.220886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773602, 40.585220, 48.259727>,  <37.142124, 40.443794, 48.324463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773602, 40.585220, 48.259727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020919, -0.370547, -0.928578,
		-0.388287, -0.858886, 0.333989,
		-0.921301, 0.353568, -0.161846,
		36.497211, 40.691288, 48.211174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754200, 39.952717, 48.064865>,  <37.142124, 40.443794, 48.324463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754200, 39.952717, 48.064865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549110, 40.280972, 47.963936>,  <36.426056, 40.477924, 47.903378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549110, 40.280972, 47.963936>,  <36.754200, 39.952717, 48.064865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549110, 40.280972, 47.963936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086238, -0.341637, -0.935867,
		-0.854209, -0.458084, 0.245937,
		-0.512727, 0.820636, -0.252326,
		36.395290, 40.527161, 47.888237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102093, 39.797344, 47.722092>,  <36.754200, 39.952717, 48.064865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102093, 39.797344, 47.722092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221626, 40.160217, 47.603630>,  <36.293346, 40.377941, 47.532551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221626, 40.160217, 47.603630>,  <36.102093, 39.797344, 47.722092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221626, 40.160217, 47.603630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030444, -0.319243, -0.947184,
		-0.953818, 0.274038, -0.123020,
		0.298838, 0.907186, -0.296157,
		36.311279, 40.432373, 47.514782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688515, 39.721069, 47.108261>,  <36.102093, 39.797344, 47.722092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688515, 39.721069, 47.108261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.901970, 40.055992, 47.060703>,  <36.030045, 40.256947, 47.032169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.901970, 40.055992, 47.060703>,  <35.688515, 39.721069, 47.108261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901970, 40.055992, 47.060703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084361, -0.192589, -0.977647,
		-0.841492, 0.511684, -0.173410,
		0.533643, 0.837311, -0.118896,
		36.062061, 40.307186, 47.025036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986755, 40.026386, 47.205978>,  <35.688515, 39.721069, 47.108261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986755, 40.026386, 47.205978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592392, 39.965561, 47.178089>,  <34.355774, 39.929066, 47.161354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592392, 39.965561, 47.178089>,  <34.986755, 40.026386, 47.205978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592392, 39.965561, 47.178089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059865, -0.068472, 0.995855,
		-0.156205, 0.985996, 0.058404,
		-0.985909, -0.152061, -0.069722,
		34.296619, 39.919941, 47.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699379, 40.411823, 47.774158>,  <34.986755, 40.026386, 47.205978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699379, 40.411823, 47.774158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441525, 40.121429, 47.678337>,  <34.286812, 39.947193, 47.620846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441525, 40.121429, 47.678337>,  <34.699379, 40.411823, 47.774158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441525, 40.121429, 47.678337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140860, -0.195188, 0.970598,
		-0.751400, 0.659427, 0.023563,
		-0.644637, -0.725988, -0.239551,
		34.248135, 39.903633, 47.606472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202751, 40.471031, 48.322750>,  <34.699379, 40.411823, 47.774158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202751, 40.471031, 48.322750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141346, 40.111206, 48.159180>,  <34.104504, 39.895309, 48.061039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141346, 40.111206, 48.159180>,  <34.202751, 40.471031, 48.322750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141346, 40.111206, 48.159180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073028, -0.402371, 0.912559,
		-0.985444, 0.169956, -0.003923,
		-0.153516, -0.899562, -0.408926,
		34.095291, 39.841339, 48.036503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556480, 40.156761, 48.583611>,  <34.202751, 40.471031, 48.322750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556480, 40.156761, 48.583611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821213, 39.884956, 48.456970>,  <33.980053, 39.721874, 48.380985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821213, 39.884956, 48.456970>,  <33.556480, 40.156761, 48.583611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821213, 39.884956, 48.456970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105864, -0.502821, 0.857883,
		-0.742140, -0.534257, -0.404718,
		0.661831, -0.679515, -0.316605,
		34.019764, 39.681103, 48.361988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346996, 39.595085, 48.973507>,  <33.556480, 40.156761, 48.583611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346996, 39.595085, 48.973507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690125, 39.452507, 48.825405>,  <33.896000, 39.366962, 48.736542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690125, 39.452507, 48.825405>,  <33.346996, 39.595085, 48.973507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690125, 39.452507, 48.825405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105655, -0.582729, 0.805769,
		-0.502968, -0.730327, -0.462218,
		0.857823, -0.356440, -0.370257,
		33.947472, 39.345573, 48.714329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402634, 38.763336, 49.111938>,  <33.346996, 39.595085, 48.973507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402634, 38.763336, 49.111938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757153, 38.944218, 49.071976>,  <33.969864, 39.052746, 49.047997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757153, 38.944218, 49.071976>,  <33.402634, 38.763336, 49.111938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757153, 38.944218, 49.071976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262432, -0.312666, 0.912891,
		0.381573, -0.835316, -0.395789,
		0.886302, 0.452203, -0.099909,
		34.023045, 39.079880, 49.042004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774357, 38.427780, 49.543720>,  <33.402634, 38.763336, 49.111938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774357, 38.427780, 49.543720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011257, 38.744617, 49.484623>,  <34.153397, 38.934719, 49.449165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011257, 38.744617, 49.484623>,  <33.774357, 38.427780, 49.543720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011257, 38.744617, 49.484623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372011, -0.106160, 0.922138,
		0.714735, -0.601098, -0.357541,
		0.592251, 0.792093, -0.147739,
		34.188934, 38.982246, 49.440300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021587, 37.722866, 49.473869>,  <33.774357, 38.427780, 49.543720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021587, 37.722866, 49.473869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778004, 37.408092, 49.513691>,  <33.631855, 37.219231, 49.537582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778004, 37.408092, 49.513691>,  <34.021587, 37.722866, 49.473869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778004, 37.408092, 49.513691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189707, 0.022630, -0.981580,
		0.770182, -0.616627, -0.163067,
		-0.608959, -0.786930, 0.099550,
		33.595318, 37.172012, 49.543556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268639, 37.128132, 48.932522>,  <34.021587, 37.722866, 49.473869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268639, 37.128132, 48.932522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891224, 37.064903, 49.048977>,  <33.664776, 37.026966, 49.118851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891224, 37.064903, 49.048977>,  <34.268639, 37.128132, 48.932522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891224, 37.064903, 49.048977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293882, -0.006247, -0.955821,
		0.152908, -0.987408, -0.040560,
		-0.943532, -0.158073, 0.291136,
		33.608166, 37.017483, 49.136318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972820, 36.694202, 48.315693>,  <34.268639, 37.128132, 48.932522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972820, 36.694202, 48.315693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655941, 36.815899, 48.527302>,  <33.465813, 36.888916, 48.654266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655941, 36.815899, 48.527302>,  <33.972820, 36.694202, 48.315693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655941, 36.815899, 48.527302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570684, -0.062189, -0.818811,
		-0.216217, -0.950563, 0.222891,
		-0.792193, 0.304242, 0.529025,
		33.418282, 36.907169, 48.686008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332176, 36.291073, 48.064045>,  <33.972820, 36.694202, 48.315693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332176, 36.291073, 48.064045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196156, 36.624542, 48.238106>,  <33.114544, 36.824623, 48.342541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196156, 36.624542, 48.238106>,  <33.332176, 36.291073, 48.064045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196156, 36.624542, 48.238106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674685, 0.106072, -0.730445,
		-0.655108, -0.541979, 0.526395,
		-0.340050, 0.833672, 0.435153,
		33.094139, 36.874645, 48.368652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626007, 36.282188, 48.106033>,  <33.332176, 36.291073, 48.064045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626007, 36.282188, 48.106033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688011, 36.675968, 48.139080>,  <32.725212, 36.912235, 48.158909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688011, 36.675968, 48.139080>,  <32.626007, 36.282188, 48.106033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688011, 36.675968, 48.139080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823982, 0.174970, -0.538925,
		-0.545001, 0.015464, 0.838293,
		0.155010, 0.984452, 0.082617,
		32.734512, 36.971302, 48.163864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983343, 36.529743, 48.140358>,  <32.626007, 36.282188, 48.106033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983343, 36.529743, 48.140358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236115, 36.817928, 48.026100>,  <32.387779, 36.990841, 47.957546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236115, 36.817928, 48.026100>,  <31.983343, 36.529743, 48.140358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236115, 36.817928, 48.026100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524175, 0.125826, -0.842264,
		-0.570882, 0.681978, 0.457164,
		0.631929, 0.720467, -0.285645,
		32.425694, 37.034069, 47.940407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586170, 37.198009, 47.941238>,  <31.983343, 36.529743, 48.140358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586170, 37.198009, 47.941238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929480, 37.204189, 47.736053>,  <32.135464, 37.207897, 47.612942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929480, 37.204189, 47.736053>,  <31.586170, 37.198009, 47.941238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929480, 37.204189, 47.736053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512286, 0.085209, -0.854578,
		0.030503, 0.996243, 0.081049,
		0.858273, 0.015453, -0.512960,
		32.186962, 37.208824, 47.582165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.325832, 37.542835, 52.377895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.416958, 37.889507, 52.200367>,  <38.471634, 38.097511, 52.093849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.416958, 37.889507, 52.200367>,  <38.325832, 37.542835, 52.377895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416958, 37.889507, 52.200367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186521, -0.408522, -0.893487,
		-0.955674, 0.286327, 0.068588,
		0.227810, 0.866675, -0.443820,
		38.485302, 38.149509, 52.067223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865154, 37.565895, 51.736633>,  <38.325832, 37.542835, 52.377895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865154, 37.565895, 51.736633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.180668, 37.795452, 51.648575>,  <38.369976, 37.933186, 51.595741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.180668, 37.795452, 51.648575>,  <37.865154, 37.565895, 51.736633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180668, 37.795452, 51.648575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028975, -0.392472, -0.919307,
		-0.613988, 0.718756, -0.326204,
		0.788784, 0.573895, -0.220147,
		38.417301, 37.967621, 51.582531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697842, 37.947483, 51.127792>,  <37.865154, 37.565895, 51.736633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697842, 37.947483, 51.127792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.097210, 37.929256, 51.140961>,  <38.336830, 37.918320, 51.148861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.097210, 37.929256, 51.140961>,  <37.697842, 37.947483, 51.127792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097210, 37.929256, 51.140961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010514, -0.423898, -0.905649,
		0.055226, 0.904563, -0.422748,
		0.998418, -0.045571, 0.032920,
		38.396736, 37.915585, 51.150837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955261, 38.218224, 50.488712>,  <37.697842, 37.947483, 51.127792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955261, 38.218224, 50.488712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.237694, 37.996300, 50.664726>,  <38.407154, 37.863144, 50.770336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.237694, 37.996300, 50.664726>,  <37.955261, 38.218224, 50.488712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237694, 37.996300, 50.664726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105833, -0.531748, -0.840264,
		0.700173, 0.639869, -0.316743,
		0.706086, -0.554808, 0.440035,
		38.449520, 37.829857, 50.796738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446865, 38.054543, 49.896931>,  <37.955261, 38.218224, 50.488712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446865, 38.054543, 49.896931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.551781, 37.784554, 50.172791>,  <38.614731, 37.622559, 50.338306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.551781, 37.784554, 50.172791>,  <38.446865, 38.054543, 49.896931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551781, 37.784554, 50.172791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243292, -0.645329, -0.724127,
		0.933817, 0.357715, -0.005046,
		0.262287, -0.674974, 0.689649,
		38.630466, 37.582062, 50.379684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187290, 37.822624, 49.764385>,  <38.446865, 38.054543, 49.896931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187290, 37.822624, 49.764385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.022156, 37.528946, 49.979984>,  <38.923077, 37.352737, 50.109344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.022156, 37.528946, 49.979984>,  <39.187290, 37.822624, 49.764385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022156, 37.528946, 49.979984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375361, -0.676337, -0.633776,
		0.829862, -0.059326, 0.554805,
		-0.412834, -0.734199, 0.538998,
		38.898304, 37.308685, 50.141685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683636, 37.237404, 49.906181>,  <39.187290, 37.822624, 49.764385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683636, 37.237404, 49.906181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.326374, 37.063847, 49.953548>,  <39.112019, 36.959713, 49.981968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.326374, 37.063847, 49.953548>,  <39.683636, 37.237404, 49.906181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326374, 37.063847, 49.953548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185227, -0.594779, -0.782259,
		0.409846, -0.676741, 0.611595,
		-0.893150, -0.433889, 0.118417,
		39.058430, 36.933681, 49.989075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835140, 36.611820, 49.695023>,  <39.683636, 37.237404, 49.906181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835140, 36.611820, 49.695023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.436703, 36.631001, 49.665352>,  <39.197639, 36.642509, 49.647549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.436703, 36.631001, 49.665352>,  <39.835140, 36.611820, 49.695023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436703, 36.631001, 49.665352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025938, -0.643954, -0.764624,
		-0.084434, -0.763559, 0.640193,
		-0.996091, 0.047955, -0.074177,
		39.137875, 36.645386, 49.643101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626236, 35.887939, 49.645466>,  <39.835140, 36.611820, 49.695023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626236, 35.887939, 49.645466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.347130, 36.120926, 49.478676>,  <39.179668, 36.260715, 49.378601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.347130, 36.120926, 49.478676>,  <39.626236, 35.887939, 49.645466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347130, 36.120926, 49.478676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051092, -0.621082, -0.782079,
		-0.714505, -0.524401, 0.463126,
		-0.697762, 0.582461, -0.416973,
		39.137802, 36.295666, 49.353584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087669, 35.392509, 49.508598>,  <39.626236, 35.887939, 49.645466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087669, 35.392509, 49.508598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.025646, 35.711952, 49.275986>,  <38.988430, 35.903618, 49.136417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.025646, 35.711952, 49.275986>,  <39.087669, 35.392509, 49.508598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025646, 35.711952, 49.275986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038532, -0.583314, -0.811333,
		-0.987153, -0.148214, 0.059678,
		-0.155062, 0.798610, -0.581531,
		38.979126, 35.951534, 49.101528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461300, 35.277416, 49.082283>,  <39.087669, 35.392509, 49.508598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461300, 35.277416, 49.082283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703686, 35.529278, 48.887821>,  <38.849117, 35.680397, 48.771145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703686, 35.529278, 48.887821>,  <38.461300, 35.277416, 49.082283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703686, 35.529278, 48.887821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301680, -0.383586, -0.872841,
		-0.736071, 0.675570, -0.042483,
		0.605960, 0.629657, -0.486153,
		38.885475, 35.718174, 48.741974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986355, 35.548759, 48.607506>,  <38.461300, 35.277416, 49.082283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986355, 35.548759, 48.607506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.361591, 35.571926, 48.470901>,  <38.586735, 35.585827, 48.388939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.361591, 35.571926, 48.470901>,  <37.986355, 35.548759, 48.607506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361591, 35.571926, 48.470901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280494, -0.451471, -0.847052,
		-0.203244, 0.890404, -0.407275,
		0.938091, 0.057920, -0.341512,
		38.643017, 35.589302, 48.368446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389843, 35.747597, 48.101295>,  <37.986355, 35.548759, 48.607506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389843, 35.747597, 48.101295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.245983, 35.374386, 48.105347>,  <37.159668, 35.150459, 48.107777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.245983, 35.374386, 48.105347>,  <37.389843, 35.747597, 48.101295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245983, 35.374386, 48.105347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402366, 0.164874, 0.900510,
		-0.841874, 0.319794, -0.434718,
		-0.359651, -0.933032, 0.010129,
		37.138088, 35.094475, 48.108387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693104, 35.768879, 48.422279>,  <37.389843, 35.747597, 48.101295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693104, 35.768879, 48.422279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847618, 35.402744, 48.467781>,  <36.940327, 35.183064, 48.495083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847618, 35.402744, 48.467781>,  <36.693104, 35.768879, 48.422279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847618, 35.402744, 48.467781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324035, -0.019198, 0.945850,
		-0.863588, -0.402232, -0.304017,
		0.386287, -0.915337, 0.113758,
		36.963505, 35.128143, 48.501907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149620, 35.275246, 48.705616>,  <36.693104, 35.768879, 48.422279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149620, 35.275246, 48.705616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495564, 35.113625, 48.824791>,  <36.703129, 35.016651, 48.896297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495564, 35.113625, 48.824791>,  <36.149620, 35.275246, 48.705616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495564, 35.113625, 48.824791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357899, -0.080077, 0.930320,
		-0.352037, -0.911226, -0.213864,
		0.864857, -0.404049, 0.297937,
		36.755020, 34.992409, 48.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924839, 34.752773, 49.134884>,  <36.149620, 35.275246, 48.705616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924839, 34.752773, 49.134884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.303833, 34.824944, 49.240494>,  <36.531231, 34.868248, 49.303860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.303833, 34.824944, 49.240494>,  <35.924839, 34.752773, 49.134884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303833, 34.824944, 49.240494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280365, 0.071558, 0.957223,
		0.153819, -0.980981, 0.118387,
		0.947489, 0.180431, 0.264025,
		36.588081, 34.879070, 49.319702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173710, 34.201790, 49.562927>,  <35.924839, 34.752773, 49.134884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173710, 34.201790, 49.562927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.443748, 34.485424, 49.644356>,  <36.605774, 34.655605, 49.693211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.443748, 34.485424, 49.644356>,  <36.173710, 34.201790, 49.562927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443748, 34.485424, 49.644356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308808, 0.021019, 0.950892,
		0.669982, -0.704812, 0.233161,
		0.675101, 0.709083, 0.203569,
		36.646278, 34.698151, 49.705425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484253, 34.012547, 50.145023>,  <36.173710, 34.201790, 49.562927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484253, 34.012547, 50.145023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.546555, 34.406879, 50.120090>,  <36.583935, 34.643478, 50.105129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.546555, 34.406879, 50.120090>,  <36.484253, 34.012547, 50.145023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546555, 34.406879, 50.120090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171764, 0.089169, 0.981094,
		0.972748, -0.142098, 0.183217,
		0.155749, 0.985828, -0.062331,
		36.593281, 34.702629, 50.101391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870934, 34.080544, 50.742043>,  <36.484253, 34.012547, 50.145023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870934, 34.080544, 50.742043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733463, 34.444748, 50.650074>,  <36.650982, 34.663269, 50.594894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733463, 34.444748, 50.650074>,  <36.870934, 34.080544, 50.742043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733463, 34.444748, 50.650074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208422, 0.164773, 0.964059,
		0.915668, 0.379243, 0.133141,
		-0.343674, 0.910508, -0.229920,
		36.630360, 34.717899, 50.581097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078041, 34.552330, 51.279396>,  <36.870934, 34.080544, 50.742043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078041, 34.552330, 51.279396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.753391, 34.716690, 51.113300>,  <36.558601, 34.815308, 51.013641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.753391, 34.716690, 51.113300>,  <37.078041, 34.552330, 51.279396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753391, 34.716690, 51.113300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298264, 0.319703, 0.899349,
		0.502298, 0.853785, -0.136922,
		-0.811625, 0.410902, -0.415240,
		36.509903, 34.839962, 50.988728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950981, 35.197540, 51.651054>,  <37.078041, 34.552330, 51.279396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950981, 35.197540, 51.651054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.604630, 35.123001, 51.465355>,  <36.396820, 35.078278, 51.353935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.604630, 35.123001, 51.465355>,  <36.950981, 35.197540, 51.651054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604630, 35.123001, 51.465355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481663, 0.059927, 0.874305,
		-0.135101, 0.980655, -0.141645,
		-0.865880, -0.186345, -0.464249,
		36.344864, 35.067097, 51.326080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505264, 35.707729, 51.953045>,  <36.950981, 35.197540, 51.651054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505264, 35.707729, 51.953045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296459, 35.405586, 51.794586>,  <36.171177, 35.224300, 51.699509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296459, 35.405586, 51.794586>,  <36.505264, 35.707729, 51.953045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296459, 35.405586, 51.794586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613190, 0.009512, 0.789878,
		-0.592871, 0.655246, -0.468142,
		-0.522017, -0.755356, -0.396151,
		36.139854, 35.178978, 51.675739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809631, 35.826443, 52.075089>,  <36.505264, 35.707729, 51.953045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809631, 35.826443, 52.075089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805244, 35.431850, 52.009689>,  <35.802612, 35.195095, 51.970451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805244, 35.431850, 52.009689>,  <35.809631, 35.826443, 52.075089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805244, 35.431850, 52.009689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575176, -0.127526, 0.808029,
		-0.817957, 0.102899, -0.566003,
		-0.010965, -0.986484, -0.163496,
		35.801956, 35.135906, 51.960640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091312, 35.694508, 52.219917>,  <35.809631, 35.826443, 52.075089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091312, 35.694508, 52.219917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.281067, 35.342491, 52.211132>,  <35.394920, 35.131283, 52.205860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.281067, 35.342491, 52.211132>,  <35.091312, 35.694508, 52.219917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281067, 35.342491, 52.211132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688861, -0.386637, 0.613175,
		-0.548111, -0.275754, -0.789642,
		0.474390, -0.880041, -0.021964,
		35.423386, 35.078480, 52.204544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576462, 35.283764, 52.105526>,  <35.091312, 35.694508, 52.219917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576462, 35.283764, 52.105526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.873672, 35.051739, 52.239059>,  <35.051998, 34.912525, 52.319180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.873672, 35.051739, 52.239059>,  <34.576462, 35.283764, 52.105526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873672, 35.051739, 52.239059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637191, -0.460576, 0.617946,
		-0.204690, -0.671865, -0.711828,
		0.743028, -0.580057, 0.333831,
		35.096581, 34.877720, 52.339207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434937, 34.577374, 52.141762>,  <34.576462, 35.283764, 52.105526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434937, 34.577374, 52.141762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717525, 34.611126, 52.422840>,  <34.887077, 34.631378, 52.591488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717525, 34.611126, 52.422840>,  <34.434937, 34.577374, 52.141762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717525, 34.611126, 52.422840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570377, -0.519935, 0.635875,
		0.419015, -0.850027, -0.319187,
		0.706468, 0.084385, 0.702696,
		34.929466, 34.636440, 52.633648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861301, 35.009457, 51.781898>,  <34.434937, 34.577374, 52.141762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861301, 35.009457, 51.781898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.809086, 35.384850, 51.909782>,  <33.777756, 35.610085, 51.986511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.809086, 35.384850, 51.909782>,  <33.861301, 35.009457, 51.781898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809086, 35.384850, 51.909782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179785, 0.294712, -0.938521,
		-0.975006, -0.179993, 0.130254,
		-0.130540, 0.938482, 0.319706,
		33.769924, 35.666393, 52.005695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234417, 35.190624, 51.388195>,  <33.861301, 35.009457, 51.781898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234417, 35.190624, 51.388195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.453976, 35.499252, 51.516815>,  <33.585712, 35.684429, 51.593987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.453976, 35.499252, 51.516815>,  <33.234417, 35.190624, 51.388195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453976, 35.499252, 51.516815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126472, 0.456905, -0.880479,
		-0.826267, 0.442626, 0.348376,
		0.548897, 0.771570, 0.321546,
		33.618645, 35.730724, 51.613277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879559, 35.721062, 51.089252>,  <33.234417, 35.190624, 51.388195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879559, 35.721062, 51.089252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.250034, 35.854568, 51.159420>,  <33.472321, 35.934673, 51.201523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.250034, 35.854568, 51.159420>,  <32.879559, 35.721062, 51.089252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250034, 35.854568, 51.159420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002917, 0.471563, -0.881827,
		-0.377052, 0.816226, 0.437729,
		0.926187, 0.333772, 0.175423,
		33.527889, 35.954700, 51.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830704, 36.328941, 50.968246>,  <32.879559, 35.721062, 51.089252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830704, 36.328941, 50.968246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.227863, 36.287781, 50.944347>,  <33.466160, 36.263084, 50.930008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.227863, 36.287781, 50.944347>,  <32.830704, 36.328941, 50.968246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227863, 36.287781, 50.944347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009683, 0.430576, -0.902503,
		0.118593, 0.896670, 0.426520,
		0.992896, -0.102900, -0.059746,
		33.525734, 36.256912, 50.926422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041977, 36.966686, 50.844379>,  <32.830704, 36.328941, 50.968246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041977, 36.966686, 50.844379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.346817, 36.736488, 50.725716>,  <33.529720, 36.598370, 50.654518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.346817, 36.736488, 50.725716>,  <33.041977, 36.966686, 50.844379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346817, 36.736488, 50.725716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023401, 0.482380, -0.875649,
		0.647034, 0.660392, 0.381090,
		0.762102, -0.575492, -0.296662,
		33.575447, 36.563839, 50.636719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573486, 37.452862, 50.702183>,  <33.041977, 36.966686, 50.844379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573486, 37.452862, 50.702183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644360, 37.117851, 50.495438>,  <33.686882, 36.916843, 50.371391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644360, 37.117851, 50.495438>,  <33.573486, 37.452862, 50.702183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644360, 37.117851, 50.495438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064922, 0.514085, -0.855279,
		0.982034, 0.185099, 0.036714,
		0.177185, -0.837529, -0.516866,
		33.697514, 36.866592, 50.340378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952557, 37.705730, 50.217281>,  <33.573486, 37.452862, 50.702183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952557, 37.705730, 50.217281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.800854, 37.359787, 50.085716>,  <33.709831, 37.152222, 50.006775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.800854, 37.359787, 50.085716>,  <33.952557, 37.705730, 50.217281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800854, 37.359787, 50.085716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191298, 0.421083, -0.886620,
		0.905299, -0.273338, -0.325145,
		-0.379260, -0.864856, -0.328917,
		33.687077, 37.100330, 49.987041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383591, 38.180241, 49.946671>,  <33.952557, 37.705730, 50.217281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383591, 38.180241, 49.946671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.402603, 38.575638, 49.889233>,  <34.414009, 38.812878, 49.854771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.402603, 38.575638, 49.889233>,  <34.383591, 38.180241, 49.946671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402603, 38.575638, 49.889233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039777, 0.141771, 0.989100,
		0.998078, -0.052722, -0.032581,
		0.047529, 0.988495, -0.143596,
		34.416862, 38.872185, 49.846153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953995, 38.405590, 50.243942>,  <34.383591, 38.180241, 49.946671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953995, 38.405590, 50.243942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.733952, 38.739517, 50.235367>,  <34.601925, 38.939873, 50.230221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.733952, 38.739517, 50.235367>,  <34.953995, 38.405590, 50.243942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733952, 38.739517, 50.235367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211039, 0.163813, 0.963653,
		0.807984, 0.525594, -0.266294,
		-0.550113, 0.834815, -0.021437,
		34.568916, 38.989964, 50.228935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287075, 38.976978, 50.617237>,  <34.953995, 38.405590, 50.243942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287075, 38.976978, 50.617237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.918369, 39.130951, 50.598560>,  <34.697147, 39.223335, 50.587353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.918369, 39.130951, 50.598560>,  <35.287075, 38.976978, 50.617237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918369, 39.130951, 50.598560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086238, 0.320920, 0.943172,
		0.378038, 0.865356, -0.329008,
		-0.921765, 0.384928, -0.046693,
		34.641838, 39.246429, 50.584553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352715, 39.556572, 51.128906>,  <35.287075, 38.976978, 50.617237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352715, 39.556572, 51.128906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.962296, 39.505054, 51.058773>,  <34.728043, 39.474144, 51.016693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.962296, 39.505054, 51.058773>,  <35.352715, 39.556572, 51.128906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962296, 39.505054, 51.058773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205711, 0.284108, 0.936464,
		-0.070799, 0.950102, -0.303797,
		-0.976048, -0.128795, -0.175332,
		34.669479, 39.466415, 51.006172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985073, 40.240482, 51.381355>,  <35.352715, 39.556572, 51.128906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985073, 40.240482, 51.381355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717476, 39.943260, 51.388523>,  <34.556919, 39.764927, 51.392822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717476, 39.943260, 51.388523>,  <34.985073, 40.240482, 51.381355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717476, 39.943260, 51.388523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211575, 0.213487, 0.953761,
		-0.712523, 0.634264, -0.300032,
		-0.668990, -0.743056, 0.017920,
		34.516781, 39.720345, 51.393898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289772, 40.460941, 51.554550>,  <34.985073, 40.240482, 51.381355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289772, 40.460941, 51.554550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.303188, 40.083256, 51.685593>,  <34.311237, 39.856644, 51.764217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.303188, 40.083256, 51.685593>,  <34.289772, 40.460941, 51.554550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303188, 40.083256, 51.685593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416815, 0.284711, 0.863252,
		-0.908372, -0.165505, -0.384015,
		0.033539, -0.944218, 0.327609,
		34.313251, 39.799992, 51.783875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609234, 40.391506, 51.973881>,  <34.289772, 40.460941, 51.554550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609234, 40.391506, 51.973881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891697, 40.125179, 52.070240>,  <34.061172, 39.965382, 52.128056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891697, 40.125179, 52.070240>,  <33.609234, 40.391506, 51.973881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891697, 40.125179, 52.070240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008950, 0.331797, 0.943308,
		-0.708002, -0.668276, 0.228341,
		0.706154, -0.665821, 0.240894,
		34.103542, 39.925434, 52.142509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351788, 40.160892, 52.664154>,  <33.609234, 40.391506, 51.973881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351788, 40.160892, 52.664154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.720371, 40.010559, 52.624851>,  <33.941521, 39.920357, 52.601269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.720371, 40.010559, 52.624851>,  <33.351788, 40.160892, 52.664154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720371, 40.010559, 52.624851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211921, 0.274369, 0.937983,
		-0.325571, -0.885138, 0.332468,
		0.921463, -0.375837, -0.098252,
		33.996811, 39.897808, 52.595375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472820, 39.667503, 53.257504>,  <33.351788, 40.160892, 52.664154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472820, 39.667503, 53.257504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839161, 39.762581, 53.128067>,  <34.058968, 39.819630, 53.050407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839161, 39.762581, 53.128067>,  <33.472820, 39.667503, 53.257504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839161, 39.762581, 53.128067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235198, 0.335567, 0.912183,
		0.325403, -0.911536, 0.251427,
		0.915857, 0.237692, -0.323586,
		34.113918, 39.833889, 53.030991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.281376, 38.816555, 36.743790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669968, 38.786518, 36.833759>,  <33.903122, 38.768497, 36.887741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669968, 38.786518, 36.833759>,  <33.281376, 38.816555, 36.743790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669968, 38.786518, 36.833759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237011, -0.277757, 0.930955,
		-0.007430, -0.957712, -0.287631,
		0.971478, -0.075089, 0.224924,
		33.961411, 38.763992, 36.901237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449314, 38.070129, 36.997047>,  <33.281376, 38.816555, 36.743790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449314, 38.070129, 36.997047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702827, 38.347290, 37.134575>,  <33.854935, 38.513588, 37.217091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702827, 38.347290, 37.134575>,  <33.449314, 38.070129, 36.997047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702827, 38.347290, 37.134575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050193, -0.406709, 0.912178,
		0.771884, -0.595377, -0.222984,
		0.633779, 0.692903, 0.343816,
		33.892960, 38.555161, 37.237720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906151, 37.763306, 37.417351>,  <33.449314, 38.070129, 36.997047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906151, 37.763306, 37.417351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956249, 38.139393, 37.544029>,  <33.986309, 38.365047, 37.620037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956249, 38.139393, 37.544029>,  <33.906151, 37.763306, 37.417351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956249, 38.139393, 37.544029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012183, -0.317726, 0.948104,
		0.992051, -0.122605, -0.028339,
		0.125246, 0.940222, 0.316694,
		33.993824, 38.421459, 37.639038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373276, 37.750385, 38.038235>,  <33.906151, 37.763306, 37.417351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373276, 37.750385, 38.038235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220169, 38.119118, 38.062603>,  <34.128307, 38.340359, 38.077225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220169, 38.119118, 38.062603>,  <34.373276, 37.750385, 38.038235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220169, 38.119118, 38.062603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081353, -0.099323, 0.991724,
		0.920258, 0.374639, 0.113011,
		-0.382763, 0.921835, 0.060925,
		34.105339, 38.395668, 38.080879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850636, 38.215881, 38.515091>,  <34.373276, 37.750385, 38.038235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850636, 38.215881, 38.515091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485977, 38.380154, 38.508831>,  <34.267181, 38.478718, 38.505077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485977, 38.380154, 38.508831>,  <34.850636, 38.215881, 38.515091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485977, 38.380154, 38.508831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031510, -0.031890, 0.998995,
		0.409772, 0.911220, 0.042013,
		-0.911644, 0.410684, -0.015645,
		34.212482, 38.503357, 38.504139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796696, 38.609581, 39.013065>,  <34.850636, 38.215881, 38.515091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796696, 38.609581, 39.013065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405682, 38.603813, 38.928951>,  <34.171074, 38.600353, 38.878483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405682, 38.603813, 38.928951>,  <34.796696, 38.609581, 39.013065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405682, 38.603813, 38.928951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210661, 0.099922, 0.972439,
		0.006989, 0.994891, -0.100715,
		-0.977534, -0.014420, -0.210283,
		34.112423, 38.599487, 38.865868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411572, 39.203529, 39.348934>,  <34.796696, 38.609581, 39.013065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411572, 39.203529, 39.348934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111389, 38.949921, 39.274277>,  <33.931278, 38.797756, 39.229481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111389, 38.949921, 39.274277>,  <34.411572, 39.203529, 39.348934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111389, 38.949921, 39.274277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380124, 0.183034, 0.906645,
		-0.540669, 0.751343, -0.378365,
		-0.750455, -0.634021, -0.186643,
		33.886253, 38.759716, 39.218285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831074, 39.551540, 39.567600>,  <34.411572, 39.203529, 39.348934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831074, 39.551540, 39.567600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778202, 39.155376, 39.583675>,  <33.746479, 38.917679, 39.593323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778202, 39.155376, 39.583675>,  <33.831074, 39.551540, 39.567600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778202, 39.155376, 39.583675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261639, 0.073969, 0.962327,
		-0.956072, 0.116686, -0.268907,
		-0.132181, -0.990411, 0.040190,
		33.738548, 38.858253, 39.595734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155575, 39.481308, 39.935062>,  <33.831074, 39.551540, 39.567600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155575, 39.481308, 39.935062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312008, 39.113728, 39.955376>,  <33.405869, 38.893177, 39.967564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312008, 39.113728, 39.955376>,  <33.155575, 39.481308, 39.935062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312008, 39.113728, 39.955376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312740, -0.080796, 0.946396,
		-0.865593, -0.385995, -0.318992,
		0.391078, -0.918956, 0.050780,
		33.429333, 38.838039, 39.970608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703842, 39.132252, 40.376152>,  <33.155575, 39.481308, 39.935062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703842, 39.132252, 40.376152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047108, 38.926994, 40.382355>,  <33.253067, 38.803841, 40.386078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047108, 38.926994, 40.382355>,  <32.703842, 39.132252, 40.376152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047108, 38.926994, 40.382355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027716, -0.016144, 0.999486,
		-0.512628, -0.858152, -0.028076,
		0.858163, -0.513142, 0.015509,
		33.304558, 38.773052, 40.387009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561024, 38.630913, 40.839695>,  <32.703842, 39.132252, 40.376152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561024, 38.630913, 40.839695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958473, 38.673603, 40.825161>,  <33.196941, 38.699215, 40.816441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958473, 38.673603, 40.825161>,  <32.561024, 38.630913, 40.839695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958473, 38.673603, 40.825161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021744, 0.134797, 0.990635,
		0.110607, -0.985111, 0.131617,
		0.993627, 0.106709, -0.036330,
		33.256561, 38.705620, 40.814262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779724, 38.228863, 41.284954>,  <32.561024, 38.630913, 40.839695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779724, 38.228863, 41.284954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099087, 38.466644, 41.246658>,  <33.290707, 38.609314, 41.223682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099087, 38.466644, 41.246658>,  <32.779724, 38.228863, 41.284954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099087, 38.466644, 41.246658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077733, 0.259430, 0.962628,
		0.597078, -0.761129, 0.253340,
		0.798408, 0.594457, -0.095735,
		33.338608, 38.644981, 41.217937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677677, 37.596348, 41.745403>,  <32.779724, 38.228863, 41.284954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677677, 37.596348, 41.745403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294060, 37.488541, 41.780281>,  <32.063889, 37.423855, 41.801208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294060, 37.488541, 41.780281>,  <32.677677, 37.596348, 41.745403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294060, 37.488541, 41.780281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063851, -0.094200, -0.993504,
		0.275979, -0.958377, 0.073133,
		-0.959040, -0.269517, 0.087190,
		32.006348, 37.407684, 41.806438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593346, 36.948582, 41.369595>,  <32.677677, 37.596348, 41.745403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593346, 36.948582, 41.369595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245842, 37.144833, 41.396545>,  <32.037338, 37.262585, 41.412716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245842, 37.144833, 41.396545>,  <32.593346, 36.948582, 41.369595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245842, 37.144833, 41.396545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207102, -0.236354, -0.949339,
		-0.449851, -0.838700, 0.306946,
		-0.868759, 0.490631, 0.067372,
		31.985214, 37.292023, 41.416756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092999, 36.494583, 41.159359>,  <32.593346, 36.948582, 41.369595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092999, 36.494583, 41.159359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917818, 36.853996, 41.147766>,  <31.812710, 37.069645, 41.140812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917818, 36.853996, 41.147766>,  <32.092999, 36.494583, 41.159359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917818, 36.853996, 41.147766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282465, -0.168139, -0.944427,
		-0.853470, -0.405428, 0.327440,
		-0.437953, 0.898530, -0.028983,
		31.786432, 37.123554, 41.139072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366785, 36.362061, 41.041893>,  <32.092999, 36.494583, 41.159359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366785, 36.362061, 41.041893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464298, 36.722435, 40.898293>,  <31.522806, 36.938660, 40.812134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464298, 36.722435, 40.898293>,  <31.366785, 36.362061, 41.041893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464298, 36.722435, 40.898293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349678, -0.263615, -0.899017,
		-0.904597, 0.344698, 0.250774,
		0.243782, 0.900939, -0.358999,
		31.537434, 36.992718, 40.790592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831892, 36.506741, 40.588409>,  <31.366785, 36.362061, 41.041893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831892, 36.506741, 40.588409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131569, 36.752121, 40.488503>,  <31.311375, 36.899349, 40.428558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131569, 36.752121, 40.488503>,  <30.831892, 36.506741, 40.588409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131569, 36.752121, 40.488503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326611, 0.014096, -0.945054,
		-0.576223, 0.789607, 0.210920,
		0.749194, 0.613451, -0.249772,
		31.356327, 36.936157, 40.413570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481110, 36.968906, 40.290020>,  <30.831892, 36.506741, 40.588409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481110, 36.968906, 40.290020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867941, 36.953789, 40.189354>,  <31.100039, 36.944717, 40.128956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867941, 36.953789, 40.189354>,  <30.481110, 36.968906, 40.290020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867941, 36.953789, 40.189354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254005, -0.204028, -0.945439,
		-0.015615, 0.978235, -0.206910,
		0.967077, -0.037793, -0.251663,
		31.158064, 36.942451, 40.113853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431128, 37.226204, 39.676506>,  <30.481110, 36.968906, 40.290020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431128, 37.226204, 39.676506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797066, 37.064953, 39.667130>,  <31.016628, 36.968201, 39.661503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797066, 37.064953, 39.667130>,  <30.431128, 37.226204, 39.676506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797066, 37.064953, 39.667130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207610, -0.419773, -0.883566,
		0.346352, 0.813190, -0.467720,
		0.914843, -0.403128, -0.023437,
		31.071518, 36.944016, 39.660099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737881, 37.409962, 39.060753>,  <30.431128, 37.226204, 39.676506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737881, 37.409962, 39.060753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947189, 37.088531, 39.174202>,  <31.072775, 36.895672, 39.242271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947189, 37.088531, 39.174202>,  <30.737881, 37.409962, 39.060753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947189, 37.088531, 39.174202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125220, -0.401725, -0.907159,
		0.842914, 0.439177, -0.310836,
		0.523274, -0.803580, 0.283626,
		31.104172, 36.847458, 39.259289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168507, 37.355499, 38.512939>,  <30.737881, 37.409962, 39.060753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168507, 37.355499, 38.512939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129143, 36.997017, 38.685970>,  <31.105524, 36.781925, 38.789787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129143, 36.997017, 38.685970>,  <31.168507, 37.355499, 38.512939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129143, 36.997017, 38.685970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189096, -0.409927, -0.892302,
		0.977015, -0.169610, -0.129129,
		-0.098410, -0.896210, 0.432578,
		31.099619, 36.728153, 38.815742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556276, 36.972984, 38.190983>,  <31.168507, 37.355499, 38.512939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556276, 36.972984, 38.190983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320950, 36.690746, 38.348980>,  <31.179754, 36.521404, 38.443779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320950, 36.690746, 38.348980>,  <31.556276, 36.972984, 38.190983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320950, 36.690746, 38.348980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025698, -0.504537, -0.863008,
		0.808223, -0.497571, 0.314959,
		-0.588316, -0.705596, 0.394991,
		31.144455, 36.479069, 38.467476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759493, 36.281334, 37.969318>,  <31.556276, 36.972984, 38.190983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759493, 36.281334, 37.969318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377707, 36.240631, 38.081490>,  <31.148634, 36.216209, 38.148792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377707, 36.240631, 38.081490>,  <31.759493, 36.281334, 37.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377707, 36.240631, 38.081490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154420, -0.635753, -0.756289,
		0.255242, -0.765156, 0.591091,
		-0.954466, -0.101761, 0.280426,
		31.091366, 36.210102, 38.165619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644529, 35.513779, 37.857681>,  <31.759493, 36.281334, 37.969318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644529, 35.513779, 37.857681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320679, 35.748375, 37.866920>,  <31.126369, 35.889133, 37.872463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320679, 35.748375, 37.866920>,  <31.644529, 35.513779, 37.857681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320679, 35.748375, 37.866920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323442, -0.412963, -0.851380,
		-0.489791, -0.696768, 0.524042,
		-0.809624, 0.586495, 0.023099,
		31.077791, 35.924324, 37.873852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849607, 34.858364, 37.934254>,  <31.644529, 35.513779, 37.857681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849607, 34.858364, 37.934254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492229, 34.792889, 38.101570>,  <31.277803, 34.753605, 38.201958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492229, 34.792889, 38.101570>,  <31.849607, 34.858364, 37.934254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492229, 34.792889, 38.101570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446273, -0.429149, 0.785284,
		0.050966, 0.888278, 0.456470,
		-0.893444, -0.163687, 0.418287,
		31.224195, 34.743782, 38.227055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474838, 34.634640, 38.249321>,  <31.849607, 34.858364, 37.934254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474838, 34.634640, 38.249321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264912, 34.507416, 38.565144>,  <32.138954, 34.431084, 38.754639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264912, 34.507416, 38.565144>,  <32.474838, 34.634640, 38.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264912, 34.507416, 38.565144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076178, -0.906299, -0.415716,
		0.847798, -0.278323, 0.451414,
		-0.524819, -0.318055, 0.789560,
		32.107468, 34.411999, 38.802013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880383, 35.128689, 38.594185>,  <32.474838, 34.634640, 38.249321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880383, 35.128689, 38.594185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003914, 34.856663, 38.328209>,  <33.078033, 34.693447, 38.168625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003914, 34.856663, 38.328209>,  <32.880383, 35.128689, 38.594185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003914, 34.856663, 38.328209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549327, -0.443182, 0.708399,
		-0.776443, -0.584042, 0.236708,
		0.308830, -0.680062, -0.664936,
		33.096561, 34.652645, 38.128727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986279, 34.471916, 38.956661>,  <32.880383, 35.128689, 38.594185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986279, 34.471916, 38.956661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214687, 34.511307, 38.630657>,  <33.351730, 34.534943, 38.435055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214687, 34.511307, 38.630657>,  <32.986279, 34.471916, 38.956661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214687, 34.511307, 38.630657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686978, -0.600840, 0.408720,
		-0.449441, -0.793281, -0.410743,
		0.571020, 0.098476, -0.815008,
		33.385994, 34.540848, 38.386154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086544, 33.734692, 38.681728>,  <32.986279, 34.471916, 38.956661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086544, 33.734692, 38.681728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356785, 34.028294, 38.654057>,  <33.518929, 34.204456, 38.637455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356785, 34.028294, 38.654057>,  <33.086544, 33.734692, 38.681728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356785, 34.028294, 38.654057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650129, -0.548879, 0.525418,
		0.347690, -0.399951, -0.848027,
		0.675606, 0.734010, -0.069180,
		33.559467, 34.248497, 38.633301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829475, 33.296394, 38.576931>,  <33.086544, 33.734692, 38.681728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829475, 33.296394, 38.576931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885548, 33.660690, 38.732315>,  <33.919189, 33.879269, 38.825546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885548, 33.660690, 38.732315>,  <33.829475, 33.296394, 38.576931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885548, 33.660690, 38.732315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491618, -0.404577, 0.771122,
		0.859454, 0.082878, -0.504451,
		0.140180, 0.910741, 0.388460,
		33.927601, 33.933914, 38.848854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597580, 33.336548, 38.644203>,  <33.829475, 33.296394, 38.576931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597580, 33.336548, 38.644203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388588, 33.575474, 38.887589>,  <34.263191, 33.718830, 39.033619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388588, 33.575474, 38.887589>,  <34.597580, 33.336548, 38.644203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388588, 33.575474, 38.887589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516349, -0.346223, 0.783271,
		0.678526, 0.723422, -0.127531,
		-0.522481, 0.597319, 0.608460,
		34.231842, 33.754669, 39.070126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014988, 33.720200, 39.056793>,  <34.597580, 33.336548, 38.644203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014988, 33.720200, 39.056793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700375, 33.729408, 39.303642>,  <34.511608, 33.734936, 39.451752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700375, 33.729408, 39.303642>,  <35.014988, 33.720200, 39.056793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700375, 33.729408, 39.303642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559616, -0.396020, 0.728010,
		0.261155, 0.917953, 0.298597,
		-0.786529, 0.023024, 0.617124,
		34.464417, 33.736317, 39.488781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321850, 33.774055, 39.691116>,  <35.014988, 33.720200, 39.056793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321850, 33.774055, 39.691116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947647, 33.715324, 39.819660>,  <34.723125, 33.680084, 39.896786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947647, 33.715324, 39.819660>,  <35.321850, 33.774055, 39.691116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947647, 33.715324, 39.819660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350863, -0.279210, 0.893833,
		-0.041516, 0.948938, 0.312720,
		-0.935506, -0.146830, 0.321356,
		34.666996, 33.671276, 39.916065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219715, 34.180965, 40.270168>,  <35.321850, 33.774055, 39.691116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219715, 34.180965, 40.270168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942928, 33.895065, 40.310787>,  <34.776855, 33.723526, 40.335159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942928, 33.895065, 40.310787>,  <35.219715, 34.180965, 40.270168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942928, 33.895065, 40.310787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324149, -0.181924, 0.928349,
		-0.645062, 0.675306, 0.357571,
		-0.691970, -0.714749, 0.101548,
		34.735336, 33.680641, 40.341251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850437, 34.349880, 40.897823>,  <35.219715, 34.180965, 40.270168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850437, 34.349880, 40.897823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782501, 33.957947, 40.855736>,  <34.741737, 33.722786, 40.830482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782501, 33.957947, 40.855736>,  <34.850437, 34.349880, 40.897823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782501, 33.957947, 40.855736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296028, -0.152570, 0.942916,
		-0.939958, 0.128999, 0.315972,
		-0.169843, -0.979838, -0.105222,
		34.731548, 33.663994, 40.824169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355164, 34.149944, 41.435253>,  <34.850437, 34.349880, 40.897823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355164, 34.149944, 41.435253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563271, 33.833447, 41.306721>,  <34.688137, 33.643547, 41.229603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563271, 33.833447, 41.306721>,  <34.355164, 34.149944, 41.435253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563271, 33.833447, 41.306721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204648, -0.249787, 0.946428,
		-0.829120, -0.558156, 0.031971,
		0.520269, -0.791244, -0.321329,
		34.719353, 33.596073, 41.210323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188187, 33.661736, 42.026527>,  <34.355164, 34.149944, 41.435253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188187, 33.661736, 42.026527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477249, 33.473881, 41.823662>,  <34.650688, 33.361168, 41.701942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477249, 33.473881, 41.823662>,  <34.188187, 33.661736, 42.026527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477249, 33.473881, 41.823662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528415, -0.097637, 0.843353,
		-0.445585, -0.877446, 0.177604,
		0.722656, -0.469634, -0.507160,
		34.694046, 33.332993, 41.671513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245766, 32.955612, 42.318020>,  <34.188187, 33.661736, 42.026527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245766, 32.955612, 42.318020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589390, 33.047218, 42.134903>,  <34.795563, 33.102180, 42.025032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589390, 33.047218, 42.134903>,  <34.245766, 32.955612, 42.318020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589390, 33.047218, 42.134903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509920, -0.304667, 0.804462,
		0.044757, -0.924517, -0.378504,
		0.859057, 0.229012, -0.457794,
		34.847107, 33.115921, 41.997566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761810, 32.462555, 42.540428>,  <34.245766, 32.955612, 42.318020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761810, 32.462555, 42.540428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970356, 32.780918, 42.417332>,  <35.095482, 32.971935, 42.343472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970356, 32.780918, 42.417332>,  <34.761810, 32.462555, 42.540428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970356, 32.780918, 42.417332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643530, -0.129881, 0.754321,
		0.560401, -0.591318, -0.579908,
		0.521363, 0.795911, -0.307746,
		35.126766, 33.019691, 42.325008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409924, 32.303764, 42.620338>,  <34.761810, 32.462555, 42.540428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409924, 32.303764, 42.620338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416409, 32.703400, 42.604500>,  <35.420300, 32.943180, 42.594997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416409, 32.703400, 42.604500>,  <35.409924, 32.303764, 42.620338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416409, 32.703400, 42.604500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652268, 0.019445, 0.757739,
		0.757815, -0.038112, -0.651356,
		0.016214, 0.999084, -0.039595,
		35.421272, 33.003124, 42.592621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116711, 32.425259, 42.682724>,  <35.409924, 32.303764, 42.620338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116711, 32.425259, 42.682724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932323, 32.766167, 42.781639>,  <35.821693, 32.970711, 42.840988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932323, 32.766167, 42.781639>,  <36.116711, 32.425259, 42.682724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932323, 32.766167, 42.781639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660571, 0.143460, 0.736929,
		0.592585, 0.503050, -0.629113,
		-0.460965, 0.852267, 0.247288,
		35.794033, 33.021847, 42.855827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565506, 32.970024, 42.850449>,  <36.116711, 32.425259, 42.682724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565506, 32.970024, 42.850449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232346, 33.104946, 43.025948>,  <36.032448, 33.185902, 43.131248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232346, 33.104946, 43.025948>,  <36.565506, 32.970024, 42.850449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232346, 33.104946, 43.025948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534495, 0.284734, 0.795765,
		0.143492, 0.897301, -0.417444,
		-0.832902, 0.337308, 0.438746,
		35.982475, 33.206139, 43.157570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824398, 33.479683, 43.311886>,  <36.565506, 32.970024, 42.850449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824398, 33.479683, 43.311886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445545, 33.467159, 43.439606>,  <36.218231, 33.459644, 43.516239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445545, 33.467159, 43.439606>,  <36.824398, 33.479683, 43.311886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445545, 33.467159, 43.439606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306854, 0.202179, 0.930034,
		-0.093671, 0.978848, -0.181885,
		-0.947136, -0.031305, 0.319302,
		36.161404, 33.457767, 43.535397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821560, 34.035805, 43.760426>,  <36.824398, 33.479683, 43.311886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821560, 34.035805, 43.760426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513824, 33.798115, 43.854240>,  <36.329182, 33.655499, 43.910530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513824, 33.798115, 43.854240>,  <36.821560, 34.035805, 43.760426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513824, 33.798115, 43.854240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180273, 0.150268, 0.972070,
		-0.612874, 0.790135, -0.008485,
		-0.769342, -0.594227, 0.234535,
		36.283020, 33.619846, 43.924603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445976, 34.446728, 44.156910>,  <36.821560, 34.035805, 43.760426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445976, 34.446728, 44.156910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361015, 34.062729, 44.229900>,  <36.310040, 33.832329, 44.273693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361015, 34.062729, 44.229900>,  <36.445976, 34.446728, 44.156910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361015, 34.062729, 44.229900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177107, 0.145821, 0.973329,
		-0.960999, 0.239054, 0.139049,
		-0.212402, -0.959994, 0.182472,
		36.297295, 33.774731, 44.284641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953964, 34.469891, 44.624962>,  <36.445976, 34.446728, 44.156910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953964, 34.469891, 44.624962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075645, 34.089886, 44.653084>,  <36.148655, 33.861885, 44.669956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075645, 34.089886, 44.653084>,  <35.953964, 34.469891, 44.624962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075645, 34.089886, 44.653084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222428, 0.142598, 0.964464,
		-0.926275, -0.277757, 0.254688,
		0.304205, -0.950009, 0.070304,
		36.166908, 33.804882, 44.674175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639542, 34.191891, 45.224998>,  <35.953964, 34.469891, 44.624962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639542, 34.191891, 45.224998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965302, 33.971928, 45.150860>,  <36.160759, 33.839951, 45.106377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965302, 33.971928, 45.150860>,  <35.639542, 34.191891, 45.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965302, 33.971928, 45.150860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336328, 0.186993, 0.922993,
		-0.472903, -0.814023, 0.337237,
		0.814399, -0.549909, -0.185349,
		36.209621, 33.806953, 45.095257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658237, 33.897339, 45.816784>,  <35.639542, 34.191891, 45.224998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658237, 33.897339, 45.816784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019066, 33.868011, 45.646664>,  <36.235565, 33.850414, 45.544590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019066, 33.868011, 45.646664>,  <35.658237, 33.897339, 45.816784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019066, 33.868011, 45.646664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425774, 0.312285, 0.849231,
		0.070549, -0.947154, 0.312924,
		0.902075, -0.073323, -0.425305,
		36.289688, 33.846016, 45.519073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976849, 33.471436, 46.259884>,  <35.658237, 33.897339, 45.816784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976849, 33.471436, 46.259884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270283, 33.659386, 46.063488>,  <36.446342, 33.772156, 45.945648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270283, 33.659386, 46.063488>,  <35.976849, 33.471436, 46.259884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270283, 33.659386, 46.063488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432891, 0.233867, 0.870581,
		0.523894, -0.851188, -0.031846,
		0.733580, 0.469878, -0.490993,
		36.490356, 33.800350, 45.916191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552631, 33.208183, 46.619591>,  <35.976849, 33.471436, 46.259884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552631, 33.208183, 46.619591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657902, 33.555630, 46.451664>,  <36.721062, 33.764099, 46.350906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657902, 33.555630, 46.451664>,  <36.552631, 33.208183, 46.619591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657902, 33.555630, 46.451664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531887, 0.232413, 0.814297,
		0.804882, -0.437597, -0.400841,
		0.263173, 0.868616, -0.419818,
		36.736855, 33.816216, 46.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309849, 33.330387, 46.922165>,  <36.552631, 33.208183, 46.619591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309849, 33.330387, 46.922165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163109, 33.677540, 46.788181>,  <37.075066, 33.885830, 46.707790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163109, 33.677540, 46.788181>,  <37.309849, 33.330387, 46.922165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163109, 33.677540, 46.788181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367655, 0.466011, 0.804776,
		0.854546, 0.172086, -0.490039,
		-0.366854, 0.867883, -0.334959,
		37.053051, 33.937904, 46.687695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851028, 33.834709, 47.077736>,  <37.309849, 33.330387, 46.922165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851028, 33.834709, 47.077736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534149, 34.074375, 47.031376>,  <37.344021, 34.218174, 47.003559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534149, 34.074375, 47.031376>,  <37.851028, 33.834709, 47.077736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534149, 34.074375, 47.031376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327850, 0.578027, 0.747261,
		0.514724, 0.553978, -0.654345,
		-0.792195, 0.599161, -0.115903,
		37.296490, 34.254124, 46.996605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102551, 34.552391, 47.315872>,  <37.851028, 33.834709, 47.077736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102551, 34.552391, 47.315872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702610, 34.546619, 47.319469>,  <37.462646, 34.543156, 47.321629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702610, 34.546619, 47.319469>,  <38.102551, 34.552391, 47.315872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702610, 34.546619, 47.319469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001273, 0.463965, 0.885853,
		-0.016955, 0.885736, -0.463879,
		-0.999856, -0.014430, 0.008994,
		37.402653, 34.542290, 47.322166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001820, 35.246799, 47.639194>,  <38.102551, 34.552391, 47.315872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001820, 35.246799, 47.639194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654694, 35.050140, 47.667988>,  <37.446419, 34.932144, 47.685265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654694, 35.050140, 47.667988>,  <38.001820, 35.246799, 47.639194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654694, 35.050140, 47.667988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039211, 0.212180, 0.976444,
		-0.495343, 0.844547, -0.203410,
		-0.867812, -0.491650, 0.071986,
		37.394348, 34.902645, 47.689583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031113, 35.961628, 47.414982>,  <38.001820, 35.246799, 47.639194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031113, 35.961628, 47.414982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404385, 35.877464, 47.531528>,  <38.628349, 35.826965, 47.601456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404385, 35.877464, 47.531528>,  <38.031113, 35.961628, 47.414982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404385, 35.877464, 47.531528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267027, -0.136698, -0.953945,
		0.240547, 0.968009, -0.071380,
		0.933185, -0.210409, 0.291367,
		38.684341, 35.814342, 47.618938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544804, 36.359898, 47.034721>,  <38.031113, 35.961628, 47.414982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544804, 36.359898, 47.034721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711746, 36.029858, 47.187050>,  <38.811913, 35.831833, 47.278446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711746, 36.029858, 47.187050>,  <38.544804, 36.359898, 47.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711746, 36.029858, 47.187050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390789, -0.215382, -0.894927,
		0.820426, 0.522324, 0.232548,
		0.417355, -0.825099, 0.380823,
		38.836952, 35.782330, 47.301296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256229, 36.452549, 46.957539>,  <38.544804, 36.359898, 47.034721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256229, 36.452549, 46.957539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155319, 36.065487, 46.956669>,  <39.094772, 35.833252, 46.956146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155319, 36.065487, 46.956669>,  <39.256229, 36.452549, 46.957539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155319, 36.065487, 46.956669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333395, -0.084814, -0.938964,
		0.908406, -0.237605, 0.344008,
		-0.252280, -0.967652, -0.002171,
		39.079636, 35.775192, 46.956017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885479, 36.032272, 46.662388>,  <39.256229, 36.452549, 46.957539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885479, 36.032272, 46.662388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591072, 35.761696, 46.651798>,  <39.414429, 35.599350, 46.645443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591072, 35.761696, 46.651798>,  <39.885479, 36.032272, 46.662388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591072, 35.761696, 46.651798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143688, -0.117886, -0.982577,
		0.661539, -0.726997, 0.183963,
		-0.736016, -0.676446, -0.026475,
		39.370266, 35.558762, 46.643856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161686, 35.437565, 46.300045>,  <39.885479, 36.032272, 46.662388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161686, 35.437565, 46.300045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766045, 35.395325, 46.259029>,  <39.528660, 35.369980, 46.234421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766045, 35.395325, 46.259029>,  <40.161686, 35.437565, 46.300045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766045, 35.395325, 46.259029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133450, -0.349412, -0.927417,
		0.062102, -0.931000, 0.359698,
		-0.989108, -0.105596, -0.102543,
		39.469311, 35.363647, 46.228268>
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
